; ModuleID = 'arch/x86/platform/efi/quirks.c'
source_filename = "arch/x86/platform/efi/quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_efivar_reserved_space: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad efivar_reserved_space ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_efi_query_variable_store: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad efi_query_variable_store ; .previous"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.efi = type { ptr, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.efi_memory_map, i64 }
%struct.efi_memory_map = type { i64, ptr, ptr, i32, i64, i64, i64 }
%struct.efi_runtime_work = type { ptr, i64, %struct.work_struct, i32, %struct.completion, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.list_head = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mm_struct = type { %struct.anon.13, [0 x i64] }
%struct.anon.13 = type { %struct.anon.14, %struct.maple_tree, ptr, i64, i64, i64, i64, i64, ptr, %struct.atomic_t, %struct.atomic_t, ptr, i64, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [52 x i64], [4 x %struct.percpu_counter], ptr, %struct.mm_context_t, i64, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, %struct.uprobes_state, %struct.atomic64_t, %struct.work_struct, [48 x i8] }
%struct.anon.14 = type { %struct.atomic_t, [60 x i8] }
%struct.maple_tree = type { %union.anon.15, i32, ptr }
%union.anon.15 = type { %struct.spinlock }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.seqcount = type { i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.mm_context_t = type { i64, %struct.atomic64_t, i64, %struct.rw_semaphore, ptr, i64, %struct.mutex, ptr, ptr, %struct.atomic_t, i16, i16 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.uprobes_state = type { ptr }
%struct.pcpu_hot = type { %union.anon.16 }
%union.anon.16 = type { %struct.anon.17, [16 x i8] }
%struct.anon.17 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.guid_t = type { [16 x i8] }
%struct.efi_memory_map_data = type { i64, i64, i64, i64, i64 }
%struct.efi_mem_range = type { %struct.range, i64 }
%struct.range = type { i64, i64 }
%struct.efi_memory_desc_t = type { i32, i32, i64, i64, i64, i64 }
%struct.pgprot = type { i64 }
%struct.efi_setup_data = type { i64, i64, i64, i64, [8 x i64] }
%struct.efi_config_table_64_t = type { %struct.guid_t, i64 }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [32 x i8] }
%struct.cpumask = type { [1 x i64] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i64, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i64, ptr, ptr }
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
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%struct.page_frag = type { ptr, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
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

@__setup_str_setup_storage_paranoia = internal constant [24 x i8] c"efi_no_storage_paranoia\00", section ".init.rodata", align 1, !dbg !0
@__setup_setup_storage_paranoia = internal global %struct.obs_kernel_param { ptr @__setup_str_setup_storage_paranoia, ptr @setup_storage_paranoia, i32 1 }, section ".init.setup", align 8, !dbg !5397
@efi = external dso_local global %struct.efi, align 8
@efi_dummy_name = internal constant [6 x i16] [i16 68, i16 85, i16 77, i16 77, i16 89, i16 0], align 2, !dbg !5476
@efi_no_storage_paranoia = internal global i8 0, align 1, !dbg !5474
@__UNIQUE_ID___addressable_efivar_reserved_space345 = internal global ptr @efivar_reserved_space, section ".discard.addressable", align 8, !dbg !5408
@__UNIQUE_ID___addressable_efi_query_variable_store346 = internal global ptr @efi_query_variable_store, section ".discard.addressable", align 8, !dbg !5410
@.str = private unnamed_addr constant [55 x i8] c"\013efi: Failed to lookup EFI memory descriptor for %pa\0A\00", align 1, !dbg !5412
@.str.1 = private unnamed_addr constant [49 x i8] c"\013efi: Region spans EFI memory descriptors, %pa\0A\00", align 1, !dbg !5417
@.str.2 = private unnamed_addr constant [48 x i8] c"\013efi: Could not allocate boot services memmap\0A\00", align 1, !dbg !5422
@__default_kernel_pte_mask = external dso_local global i64, align 8
@.str.3 = private unnamed_addr constant [47 x i8] c"\013efi: Failed to map new boot services memmap\0A\00", align 1, !dbg !5427
@e820_table = external dso_local global ptr, align 8
@.str.4 = private unnamed_addr constant [42 x i8] c"\013efi: Failed to allocate new EFI memmap\0A\00", align 1, !dbg !5432
@.str.5 = private unnamed_addr constant [37 x i8] c"\013efi: Failed to map new EFI memmap\0A\00", align 1, !dbg !5437
@.str.6 = private unnamed_addr constant [41 x i8] c"\013efi: Could not install new EFI memmap\0A\00", align 1, !dbg !5442
@efi_setup = external dso_local global i64, align 8
@.str.7 = private unnamed_addr constant [43 x i8] c"\013efi: Could not map Configuration table!\0A\00", align 1, !dbg !5447
@.str.8 = private unnamed_addr constant [56 x i8] c"\016efi: Setup done, disabling due to 32/64-bit mismatch\0A\00", align 1, !dbg !5452
@acpi_gbl_reduced_hardware = external dso_local global i8, align 1
@efi_reboot_quirk_mode = external dso_local global i32, align 4
@acpi_no_s5 = external dso_local global i8, align 1
@efi_rts_work = external dso_local global %struct.efi_runtime_work, align 8
@.str.9 = private unnamed_addr constant [60 x i8] c"[Firmware Bug]: Page fault caused by firmware at PA: 0x%lx\0A\00", align 1, !dbg !5454
@.str.10 = private unnamed_addr constant [31 x i8] c"arch/x86/platform/efi/quirks.c\00", align 1, !dbg !5459
@.str.11 = private unnamed_addr constant [54 x i8] c"\016efi: efi_reset_system() buggy! Reboot through BIOS\0A\00", align 1, !dbg !5464
@.str.12 = private unnamed_addr constant [59 x i8] c"\016efi: Froze efi_rts_wq and disabled EFI Runtime Services\0A\00", align 1, !dbg !5469
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.13 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !5480
@_text = external dso_local global [0 x i8], align 1
@phys_base = external dso_local global i64, align 8
@_end = external dso_local global [0 x i8], align 1
@efi_mm = external dso_local global %struct.mm_struct, align 64
@.str.14 = private unnamed_addr constant [47 x i8] c"\013efi: Failed to unmap 1:1 mapping for 0x%llx\0A\00", align 1, !dbg !5485
@.str.15 = private unnamed_addr constant [46 x i8] c"\013efi: Failed to unmap VA mapping for 0x%llx\0A\00", align 1, !dbg !5487
@real_mode_header = external dso_local global ptr, align 8
@real_mode_blob_end = external dso_local global [0 x i8], align 1
@real_mode_blob = external dso_local global [0 x i8], align 1
@page_offset_base = external dso_local global i64, align 8
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@llvm.compiler.used = appending global [3 x ptr] [ptr @__setup_setup_storage_paranoia, ptr @__UNIQUE_ID___addressable_efivar_reserved_space345, ptr @__UNIQUE_ID___addressable_efi_query_variable_store346], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @setup_storage_paranoia(ptr noundef %arg) #0 section ".init.text" align 16 !dbg !5504 {
entry:
  %arg.addr = alloca ptr, align 8
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !5506, metadata !DIExpression()), !dbg !5507
  store i8 1, ptr @efi_no_storage_paranoia, align 1, !dbg !5508
  ret i32 0, !dbg !5509
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @efi_delete_dummy_variable() #1 align 16 !dbg !5510 {
entry:
  %.compoundliteral = alloca %struct.guid_t, align 4
  %0 = load ptr, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 20), align 8, !dbg !5511
  %b = getelementptr inbounds %struct.guid_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !5512
  %arrayinit.begin = getelementptr inbounds [16 x i8], ptr %b, i64 0, i64 0, !dbg !5512
  store i8 87, ptr %arrayinit.begin, align 1, !dbg !5512
  %arrayinit.element = getelementptr inbounds i8, ptr %arrayinit.begin, i64 1, !dbg !5512
  store i8 -84, ptr %arrayinit.element, align 1, !dbg !5512
  %arrayinit.element1 = getelementptr inbounds i8, ptr %arrayinit.element, i64 1, !dbg !5512
  store i8 36, ptr %arrayinit.element1, align 1, !dbg !5512
  %arrayinit.element2 = getelementptr inbounds i8, ptr %arrayinit.element1, i64 1, !dbg !5512
  store i8 68, ptr %arrayinit.element2, align 1, !dbg !5512
  %arrayinit.element3 = getelementptr inbounds i8, ptr %arrayinit.element2, i64 1, !dbg !5512
  store i8 75, ptr %arrayinit.element3, align 1, !dbg !5512
  %arrayinit.element4 = getelementptr inbounds i8, ptr %arrayinit.element3, i64 1, !dbg !5512
  store i8 -66, ptr %arrayinit.element4, align 1, !dbg !5512
  %arrayinit.element5 = getelementptr inbounds i8, ptr %arrayinit.element4, i64 1, !dbg !5512
  store i8 -35, ptr %arrayinit.element5, align 1, !dbg !5512
  %arrayinit.element6 = getelementptr inbounds i8, ptr %arrayinit.element5, i64 1, !dbg !5512
  store i8 71, ptr %arrayinit.element6, align 1, !dbg !5512
  %arrayinit.element7 = getelementptr inbounds i8, ptr %arrayinit.element6, i64 1, !dbg !5512
  store i8 -98, ptr %arrayinit.element7, align 1, !dbg !5512
  %arrayinit.element8 = getelementptr inbounds i8, ptr %arrayinit.element7, i64 1, !dbg !5512
  store i8 -105, ptr %arrayinit.element8, align 1, !dbg !5512
  %arrayinit.element9 = getelementptr inbounds i8, ptr %arrayinit.element8, i64 1, !dbg !5512
  store i8 -19, ptr %arrayinit.element9, align 1, !dbg !5512
  %arrayinit.element10 = getelementptr inbounds i8, ptr %arrayinit.element9, i64 1, !dbg !5512
  store i8 80, ptr %arrayinit.element10, align 1, !dbg !5512
  %arrayinit.element11 = getelementptr inbounds i8, ptr %arrayinit.element10, i64 1, !dbg !5512
  store i8 -16, ptr %arrayinit.element11, align 1, !dbg !5512
  %arrayinit.element12 = getelementptr inbounds i8, ptr %arrayinit.element11, i64 1, !dbg !5512
  store i8 -97, ptr %arrayinit.element12, align 1, !dbg !5512
  %arrayinit.element13 = getelementptr inbounds i8, ptr %arrayinit.element12, i64 1, !dbg !5512
  store i8 -110, ptr %arrayinit.element13, align 1, !dbg !5512
  %arrayinit.element14 = getelementptr inbounds i8, ptr %arrayinit.element13, i64 1, !dbg !5512
  store i8 -87, ptr %arrayinit.element14, align 1, !dbg !5512
  %call = call i64 %0(ptr noundef @efi_dummy_name, ptr noundef %.compoundliteral, i32 noundef 7, i64 noundef 0, ptr noundef null) #20, !dbg !5513
  ret void, !dbg !5514
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define hidden i64 @efivar_reserved_space() #2 align 16 !dbg !5515 {
entry:
  %retval = alloca i64, align 8
  %0 = load i8, ptr @efi_no_storage_paranoia, align 1, !dbg !5518, !range !5520, !noundef !699
  %tobool = trunc i8 %0 to i1, !dbg !5518
  br i1 %tobool, label %if.then, label %if.end, !dbg !5521

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !5522
  br label %return, !dbg !5522

if.end:                                           ; preds = %entry
  store i64 5120, ptr %retval, align 8, !dbg !5523
  br label %return, !dbg !5523

return:                                           ; preds = %if.end, %if.then
  %1 = load i64, ptr %retval, align 8, !dbg !5524
  ret i64 %1, !dbg !5524
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @efi_query_variable_store(i32 noundef %attributes, i64 noundef %size, i1 noundef zeroext %nonblocking) #1 align 16 !dbg !5525 {
entry:
  %retval = alloca i64, align 8
  %attributes.addr = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %nonblocking.addr = alloca i8, align 1
  %status = alloca i64, align 8
  %storage_size = alloca i64, align 8
  %remaining_size = alloca i64, align 8
  %max_size = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %dummy_size = alloca i64, align 8
  %dummy = alloca ptr, align 8
  %.compoundliteral = alloca %struct.guid_t, align 4
  store i32 %attributes, ptr %attributes.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attributes.addr, metadata !5530, metadata !DIExpression()), !dbg !5541
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5531, metadata !DIExpression()), !dbg !5542
  %frombool = zext i1 %nonblocking to i8
  store i8 %frombool, ptr %nonblocking.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %nonblocking.addr, metadata !5532, metadata !DIExpression()), !dbg !5543
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #21, !dbg !5544
  call void @llvm.dbg.declare(metadata ptr %status, metadata !5533, metadata !DIExpression()), !dbg !5545
  call void @llvm.lifetime.start.p0(i64 8, ptr %storage_size) #21, !dbg !5546
  call void @llvm.dbg.declare(metadata ptr %storage_size, metadata !5534, metadata !DIExpression()), !dbg !5547
  call void @llvm.lifetime.start.p0(i64 8, ptr %remaining_size) #21, !dbg !5546
  call void @llvm.dbg.declare(metadata ptr %remaining_size, metadata !5535, metadata !DIExpression()), !dbg !5548
  call void @llvm.lifetime.start.p0(i64 8, ptr %max_size) #21, !dbg !5546
  call void @llvm.dbg.declare(metadata ptr %max_size, metadata !5536, metadata !DIExpression()), !dbg !5549
  %0 = load i32, ptr %attributes.addr, align 4, !dbg !5550
  %and = and i32 %0, 1, !dbg !5552
  %tobool = icmp ne i32 %and, 0, !dbg !5552
  br i1 %tobool, label %if.end, label %if.then, !dbg !5553

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !5554
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup42, !dbg !5554

if.end:                                           ; preds = %entry
  %1 = load i8, ptr %nonblocking.addr, align 1, !dbg !5555, !range !5520, !noundef !699
  %tobool1 = trunc i8 %1 to i1, !dbg !5555
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !5557

if.then2:                                         ; preds = %if.end
  %2 = load i32, ptr %attributes.addr, align 4, !dbg !5558
  %3 = load i64, ptr %size.addr, align 8, !dbg !5559
  %call = call i64 @query_variable_store_nonblocking(i32 noundef %2, i64 noundef %3) #20, !dbg !5560
  store i64 %call, ptr %retval, align 8, !dbg !5561
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup42, !dbg !5561

if.end3:                                          ; preds = %if.end
  %4 = load ptr, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 21), align 8, !dbg !5562
  %5 = load i32, ptr %attributes.addr, align 4, !dbg !5563
  %call4 = call i64 %4(i32 noundef %5, ptr noundef %storage_size, ptr noundef %remaining_size, ptr noundef %max_size) #20, !dbg !5564
  store i64 %call4, ptr %status, align 8, !dbg !5565
  %6 = load i64, ptr %status, align 8, !dbg !5566
  %cmp = icmp ne i64 %6, 0, !dbg !5568
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !5569

if.then5:                                         ; preds = %if.end3
  %7 = load i64, ptr %status, align 8, !dbg !5570
  store i64 %7, ptr %retval, align 8, !dbg !5571
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup42, !dbg !5571

if.end6:                                          ; preds = %if.end3
  %8 = load i64, ptr %remaining_size, align 8, !dbg !5572
  %9 = load i64, ptr %size.addr, align 8, !dbg !5573
  %sub = sub i64 %8, %9, !dbg !5574
  %cmp7 = icmp ult i64 %sub, 5120, !dbg !5575
  br i1 %cmp7, label %land.lhs.true, label %if.end41, !dbg !5576

land.lhs.true:                                    ; preds = %if.end6
  %10 = load i8, ptr @efi_no_storage_paranoia, align 1, !dbg !5577, !range !5520, !noundef !699
  %tobool8 = trunc i8 %10 to i1, !dbg !5577
  br i1 %tobool8, label %if.end41, label %if.then9, !dbg !5578

if.then9:                                         ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %dummy_size) #21, !dbg !5579
  call void @llvm.dbg.declare(metadata ptr %dummy_size, metadata !5537, metadata !DIExpression()), !dbg !5580
  %11 = load i64, ptr %remaining_size, align 8, !dbg !5581
  %add = add i64 %11, 1024, !dbg !5582
  store i64 %add, ptr %dummy_size, align 8, !dbg !5580
  call void @llvm.lifetime.start.p0(i64 8, ptr %dummy) #21, !dbg !5583
  call void @llvm.dbg.declare(metadata ptr %dummy, metadata !5540, metadata !DIExpression()), !dbg !5584
  %12 = load i64, ptr %dummy_size, align 8, !dbg !5585
  %call10 = call noalias ptr @kzalloc(i64 noundef %12, i32 noundef 3264) #22, !dbg !5586
  store ptr %call10, ptr %dummy, align 8, !dbg !5584
  %13 = load ptr, ptr %dummy, align 8, !dbg !5587
  %tobool11 = icmp ne ptr %13, null, !dbg !5587
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !5589

if.then12:                                        ; preds = %if.then9
  store i64 -9223372036854775799, ptr %retval, align 8, !dbg !5590
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5590

if.end13:                                         ; preds = %if.then9
  %14 = load ptr, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 19), align 8, !dbg !5591
  %b = getelementptr inbounds %struct.guid_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !5592
  %arrayinit.begin = getelementptr inbounds [16 x i8], ptr %b, i64 0, i64 0, !dbg !5592
  store i8 87, ptr %arrayinit.begin, align 1, !dbg !5592
  %arrayinit.element = getelementptr inbounds i8, ptr %arrayinit.begin, i64 1, !dbg !5592
  store i8 -84, ptr %arrayinit.element, align 1, !dbg !5592
  %arrayinit.element14 = getelementptr inbounds i8, ptr %arrayinit.element, i64 1, !dbg !5592
  store i8 36, ptr %arrayinit.element14, align 1, !dbg !5592
  %arrayinit.element15 = getelementptr inbounds i8, ptr %arrayinit.element14, i64 1, !dbg !5592
  store i8 68, ptr %arrayinit.element15, align 1, !dbg !5592
  %arrayinit.element16 = getelementptr inbounds i8, ptr %arrayinit.element15, i64 1, !dbg !5592
  store i8 75, ptr %arrayinit.element16, align 1, !dbg !5592
  %arrayinit.element17 = getelementptr inbounds i8, ptr %arrayinit.element16, i64 1, !dbg !5592
  store i8 -66, ptr %arrayinit.element17, align 1, !dbg !5592
  %arrayinit.element18 = getelementptr inbounds i8, ptr %arrayinit.element17, i64 1, !dbg !5592
  store i8 -35, ptr %arrayinit.element18, align 1, !dbg !5592
  %arrayinit.element19 = getelementptr inbounds i8, ptr %arrayinit.element18, i64 1, !dbg !5592
  store i8 71, ptr %arrayinit.element19, align 1, !dbg !5592
  %arrayinit.element20 = getelementptr inbounds i8, ptr %arrayinit.element19, i64 1, !dbg !5592
  store i8 -98, ptr %arrayinit.element20, align 1, !dbg !5592
  %arrayinit.element21 = getelementptr inbounds i8, ptr %arrayinit.element20, i64 1, !dbg !5592
  store i8 -105, ptr %arrayinit.element21, align 1, !dbg !5592
  %arrayinit.element22 = getelementptr inbounds i8, ptr %arrayinit.element21, i64 1, !dbg !5592
  store i8 -19, ptr %arrayinit.element22, align 1, !dbg !5592
  %arrayinit.element23 = getelementptr inbounds i8, ptr %arrayinit.element22, i64 1, !dbg !5592
  store i8 80, ptr %arrayinit.element23, align 1, !dbg !5592
  %arrayinit.element24 = getelementptr inbounds i8, ptr %arrayinit.element23, i64 1, !dbg !5592
  store i8 -16, ptr %arrayinit.element24, align 1, !dbg !5592
  %arrayinit.element25 = getelementptr inbounds i8, ptr %arrayinit.element24, i64 1, !dbg !5592
  store i8 -97, ptr %arrayinit.element25, align 1, !dbg !5592
  %arrayinit.element26 = getelementptr inbounds i8, ptr %arrayinit.element25, i64 1, !dbg !5592
  store i8 -110, ptr %arrayinit.element26, align 1, !dbg !5592
  %arrayinit.element27 = getelementptr inbounds i8, ptr %arrayinit.element26, i64 1, !dbg !5592
  store i8 -87, ptr %arrayinit.element27, align 1, !dbg !5592
  %15 = load i64, ptr %dummy_size, align 8, !dbg !5593
  %16 = load ptr, ptr %dummy, align 8, !dbg !5594
  %call28 = call i64 %14(ptr noundef @efi_dummy_name, ptr noundef %.compoundliteral, i32 noundef 7, i64 noundef %15, ptr noundef %16) #20, !dbg !5595
  store i64 %call28, ptr %status, align 8, !dbg !5596
  %17 = load i64, ptr %status, align 8, !dbg !5597
  %cmp29 = icmp eq i64 %17, 0, !dbg !5599
  br i1 %cmp29, label %if.then30, label %if.end31, !dbg !5600

if.then30:                                        ; preds = %if.end13
  call void @efi_delete_dummy_variable() #20, !dbg !5601
  br label %if.end31, !dbg !5603

if.end31:                                         ; preds = %if.then30, %if.end13
  %18 = load ptr, ptr %dummy, align 8, !dbg !5604
  call void @kfree(ptr noundef %18) #20, !dbg !5605
  %19 = load ptr, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 21), align 8, !dbg !5606
  %20 = load i32, ptr %attributes.addr, align 4, !dbg !5607
  %call32 = call i64 %19(i32 noundef %20, ptr noundef %storage_size, ptr noundef %remaining_size, ptr noundef %max_size) #20, !dbg !5608
  store i64 %call32, ptr %status, align 8, !dbg !5609
  %21 = load i64, ptr %status, align 8, !dbg !5610
  %cmp33 = icmp ne i64 %21, 0, !dbg !5612
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5613

if.then34:                                        ; preds = %if.end31
  %22 = load i64, ptr %status, align 8, !dbg !5614
  store i64 %22, ptr %retval, align 8, !dbg !5615
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5615

if.end35:                                         ; preds = %if.end31
  %23 = load i64, ptr %remaining_size, align 8, !dbg !5616
  %24 = load i64, ptr %size.addr, align 8, !dbg !5618
  %sub36 = sub i64 %23, %24, !dbg !5619
  %cmp37 = icmp ult i64 %sub36, 5120, !dbg !5620
  br i1 %cmp37, label %if.then38, label %if.end39, !dbg !5621

if.then38:                                        ; preds = %if.end35
  store i64 -9223372036854775799, ptr %retval, align 8, !dbg !5622
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5622

if.end39:                                         ; preds = %if.end35
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5623
  br label %cleanup, !dbg !5623

cleanup:                                          ; preds = %if.end39, %if.then38, %if.then34, %if.then12
  call void @llvm.lifetime.end.p0(i64 8, ptr %dummy) #21, !dbg !5623
  call void @llvm.lifetime.end.p0(i64 8, ptr %dummy_size) #21, !dbg !5623
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup42 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end41, !dbg !5624

if.end41:                                         ; preds = %cleanup.cont, %land.lhs.true, %if.end6
  store i64 0, ptr %retval, align 8, !dbg !5625
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup42, !dbg !5625

cleanup42:                                        ; preds = %if.end41, %cleanup, %if.then5, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %max_size) #21, !dbg !5626
  call void @llvm.lifetime.end.p0(i64 8, ptr %remaining_size) #21, !dbg !5626
  call void @llvm.lifetime.end.p0(i64 8, ptr %storage_size) #21, !dbg !5626
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #21, !dbg !5626
  %25 = load i64, ptr %retval, align 8, !dbg !5626
  ret i64 %25, !dbg !5626
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @query_variable_store_nonblocking(i32 noundef %attributes, i64 noundef %size) #1 align 16 !dbg !5627 {
entry:
  %retval = alloca i64, align 8
  %attributes.addr = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %status = alloca i64, align 8
  %storage_size = alloca i64, align 8
  %remaining_size = alloca i64, align 8
  %max_size = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %attributes, ptr %attributes.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attributes.addr, metadata !5631, metadata !DIExpression()), !dbg !5637
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5632, metadata !DIExpression()), !dbg !5638
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #21, !dbg !5639
  call void @llvm.dbg.declare(metadata ptr %status, metadata !5633, metadata !DIExpression()), !dbg !5640
  call void @llvm.lifetime.start.p0(i64 8, ptr %storage_size) #21, !dbg !5641
  call void @llvm.dbg.declare(metadata ptr %storage_size, metadata !5634, metadata !DIExpression()), !dbg !5642
  call void @llvm.lifetime.start.p0(i64 8, ptr %remaining_size) #21, !dbg !5641
  call void @llvm.dbg.declare(metadata ptr %remaining_size, metadata !5635, metadata !DIExpression()), !dbg !5643
  call void @llvm.lifetime.start.p0(i64 8, ptr %max_size) #21, !dbg !5641
  call void @llvm.dbg.declare(metadata ptr %max_size, metadata !5636, metadata !DIExpression()), !dbg !5644
  %0 = load ptr, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 22), align 8, !dbg !5645
  %1 = load i32, ptr %attributes.addr, align 4, !dbg !5646
  %call = call i64 %0(i32 noundef %1, ptr noundef %storage_size, ptr noundef %remaining_size, ptr noundef %max_size) #20, !dbg !5647
  store i64 %call, ptr %status, align 8, !dbg !5648
  %2 = load i64, ptr %status, align 8, !dbg !5649
  %cmp = icmp ne i64 %2, 0, !dbg !5651
  br i1 %cmp, label %if.then, label %if.end, !dbg !5652

if.then:                                          ; preds = %entry
  %3 = load i64, ptr %status, align 8, !dbg !5653
  store i64 %3, ptr %retval, align 8, !dbg !5654
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5654

if.end:                                           ; preds = %entry
  %4 = load i64, ptr %remaining_size, align 8, !dbg !5655
  %5 = load i64, ptr %size.addr, align 8, !dbg !5657
  %sub = sub i64 %4, %5, !dbg !5658
  %cmp1 = icmp ult i64 %sub, 5120, !dbg !5659
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !5660

if.then2:                                         ; preds = %if.end
  store i64 -9223372036854775799, ptr %retval, align 8, !dbg !5661
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5661

if.end3:                                          ; preds = %if.end
  store i64 0, ptr %retval, align 8, !dbg !5662
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5662

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %max_size) #21, !dbg !5663
  call void @llvm.lifetime.end.p0(i64 8, ptr %remaining_size) #21, !dbg !5663
  call void @llvm.lifetime.end.p0(i64 8, ptr %storage_size) #21, !dbg !5663
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #21, !dbg !5663
  %6 = load i64, ptr %retval, align 8, !dbg !5663
  ret i64 %6, !dbg !5663
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !5664 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5668, metadata !DIExpression()), !dbg !5670
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5669, metadata !DIExpression()), !dbg !5671
  %0 = load i64, ptr %size.addr, align 8, !dbg !5672
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5673
  %or = or i32 %1, 256, !dbg !5674
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #22, !dbg !5675
  ret ptr %call, !dbg !5676
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5677 dso_local void @kfree(ptr noundef) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @efi_arch_mem_reserve(i64 noundef %addr, i64 noundef %size) #0 section ".init.text" align 16 !dbg !5680 {
entry:
  %addr.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %data = alloca %struct.efi_memory_map_data, align 8
  %mr = alloca %struct.efi_mem_range, align 8
  %md = alloca %struct.efi_memory_desc_t, align 8
  %num_entries = alloca i32, align 4
  %new = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  %tmp27 = alloca i32, align 4
  %.compoundliteral = alloca %struct.pgprot, align 8
  %.compoundliteral31 = alloca %struct.pgprot, align 8
  %tmp43 = alloca i32, align 4
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5684, metadata !DIExpression()), !dbg !5711
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5685, metadata !DIExpression()), !dbg !5712
  call void @llvm.lifetime.start.p0(i64 40, ptr %data) #21, !dbg !5713
  call void @llvm.dbg.declare(metadata ptr %data, metadata !5686, metadata !DIExpression()), !dbg !5714
  call void @llvm.memset.p0.i64(ptr align 8 %data, i8 0, i64 40, i1 false), !dbg !5714
  call void @llvm.lifetime.start.p0(i64 24, ptr %mr) #21, !dbg !5715
  call void @llvm.dbg.declare(metadata ptr %mr, metadata !5694, metadata !DIExpression()), !dbg !5716
  call void @llvm.lifetime.start.p0(i64 40, ptr %md) #21, !dbg !5717
  call void @llvm.dbg.declare(metadata ptr %md, metadata !5699, metadata !DIExpression()), !dbg !5718
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_entries) #21, !dbg !5719
  call void @llvm.dbg.declare(metadata ptr %num_entries, metadata !5709, metadata !DIExpression()), !dbg !5720
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #21, !dbg !5721
  call void @llvm.dbg.declare(metadata ptr %new, metadata !5710, metadata !DIExpression()), !dbg !5722
  %0 = load i64, ptr %addr.addr, align 8, !dbg !5723
  %call = call i32 @efi_mem_desc_lookup(i64 noundef %0, ptr noundef %md) #20, !dbg !5725
  %tobool = icmp ne i32 %call, 0, !dbg !5725
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !5726

lor.lhs.false:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.efi_memory_desc_t, ptr %md, i32 0, i32 0, !dbg !5727
  %1 = load i32, ptr %type, align 8, !dbg !5727
  %cmp = icmp ne i32 %1, 4, !dbg !5728
  br i1 %cmp, label %if.then, label %if.end, !dbg !5729

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %do.body, !dbg !5730

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !5733

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5733

do.end:                                           ; preds = %do.cond
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef @.str, ptr noundef %addr.addr) #23, !dbg !5730
  store i32 %call1, ptr %tmp, align 4, !dbg !5733
  %2 = load i32, ptr %tmp, align 4, !dbg !5730
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5735

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i64, ptr %addr.addr, align 8, !dbg !5736
  %4 = load i64, ptr %size.addr, align 8, !dbg !5738
  %add = add i64 %3, %4, !dbg !5739
  %phys_addr = getelementptr inbounds %struct.efi_memory_desc_t, ptr %md, i32 0, i32 2, !dbg !5740
  %5 = load i64, ptr %phys_addr, align 8, !dbg !5740
  %num_pages = getelementptr inbounds %struct.efi_memory_desc_t, ptr %md, i32 0, i32 4, !dbg !5741
  %6 = load i64, ptr %num_pages, align 8, !dbg !5741
  %shl = shl i64 %6, 12, !dbg !5742
  %add2 = add i64 %5, %shl, !dbg !5743
  %cmp3 = icmp ugt i64 %add, %add2, !dbg !5744
  br i1 %cmp3, label %if.then4, label %if.end10, !dbg !5745

if.then4:                                         ; preds = %if.end
  br label %do.body5, !dbg !5746

do.body5:                                         ; preds = %if.then4
  br label %do.cond6, !dbg !5749

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !5749

do.end7:                                          ; preds = %do.cond6
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, ptr noundef %addr.addr) #23, !dbg !5746
  store i32 %call9, ptr %tmp8, align 4, !dbg !5749
  %7 = load i32, ptr %tmp8, align 4, !dbg !5746
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5751

if.end10:                                         ; preds = %if.end
  %8 = load i64, ptr %addr.addr, align 8, !dbg !5752
  %rem = urem i64 %8, 4096, !dbg !5753
  %9 = load i64, ptr %size.addr, align 8, !dbg !5754
  %add11 = add i64 %9, %rem, !dbg !5754
  store i64 %add11, ptr %size.addr, align 8, !dbg !5754
  %10 = load i64, ptr %size.addr, align 8, !dbg !5755
  %sub = sub i64 %10, 1, !dbg !5755
  %or = or i64 %sub, 4095, !dbg !5755
  %add12 = add i64 %or, 1, !dbg !5755
  store i64 %add12, ptr %size.addr, align 8, !dbg !5756
  %11 = load i64, ptr %addr.addr, align 8, !dbg !5757
  %and = and i64 %11, -4096, !dbg !5757
  store i64 %and, ptr %addr.addr, align 8, !dbg !5758
  %12 = load i64, ptr %addr.addr, align 8, !dbg !5759
  %range = getelementptr inbounds %struct.efi_mem_range, ptr %mr, i32 0, i32 0, !dbg !5760
  %start = getelementptr inbounds %struct.range, ptr %range, i32 0, i32 0, !dbg !5761
  store i64 %12, ptr %start, align 8, !dbg !5762
  %13 = load i64, ptr %addr.addr, align 8, !dbg !5763
  %14 = load i64, ptr %size.addr, align 8, !dbg !5764
  %add13 = add i64 %13, %14, !dbg !5765
  %sub14 = sub i64 %add13, 1, !dbg !5766
  %range15 = getelementptr inbounds %struct.efi_mem_range, ptr %mr, i32 0, i32 0, !dbg !5767
  %end = getelementptr inbounds %struct.range, ptr %range15, i32 0, i32 1, !dbg !5768
  store i64 %sub14, ptr %end, align 8, !dbg !5769
  %attribute = getelementptr inbounds %struct.efi_memory_desc_t, ptr %md, i32 0, i32 5, !dbg !5770
  %15 = load i64, ptr %attribute, align 8, !dbg !5770
  %or16 = or i64 %15, -9223372036854775808, !dbg !5771
  %attribute17 = getelementptr inbounds %struct.efi_mem_range, ptr %mr, i32 0, i32 1, !dbg !5772
  store i64 %or16, ptr %attribute17, align 8, !dbg !5773
  %range18 = getelementptr inbounds %struct.efi_mem_range, ptr %mr, i32 0, i32 0, !dbg !5774
  %call19 = call i32 @efi_memmap_split_count(ptr noundef %md, ptr noundef %range18) #23, !dbg !5775
  store i32 %call19, ptr %num_entries, align 4, !dbg !5776
  %16 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 27, i32 3), align 8, !dbg !5777
  %17 = load i32, ptr %num_entries, align 4, !dbg !5778
  %add20 = add i32 %17, %16, !dbg !5778
  store i32 %add20, ptr %num_entries, align 4, !dbg !5778
  %18 = load i32, ptr %num_entries, align 4, !dbg !5779
  %call21 = call i32 @efi_memmap_alloc(i32 noundef %18, ptr noundef %data) #23, !dbg !5781
  %cmp22 = icmp ne i32 %call21, 0, !dbg !5782
  br i1 %cmp22, label %if.then23, label %if.end29, !dbg !5783

if.then23:                                        ; preds = %if.end10
  br label %do.body24, !dbg !5784

do.body24:                                        ; preds = %if.then23
  br label %do.cond25, !dbg !5787

do.cond25:                                        ; preds = %do.body24
  br label %do.end26, !dbg !5787

do.end26:                                         ; preds = %do.cond25
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2) #23, !dbg !5784
  store i32 %call28, ptr %tmp27, align 4, !dbg !5787
  %19 = load i32, ptr %tmp27, align 4, !dbg !5784
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5789

if.end29:                                         ; preds = %if.end10
  %phys_map = getelementptr inbounds %struct.efi_memory_map_data, ptr %data, i32 0, i32 0, !dbg !5790
  %20 = load i64, ptr %phys_map, align 8, !dbg !5790
  %size30 = getelementptr inbounds %struct.efi_memory_map_data, ptr %data, i32 0, i32 1, !dbg !5791
  %21 = load i64, ptr %size30, align 8, !dbg !5791
  %pgprot = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral, i32 0, i32 0, !dbg !5792
  %pgprot32 = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral31, i32 0, i32 0, !dbg !5792
  %22 = load i64, ptr @__default_kernel_pte_mask, align 8, !dbg !5792
  %and33 = and i64 -9223372036854775453, %22, !dbg !5792
  store i64 %and33, ptr %pgprot32, align 8, !dbg !5792
  %pgprot34 = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral31, i32 0, i32 0, !dbg !5792
  %23 = load i64, ptr %pgprot34, align 8, !dbg !5792
  %call35 = call i64 @cc_mkenc(i64 noundef %23) #20, !dbg !5792
  store i64 %call35, ptr %pgprot, align 8, !dbg !5792
  %pgprot36 = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral, i32 0, i32 0, !dbg !5792
  %24 = load i64, ptr %pgprot36, align 8, !dbg !5792
  %call37 = call ptr @early_memremap_prot(i64 noundef %20, i64 noundef %21, i64 noundef %24) #20, !dbg !5793
  store ptr %call37, ptr %new, align 8, !dbg !5794
  %25 = load ptr, ptr %new, align 8, !dbg !5795
  %tobool38 = icmp ne ptr %25, null, !dbg !5795
  br i1 %tobool38, label %if.end45, label %if.then39, !dbg !5797

if.then39:                                        ; preds = %if.end29
  br label %do.body40, !dbg !5798

do.body40:                                        ; preds = %if.then39
  br label %do.cond41, !dbg !5801

do.cond41:                                        ; preds = %do.body40
  br label %do.end42, !dbg !5801

do.end42:                                         ; preds = %do.cond41
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3) #23, !dbg !5798
  store i32 %call44, ptr %tmp43, align 4, !dbg !5801
  %26 = load i32, ptr %tmp43, align 4, !dbg !5798
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5803

if.end45:                                         ; preds = %if.end29
  %27 = load ptr, ptr %new, align 8, !dbg !5804
  call void @efi_memmap_insert(ptr noundef getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 27), ptr noundef %27, ptr noundef %mr) #23, !dbg !5805
  %28 = load ptr, ptr %new, align 8, !dbg !5806
  %size46 = getelementptr inbounds %struct.efi_memory_map_data, ptr %data, i32 0, i32 1, !dbg !5807
  %29 = load i64, ptr %size46, align 8, !dbg !5807
  call void @early_memunmap(ptr noundef %28, i64 noundef %29) #20, !dbg !5808
  %call47 = call i32 @efi_memmap_install(ptr noundef %data) #23, !dbg !5809
  %30 = load i64, ptr %addr.addr, align 8, !dbg !5810
  %31 = load i64, ptr %size.addr, align 8, !dbg !5811
  %call48 = call i64 @e820__range_update(i64 noundef %30, i64 noundef %31, i32 noundef 1, i32 noundef 2) #20, !dbg !5812
  %32 = load ptr, ptr @e820_table, align 8, !dbg !5813
  %call49 = call i32 @e820__update_table(ptr noundef %32) #20, !dbg !5814
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5815
  br label %cleanup, !dbg !5815

cleanup:                                          ; preds = %if.end45, %do.end42, %do.end26, %do.end7, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #21, !dbg !5815
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_entries) #21, !dbg !5815
  call void @llvm.lifetime.end.p0(i64 40, ptr %md) #21, !dbg !5815
  call void @llvm.lifetime.end.p0(i64 24, ptr %mr) #21, !dbg !5815
  call void @llvm.lifetime.end.p0(i64 40, ptr %data) #21, !dbg !5815
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5815

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5816 dso_local i32 @efi_mem_desc_lookup(i64 noundef, ptr noundef) #6

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5820 dso_local i32 @_printk(ptr noundef, ...) #8

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5824 dso_local i32 @efi_memmap_split_count(ptr noundef, ptr noundef) #8 section ".init.text"

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5829 dso_local i32 @efi_memmap_alloc(i32 noundef, ptr noundef) #8 section ".init.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5833 dso_local ptr @early_memremap_prot(i64 noundef, i64 noundef, i64 noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @cc_mkenc(i64 noundef %val) #9 align 16 !dbg !5838 {
entry:
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5843, metadata !DIExpression()), !dbg !5844
  %0 = load i64, ptr %val.addr, align 8, !dbg !5845
  ret i64 %0, !dbg !5846
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5847 dso_local void @efi_memmap_insert(ptr noundef, ptr noundef, ptr noundef) #8 section ".init.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5861 dso_local void @early_memunmap(ptr noundef, i64 noundef) #6

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5864 dso_local i32 @efi_memmap_install(ptr noundef) #8 section ".init.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5867 dso_local i64 @e820__range_update(i64 noundef, i64 noundef, i32 noundef, i32 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5871 dso_local i32 @e820__update_table(ptr noundef) #6

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @efi_reserve_boot_services() #0 section ".init.text" align 16 !dbg !5887 {
entry:
  %md = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %start = alloca i64, align 8
  %size = alloca i64, align 8
  %already_reserved = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr %md) #21, !dbg !5896
  call void @llvm.dbg.declare(metadata ptr %md, metadata !5889, metadata !DIExpression()), !dbg !5897
  %call = call zeroext i1 @efi_enabled(i32 noundef 4) #20, !dbg !5898
  br i1 %call, label %if.end, label %if.then, !dbg !5900

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup17, !dbg !5901

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 27, i32 1), align 8, !dbg !5902
  store ptr %0, ptr %md, align 8, !dbg !5902
  br label %for.cond, !dbg !5902

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load ptr, ptr %md, align 8, !dbg !5903
  %tobool = icmp ne ptr %1, null, !dbg !5903
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !5903

land.rhs:                                         ; preds = %for.cond
  %2 = load ptr, ptr %md, align 8, !dbg !5903
  %3 = load i64, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 27, i32 5), align 8, !dbg !5903
  %add.ptr = getelementptr i8, ptr %2, i64 %3, !dbg !5903
  %4 = load ptr, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 27, i32 2), align 8, !dbg !5903
  %cmp = icmp ule ptr %add.ptr, %4, !dbg !5903
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %5 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ], !dbg !5904
  br i1 %5, label %for.body, label %for.end, !dbg !5902

for.body:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #21, !dbg !5905
  call void @llvm.dbg.declare(metadata ptr %start, metadata !5890, metadata !DIExpression()), !dbg !5906
  %6 = load ptr, ptr %md, align 8, !dbg !5907
  %phys_addr = getelementptr inbounds %struct.efi_memory_desc_t, ptr %6, i32 0, i32 2, !dbg !5908
  %7 = load i64, ptr %phys_addr, align 8, !dbg !5908
  store i64 %7, ptr %start, align 8, !dbg !5906
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #21, !dbg !5909
  call void @llvm.dbg.declare(metadata ptr %size, metadata !5894, metadata !DIExpression()), !dbg !5910
  %8 = load ptr, ptr %md, align 8, !dbg !5911
  %num_pages = getelementptr inbounds %struct.efi_memory_desc_t, ptr %8, i32 0, i32 4, !dbg !5912
  %9 = load i64, ptr %num_pages, align 8, !dbg !5912
  %shl = shl i64 %9, 12, !dbg !5913
  store i64 %shl, ptr %size, align 8, !dbg !5910
  call void @llvm.lifetime.start.p0(i64 1, ptr %already_reserved) #21, !dbg !5914
  call void @llvm.dbg.declare(metadata ptr %already_reserved, metadata !5895, metadata !DIExpression()), !dbg !5915
  %10 = load ptr, ptr %md, align 8, !dbg !5916
  %type = getelementptr inbounds %struct.efi_memory_desc_t, ptr %10, i32 0, i32 0, !dbg !5918
  %11 = load i32, ptr %type, align 8, !dbg !5918
  %cmp1 = icmp ne i32 %11, 3, !dbg !5919
  br i1 %cmp1, label %land.lhs.true, label %if.end5, !dbg !5920

land.lhs.true:                                    ; preds = %for.body
  %12 = load ptr, ptr %md, align 8, !dbg !5921
  %type2 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %12, i32 0, i32 0, !dbg !5922
  %13 = load i32, ptr %type2, align 8, !dbg !5922
  %cmp3 = icmp ne i32 %13, 4, !dbg !5923
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !5924

if.then4:                                         ; preds = %land.lhs.true
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5925

if.end5:                                          ; preds = %land.lhs.true, %for.body
  %14 = load i64, ptr %start, align 8, !dbg !5926
  %15 = load i64, ptr %size, align 8, !dbg !5927
  %call6 = call zeroext i1 @memblock_is_region_reserved(i64 noundef %14, i64 noundef %15) #20, !dbg !5928
  %frombool = zext i1 %call6 to i8, !dbg !5929
  store i8 %frombool, ptr %already_reserved, align 1, !dbg !5929
  %16 = load i8, ptr %already_reserved, align 1, !dbg !5930, !range !5520, !noundef !699
  %tobool7 = trunc i8 %16 to i1, !dbg !5930
  br i1 %tobool7, label %if.end13, label %if.then8, !dbg !5932

if.then8:                                         ; preds = %if.end5
  %17 = load i64, ptr %start, align 8, !dbg !5933
  %18 = load i64, ptr %size, align 8, !dbg !5935
  %call9 = call i32 @memblock_reserve(i64 noundef %17, i64 noundef %18) #20, !dbg !5936
  %19 = load i64, ptr %start, align 8, !dbg !5937
  %20 = load i64, ptr %size, align 8, !dbg !5939
  %call10 = call zeroext i1 @can_free_region(i64 noundef %19, i64 noundef %20) #23, !dbg !5940
  br i1 %call10, label %if.then11, label %if.end12, !dbg !5941

if.then11:                                        ; preds = %if.then8
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5942

if.end12:                                         ; preds = %if.then8
  br label %if.end13, !dbg !5943

if.end13:                                         ; preds = %if.end12, %if.end5
  %21 = load ptr, ptr %md, align 8, !dbg !5944
  %attribute = getelementptr inbounds %struct.efi_memory_desc_t, ptr %21, i32 0, i32 5, !dbg !5945
  %22 = load i64, ptr %attribute, align 8, !dbg !5946
  %or = or i64 %22, -9223372036854775808, !dbg !5946
  store i64 %or, ptr %attribute, align 8, !dbg !5946
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5947
  br label %cleanup, !dbg !5947

cleanup:                                          ; preds = %if.end13, %if.then11, %if.then4
  call void @llvm.lifetime.end.p0(i64 1, ptr %already_reserved) #21, !dbg !5947
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #21, !dbg !5947
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #21, !dbg !5947
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !5948

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %23 = load ptr, ptr %md, align 8, !dbg !5903
  %24 = load i64, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 27, i32 5), align 8, !dbg !5903
  %add.ptr16 = getelementptr i8, ptr %23, i64 %24, !dbg !5903
  store ptr %add.ptr16, ptr %md, align 8, !dbg !5903
  br label %for.cond, !dbg !5903, !llvm.loop !5949

for.end:                                          ; preds = %land.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5953
  br label %cleanup17, !dbg !5953

cleanup17:                                        ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %md) #21, !dbg !5953
  %cleanup.dest18 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest18, label %unreachable [
    i32 0, label %cleanup.cont19
    i32 1, label %cleanup.cont19
  ]

cleanup.cont19:                                   ; preds = %cleanup17, %cleanup17
  ret void, !dbg !5953

unreachable:                                      ; preds = %cleanup17, %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @efi_enabled(i32 noundef %feature) #9 align 16 !dbg !5954 {
entry:
  %feature.addr = alloca i32, align 4
  store i32 %feature, ptr %feature.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %feature.addr, metadata !5958, metadata !DIExpression()), !dbg !5959
  %0 = load i32, ptr %feature.addr, align 4, !dbg !5960
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !5960
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !5960

land.lhs.true:                                    ; preds = %entry
  %conv = zext i1 icmp ne (i64 ptrtoint (ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 28) to i64), i64 0) to i32, !dbg !5960
  %2 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !5960
  br i1 %2, label %land.lhs.true1, label %cond.false, !dbg !5960

land.lhs.true1:                                   ; preds = %land.lhs.true
  br i1 icmp ne (i64 ptrtoint (ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 28) to i64), i64 0), label %land.lhs.true3, label %cond.false, !dbg !5960

land.lhs.true3:                                   ; preds = %land.lhs.true1
  %3 = load i64, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 28), align 8, !dbg !5960
  %4 = call i1 @llvm.is.constant.i64(i64 %3), !dbg !5960
  br i1 %4, label %cond.true, label %cond.false, !dbg !5960

cond.true:                                        ; preds = %land.lhs.true3
  %5 = load i32, ptr %feature.addr, align 4, !dbg !5960
  %conv4 = sext i32 %5 to i64, !dbg !5960
  %call = call zeroext i1 @const_test_bit(i64 noundef %conv4, ptr noundef getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 28)) #20, !dbg !5960
  %conv5 = zext i1 %call to i32, !dbg !5960
  br label %cond.end, !dbg !5960

cond.false:                                       ; preds = %land.lhs.true3, %land.lhs.true1, %land.lhs.true, %entry
  %6 = load i32, ptr %feature.addr, align 4, !dbg !5960
  %conv6 = sext i32 %6 to i64, !dbg !5960
  %call7 = call zeroext i1 @_test_bit(i64 noundef %conv6, ptr noundef getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 28)) #20, !dbg !5960
  %conv8 = zext i1 %call7 to i32, !dbg !5960
  br label %cond.end, !dbg !5960

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv5, %cond.true ], [ %conv8, %cond.false ], !dbg !5960
  %cmp = icmp ne i32 %cond, 0, !dbg !5961
  ret i1 %cmp, !dbg !5962
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5963 dso_local zeroext i1 @memblock_is_region_reserved(i64 noundef, i64 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5967 dso_local i32 @memblock_reserve(i64 noundef, i64 noundef) #6

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal zeroext i1 @can_free_region(i64 noundef %start, i64 noundef %size) #0 section ".init.text" align 16 !dbg !5970 {
entry:
  %retval = alloca i1, align 1
  %start.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !5974, metadata !DIExpression()), !dbg !5976
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5975, metadata !DIExpression()), !dbg !5977
  %0 = load i64, ptr %start.addr, align 8, !dbg !5978
  %1 = load i64, ptr %size.addr, align 8, !dbg !5980
  %add = add i64 %0, %1, !dbg !5981
  %2 = load i64, ptr @phys_base, align 8, !dbg !5982
  %add1 = add i64 sub (i64 ptrtoint (ptr @_text to i64), i64 -2147483648), %2, !dbg !5982
  %cmp = icmp ugt i64 %add, %add1, !dbg !5983
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !5984

land.lhs.true:                                    ; preds = %entry
  %3 = load i64, ptr %start.addr, align 8, !dbg !5985
  %4 = load i64, ptr @phys_base, align 8, !dbg !5986
  %add2 = add i64 sub (i64 ptrtoint (ptr @_end to i64), i64 -2147483648), %4, !dbg !5986
  %cmp3 = icmp ule i64 %3, %add2, !dbg !5987
  br i1 %cmp3, label %if.then, label %if.end, !dbg !5988

if.then:                                          ; preds = %land.lhs.true
  store i1 false, ptr %retval, align 1, !dbg !5989
  br label %return, !dbg !5989

if.end:                                           ; preds = %land.lhs.true, %entry
  %5 = load i64, ptr %start.addr, align 8, !dbg !5990
  %6 = load i64, ptr %start.addr, align 8, !dbg !5992
  %7 = load i64, ptr %size.addr, align 8, !dbg !5993
  %add4 = add i64 %6, %7, !dbg !5994
  %call = call zeroext i1 @e820__mapped_all(i64 noundef %5, i64 noundef %add4, i32 noundef 1) #20, !dbg !5995
  br i1 %call, label %if.end6, label %if.then5, !dbg !5996

if.then5:                                         ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !5997
  br label %return, !dbg !5997

if.end6:                                          ; preds = %if.end
  store i1 true, ptr %retval, align 1, !dbg !5998
  br label %return, !dbg !5998

return:                                           ; preds = %if.end6, %if.then5, %if.then
  %8 = load i1, ptr %retval, align 1, !dbg !5999
  ret i1 %8, !dbg !5999
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @efi_free_boot_services() #0 section ".init.text" align 16 !dbg !6000 {
entry:
  %data = alloca %struct.efi_memory_map_data, align 8
  %md = alloca ptr, align 8
  %num_entries = alloca i32, align 4
  %new = alloca ptr, align 8
  %new_md = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %start = alloca i64, align 8
  %size = alloca i64, align 8
  %rm_size = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp46 = alloca i32, align 4
  %tmp76 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr %data) #21, !dbg !6013
  call void @llvm.dbg.declare(metadata ptr %data, metadata !6002, metadata !DIExpression()), !dbg !6014
  call void @llvm.memset.p0.i64(ptr align 8 %data, i8 0, i64 40, i1 false), !dbg !6014
  call void @llvm.lifetime.start.p0(i64 8, ptr %md) #21, !dbg !6015
  call void @llvm.dbg.declare(metadata ptr %md, metadata !6003, metadata !DIExpression()), !dbg !6016
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_entries) #21, !dbg !6017
  call void @llvm.dbg.declare(metadata ptr %num_entries, metadata !6004, metadata !DIExpression()), !dbg !6018
  store i32 0, ptr %num_entries, align 4, !dbg !6018
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #21, !dbg !6019
  call void @llvm.dbg.declare(metadata ptr %new, metadata !6005, metadata !DIExpression()), !dbg !6020
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_md) #21, !dbg !6019
  call void @llvm.dbg.declare(metadata ptr %new_md, metadata !6006, metadata !DIExpression()), !dbg !6021
  %call = call zeroext i1 @efi_enabled(i32 noundef 8) #20, !dbg !6022
  br i1 %call, label %if.then, label %if.end, !dbg !6024

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup79, !dbg !6025

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 27, i32 1), align 8, !dbg !6026
  store ptr %0, ptr %md, align 8, !dbg !6026
  br label %for.cond, !dbg !6026

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load ptr, ptr %md, align 8, !dbg !6027
  %tobool = icmp ne ptr %1, null, !dbg !6027
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !6027

land.rhs:                                         ; preds = %for.cond
  %2 = load ptr, ptr %md, align 8, !dbg !6027
  %3 = load i64, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 27, i32 5), align 8, !dbg !6027
  %add.ptr = getelementptr i8, ptr %2, i64 %3, !dbg !6027
  %4 = load ptr, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 27, i32 2), align 8, !dbg !6027
  %cmp = icmp ule ptr %add.ptr, %4, !dbg !6027
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %5 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ], !dbg !6028
  br i1 %5, label %for.body, label %for.end, !dbg !6026

for.body:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #21, !dbg !6029
  call void @llvm.dbg.declare(metadata ptr %start, metadata !6007, metadata !DIExpression()), !dbg !6030
  %6 = load ptr, ptr %md, align 8, !dbg !6031
  %phys_addr = getelementptr inbounds %struct.efi_memory_desc_t, ptr %6, i32 0, i32 2, !dbg !6032
  %7 = load i64, ptr %phys_addr, align 8, !dbg !6032
  store i64 %7, ptr %start, align 8, !dbg !6030
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #21, !dbg !6033
  call void @llvm.dbg.declare(metadata ptr %size, metadata !6011, metadata !DIExpression()), !dbg !6034
  %8 = load ptr, ptr %md, align 8, !dbg !6035
  %num_pages = getelementptr inbounds %struct.efi_memory_desc_t, ptr %8, i32 0, i32 4, !dbg !6036
  %9 = load i64, ptr %num_pages, align 8, !dbg !6036
  %shl = shl i64 %9, 12, !dbg !6037
  store i64 %shl, ptr %size, align 8, !dbg !6034
  call void @llvm.lifetime.start.p0(i64 8, ptr %rm_size) #21, !dbg !6038
  call void @llvm.dbg.declare(metadata ptr %rm_size, metadata !6012, metadata !DIExpression()), !dbg !6039
  %10 = load ptr, ptr %md, align 8, !dbg !6040
  %type = getelementptr inbounds %struct.efi_memory_desc_t, ptr %10, i32 0, i32 0, !dbg !6042
  %11 = load i32, ptr %type, align 8, !dbg !6042
  %cmp1 = icmp ne i32 %11, 3, !dbg !6043
  br i1 %cmp1, label %land.lhs.true, label %if.end5, !dbg !6044

land.lhs.true:                                    ; preds = %for.body
  %12 = load ptr, ptr %md, align 8, !dbg !6045
  %type2 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %12, i32 0, i32 0, !dbg !6046
  %13 = load i32, ptr %type2, align 8, !dbg !6046
  %cmp3 = icmp ne i32 %13, 4, !dbg !6047
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !6048

if.then4:                                         ; preds = %land.lhs.true
  %14 = load i32, ptr %num_entries, align 4, !dbg !6049
  %inc = add i32 %14, 1, !dbg !6049
  store i32 %inc, ptr %num_entries, align 4, !dbg !6049
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6051

if.end5:                                          ; preds = %land.lhs.true, %for.body
  %15 = load ptr, ptr %md, align 8, !dbg !6052
  %attribute = getelementptr inbounds %struct.efi_memory_desc_t, ptr %15, i32 0, i32 5, !dbg !6054
  %16 = load i64, ptr %attribute, align 8, !dbg !6054
  %and = and i64 %16, -9223372036854775808, !dbg !6055
  %tobool6 = icmp ne i64 %and, 0, !dbg !6055
  br i1 %tobool6, label %if.then7, label %if.end9, !dbg !6056

if.then7:                                         ; preds = %if.end5
  %17 = load i32, ptr %num_entries, align 4, !dbg !6057
  %inc8 = add i32 %17, 1, !dbg !6057
  store i32 %inc8, ptr %num_entries, align 4, !dbg !6057
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6059

if.end9:                                          ; preds = %if.end5
  %18 = load ptr, ptr %md, align 8, !dbg !6060
  call void @efi_unmap_pages(ptr noundef %18) #23, !dbg !6061
  %call10 = call i64 @real_mode_size_needed() #20, !dbg !6062
  store i64 %call10, ptr %rm_size, align 8, !dbg !6063
  %19 = load i64, ptr %rm_size, align 8, !dbg !6064
  %tobool11 = icmp ne i64 %19, 0, !dbg !6064
  br i1 %tobool11, label %land.lhs.true12, label %if.end18, !dbg !6066

land.lhs.true12:                                  ; preds = %if.end9
  %20 = load i64, ptr %start, align 8, !dbg !6067
  %21 = load i64, ptr %rm_size, align 8, !dbg !6068
  %add = add i64 %20, %21, !dbg !6069
  %cmp13 = icmp ult i64 %add, 1048576, !dbg !6070
  br i1 %cmp13, label %land.lhs.true14, label %if.end18, !dbg !6071

land.lhs.true14:                                  ; preds = %land.lhs.true12
  %22 = load i64, ptr %size, align 8, !dbg !6072
  %23 = load i64, ptr %rm_size, align 8, !dbg !6073
  %cmp15 = icmp uge i64 %22, %23, !dbg !6074
  br i1 %cmp15, label %if.then16, label %if.end18, !dbg !6075

if.then16:                                        ; preds = %land.lhs.true14
  %24 = load i64, ptr %start, align 8, !dbg !6076
  call void @set_real_mode_mem(i64 noundef %24) #20, !dbg !6078
  %25 = load i64, ptr %rm_size, align 8, !dbg !6079
  %26 = load i64, ptr %start, align 8, !dbg !6080
  %add17 = add i64 %26, %25, !dbg !6080
  store i64 %add17, ptr %start, align 8, !dbg !6080
  %27 = load i64, ptr %rm_size, align 8, !dbg !6081
  %28 = load i64, ptr %size, align 8, !dbg !6082
  %sub = sub i64 %28, %27, !dbg !6082
  store i64 %sub, ptr %size, align 8, !dbg !6082
  br label %if.end18, !dbg !6083

if.end18:                                         ; preds = %if.then16, %land.lhs.true14, %land.lhs.true12, %if.end9
  %29 = load i64, ptr %start, align 8, !dbg !6084
  %30 = load i64, ptr %size, align 8, !dbg !6086
  %add19 = add i64 %29, %30, !dbg !6087
  %cmp20 = icmp ult i64 %add19, 1048576, !dbg !6088
  br i1 %cmp20, label %if.then21, label %if.end22, !dbg !6089

if.then21:                                        ; preds = %if.end18
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6090

if.end22:                                         ; preds = %if.end18
  %31 = load i64, ptr %start, align 8, !dbg !6091
  %cmp23 = icmp ult i64 %31, 1048576, !dbg !6093
  br i1 %cmp23, label %if.then24, label %if.end27, !dbg !6094

if.then24:                                        ; preds = %if.end22
  %32 = load i64, ptr %start, align 8, !dbg !6095
  %sub25 = sub i64 1048576, %32, !dbg !6097
  %33 = load i64, ptr %size, align 8, !dbg !6098
  %sub26 = sub i64 %33, %sub25, !dbg !6098
  store i64 %sub26, ptr %size, align 8, !dbg !6098
  store i64 1048576, ptr %start, align 8, !dbg !6099
  br label %if.end27, !dbg !6100

if.end27:                                         ; preds = %if.then24, %if.end22
  %34 = load i64, ptr %start, align 8, !dbg !6101
  %35 = load i64, ptr %size, align 8, !dbg !6102
  call void @memblock_free_late(i64 noundef %34, i64 noundef %35) #20, !dbg !6103
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6104
  br label %cleanup, !dbg !6104

cleanup:                                          ; preds = %if.end27, %if.then21, %if.then7, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %rm_size) #21, !dbg !6104
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #21, !dbg !6104
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #21, !dbg !6104
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !6105

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %36 = load ptr, ptr %md, align 8, !dbg !6027
  %37 = load i64, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 27, i32 5), align 8, !dbg !6027
  %add.ptr30 = getelementptr i8, ptr %36, i64 %37, !dbg !6027
  store ptr %add.ptr30, ptr %md, align 8, !dbg !6027
  br label %for.cond, !dbg !6027, !llvm.loop !6106

for.end:                                          ; preds = %land.end
  %38 = load i32, ptr %num_entries, align 4, !dbg !6108
  %tobool31 = icmp ne i32 %38, 0, !dbg !6108
  br i1 %tobool31, label %if.end33, label %if.then32, !dbg !6110

if.then32:                                        ; preds = %for.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup79, !dbg !6111

if.end33:                                         ; preds = %for.end
  %39 = load i32, ptr %num_entries, align 4, !dbg !6112
  %call34 = call i32 @efi_memmap_alloc(i32 noundef %39, ptr noundef %data) #23, !dbg !6114
  %cmp35 = icmp ne i32 %call34, 0, !dbg !6115
  br i1 %cmp35, label %if.then36, label %if.end38, !dbg !6116

if.then36:                                        ; preds = %if.end33
  br label %do.body, !dbg !6117

do.body:                                          ; preds = %if.then36
  br label %do.cond, !dbg !6120

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6120

do.end:                                           ; preds = %do.cond
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4) #23, !dbg !6117
  store i32 %call37, ptr %tmp, align 4, !dbg !6120
  %40 = load i32, ptr %tmp, align 4, !dbg !6117
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup79, !dbg !6122

if.end38:                                         ; preds = %if.end33
  %phys_map = getelementptr inbounds %struct.efi_memory_map_data, ptr %data, i32 0, i32 0, !dbg !6123
  %41 = load i64, ptr %phys_map, align 8, !dbg !6123
  %size39 = getelementptr inbounds %struct.efi_memory_map_data, ptr %data, i32 0, i32 1, !dbg !6124
  %42 = load i64, ptr %size39, align 8, !dbg !6124
  %call40 = call ptr @memremap(i64 noundef %41, i64 noundef %42, i64 noundef 1) #20, !dbg !6125
  store ptr %call40, ptr %new, align 8, !dbg !6126
  %43 = load ptr, ptr %new, align 8, !dbg !6127
  %tobool41 = icmp ne ptr %43, null, !dbg !6127
  br i1 %tobool41, label %if.end48, label %if.then42, !dbg !6129

if.then42:                                        ; preds = %if.end38
  br label %do.body43, !dbg !6130

do.body43:                                        ; preds = %if.then42
  br label %do.cond44, !dbg !6133

do.cond44:                                        ; preds = %do.body43
  br label %do.end45, !dbg !6133

do.end45:                                         ; preds = %do.cond44
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5) #23, !dbg !6130
  store i32 %call47, ptr %tmp46, align 4, !dbg !6133
  %44 = load i32, ptr %tmp46, align 4, !dbg !6130
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup79, !dbg !6135

if.end48:                                         ; preds = %if.end38
  %45 = load ptr, ptr %new, align 8, !dbg !6136
  store ptr %45, ptr %new_md, align 8, !dbg !6137
  %46 = load ptr, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 27, i32 1), align 8, !dbg !6138
  store ptr %46, ptr %md, align 8, !dbg !6138
  br label %for.cond49, !dbg !6138

for.cond49:                                       ; preds = %for.inc67, %if.end48
  %47 = load ptr, ptr %md, align 8, !dbg !6140
  %tobool50 = icmp ne ptr %47, null, !dbg !6140
  br i1 %tobool50, label %land.rhs51, label %land.end54, !dbg !6140

land.rhs51:                                       ; preds = %for.cond49
  %48 = load ptr, ptr %md, align 8, !dbg !6140
  %49 = load i64, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 27, i32 5), align 8, !dbg !6140
  %add.ptr52 = getelementptr i8, ptr %48, i64 %49, !dbg !6140
  %50 = load ptr, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 27, i32 2), align 8, !dbg !6140
  %cmp53 = icmp ule ptr %add.ptr52, %50, !dbg !6140
  br label %land.end54

land.end54:                                       ; preds = %land.rhs51, %for.cond49
  %51 = phi i1 [ false, %for.cond49 ], [ %cmp53, %land.rhs51 ], !dbg !6142
  br i1 %51, label %for.body55, label %for.end69, !dbg !6138

for.body55:                                       ; preds = %land.end54
  %52 = load ptr, ptr %md, align 8, !dbg !6143
  %attribute56 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %52, i32 0, i32 5, !dbg !6146
  %53 = load i64, ptr %attribute56, align 8, !dbg !6146
  %and57 = and i64 %53, -9223372036854775808, !dbg !6147
  %tobool58 = icmp ne i64 %and57, 0, !dbg !6147
  br i1 %tobool58, label %if.end65, label %land.lhs.true59, !dbg !6148

land.lhs.true59:                                  ; preds = %for.body55
  %54 = load ptr, ptr %md, align 8, !dbg !6149
  %type60 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %54, i32 0, i32 0, !dbg !6150
  %55 = load i32, ptr %type60, align 8, !dbg !6150
  %cmp61 = icmp eq i32 %55, 3, !dbg !6151
  br i1 %cmp61, label %if.then64, label %lor.lhs.false, !dbg !6152

lor.lhs.false:                                    ; preds = %land.lhs.true59
  %56 = load ptr, ptr %md, align 8, !dbg !6153
  %type62 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %56, i32 0, i32 0, !dbg !6154
  %57 = load i32, ptr %type62, align 8, !dbg !6154
  %cmp63 = icmp eq i32 %57, 4, !dbg !6155
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6156

if.then64:                                        ; preds = %lor.lhs.false, %land.lhs.true59
  br label %for.inc67, !dbg !6157

if.end65:                                         ; preds = %lor.lhs.false, %for.body55
  %58 = load ptr, ptr %new_md, align 8, !dbg !6158
  %59 = load ptr, ptr %md, align 8, !dbg !6159
  %60 = load i64, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 27, i32 5), align 8, !dbg !6160
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %58, ptr align 8 %59, i64 %60, i1 false), !dbg !6161
  %61 = load i64, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 27, i32 5), align 8, !dbg !6162
  %62 = load ptr, ptr %new_md, align 8, !dbg !6163
  %add.ptr66 = getelementptr i8, ptr %62, i64 %61, !dbg !6163
  store ptr %add.ptr66, ptr %new_md, align 8, !dbg !6163
  br label %for.inc67, !dbg !6164

for.inc67:                                        ; preds = %if.end65, %if.then64
  %63 = load ptr, ptr %md, align 8, !dbg !6140
  %64 = load i64, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 27, i32 5), align 8, !dbg !6140
  %add.ptr68 = getelementptr i8, ptr %63, i64 %64, !dbg !6140
  store ptr %add.ptr68, ptr %md, align 8, !dbg !6140
  br label %for.cond49, !dbg !6140, !llvm.loop !6165

for.end69:                                        ; preds = %land.end54
  %65 = load ptr, ptr %new, align 8, !dbg !6167
  call void @memunmap(ptr noundef %65) #20, !dbg !6168
  %call70 = call i32 @efi_memmap_install(ptr noundef %data) #23, !dbg !6169
  %cmp71 = icmp ne i32 %call70, 0, !dbg !6171
  br i1 %cmp71, label %if.then72, label %if.end78, !dbg !6172

if.then72:                                        ; preds = %for.end69
  br label %do.body73, !dbg !6173

do.body73:                                        ; preds = %if.then72
  br label %do.cond74, !dbg !6176

do.cond74:                                        ; preds = %do.body73
  br label %do.end75, !dbg !6176

do.end75:                                         ; preds = %do.cond74
  %call77 = call i32 (ptr, ...) @_printk(ptr noundef @.str.6) #23, !dbg !6173
  store i32 %call77, ptr %tmp76, align 4, !dbg !6176
  %66 = load i32, ptr %tmp76, align 4, !dbg !6173
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup79, !dbg !6178

if.end78:                                         ; preds = %for.end69
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6179
  br label %cleanup79, !dbg !6179

cleanup79:                                        ; preds = %if.end78, %do.end75, %do.end45, %do.end, %if.then32, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_md) #21, !dbg !6179
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #21, !dbg !6179
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_entries) #21, !dbg !6179
  call void @llvm.lifetime.end.p0(i64 8, ptr %md) #21, !dbg !6179
  call void @llvm.lifetime.end.p0(i64 40, ptr %data) #21, !dbg !6179
  %cleanup.dest84 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest84, label %unreachable [
    i32 0, label %cleanup.cont85
    i32 1, label %cleanup.cont85
  ]

cleanup.cont85:                                   ; preds = %cleanup79, %cleanup79
  ret void, !dbg !6179

unreachable:                                      ; preds = %cleanup79, %cleanup
  unreachable
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @efi_unmap_pages(ptr noundef %md) #0 section ".init.text" align 16 !dbg !6180 {
entry:
  %md.addr = alloca ptr, align 8
  %pgd = alloca ptr, align 8
  %pa = alloca i64, align 8
  %va = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp12 = alloca i32, align 4
  store ptr %md, ptr %md.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %md.addr, metadata !6184, metadata !DIExpression()), !dbg !6188
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgd) #21, !dbg !6189
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !6185, metadata !DIExpression()), !dbg !6190
  %0 = load ptr, ptr getelementptr inbounds (%struct.anon.13, ptr @efi_mm, i32 0, i32 8), align 64, !dbg !6191
  store ptr %0, ptr %pgd, align 8, !dbg !6190
  call void @llvm.lifetime.start.p0(i64 8, ptr %pa) #21, !dbg !6192
  call void @llvm.dbg.declare(metadata ptr %pa, metadata !6186, metadata !DIExpression()), !dbg !6193
  %1 = load ptr, ptr %md.addr, align 8, !dbg !6194
  %phys_addr = getelementptr inbounds %struct.efi_memory_desc_t, ptr %1, i32 0, i32 2, !dbg !6195
  %2 = load i64, ptr %phys_addr, align 8, !dbg !6195
  store i64 %2, ptr %pa, align 8, !dbg !6193
  call void @llvm.lifetime.start.p0(i64 8, ptr %va) #21, !dbg !6196
  call void @llvm.dbg.declare(metadata ptr %va, metadata !6187, metadata !DIExpression()), !dbg !6197
  %3 = load ptr, ptr %md.addr, align 8, !dbg !6198
  %virt_addr = getelementptr inbounds %struct.efi_memory_desc_t, ptr %3, i32 0, i32 3, !dbg !6199
  %4 = load i64, ptr %virt_addr, align 8, !dbg !6199
  store i64 %4, ptr %va, align 8, !dbg !6197
  %call = call zeroext i1 @efi_is_mixed() #20, !dbg !6200
  br i1 %call, label %if.then, label %if.end, !dbg !6202

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6203

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %pgd, align 8, !dbg !6204
  %6 = load i64, ptr %pa, align 8, !dbg !6206
  %7 = load ptr, ptr %md.addr, align 8, !dbg !6207
  %num_pages = getelementptr inbounds %struct.efi_memory_desc_t, ptr %7, i32 0, i32 4, !dbg !6208
  %8 = load i64, ptr %num_pages, align 8, !dbg !6208
  %call1 = call i32 @kernel_unmap_pages_in_pgd(ptr noundef %5, i64 noundef %6, i64 noundef %8) #23, !dbg !6209
  %tobool = icmp ne i32 %call1, 0, !dbg !6209
  br i1 %tobool, label %if.then2, label %if.end4, !dbg !6210

if.then2:                                         ; preds = %if.end
  br label %do.body, !dbg !6211

do.body:                                          ; preds = %if.then2
  br label %do.cond, !dbg !6213

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6213

do.end:                                           ; preds = %do.cond
  %9 = load i64, ptr %pa, align 8, !dbg !6211
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef @.str.14, i64 noundef %9) #23, !dbg !6211
  store i32 %call3, ptr %tmp, align 4, !dbg !6213
  %10 = load i32, ptr %tmp, align 4, !dbg !6211
  br label %if.end4, !dbg !6215

if.end4:                                          ; preds = %do.end, %if.end
  %11 = load ptr, ptr %pgd, align 8, !dbg !6216
  %12 = load i64, ptr %va, align 8, !dbg !6218
  %13 = load ptr, ptr %md.addr, align 8, !dbg !6219
  %num_pages5 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %13, i32 0, i32 4, !dbg !6220
  %14 = load i64, ptr %num_pages5, align 8, !dbg !6220
  %call6 = call i32 @kernel_unmap_pages_in_pgd(ptr noundef %11, i64 noundef %12, i64 noundef %14) #23, !dbg !6221
  %tobool7 = icmp ne i32 %call6, 0, !dbg !6221
  br i1 %tobool7, label %if.then8, label %if.end14, !dbg !6222

if.then8:                                         ; preds = %if.end4
  br label %do.body9, !dbg !6223

do.body9:                                         ; preds = %if.then8
  br label %do.cond10, !dbg !6225

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !6225

do.end11:                                         ; preds = %do.cond10
  %15 = load i64, ptr %va, align 8, !dbg !6223
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef @.str.15, i64 noundef %15) #23, !dbg !6223
  store i32 %call13, ptr %tmp12, align 4, !dbg !6225
  %16 = load i32, ptr %tmp12, align 4, !dbg !6223
  br label %if.end14, !dbg !6227

if.end14:                                         ; preds = %do.end11, %if.end4
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6228
  br label %cleanup, !dbg !6228

cleanup:                                          ; preds = %if.end14, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %va) #21, !dbg !6228
  call void @llvm.lifetime.end.p0(i64 8, ptr %pa) #21, !dbg !6228
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgd) #21, !dbg !6228
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6228

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @real_mode_size_needed() #9 align 16 !dbg !6229 {
entry:
  %retval = alloca i64, align 8
  %0 = load ptr, ptr @real_mode_header, align 8, !dbg !6232
  %tobool = icmp ne ptr %0, null, !dbg !6232
  br i1 %tobool, label %if.then, label %if.end, !dbg !6234

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !6235
  br label %return, !dbg !6235

if.end:                                           ; preds = %entry
  %and = and i64 add (i64 sub (i64 ptrtoint (ptr @real_mode_blob_end to i64), i64 ptrtoint (ptr @real_mode_blob to i64)), i64 4095), -4096, !dbg !6236
  store i64 %and, ptr %retval, align 8, !dbg !6237
  br label %return, !dbg !6237

return:                                           ; preds = %if.end, %if.then
  %1 = load i64, ptr %retval, align 8, !dbg !6238
  ret i64 %1, !dbg !6238
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_real_mode_mem(i64 noundef %mem) #9 align 16 !dbg !6239 {
entry:
  %mem.addr = alloca i64, align 8
  store i64 %mem, ptr %mem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mem.addr, metadata !6243, metadata !DIExpression()), !dbg !6244
  %0 = load i64, ptr %mem.addr, align 8, !dbg !6245
  %1 = load i64, ptr @page_offset_base, align 8, !dbg !6245
  %add = add i64 %0, %1, !dbg !6245
  %2 = inttoptr i64 %add to ptr, !dbg !6245
  store ptr %2, ptr @real_mode_header, align 8, !dbg !6246
  ret void, !dbg !6247
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6248 dso_local void @memblock_free_late(i64 noundef, i64 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6251 dso_local ptr @memremap(i64 noundef, i64 noundef, i64 noundef) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6254 dso_local void @memunmap(ptr noundef) #6

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @efi_reuse_config(i64 noundef %tables, i32 noundef %nr_tables) #0 section ".init.text" align 16 !dbg !6255 {
entry:
  %retval = alloca i32, align 4
  %tables.addr = alloca i64, align 8
  %nr_tables.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %sz = alloca i32, align 4
  %ret = alloca i32, align 4
  %p = alloca ptr, align 8
  %tablep = alloca ptr, align 8
  %data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %guid = alloca %struct.guid_t, align 4
  %.compoundliteral = alloca %struct.guid_t, align 4
  store i64 %tables, ptr %tables.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tables.addr, metadata !6259, metadata !DIExpression()), !dbg !6281
  store i32 %nr_tables, ptr %nr_tables.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr_tables.addr, metadata !6260, metadata !DIExpression()), !dbg !6282
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #21, !dbg !6283
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6261, metadata !DIExpression()), !dbg !6284
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #21, !dbg !6283
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !6262, metadata !DIExpression()), !dbg !6285
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #21, !dbg !6283
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6263, metadata !DIExpression()), !dbg !6286
  store i32 0, ptr %ret, align 4, !dbg !6286
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #21, !dbg !6287
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6264, metadata !DIExpression()), !dbg !6288
  call void @llvm.lifetime.start.p0(i64 8, ptr %tablep) #21, !dbg !6287
  call void @llvm.dbg.declare(metadata ptr %tablep, metadata !6265, metadata !DIExpression()), !dbg !6289
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #21, !dbg !6290
  call void @llvm.dbg.declare(metadata ptr %data, metadata !6266, metadata !DIExpression()), !dbg !6291
  %0 = load i32, ptr %nr_tables.addr, align 4, !dbg !6292
  %cmp = icmp eq i32 %0, 0, !dbg !6294
  br i1 %cmp, label %if.then, label %if.end, !dbg !6295

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6296
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6296

if.end:                                           ; preds = %entry
  %1 = load i64, ptr @efi_setup, align 8, !dbg !6297
  %tobool = icmp ne i64 %1, 0, !dbg !6297
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !6299

if.then1:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !6300
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6300

if.end2:                                          ; preds = %if.end
  %call = call zeroext i1 @efi_enabled(i32 noundef 5) #20, !dbg !6301
  br i1 %call, label %if.end4, label %if.then3, !dbg !6303

if.then3:                                         ; preds = %if.end2
  store i32 0, ptr %retval, align 4, !dbg !6304
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6304

if.end4:                                          ; preds = %if.end2
  %2 = load i64, ptr @efi_setup, align 8, !dbg !6305
  %call5 = call ptr @early_memremap(i64 noundef %2, i64 noundef 96) #20, !dbg !6306
  store ptr %call5, ptr %data, align 8, !dbg !6307
  %3 = load ptr, ptr %data, align 8, !dbg !6308
  %tobool6 = icmp ne ptr %3, null, !dbg !6308
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !6310

if.then7:                                         ; preds = %if.end4
  store i32 -12, ptr %ret, align 4, !dbg !6311
  br label %out, !dbg !6313

if.end8:                                          ; preds = %if.end4
  %4 = load ptr, ptr %data, align 8, !dbg !6314
  %smbios = getelementptr inbounds %struct.efi_setup_data, ptr %4, i32 0, i32 3, !dbg !6316
  %5 = load i64, ptr %smbios, align 8, !dbg !6316
  %tobool9 = icmp ne i64 %5, 0, !dbg !6314
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !6317

if.then10:                                        ; preds = %if.end8
  br label %out_memremap, !dbg !6318

if.end11:                                         ; preds = %if.end8
  store i32 24, ptr %sz, align 4, !dbg !6319
  %6 = load i64, ptr %tables.addr, align 8, !dbg !6320
  %7 = load i32, ptr %nr_tables.addr, align 4, !dbg !6321
  %8 = load i32, ptr %sz, align 4, !dbg !6322
  %mul = mul i32 %7, %8, !dbg !6323
  %conv = sext i32 %mul to i64, !dbg !6321
  %call12 = call ptr @early_memremap(i64 noundef %6, i64 noundef %conv) #20, !dbg !6324
  store ptr %call12, ptr %tablep, align 8, !dbg !6325
  store ptr %call12, ptr %p, align 8, !dbg !6326
  %9 = load ptr, ptr %p, align 8, !dbg !6327
  %tobool13 = icmp ne ptr %9, null, !dbg !6327
  br i1 %tobool13, label %if.end16, label %if.then14, !dbg !6329

if.then14:                                        ; preds = %if.end11
  br label %do.body, !dbg !6330

do.body:                                          ; preds = %if.then14
  br label %do.cond, !dbg !6333

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6333

do.end:                                           ; preds = %do.cond
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef @.str.7) #23, !dbg !6330
  store i32 %call15, ptr %tmp, align 4, !dbg !6333
  %10 = load i32, ptr %tmp, align 4, !dbg !6330
  store i32 -12, ptr %ret, align 4, !dbg !6335
  br label %out_memremap, !dbg !6336

if.end16:                                         ; preds = %if.end11
  store i32 0, ptr %i, align 4, !dbg !6337
  br label %for.cond, !dbg !6338

for.cond:                                         ; preds = %for.inc, %if.end16
  %11 = load i32, ptr %i, align 4, !dbg !6339
  %12 = load i32, ptr %nr_tables.addr, align 4, !dbg !6340
  %cmp17 = icmp slt i32 %11, %12, !dbg !6341
  br i1 %cmp17, label %for.body, label %for.end, !dbg !6342

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %guid) #21, !dbg !6343
  call void @llvm.dbg.declare(metadata ptr %guid, metadata !6275, metadata !DIExpression()), !dbg !6344
  %13 = load ptr, ptr %p, align 8, !dbg !6345
  %guid19 = getelementptr inbounds %struct.efi_config_table_64_t, ptr %13, i32 0, i32 0, !dbg !6346
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %guid, ptr align 8 %guid19, i64 16, i1 false), !dbg !6346
  %b = getelementptr inbounds %struct.guid_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !6347
  %arrayinit.begin = getelementptr inbounds [16 x i8], ptr %b, i64 0, i64 0, !dbg !6347
  store i8 49, ptr %arrayinit.begin, align 1, !dbg !6347
  %arrayinit.element = getelementptr inbounds i8, ptr %arrayinit.begin, i64 1, !dbg !6347
  store i8 45, ptr %arrayinit.element, align 1, !dbg !6347
  %arrayinit.element20 = getelementptr inbounds i8, ptr %arrayinit.element, i64 1, !dbg !6347
  store i8 -99, ptr %arrayinit.element20, align 1, !dbg !6347
  %arrayinit.element21 = getelementptr inbounds i8, ptr %arrayinit.element20, i64 1, !dbg !6347
  store i8 -21, ptr %arrayinit.element21, align 1, !dbg !6347
  %arrayinit.element22 = getelementptr inbounds i8, ptr %arrayinit.element21, i64 1, !dbg !6347
  store i8 -120, ptr %arrayinit.element22, align 1, !dbg !6347
  %arrayinit.element23 = getelementptr inbounds i8, ptr %arrayinit.element22, i64 1, !dbg !6347
  store i8 45, ptr %arrayinit.element23, align 1, !dbg !6347
  %arrayinit.element24 = getelementptr inbounds i8, ptr %arrayinit.element23, i64 1, !dbg !6347
  store i8 -45, ptr %arrayinit.element24, align 1, !dbg !6347
  %arrayinit.element25 = getelementptr inbounds i8, ptr %arrayinit.element24, i64 1, !dbg !6347
  store i8 17, ptr %arrayinit.element25, align 1, !dbg !6347
  %arrayinit.element26 = getelementptr inbounds i8, ptr %arrayinit.element25, i64 1, !dbg !6347
  store i8 -102, ptr %arrayinit.element26, align 1, !dbg !6347
  %arrayinit.element27 = getelementptr inbounds i8, ptr %arrayinit.element26, i64 1, !dbg !6347
  store i8 22, ptr %arrayinit.element27, align 1, !dbg !6347
  %arrayinit.element28 = getelementptr inbounds i8, ptr %arrayinit.element27, i64 1, !dbg !6347
  store i8 0, ptr %arrayinit.element28, align 1, !dbg !6347
  %arrayinit.element29 = getelementptr inbounds i8, ptr %arrayinit.element28, i64 1, !dbg !6347
  store i8 -112, ptr %arrayinit.element29, align 1, !dbg !6347
  %arrayinit.element30 = getelementptr inbounds i8, ptr %arrayinit.element29, i64 1, !dbg !6347
  store i8 39, ptr %arrayinit.element30, align 1, !dbg !6347
  %arrayinit.element31 = getelementptr inbounds i8, ptr %arrayinit.element30, i64 1, !dbg !6347
  store i8 63, ptr %arrayinit.element31, align 1, !dbg !6347
  %arrayinit.element32 = getelementptr inbounds i8, ptr %arrayinit.element31, i64 1, !dbg !6347
  store i8 -63, ptr %arrayinit.element32, align 1, !dbg !6347
  %arrayinit.element33 = getelementptr inbounds i8, ptr %arrayinit.element32, i64 1, !dbg !6347
  store i8 77, ptr %arrayinit.element33, align 1, !dbg !6347
  %14 = getelementptr inbounds { i64, i64 }, ptr %guid, i32 0, i32 0, !dbg !6349
  %15 = load i64, ptr %14, align 4, !dbg !6349
  %16 = getelementptr inbounds { i64, i64 }, ptr %guid, i32 0, i32 1, !dbg !6349
  %17 = load i64, ptr %16, align 4, !dbg !6349
  %18 = getelementptr inbounds { i64, i64 }, ptr %.compoundliteral, i32 0, i32 0, !dbg !6349
  %19 = load i64, ptr %18, align 4, !dbg !6349
  %20 = getelementptr inbounds { i64, i64 }, ptr %.compoundliteral, i32 0, i32 1, !dbg !6349
  %21 = load i64, ptr %20, align 4, !dbg !6349
  %call34 = call i32 @efi_guidcmp(i64 %15, i64 %17, i64 %19, i64 %21) #20, !dbg !6349
  %tobool35 = icmp ne i32 %call34, 0, !dbg !6349
  br i1 %tobool35, label %if.end38, label %if.then36, !dbg !6350

if.then36:                                        ; preds = %for.body
  %22 = load ptr, ptr %data, align 8, !dbg !6351
  %smbios37 = getelementptr inbounds %struct.efi_setup_data, ptr %22, i32 0, i32 3, !dbg !6352
  %23 = load i64, ptr %smbios37, align 8, !dbg !6352
  %24 = load ptr, ptr %p, align 8, !dbg !6353
  %table = getelementptr inbounds %struct.efi_config_table_64_t, ptr %24, i32 0, i32 1, !dbg !6354
  store i64 %23, ptr %table, align 8, !dbg !6355
  br label %if.end38, !dbg !6356

if.end38:                                         ; preds = %if.then36, %for.body
  %25 = load i32, ptr %sz, align 4, !dbg !6357
  %26 = load ptr, ptr %p, align 8, !dbg !6358
  %idx.ext = sext i32 %25 to i64, !dbg !6358
  %add.ptr = getelementptr i8, ptr %26, i64 %idx.ext, !dbg !6358
  store ptr %add.ptr, ptr %p, align 8, !dbg !6358
  call void @llvm.lifetime.end.p0(i64 16, ptr %guid) #21, !dbg !6359
  br label %for.inc, !dbg !6360

for.inc:                                          ; preds = %if.end38
  %27 = load i32, ptr %i, align 4, !dbg !6361
  %inc = add i32 %27, 1, !dbg !6361
  store i32 %inc, ptr %i, align 4, !dbg !6361
  br label %for.cond, !dbg !6362, !llvm.loop !6363

for.end:                                          ; preds = %for.cond
  %28 = load ptr, ptr %tablep, align 8, !dbg !6365
  %29 = load i32, ptr %nr_tables.addr, align 4, !dbg !6366
  %30 = load i32, ptr %sz, align 4, !dbg !6367
  %mul39 = mul i32 %29, %30, !dbg !6368
  %conv40 = sext i32 %mul39 to i64, !dbg !6366
  call void @early_memunmap(ptr noundef %28, i64 noundef %conv40) #20, !dbg !6369
  br label %out_memremap, !dbg !6369

out_memremap:                                     ; preds = %for.end, %do.end, %if.then10
  call void @llvm.dbg.label(metadata !6279), !dbg !6370
  %31 = load ptr, ptr %data, align 8, !dbg !6371
  call void @early_memunmap(ptr noundef %31, i64 noundef 96) #20, !dbg !6372
  br label %out, !dbg !6372

out:                                              ; preds = %out_memremap, %if.then7
  call void @llvm.dbg.label(metadata !6280), !dbg !6373
  %32 = load i32, ptr %ret, align 4, !dbg !6374
  store i32 %32, ptr %retval, align 4, !dbg !6375
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6375

cleanup:                                          ; preds = %out, %if.then3, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #21, !dbg !6376
  call void @llvm.lifetime.end.p0(i64 8, ptr %tablep) #21, !dbg !6376
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #21, !dbg !6376
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #21, !dbg !6376
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #21, !dbg !6376
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #21, !dbg !6376
  %33 = load i32, ptr %retval, align 4, !dbg !6376
  ret i32 %33, !dbg !6376
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6377 dso_local ptr @early_memremap(i64 noundef, i64 noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @efi_guidcmp(i64 %left.coerce0, i64 %left.coerce1, i64 %right.coerce0, i64 %right.coerce1) #9 align 16 !dbg !6380 {
entry:
  %left = alloca %struct.guid_t, align 4
  %right = alloca %struct.guid_t, align 4
  %0 = getelementptr inbounds { i64, i64 }, ptr %left, i32 0, i32 0
  store i64 %left.coerce0, ptr %0, align 4
  %1 = getelementptr inbounds { i64, i64 }, ptr %left, i32 0, i32 1
  store i64 %left.coerce1, ptr %1, align 4
  %2 = getelementptr inbounds { i64, i64 }, ptr %right, i32 0, i32 0
  store i64 %right.coerce0, ptr %2, align 4
  %3 = getelementptr inbounds { i64, i64 }, ptr %right, i32 0, i32 1
  store i64 %right.coerce1, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %left, metadata !6384, metadata !DIExpression()), !dbg !6386
  call void @llvm.dbg.declare(metadata ptr %right, metadata !6385, metadata !DIExpression()), !dbg !6387
  %call = call i32 @memcmp(ptr noundef %left, ptr noundef %right, i64 noundef 16) #20, !dbg !6388
  ret i32 %call, !dbg !6389
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @efi_apply_memmap_quirks() #0 section ".init.text" align 16 !dbg !6390 {
entry:
  %tmp = alloca i32, align 4
  %call = call zeroext i1 @efi_runtime_supported() #20, !dbg !6391
  br i1 %call, label %if.end, label %if.then, !dbg !6393

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6394

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !6397

do.end:                                           ; preds = %do.body
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef @.str.8) #23, !dbg !6394
  store i32 %call1, ptr %tmp, align 4, !dbg !6397
  %0 = load i32, ptr %tmp, align 4, !dbg !6394
  call void @efi_memmap_unmap() #23, !dbg !6399
  br label %if.end, !dbg !6400

if.end:                                           ; preds = %do.end, %entry
  ret void, !dbg !6401
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @efi_runtime_supported() #9 align 16 !dbg !6402 {
entry:
  %retval = alloca i1, align 1
  %call = call zeroext i1 @efi_enabled(i32 noundef 5) #20, !dbg !6403
  %conv = zext i1 %call to i32, !dbg !6403
  %cmp = icmp eq i32 1, %conv, !dbg !6405
  br i1 %cmp, label %if.then, label %if.end, !dbg !6406

if.then:                                          ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !6407
  br label %return, !dbg !6407

if.end:                                           ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !6408
  br label %return, !dbg !6408

return:                                           ; preds = %if.end, %if.then
  %0 = load i1, ptr %retval, align 1, !dbg !6409
  ret i1 %0, !dbg !6409
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6410 dso_local void @efi_memmap_unmap() #8 section ".init.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @efi_reboot_required() #1 align 16 !dbg !6411 {
entry:
  %retval = alloca i1, align 1
  %0 = load i8, ptr @acpi_gbl_reduced_hardware, align 1, !dbg !6412
  %tobool = icmp ne i8 %0, 0, !dbg !6412
  br i1 %tobool, label %if.end, label %if.then, !dbg !6414

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !6415
  br label %return, !dbg !6415

if.end:                                           ; preds = %entry
  store i32 1, ptr @efi_reboot_quirk_mode, align 4, !dbg !6416
  store i1 true, ptr %retval, align 1, !dbg !6417
  br label %return, !dbg !6417

return:                                           ; preds = %if.end, %if.then
  %1 = load i1, ptr %retval, align 1, !dbg !6418
  ret i1 %1, !dbg !6418
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @efi_poweroff_required() #1 align 16 !dbg !6419 {
entry:
  %0 = load i8, ptr @acpi_gbl_reduced_hardware, align 1, !dbg !6420
  %conv = zext i8 %0 to i32, !dbg !6420
  %tobool = icmp ne i32 %conv, 0, !dbg !6420
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !6421

lor.rhs:                                          ; preds = %entry
  %1 = load i8, ptr @acpi_no_s5, align 1, !dbg !6422, !range !5520, !noundef !699
  %tobool1 = trunc i8 %1 to i1, !dbg !6422
  br label %lor.end, !dbg !6421

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %tobool1, %lor.rhs ]
  ret i1 %2, !dbg !6423
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @efi_crash_gracefully_on_page_fault(i64 noundef %phys_addr) #1 align 16 !dbg !6424 {
entry:
  %phys_addr.addr = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp37 = alloca i64, align 8
  %tmp51 = alloca i32, align 4
  %tmp57 = alloca i32, align 4
  %__ai_ptr = alloca ptr, align 8
  %tmp72 = alloca i32, align 4
  %__ret = alloca i32, align 4
  %tmp73 = alloca i32, align 4
  store i64 %phys_addr, ptr %phys_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phys_addr.addr, metadata !6428, metadata !DIExpression()), !dbg !6445
  %call = call i32 @preempt_count() #20, !dbg !6446
  %conv = sext i32 %call to i64, !dbg !6446
  %and = and i64 %conv, 16776960, !dbg !6446
  %tobool = icmp ne i64 %and, 0, !dbg !6446
  br i1 %tobool, label %if.then, label %if.end, !dbg !6448

if.then:                                          ; preds = %entry
  br label %return, !dbg !6449

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !6450

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !6453

do.end:                                           ; preds = %do.body
  %0 = load volatile i32, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 3), align 8, !dbg !6450
  store i32 %0, ptr %tmp, align 4, !dbg !6453
  %1 = load i32, ptr %tmp, align 4, !dbg !6450
  %cmp = icmp eq i32 %1, 0, !dbg !6455
  br i1 %cmp, label %if.then5, label %lor.lhs.false, !dbg !6456

lor.lhs.false:                                    ; preds = %do.end
  %call2 = call ptr @current_work() #20, !dbg !6457
  %cmp3 = icmp ne ptr %call2, getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 2), !dbg !6458
  br i1 %cmp3, label %if.then5, label %if.end6, !dbg !6459

if.then5:                                         ; preds = %lor.lhs.false, %do.end
  br label %return, !dbg !6460

if.end6:                                          ; preds = %lor.lhs.false
  %2 = load i64, ptr %phys_addr.addr, align 8, !dbg !6461
  %cmp7 = icmp ule i64 %2, 4095, !dbg !6463
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !6464

if.then9:                                         ; preds = %if.end6
  br label %return, !dbg !6465

if.end10:                                         ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #21, !dbg !6466
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6429, metadata !DIExpression()), !dbg !6466
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !6466
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !6467
  %tobool11 = icmp ne i32 %3, 0, !dbg !6467
  %lnot = xor i1 %tobool11, true, !dbg !6467
  %lnot12 = xor i1 %lnot, true, !dbg !6467
  %lnot.ext = zext i1 %lnot12 to i32, !dbg !6467
  %conv13 = sext i32 %lnot.ext to i64, !dbg !6467
  %expval = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !6467
  %tobool14 = icmp ne i64 %expval, 0, !dbg !6467
  br i1 %tobool14, label %if.then15, label %if.end36, !dbg !6466

if.then15:                                        ; preds = %if.end10
  br label %do.body16, !dbg !6467

do.body16:                                        ; preds = %if.then15
  br label %do.body17, !dbg !6468

do.body17:                                        ; preds = %do.body16
  br label %do.cond, !dbg !6469

do.cond:                                          ; preds = %do.body17
  br label %do.end18, !dbg !6469

do.end18:                                         ; preds = %do.cond
  %4 = load i64, ptr %phys_addr.addr, align 8, !dbg !6468
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.9, i64 noundef %4) #20, !dbg !6468
  br label %do.body19, !dbg !6468

do.body19:                                        ; preds = %do.end18
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #21, !dbg !6471
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6431, metadata !DIExpression()), !dbg !6471
  store i32 2313, ptr %__flags, align 4, !dbg !6471
  br label %do.body20, !dbg !6471

do.body20:                                        ; preds = %do.body19
  br label %do.cond21, !dbg !6472

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !6472

do.end22:                                         ; preds = %do.cond21
  br label %do.body23, !dbg !6471

do.body23:                                        ; preds = %do.end22
  %5 = load i32, ptr %__flags, align 4, !dbg !6474
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.10, i32 744, i32 %5, i64 12) #21, !dbg !6474, !srcloc !6476
  br label %do.cond24, !dbg !6474

do.cond24:                                        ; preds = %do.body23
  br label %do.end25, !dbg !6474

do.end25:                                         ; preds = %do.cond24
  br label %do.body26, !dbg !6471

do.body26:                                        ; preds = %do.end25
  br label %do.cond27, !dbg !6477

do.cond27:                                        ; preds = %do.body26
  br label %do.end28, !dbg !6477

do.end28:                                         ; preds = %do.cond27
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #21, !dbg !6468
  br label %do.cond29, !dbg !6471

do.cond29:                                        ; preds = %do.end28
  br label %do.end30, !dbg !6471

do.end30:                                         ; preds = %do.cond29
  br label %do.body31, !dbg !6468

do.body31:                                        ; preds = %do.end30
  br label %do.cond32, !dbg !6479

do.cond32:                                        ; preds = %do.body31
  br label %do.end33, !dbg !6479

do.end33:                                         ; preds = %do.cond32
  br label %do.cond34, !dbg !6468

do.cond34:                                        ; preds = %do.end33
  br label %do.end35, !dbg !6468

do.end35:                                         ; preds = %do.cond34
  br label %if.end36, !dbg !6468

if.end36:                                         ; preds = %do.end35, %if.end10
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !6466
  %tobool38 = icmp ne i32 %6, 0, !dbg !6466
  %lnot39 = xor i1 %tobool38, true, !dbg !6466
  %lnot41 = xor i1 %lnot39, true, !dbg !6466
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !6466
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !6466
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !6466
  store i64 %expval44, ptr %tmp37, align 8, !dbg !6467
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #21, !dbg !6481
  %7 = load i64, ptr %tmp37, align 8, !dbg !6466
  %8 = load i32, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 3), align 8, !dbg !6482
  %cmp45 = icmp eq i32 %8, 10, !dbg !6484
  br i1 %cmp45, label %if.then47, label %if.end53, !dbg !6485

if.then47:                                        ; preds = %if.end36
  br label %do.body48, !dbg !6486

do.body48:                                        ; preds = %if.then47
  br label %do.end50, !dbg !6489

do.end50:                                         ; preds = %do.body48
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef @.str.11) #23, !dbg !6486
  store i32 %call52, ptr %tmp51, align 4, !dbg !6489
  %9 = load i32, ptr %tmp51, align 4, !dbg !6486
  call void @machine_real_restart(i32 noundef 0) #24, !dbg !6491
  unreachable, !dbg !6491

if.end53:                                         ; preds = %if.end36
  call void @arch_efi_call_virt_teardown() #20, !dbg !6492
  store i64 -9223372036854775787, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 1), align 8, !dbg !6493
  call void @complete(ptr noundef getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 4)) #20, !dbg !6494
  call void @clear_bit(i64 noundef 3, ptr noundef getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 28)) #20, !dbg !6495
  br label %do.body54, !dbg !6496

do.body54:                                        ; preds = %if.end53
  br label %do.end56, !dbg !6498

do.end56:                                         ; preds = %do.body54
  %call58 = call i32 (ptr, ...) @_printk(ptr noundef @.str.12) #23, !dbg !6496
  store i32 %call58, ptr %tmp57, align 4, !dbg !6498
  %10 = load i32, ptr %tmp57, align 4, !dbg !6496
  br label %for.cond, !dbg !6500

for.cond:                                         ; preds = %do.end79, %do.end56
  br label %do.body59, !dbg !6501

do.body59:                                        ; preds = %for.cond
  br label %do.body60, !dbg !6502

do.body60:                                        ; preds = %do.body59
  br label %do.end62, !dbg !6503

do.end62:                                         ; preds = %do.body60
  br label %do.body63, !dbg !6502

do.body63:                                        ; preds = %do.end62
  br label %do.body64, !dbg !6505

do.body64:                                        ; preds = %do.body63
  br label %do.end66, !dbg !6506

do.end66:                                         ; preds = %do.body64
  br label %do.body67, !dbg !6505

do.body67:                                        ; preds = %do.end66
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #21, !dbg !6508
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !6435, metadata !DIExpression()), !dbg !6508
  %call68 = call ptr @get_current() #20, !dbg !6508
  %__state = getelementptr inbounds %struct.task_struct, ptr %call68, i32 0, i32 1, !dbg !6508
  store ptr %__state, ptr %__ai_ptr, align 8, !dbg !6508
  br label %do.body69, !dbg !6508

do.body69:                                        ; preds = %do.body67
  br label %do.cond70, !dbg !6509

do.cond70:                                        ; preds = %do.body69
  br label %do.end71, !dbg !6509

do.end71:                                         ; preds = %do.cond70
  %11 = load ptr, ptr %__ai_ptr, align 8, !dbg !6508
  call void @instrument_atomic_read_write(ptr noundef %11, i64 noundef 4) #20, !dbg !6508
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #21, !dbg !6511
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !6443, metadata !DIExpression()), !dbg !6511
  store i32 1026, ptr %__ret, align 4, !dbg !6511
  %12 = load i32, ptr %__ret, align 4, !dbg !6511
  %13 = load ptr, ptr %__ai_ptr, align 8, !dbg !6511
  %14 = call i32 asm sideeffect "xchgl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %13, i32 %12, ptr elementtype(i32) %13) #21, !dbg !6511, !srcloc !6512
  store i32 %14, ptr %__ret, align 4, !dbg !6511
  %15 = load i32, ptr %__ret, align 4, !dbg !6511
  store i32 %15, ptr %tmp73, align 4, !dbg !6511
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #21, !dbg !6508
  %16 = load i32, ptr %tmp73, align 4, !dbg !6511
  store i32 %16, ptr %tmp72, align 4, !dbg !6508
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #21, !dbg !6513
  %17 = load i32, ptr %tmp72, align 4, !dbg !6508
  br label %do.end75, !dbg !6513

do.end75:                                         ; preds = %do.end71
  br label %do.end77, !dbg !6505

do.end77:                                         ; preds = %do.end75
  br label %do.end79, !dbg !6502

do.end79:                                         ; preds = %do.end77
  call void @schedule() #20, !dbg !6514
  br label %for.cond, !dbg !6515, !llvm.loop !6516

return:                                           ; preds = %if.then9, %if.then5, %if.then
  ret void, !dbg !6519
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @preempt_count() #11 align 16 !dbg !6520 {
entry:
  %pfo_val__ = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #21, !dbg !6525
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6523, metadata !DIExpression()), !dbg !6525
  %0 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.17, ptr @pcpu_hot, i32 0, i32 1)) #25, !dbg !6525, !srcloc !6526
  store i32 %0, ptr %pfo_val__, align 4, !dbg !6525
  %1 = load i32, ptr %pfo_val__, align 4, !dbg !6525
  %conv = zext i32 %1 to i64, !dbg !6525
  %conv1 = trunc i64 %conv to i32, !dbg !6525
  store i32 %conv1, ptr %tmp, align 4, !dbg !6525
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #21, !dbg !6527
  %2 = load i32, ptr %tmp, align 4, !dbg !6525
  %and = and i32 %2, 2147483647, !dbg !6528
  ret i32 %and, !dbg !6529
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6530 dso_local ptr @current_work() #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #12

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6533 dso_local void @__warn_printk(ptr noundef, ...) #6

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6536 dso_local void @machine_real_restart(i32 noundef) #13

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6540 dso_local void @arch_efi_call_virt_teardown() #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6541 dso_local void @complete(ptr noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clear_bit(i64 noundef %nr, ptr noundef %addr) #11 align 16 !dbg !6544 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6551, metadata !DIExpression()), !dbg !6553
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6552, metadata !DIExpression()), !dbg !6554
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6555
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6556
  %div = sdiv i64 %1, 64, !dbg !6556
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6557
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #20, !dbg !6558
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6559
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6560
  call void @arch_clear_bit(i64 noundef %2, ptr noundef %3) #20, !dbg !6561
  ret void, !dbg !6562
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #11 align 16 !dbg !6563 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #21, !dbg !6574
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6568, metadata !DIExpression()), !dbg !6574
  br label %do.body, !dbg !6574

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #21, !dbg !6575
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6570, metadata !DIExpression()), !dbg !6575
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6575
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6575
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #21, !dbg !6574
  br label %do.cond, !dbg !6575

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6575

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #21, !dbg !6576
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6572, metadata !DIExpression()), !dbg !6576
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #26, !dbg !6576, !srcloc !6577
  store i64 %1, ptr %pfo_val__, align 8, !dbg !6576
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !6576
  %3 = inttoptr i64 %2 to ptr, !dbg !6576
  store ptr %3, ptr %tmp, align 8, !dbg !6576
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #21, !dbg !6574
  %4 = load ptr, ptr %tmp, align 8, !dbg !6576
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !6574
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !6574
  store ptr %5, ptr %tmp1, align 8, !dbg !6574
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #21, !dbg !6578
  %6 = load ptr, ptr %tmp1, align 8, !dbg !6574
  ret ptr %6, !dbg !6579
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #11 align 16 !dbg !6580 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6588, metadata !DIExpression()), !dbg !6590
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6589, metadata !DIExpression()), !dbg !6591
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6592
  %1 = load i64, ptr %size.addr, align 8, !dbg !6593
  %conv = trunc i64 %1 to i32, !dbg !6593
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #20, !dbg !6594
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6595
  %3 = load i64, ptr %size.addr, align 8, !dbg !6595
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #20, !dbg !6595
  ret void, !dbg !6596
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6597 dso_local void @schedule() #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #14 align 16 !dbg !6598 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6600, metadata !DIExpression()), !dbg !6605
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6601, metadata !DIExpression()), !dbg !6606
  %0 = load i64, ptr %size.addr, align 8, !dbg !6607
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6608
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6609

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6610
  %tobool = icmp ne i64 %2, 0, !dbg !6610
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6611

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #21, !dbg !6612
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6602, metadata !DIExpression()), !dbg !6613
  %3 = load i64, ptr %size.addr, align 8, !dbg !6614
  %cmp = icmp ugt i64 %3, 8192, !dbg !6616
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6617

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6618
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6619
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #22, !dbg !6620
  store ptr %call, ptr %retval, align 8, !dbg !6621
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6621

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6622
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #20, !dbg !6622
  store i32 %call2, ptr %index, align 4, !dbg !6623
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6624
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6625
  %9 = ptrtoint ptr %8 to i64, !dbg !6625
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #20, !dbg !6626
  %idxprom = zext i32 %call3 to i64, !dbg !6627
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6627
  %10 = load i32, ptr %index, align 4, !dbg !6628
  %idxprom4 = zext i32 %10 to i64, !dbg !6627
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6627
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6627
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6629
  %13 = load i64, ptr %size.addr, align 8, !dbg !6630
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #27, !dbg !6631
  store ptr %call6, ptr %retval, align 8, !dbg !6632
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6632

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #21, !dbg !6633
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6634
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6635
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #22, !dbg !6636
  store ptr %call8, ptr %retval, align 8, !dbg !6637
  br label %return, !dbg !6637

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6638
  ret ptr %16, !dbg !6638
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #15

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6639 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #16

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #11 align 16 !dbg !6640 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6644, metadata !DIExpression()), !dbg !6646
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6645, metadata !DIExpression()), !dbg !6647
  %0 = load i64, ptr %size.addr, align 8, !dbg !6648
  %tobool = icmp ne i64 %0, 0, !dbg !6648
  br i1 %tobool, label %if.end, label %if.then, !dbg !6650

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6651
  br label %return, !dbg !6651

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6652
  %cmp = icmp ule i64 %1, 8, !dbg !6654
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6655

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6656
  br label %return, !dbg !6656

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6657
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6659
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6660

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6661
  %cmp4 = icmp ule i64 %3, 96, !dbg !6662
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6663

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6664
  br label %return, !dbg !6664

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6665
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6667
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6668

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6669
  %cmp9 = icmp ule i64 %5, 192, !dbg !6670
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6671

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6672
  br label %return, !dbg !6672

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6673
  %cmp12 = icmp ule i64 %6, 8, !dbg !6675
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6676

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6677
  br label %return, !dbg !6677

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6678
  %cmp15 = icmp ule i64 %7, 16, !dbg !6680
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6681

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6682
  br label %return, !dbg !6682

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6683
  %cmp18 = icmp ule i64 %8, 32, !dbg !6685
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6686

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6687
  br label %return, !dbg !6687

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6688
  %cmp21 = icmp ule i64 %9, 64, !dbg !6690
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6691

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6692
  br label %return, !dbg !6692

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6693
  %cmp24 = icmp ule i64 %10, 128, !dbg !6695
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6696

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6697
  br label %return, !dbg !6697

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6698
  %cmp27 = icmp ule i64 %11, 256, !dbg !6700
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6701

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6702
  br label %return, !dbg !6702

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6703
  %cmp30 = icmp ule i64 %12, 512, !dbg !6705
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6706

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6707
  br label %return, !dbg !6707

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6708
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6710
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6711

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6712
  br label %return, !dbg !6712

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6713
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6715
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6716

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6717
  br label %return, !dbg !6717

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6718
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6720
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6721

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6722
  br label %return, !dbg !6722

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6723
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6725
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6726

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6727
  br label %return, !dbg !6727

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6728
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6730
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6731

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6732
  br label %return, !dbg !6732

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6733
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6735
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6736

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6737
  br label %return, !dbg !6737

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6738
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6740
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6741

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6742
  br label %return, !dbg !6742

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6743
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6745
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6746

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6747
  br label %return, !dbg !6747

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6748
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6750
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6751

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6752
  br label %return, !dbg !6752

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6753
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6755
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6756

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6757
  br label %return, !dbg !6757

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6758
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6760
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6761

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6762
  br label %return, !dbg !6762

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6763
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6765
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6766

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6767
  br label %return, !dbg !6767

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6768, !range !5520, !noundef !699
  %tobool69 = trunc i8 %25 to i1, !dbg !6768
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6770

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6771

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_245() #24, !dbg !6772, !srcloc !6775
  unreachable, !dbg !6772

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6776

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6777

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6778

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6780

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6778

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.13, i32 480, i32 0, i64 12) #21, !dbg !6782, !srcloc !6784
  br label %do.end75, !dbg !6782

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6778

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6785
  br label %return, !dbg !6785

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6786
  ret i32 %26, !dbg !6786
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6787 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #17

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #11 align 16 !dbg !6793 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6797, metadata !DIExpression()), !dbg !6799
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6798, metadata !DIExpression()), !dbg !6800
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6801
  %and = and i32 %0, 17, !dbg !6801
  %cmp = icmp eq i32 %and, 0, !dbg !6801
  %lnot = xor i1 %cmp, true, !dbg !6801
  %lnot1 = xor i1 %lnot, true, !dbg !6801
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6801
  %conv = sext i32 %lnot.ext to i64, !dbg !6801
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6801
  %tobool = icmp ne i64 %expval, 0, !dbg !6801
  br i1 %tobool, label %if.then, label %if.end, !dbg !6803

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6804
  br label %return, !dbg !6804

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6805
  %and2 = and i32 %1, 1, !dbg !6807
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6807
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6808

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6809
  br label %return, !dbg !6809

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6810
  br label %return, !dbg !6810

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6812
  ret i32 %2, !dbg !6812
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6813 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #16

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6814 dso_local void @__compiletime_assert_245() #18

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #15

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #11 align 16 !dbg !6815 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6822, metadata !DIExpression()), !dbg !6827
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6823, metadata !DIExpression()), !dbg !6828
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #21, !dbg !6829
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6824, metadata !DIExpression()), !dbg !6830
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6831
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6832
  %div = udiv i64 %1, 64, !dbg !6832
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6833
  store ptr %add.ptr, ptr %p, align 8, !dbg !6830
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #21, !dbg !6834
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !6825, metadata !DIExpression()), !dbg !6835
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6836
  %rem = urem i64 %2, 64, !dbg !6836
  %shl = shl i64 1, %rem, !dbg !6836
  store i64 %shl, ptr %mask, align 8, !dbg !6835
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #21, !dbg !6837
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6826, metadata !DIExpression()), !dbg !6838
  %3 = load ptr, ptr %p, align 8, !dbg !6839
  %4 = load i64, ptr %3, align 8, !dbg !6840
  store i64 %4, ptr %val, align 8, !dbg !6838
  %5 = load i64, ptr %val, align 8, !dbg !6841
  %6 = load i64, ptr %mask, align 8, !dbg !6842
  %and = and i64 %5, %6, !dbg !6843
  %tobool = icmp ne i64 %and, 0, !dbg !6844
  %lnot = xor i1 %tobool, true, !dbg !6844
  %lnot1 = xor i1 %lnot, true, !dbg !6845
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #21, !dbg !6846
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #21, !dbg !6846
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #21, !dbg !6846
  ret i1 %lnot1, !dbg !6847
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #11 align 16 !dbg !6848 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6851, metadata !DIExpression()), !dbg !6853
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6852, metadata !DIExpression()), !dbg !6854
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6855
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6856
  %div = udiv i64 %1, 64, !dbg !6856
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6857
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #20, !dbg !6858
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6859
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6860
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #20, !dbg !6861
  ret i1 %call, !dbg !6862
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #11 align 16 !dbg !6863 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6865, metadata !DIExpression()), !dbg !6867
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6866, metadata !DIExpression()), !dbg !6868
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6869
  %1 = load i64, ptr %size.addr, align 8, !dbg !6870
  %conv = trunc i64 %1 to i32, !dbg !6870
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #20, !dbg !6871
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6872
  %3 = load i64, ptr %size.addr, align 8, !dbg !6872
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #20, !dbg !6872
  ret void, !dbg !6873
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #11 align 16 !dbg !6874 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6877, metadata !DIExpression()), !dbg !6879
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6878, metadata !DIExpression()), !dbg !6880
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6881
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6882
  br i1 %1, label %cond.true, label %cond.false, !dbg !6882

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6883
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6884
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #20, !dbg !6885
  %conv = zext i1 %call to i32, !dbg !6885
  br label %cond.end, !dbg !6882

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6886
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6887
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #20, !dbg !6888
  %conv2 = zext i1 %call1 to i32, !dbg !6888
  br label %cond.end, !dbg !6882

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !6882
  %tobool = icmp ne i32 %cond, 0, !dbg !6882
  ret i1 %tobool, !dbg !6889
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #9 align 16 !dbg !6890 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6895, metadata !DIExpression()), !dbg !6897
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6896, metadata !DIExpression()), !dbg !6898
  ret i1 true, !dbg !6899
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #9 align 16 !dbg !6900 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6905, metadata !DIExpression()), !dbg !6908
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6906, metadata !DIExpression()), !dbg !6909
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6907, metadata !DIExpression()), !dbg !6910
  ret void, !dbg !6911
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #11 align 16 !dbg !6912 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6916, metadata !DIExpression()), !dbg !6918
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6917, metadata !DIExpression()), !dbg !6919
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6920
  %and = and i64 %0, 63, !dbg !6921
  %shl = shl i64 1, %and, !dbg !6922
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6923
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6924
  %shr = ashr i64 %2, 6, !dbg !6925
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !6923
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !6923
  %and1 = and i64 %shl, %3, !dbg !6926
  %cmp = icmp ne i64 %and1, 0, !dbg !6927
  ret i1 %cmp, !dbg !6928
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #11 align 16 !dbg !6929 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6931, metadata !DIExpression()), !dbg !6934
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6932, metadata !DIExpression()), !dbg !6935
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #21, !dbg !6936
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !6933, metadata !DIExpression()), !dbg !6937
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6938
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6939
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #21, !dbg !6940, !srcloc !6941
  %3 = icmp ult i8 %2, 2, !dbg !6940
  call void @llvm.assume(i1 %3), !dbg !6940
  store i8 %2, ptr %oldbit, align 1, !dbg !6940
  %4 = load i8, ptr %oldbit, align 1, !dbg !6942, !range !5520, !noundef !699
  %tobool = trunc i8 %4 to i1, !dbg !6942
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #21, !dbg !6943
  ret i1 %tobool, !dbg !6944
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6945 dso_local zeroext i1 @e820__mapped_all(i64 noundef, i64 noundef, i32 noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @efi_is_mixed() #9 align 16 !dbg !6948 {
entry:
  %call = call zeroext i1 @efi_enabled(i32 noundef 5) #20, !dbg !6949
  %lnot = xor i1 %call, true, !dbg !6950
  ret i1 %lnot, !dbg !6951
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6952 dso_local i32 @kernel_unmap_pages_in_pgd(ptr noundef, i64 noundef, i64 noundef) #8 section ".init.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6955 dso_local i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #11 align 16 !dbg !6959 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6961, metadata !DIExpression()), !dbg !6963
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6962, metadata !DIExpression()), !dbg !6964
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6965
  %1 = load i64, ptr %size.addr, align 8, !dbg !6966
  %conv = trunc i64 %1 to i32, !dbg !6966
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #20, !dbg !6967
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6968
  %3 = load i64, ptr %size.addr, align 8, !dbg !6968
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #20, !dbg !6968
  ret void, !dbg !6969
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_clear_bit(i64 noundef %nr, ptr noundef %addr) #11 align 16 !dbg !6970 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6972, metadata !DIExpression()), !dbg !6974
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6973, metadata !DIExpression()), !dbg !6975
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6976
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6978
  br i1 %1, label %if.then, label %if.else, !dbg !6979

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !6980
  %3 = load i64, ptr %nr.addr, align 8, !dbg !6980
  %shr = ashr i64 %3, 3, !dbg !6980
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !6980
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6982
  %and = and i64 %4, 7, !dbg !6982
  %sh_prom = trunc i64 %and to i32, !dbg !6982
  %shl = shl i32 1, %sh_prom, !dbg !6982
  %not = xor i32 %shl, -1, !dbg !6983
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %not, ptr elementtype(i8) %add.ptr) #21, !dbg !6984, !srcloc !6985
  br label %if.end, !dbg !6986

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6987
  %6 = load i64, ptr %nr.addr, align 8, !dbg !6989
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #21, !dbg !6990, !srcloc !6991
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !6992
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #9 align 16 !dbg !6993 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6995, metadata !DIExpression()), !dbg !6997
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6996, metadata !DIExpression()), !dbg !6998
  ret i1 true, !dbg !6999
}

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { noredzone noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #16 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #17 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #18 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { noredzone }
attributes #21 = { nounwind }
attributes #22 = { noredzone allocsize(0) }
attributes #23 = { cold noredzone }
attributes #24 = { noredzone noreturn }
attributes #25 = { nounwind memory(read) }
attributes #26 = { nounwind memory(none) }
attributes #27 = { noredzone allocsize(2) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5495, !5496, !5497, !5498, !5499, !5500, !5501, !5502}
!llvm.ident = !{!5503}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__setup_str_setup_storage_paranoia", scope: !2, file: !3, line: 103, type: !5492, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/platform/efi/.quirks.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/platform/efi/quirks\22 -D KBUILD_BASENAME=\22quirks\22 -D KBUILD_MODNAME=\22quirks\22 -D __KBUILD_MODNAME=kmod_quirks -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/platform/efi/quirks.ll arch/x86/platform/efi/quirks.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !311, globals: !5396, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/platform/efi/quirks.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "addf43f951ae0c769d98da288c7b2311")
!4 = !{!5, !18, !26, !31, !48, !58, !63, !71, !167, !174, !182, !198, !203, !210, !216, !223, !231, !238, !244, !250, !259, !264, !269, !275, !280, !286, !298, !304}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "e820_type", file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./arch/x86/include/asm/e820/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3d4b2499539a4fc8ec760e67f9268a5")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17}
!9 = !DIEnumerator(name: "E820_TYPE_RAM", value: 1)
!10 = !DIEnumerator(name: "E820_TYPE_RESERVED", value: 2)
!11 = !DIEnumerator(name: "E820_TYPE_ACPI", value: 3)
!12 = !DIEnumerator(name: "E820_TYPE_NVS", value: 4)
!13 = !DIEnumerator(name: "E820_TYPE_UNUSABLE", value: 5)
!14 = !DIEnumerator(name: "E820_TYPE_PMEM", value: 7)
!15 = !DIEnumerator(name: "E820_TYPE_PRAM", value: 12)
!16 = !DIEnumerator(name: "E820_TYPE_SOFT_RESERVED", value: 4026531839, isUnsigned: true)
!17 = !DIEnumerator(name: "E820_TYPE_RESERVED_KERN", value: 128)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !19, line: 140, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9069a71c5724a11302a774eef2b1f711")
!20 = !{!21, !22, !23, !24, !25}
!21 = !DIEnumerator(name: "MEMREMAP_WB", value: 1)
!22 = !DIEnumerator(name: "MEMREMAP_WT", value: 2)
!23 = !DIEnumerator(name: "MEMREMAP_WC", value: 4)
!24 = !DIEnumerator(name: "MEMREMAP_ENC", value: 8)
!25 = !DIEnumerator(name: "MEMREMAP_DEC", value: 16)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !27, line: 10, baseType: !7, size: 32, elements: !28)
!27 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!28 = !{!29, !30}
!29 = !DIEnumerator(name: "false", value: 0)
!30 = !DIEnumerator(name: "true", value: 1)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "efi_rts_ids", file: !32, line: 1242, baseType: !7, size: 32, elements: !33)
!32 = !DIFile(filename: "./include/linux/efi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2323d214b32d787c50a5d65c12a21824")
!33 = !{!34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47}
!34 = !DIEnumerator(name: "EFI_NONE", value: 0)
!35 = !DIEnumerator(name: "EFI_GET_TIME", value: 1)
!36 = !DIEnumerator(name: "EFI_SET_TIME", value: 2)
!37 = !DIEnumerator(name: "EFI_GET_WAKEUP_TIME", value: 3)
!38 = !DIEnumerator(name: "EFI_SET_WAKEUP_TIME", value: 4)
!39 = !DIEnumerator(name: "EFI_GET_VARIABLE", value: 5)
!40 = !DIEnumerator(name: "EFI_GET_NEXT_VARIABLE", value: 6)
!41 = !DIEnumerator(name: "EFI_SET_VARIABLE", value: 7)
!42 = !DIEnumerator(name: "EFI_QUERY_VARIABLE_INFO", value: 8)
!43 = !DIEnumerator(name: "EFI_GET_NEXT_HIGH_MONO_COUNT", value: 9)
!44 = !DIEnumerator(name: "EFI_RESET_SYSTEM", value: 10)
!45 = !DIEnumerator(name: "EFI_UPDATE_CAPSULE", value: 11)
!46 = !DIEnumerator(name: "EFI_QUERY_CAPSULE_CAPS", value: 12)
!47 = !DIEnumerator(name: "EFI_ACPI_PRM_HANDLER", value: 13)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !49, line: 364, baseType: !7, size: 32, elements: !50)
!49 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!50 = !{!51, !52, !53, !54, !55, !56, !57}
!51 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!52 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!53 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!54 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!55 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!56 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!57 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !59, line: 65, baseType: !7, size: 32, elements: !60)
!59 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!60 = !{!61, !62}
!61 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!62 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !64, line: 9, baseType: !7, size: 32, elements: !65)
!64 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!65 = !{!66, !67, !68, !69, !70}
!66 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!67 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!68 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!69 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!70 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!71 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !73, file: !72, line: 147, baseType: !7, size: 32, elements: !164)
!72 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !72, line: 135, size: 512, elements: !74)
!74 = !{!75, !79, !81, !83, !87, !88, !104, !162, !163}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !73, file: !72, line: 136, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!78 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !73, file: !72, line: 137, baseType: !80, size: 64, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !73, file: !72, line: 138, baseType: !82, size: 32, offset: 128)
!82 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !73, file: !72, line: 139, baseType: !84, size: 16, offset: 160)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !85, line: 24, baseType: !86)
!85 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!86 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !73, file: !72, line: 150, baseType: !71, size: 32, offset: 192)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !73, file: !72, line: 151, baseType: !89, size: 64, offset: 256)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !72, line: 64, baseType: !91)
!91 = !DISubroutineType(types: !92)
!92 = !{!82, !93, !82, !80, !94, !100}
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !85, line: 61, baseType: !96)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !97, line: 72, baseType: !98)
!97 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !97, line: 16, baseType: !99)
!99 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !85, line: 52, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !97, line: 88, baseType: !103)
!103 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !73, file: !72, line: 152, baseType: !105, size: 64, offset: 320)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !72, line: 117, size: 256, elements: !107)
!107 = !{!108, !113}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !106, file: !72, line: 118, baseType: !109, size: 32)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !85, line: 174, baseType: !110)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !85, line: 172, size: 32, elements: !111)
!111 = !{!112}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !110, file: !85, line: 173, baseType: !82, size: 32)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !106, file: !72, line: 119, baseType: !114, size: 192, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !115, line: 41, baseType: !116)
!115 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !115, line: 37, size: 192, elements: !117)
!117 = !{!118, !156}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !116, file: !115, line: 38, baseType: !119, size: 32)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !120, line: 29, baseType: !121)
!120 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !120, line: 17, size: 32, elements: !122)
!122 = !{!123}
!123 = !DIDerivedType(tag: DW_TAG_member, scope: !121, file: !120, line: 18, baseType: !124, size: 32)
!124 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !121, file: !120, line: 18, size: 32, elements: !125)
!125 = !{!126}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !124, file: !120, line: 19, baseType: !127, size: 32)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !128, line: 14, size: 32, elements: !129)
!128 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!129 = !{!130}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !127, file: !128, line: 15, baseType: !131, size: 32)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !132, line: 44, baseType: !133)
!132 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !132, line: 14, size: 32, elements: !134)
!134 = !{!135}
!135 = !DIDerivedType(tag: DW_TAG_member, scope: !133, file: !132, line: 15, baseType: !136, size: 32)
!136 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !133, file: !132, line: 15, size: 32, elements: !137)
!137 = !{!138, !139, !149}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !136, file: !132, line: 16, baseType: !109, size: 32)
!139 = !DIDerivedType(tag: DW_TAG_member, scope: !136, file: !132, line: 24, baseType: !140, size: 16)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !136, file: !132, line: 24, size: 16, elements: !141)
!141 = !{!142, !148}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !140, file: !132, line: 25, baseType: !143, size: 8)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !144, line: 17, baseType: !145)
!144 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !146, line: 21, baseType: !147)
!146 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!147 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !140, file: !132, line: 26, baseType: !143, size: 8, offset: 8)
!149 = !DIDerivedType(tag: DW_TAG_member, scope: !136, file: !132, line: 28, baseType: !150, size: 32)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !136, file: !132, line: 28, size: 32, elements: !151)
!151 = !{!152, !155}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !150, file: !132, line: 29, baseType: !153, size: 16)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !144, line: 19, baseType: !154)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !146, line: 24, baseType: !86)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !150, file: !132, line: 30, baseType: !153, size: 16, offset: 16)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !116, file: !115, line: 39, baseType: !157, size: 128, offset: 64)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !85, line: 190, size: 128, elements: !158)
!158 = !{!159, !161}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !157, file: !85, line: 191, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !157, file: !85, line: 191, baseType: !160, size: 64, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !73, file: !72, line: 153, baseType: !80, size: 64, offset: 384)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !73, file: !72, line: 154, baseType: !80, size: 64, offset: 448)
!164 = !{!165, !166}
!165 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!166 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!167 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !168, line: 312, baseType: !7, size: 32, elements: !169)
!168 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!169 = !{!170, !171, !172, !173}
!170 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!171 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!172 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!173 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!174 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !175, line: 68, baseType: !7, size: 32, elements: !176)
!175 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!176 = !{!177, !178, !179, !180, !181}
!177 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!178 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!179 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!180 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!181 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!182 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !183, line: 1325, baseType: !7, size: 32, elements: !184)
!183 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!184 = !{!185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197}
!185 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!186 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!187 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!188 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!189 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!190 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!191 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!192 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!193 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!194 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!195 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!196 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!197 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!198 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writeback_sync_modes", file: !199, line: 32, baseType: !7, size: 32, elements: !200)
!199 = !DIFile(filename: "./include/linux/writeback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "529df0d846991cd3030ee9505d2aaa60")
!200 = !{!201, !202}
!201 = !DIEnumerator(name: "WB_SYNC_NONE", value: 0)
!202 = !DIEnumerator(name: "WB_SYNC_ALL", value: 1)
!203 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !204, line: 15, baseType: !7, size: 32, elements: !205)
!204 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!205 = !{!206, !207, !208, !209}
!206 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!207 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!208 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!209 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!210 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !211, line: 45, baseType: !7, size: 32, elements: !212)
!211 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!212 = !{!213, !214, !215}
!213 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!214 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!215 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!216 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !217, line: 487, baseType: !7, size: 32, elements: !218)
!217 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!218 = !{!219, !220, !221, !222}
!219 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!220 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!221 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!222 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!223 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !224, line: 620, baseType: !7, size: 32, elements: !225)
!224 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!225 = !{!226, !227, !228, !229, !230}
!226 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!227 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!228 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!229 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!230 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!231 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !224, line: 597, baseType: !82, size: 32, elements: !232)
!232 = !{!233, !234, !235, !236, !237}
!233 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!234 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!235 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!236 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!237 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!238 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !239, line: 30, baseType: !7, size: 32, elements: !240)
!239 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!240 = !{!241, !242, !243}
!241 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!242 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!243 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!244 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !245, line: 26, baseType: !7, size: 32, elements: !246)
!245 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!246 = !{!247, !248, !249}
!247 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!248 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!249 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!250 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !217, line: 547, baseType: !7, size: 32, elements: !251)
!251 = !{!252, !253, !254, !255, !256, !257, !258}
!252 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!253 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!254 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!255 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!256 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!257 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!258 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!259 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !217, line: 564, baseType: !7, size: 32, elements: !260)
!260 = !{!261, !262, !263}
!261 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!262 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!263 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!264 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !217, line: 577, baseType: !7, size: 32, elements: !265)
!265 = !{!266, !267, !268}
!266 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!267 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!268 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!269 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !217, line: 503, baseType: !7, size: 32, elements: !270)
!270 = !{!271, !272, !273, !274}
!271 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!272 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!273 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!274 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!275 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !276, line: 2052, baseType: !7, size: 32, elements: !277)
!276 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!277 = !{!278, !279}
!278 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!279 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!280 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !281, line: 54, baseType: !7, size: 32, elements: !282)
!281 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!282 = !{!283, !284, !285}
!283 = !DIEnumerator(name: "USRQUOTA", value: 0)
!284 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!285 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!286 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "wb_reason", file: !287, line: 44, baseType: !7, size: 32, elements: !288)
!287 = !DIFile(filename: "./include/linux/backing-dev-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48876dd2050c245a6230a2e03c4bc3c9")
!288 = !{!289, !290, !291, !292, !293, !294, !295, !296, !297}
!289 = !DIEnumerator(name: "WB_REASON_BACKGROUND", value: 0)
!290 = !DIEnumerator(name: "WB_REASON_VMSCAN", value: 1)
!291 = !DIEnumerator(name: "WB_REASON_SYNC", value: 2)
!292 = !DIEnumerator(name: "WB_REASON_PERIODIC", value: 3)
!293 = !DIEnumerator(name: "WB_REASON_LAPTOP_TIMER", value: 4)
!294 = !DIEnumerator(name: "WB_REASON_FS_FREE_SPACE", value: 5)
!295 = !DIEnumerator(name: "WB_REASON_FORKER_THREAD", value: 6)
!296 = !DIEnumerator(name: "WB_REASON_FOREIGN_FLUSH", value: 7)
!297 = !DIEnumerator(name: "WB_REASON_MAX", value: 8)
!298 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !299, line: 16, baseType: !7, size: 32, elements: !300)
!299 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!300 = !{!301, !302, !303}
!301 = !DIEnumerator(name: "TT_NONE", value: 0)
!302 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!303 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!304 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !305, line: 51, baseType: !7, size: 32, elements: !306)
!305 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!306 = !{!307, !308, !309, !310}
!307 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!308 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!309 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!310 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!311 = !{!312, !80, !314, !315, !318, !319, !321, !336, !99, !339, !340, !342, !343, !344, !82, !360, !362, !364, !365}
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_char16_t", file: !32, line: 49, baseType: !153)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !85, line: 154, baseType: !7)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !144, line: 23, baseType: !316)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !146, line: 31, baseType: !317)
!317 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !85, line: 159, baseType: !315)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !320, line: 14, baseType: !99)
!320 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_config_table_64_t", file: !32, line: 448, baseType: !323)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !32, line: 445, size: 192, elements: !324)
!324 = !{!325, !335}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "guid", scope: !323, file: !32, line: 446, baseType: !326, size: 128, align: 32)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_guid_t", file: !32, line: 74, baseType: !327, align: 32)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "guid_t", file: !328, line: 17, baseType: !329)
!328 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !328, line: 15, size: 128, elements: !330)
!330 = !{!331}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !329, file: !328, line: 16, baseType: !332, size: 128)
!332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 128, elements: !333)
!333 = !{!334}
!334 = !DISubrange(count: 16)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !323, file: !32, line: 447, baseType: !315, size: 64, offset: 128)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !338)
!338 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !85, line: 42, baseType: !99)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!343 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_mode_header", file: !346, line: 18, size: 320, elements: !347)
!346 = !DIFile(filename: "./arch/x86/include/asm/realmode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f98f3fced78572afc86d24ec2fc3fcda")
!347 = !{!348, !351, !352, !353, !354, !355, !356, !357, !358, !359}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "text_start", scope: !345, file: !346, line: 19, baseType: !349, size: 32)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !144, line: 21, baseType: !350)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !146, line: 27, baseType: !7)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "ro_end", scope: !345, file: !346, line: 20, baseType: !349, size: 32, offset: 32)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "trampoline_start", scope: !345, file: !346, line: 22, baseType: !349, size: 32, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "trampoline_header", scope: !345, file: !346, line: 23, baseType: !349, size: 32, offset: 96)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "trampoline_start64", scope: !345, file: !346, line: 28, baseType: !349, size: 32, offset: 128)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "trampoline_pgd", scope: !345, file: !346, line: 29, baseType: !349, size: 32, offset: 160)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_start", scope: !345, file: !346, line: 33, baseType: !349, size: 32, offset: 192)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_header", scope: !345, file: !346, line: 34, baseType: !349, size: 32, offset: 224)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "machine_real_restart_asm", scope: !345, file: !346, line: 37, baseType: !349, size: 32, offset: 256)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "machine_real_restart_seg", scope: !345, file: !346, line: 39, baseType: !349, size: 32, offset: 288)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !78)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !343)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !367, line: 746, size: 58368, elements: !368)
!367 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!368 = !{!369, !377, !378, !379, !385, !386, !387, !388, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !468, !479, !580, !584, !587, !618, !619, !620, !621, !632, !634, !635, !636, !637, !638, !639, !650, !651, !654, !655, !656, !657, !658, !659, !660, !661, !668, !669, !676, !677, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4246, !4249, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4259, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4270, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4294, !4300, !4301, !4302, !4303, !4304, !4306, !4309, !4316, !4321, !4324, !4327, !4330, !4622, !4820, !4847, !4848, !4849, !4850, !4851, !4852, !4853, !4854, !4855, !4858, !4859, !4860, !4869, !4877, !4878, !4879, !4880, !4881, !4886, !4887, !4888, !4891, !4892, !4895, !4898, !4903, !4910, !4913, !4914, !5000, !5001, !5002, !5003, !5004, !5010, !5011, !5012, !5013, !5014, !5015, !5018, !5021, !5022, !5025, !5026, !5027, !5030, !5031, !5032, !5033, !5034, !5035, !5048, !5049, !5050, !5051, !5052, !5053, !5054, !5055, !5056, !5067, !5068, !5074, !5077, !5078, !5079, !5080, !5081, !5082, !5083, !5084, !5156, !5158, !5159, !5160, !5161, !5162, !5163, !5177, !5178, !5179, !5180, !5181, !5182, !5183, !5184, !5185, !5186, !5187, !5191, !5192, !5193}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !366, file: !367, line: 752, baseType: !370, size: 192)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !371, line: 56, size: 192, elements: !372)
!371 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!372 = !{!373, !374, !375, !376}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !370, file: !371, line: 57, baseType: !99, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !370, file: !371, line: 58, baseType: !99, size: 64, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !370, file: !371, line: 59, baseType: !349, size: 32, offset: 128)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !370, file: !371, line: 61, baseType: !349, size: 32, offset: 160)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !366, file: !367, line: 754, baseType: !7, size: 32, offset: 192)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !366, file: !367, line: 767, baseType: !80, size: 64, offset: 256)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !366, file: !367, line: 768, baseType: !380, size: 32, offset: 320)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !381, line: 113, baseType: !382)
!381 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !381, line: 111, size: 32, elements: !383)
!383 = !{!384}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !382, file: !381, line: 112, baseType: !109, size: 32)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !366, file: !367, line: 770, baseType: !7, size: 32, offset: 352)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !366, file: !367, line: 771, baseType: !7, size: 32, offset: 384)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !366, file: !367, line: 774, baseType: !82, size: 32, offset: 416)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !366, file: !367, line: 775, baseType: !389, size: 128, offset: 448)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !390, line: 58, size: 128, elements: !391)
!390 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!391 = !{!392, !398, !403, !404}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !389, file: !390, line: 59, baseType: !393, size: 64)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !394, line: 60, size: 64, elements: !395)
!394 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!395 = !{!396}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !393, file: !394, line: 61, baseType: !397, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, scope: !389, file: !390, line: 60, baseType: !399, size: 32, offset: 64)
!399 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !389, file: !390, line: 60, size: 32, elements: !400)
!400 = !{!401, !402}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !399, file: !390, line: 61, baseType: !7, size: 32)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !399, file: !390, line: 62, baseType: !109, size: 32)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !389, file: !390, line: 65, baseType: !153, size: 16, offset: 96)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !389, file: !390, line: 65, baseType: !153, size: 16, offset: 112)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !366, file: !367, line: 776, baseType: !7, size: 32, offset: 576)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !366, file: !367, line: 777, baseType: !99, size: 64, offset: 640)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !366, file: !367, line: 778, baseType: !365, size: 64, offset: 704)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !366, file: !367, line: 787, baseType: !82, size: 32, offset: 768)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !366, file: !367, line: 788, baseType: !82, size: 32, offset: 800)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !366, file: !367, line: 790, baseType: !82, size: 32, offset: 832)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !366, file: !367, line: 792, baseType: !82, size: 32, offset: 864)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !366, file: !367, line: 793, baseType: !82, size: 32, offset: 896)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !366, file: !367, line: 794, baseType: !82, size: 32, offset: 928)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !366, file: !367, line: 795, baseType: !7, size: 32, offset: 960)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !366, file: !367, line: 797, baseType: !416, size: 2048, offset: 1024)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !367, line: 551, size: 2048, elements: !417)
!417 = !{!418, !423, !431, !432, !433, !434, !435, !436, !437, !438, !439, !442, !443, !444, !445, !447, !450, !451, !452}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !416, file: !367, line: 553, baseType: !419, size: 128)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !367, line: 411, size: 128, elements: !420)
!420 = !{!421, !422}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !419, file: !367, line: 412, baseType: !99, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !419, file: !367, line: 413, baseType: !349, size: 32, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !416, file: !367, line: 554, baseType: !424, size: 192, align: 64, offset: 128)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !425, line: 5, size: 192, align: 64, elements: !426)
!425 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!426 = !{!427, !428, !430}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !424, file: !425, line: 6, baseType: !99, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !424, file: !425, line: 7, baseType: !429, size: 64, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !424, file: !425, line: 8, baseType: !429, size: 64, offset: 128)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !416, file: !367, line: 555, baseType: !315, size: 64, offset: 320)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !416, file: !367, line: 556, baseType: !315, size: 64, offset: 384)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !416, file: !367, line: 558, baseType: !157, size: 128, offset: 448)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !416, file: !367, line: 559, baseType: !7, size: 32, offset: 576)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !416, file: !367, line: 561, baseType: !315, size: 64, offset: 640)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !416, file: !367, line: 562, baseType: !315, size: 64, offset: 704)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !416, file: !367, line: 563, baseType: !315, size: 64, offset: 768)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !416, file: !367, line: 564, baseType: !315, size: 64, offset: 832)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !416, file: !367, line: 565, baseType: !440, size: 64, offset: 896)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !144, line: 22, baseType: !441)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !146, line: 30, baseType: !103)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !416, file: !367, line: 566, baseType: !315, size: 64, offset: 960)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !416, file: !367, line: 568, baseType: !315, size: 64, offset: 1024)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !416, file: !367, line: 571, baseType: !82, size: 32, offset: 1088)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !416, file: !367, line: 572, baseType: !446, size: 64, offset: 1152)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !416, file: !367, line: 574, baseType: !448, size: 64, offset: 1216)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !367, line: 49, flags: DIFlagFwdDecl)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !416, file: !367, line: 576, baseType: !448, size: 64, offset: 1280)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !416, file: !367, line: 578, baseType: !99, size: 64, offset: 1344)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !416, file: !367, line: 588, baseType: !453, size: 512, align: 512, offset: 1536)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !367, line: 497, size: 512, align: 512, elements: !454)
!454 = !{!455, !456, !457, !458, !459, !460, !461, !462, !463}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !453, file: !367, line: 498, baseType: !315, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !453, file: !367, line: 499, baseType: !315, size: 64, offset: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !453, file: !367, line: 500, baseType: !315, size: 64, offset: 128)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !453, file: !367, line: 501, baseType: !349, size: 32, offset: 192)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !453, file: !367, line: 502, baseType: !349, size: 32, offset: 224)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !453, file: !367, line: 503, baseType: !99, size: 64, offset: 256)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !453, file: !367, line: 504, baseType: !99, size: 64, offset: 320)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !453, file: !367, line: 505, baseType: !99, size: 64, offset: 384)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !453, file: !367, line: 506, baseType: !464, size: 64, align: 64, offset: 448)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !367, line: 445, size: 64, align: 64, elements: !465)
!465 = !{!466, !467}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !464, file: !367, line: 446, baseType: !7, size: 32)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !464, file: !367, line: 447, baseType: !7, size: 32, offset: 32)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !366, file: !367, line: 798, baseType: !469, size: 384, offset: 3072)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !367, line: 592, size: 384, elements: !470)
!470 = !{!471, !472, !473, !474, !475, !476, !477}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !469, file: !367, line: 593, baseType: !157, size: 128)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !469, file: !367, line: 594, baseType: !99, size: 64, offset: 128)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !469, file: !367, line: 595, baseType: !99, size: 64, offset: 192)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !469, file: !367, line: 596, baseType: !7, size: 32, offset: 256)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !469, file: !367, line: 597, baseType: !86, size: 16, offset: 288)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !469, file: !367, line: 598, baseType: !86, size: 16, offset: 304)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !469, file: !367, line: 600, baseType: !478, size: 64, offset: 320)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !366, file: !367, line: 799, baseType: !480, size: 1792, offset: 3456)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !367, line: 610, size: 1792, elements: !481)
!481 = !{!482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !577, !578}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !480, file: !367, line: 611, baseType: !424, size: 192, align: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !480, file: !367, line: 618, baseType: !315, size: 64, offset: 192)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !480, file: !367, line: 619, baseType: !315, size: 64, offset: 256)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !480, file: !367, line: 620, baseType: !315, size: 64, offset: 320)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !480, file: !367, line: 621, baseType: !315, size: 64, offset: 384)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !480, file: !367, line: 622, baseType: !315, size: 64, offset: 448)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !480, file: !367, line: 629, baseType: !440, size: 64, offset: 512)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !480, file: !367, line: 630, baseType: !315, size: 64, offset: 576)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !480, file: !367, line: 631, baseType: !7, size: 32, offset: 640)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !480, file: !367, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !480, file: !367, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !480, file: !367, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !480, file: !367, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !480, file: !367, line: 662, baseType: !496, size: 512, offset: 704)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !59, line: 118, size: 512, elements: !497)
!497 = !{!498, !506, !507, !512, !573, !574, !575, !576}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !496, file: !59, line: 119, baseType: !499, size: 256)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !500, line: 9, size: 256, elements: !501)
!500 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!501 = !{!502, !503}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !499, file: !500, line: 10, baseType: !424, size: 192, align: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !499, file: !500, line: 11, baseType: !504, size: 64, offset: 192)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !505, line: 29, baseType: !440)
!505 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!506 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !496, file: !59, line: 120, baseType: !504, size: 64, offset: 256)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !496, file: !59, line: 121, baseType: !508, size: 64, offset: 320)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{!58, !511}
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !496, file: !59, line: 122, baseType: !513, size: 64, offset: 384)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !59, line: 159, size: 512, align: 512, elements: !515)
!515 = !{!516, !542, !543, !546, !556, !557, !568, !572}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !514, file: !59, line: 160, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !59, line: 215, size: 4608, align: 512, elements: !519)
!519 = !{!520, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !518, file: !59, line: 216, baseType: !521, size: 32)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !128, line: 23, baseType: !127)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !518, file: !59, line: 217, baseType: !7, size: 32, offset: 32)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !518, file: !59, line: 218, baseType: !7, size: 32, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !518, file: !59, line: 219, baseType: !7, size: 32, offset: 96)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !518, file: !59, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !518, file: !59, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !518, file: !59, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !518, file: !59, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !518, file: !59, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !518, file: !59, line: 226, baseType: !7, size: 32, offset: 160)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !518, file: !59, line: 227, baseType: !86, size: 16, offset: 192)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !518, file: !59, line: 228, baseType: !86, size: 16, offset: 208)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !518, file: !59, line: 229, baseType: !7, size: 32, offset: 224)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !518, file: !59, line: 235, baseType: !504, size: 64, offset: 256)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !518, file: !59, line: 236, baseType: !511, size: 64, offset: 320)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !518, file: !59, line: 237, baseType: !504, size: 64, offset: 384)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !518, file: !59, line: 238, baseType: !511, size: 64, offset: 448)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !518, file: !59, line: 239, baseType: !539, size: 4096, align: 512, offset: 512)
!539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !514, size: 4096, align: 512, elements: !540)
!540 = !{!541}
!541 = !DISubrange(count: 8)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !514, file: !59, line: 161, baseType: !7, size: 32, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !514, file: !59, line: 162, baseType: !544, size: 32, offset: 96)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !85, line: 32, baseType: !545)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !97, line: 96, baseType: !82)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !514, file: !59, line: 163, baseType: !547, size: 32, offset: 128)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !548, line: 274, baseType: !549)
!548 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !548, line: 274, size: 32, elements: !550)
!550 = !{!551}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !549, file: !548, line: 274, baseType: !552, size: 32)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !548, line: 69, baseType: !553)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !548, line: 64, size: 32, elements: !554)
!554 = !{!555}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !553, file: !548, line: 65, baseType: !7, size: 32)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !514, file: !59, line: 164, baseType: !511, size: 64, offset: 192)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !514, file: !59, line: 165, baseType: !558, size: 128, offset: 256)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !500, line: 14, size: 128, elements: !559)
!559 = !{!560}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !558, file: !500, line: 15, baseType: !561, size: 128)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !425, line: 26, size: 128, elements: !562)
!562 = !{!563, !567}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !561, file: !425, line: 27, baseType: !564, size: 64)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !425, line: 12, size: 64, elements: !565)
!565 = !{!566}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !564, file: !425, line: 13, baseType: !429, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !561, file: !425, line: 28, baseType: !429, size: 64, offset: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !514, file: !59, line: 166, baseType: !569, size: 64, offset: 384)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DISubroutineType(types: !571)
!571 = !{!504}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !514, file: !59, line: 167, baseType: !504, size: 64, offset: 448)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !496, file: !59, line: 123, baseType: !143, size: 8, offset: 448)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !496, file: !59, line: 124, baseType: !143, size: 8, offset: 456)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !496, file: !59, line: 125, baseType: !143, size: 8, offset: 464)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !496, file: !59, line: 126, baseType: !143, size: 8, offset: 472)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !480, file: !367, line: 671, baseType: !496, size: 512, offset: 1216)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !480, file: !367, line: 679, baseType: !579, size: 64, offset: 1728)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !366, file: !367, line: 800, baseType: !581, size: 64, offset: 5248)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !583)
!583 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !367, line: 800, flags: DIFlagFwdDecl)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !366, file: !367, line: 809, baseType: !585, size: 64, offset: 5312)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !367, line: 70, flags: DIFlagFwdDecl)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !366, file: !367, line: 825, baseType: !588, size: 2048, align: 512, offset: 5632)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !367, line: 509, size: 2048, align: 512, elements: !589)
!589 = !{!590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !588, file: !367, line: 511, baseType: !315, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !588, file: !367, line: 512, baseType: !315, size: 64, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !588, file: !367, line: 513, baseType: !315, size: 64, offset: 128)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !588, file: !367, line: 514, baseType: !315, size: 64, offset: 192)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !588, file: !367, line: 515, baseType: !315, size: 64, offset: 256)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !588, file: !367, line: 516, baseType: !315, size: 64, offset: 320)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !588, file: !367, line: 518, baseType: !315, size: 64, offset: 384)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !588, file: !367, line: 519, baseType: !315, size: 64, offset: 448)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !588, file: !367, line: 520, baseType: !440, size: 64, offset: 512)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !588, file: !367, line: 522, baseType: !315, size: 64, offset: 576)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !588, file: !367, line: 523, baseType: !315, size: 64, offset: 640)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !588, file: !367, line: 524, baseType: !440, size: 64, offset: 704)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !588, file: !367, line: 526, baseType: !440, size: 64, offset: 768)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !588, file: !367, line: 527, baseType: !315, size: 64, offset: 832)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !588, file: !367, line: 529, baseType: !315, size: 64, offset: 896)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !588, file: !367, line: 530, baseType: !315, size: 64, offset: 960)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !588, file: !367, line: 531, baseType: !315, size: 64, offset: 1024)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !588, file: !367, line: 532, baseType: !315, size: 64, offset: 1088)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !588, file: !367, line: 533, baseType: !315, size: 64, offset: 1152)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !588, file: !367, line: 535, baseType: !315, size: 64, offset: 1216)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !588, file: !367, line: 536, baseType: !315, size: 64, offset: 1280)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !588, file: !367, line: 537, baseType: !315, size: 64, offset: 1344)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !588, file: !367, line: 538, baseType: !315, size: 64, offset: 1408)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !588, file: !367, line: 539, baseType: !315, size: 64, offset: 1472)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !588, file: !367, line: 540, baseType: !315, size: 64, offset: 1536)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !588, file: !367, line: 541, baseType: !315, size: 64, offset: 1600)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !588, file: !367, line: 542, baseType: !315, size: 64, offset: 1664)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !588, file: !367, line: 543, baseType: !315, size: 64, offset: 1728)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !366, file: !367, line: 833, baseType: !7, size: 32, offset: 7680)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !366, file: !367, line: 836, baseType: !7, size: 32, offset: 7712)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !366, file: !367, line: 837, baseType: !82, size: 32, offset: 7744)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !366, file: !367, line: 838, baseType: !622, size: 64, offset: 7808)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !624)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !625, line: 19, baseType: !626)
!625 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !625, line: 19, size: 64, elements: !627)
!627 = !{!628}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !626, file: !625, line: 19, baseType: !629, size: 64)
!629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 64, elements: !630)
!630 = !{!631}
!631 = !DISubrange(count: 1)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !366, file: !367, line: 839, baseType: !633, size: 64, offset: 7872)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !366, file: !367, line: 840, baseType: !624, size: 64, offset: 7936)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !366, file: !367, line: 841, baseType: !80, size: 64, offset: 8000)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !366, file: !367, line: 843, baseType: !86, size: 16, offset: 8064)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !366, file: !367, line: 845, baseType: !86, size: 16, offset: 8080)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !366, file: !367, line: 848, baseType: !82, size: 32, offset: 8096)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !366, file: !367, line: 849, baseType: !640, size: 32, offset: 8128)
!640 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !367, line: 718, size: 32, elements: !641)
!641 = !{!642, !649}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !640, file: !367, line: 724, baseType: !643, size: 32)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !640, file: !367, line: 719, size: 32, elements: !644)
!644 = !{!645, !646, !647, !648}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !643, file: !367, line: 720, baseType: !143, size: 8)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !643, file: !367, line: 721, baseType: !143, size: 8, offset: 8)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !643, file: !367, line: 722, baseType: !143, size: 8, offset: 16)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !643, file: !367, line: 723, baseType: !143, size: 8, offset: 24)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !640, file: !367, line: 725, baseType: !349, size: 32)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !366, file: !367, line: 850, baseType: !157, size: 128, offset: 8192)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !366, file: !367, line: 851, baseType: !652, size: 64, offset: 8320)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !367, line: 60, flags: DIFlagFwdDecl)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !366, file: !367, line: 855, baseType: !99, size: 64, offset: 8384)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !366, file: !367, line: 856, baseType: !143, size: 8, offset: 8448)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !366, file: !367, line: 857, baseType: !143, size: 8, offset: 8456)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !366, file: !367, line: 858, baseType: !82, size: 32, offset: 8480)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !366, file: !367, line: 859, baseType: !157, size: 128, offset: 8512)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !366, file: !367, line: 860, baseType: !82, size: 32, offset: 8640)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !366, file: !367, line: 861, baseType: !157, size: 128, offset: 8704)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !366, file: !367, line: 873, baseType: !662, size: 256, offset: 8832)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !367, line: 376, size: 256, elements: !663)
!663 = !{!664, !665, !666, !667}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !662, file: !367, line: 381, baseType: !99, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !662, file: !367, line: 384, baseType: !317, size: 64, offset: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !662, file: !367, line: 389, baseType: !317, size: 64, offset: 128)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !662, file: !367, line: 392, baseType: !317, size: 64, offset: 192)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !366, file: !367, line: 875, baseType: !157, size: 128, offset: 9088)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !366, file: !367, line: 877, baseType: !670, size: 320, offset: 9216)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !671, line: 86, size: 320, elements: !672)
!671 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!672 = !{!673, !674, !675}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !670, file: !671, line: 87, baseType: !82, size: 32)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !670, file: !671, line: 88, baseType: !157, size: 128, offset: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !670, file: !671, line: 89, baseType: !157, size: 128, offset: 192)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !366, file: !367, line: 878, baseType: !424, size: 192, align: 64, offset: 9536)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !366, file: !367, line: 881, baseType: !678, size: 64, offset: 9728)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !183, line: 733, size: 10240, elements: !680)
!680 = !{!681, !4160}
!681 = !DIDerivedType(tag: DW_TAG_member, scope: !679, file: !183, line: 734, baseType: !682, size: 10240)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !679, file: !183, line: 734, size: 10240, elements: !683)
!683 = !{!684, !688, !702, !4018, !4019, !4020, !4021, !4022, !4023, !4030, !4031, !4032, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4071, !4072, !4075, !4140, !4141, !4142, !4145, !4146, !4147, !4150, !4151, !4152, !4158, !4159}
!684 = !DIDerivedType(tag: DW_TAG_member, scope: !682, file: !183, line: 739, baseType: !685, size: 512, align: 512)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !682, file: !183, line: 739, size: 512, align: 512, elements: !686)
!686 = !{!687}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !685, file: !183, line: 747, baseType: !109, size: 32)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !682, file: !183, line: 750, baseType: !689, size: 128, offset: 512)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !690, line: 218, size: 128, elements: !691)
!690 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!691 = !{!692, !700, !701}
!692 = !DIDerivedType(tag: DW_TAG_member, scope: !689, file: !690, line: 219, baseType: !693, size: 32)
!693 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !689, file: !690, line: 219, size: 32, elements: !694)
!694 = !{!695, !696}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !693, file: !690, line: 220, baseType: !119, size: 32)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !693, file: !690, line: 221, baseType: !697)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !690, line: 197, baseType: !698)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !690, line: 197, elements: !699)
!699 = !{}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !689, file: !690, line: 223, baseType: !7, size: 32, offset: 32)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !689, file: !690, line: 224, baseType: !80, size: 64, offset: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !682, file: !183, line: 752, baseType: !703, size: 64, offset: 640)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DISubroutineType(types: !705)
!705 = !{!99, !706, !99, !99, !99, !99}
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !276, line: 994, size: 1856, align: 64, elements: !708)
!708 = !{!709, !723, !724, !726, !733, !745, !746, !747, !817, !1173, !1182, !4008, !4009, !4010, !4011, !4012, !4013, !4015, !4016, !4017}
!709 = !DIDerivedType(tag: DW_TAG_member, scope: !707, file: !276, line: 995, baseType: !710, size: 128)
!710 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !707, file: !276, line: 995, size: 128, elements: !711)
!711 = !{!712, !713, !722}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !710, file: !276, line: 996, baseType: !393, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !710, file: !276, line: 997, baseType: !714, size: 128, align: 64)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !85, line: 232, size: 128, align: 64, elements: !715)
!715 = !{!716, !718}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !714, file: !85, line: 233, baseType: !717, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !714, file: !85, line: 234, baseType: !719, size: 64, offset: 64)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DISubroutineType(types: !721)
!721 = !{null, !717}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !710, file: !276, line: 998, baseType: !7, size: 32)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !707, file: !276, line: 1005, baseType: !119, size: 32, offset: 128)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !707, file: !276, line: 1006, baseType: !725, size: 32, offset: 160)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !85, line: 156, baseType: !7)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !707, file: !276, line: 1007, baseType: !727, size: 64, offset: 192)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !728, line: 13, baseType: !729)
!728 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !85, line: 181, baseType: !730)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !85, line: 179, size: 64, elements: !731)
!731 = !{!732}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !730, file: !85, line: 180, baseType: !440, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !707, file: !276, line: 1008, baseType: !734, size: 256, offset: 256)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !735, line: 66, size: 256, elements: !736)
!735 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!736 = !{!737, !738, !739, !744}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !734, file: !735, line: 67, baseType: !727, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !734, file: !735, line: 68, baseType: !521, size: 32, offset: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !734, file: !735, line: 70, baseType: !740, size: 32, offset: 96)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !741, line: 15, size: 32, elements: !742)
!741 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!742 = !{!743}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !740, file: !741, line: 20, baseType: !109, size: 32)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !734, file: !735, line: 72, baseType: !157, size: 128, offset: 128)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !707, file: !276, line: 1009, baseType: !101, size: 64, offset: 512)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !707, file: !276, line: 1010, baseType: !7, size: 32, offset: 576)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !707, file: !276, line: 1011, baseType: !748, size: 256, offset: 640)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !276, line: 948, size: 256, elements: !749)
!749 = !{!750, !773, !806, !807, !815, !816}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !748, file: !276, line: 949, baseType: !751, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !752, line: 34, baseType: !753)
!752 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !752, line: 25, size: 64, elements: !754)
!754 = !{!755}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !753, file: !752, line: 26, baseType: !756, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !757, line: 27, baseType: !758)
!757 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !757, line: 13, size: 64, elements: !759)
!759 = !{!760, !772}
!760 = !DIDerivedType(tag: DW_TAG_member, scope: !758, file: !757, line: 14, baseType: !761, size: 32)
!761 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !758, file: !757, line: 14, size: 32, elements: !762)
!762 = !{!763, !764}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !761, file: !757, line: 15, baseType: !109, size: 32)
!764 = !DIDerivedType(tag: DW_TAG_member, scope: !761, file: !757, line: 16, baseType: !765, size: 32)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !761, file: !757, line: 16, size: 32, elements: !766)
!766 = !{!767, !768}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !765, file: !757, line: 18, baseType: !143, size: 8)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !765, file: !757, line: 19, baseType: !769, size: 24, offset: 8)
!769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 24, elements: !770)
!770 = !{!771}
!771 = !DISubrange(count: 3)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !758, file: !757, line: 26, baseType: !131, size: 32, offset: 32)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !748, file: !276, line: 950, baseType: !774, size: 64, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !64, line: 59, size: 768, elements: !776)
!776 = !{!777, !778, !779, !780, !793, !794, !795, !796}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !775, file: !64, line: 61, baseType: !380, size: 32)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !775, file: !64, line: 62, baseType: !7, size: 32, offset: 32)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !775, file: !64, line: 63, baseType: !119, size: 32, offset: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !775, file: !64, line: 65, baseType: !781, size: 256, offset: 128)
!781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !782, size: 256, elements: !791)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !85, line: 194, size: 64, elements: !783)
!783 = !{!784}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !782, file: !85, line: 195, baseType: !785, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !85, line: 198, size: 128, elements: !787)
!787 = !{!788, !789}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !786, file: !85, line: 199, baseType: !785, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !786, file: !85, line: 199, baseType: !790, size: 64, offset: 64)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!791 = !{!792}
!792 = !DISubrange(count: 4)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !775, file: !64, line: 66, baseType: !782, size: 64, offset: 384)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !775, file: !64, line: 68, baseType: !114, size: 192, offset: 448)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !775, file: !64, line: 69, baseType: !714, size: 128, align: 64, offset: 640)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !775, file: !64, line: 70, baseType: !797, offset: 768)
!797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !798, elements: !804)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !64, line: 54, size: 128, elements: !799)
!799 = !{!800, !801}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !798, file: !64, line: 55, baseType: !82, size: 32)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !798, file: !64, line: 56, baseType: !802, size: 64, offset: 64)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !64, line: 56, flags: DIFlagFwdDecl)
!804 = !{!805}
!805 = !DISubrange(count: -1)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !748, file: !276, line: 951, baseType: !63, size: 32, offset: 128)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !748, file: !276, line: 952, baseType: !808, size: 32, offset: 160)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !809, line: 23, baseType: !810)
!809 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !809, line: 21, size: 32, elements: !811)
!811 = !{!812}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !810, file: !809, line: 22, baseType: !813, size: 32)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !85, line: 37, baseType: !814)
!814 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !97, line: 49, baseType: !7)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !748, file: !276, line: 952, baseType: !808, size: 32, offset: 192)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !748, file: !276, line: 953, baseType: !82, size: 32, offset: 224)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !707, file: !276, line: 1012, baseType: !818, size: 64, offset: 896)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !820)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !821, line: 110, size: 1472, elements: !822)
!821 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!822 = !{!823, !824, !825, !832, !833, !834, !835, !836, !837, !838, !839, !845, !846, !847, !848, !849, !850, !974, !975, !976, !977, !978, !1009, !1159, !1160, !1168}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !820, file: !821, line: 111, baseType: !727, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !820, file: !821, line: 112, baseType: !808, size: 32, offset: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !820, file: !821, line: 113, baseType: !826, size: 32, offset: 96)
!826 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !809, line: 28, baseType: !827)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !809, line: 26, size: 32, elements: !828)
!828 = !{!829}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !827, file: !809, line: 27, baseType: !830, size: 32)
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !85, line: 38, baseType: !831)
!831 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !97, line: 50, baseType: !7)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !820, file: !821, line: 114, baseType: !808, size: 32, offset: 128)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !820, file: !821, line: 115, baseType: !826, size: 32, offset: 160)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !820, file: !821, line: 116, baseType: !808, size: 32, offset: 192)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !820, file: !821, line: 117, baseType: !826, size: 32, offset: 224)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !820, file: !821, line: 118, baseType: !808, size: 32, offset: 256)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !820, file: !821, line: 119, baseType: !826, size: 32, offset: 288)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !820, file: !821, line: 120, baseType: !7, size: 32, offset: 320)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !820, file: !821, line: 121, baseType: !840, size: 64, offset: 384)
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !841, line: 24, baseType: !842)
!841 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !841, line: 24, size: 64, elements: !843)
!843 = !{!844}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !842, file: !841, line: 24, baseType: !315, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !820, file: !821, line: 122, baseType: !840, size: 64, offset: 448)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !820, file: !821, line: 123, baseType: !840, size: 64, offset: 512)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !820, file: !821, line: 124, baseType: !840, size: 64, offset: 576)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !820, file: !821, line: 125, baseType: !840, size: 64, offset: 640)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !820, file: !821, line: 127, baseType: !147, size: 8, offset: 704)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !820, file: !821, line: 129, baseType: !851, size: 64, offset: 768)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !853, line: 195, size: 1728, elements: !854)
!853 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!854 = !{!855, !856, !861, !866, !875, !878, !879, !886, !887, !888, !889, !892, !893, !894, !896, !897, !938, !959}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !852, file: !853, line: 196, baseType: !380, size: 32)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !852, file: !853, line: 197, baseType: !857, size: 32, offset: 32)
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !853, line: 28, baseType: !858)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !85, line: 104, baseType: !859)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !144, line: 20, baseType: !860)
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !146, line: 26, baseType: !82)
!861 = !DIDerivedType(tag: DW_TAG_member, scope: !852, file: !853, line: 198, baseType: !862, size: 192, offset: 64)
!862 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !852, file: !853, line: 198, size: 192, elements: !863)
!863 = !{!864, !865}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !862, file: !853, line: 199, baseType: !157, size: 128)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !862, file: !853, line: 200, baseType: !424, size: 192, align: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !852, file: !853, line: 205, baseType: !867, size: 320, offset: 256)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !868, line: 48, size: 320, elements: !869)
!868 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!869 = !{!870, !871, !872, !873, !874}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !867, file: !868, line: 49, baseType: !727, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !867, file: !868, line: 55, baseType: !727, size: 64, offset: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !867, file: !868, line: 57, baseType: !740, size: 32, offset: 128)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !867, file: !868, line: 59, baseType: !521, size: 32, offset: 160)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !867, file: !868, line: 60, baseType: !157, size: 128, offset: 192)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !852, file: !853, line: 206, baseType: !876, size: 64, offset: 576)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !853, line: 206, flags: DIFlagFwdDecl)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !852, file: !853, line: 207, baseType: !80, size: 64, offset: 640)
!879 = !DIDerivedType(tag: DW_TAG_member, scope: !852, file: !853, line: 208, baseType: !880, size: 64, offset: 704)
!880 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !852, file: !853, line: 208, size: 64, elements: !881)
!881 = !{!882, !885}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !880, file: !853, line: 209, baseType: !883, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !884, line: 8, baseType: !441)
!884 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!885 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !880, file: !853, line: 210, baseType: !883, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !852, file: !853, line: 212, baseType: !883, size: 64, offset: 768)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !852, file: !853, line: 213, baseType: !808, size: 32, offset: 832)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !852, file: !853, line: 214, baseType: !826, size: 32, offset: 864)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !852, file: !853, line: 215, baseType: !890, size: 32, offset: 896)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !853, line: 31, baseType: !891)
!891 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !85, line: 110, baseType: !349)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !852, file: !853, line: 216, baseType: !86, size: 16, offset: 928)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !852, file: !853, line: 217, baseType: !86, size: 16, offset: 944)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !852, file: !853, line: 221, baseType: !895, size: 16, offset: 960)
!895 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !852, file: !853, line: 228, baseType: !99, size: 64, offset: 1024)
!897 = !DIDerivedType(tag: DW_TAG_member, scope: !852, file: !853, line: 245, baseType: !898, size: 320, offset: 1088)
!898 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !852, file: !853, line: 245, size: 320, elements: !899)
!899 = !{!900, !929}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !898, file: !853, line: 246, baseType: !901, size: 320)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !853, line: 114, size: 320, elements: !902)
!902 = !{!903, !904, !916, !919, !928}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !901, file: !853, line: 116, baseType: !99, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, scope: !901, file: !853, line: 117, baseType: !905, size: 64, offset: 64)
!905 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !901, file: !853, line: 117, size: 64, elements: !906)
!906 = !{!907, !915}
!907 = !DIDerivedType(tag: DW_TAG_member, scope: !905, file: !853, line: 118, baseType: !908, size: 64)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !905, file: !853, line: 118, size: 64, elements: !909)
!909 = !{!910, !911}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !908, file: !853, line: 120, baseType: !153, size: 16)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !908, file: !853, line: 121, baseType: !912, size: 48, offset: 16)
!912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 48, elements: !913)
!913 = !{!914}
!914 = !DISubrange(count: 6)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !905, file: !853, line: 127, baseType: !99, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !901, file: !853, line: 129, baseType: !917, size: 64, offset: 128)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !853, line: 102, flags: DIFlagFwdDecl)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !901, file: !853, line: 130, baseType: !920, size: 64, offset: 192)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !853, line: 108, size: 192, elements: !922)
!922 = !{!923, !924, !925}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !921, file: !853, line: 109, baseType: !714, size: 128, align: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !921, file: !853, line: 110, baseType: !380, size: 32, offset: 128)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !921, file: !853, line: 111, baseType: !926, size: 8, offset: 160)
!926 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !85, line: 35, baseType: !927)
!927 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !901, file: !853, line: 131, baseType: !76, size: 64, offset: 256)
!929 = !DIDerivedType(tag: DW_TAG_member, scope: !898, file: !853, line: 247, baseType: !930, size: 320)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !898, file: !853, line: 247, size: 320, elements: !931)
!931 = !{!932, !933, !934, !935, !936}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !930, file: !853, line: 248, baseType: !99, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !930, file: !853, line: 249, baseType: !99, size: 64, offset: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !930, file: !853, line: 250, baseType: !917, size: 64, offset: 128)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !930, file: !853, line: 251, baseType: !920, size: 64, offset: 192)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !930, file: !853, line: 252, baseType: !937, size: 64, offset: 256)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, scope: !852, file: !853, line: 260, baseType: !939, size: 256, offset: 1408)
!939 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !852, file: !853, line: 260, size: 256, elements: !940)
!940 = !{!941, !947}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !939, file: !853, line: 261, baseType: !942, size: 256)
!942 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !853, line: 134, size: 256, elements: !943)
!943 = !{!944, !945}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !942, file: !853, line: 135, baseType: !80, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !942, file: !853, line: 136, baseType: !946, size: 256)
!946 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 256, elements: !791)
!947 = !DIDerivedType(tag: DW_TAG_member, scope: !939, file: !853, line: 262, baseType: !948, size: 256)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !939, file: !853, line: 262, size: 256, elements: !949)
!949 = !{!950, !951}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !948, file: !853, line: 264, baseType: !157, size: 128)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !948, file: !853, line: 265, baseType: !952, size: 128, offset: 128)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !953, line: 22, size: 128, elements: !954)
!953 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!954 = !{!955, !958}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !952, file: !953, line: 23, baseType: !956, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !953, line: 23, flags: DIFlagFwdDecl)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !952, file: !953, line: 24, baseType: !99, size: 64, offset: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !852, file: !853, line: 280, baseType: !960, size: 64, offset: 1664)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !853, line: 176, size: 192, elements: !962)
!962 = !{!963, !972, !973}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !961, file: !853, line: 177, baseType: !964, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !853, line: 171, baseType: !965)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DISubroutineType(types: !967)
!967 = !{!82, !851, !968, !970, !851}
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !918)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !942)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !961, file: !853, line: 178, baseType: !851, size: 64, offset: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !961, file: !853, line: 179, baseType: !917, size: 64, offset: 128)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !820, file: !821, line: 130, baseType: !851, size: 64, offset: 832)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !820, file: !821, line: 131, baseType: !851, size: 64, offset: 896)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !820, file: !821, line: 132, baseType: !851, size: 64, offset: 960)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !820, file: !821, line: 135, baseType: !80, size: 64, offset: 1024)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !820, file: !821, line: 137, baseType: !979, size: 64, offset: 1088)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !981, line: 14, size: 1088, elements: !982)
!981 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!982 = !{!983, !984, !993, !994, !995, !996, !997, !998}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !980, file: !981, line: 15, baseType: !380, size: 32)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !980, file: !981, line: 17, baseType: !985, size: 320, offset: 64)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !986, line: 22, size: 320, elements: !987)
!986 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!987 = !{!988, !989, !990, !991}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !985, file: !986, line: 23, baseType: !521, size: 32)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !985, file: !986, line: 24, baseType: !440, size: 64, offset: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !985, file: !986, line: 26, baseType: !157, size: 128, offset: 128)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !985, file: !986, line: 28, baseType: !992, size: 64, offset: 256)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !980, file: !981, line: 19, baseType: !99, size: 64, offset: 384)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !980, file: !981, line: 20, baseType: !727, size: 64, offset: 448)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !980, file: !981, line: 23, baseType: !786, size: 128, offset: 512)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !980, file: !981, line: 24, baseType: !808, size: 32, offset: 640)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !980, file: !981, line: 29, baseType: !727, size: 64, offset: 704)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !980, file: !981, line: 36, baseType: !999, size: 320, offset: 768)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1000, line: 15, size: 320, elements: !1001)
!1000 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1001 = !{!1002, !1003, !1004, !1005, !1006, !1007, !1008}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !999, file: !1000, line: 16, baseType: !521, size: 32)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !999, file: !1000, line: 18, baseType: !82, size: 32, offset: 32)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !999, file: !1000, line: 19, baseType: !82, size: 32, offset: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !999, file: !1000, line: 20, baseType: !82, size: 32, offset: 96)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !999, file: !1000, line: 21, baseType: !82, size: 32, offset: 128)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !999, file: !1000, line: 22, baseType: !99, size: 64, offset: 192)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !999, file: !1000, line: 23, baseType: !99, size: 64, offset: 256)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !820, file: !821, line: 138, baseType: !1010, size: 64, offset: 1152)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1012, line: 68, size: 4800, elements: !1013)
!1012 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!1013 = !{!1014, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1053, !1054, !1055, !1056, !1057, !1058, !1070, !1140, !1141, !1155, !1157}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !1011, file: !1012, line: 69, baseType: !1015, size: 576)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !1012, line: 23, size: 576, elements: !1016)
!1016 = !{!1017, !1018}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !1015, file: !1012, line: 24, baseType: !349, size: 32)
!1018 = !DIDerivedType(tag: DW_TAG_member, scope: !1015, file: !1012, line: 25, baseType: !1019, size: 512, offset: 64)
!1019 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1015, file: !1012, line: 25, size: 512, elements: !1020)
!1020 = !{!1021, !1030}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !1019, file: !1012, line: 26, baseType: !1022, size: 480)
!1022 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1023, size: 480, elements: !1028)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !1012, line: 17, size: 96, elements: !1024)
!1024 = !{!1025, !1026, !1027}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1023, file: !1012, line: 18, baseType: !349, size: 32)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !1023, file: !1012, line: 19, baseType: !349, size: 32, offset: 32)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1023, file: !1012, line: 20, baseType: !349, size: 32, offset: 64)
!1028 = !{!1029}
!1029 = !DISubrange(count: 5)
!1030 = !DIDerivedType(tag: DW_TAG_member, scope: !1019, file: !1012, line: 27, baseType: !1031, size: 128)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1019, file: !1012, line: 27, size: 128, elements: !1032)
!1032 = !{!1033, !1035}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !1031, file: !1012, line: 28, baseType: !1034, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !1031, file: !1012, line: 29, baseType: !1034, size: 64, offset: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !1011, file: !1012, line: 70, baseType: !1015, size: 576, offset: 576)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !1011, file: !1012, line: 71, baseType: !1015, size: 576, offset: 1152)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1011, file: !1012, line: 72, baseType: !1010, size: 64, offset: 1728)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1011, file: !1012, line: 73, baseType: !82, size: 32, offset: 1792)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1011, file: !1012, line: 74, baseType: !808, size: 32, offset: 1824)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !1011, file: !1012, line: 75, baseType: !826, size: 32, offset: 1856)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1011, file: !1012, line: 76, baseType: !1043, size: 192, offset: 1920)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1044, line: 9, size: 192, elements: !1045)
!1044 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!1045 = !{!1046, !1047, !1051, !1052}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1043, file: !1044, line: 10, baseType: !727, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1043, file: !1044, line: 11, baseType: !1048, size: 64, offset: 64)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1050)
!1050 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1044, line: 7, flags: DIFlagFwdDecl)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1043, file: !1044, line: 12, baseType: !7, size: 32, offset: 128)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1043, file: !1044, line: 13, baseType: !380, size: 32, offset: 160)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1011, file: !1012, line: 77, baseType: !99, size: 64, offset: 2112)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !1011, file: !1012, line: 80, baseType: !926, size: 8, offset: 2176)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !1011, file: !1012, line: 88, baseType: !157, size: 128, offset: 2240)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !1011, file: !1012, line: 89, baseType: !851, size: 64, offset: 2368)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !1011, file: !1012, line: 90, baseType: !867, size: 320, offset: 2432)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1011, file: !1012, line: 97, baseType: !1059, size: 256, offset: 2752)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1060, line: 98, size: 256, elements: !1061)
!1060 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1061 = !{!1062, !1063, !1064}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1059, file: !1060, line: 99, baseType: !727, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1059, file: !1060, line: 100, baseType: !157, size: 128, offset: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1059, file: !1060, line: 101, baseType: !1065, size: 64, offset: 192)
!1065 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1060, line: 21, baseType: !1066)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{null, !1069}
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1011, file: !1012, line: 99, baseType: !1071, size: 768, offset: 3008)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !72, line: 199, size: 768, elements: !1072)
!1072 = !{!1073, !1078}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !1071, file: !72, line: 200, baseType: !1074, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!82, !1077}
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1071, file: !72, line: 201, baseType: !1079, size: 704, offset: 64)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !72, line: 193, size: 704, elements: !1080)
!1080 = !{!1081, !1139}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1079, file: !72, line: 195, baseType: !1082, size: 640)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !72, line: 173, size: 640, elements: !1083)
!1083 = !{!1084, !1096, !1108, !1109, !1129, !1130, !1132, !1138}
!1084 = !DIDerivedType(tag: DW_TAG_member, scope: !1082, file: !72, line: 174, baseType: !1085, size: 192)
!1085 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1082, file: !72, line: 174, size: 192, elements: !1086)
!1086 = !{!1087, !1095}
!1087 = !DIDerivedType(tag: DW_TAG_member, scope: !1085, file: !72, line: 175, baseType: !1088, size: 192)
!1088 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1085, file: !72, line: 175, size: 192, elements: !1089)
!1089 = !{!1090, !1091, !1092, !1093, !1094}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1088, file: !72, line: 176, baseType: !93, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1088, file: !72, line: 177, baseType: !82, size: 32, offset: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1088, file: !72, line: 178, baseType: !82, size: 32, offset: 96)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1088, file: !72, line: 179, baseType: !82, size: 32, offset: 128)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1088, file: !72, line: 180, baseType: !82, size: 32, offset: 160)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1085, file: !72, line: 182, baseType: !714, size: 128, align: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1082, file: !72, line: 184, baseType: !1097, size: 64, offset: 192)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1099, line: 26, size: 256, elements: !1100)
!1099 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1100 = !{!1101, !1102}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1098, file: !1099, line: 27, baseType: !7, size: 32)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1098, file: !1099, line: 28, baseType: !1103, size: 192, offset: 64)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1104, line: 43, size: 192, elements: !1105)
!1104 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1105 = !{!1106, !1107}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1103, file: !1104, line: 44, baseType: !521, size: 32)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1103, file: !1104, line: 45, baseType: !157, size: 128, offset: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1082, file: !72, line: 185, baseType: !93, size: 64, offset: 256)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1082, file: !72, line: 186, baseType: !1110, size: 64, offset: 320)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !72, line: 204, size: 960, elements: !1112)
!1112 = !{!1113, !1114, !1118, !1125}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1111, file: !72, line: 205, baseType: !1071, size: 768)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1111, file: !72, line: 206, baseType: !1115, size: 64, offset: 768)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!1077, !1110}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1111, file: !72, line: 207, baseType: !1119, size: 64, offset: 832)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{null, !1122, !1123, !1124}
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1111, file: !72, line: 209, baseType: !1126, size: 64, offset: 896)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{!82, !1122, !93}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1082, file: !72, line: 187, baseType: !1077, size: 64, offset: 384)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1082, file: !72, line: 188, baseType: !1131, size: 64, offset: 448)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1082, file: !72, line: 189, baseType: !1133, size: 64, offset: 512)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !72, line: 157, size: 256, elements: !1135)
!1135 = !{!1136, !1137}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1134, file: !72, line: 158, baseType: !424, size: 192, align: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1134, file: !72, line: 159, baseType: !1122, size: 64, offset: 192)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1082, file: !72, line: 190, baseType: !782, size: 64, offset: 576)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1079, file: !72, line: 196, baseType: !564, size: 64, offset: 640)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !1011, file: !1012, line: 100, baseType: !1122, size: 64, offset: 3776)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1011, file: !1012, line: 102, baseType: !1142, size: 64, offset: 3840)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1012, line: 107, size: 1152, elements: !1144)
!1144 = !{!1145, !1146, !1147, !1148, !1149, !1153}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1143, file: !1012, line: 108, baseType: !786, size: 128)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1143, file: !1012, line: 109, baseType: !1010, size: 64, offset: 128)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1143, file: !1012, line: 110, baseType: !808, size: 32, offset: 192)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1143, file: !1012, line: 111, baseType: !109, size: 32, offset: 224)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1143, file: !1012, line: 112, baseType: !1150, size: 640, offset: 256)
!1150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !727, size: 640, elements: !1151)
!1151 = !{!1152}
!1152 = !DISubrange(count: 10)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1143, file: !1012, line: 113, baseType: !1154, size: 256, offset: 896)
!1154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !727, size: 256, elements: !791)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !1011, file: !1012, line: 103, baseType: !1156, size: 640, offset: 3904)
!1156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 640, elements: !1151)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !1011, file: !1012, line: 104, baseType: !1158, size: 256, offset: 4544)
!1158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 256, elements: !791)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !820, file: !821, line: 139, baseType: !1142, size: 64, offset: 1216)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !820, file: !821, line: 140, baseType: !1161, size: 64, offset: 1280)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !821, line: 25, size: 64, elements: !1163)
!1163 = !{!1164, !1165, !1166}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1162, file: !821, line: 26, baseType: !109, size: 32)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1162, file: !821, line: 27, baseType: !82, size: 32, offset: 32)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1162, file: !821, line: 28, baseType: !1167, offset: 64)
!1167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !826, elements: !804)
!1168 = !DIDerivedType(tag: DW_TAG_member, scope: !820, file: !821, line: 142, baseType: !1169, size: 128, offset: 1344)
!1169 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !820, file: !821, line: 142, size: 128, elements: !1170)
!1170 = !{!1171, !1172}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1169, file: !821, line: 143, baseType: !82, size: 32)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1169, file: !821, line: 144, baseType: !714, size: 128, align: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !707, file: !276, line: 1013, baseType: !1174, size: 256, offset: 960)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !276, line: 970, size: 256, elements: !1175)
!1175 = !{!1176, !1177, !1178, !1179, !1180, !1181}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1174, file: !276, line: 971, baseType: !99, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1174, file: !276, line: 972, baseType: !7, size: 32, offset: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1174, file: !276, line: 973, baseType: !7, size: 32, offset: 96)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1174, file: !276, line: 974, baseType: !7, size: 32, offset: 128)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1174, file: !276, line: 975, baseType: !7, size: 32, offset: 160)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1174, file: !276, line: 976, baseType: !101, size: 64, offset: 192)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !707, file: !276, line: 1014, baseType: !1183, size: 128, offset: 1216)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1184, line: 8, size: 128, elements: !1185)
!1184 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1185 = !{!1186, !4007}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1183, file: !1184, line: 9, baseType: !1187, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !1189, line: 70, size: 256, elements: !1190)
!1189 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!1190 = !{!1191, !4004, !4005, !4006}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !1188, file: !1189, line: 71, baseType: !1192, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1194, line: 82, size: 1536, elements: !1195)
!1194 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!1195 = !{!1196, !1197, !1202, !1210, !1211, !1226, !3972, !3974, !3987, !3988, !3989, !3990, !3991, !3996, !3997, !3998}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !1193, file: !1194, line: 84, baseType: !7, size: 32)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !1193, file: !1194, line: 85, baseType: !1198, size: 32, offset: 32)
!1198 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !548, line: 275, baseType: !1199)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !548, line: 275, size: 32, elements: !1200)
!1200 = !{!1201}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1199, file: !548, line: 275, baseType: !552, size: 32)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1193, file: !1194, line: 86, baseType: !1203, size: 128, offset: 64)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !1204, line: 38, size: 128, elements: !1205)
!1204 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!1205 = !{!1206, !1208}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1203, file: !1204, line: 39, baseType: !1207, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1203, file: !1204, line: 39, baseType: !1209, size: 64, offset: 64)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !1193, file: !1194, line: 87, baseType: !1192, size: 64, offset: 192)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1193, file: !1194, line: 88, baseType: !1212, size: 128, offset: 256)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !1194, line: 49, size: 128, elements: !1213)
!1213 = !{!1214, !1223}
!1214 = !DIDerivedType(tag: DW_TAG_member, scope: !1212, file: !1194, line: 50, baseType: !1215, size: 64)
!1215 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1212, file: !1194, line: 50, size: 64, elements: !1216)
!1216 = !{!1217, !1222}
!1217 = !DIDerivedType(tag: DW_TAG_member, scope: !1215, file: !1194, line: 51, baseType: !1218, size: 64)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1215, file: !1194, line: 51, size: 64, elements: !1219)
!1219 = !{!1220, !1221}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1218, file: !1194, line: 52, baseType: !349, size: 32)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1218, file: !1194, line: 52, baseType: !349, size: 32, offset: 32)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !1215, file: !1194, line: 54, baseType: !315, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1212, file: !1194, line: 56, baseType: !1224, size: 64, offset: 64)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !1193, file: !1194, line: 89, baseType: !1227, size: 64, offset: 384)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !276, line: 641, size: 4800, elements: !1229)
!1229 = !{!1230, !1231, !1232, !1233, !1234, !1235, !1236, !1239, !1240, !1433, !3778, !3779, !3780, !3781, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3810, !3811, !3812, !3813, !3814, !3815, !3816, !3946, !3949, !3950, !3951, !3968, !3969, !3970, !3971}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1228, file: !276, line: 642, baseType: !84, size: 16)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1228, file: !276, line: 643, baseType: !86, size: 16, offset: 16)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1228, file: !276, line: 644, baseType: !808, size: 32, offset: 32)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1228, file: !276, line: 645, baseType: !157, size: 128, offset: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1228, file: !276, line: 646, baseType: !826, size: 32, offset: 192)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1228, file: !276, line: 647, baseType: !7, size: 32, offset: 224)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !1228, file: !276, line: 650, baseType: !1237, size: 64, offset: 256)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !276, line: 607, flags: DIFlagFwdDecl)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !1228, file: !276, line: 651, baseType: !1237, size: 64, offset: 320)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1228, file: !276, line: 654, baseType: !1241, size: 64, offset: 384)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1243)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !276, line: 1966, size: 2048, align: 512, elements: !1244)
!1244 = !{!1245, !1249, !1262, !1268, !1272, !1276, !1280, !1284, !1288, !1292, !1296, !1297, !1303, !1307, !1344, !1375, !1382, !1388, !1392, !1396, !1400, !1404, !1408, !1414, !1418}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1243, file: !276, line: 1967, baseType: !1246, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!1192, !1227, !1192, !7}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1243, file: !276, line: 1968, baseType: !1250, size: 64, offset: 64)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!76, !1192, !1227, !1253}
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1255, line: 10, size: 128, elements: !1256)
!1255 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!1256 = !{!1257, !1261}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1254, file: !1255, line: 11, baseType: !1258, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{null, !80}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1254, file: !1255, line: 12, baseType: !80, size: 64, offset: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1243, file: !276, line: 1969, baseType: !1263, size: 64, offset: 128)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!82, !1266, !1227, !82}
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !841, line: 42, flags: DIFlagFwdDecl)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1243, file: !276, line: 1970, baseType: !1269, size: 64, offset: 192)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{!1237, !1227, !82, !926}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1243, file: !276, line: 1972, baseType: !1273, size: 64, offset: 256)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{!82, !1192, !937, !82}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1243, file: !276, line: 1974, baseType: !1277, size: 64, offset: 320)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{!82, !1266, !1227, !1192, !84, !926}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1243, file: !276, line: 1976, baseType: !1281, size: 64, offset: 384)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{!82, !1192, !1227, !1192}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1243, file: !276, line: 1977, baseType: !1285, size: 64, offset: 448)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DISubroutineType(types: !1287)
!1287 = !{!82, !1227, !1192}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1243, file: !276, line: 1978, baseType: !1289, size: 64, offset: 512)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DISubroutineType(types: !1291)
!1291 = !{!82, !1266, !1227, !1192, !76}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1243, file: !276, line: 1980, baseType: !1293, size: 64, offset: 576)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DISubroutineType(types: !1295)
!1295 = !{!82, !1266, !1227, !1192, !84}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1243, file: !276, line: 1982, baseType: !1285, size: 64, offset: 640)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1243, file: !276, line: 1983, baseType: !1298, size: 64, offset: 704)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{!82, !1266, !1227, !1192, !84, !1301}
!1301 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !85, line: 21, baseType: !1302)
!1302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !85, line: 18, baseType: !349)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1243, file: !276, line: 1985, baseType: !1304, size: 64, offset: 768)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = !DISubroutineType(types: !1306)
!1306 = !{!82, !1266, !1227, !1192, !1227, !1192, !7}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1243, file: !276, line: 1987, baseType: !1308, size: 64, offset: 832)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DISubroutineType(types: !1310)
!1310 = !{!82, !1266, !1192, !1311}
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !276, line: 226, size: 640, elements: !1313)
!1313 = !{!1314, !1315, !1316, !1326, !1335, !1336, !1341, !1342, !1343}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1312, file: !276, line: 227, baseType: !7, size: 32)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1312, file: !276, line: 228, baseType: !84, size: 16, offset: 32)
!1316 = !DIDerivedType(tag: DW_TAG_member, scope: !1312, file: !276, line: 241, baseType: !1317, size: 32, offset: 64)
!1317 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1312, file: !276, line: 241, size: 32, elements: !1318)
!1318 = !{!1319, !1320}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1317, file: !276, line: 242, baseType: !808, size: 32)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1317, file: !276, line: 243, baseType: !1321, size: 32)
!1321 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1322, line: 16, baseType: !1323)
!1322 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1322, line: 14, size: 32, elements: !1324)
!1324 = !{!1325}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1323, file: !1322, line: 15, baseType: !813, size: 32)
!1326 = !DIDerivedType(tag: DW_TAG_member, scope: !1312, file: !276, line: 245, baseType: !1327, size: 32, offset: 96)
!1327 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1312, file: !276, line: 245, size: 32, elements: !1328)
!1328 = !{!1329, !1330}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1327, file: !276, line: 246, baseType: !826, size: 32)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1327, file: !276, line: 247, baseType: !1331, size: 32)
!1331 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1322, line: 20, baseType: !1332)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1322, line: 18, size: 32, elements: !1333)
!1333 = !{!1334}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1332, file: !1322, line: 19, baseType: !830, size: 32)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1312, file: !276, line: 249, baseType: !101, size: 64, offset: 128)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1312, file: !276, line: 250, baseType: !1337, size: 128, offset: 192)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !884, line: 13, size: 128, elements: !1338)
!1338 = !{!1339, !1340}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1337, file: !884, line: 14, baseType: !883, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1337, file: !884, line: 15, baseType: !343, size: 64, offset: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1312, file: !276, line: 251, baseType: !1337, size: 128, offset: 320)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1312, file: !276, line: 252, baseType: !1337, size: 128, offset: 448)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1312, file: !276, line: 259, baseType: !706, size: 64, offset: 576)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1243, file: !276, line: 1988, baseType: !1345, size: 64, offset: 896)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = !DISubroutineType(types: !1347)
!1347 = !{!82, !1266, !1348, !1350, !349, !7}
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1183)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1352, line: 22, size: 1280, elements: !1353)
!1352 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1353 = !{!1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1351, file: !1352, line: 23, baseType: !349, size: 32)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1351, file: !1352, line: 24, baseType: !84, size: 16, offset: 32)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1351, file: !1352, line: 25, baseType: !7, size: 32, offset: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1351, file: !1352, line: 26, baseType: !891, size: 32, offset: 96)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1351, file: !1352, line: 27, baseType: !315, size: 64, offset: 128)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1351, file: !1352, line: 28, baseType: !315, size: 64, offset: 192)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1351, file: !1352, line: 41, baseType: !315, size: 64, offset: 256)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1351, file: !1352, line: 42, baseType: !1301, size: 32, offset: 320)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1351, file: !1352, line: 43, baseType: !1301, size: 32, offset: 352)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1351, file: !1352, line: 44, baseType: !808, size: 32, offset: 384)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1351, file: !1352, line: 45, baseType: !826, size: 32, offset: 416)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1351, file: !1352, line: 46, baseType: !101, size: 64, offset: 448)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1351, file: !1352, line: 47, baseType: !1337, size: 128, offset: 512)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1351, file: !1352, line: 48, baseType: !1337, size: 128, offset: 640)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1351, file: !1352, line: 49, baseType: !1337, size: 128, offset: 768)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1351, file: !1352, line: 50, baseType: !1337, size: 128, offset: 896)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1351, file: !1352, line: 51, baseType: !315, size: 64, offset: 1024)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1351, file: !1352, line: 52, baseType: !315, size: 64, offset: 1088)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1351, file: !1352, line: 53, baseType: !349, size: 32, offset: 1152)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1351, file: !1352, line: 54, baseType: !349, size: 32, offset: 1184)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1351, file: !1352, line: 55, baseType: !315, size: 64, offset: 1216)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1243, file: !276, line: 1990, baseType: !1376, size: 64, offset: 960)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{!1379, !1192, !937, !95}
!1379 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !85, line: 66, baseType: !1380)
!1380 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !97, line: 73, baseType: !1381)
!1381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !97, line: 15, baseType: !343)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1243, file: !276, line: 1991, baseType: !1383, size: 64, offset: 1024)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!82, !1227, !1386, !315, !315}
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !276, line: 55, flags: DIFlagFwdDecl)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1243, file: !276, line: 1993, baseType: !1389, size: 64, offset: 1088)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DISubroutineType(types: !1391)
!1391 = !{!82, !1227, !82}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1243, file: !276, line: 1994, baseType: !1393, size: 64, offset: 1152)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = !DISubroutineType(types: !1395)
!1395 = !{!82, !1227, !1192, !706, !7, !84}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1243, file: !276, line: 1997, baseType: !1397, size: 64, offset: 1216)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = !DISubroutineType(types: !1399)
!1399 = !{!82, !1266, !1227, !706, !84}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1243, file: !276, line: 1999, baseType: !1401, size: 64, offset: 1280)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = !DISubroutineType(types: !1403)
!1403 = !{!1237, !1266, !1192, !82}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1243, file: !276, line: 2001, baseType: !1405, size: 64, offset: 1344)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{!82, !1266, !1192, !1237, !82}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1243, file: !276, line: 2003, baseType: !1409, size: 64, offset: 1408)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DISubroutineType(types: !1411)
!1411 = !{!82, !1266, !1192, !1412}
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !276, line: 76, flags: DIFlagFwdDecl)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1243, file: !276, line: 2005, baseType: !1415, size: 64, offset: 1472)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!82, !1192, !1412}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1243, file: !276, line: 2006, baseType: !1419, size: 64, offset: 1536)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{!1422, !1227}
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !276, line: 3192, size: 192, elements: !1424)
!1424 = !{!1425, !1432}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1423, file: !276, line: 3193, baseType: !1426, size: 128)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1427, line: 296, size: 128, elements: !1428)
!1427 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1428 = !{!1429, !1430, !1431}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1426, file: !1427, line: 297, baseType: !119, size: 32)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1426, file: !1427, line: 299, baseType: !314, size: 32, offset: 32)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1426, file: !1427, line: 300, baseType: !80, size: 64, offset: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1423, file: !276, line: 3194, baseType: !349, size: 32, offset: 128)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1228, file: !276, line: 655, baseType: !1434, size: 64, offset: 448)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !276, line: 1190, size: 10752, elements: !1436)
!1436 = !{!1437, !1438, !1439, !1440, !1441, !1442, !3244, !3376, !3416, !3499, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3516, !3520, !3521, !3522, !3525, !3584, !3587, !3588, !3589, !3630, !3656, !3657, !3658, !3659, !3660, !3661, !3664, !3665, !3670, !3671, !3672, !3673, !3732, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1435, file: !276, line: 1191, baseType: !157, size: 128)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1435, file: !276, line: 1192, baseType: !1301, size: 32, offset: 128)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1435, file: !276, line: 1193, baseType: !147, size: 8, offset: 160)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1435, file: !276, line: 1194, baseType: !99, size: 64, offset: 192)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1435, file: !276, line: 1195, baseType: !101, size: 64, offset: 256)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1435, file: !276, line: 1196, baseType: !1443, size: 64, offset: 320)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !276, line: 2366, size: 576, elements: !1445)
!1445 = !{!1446, !1447, !1448, !1454, !1458, !1462, !1466, !3232, !3233, !3234, !3236, !3237, !3238, !3240, !3241, !3242, !3243}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1444, file: !276, line: 2367, baseType: !76, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1444, file: !276, line: 2368, baseType: !82, size: 32, offset: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1444, file: !276, line: 2376, baseType: !1449, size: 64, offset: 128)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = !DISubroutineType(types: !1451)
!1451 = !{!82, !1452}
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1189, line: 21, flags: DIFlagFwdDecl)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1444, file: !276, line: 2377, baseType: !1455, size: 64, offset: 192)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1457)
!1457 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !276, line: 75, flags: DIFlagFwdDecl)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1444, file: !276, line: 2378, baseType: !1459, size: 64, offset: 256)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = !DISubroutineType(types: !1461)
!1461 = !{!1192, !1443, !82, !76, !80}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1444, file: !276, line: 2380, baseType: !1463, size: 64, offset: 320)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = !DISubroutineType(types: !1465)
!1465 = !{null, !1434}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1444, file: !276, line: 2381, baseType: !1467, size: 64, offset: 384)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !168, line: 402, size: 9216, align: 512, elements: !1469)
!1469 = !{!1470, !1471, !1472, !1476, !2897, !2923, !2924, !2925, !2926, !2930, !2933, !2934, !2935, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !3001, !3005, !3025, !3045, !3046, !3047, !3048, !3057, !3080, !3081, !3084, !3087, !3088, !3089, !3090, !3091, !3092, !3093, !3098, !3099, !3187, !3195, !3196, !3197, !3198, !3202, !3203, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3225, !3226, !3227, !3231}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1468, file: !168, line: 403, baseType: !167, size: 32)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1468, file: !168, line: 406, baseType: !157, size: 128, offset: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1468, file: !168, line: 409, baseType: !1473, size: 448, offset: 192)
!1473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 448, elements: !1474)
!1474 = !{!1475}
!1475 = !DISubrange(count: 56)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1468, file: !168, line: 417, baseType: !1477, size: 768, offset: 640)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !168, line: 45, size: 768, elements: !1478)
!1478 = !{!1479, !2891, !2892, !2893, !2896}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1477, file: !168, line: 46, baseType: !1480, size: 512)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1481, line: 64, size: 512, elements: !1482)
!1481 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1482 = !{!1483, !1484, !1485, !1487, !1531, !2738, !2881, !2886, !2887, !2888, !2889, !2890}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1480, file: !1481, line: 65, baseType: !76, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1480, file: !1481, line: 66, baseType: !157, size: 128, offset: 64)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1480, file: !1481, line: 67, baseType: !1486, size: 64, offset: 192)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1480, file: !1481, line: 68, baseType: !1488, size: 64, offset: 256)
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1481, line: 168, size: 768, elements: !1490)
!1490 = !{!1491, !1492, !1493, !1494}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1489, file: !1481, line: 169, baseType: !157, size: 128)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1489, file: !1481, line: 170, baseType: !119, size: 32, offset: 128)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1489, file: !1481, line: 171, baseType: !1480, size: 512, offset: 192)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1489, file: !1481, line: 172, baseType: !1495, size: 64, offset: 704)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1497)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1481, line: 133, size: 192, elements: !1498)
!1498 = !{!1499, !1506, !1511}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1497, file: !1481, line: 134, baseType: !1500, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1501)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{!82, !1504}
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1480)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1497, file: !1481, line: 135, baseType: !1507, size: 64, offset: 64)
!1507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1508)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = !DISubroutineType(types: !1510)
!1510 = !{!76, !1504}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1497, file: !1481, line: 136, baseType: !1512, size: 64, offset: 128)
!1512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1513)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DISubroutineType(types: !1515)
!1515 = !{!82, !1504, !1516}
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1481, line: 125, size: 20736, elements: !1518)
!1518 = !{!1519, !1521, !1525, !1526, !1530}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1517, file: !1481, line: 126, baseType: !1520, size: 192)
!1520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !937, size: 192, elements: !770)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1517, file: !1481, line: 127, baseType: !1522, size: 4096, offset: 192)
!1522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !937, size: 4096, elements: !1523)
!1523 = !{!1524}
!1524 = !DISubrange(count: 64)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1517, file: !1481, line: 128, baseType: !82, size: 32, offset: 4288)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1517, file: !1481, line: 129, baseType: !1527, size: 16384, offset: 4320)
!1527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 16384, elements: !1528)
!1528 = !{!1529}
!1529 = !DISubrange(count: 2048)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1517, file: !1481, line: 130, baseType: !82, size: 32, offset: 20704)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1480, file: !1481, line: 69, baseType: !1532, size: 64, offset: 320)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1534)
!1534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1481, line: 116, size: 384, elements: !1535)
!1535 = !{!1536, !1540, !1559, !2726, !2730, !2734}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1534, file: !1481, line: 117, baseType: !1537, size: 64)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{null, !1486}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1534, file: !1481, line: 118, baseType: !1541, size: 64, offset: 64)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1543)
!1543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1544, line: 254, size: 128, elements: !1545)
!1544 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1545 = !{!1546, !1555}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1543, file: !1544, line: 255, baseType: !1547, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{!1379, !1486, !1550, !937}
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1544, line: 30, size: 128, elements: !1552)
!1552 = !{!1553, !1554}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1551, file: !1544, line: 31, baseType: !76, size: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1551, file: !1544, line: 32, baseType: !84, size: 16, offset: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1543, file: !1544, line: 256, baseType: !1556, size: 64, offset: 64)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DISubroutineType(types: !1558)
!1558 = !{!1379, !1486, !1550, !76, !95}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1534, file: !1481, line: 119, baseType: !1560, size: 64, offset: 128)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1563)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1544, line: 84, size: 320, elements: !1564)
!1564 = !{!1565, !1566, !1570, !2722, !2724}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1563, file: !1544, line: 85, baseType: !76, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1563, file: !1544, line: 86, baseType: !1567, size: 64, offset: 64)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{!84, !1486, !1550, !82}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1563, file: !1544, line: 88, baseType: !1571, size: 64, offset: 128)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{!84, !1486, !1574, !82}
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1544, line: 175, size: 512, elements: !1576)
!1576 = !{!1577, !1578, !1579, !1580, !2713, !2717, !2718}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1575, file: !1544, line: 176, baseType: !1551, size: 128)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1575, file: !1544, line: 177, baseType: !95, size: 64, offset: 128)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1575, file: !1544, line: 178, baseType: !80, size: 64, offset: 192)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1575, file: !1544, line: 179, baseType: !1581, size: 64, offset: 256)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{!1584}
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !276, line: 472, size: 1536, align: 64, elements: !1586)
!1586 = !{!1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !2705, !2706, !2707, !2710, !2711, !2712}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1585, file: !276, line: 473, baseType: !1227, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1585, file: !276, line: 474, baseType: !1426, size: 128, offset: 64)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1585, file: !276, line: 475, baseType: !867, size: 320, offset: 192)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1585, file: !276, line: 476, baseType: !314, size: 32, offset: 512)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1585, file: !276, line: 477, baseType: !109, size: 32, offset: 544)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1585, file: !276, line: 482, baseType: !561, size: 128, offset: 576)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1585, file: !276, line: 483, baseType: !99, size: 64, offset: 704)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1585, file: !276, line: 484, baseType: !99, size: 64, offset: 768)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1585, file: !276, line: 485, baseType: !1596, size: 64, offset: 832)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1598)
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !276, line: 404, size: 1280, elements: !1599)
!1599 = !{!1600, !1908, !1978, !1982, !1986, !2003, !2009, !2013, !2018, !2022, !2026, !2030, !2074, !2078, !2082, !2086, !2091, !2095, !2697, !2701}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1598, file: !276, line: 405, baseType: !1601, size: 64)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!82, !1604, !1888}
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !183, line: 74, size: 512, align: 128, elements: !1606)
!1606 = !{!1607, !1608, !1882, !1887}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1605, file: !183, line: 75, baseType: !99, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, scope: !1605, file: !183, line: 83, baseType: !1609, size: 320, offset: 64)
!1609 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1605, file: !183, line: 83, size: 320, elements: !1610)
!1610 = !{!1611, !1632, !1646, !1650, !1881}
!1611 = !DIDerivedType(tag: DW_TAG_member, scope: !1609, file: !183, line: 84, baseType: !1612, size: 320)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1609, file: !183, line: 84, size: 320, elements: !1613)
!1613 = !{!1614, !1625, !1626, !1631}
!1614 = !DIDerivedType(tag: DW_TAG_member, scope: !1612, file: !183, line: 90, baseType: !1615, size: 128)
!1615 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1612, file: !183, line: 90, size: 128, elements: !1616)
!1616 = !{!1617, !1618, !1623, !1624}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1615, file: !183, line: 91, baseType: !157, size: 128)
!1618 = !DIDerivedType(tag: DW_TAG_member, scope: !1615, file: !183, line: 94, baseType: !1619, size: 128)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1615, file: !183, line: 94, size: 128, elements: !1620)
!1620 = !{!1621, !1622}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1619, file: !183, line: 96, baseType: !80, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1619, file: !183, line: 98, baseType: !7, size: 32, offset: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1615, file: !183, line: 102, baseType: !157, size: 128)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1615, file: !183, line: 103, baseType: !157, size: 128)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1612, file: !183, line: 106, baseType: !1584, size: 64, offset: 128)
!1626 = !DIDerivedType(tag: DW_TAG_member, scope: !1612, file: !183, line: 107, baseType: !1627, size: 64, offset: 192)
!1627 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1612, file: !183, line: 107, size: 64, elements: !1628)
!1628 = !{!1629, !1630}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1627, file: !183, line: 108, baseType: !99, size: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1627, file: !183, line: 109, baseType: !99, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1612, file: !183, line: 117, baseType: !99, size: 64, offset: 256)
!1632 = !DIDerivedType(tag: DW_TAG_member, scope: !1609, file: !183, line: 119, baseType: !1633, size: 320)
!1633 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1609, file: !183, line: 119, size: 320, elements: !1634)
!1634 = !{!1635, !1636, !1639, !1640, !1641}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1633, file: !183, line: 124, baseType: !99, size: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1633, file: !183, line: 125, baseType: !1637, size: 64, offset: 64)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !183, line: 125, flags: DIFlagFwdDecl)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1633, file: !183, line: 126, baseType: !99, size: 64, offset: 128)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1633, file: !183, line: 127, baseType: !99, size: 64, offset: 192)
!1641 = !DIDerivedType(tag: DW_TAG_member, scope: !1633, file: !183, line: 128, baseType: !1642, size: 64, offset: 256)
!1642 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1633, file: !183, line: 128, size: 64, elements: !1643)
!1643 = !{!1644, !1645}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1642, file: !183, line: 133, baseType: !99, size: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1642, file: !183, line: 138, baseType: !727, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_member, scope: !1609, file: !183, line: 141, baseType: !1647, size: 64)
!1647 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1609, file: !183, line: 141, size: 64, elements: !1648)
!1648 = !{!1649}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1647, file: !183, line: 142, baseType: !99, size: 64)
!1650 = !DIDerivedType(tag: DW_TAG_member, scope: !1609, file: !183, line: 144, baseType: !1651, size: 128)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1609, file: !183, line: 144, size: 128, elements: !1652)
!1652 = !{!1653, !1880}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1651, file: !183, line: 146, baseType: !1654, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !175, line: 126, size: 1216, elements: !1656)
!1656 = !{!1657, !1666, !1687, !1688, !1689, !1690, !1691, !1862, !1863, !1864}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1655, file: !175, line: 127, baseType: !1658, size: 384)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !175, line: 21, size: 384, elements: !1659)
!1659 = !{!1660, !1661, !1662, !1663, !1664, !1665}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1658, file: !175, line: 22, baseType: !99, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1658, file: !175, line: 23, baseType: !341, size: 64, offset: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1658, file: !175, line: 24, baseType: !341, size: 64, offset: 128)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1658, file: !175, line: 25, baseType: !99, size: 64, offset: 192)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1658, file: !175, line: 26, baseType: !99, size: 64, offset: 256)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1658, file: !175, line: 27, baseType: !99, size: 64, offset: 320)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1655, file: !175, line: 128, baseType: !1667, size: 128, offset: 384)
!1667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1668, line: 105, size: 128, elements: !1669)
!1668 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1669 = !{!1670, !1671}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1667, file: !1668, line: 110, baseType: !99, size: 64)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1667, file: !1668, line: 118, baseType: !1672, size: 64, offset: 64)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1668, line: 95, size: 448, elements: !1674)
!1674 = !{!1675, !1676, !1682, !1683, !1684, !1685, !1686}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1673, file: !1668, line: 96, baseType: !727, size: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1673, file: !1668, line: 97, baseType: !1677, size: 64, offset: 64)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1668, line: 60, baseType: !1679)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{null, !1681}
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1673, file: !1668, line: 98, baseType: !1677, size: 64, offset: 128)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1673, file: !1668, line: 99, baseType: !926, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1673, file: !1668, line: 100, baseType: !926, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1673, file: !1668, line: 101, baseType: !714, size: 128, align: 64, offset: 256)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1673, file: !1668, line: 102, baseType: !1681, size: 64, offset: 384)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1655, file: !175, line: 129, baseType: !1098, size: 256, offset: 512)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1655, file: !175, line: 130, baseType: !174, size: 32, offset: 768)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1655, file: !175, line: 131, baseType: !7, size: 32, offset: 800)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1655, file: !175, line: 132, baseType: !99, size: 64, offset: 832)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1655, file: !175, line: 133, baseType: !1692, size: 64, offset: 896)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1694)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !175, line: 77, size: 192, elements: !1695)
!1695 = !{!1696, !1700, !1858}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1694, file: !175, line: 83, baseType: !1697, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{null, !1604}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1694, file: !175, line: 89, baseType: !1701, size: 64, offset: 64)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{!1704, !1705}
!1704 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !183, line: 1184, baseType: !7)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1707, line: 512, size: 896, elements: !1708)
!1707 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1708 = !{!1709, !1826, !1827, !1834, !1841, !1850, !1851, !1852, !1854, !1856}
!1709 = !DIDerivedType(tag: DW_TAG_member, scope: !1706, file: !1707, line: 513, baseType: !1710, size: 320)
!1710 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1706, file: !1707, line: 513, size: 320, elements: !1711)
!1711 = !{!1712, !1822, !1823, !1824, !1825}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1710, file: !1707, line: 514, baseType: !1713, size: 64)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !183, line: 625, size: 1344, elements: !1715)
!1715 = !{!1716, !1725, !1726, !1733, !1740, !1741, !1746, !1747, !1752, !1753, !1756, !1815, !1816, !1817, !1818, !1819, !1820}
!1716 = !DIDerivedType(tag: DW_TAG_member, scope: !1714, file: !183, line: 628, baseType: !1717, size: 128)
!1717 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1714, file: !183, line: 628, size: 128, elements: !1718)
!1718 = !{!1719, !1724}
!1719 = !DIDerivedType(tag: DW_TAG_member, scope: !1717, file: !183, line: 629, baseType: !1720, size: 128)
!1720 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1717, file: !183, line: 629, size: 128, elements: !1721)
!1721 = !{!1722, !1723}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1720, file: !183, line: 631, baseType: !99, size: 64)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1720, file: !183, line: 632, baseType: !99, size: 64, offset: 64)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1717, file: !183, line: 635, baseType: !714, size: 128, align: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1714, file: !183, line: 639, baseType: !678, size: 64, offset: 128)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1714, file: !183, line: 640, baseType: !1727, size: 64, offset: 192)
!1727 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1728, line: 297, baseType: !1729)
!1728 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1728, line: 297, size: 64, elements: !1730)
!1730 = !{!1731}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1729, file: !1728, line: 297, baseType: !1732, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !320, line: 19, baseType: !99)
!1733 = !DIDerivedType(tag: DW_TAG_member, scope: !1714, file: !183, line: 646, baseType: !1734, size: 64, offset: 256)
!1734 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1714, file: !183, line: 646, size: 64, elements: !1735)
!1735 = !{!1736, !1739}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1734, file: !183, line: 647, baseType: !1737, size: 64)
!1737 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1738)
!1738 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !183, line: 542, baseType: !99)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1734, file: !183, line: 648, baseType: !1738, size: 64)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1714, file: !183, line: 666, baseType: !82, size: 32, offset: 320)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1714, file: !183, line: 667, baseType: !1742, size: 64, offset: 384)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !183, line: 579, size: 320, elements: !1744)
!1744 = !{!1745}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1743, file: !183, line: 580, baseType: !867, size: 320)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1714, file: !183, line: 670, baseType: !926, size: 8, offset: 448)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1714, file: !183, line: 681, baseType: !1748, size: 256, offset: 512)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1714, file: !183, line: 678, size: 256, elements: !1749)
!1749 = !{!1750, !1751}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1748, file: !183, line: 679, baseType: !424, size: 192, align: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1748, file: !183, line: 680, baseType: !99, size: 64, offset: 192)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1714, file: !183, line: 689, baseType: !157, size: 128, offset: 768)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1714, file: !183, line: 691, baseType: !1754, size: 64, offset: 896)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !183, line: 691, flags: DIFlagFwdDecl)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1714, file: !183, line: 694, baseType: !1757, size: 64, offset: 960)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1759)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1707, line: 563, size: 1024, elements: !1760)
!1760 = !{!1761, !1765, !1766, !1770, !1774, !1778, !1779, !1783, !1787, !1791, !1792, !1793, !1797, !1801, !1807, !1811}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1759, file: !1707, line: 564, baseType: !1762, size: 64)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = !DISubroutineType(types: !1764)
!1764 = !{null, !1713}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1759, file: !1707, line: 569, baseType: !1762, size: 64, offset: 64)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1759, file: !1707, line: 571, baseType: !1767, size: 64, offset: 128)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{!82, !1713, !99}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1759, file: !1707, line: 572, baseType: !1771, size: 64, offset: 192)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DISubroutineType(types: !1773)
!1773 = !{!82, !1713}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1759, file: !1707, line: 578, baseType: !1775, size: 64, offset: 256)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = !DISubroutineType(types: !1777)
!1777 = !{!82, !1713, !99, !99, !99}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1759, file: !1707, line: 580, baseType: !1701, size: 64, offset: 320)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1759, file: !1707, line: 581, baseType: !1780, size: 64, offset: 384)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DISubroutineType(types: !1782)
!1782 = !{!1704, !1705, !7}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1759, file: !1707, line: 582, baseType: !1784, size: 64, offset: 448)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DISubroutineType(types: !1786)
!1786 = !{!1704, !1705, !99, !99}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1759, file: !1707, line: 584, baseType: !1788, size: 64, offset: 512)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DISubroutineType(types: !1790)
!1790 = !{!99, !1713}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1759, file: !1707, line: 588, baseType: !1701, size: 64, offset: 576)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1759, file: !1707, line: 591, baseType: !1701, size: 64, offset: 640)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1759, file: !1707, line: 597, baseType: !1794, size: 64, offset: 704)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DISubroutineType(types: !1796)
!1796 = !{!82, !1713, !99, !80, !82, !82}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1759, file: !1707, line: 603, baseType: !1798, size: 64, offset: 768)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DISubroutineType(types: !1800)
!1800 = !{!76, !1713}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1759, file: !1707, line: 613, baseType: !1802, size: 64, offset: 832)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DISubroutineType(types: !1804)
!1804 = !{!82, !1713, !1805}
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !183, line: 717, flags: DIFlagFwdDecl)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1759, file: !1707, line: 625, baseType: !1808, size: 64, offset: 896)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = !DISubroutineType(types: !1810)
!1810 = !{!1805, !1713, !99}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1759, file: !1707, line: 633, baseType: !1812, size: 64, offset: 960)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = !DISubroutineType(types: !1814)
!1814 = !{!1604, !1713, !99}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1714, file: !183, line: 697, baseType: !99, size: 64, offset: 1024)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1714, file: !183, line: 699, baseType: !706, size: 64, offset: 1088)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1714, file: !183, line: 700, baseType: !80, size: 64, offset: 1152)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1714, file: !183, line: 711, baseType: !727, size: 64, offset: 1216)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1714, file: !183, line: 717, baseType: !1805, size: 64, offset: 1280)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1714, file: !183, line: 722, baseType: !1821, offset: 1344)
!1821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !183, line: 570, elements: !699)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1710, file: !1707, line: 515, baseType: !314, size: 32, offset: 64)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1710, file: !1707, line: 516, baseType: !99, size: 64, offset: 128)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1710, file: !1707, line: 517, baseType: !99, size: 64, offset: 192)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1710, file: !1707, line: 518, baseType: !99, size: 64, offset: 256)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1706, file: !1707, line: 520, baseType: !182, size: 32, offset: 320)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1706, file: !1707, line: 522, baseType: !1828, size: 64, offset: 384)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !320, line: 22, baseType: !1830)
!1830 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !320, line: 22, size: 64, elements: !1831)
!1831 = !{!1832}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1830, file: !320, line: 22, baseType: !1833, size: 64)
!1833 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !320, line: 15, baseType: !99)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1706, file: !1707, line: 524, baseType: !1835, size: 64, offset: 448)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1728, line: 372, baseType: !1837)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1728, line: 372, size: 64, elements: !1838)
!1838 = !{!1839}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1837, file: !1728, line: 372, baseType: !1840, size: 64)
!1840 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !320, line: 16, baseType: !99)
!1841 = !DIDerivedType(tag: DW_TAG_member, scope: !1706, file: !1707, line: 527, baseType: !1842, size: 64, offset: 512)
!1842 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1706, file: !1707, line: 527, size: 64, elements: !1843)
!1843 = !{!1844, !1849}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1842, file: !1707, line: 528, baseType: !1845, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !320, line: 21, baseType: !1846)
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !320, line: 21, size: 64, elements: !1847)
!1847 = !{!1848}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1846, file: !320, line: 21, baseType: !319, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1842, file: !1707, line: 529, baseType: !1829, size: 64)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1706, file: !1707, line: 534, baseType: !1604, size: 64, offset: 576)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1706, file: !1707, line: 535, baseType: !1604, size: 64, offset: 640)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1706, file: !1707, line: 541, baseType: !1853, size: 64, offset: 704)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1706, file: !1707, line: 545, baseType: !1855, size: 64, offset: 768)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1706, file: !1707, line: 549, baseType: !1857, size: 64, offset: 832)
!1857 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1728, line: 520, baseType: !1604)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1694, file: !175, line: 100, baseType: !1859, size: 64, offset: 128)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = !DISubroutineType(types: !1861)
!1861 = !{!82, !1654, !99, !99, !82}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1655, file: !175, line: 134, baseType: !80, size: 64, offset: 960)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1655, file: !175, line: 135, baseType: !82, size: 32, offset: 1024)
!1864 = !DIDerivedType(tag: DW_TAG_member, scope: !1655, file: !175, line: 136, baseType: !1865, size: 128, offset: 1088)
!1865 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1655, file: !175, line: 136, size: 128, elements: !1866)
!1866 = !{!1867, !1873}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1865, file: !175, line: 137, baseType: !1868, size: 128)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1869, line: 6, size: 128, elements: !1870)
!1869 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1870 = !{!1871, !1872}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1868, file: !1869, line: 7, baseType: !315, size: 64)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1868, file: !1869, line: 8, baseType: !315, size: 64, offset: 64)
!1873 = !DIDerivedType(tag: DW_TAG_member, scope: !1865, file: !175, line: 138, baseType: !1874)
!1874 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1865, file: !175, line: 138, elements: !1875)
!1875 = !{!1876, !1878}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1874, file: !175, line: 138, baseType: !1877)
!1877 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1874, file: !175, line: 138, elements: !699)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1874, file: !175, line: 138, baseType: !1879)
!1879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1868, elements: !804)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1651, file: !183, line: 147, baseType: !80, size: 64, offset: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1609, file: !183, line: 161, baseType: !714, size: 128, align: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, scope: !1605, file: !183, line: 164, baseType: !1883, size: 32, offset: 384)
!1883 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1605, file: !183, line: 164, size: 32, elements: !1884)
!1884 = !{!1885, !1886}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1883, file: !183, line: 169, baseType: !109, size: 32)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1883, file: !183, line: 177, baseType: !7, size: 32)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1605, file: !183, line: 181, baseType: !109, size: 32, offset: 416)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !199, line: 42, size: 384, elements: !1890)
!1890 = !{!1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_write", scope: !1889, file: !199, line: 43, baseType: !343, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "pages_skipped", scope: !1889, file: !199, line: 45, baseType: !343, size: 64, offset: 64)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !1889, file: !199, line: 52, baseType: !101, size: 64, offset: 128)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !1889, file: !199, line: 53, baseType: !101, size: 64, offset: 192)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "sync_mode", scope: !1889, file: !199, line: 55, baseType: !198, size: 32, offset: 256)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "for_kupdate", scope: !1889, file: !199, line: 57, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "for_background", scope: !1889, file: !199, line: 58, baseType: !7, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_writepages", scope: !1889, file: !199, line: 59, baseType: !7, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "for_reclaim", scope: !1889, file: !199, line: 60, baseType: !7, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "range_cyclic", scope: !1889, file: !199, line: 61, baseType: !7, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "for_sync", scope: !1889, file: !199, line: 62, baseType: !7, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "unpinned_fscache_wb", scope: !1889, file: !199, line: 63, baseType: !7, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_owner", scope: !1889, file: !199, line: 71, baseType: !7, size: 1, offset: 295, flags: DIFlagBitField, extraData: i64 288)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "swap_plug", scope: !1889, file: !199, line: 78, baseType: !1905, size: 64, offset: 320)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_iocb", file: !199, line: 78, flags: DIFlagFwdDecl)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1598, file: !276, line: 406, baseType: !1909, size: 64, offset: 64)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = !DISubroutineType(types: !1911)
!1911 = !{!82, !706, !1912}
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !183, line: 293, size: 1536, elements: !1914)
!1914 = !{!1915, !1945, !1959}
!1915 = !DIDerivedType(tag: DW_TAG_member, scope: !1913, file: !183, line: 295, baseType: !1916, size: 512)
!1916 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1913, file: !183, line: 295, size: 512, elements: !1917)
!1917 = !{!1918, !1944}
!1918 = !DIDerivedType(tag: DW_TAG_member, scope: !1916, file: !183, line: 296, baseType: !1919, size: 448)
!1919 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1916, file: !183, line: 296, size: 448, elements: !1920)
!1920 = !{!1921, !1922, !1931, !1932, !1933, !1942, !1943}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1919, file: !183, line: 298, baseType: !99, size: 64)
!1922 = !DIDerivedType(tag: DW_TAG_member, scope: !1919, file: !183, line: 299, baseType: !1923, size: 128, offset: 64)
!1923 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1919, file: !183, line: 299, size: 128, elements: !1924)
!1924 = !{!1925, !1926}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1923, file: !183, line: 300, baseType: !157, size: 128)
!1926 = !DIDerivedType(tag: DW_TAG_member, scope: !1923, file: !183, line: 302, baseType: !1927, size: 128)
!1927 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1923, file: !183, line: 302, size: 128, elements: !1928)
!1928 = !{!1929, !1930}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1927, file: !183, line: 303, baseType: !80, size: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1927, file: !183, line: 305, baseType: !7, size: 32, offset: 64)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1919, file: !183, line: 310, baseType: !1584, size: 64, offset: 192)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1919, file: !183, line: 311, baseType: !99, size: 64, offset: 256)
!1933 = !DIDerivedType(tag: DW_TAG_member, scope: !1919, file: !183, line: 312, baseType: !1934, size: 64, offset: 320)
!1934 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1919, file: !183, line: 312, size: 64, elements: !1935)
!1935 = !{!1936, !1937}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1934, file: !183, line: 313, baseType: !80, size: 64)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1934, file: !183, line: 314, baseType: !1938, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !183, line: 257, baseType: !1939)
!1939 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !183, line: 255, size: 64, elements: !1940)
!1940 = !{!1941}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1939, file: !183, line: 256, baseType: !99, size: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1919, file: !183, line: 316, baseType: !109, size: 32, offset: 384)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1919, file: !183, line: 317, baseType: !109, size: 32, offset: 416)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1916, file: !183, line: 323, baseType: !1605, size: 512, align: 128)
!1945 = !DIDerivedType(tag: DW_TAG_member, scope: !1913, file: !183, line: 325, baseType: !1946, size: 512, offset: 512)
!1946 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1913, file: !183, line: 325, size: 512, elements: !1947)
!1947 = !{!1948, !1958}
!1948 = !DIDerivedType(tag: DW_TAG_member, scope: !1946, file: !183, line: 326, baseType: !1949, size: 320)
!1949 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1946, file: !183, line: 326, size: 320, elements: !1950)
!1950 = !{!1951, !1952, !1953, !1954, !1955, !1956, !1957}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1949, file: !183, line: 327, baseType: !99, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1949, file: !183, line: 328, baseType: !99, size: 64, offset: 64)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1949, file: !183, line: 329, baseType: !99, size: 64, offset: 128)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1949, file: !183, line: 331, baseType: !109, size: 32, offset: 192)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1949, file: !183, line: 332, baseType: !109, size: 32, offset: 224)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1949, file: !183, line: 333, baseType: !109, size: 32, offset: 256)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1949, file: !183, line: 335, baseType: !7, size: 32, offset: 288)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1946, file: !183, line: 339, baseType: !1605, size: 512, align: 128)
!1959 = !DIDerivedType(tag: DW_TAG_member, scope: !1913, file: !183, line: 341, baseType: !1960, size: 512, offset: 1024)
!1960 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1913, file: !183, line: 341, size: 512, elements: !1961)
!1961 = !{!1962, !1971, !1977}
!1962 = !DIDerivedType(tag: DW_TAG_member, scope: !1960, file: !183, line: 342, baseType: !1963, size: 384)
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1960, file: !183, line: 342, size: 384, elements: !1964)
!1964 = !{!1965, !1966, !1967, !1968, !1969, !1970}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1963, file: !183, line: 343, baseType: !99, size: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1963, file: !183, line: 344, baseType: !99, size: 64, offset: 64)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1963, file: !183, line: 346, baseType: !80, size: 64, offset: 128)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1963, file: !183, line: 347, baseType: !80, size: 64, offset: 192)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1963, file: !183, line: 348, baseType: !80, size: 64, offset: 256)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1963, file: !183, line: 349, baseType: !80, size: 64, offset: 320)
!1971 = !DIDerivedType(tag: DW_TAG_member, scope: !1960, file: !183, line: 352, baseType: !1972, size: 256)
!1972 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1960, file: !183, line: 352, size: 256, elements: !1973)
!1973 = !{!1974, !1975, !1976}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1972, file: !183, line: 353, baseType: !99, size: 64)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1972, file: !183, line: 354, baseType: !99, size: 64, offset: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1972, file: !183, line: 356, baseType: !157, size: 128, offset: 128)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1960, file: !183, line: 359, baseType: !1605, size: 512, align: 128)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1598, file: !276, line: 409, baseType: !1979, size: 64, offset: 128)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{!82, !1584, !1888}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1598, file: !276, line: 412, baseType: !1983, size: 64, offset: 192)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!926, !1584, !1912}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1598, file: !276, line: 414, baseType: !1987, size: 64, offset: 256)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{null, !1990}
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !1992, line: 1276, size: 448, elements: !1993)
!1992 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!1993 = !{!1994, !1995, !1996, !1998, !1999, !2000, !2001, !2002}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1991, file: !1992, line: 1277, baseType: !706, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1991, file: !1992, line: 1278, baseType: !1584, size: 64, offset: 64)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !1991, file: !1992, line: 1279, baseType: !1997, size: 64, offset: 128)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !1991, file: !1992, line: 1281, baseType: !99, size: 64, offset: 192)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !1991, file: !1992, line: 1282, baseType: !7, size: 32, offset: 256)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !1991, file: !1992, line: 1283, baseType: !7, size: 32, offset: 288)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !1991, file: !1992, line: 1284, baseType: !926, size: 8, offset: 320)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !1991, file: !1992, line: 1285, baseType: !99, size: 64, offset: 384)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1598, file: !276, line: 416, baseType: !2004, size: 64, offset: 320)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DISubroutineType(types: !2006)
!2006 = !{!82, !706, !1584, !101, !7, !2007, !2008}
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1598, file: !276, line: 419, baseType: !2010, size: 64, offset: 384)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{!82, !706, !1584, !101, !7, !7, !1604, !80}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1598, file: !276, line: 424, baseType: !2014, size: 64, offset: 448)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{!2017, !1584, !2017}
!2017 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !85, line: 131, baseType: !315)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1598, file: !276, line: 425, baseType: !2019, size: 64, offset: 512)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DISubroutineType(types: !2021)
!2021 = !{null, !1912, !95, !95}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1598, file: !276, line: 426, baseType: !2023, size: 64, offset: 576)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{!926, !1912, !314}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1598, file: !276, line: 427, baseType: !2027, size: 64, offset: 640)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{null, !1912}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1598, file: !276, line: 428, baseType: !2031, size: 64, offset: 704)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{!1379, !2034, !2072}
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !276, line: 373, size: 384, elements: !2036)
!2036 = !{!2037, !2038, !2039, !2043, !2044, !2045, !2046}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2035, file: !276, line: 374, baseType: !706, size: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2035, file: !276, line: 375, baseType: !101, size: 64, offset: 64)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2035, file: !276, line: 376, baseType: !2040, size: 64, offset: 128)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DISubroutineType(types: !2042)
!2042 = !{null, !2034, !343}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2035, file: !276, line: 377, baseType: !80, size: 64, offset: 192)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2035, file: !276, line: 378, baseType: !82, size: 32, offset: 256)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2035, file: !276, line: 379, baseType: !153, size: 16, offset: 288)
!2046 = !DIDerivedType(tag: DW_TAG_member, scope: !2035, file: !276, line: 380, baseType: !2047, size: 64, offset: 320)
!2047 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2035, file: !276, line: 380, size: 64, elements: !2048)
!2048 = !{!2049, !2068}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2047, file: !276, line: 386, baseType: !2050, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !1992, line: 998, size: 448, elements: !2052)
!2052 = !{!2053, !2054, !2055}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !2051, file: !1992, line: 999, baseType: !1912, size: 64)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !2051, file: !1992, line: 1000, baseType: !82, size: 32, offset: 64)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2051, file: !1992, line: 1001, baseType: !2056, size: 320, offset: 128)
!2056 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !115, line: 14, baseType: !2057)
!2057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !115, line: 30, size: 320, elements: !2058)
!2058 = !{!2059, !2060, !2061, !2067}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2057, file: !115, line: 31, baseType: !7, size: 32)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2057, file: !115, line: 32, baseType: !80, size: 64, offset: 64)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2057, file: !115, line: 33, baseType: !2062, size: 64, offset: 128)
!2062 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !115, line: 16, baseType: !2063)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = !DISubroutineType(types: !2065)
!2065 = !{!82, !2066, !7, !82, !80}
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2057, file: !115, line: 34, baseType: !157, size: 128, offset: 192)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2047, file: !276, line: 395, baseType: !2069, size: 64)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DISubroutineType(types: !2071)
!2071 = !{!1379, !80}
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !276, line: 69, flags: DIFlagFwdDecl)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1598, file: !276, line: 433, baseType: !2075, size: 64, offset: 768)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{!82, !1584, !1912, !1912, !203}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1598, file: !276, line: 435, baseType: !2079, size: 64, offset: 832)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = !DISubroutineType(types: !2081)
!2081 = !{!82, !1912}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1598, file: !276, line: 436, baseType: !2083, size: 64, offset: 896)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = !DISubroutineType(types: !2085)
!2085 = !{!926, !1912, !95, !95}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1598, file: !276, line: 438, baseType: !2087, size: 64, offset: 960)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{null, !1912, !2090, !2090}
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1598, file: !276, line: 439, baseType: !2092, size: 64, offset: 1024)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DISubroutineType(types: !2094)
!2094 = !{!82, !1584, !1604}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1598, file: !276, line: 442, baseType: !2096, size: 64, offset: 1088)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DISubroutineType(types: !2098)
!2098 = !{!82, !2099, !706, !2696}
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !2101, line: 282, size: 2176, elements: !2102)
!2101 = !DIFile(filename: "./include/linux/swap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b48f968c4d3c1313a5ba7451c8be5b79")
!2102 = !{!2103, !2104, !2105, !2106, !2107, !2109, !2110, !2112, !2119, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2132, !2138, !2139, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !2100, file: !2101, line: 283, baseType: !1667, size: 128)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2100, file: !2101, line: 284, baseType: !99, size: 64, offset: 128)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2100, file: !2101, line: 285, baseType: !895, size: 16, offset: 192)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2100, file: !2101, line: 286, baseType: !670, size: 320, offset: 256)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2100, file: !2101, line: 287, baseType: !2108, size: 8, offset: 576)
!2108 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2100, file: !2101, line: 288, baseType: !7, size: 32, offset: 608)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "swap_map", scope: !2100, file: !2101, line: 289, baseType: !2111, size: 64, offset: 640)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_info", scope: !2100, file: !2101, line: 290, baseType: !2113, size: 64, offset: 704)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_info", file: !2101, line: 250, size: 64, elements: !2115)
!2115 = !{!2116, !2117, !2118}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2114, file: !2101, line: 251, baseType: !119, size: 32)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2114, file: !2101, line: 257, baseType: !7, size: 24, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2114, file: !2101, line: 258, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "free_clusters", scope: !2100, file: !2101, line: 291, baseType: !2120, size: 128, offset: 768)
!2120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_list", file: !2101, line: 274, size: 128, elements: !2121)
!2121 = !{!2122, !2123}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2120, file: !2101, line: 275, baseType: !2114, size: 64)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2120, file: !2101, line: 276, baseType: !2114, size: 64, offset: 64)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_bit", scope: !2100, file: !2101, line: 292, baseType: !7, size: 32, offset: 896)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "highest_bit", scope: !2100, file: !2101, line: 293, baseType: !7, size: 32, offset: 928)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2100, file: !2101, line: 294, baseType: !7, size: 32, offset: 960)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "inuse_pages", scope: !2100, file: !2101, line: 295, baseType: !7, size: 32, offset: 992)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next", scope: !2100, file: !2101, line: 296, baseType: !7, size: 32, offset: 1024)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_nr", scope: !2100, file: !2101, line: 297, baseType: !7, size: 32, offset: 1056)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next_cpu", scope: !2100, file: !2101, line: 298, baseType: !2131, size: 64, offset: 1088)
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_cluster", scope: !2100, file: !2101, line: 299, baseType: !2133, size: 64, offset: 1152)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_cluster", file: !2101, line: 269, size: 96, elements: !2135)
!2135 = !{!2136, !2137}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2134, file: !2101, line: 270, baseType: !2114, size: 64)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2134, file: !2101, line: 271, baseType: !7, size: 32, offset: 64)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "swap_extent_root", scope: !2100, file: !2101, line: 300, baseType: !564, size: 64, offset: 1216)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !2100, file: !2101, line: 301, baseType: !2140, size: 64, offset: 1280)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !2142, line: 40, size: 7424, elements: !2143)
!2142 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!2143 = !{!2144, !2145, !2146, !2149, !2153, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2180, !2181}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !2141, file: !2142, line: 41, baseType: !2017, size: 64)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !2141, file: !2142, line: 42, baseType: !2017, size: 64, offset: 64)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !2141, file: !2142, line: 43, baseType: !2147, size: 64, offset: 128)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !367, line: 1453, flags: DIFlagFwdDecl)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !2141, file: !2142, line: 44, baseType: !2150, size: 64, offset: 192)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2152, line: 74, flags: DIFlagFwdDecl)
!2152 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !2141, file: !2142, line: 45, baseType: !2154, size: 64, offset: 256)
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !2142, line: 45, flags: DIFlagFwdDecl)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !2141, file: !2142, line: 46, baseType: !99, size: 64, offset: 320)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !2141, file: !2142, line: 47, baseType: !926, size: 8, offset: 384)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !2141, file: !2142, line: 48, baseType: !143, size: 8, offset: 392)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !2141, file: !2142, line: 49, baseType: !926, size: 8, offset: 400)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !2141, file: !2142, line: 50, baseType: !926, size: 8, offset: 408)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !2141, file: !2142, line: 51, baseType: !1301, size: 32, offset: 416)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !2141, file: !2142, line: 52, baseType: !109, size: 32, offset: 448)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !2141, file: !2142, line: 53, baseType: !119, size: 32, offset: 480)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !2141, file: !2142, line: 54, baseType: !1227, size: 64, offset: 512)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !2141, file: !2142, line: 55, baseType: !80, size: 64, offset: 576)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !2141, file: !2142, line: 56, baseType: !80, size: 64, offset: 640)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !2141, file: !2142, line: 57, baseType: !2168, size: 64, offset: 704)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2170)
!2170 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !2142, line: 57, flags: DIFlagFwdDecl)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !2141, file: !2142, line: 58, baseType: !734, size: 256, offset: 768)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !2141, file: !2142, line: 60, baseType: !82, size: 32, offset: 1024)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !2141, file: !2142, line: 61, baseType: !82, size: 32, offset: 1056)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !2141, file: !2142, line: 62, baseType: !1486, size: 64, offset: 1088)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !2141, file: !2142, line: 65, baseType: !734, size: 256, offset: 1152)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !2141, file: !2142, line: 66, baseType: !1434, size: 64, offset: 1408)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !2141, file: !2142, line: 68, baseType: !2178, size: 64, offset: 1472)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !2142, line: 68, flags: DIFlagFwdDecl)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !2141, file: !2142, line: 72, baseType: !926, size: 8, offset: 1536)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !2141, file: !2142, line: 77, baseType: !2182, size: 5824, offset: 1600)
!2182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !217, line: 705, size: 5824, elements: !2183)
!2183 = !{!2184, !2185, !2187, !2190, !2191, !2244, !2334, !2335, !2336, !2337, !2338, !2345, !2448, !2461, !2471, !2475, !2477, !2478, !2479, !2483, !2490, !2491, !2494, !2497, !2501, !2605, !2606, !2607, !2608, !2609, !2610, !2664, !2665, !2666, !2669, !2672, !2681, !2682, !2683, !2684, !2685, !2686}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2182, file: !217, line: 706, baseType: !1480, size: 512)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2182, file: !217, line: 707, baseType: !2186, size: 64, offset: 512)
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2182, file: !217, line: 709, baseType: !2188, size: 64, offset: 576)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !217, line: 37, flags: DIFlagFwdDecl)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2182, file: !217, line: 711, baseType: !76, size: 64, offset: 640)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2182, file: !217, line: 712, baseType: !2192, size: 64, offset: 704)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2194)
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !217, line: 89, size: 384, elements: !2195)
!2195 = !{!2196, !2197, !2198, !2204, !2209, !2213}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2194, file: !217, line: 90, baseType: !76, size: 64)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2194, file: !217, line: 91, baseType: !1560, size: 64, offset: 64)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2194, file: !217, line: 92, baseType: !2199, size: 64, offset: 128)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = !DISubroutineType(types: !2201)
!2201 = !{!82, !2202, !1516}
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2182)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2194, file: !217, line: 93, baseType: !2205, size: 64, offset: 192)
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = !DISubroutineType(types: !2207)
!2207 = !{!937, !2202, !2208, !1123, !1124}
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2194, file: !217, line: 95, baseType: !2210, size: 64, offset: 256)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = !DISubroutineType(types: !2212)
!2212 = !{null, !2186}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2194, file: !217, line: 97, baseType: !2214, size: 64, offset: 320)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2216)
!2216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !224, line: 286, size: 1472, elements: !2217)
!2217 = !{!2218, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2216, file: !224, line: 287, baseType: !2219, size: 64)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = !DISubroutineType(types: !2221)
!2221 = !{!82, !2186}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2216, file: !224, line: 288, baseType: !2210, size: 64, offset: 64)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2216, file: !224, line: 289, baseType: !2219, size: 64, offset: 128)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2216, file: !224, line: 290, baseType: !2219, size: 64, offset: 192)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2216, file: !224, line: 291, baseType: !2219, size: 64, offset: 256)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2216, file: !224, line: 292, baseType: !2219, size: 64, offset: 320)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2216, file: !224, line: 293, baseType: !2219, size: 64, offset: 384)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2216, file: !224, line: 294, baseType: !2219, size: 64, offset: 448)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2216, file: !224, line: 295, baseType: !2219, size: 64, offset: 512)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2216, file: !224, line: 296, baseType: !2219, size: 64, offset: 576)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2216, file: !224, line: 297, baseType: !2219, size: 64, offset: 640)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2216, file: !224, line: 298, baseType: !2219, size: 64, offset: 704)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2216, file: !224, line: 299, baseType: !2219, size: 64, offset: 768)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2216, file: !224, line: 300, baseType: !2219, size: 64, offset: 832)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2216, file: !224, line: 301, baseType: !2219, size: 64, offset: 896)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2216, file: !224, line: 302, baseType: !2219, size: 64, offset: 960)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2216, file: !224, line: 303, baseType: !2219, size: 64, offset: 1024)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2216, file: !224, line: 304, baseType: !2219, size: 64, offset: 1088)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2216, file: !224, line: 305, baseType: !2219, size: 64, offset: 1152)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2216, file: !224, line: 306, baseType: !2219, size: 64, offset: 1216)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2216, file: !224, line: 307, baseType: !2219, size: 64, offset: 1280)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2216, file: !224, line: 308, baseType: !2219, size: 64, offset: 1344)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2216, file: !224, line: 309, baseType: !2219, size: 64, offset: 1408)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2182, file: !217, line: 714, baseType: !2245, size: 64, offset: 768)
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2247)
!2247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2248, line: 80, size: 1344, elements: !2249)
!2248 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2249 = !{!2250, !2251, !2252, !2253, !2254, !2255, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2333}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2247, file: !2248, line: 81, baseType: !76, size: 64)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2247, file: !2248, line: 82, baseType: !76, size: 64, offset: 64)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2247, file: !2248, line: 83, baseType: !1560, size: 64, offset: 128)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2247, file: !2248, line: 84, baseType: !1560, size: 64, offset: 192)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2247, file: !2248, line: 85, baseType: !1560, size: 64, offset: 256)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2247, file: !2248, line: 87, baseType: !2256, size: 64, offset: 320)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{!82, !2186, !2259}
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !211, line: 96, size: 1152, elements: !2261)
!2261 = !{!2262, !2263, !2264, !2265, !2266, !2267, !2268, !2286, !2296, !2297, !2298, !2299, !2300, !2308, !2309, !2310, !2311, !2312, !2313}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2260, file: !211, line: 97, baseType: !76, size: 64)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2260, file: !211, line: 98, baseType: !2245, size: 64, offset: 64)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2260, file: !211, line: 100, baseType: !1467, size: 64, offset: 128)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2260, file: !211, line: 101, baseType: !76, size: 64, offset: 192)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2260, file: !211, line: 103, baseType: !926, size: 8, offset: 256)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2260, file: !211, line: 104, baseType: !210, size: 32, offset: 288)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2260, file: !211, line: 106, baseType: !2269, size: 64, offset: 320)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2271)
!2271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !2272, line: 282, size: 1600, elements: !2273)
!2272 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!2273 = !{!2274, !2278, !2279, !2283}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2271, file: !2272, line: 283, baseType: !2275, size: 256)
!2275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 256, elements: !2276)
!2276 = !{!2277}
!2277 = !DISubrange(count: 32)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2271, file: !2272, line: 284, baseType: !2275, size: 256, offset: 256)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !2271, file: !2272, line: 285, baseType: !2280, size: 1024, offset: 512)
!2280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 1024, elements: !2281)
!2281 = !{!2282}
!2282 = !DISubrange(count: 128)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2271, file: !2272, line: 286, baseType: !2284, size: 64, offset: 1536)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2260, file: !211, line: 107, baseType: !2287, size: 64, offset: 384)
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2289)
!2289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !2272, line: 217, size: 256, elements: !2290)
!2290 = !{!2291, !2292, !2294, !2295}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2289, file: !2272, line: 218, baseType: !332, size: 128)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2289, file: !2272, line: 219, baseType: !2293, size: 64, offset: 128)
!2293 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !2272, line: 15, baseType: !99)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !2289, file: !2272, line: 220, baseType: !350, size: 32, offset: 192)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !2289, file: !2272, line: 221, baseType: !350, size: 32, offset: 224)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2260, file: !211, line: 109, baseType: !2219, size: 64, offset: 448)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2260, file: !211, line: 110, baseType: !2210, size: 64, offset: 512)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2260, file: !211, line: 111, baseType: !2219, size: 64, offset: 576)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2260, file: !211, line: 112, baseType: !2210, size: 64, offset: 640)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2260, file: !211, line: 113, baseType: !2301, size: 64, offset: 704)
!2301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2302, size: 64)
!2302 = !DISubroutineType(types: !2303)
!2303 = !{!82, !2186, !2304}
!2304 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !224, line: 60, baseType: !2305)
!2305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !224, line: 58, size: 32, elements: !2306)
!2306 = !{!2307}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2305, file: !224, line: 59, baseType: !82, size: 32)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2260, file: !211, line: 114, baseType: !2219, size: 64, offset: 768)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2260, file: !211, line: 115, baseType: !1560, size: 64, offset: 832)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2260, file: !211, line: 116, baseType: !1560, size: 64, offset: 896)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2260, file: !211, line: 118, baseType: !2214, size: 64, offset: 960)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2260, file: !211, line: 119, baseType: !2210, size: 64, offset: 1024)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2260, file: !211, line: 121, baseType: !2314, size: 64, offset: 1088)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !211, line: 121, flags: DIFlagFwdDecl)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2247, file: !2248, line: 88, baseType: !2199, size: 64, offset: 384)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2247, file: !2248, line: 89, baseType: !2219, size: 64, offset: 448)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2247, file: !2248, line: 90, baseType: !2210, size: 64, offset: 512)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2247, file: !2248, line: 91, baseType: !2210, size: 64, offset: 576)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2247, file: !2248, line: 92, baseType: !2210, size: 64, offset: 640)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2247, file: !2248, line: 94, baseType: !2219, size: 64, offset: 704)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2247, file: !2248, line: 95, baseType: !2219, size: 64, offset: 768)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2247, file: !2248, line: 97, baseType: !2301, size: 64, offset: 832)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2247, file: !2248, line: 98, baseType: !2219, size: 64, offset: 896)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2247, file: !2248, line: 100, baseType: !2219, size: 64, offset: 960)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2247, file: !2248, line: 102, baseType: !2219, size: 64, offset: 1024)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2247, file: !2248, line: 103, baseType: !2210, size: 64, offset: 1088)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2247, file: !2248, line: 105, baseType: !2214, size: 64, offset: 1152)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2247, file: !2248, line: 107, baseType: !2330, size: 64, offset: 1216)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2332)
!2332 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2248, line: 107, flags: DIFlagFwdDecl)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2247, file: !2248, line: 109, baseType: !926, size: 8, offset: 1280)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2182, file: !217, line: 715, baseType: !2259, size: 64, offset: 832)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2182, file: !217, line: 717, baseType: !80, size: 64, offset: 896)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2182, file: !217, line: 719, baseType: !80, size: 64, offset: 960)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2182, file: !217, line: 721, baseType: !734, size: 256, offset: 1024)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2182, file: !217, line: 725, baseType: !2339, size: 448, offset: 1280)
!2339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !217, line: 517, size: 448, elements: !2340)
!2340 = !{!2341, !2342, !2343, !2344}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2339, file: !217, line: 518, baseType: !157, size: 128)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2339, file: !217, line: 519, baseType: !157, size: 128, offset: 128)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2339, file: !217, line: 520, baseType: !157, size: 128, offset: 256)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2339, file: !217, line: 521, baseType: !216, size: 32, offset: 384)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2182, file: !217, line: 726, baseType: !2346, size: 2496, offset: 1728)
!2346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !224, line: 663, size: 2496, elements: !2347)
!2347 = !{!2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2420, !2421, !2422, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2441, !2445}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2346, file: !224, line: 664, baseType: !2304, size: 32)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2346, file: !224, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2346, file: !224, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2346, file: !224, line: 667, baseType: !926, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2346, file: !224, line: 668, baseType: !926, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2346, file: !224, line: 669, baseType: !926, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2346, file: !224, line: 670, baseType: !926, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2346, file: !224, line: 671, baseType: !926, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2346, file: !224, line: 672, baseType: !926, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2346, file: !224, line: 673, baseType: !926, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2346, file: !224, line: 674, baseType: !926, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2346, file: !224, line: 675, baseType: !349, size: 32, offset: 64)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2346, file: !224, line: 676, baseType: !119, size: 32, offset: 96)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2346, file: !224, line: 678, baseType: !157, size: 128, offset: 128)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2346, file: !224, line: 679, baseType: !1098, size: 256, offset: 256)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2346, file: !224, line: 680, baseType: !2364, size: 64, offset: 512)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2366, line: 43, size: 1536, elements: !2367)
!2366 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!2367 = !{!2368, !2369, !2370, !2371, !2372, !2375, !2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2398, !2399, !2400}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2365, file: !2366, line: 44, baseType: !76, size: 64)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2365, file: !2366, line: 45, baseType: !82, size: 32, offset: 64)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2365, file: !2366, line: 46, baseType: !157, size: 128, offset: 128)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2365, file: !2366, line: 47, baseType: !119, size: 32, offset: 256)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2365, file: !2366, line: 48, baseType: !2373, size: 64, offset: 320)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !224, line: 629, flags: DIFlagFwdDecl)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2365, file: !2366, line: 49, baseType: !2376, size: 320, offset: 384)
!2376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2377, line: 11, size: 320, elements: !2378)
!2377 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2378 = !{!2379, !2380, !2381, !2386}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2376, file: !2377, line: 16, baseType: !786, size: 128)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2376, file: !2377, line: 17, baseType: !99, size: 64, offset: 128)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2376, file: !2377, line: 18, baseType: !2382, size: 64, offset: 192)
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = !DISubroutineType(types: !2384)
!2384 = !{null, !2385}
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2376, file: !2377, line: 19, baseType: !349, size: 32, offset: 256)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2365, file: !2366, line: 50, baseType: !99, size: 64, offset: 704)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2365, file: !2366, line: 51, baseType: !504, size: 64, offset: 768)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2365, file: !2366, line: 52, baseType: !504, size: 64, offset: 832)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2365, file: !2366, line: 53, baseType: !504, size: 64, offset: 896)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2365, file: !2366, line: 54, baseType: !504, size: 64, offset: 960)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2365, file: !2366, line: 55, baseType: !504, size: 64, offset: 1024)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2365, file: !2366, line: 56, baseType: !99, size: 64, offset: 1088)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2365, file: !2366, line: 57, baseType: !99, size: 64, offset: 1152)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2365, file: !2366, line: 58, baseType: !99, size: 64, offset: 1216)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2365, file: !2366, line: 59, baseType: !99, size: 64, offset: 1280)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2365, file: !2366, line: 60, baseType: !99, size: 64, offset: 1344)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2365, file: !2366, line: 61, baseType: !2186, size: 64, offset: 1408)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2365, file: !2366, line: 62, baseType: !926, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2365, file: !2366, line: 63, baseType: !926, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2346, file: !224, line: 681, baseType: !926, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2346, file: !224, line: 682, baseType: !926, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2346, file: !224, line: 683, baseType: !926, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2346, file: !224, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2346, file: !224, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2346, file: !224, line: 690, baseType: !496, size: 512, offset: 640)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2346, file: !224, line: 691, baseType: !315, size: 64, offset: 1152)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2346, file: !224, line: 692, baseType: !1059, size: 256, offset: 1216)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2346, file: !224, line: 693, baseType: !114, size: 192, offset: 1472)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2346, file: !224, line: 694, baseType: !2373, size: 64, offset: 1664)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2346, file: !224, line: 695, baseType: !109, size: 32, offset: 1728)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2346, file: !224, line: 696, baseType: !109, size: 32, offset: 1760)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2346, file: !224, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2346, file: !224, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2346, file: !224, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2346, file: !224, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2346, file: !224, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2346, file: !224, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2346, file: !224, line: 703, baseType: !926, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2346, file: !224, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2346, file: !224, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2346, file: !224, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2346, file: !224, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2346, file: !224, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2346, file: !224, line: 709, baseType: !7, size: 32, offset: 1824)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2346, file: !224, line: 710, baseType: !223, size: 32, offset: 1856)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2346, file: !224, line: 711, baseType: !231, size: 32, offset: 1888)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2346, file: !224, line: 712, baseType: !231, size: 32, offset: 1920)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2346, file: !224, line: 713, baseType: !82, size: 32, offset: 1952)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2346, file: !224, line: 714, baseType: !82, size: 32, offset: 1984)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2346, file: !224, line: 715, baseType: !315, size: 64, offset: 2048)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2346, file: !224, line: 716, baseType: !315, size: 64, offset: 2112)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2346, file: !224, line: 717, baseType: !315, size: 64, offset: 2176)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2346, file: !224, line: 718, baseType: !315, size: 64, offset: 2240)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2346, file: !224, line: 720, baseType: !2436, size: 64, offset: 2304)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !224, line: 632, size: 64, elements: !2438)
!2438 = !{!2439, !2440}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2437, file: !224, line: 633, baseType: !119, size: 32)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2437, file: !224, line: 634, baseType: !7, size: 32, offset: 32)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2346, file: !224, line: 721, baseType: !2442, size: 64, offset: 2368)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = !DISubroutineType(types: !2444)
!2444 = !{null, !2186, !859}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2346, file: !224, line: 722, baseType: !2446, size: 64, offset: 2432)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !224, line: 722, flags: DIFlagFwdDecl)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2182, file: !217, line: 727, baseType: !2449, size: 64, offset: 4224)
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2450, size: 64)
!2450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !224, line: 742, size: 1792, elements: !2451)
!2451 = !{!2452, !2453, !2454, !2458, !2459, !2460}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2450, file: !224, line: 743, baseType: !2216, size: 1472)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2450, file: !224, line: 744, baseType: !2219, size: 64, offset: 1472)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2450, file: !224, line: 745, baseType: !2455, size: 64, offset: 1536)
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = !DISubroutineType(types: !2457)
!2457 = !{null, !2186, !926}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2450, file: !224, line: 746, baseType: !2219, size: 64, offset: 1600)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2450, file: !224, line: 747, baseType: !2210, size: 64, offset: 1664)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2450, file: !224, line: 748, baseType: !2210, size: 64, offset: 1728)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2182, file: !217, line: 736, baseType: !2462, size: 128, offset: 4288)
!2462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !217, line: 529, size: 128, elements: !2463)
!2463 = !{!2464, !2468}
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !2462, file: !217, line: 531, baseType: !2465, size: 64)
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2466 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !2467, line: 13, flags: DIFlagFwdDecl)
!2467 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2462, file: !217, line: 532, baseType: !2469, size: 64, offset: 64)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !217, line: 49, flags: DIFlagFwdDecl)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2182, file: !217, line: 738, baseType: !2472, size: 64, offset: 4416)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2474)
!2474 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !217, line: 738, flags: DIFlagFwdDecl)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2182, file: !217, line: 740, baseType: !2476, size: 64, offset: 4480)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2182, file: !217, line: 741, baseType: !315, size: 64, offset: 4544)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2182, file: !217, line: 746, baseType: !315, size: 64, offset: 4608)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2182, file: !217, line: 747, baseType: !2480, size: 64, offset: 4672)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2482)
!2482 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !217, line: 747, flags: DIFlagFwdDecl)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2182, file: !217, line: 749, baseType: !2484, size: 64, offset: 4736)
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !217, line: 428, size: 128, elements: !2486)
!2486 = !{!2487, !2488, !2489}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2485, file: !217, line: 433, baseType: !7, size: 32)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !2485, file: !217, line: 434, baseType: !7, size: 32, offset: 32)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2485, file: !217, line: 435, baseType: !99, size: 64, offset: 64)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2182, file: !217, line: 751, baseType: !157, size: 128, offset: 4800)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2182, file: !217, line: 762, baseType: !2492, size: 64, offset: 4928)
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !217, line: 762, flags: DIFlagFwdDecl)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2182, file: !217, line: 770, baseType: !2495, offset: 4992)
!2495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2496, line: 5, elements: !699)
!2496 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2182, file: !217, line: 772, baseType: !2498, size: 64, offset: 4992)
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 64)
!2499 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2500, line: 18, flags: DIFlagFwdDecl)
!2500 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2182, file: !217, line: 773, baseType: !2502, size: 64, offset: 5056)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2504, line: 41, size: 512, elements: !2505)
!2504 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!2505 = !{!2506, !2507, !2601, !2602, !2603, !2604}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !2503, file: !2504, line: 42, baseType: !2502, size: 64)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2503, file: !2504, line: 43, baseType: !2508, size: 64, offset: 64)
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2510)
!2510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !2504, line: 125, size: 1408, elements: !2511)
!2511 = !{!2512, !2516, !2520, !2526, !2530, !2531, !2535, !2539, !2543, !2548, !2552, !2553, !2557, !2561, !2565, !2576, !2577, !2578, !2579, !2589, !2593, !2597}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2510, file: !2504, line: 126, baseType: !2513, size: 64)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = !DISubroutineType(types: !2515)
!2515 = !{!2502, !2502}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !2510, file: !2504, line: 127, baseType: !2517, size: 64, offset: 64)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{null, !2502}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !2510, file: !2504, line: 128, baseType: !2521, size: 64, offset: 128)
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2522, size: 64)
!2522 = !DISubroutineType(types: !2523)
!2523 = !{!926, !2524}
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2503)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !2510, file: !2504, line: 129, baseType: !2527, size: 64, offset: 192)
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2528 = !DISubroutineType(types: !2529)
!2529 = !{!2284, !2524, !2202}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !2510, file: !2504, line: 131, baseType: !2521, size: 64, offset: 256)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !2510, file: !2504, line: 133, baseType: !2532, size: 64, offset: 320)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DISubroutineType(types: !2534)
!2534 = !{!238, !2524}
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !2510, file: !2504, line: 134, baseType: !2536, size: 64, offset: 384)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{!926, !2524, !76}
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !2510, file: !2504, line: 136, baseType: !2540, size: 64, offset: 448)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = !DISubroutineType(types: !2542)
!2542 = !{!82, !2524, !76, !7, !80, !95}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !2510, file: !2504, line: 141, baseType: !2544, size: 64, offset: 512)
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = !DISubroutineType(types: !2546)
!2546 = !{!82, !2524, !76, !2547, !95}
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !2510, file: !2504, line: 144, baseType: !2549, size: 64, offset: 576)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = !DISubroutineType(types: !2551)
!2551 = !{!76, !2524}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !2510, file: !2504, line: 145, baseType: !2549, size: 64, offset: 640)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !2510, file: !2504, line: 146, baseType: !2554, size: 64, offset: 704)
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2555 = !DISubroutineType(types: !2556)
!2556 = !{!2502, !2524}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !2510, file: !2504, line: 148, baseType: !2558, size: 64, offset: 768)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{!2502, !2524, !2502}
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !2510, file: !2504, line: 151, baseType: !2562, size: 64, offset: 832)
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2563 = !DISubroutineType(types: !2564)
!2564 = !{!2502, !2524, !76}
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !2510, file: !2504, line: 153, baseType: !2566, size: 64, offset: 896)
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{!82, !2524, !76, !76, !7, !7, !2569}
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !2504, line: 94, size: 640, elements: !2571)
!2571 = !{!2572, !2573, !2574}
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2570, file: !2504, line: 95, baseType: !2502, size: 64)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2570, file: !2504, line: 96, baseType: !7, size: 32, offset: 64)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2570, file: !2504, line: 97, baseType: !2575, size: 512, offset: 128)
!2575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 512, elements: !540)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !2510, file: !2504, line: 158, baseType: !2558, size: 64, offset: 960)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !2510, file: !2504, line: 161, baseType: !2554, size: 64, offset: 1024)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !2510, file: !2504, line: 163, baseType: !2513, size: 64, offset: 1088)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !2510, file: !2504, line: 164, baseType: !2580, size: 64, offset: 1152)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = !DISubroutineType(types: !2582)
!2582 = !{!82, !2524, !2583}
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !2504, line: 73, size: 128, elements: !2585)
!2585 = !{!2586, !2587, !2588}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2584, file: !2504, line: 74, baseType: !7, size: 32)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2584, file: !2504, line: 75, baseType: !7, size: 32, offset: 32)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2584, file: !2504, line: 76, baseType: !2524, size: 64, offset: 64)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !2510, file: !2504, line: 166, baseType: !2590, size: 64, offset: 1216)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = !DISubroutineType(types: !2592)
!2592 = !{!80, !2502, !82}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !2510, file: !2504, line: 167, baseType: !2594, size: 64, offset: 1280)
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = !DISubroutineType(types: !2596)
!2596 = !{!82, !2524, !7}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !2510, file: !2504, line: 168, baseType: !2598, size: 64, offset: 1344)
!2598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2599, size: 64)
!2599 = !DISubroutineType(types: !2600)
!2600 = !{!82, !2502}
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2503, file: !2504, line: 44, baseType: !2186, size: 64, offset: 128)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2503, file: !2504, line: 45, baseType: !157, size: 128, offset: 192)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2503, file: !2504, line: 46, baseType: !157, size: 128, offset: 320)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2503, file: !2504, line: 47, baseType: !143, size: 8, offset: 448)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2182, file: !217, line: 776, baseType: !82, size: 32, offset: 5120)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2182, file: !217, line: 778, baseType: !1301, size: 32, offset: 5152)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2182, file: !217, line: 779, baseType: !349, size: 32, offset: 5184)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2182, file: !217, line: 781, baseType: !119, size: 32, offset: 5216)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2182, file: !217, line: 782, baseType: !157, size: 128, offset: 5248)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2182, file: !217, line: 784, baseType: !2611, size: 64, offset: 5376)
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2613)
!2613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2614, line: 52, size: 768, elements: !2615)
!2614 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!2615 = !{!2616, !2617, !2618, !2619, !2620, !2624, !2628, !2629, !2630, !2655, !2659, !2663}
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2613, file: !2614, line: 53, baseType: !76, size: 64)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2613, file: !2614, line: 55, baseType: !1560, size: 64, offset: 64)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2613, file: !2614, line: 56, baseType: !1560, size: 64, offset: 128)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2613, file: !2614, line: 58, baseType: !2199, size: 64, offset: 192)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2613, file: !2614, line: 59, baseType: !2621, size: 64, offset: 256)
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2622, size: 64)
!2622 = !DISubroutineType(types: !2623)
!2623 = !{!937, !2202, !2208}
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2613, file: !2614, line: 61, baseType: !2625, size: 64, offset: 320)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = !DISubroutineType(types: !2627)
!2627 = !{null, !2611}
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2613, file: !2614, line: 62, baseType: !2210, size: 64, offset: 384)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2613, file: !2614, line: 64, baseType: !2219, size: 64, offset: 448)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2613, file: !2614, line: 66, baseType: !2631, size: 64, offset: 512)
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2632, size: 64)
!2632 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2633)
!2633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !245, line: 39, size: 384, elements: !2634)
!2634 = !{!2635, !2636, !2640, !2644, !2650, !2654}
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2633, file: !245, line: 40, baseType: !244, size: 32)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2633, file: !245, line: 41, baseType: !2637, size: 64, offset: 64)
!2637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2638, size: 64)
!2638 = !DISubroutineType(types: !2639)
!2639 = !{!926}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2633, file: !245, line: 42, baseType: !2641, size: 64, offset: 128)
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2642 = !DISubroutineType(types: !2643)
!2643 = !{!80}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2633, file: !245, line: 43, baseType: !2645, size: 64, offset: 192)
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = !DISubroutineType(types: !2647)
!2647 = !{!2284, !2648}
!2648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2649, size: 64)
!2649 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !245, line: 19, flags: DIFlagFwdDecl)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2633, file: !245, line: 44, baseType: !2651, size: 64, offset: 256)
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!2652 = !DISubroutineType(types: !2653)
!2653 = !{!2284}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2633, file: !245, line: 45, baseType: !1258, size: 64, offset: 320)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2613, file: !2614, line: 67, baseType: !2656, size: 64, offset: 576)
!2656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2657, size: 64)
!2657 = !DISubroutineType(types: !2658)
!2658 = !{!2284, !2202}
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2613, file: !2614, line: 69, baseType: !2660, size: 64, offset: 640)
!2660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2661, size: 64)
!2661 = !DISubroutineType(types: !2662)
!2662 = !{null, !2202, !1123, !1124}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2613, file: !2614, line: 71, baseType: !2214, size: 64, offset: 704)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2182, file: !217, line: 785, baseType: !1560, size: 64, offset: 5440)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2182, file: !217, line: 787, baseType: !2210, size: 64, offset: 5504)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2182, file: !217, line: 788, baseType: !2667, size: 64, offset: 5568)
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!2668 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !217, line: 46, flags: DIFlagFwdDecl)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2182, file: !217, line: 789, baseType: !2670, size: 64, offset: 5632)
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2671, size: 64)
!2671 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !217, line: 48, flags: DIFlagFwdDecl)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2182, file: !217, line: 791, baseType: !2673, size: 64, offset: 5696)
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2674, size: 64)
!2674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !217, line: 597, size: 128, elements: !2675)
!2675 = !{!2676, !2677, !2678, !2679, !2680}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !2674, file: !217, line: 598, baseType: !250, size: 32)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !2674, file: !217, line: 599, baseType: !259, size: 32, offset: 32)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !2674, file: !217, line: 600, baseType: !264, size: 32, offset: 64)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !2674, file: !217, line: 601, baseType: !926, size: 8, offset: 96)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !2674, file: !217, line: 602, baseType: !926, size: 8, offset: 104)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2182, file: !217, line: 793, baseType: !269, size: 32, offset: 5760)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2182, file: !217, line: 795, baseType: !926, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2182, file: !217, line: 796, baseType: !926, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2182, file: !217, line: 797, baseType: !926, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2182, file: !217, line: 798, baseType: !926, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2182, file: !217, line: 799, baseType: !926, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "swap_file", scope: !2100, file: !2101, line: 302, baseType: !706, size: 64, offset: 1344)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "old_block_size", scope: !2100, file: !2101, line: 303, baseType: !7, size: 32, offset: 1408)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !2100, file: !2101, line: 304, baseType: !1098, size: 256, offset: 1472)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2100, file: !2101, line: 305, baseType: !119, size: 32, offset: 1728)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "cont_lock", scope: !2100, file: !2101, line: 318, baseType: !119, size: 32, offset: 1760)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "discard_work", scope: !2100, file: !2101, line: 322, baseType: !1059, size: 256, offset: 1792)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "discard_clusters", scope: !2100, file: !2101, line: 323, baseType: !2120, size: 128, offset: 2048)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "avail_lists", scope: !2100, file: !2101, line: 324, baseType: !2695, offset: 2176)
!2695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !670, elements: !804)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1598, file: !276, line: 444, baseType: !2698, size: 64, offset: 1152)
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2699 = !DISubroutineType(types: !2700)
!2700 = !{null, !706}
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1598, file: !276, line: 445, baseType: !2702, size: 64, offset: 1216)
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2703 = !DISubroutineType(types: !2704)
!2704 = !{!82, !2034, !2072}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1585, file: !276, line: 486, baseType: !99, size: 64, offset: 896)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1585, file: !276, line: 487, baseType: !867, size: 320, offset: 960)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1585, file: !276, line: 488, baseType: !2708, size: 32, offset: 1280)
!2708 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2709, line: 8, baseType: !349)
!2709 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1585, file: !276, line: 489, baseType: !119, size: 32, offset: 1312)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1585, file: !276, line: 490, baseType: !157, size: 128, offset: 1344)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1585, file: !276, line: 491, baseType: !80, size: 64, offset: 1472)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1575, file: !1544, line: 180, baseType: !2714, size: 64, offset: 320)
!2714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2715, size: 64)
!2715 = !DISubroutineType(types: !2716)
!2716 = !{!1379, !706, !1486, !1574, !937, !101, !95}
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1575, file: !1544, line: 182, baseType: !2714, size: 64, offset: 384)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1575, file: !1544, line: 184, baseType: !2719, size: 64, offset: 448)
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2720, size: 64)
!2720 = !DISubroutineType(types: !2721)
!2721 = !{!82, !706, !1486, !1574, !1713}
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1563, file: !1544, line: 90, baseType: !2723, size: 64, offset: 192)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1563, file: !1544, line: 91, baseType: !2725, size: 64, offset: 256)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1534, file: !1481, line: 120, baseType: !2727, size: 64, offset: 192)
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2728 = !DISubroutineType(types: !2729)
!2729 = !{!2631, !1504}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1534, file: !1481, line: 121, baseType: !2731, size: 64, offset: 256)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{!2284, !1504}
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1534, file: !1481, line: 122, baseType: !2735, size: 64, offset: 320)
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2736 = !DISubroutineType(types: !2737)
!2737 = !{null, !1504, !1123, !1124}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1480, file: !1481, line: 70, baseType: !2739, size: 64, offset: 384)
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !2741, line: 190, size: 1152, elements: !2742)
!2741 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!2742 = !{!2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2873, !2874, !2875, !2876, !2877, !2880}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2740, file: !2741, line: 191, baseType: !109, size: 32)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2740, file: !2741, line: 192, baseType: !109, size: 32, offset: 32)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2740, file: !2741, line: 202, baseType: !2739, size: 64, offset: 64)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2740, file: !2741, line: 203, baseType: !76, size: 64, offset: 128)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2740, file: !2741, line: 205, baseType: !424, size: 192, align: 64, offset: 192)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2740, file: !2741, line: 207, baseType: !2284, size: 64, offset: 384)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2740, file: !2741, line: 208, baseType: !7, size: 32, offset: 448)
!2750 = !DIDerivedType(tag: DW_TAG_member, scope: !2740, file: !2741, line: 209, baseType: !2751, size: 256, offset: 512)
!2751 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2740, file: !2741, line: 209, size: 256, elements: !2752)
!2752 = !{!2753, !2762, !2766}
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2751, file: !2741, line: 210, baseType: !2754, size: 256)
!2754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !2741, line: 153, size: 256, elements: !2755)
!2755 = !{!2756, !2757, !2758, !2761}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2754, file: !2741, line: 154, baseType: !99, size: 64)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2754, file: !2741, line: 156, baseType: !564, size: 64, offset: 64)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2754, file: !2741, line: 162, baseType: !2759, size: 64, offset: 128)
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!2760 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !2741, line: 162, flags: DIFlagFwdDecl)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2754, file: !2741, line: 167, baseType: !99, size: 64, offset: 192)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2751, file: !2741, line: 211, baseType: !2763, size: 64)
!2763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !2741, line: 170, size: 64, elements: !2764)
!2764 = !{!2765}
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2763, file: !2741, line: 171, baseType: !2739, size: 64)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2751, file: !2741, line: 212, baseType: !2767, size: 256)
!2767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !2741, line: 174, size: 256, elements: !2768)
!2768 = !{!2769, !2868, !2871, !2872}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2767, file: !2741, line: 175, baseType: !2770, size: 64)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2772)
!2772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !2741, line: 271, size: 768, elements: !2773)
!2773 = !{!2774, !2832, !2836, !2837, !2838, !2839, !2840, !2844, !2845, !2846, !2847, !2864}
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2772, file: !2741, line: 276, baseType: !2775, size: 64)
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{!82, !2778}
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !2741, line: 251, size: 1216, elements: !2780)
!2780 = !{!2781, !2782, !2783, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !2830, !2831}
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2779, file: !2741, line: 253, baseType: !2739, size: 64)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2779, file: !2741, line: 254, baseType: !706, size: 64, offset: 64)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2779, file: !2741, line: 255, baseType: !2784, size: 64, offset: 128)
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !2786, line: 17, size: 960, elements: !2787)
!2786 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!2787 = !{!2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2817, !2818, !2821}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2785, file: !2786, line: 18, baseType: !937, size: 64)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2785, file: !2786, line: 19, baseType: !95, size: 64, offset: 64)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !2785, file: !2786, line: 20, baseType: !95, size: 64, offset: 128)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2785, file: !2786, line: 21, baseType: !95, size: 64, offset: 192)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !2785, file: !2786, line: 22, baseType: !95, size: 64, offset: 256)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2785, file: !2786, line: 23, baseType: !101, size: 64, offset: 320)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !2785, file: !2786, line: 24, baseType: !101, size: 64, offset: 384)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2785, file: !2786, line: 25, baseType: !734, size: 256, offset: 448)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2785, file: !2786, line: 26, baseType: !2797, size: 64, offset: 704)
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2799)
!2799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !2786, line: 32, size: 256, elements: !2800)
!2800 = !{!2801, !2805, !2809, !2813}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2799, file: !2786, line: 33, baseType: !2802, size: 64)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = !DISubroutineType(types: !2804)
!2804 = !{!80, !2784, !100}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2799, file: !2786, line: 34, baseType: !2806, size: 64, offset: 64)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DISubroutineType(types: !2808)
!2808 = !{null, !2784, !80}
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2799, file: !2786, line: 35, baseType: !2810, size: 64, offset: 128)
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2811, size: 64)
!2811 = !DISubroutineType(types: !2812)
!2812 = !{!80, !2784, !80, !100}
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2799, file: !2786, line: 36, baseType: !2814, size: 64, offset: 192)
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2815, size: 64)
!2815 = !DISubroutineType(types: !2816)
!2816 = !{!82, !2784, !80}
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !2785, file: !2786, line: 27, baseType: !82, size: 32, offset: 768)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2785, file: !2786, line: 28, baseType: !2819, size: 64, offset: 832)
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2820, size: 64)
!2820 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !707)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2785, file: !2786, line: 29, baseType: !80, size: 64, offset: 896)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2779, file: !2741, line: 256, baseType: !80, size: 64, offset: 192)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2779, file: !2741, line: 259, baseType: !734, size: 256, offset: 256)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2779, file: !2741, line: 260, baseType: !734, size: 256, offset: 512)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2779, file: !2741, line: 261, baseType: !82, size: 32, offset: 768)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2779, file: !2741, line: 262, baseType: !157, size: 128, offset: 832)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2779, file: !2741, line: 263, baseType: !937, size: 64, offset: 960)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2779, file: !2741, line: 265, baseType: !95, size: 64, offset: 1024)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2779, file: !2741, line: 266, baseType: !926, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2779, file: !2741, line: 267, baseType: !926, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2779, file: !2741, line: 268, baseType: !1757, size: 64, offset: 1152)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2772, file: !2741, line: 277, baseType: !2833, size: 64, offset: 64)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = !DISubroutineType(types: !2835)
!2835 = !{null, !2778}
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2772, file: !2741, line: 290, baseType: !2814, size: 64, offset: 128)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2772, file: !2741, line: 292, baseType: !2802, size: 64, offset: 192)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2772, file: !2741, line: 293, baseType: !2810, size: 64, offset: 256)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2772, file: !2741, line: 294, baseType: !2806, size: 64, offset: 320)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2772, file: !2741, line: 296, baseType: !2841, size: 64, offset: 384)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{!1379, !2778, !937, !95, !101}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2772, file: !2741, line: 306, baseType: !95, size: 64, offset: 448)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2772, file: !2741, line: 313, baseType: !926, size: 8, offset: 512)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2772, file: !2741, line: 314, baseType: !2841, size: 64, offset: 576)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2772, file: !2741, line: 317, baseType: !2848, size: 64, offset: 640)
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2849, size: 64)
!2849 = !DISubroutineType(types: !2850)
!2850 = !{!2851, !2778, !2853}
!2851 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2852, line: 59, baseType: !7)
!2852 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2854, size: 64)
!2854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2855, line: 37, size: 128, elements: !2856)
!2855 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!2856 = !{!2857, !2863}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2854, file: !2855, line: 38, baseType: !2858, size: 64)
!2858 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2855, line: 31, baseType: !2859)
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2860, size: 64)
!2860 = !DISubroutineType(types: !2861)
!2861 = !{null, !706, !2862, !2853}
!2862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2854, file: !2855, line: 39, baseType: !2851, size: 32, offset: 64)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2772, file: !2741, line: 320, baseType: !2865, size: 64, offset: 704)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = !DISubroutineType(types: !2867)
!2867 = !{!82, !2778, !1713}
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2767, file: !2741, line: 176, baseType: !2869, size: 64, offset: 64)
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!2870 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !2741, line: 35, flags: DIFlagFwdDecl)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2767, file: !2741, line: 177, baseType: !101, size: 64, offset: 128)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2767, file: !2741, line: 178, baseType: !2739, size: 64, offset: 192)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2740, file: !2741, line: 215, baseType: !80, size: 64, offset: 768)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2740, file: !2741, line: 221, baseType: !315, size: 64, offset: 832)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2740, file: !2741, line: 223, baseType: !86, size: 16, offset: 896)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2740, file: !2741, line: 224, baseType: !84, size: 16, offset: 912)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2740, file: !2741, line: 225, baseType: !2878, size: 64, offset: 960)
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2879, size: 64)
!2879 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !2741, line: 36, flags: DIFlagFwdDecl)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2740, file: !2741, line: 227, baseType: !714, size: 128, align: 64, offset: 1024)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1480, file: !1481, line: 71, baseType: !2882, size: 32, offset: 448)
!2882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2883, line: 19, size: 32, elements: !2884)
!2883 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2884 = !{!2885}
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2882, file: !2883, line: 20, baseType: !380, size: 32)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1480, file: !1481, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1480, file: !1481, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1480, file: !1481, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1480, file: !1481, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1480, file: !1481, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1477, file: !168, line: 47, baseType: !1467, size: 64, offset: 512)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1477, file: !168, line: 48, baseType: !1486, size: 64, offset: 576)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1477, file: !168, line: 49, baseType: !2894, size: 64, offset: 640)
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !168, line: 49, flags: DIFlagFwdDecl)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1477, file: !168, line: 50, baseType: !1097, size: 64, offset: 704)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1468, file: !168, line: 418, baseType: !2898, size: 64, offset: 1408)
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !168, line: 53, size: 448, elements: !2900)
!2900 = !{!2901, !2902, !2907, !2911, !2915, !2919}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2899, file: !168, line: 54, baseType: !1551, size: 128)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2899, file: !168, line: 55, baseType: !2903, size: 64, offset: 128)
!2903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2904, size: 64)
!2904 = !DISubroutineType(types: !2905)
!2905 = !{!1379, !2898, !2906, !937}
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2899, file: !168, line: 57, baseType: !2908, size: 64, offset: 192)
!2908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2909, size: 64)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{!1379, !2898, !2906, !76, !95}
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2899, file: !168, line: 59, baseType: !2912, size: 64, offset: 256)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = !DISubroutineType(types: !2914)
!2914 = !{null, !1467, !76}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2899, file: !168, line: 60, baseType: !2916, size: 64, offset: 320)
!2916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2917, size: 64)
!2917 = !DISubroutineType(types: !2918)
!2918 = !{!82, !1467}
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2899, file: !168, line: 61, baseType: !2920, size: 64, offset: 384)
!2920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2921, size: 64)
!2921 = !DISubroutineType(types: !2922)
!2922 = !{null, !1467}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1468, file: !168, line: 419, baseType: !76, size: 64, offset: 1472)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1468, file: !168, line: 420, baseType: !76, size: 64, offset: 1536)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1468, file: !168, line: 421, baseType: !1486, size: 64, offset: 1600)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1468, file: !168, line: 424, baseType: !2927, size: 64, offset: 1664)
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2929)
!2929 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !168, line: 424, flags: DIFlagFwdDecl)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1468, file: !168, line: 425, baseType: !2931, size: 64, offset: 1728)
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2932, size: 64)
!2932 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !859)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1468, file: !168, line: 426, baseType: !7, size: 32, offset: 1792)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1468, file: !168, line: 435, baseType: !734, size: 256, offset: 1856)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1468, file: !168, line: 437, baseType: !2936, size: 64, offset: 2112)
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2938, line: 69, size: 320, elements: !2939)
!2938 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2939 = !{!2940, !2941, !2942, !2959, !2961, !2964, !2965}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2937, file: !2938, line: 70, baseType: !76, size: 64)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2937, file: !2938, line: 71, baseType: !1467, size: 64, offset: 64)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2937, file: !2938, line: 72, baseType: !2943, size: 64, offset: 128)
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2944, size: 64)
!2944 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2945)
!2945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2938, line: 47, size: 256, elements: !2946)
!2946 = !{!2947, !2948, !2954, !2958}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2945, file: !2938, line: 49, baseType: !7, size: 32)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2945, file: !2938, line: 51, baseType: !2949, size: 64, offset: 64)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = !DISubroutineType(types: !2951)
!2951 = !{!82, !76, !2952}
!2952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2953, size: 64)
!2953 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2937)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2945, file: !2938, line: 53, baseType: !2955, size: 64, offset: 128)
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2956, size: 64)
!2956 = !DISubroutineType(types: !2957)
!2957 = !{!82, !937, !2952}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2945, file: !2938, line: 55, baseType: !1258, size: 64, offset: 192)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2937, file: !2938, line: 73, baseType: !2960, size: 16, offset: 192)
!2960 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2937, file: !2938, line: 74, baseType: !2962, size: 8, offset: 208)
!2962 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !144, line: 16, baseType: !2963)
!2963 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !146, line: 20, baseType: !2108)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2937, file: !2938, line: 75, baseType: !143, size: 8, offset: 216)
!2965 = !DIDerivedType(tag: DW_TAG_member, scope: !2937, file: !2938, line: 76, baseType: !2966, size: 64, offset: 256)
!2966 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2937, file: !2938, line: 76, size: 64, elements: !2967)
!2967 = !{!2968, !2969, !2976}
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2966, file: !2938, line: 77, baseType: !80, size: 64)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2966, file: !2938, line: 78, baseType: !2970, size: 64)
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2971, size: 64)
!2971 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2972)
!2972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2938, line: 86, size: 128, elements: !2973)
!2973 = !{!2974, !2975}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2972, file: !2938, line: 87, baseType: !7, size: 32)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2972, file: !2938, line: 88, baseType: !937, size: 64, offset: 64)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2966, file: !2938, line: 79, baseType: !2977, size: 64)
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!2978 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2979)
!2979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2938, line: 92, size: 256, elements: !2980)
!2980 = !{!2981, !2982, !2983, !2984, !2985}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2979, file: !2938, line: 94, baseType: !7, size: 32)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2979, file: !2938, line: 95, baseType: !7, size: 32, offset: 32)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2979, file: !2938, line: 96, baseType: !2131, size: 64, offset: 64)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2979, file: !2938, line: 97, baseType: !2943, size: 64, offset: 128)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2979, file: !2938, line: 98, baseType: !80, size: 64, offset: 192)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1468, file: !168, line: 438, baseType: !7, size: 32, offset: 2176)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1468, file: !168, line: 441, baseType: !7, size: 32, offset: 2208)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1468, file: !168, line: 442, baseType: !2927, size: 64, offset: 2240)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1468, file: !168, line: 443, baseType: !2931, size: 64, offset: 2304)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1468, file: !168, line: 444, baseType: !926, size: 8, offset: 2368)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1468, file: !168, line: 451, baseType: !926, size: 8, offset: 2376)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1468, file: !168, line: 454, baseType: !7, size: 32, offset: 2400)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1468, file: !168, line: 455, baseType: !2994, size: 64, offset: 2432)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2996, line: 23, size: 96, elements: !2997)
!2996 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2997 = !{!2998, !2999, !3000}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2995, file: !2996, line: 24, baseType: !82, size: 32)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2995, file: !2996, line: 24, baseType: !82, size: 32, offset: 32)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2995, file: !2996, line: 24, baseType: !82, size: 32, offset: 64)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1468, file: !168, line: 458, baseType: !3002, size: 64, offset: 2496)
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = !DISubroutineType(types: !3004)
!3004 = !{!82}
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1468, file: !168, line: 460, baseType: !3006, size: 4032, align: 512, offset: 2560)
!3006 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3007, size: 4032, elements: !3023)
!3007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !168, line: 362, size: 576, elements: !3008)
!3008 = !{!3009, !3010, !3011}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3007, file: !168, line: 363, baseType: !80, size: 64)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3007, file: !168, line: 364, baseType: !7, size: 32, offset: 64)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !3007, file: !168, line: 367, baseType: !3012, size: 448, offset: 128)
!3012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !168, line: 319, size: 448, elements: !3013)
!3013 = !{!3014, !3015}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3012, file: !168, line: 320, baseType: !1467, size: 64)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3012, file: !168, line: 321, baseType: !3016, size: 384, offset: 64)
!3016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !3017, line: 40, size: 384, elements: !3018)
!3017 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!3018 = !{!3019}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3016, file: !3017, line: 41, baseType: !3020, size: 384, align: 64)
!3020 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, size: 384, align: 64, elements: !3021)
!3021 = !{!3022}
!3022 = !DISubrange(count: 2)
!3023 = !{!3024}
!3024 = !DISubrange(count: 7)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1468, file: !168, line: 463, baseType: !3026, size: 192, offset: 6592)
!3026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !3027, line: 8, size: 192, elements: !3028)
!3027 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!3028 = !{!3029, !3030, !3032}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !3026, file: !3027, line: 10, baseType: !7, size: 32)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !3026, file: !3027, line: 11, baseType: !3031, size: 64, offset: 64)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !3026, file: !3027, line: 12, baseType: !3033, size: 64, offset: 128)
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !3035, line: 59, size: 48, elements: !3036)
!3035 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!3036 = !{!3037, !3040, !3041, !3042, !3043, !3044}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !3034, file: !3035, line: 60, baseType: !3038, size: 16)
!3038 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !144, line: 18, baseType: !3039)
!3039 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !146, line: 23, baseType: !895)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !3034, file: !3035, line: 61, baseType: !3038, size: 16, offset: 16)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !3034, file: !3035, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !3034, file: !3035, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3034, file: !3035, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3034, file: !3035, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1468, file: !168, line: 465, baseType: !99, size: 64, offset: 6784)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1468, file: !168, line: 469, baseType: !7, size: 32, offset: 6848)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1468, file: !168, line: 470, baseType: !157, size: 128, offset: 6912)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1468, file: !168, line: 471, baseType: !3049, size: 64, offset: 7040)
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3050, size: 64)
!3050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !3051, line: 33, size: 96, elements: !3052)
!3051 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!3052 = !{!3053, !3054, !3055, !3056}
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !3050, file: !3051, line: 37, baseType: !82, size: 32)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !3050, file: !3051, line: 43, baseType: !82, size: 32, offset: 32)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !3050, file: !3051, line: 45, baseType: !86, size: 16, offset: 64)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3050, file: !3051, line: 47, baseType: !86, size: 16, offset: 80)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1468, file: !168, line: 476, baseType: !3058, size: 64, offset: 7104)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !168, line: 378, size: 256, elements: !3060)
!3060 = !{!3061, !3077, !3078, !3079}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !3059, file: !168, line: 379, baseType: !3062, size: 64)
!3062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3063, size: 64)
!3063 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !3064, line: 204, baseType: !3065)
!3064 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!3065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !3064, line: 197, size: 192, elements: !3066)
!3066 = !{!3067, !3069, !3070, !3071, !3073, !3075}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !3065, file: !3064, line: 198, baseType: !3068, size: 32)
!3068 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !3064, line: 21, baseType: !350)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !3065, file: !3064, line: 199, baseType: !147, size: 8, offset: 32)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !3065, file: !3064, line: 200, baseType: !147, size: 8, offset: 40)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !3065, file: !3064, line: 201, baseType: !3072, size: 16, offset: 48)
!3072 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !3064, line: 17, baseType: !154)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !3065, file: !3064, line: 202, baseType: !3074, size: 64, offset: 64)
!3074 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !3064, line: 16, baseType: !316)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3065, file: !3064, line: 203, baseType: !3076, size: 64, offset: 128)
!3076 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !3064, line: 22, baseType: !316)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !3059, file: !168, line: 380, baseType: !7, size: 32, offset: 64)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !3059, file: !168, line: 381, baseType: !937, size: 64, offset: 128)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !3059, file: !168, line: 382, baseType: !937, size: 64, offset: 192)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1468, file: !168, line: 477, baseType: !3059, size: 256, offset: 7168)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1468, file: !168, line: 480, baseType: !3082, size: 64, offset: 7424)
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !168, line: 480, flags: DIFlagFwdDecl)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1468, file: !168, line: 483, baseType: !3085, size: 64, offset: 7488)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !168, line: 483, flags: DIFlagFwdDecl)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1468, file: !168, line: 488, baseType: !937, size: 64, offset: 7552)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1468, file: !168, line: 492, baseType: !80, size: 64, offset: 7616)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1468, file: !168, line: 493, baseType: !7, size: 32, offset: 7680)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1468, file: !168, line: 495, baseType: !80, size: 64, offset: 7744)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1468, file: !168, line: 496, baseType: !7, size: 32, offset: 7808)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1468, file: !168, line: 499, baseType: !7, size: 32, offset: 7840)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1468, file: !168, line: 500, baseType: !3094, size: 64, offset: 7872)
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3095, size: 64)
!3095 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !3096, line: 45, baseType: !3097)
!3096 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!3097 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1468, file: !168, line: 503, baseType: !7, size: 32, offset: 7936)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1468, file: !168, line: 504, baseType: !3100, size: 64, offset: 8000)
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !3103, line: 96, size: 192, elements: !3104)
!3103 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!3104 = !{!3105, !3106, !3148, !3151}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !3102, file: !3103, line: 97, baseType: !7, size: 32)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !3102, file: !3103, line: 98, baseType: !3107, size: 64, offset: 64)
!3107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3108, size: 64)
!3108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !3103, line: 24, size: 3072, elements: !3109)
!3109 = !{!3110, !3112, !3113, !3114, !3115, !3128, !3129, !3130, !3131, !3132, !3133, !3134, !3145, !3146, !3147}
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !3108, file: !3103, line: 26, baseType: !3111, size: 128)
!3111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !727, size: 128, elements: !3021)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !3108, file: !3103, line: 27, baseType: !3111, size: 128, offset: 128)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !3108, file: !3103, line: 28, baseType: !82, size: 32, offset: 256)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3108, file: !3103, line: 31, baseType: !119, size: 32, align: 512, offset: 512)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !3108, file: !3103, line: 32, baseType: !3116, size: 960, offset: 576)
!3116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !3117, line: 206, size: 960, elements: !3118)
!3117 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!3118 = !{!3119, !3120, !3123, !3125, !3126, !3127}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3116, file: !3117, line: 207, baseType: !717, size: 64)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !3116, file: !3117, line: 208, baseType: !3121, size: 256, offset: 64)
!3121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3122, size: 256, elements: !791)
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !3116, file: !3117, line: 209, baseType: !3124, size: 256, offset: 320)
!3124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 256, elements: !791)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3116, file: !3117, line: 213, baseType: !343, size: 64, offset: 576)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !3116, file: !3117, line: 215, baseType: !1158, size: 256, offset: 640)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3116, file: !3117, line: 216, baseType: !143, size: 8, offset: 896)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3108, file: !3103, line: 33, baseType: !99, size: 64, offset: 1536)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3108, file: !3103, line: 34, baseType: !99, size: 64, offset: 1600)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !3108, file: !3103, line: 35, baseType: !926, size: 8, offset: 1664)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !3108, file: !3103, line: 36, baseType: !2376, size: 320, offset: 1728)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3108, file: !3103, line: 37, baseType: !1059, size: 256, offset: 2048)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !3108, file: !3103, line: 38, baseType: !714, size: 128, align: 64, offset: 2304)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !3108, file: !3103, line: 39, baseType: !3135, size: 64, offset: 2432)
!3135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3136, size: 64)
!3136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !3103, line: 49, size: 768, elements: !3137)
!3137 = !{!3138, !3139, !3140, !3141, !3142, !3143, !3144}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3136, file: !3103, line: 50, baseType: !119, size: 32)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !3136, file: !3103, line: 51, baseType: !3124, size: 256, offset: 64)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !3136, file: !3103, line: 53, baseType: !3124, size: 256, offset: 320)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3136, file: !3103, line: 54, baseType: !99, size: 64, offset: 576)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !3136, file: !3103, line: 55, baseType: !3135, size: 64, offset: 640)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !3136, file: !3103, line: 56, baseType: !82, size: 32, offset: 704)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !3136, file: !3103, line: 57, baseType: !82, size: 32, offset: 736)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !3108, file: !3103, line: 40, baseType: !99, size: 64, offset: 2496)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3108, file: !3103, line: 42, baseType: !82, size: 32, offset: 2560)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !3108, file: !3103, line: 43, baseType: !3101, size: 64, offset: 2624)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !3102, file: !3103, line: 99, baseType: !3149, offset: 128)
!3149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !3150, line: 211, elements: !699)
!3150 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !3102, file: !3103, line: 100, baseType: !3152, size: 64, offset: 128)
!3152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3153, size: 64)
!3153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !3103, line: 63, size: 3008, elements: !3154)
!3154 = !{!3155, !3156, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3186}
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3153, file: !3103, line: 64, baseType: !3135, size: 64)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3153, file: !3103, line: 65, baseType: !3157, size: 192, offset: 64)
!3157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3135, size: 192, elements: !770)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !3153, file: !3103, line: 67, baseType: !82, size: 32, offset: 256)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !3153, file: !3103, line: 68, baseType: !734, size: 256, offset: 320)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3153, file: !3103, line: 69, baseType: !119, size: 32, offset: 576)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !3153, file: !3103, line: 70, baseType: !734, size: 256, offset: 640)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !3153, file: !3103, line: 71, baseType: !99, size: 64, offset: 896)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3153, file: !3103, line: 72, baseType: !99, size: 64, offset: 960)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3153, file: !3103, line: 73, baseType: !99, size: 64, offset: 1024)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !3153, file: !3103, line: 74, baseType: !99, size: 64, offset: 1088)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !3153, file: !3103, line: 75, baseType: !99, size: 64, offset: 1152)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !3153, file: !3103, line: 76, baseType: !99, size: 64, offset: 1216)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !3153, file: !3103, line: 77, baseType: !99, size: 64, offset: 1280)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !3153, file: !3103, line: 78, baseType: !99, size: 64, offset: 1344)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !3153, file: !3103, line: 79, baseType: !926, size: 8, offset: 1408)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !3153, file: !3103, line: 80, baseType: !99, size: 64, offset: 1472)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !3153, file: !3103, line: 81, baseType: !734, size: 256, offset: 1536)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !3153, file: !3103, line: 82, baseType: !1098, size: 256, offset: 1792)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !3153, file: !3103, line: 84, baseType: !109, size: 32, offset: 2048)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !3153, file: !3103, line: 87, baseType: !99, size: 64, offset: 2112)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !3153, file: !3103, line: 88, baseType: !99, size: 64, offset: 2176)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3153, file: !3103, line: 89, baseType: !3178, size: 704, offset: 2240)
!3178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1060, line: 111, size: 704, elements: !3179)
!3179 = !{!3180, !3181, !3182, !3185}
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3178, file: !1060, line: 112, baseType: !1059, size: 256)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3178, file: !1060, line: 113, baseType: !2376, size: 320, offset: 256)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3178, file: !1060, line: 116, baseType: !3183, size: 64, offset: 576)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1060, line: 18, flags: DIFlagFwdDecl)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3178, file: !1060, line: 117, baseType: !82, size: 32, offset: 640)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !3153, file: !3103, line: 90, baseType: !3101, size: 64, offset: 2944)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1468, file: !168, line: 515, baseType: !3188, size: 64, offset: 8064)
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !3190, line: 117, size: 128, elements: !3191)
!3190 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!3191 = !{!3192, !3193, !3194}
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !3189, file: !3190, line: 118, baseType: !859, size: 32)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3189, file: !3190, line: 119, baseType: !859, size: 32, offset: 32)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3189, file: !3190, line: 120, baseType: !343, size: 64, offset: 64)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1468, file: !168, line: 516, baseType: !7, size: 32, offset: 8128)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1468, file: !168, line: 519, baseType: !7, size: 32, offset: 8160)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1468, file: !168, line: 520, baseType: !2547, size: 64, offset: 8192)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1468, file: !168, line: 523, baseType: !3199, size: 64, offset: 8256)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !168, line: 523, flags: DIFlagFwdDecl)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1468, file: !168, line: 524, baseType: !7, size: 32, offset: 8320)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1468, file: !168, line: 525, baseType: !3204, size: 64, offset: 8384)
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3206, size: 64)
!3206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !3207, line: 28, size: 192, elements: !3208)
!3207 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb3837c9edbef1074628f52e8cfdb75")
!3208 = !{!3209, !3210, !3211}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !3206, file: !3207, line: 29, baseType: !76, size: 64)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "eval_string", scope: !3206, file: !3207, line: 30, baseType: !76, size: 64, offset: 64)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "eval_value", scope: !3206, file: !3207, line: 31, baseType: !99, size: 64, offset: 128)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1468, file: !168, line: 526, baseType: !7, size: 32, offset: 8448)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1468, file: !168, line: 533, baseType: !80, size: 64, offset: 8512)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1468, file: !168, line: 534, baseType: !7, size: 32, offset: 8576)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1468, file: !168, line: 535, baseType: !342, size: 64, offset: 8640)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1468, file: !168, line: 536, baseType: !7, size: 32, offset: 8704)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1468, file: !168, line: 539, baseType: !82, size: 32, offset: 8736)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1468, file: !168, line: 540, baseType: !3219, size: 64, offset: 8768)
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !3221, line: 32, size: 64, elements: !3222)
!3221 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!3222 = !{!3223, !3224}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3220, file: !3221, line: 33, baseType: !859, size: 32)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3220, file: !3221, line: 34, baseType: !859, size: 32, offset: 32)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1468, file: !168, line: 563, baseType: !157, size: 128, offset: 8832)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1468, file: !168, line: 565, baseType: !157, size: 128, offset: 8960)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1468, file: !168, line: 568, baseType: !3228, size: 64, offset: 9088)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = !DISubroutineType(types: !3230)
!3230 = !{null}
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1468, file: !168, line: 570, baseType: !109, size: 32, offset: 9152)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1444, file: !276, line: 2382, baseType: !1443, size: 64, offset: 448)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1444, file: !276, line: 2383, baseType: !782, size: 64, offset: 512)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1444, file: !276, line: 2385, baseType: !3235, offset: 576)
!3235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !3150, line: 206, elements: !699)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1444, file: !276, line: 2386, baseType: !3235, offset: 576)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1444, file: !276, line: 2387, baseType: !3235, offset: 576)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1444, file: !276, line: 2388, baseType: !3239, offset: 576)
!3239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3235, elements: !770)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1444, file: !276, line: 2390, baseType: !3235, offset: 576)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1444, file: !276, line: 2391, baseType: !3235, offset: 576)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1444, file: !276, line: 2392, baseType: !3235, offset: 576)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1444, file: !276, line: 2393, baseType: !3235, offset: 576)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1435, file: !276, line: 1197, baseType: !3245, size: 64, offset: 384)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3247)
!3247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !276, line: 2057, size: 1664, elements: !3248)
!3248 = !{!3249, !3253, !3257, !3258, !3262, !3266, !3270, !3271, !3272, !3276, !3280, !3284, !3285, !3286, !3292, !3296, !3297, !3301, !3302, !3303, !3304, !3308, !3312, !3359, !3374, !3375}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !3247, file: !276, line: 2058, baseType: !3250, size: 64)
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = !DISubroutineType(types: !3252)
!3252 = !{!1227, !1434}
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !3247, file: !276, line: 2059, baseType: !3254, size: 64, offset: 64)
!3254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3255, size: 64)
!3255 = !DISubroutineType(types: !3256)
!3256 = !{null, !1227}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3247, file: !276, line: 2060, baseType: !3254, size: 64, offset: 128)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !3247, file: !276, line: 2062, baseType: !3259, size: 64, offset: 192)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = !DISubroutineType(types: !3261)
!3261 = !{null, !1227, !82}
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !3247, file: !276, line: 2063, baseType: !3263, size: 64, offset: 256)
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3264, size: 64)
!3264 = !DISubroutineType(types: !3265)
!3265 = !{!82, !1227, !1888}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !3247, file: !276, line: 2064, baseType: !3267, size: 64, offset: 320)
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3268 = !DISubroutineType(types: !3269)
!3269 = !{!82, !1227}
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !3247, file: !276, line: 2065, baseType: !3254, size: 64, offset: 384)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !3247, file: !276, line: 2066, baseType: !1463, size: 64, offset: 448)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !3247, file: !276, line: 2067, baseType: !3273, size: 64, offset: 512)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = !DISubroutineType(types: !3275)
!3275 = !{!82, !1434, !82}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !3247, file: !276, line: 2068, baseType: !3277, size: 64, offset: 576)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{!82, !1434, !275}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !3247, file: !276, line: 2069, baseType: !3281, size: 64, offset: 640)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = !DISubroutineType(types: !3283)
!3283 = !{!82, !1434}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !3247, file: !276, line: 2070, baseType: !3277, size: 64, offset: 704)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !3247, file: !276, line: 2071, baseType: !3281, size: 64, offset: 768)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !3247, file: !276, line: 2072, baseType: !3287, size: 64, offset: 832)
!3287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3288, size: 64)
!3288 = !DISubroutineType(types: !3289)
!3289 = !{!82, !1192, !3290}
!3290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3291, size: 64)
!3291 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !276, line: 62, flags: DIFlagFwdDecl)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !3247, file: !276, line: 2073, baseType: !3293, size: 64, offset: 896)
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = !DISubroutineType(types: !3295)
!3295 = !{!82, !1434, !3031, !937}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !3247, file: !276, line: 2074, baseType: !1463, size: 64, offset: 960)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3247, file: !276, line: 2076, baseType: !3298, size: 64, offset: 1024)
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3299, size: 64)
!3299 = !DISubroutineType(types: !3300)
!3300 = !{!82, !2784, !1192}
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !3247, file: !276, line: 2077, baseType: !3298, size: 64, offset: 1088)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3247, file: !276, line: 2078, baseType: !3298, size: 64, offset: 1152)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !3247, file: !276, line: 2079, baseType: !3298, size: 64, offset: 1216)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !3247, file: !276, line: 2081, baseType: !3305, size: 64, offset: 1280)
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = !DISubroutineType(types: !3307)
!3307 = !{!1379, !1434, !82, !937, !95, !101}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !3247, file: !276, line: 2082, baseType: !3309, size: 64, offset: 1344)
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3310, size: 64)
!3310 = !DISubroutineType(types: !3311)
!3311 = !{!1379, !1434, !82, !76, !95, !101}
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !3247, file: !276, line: 2083, baseType: !3313, size: 64, offset: 1408)
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3314, size: 64)
!3314 = !DISubroutineType(types: !3315)
!3315 = !{!3316, !1227}
!3316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3317, size: 64)
!3317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3318, size: 64)
!3318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !281, line: 296, size: 1664, elements: !3319)
!3319 = !{!3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3344, !3345, !3346}
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !3318, file: !281, line: 297, baseType: !786, size: 128)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !3318, file: !281, line: 298, baseType: !157, size: 128, offset: 128)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !3318, file: !281, line: 299, baseType: !157, size: 128, offset: 256)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !3318, file: !281, line: 300, baseType: !157, size: 128, offset: 384)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !3318, file: !281, line: 301, baseType: !734, size: 256, offset: 512)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !3318, file: !281, line: 302, baseType: !119, size: 32, offset: 768)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !3318, file: !281, line: 303, baseType: !109, size: 32, offset: 800)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !3318, file: !281, line: 304, baseType: !1434, size: 64, offset: 832)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !3318, file: !281, line: 305, baseType: !3329, size: 64, offset: 896)
!3329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !281, line: 68, size: 64, elements: !3330)
!3330 = !{!3331, !3343}
!3331 = !DIDerivedType(tag: DW_TAG_member, scope: !3329, file: !281, line: 69, baseType: !3332, size: 32)
!3332 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3329, file: !281, line: 69, size: 32, elements: !3333)
!3333 = !{!3334, !3335, !3336}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3332, file: !281, line: 70, baseType: !808, size: 32)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3332, file: !281, line: 71, baseType: !826, size: 32)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !3332, file: !281, line: 72, baseType: !3337, size: 32)
!3337 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !3338, line: 24, baseType: !3339)
!3338 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!3339 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3338, line: 22, size: 32, elements: !3340)
!3340 = !{!3341}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3339, file: !3338, line: 23, baseType: !3342, size: 32)
!3342 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !3338, line: 20, baseType: !814)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3329, file: !281, line: 74, baseType: !280, size: 32, offset: 32)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !3318, file: !281, line: 306, baseType: !101, size: 64, offset: 960)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !3318, file: !281, line: 307, baseType: !99, size: 64, offset: 1024)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !3318, file: !281, line: 308, baseType: !3347, size: 576, offset: 1088)
!3347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !281, line: 205, size: 576, elements: !3348)
!3348 = !{!3349, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358}
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !3347, file: !281, line: 206, baseType: !3350, size: 64)
!3350 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !281, line: 66, baseType: !103)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !3347, file: !281, line: 207, baseType: !3350, size: 64, offset: 64)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !3347, file: !281, line: 208, baseType: !3350, size: 64, offset: 128)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !3347, file: !281, line: 209, baseType: !3350, size: 64, offset: 192)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !3347, file: !281, line: 210, baseType: !3350, size: 64, offset: 256)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !3347, file: !281, line: 211, baseType: !3350, size: 64, offset: 320)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !3347, file: !281, line: 212, baseType: !3350, size: 64, offset: 384)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !3347, file: !281, line: 213, baseType: !883, size: 64, offset: 448)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !3347, file: !281, line: 214, baseType: !883, size: 64, offset: 512)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !3247, file: !276, line: 2085, baseType: !3360, size: 64, offset: 1472)
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 64)
!3361 = !DISubroutineType(types: !3362)
!3362 = !{!343, !1434, !3363}
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !3365, line: 15, size: 256, elements: !3366)
!3365 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!3366 = !{!3367, !3368, !3369, !3370, !3371}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !3364, file: !3365, line: 16, baseType: !314, size: 32)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !3364, file: !3365, line: 19, baseType: !82, size: 32, offset: 32)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !3364, file: !3365, line: 26, baseType: !99, size: 64, offset: 64)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !3364, file: !3365, line: 33, baseType: !99, size: 64, offset: 128)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !3364, file: !3365, line: 36, baseType: !3372, size: 64, offset: 192)
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3373, size: 64)
!3373 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !3365, line: 36, flags: DIFlagFwdDecl)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !3247, file: !276, line: 2087, baseType: !3360, size: 64, offset: 1536)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3247, file: !276, line: 2089, baseType: !1463, size: 64, offset: 1600)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1435, file: !276, line: 1198, baseType: !3377, size: 64, offset: 448)
!3377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3378, size: 64)
!3378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3379)
!3379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !281, line: 324, size: 704, elements: !3380)
!3380 = !{!3381, !3385, !3389, !3393, !3394, !3395, !3396, !3397, !3402, !3407, !3411}
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !3379, file: !281, line: 325, baseType: !3382, size: 64)
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3383, size: 64)
!3383 = !DISubroutineType(types: !3384)
!3384 = !{!82, !3317}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !3379, file: !281, line: 326, baseType: !3386, size: 64, offset: 64)
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = !DISubroutineType(types: !3388)
!3388 = !{!3317, !1434, !82}
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !3379, file: !281, line: 327, baseType: !3390, size: 64, offset: 128)
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3391 = !DISubroutineType(types: !3392)
!3392 = !{null, !3317}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !3379, file: !281, line: 328, baseType: !3382, size: 64, offset: 192)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !3379, file: !281, line: 329, baseType: !3382, size: 64, offset: 256)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !3379, file: !281, line: 330, baseType: !3382, size: 64, offset: 320)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !3379, file: !281, line: 331, baseType: !3273, size: 64, offset: 384)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !3379, file: !281, line: 334, baseType: !3398, size: 64, offset: 448)
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3399, size: 64)
!3399 = !DISubroutineType(types: !3400)
!3400 = !{!3401, !1227}
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !3379, file: !281, line: 335, baseType: !3403, size: 64, offset: 512)
!3403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3404, size: 64)
!3404 = !DISubroutineType(types: !3405)
!3405 = !{!82, !1227, !3406}
!3406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3337, size: 64)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !3379, file: !281, line: 337, baseType: !3408, size: 64, offset: 576)
!3408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3409, size: 64)
!3409 = !DISubroutineType(types: !3410)
!3410 = !{!82, !1227, !3401}
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3379, file: !281, line: 339, baseType: !3412, size: 64, offset: 640)
!3412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3413, size: 64)
!3413 = !DISubroutineType(types: !3414)
!3414 = !{!82, !1434, !3415}
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3329, size: 64)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1435, file: !276, line: 1199, baseType: !3417, size: 64, offset: 512)
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3418, size: 64)
!3418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3419)
!3419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !281, line: 430, size: 704, elements: !3420)
!3420 = !{!3421, !3425, !3426, !3430, !3431, !3432, !3447, !3470, !3474, !3475, !3498}
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !3419, file: !281, line: 431, baseType: !3422, size: 64)
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3423, size: 64)
!3423 = !DISubroutineType(types: !3424)
!3424 = !{!82, !1434, !82, !82, !1348}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !3419, file: !281, line: 432, baseType: !3273, size: 64, offset: 64)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !3419, file: !281, line: 433, baseType: !3427, size: 64, offset: 128)
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3428, size: 64)
!3428 = !DISubroutineType(types: !3429)
!3429 = !{!82, !1434, !7}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !3419, file: !281, line: 434, baseType: !3427, size: 64, offset: 192)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !3419, file: !281, line: 435, baseType: !3273, size: 64, offset: 256)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !3419, file: !281, line: 436, baseType: !3433, size: 64, offset: 320)
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3434, size: 64)
!3434 = !DISubroutineType(types: !3435)
!3435 = !{!82, !1434, !82, !3436}
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3437, size: 64)
!3437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !281, line: 417, size: 256, elements: !3438)
!3438 = !{!3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446}
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !3437, file: !281, line: 418, baseType: !82, size: 32)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !3437, file: !281, line: 419, baseType: !7, size: 32, offset: 32)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !3437, file: !281, line: 420, baseType: !7, size: 32, offset: 64)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !3437, file: !281, line: 422, baseType: !7, size: 32, offset: 96)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !3437, file: !281, line: 423, baseType: !7, size: 32, offset: 128)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !3437, file: !281, line: 424, baseType: !7, size: 32, offset: 160)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !3437, file: !281, line: 425, baseType: !7, size: 32, offset: 192)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !3437, file: !281, line: 426, baseType: !7, size: 32, offset: 224)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !3419, file: !281, line: 437, baseType: !3448, size: 64, offset: 384)
!3448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3449 = !DISubroutineType(types: !3450)
!3450 = !{!82, !1434, !3329, !3451}
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !281, line: 345, size: 960, elements: !3453)
!3453 = !{!3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469}
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !3452, file: !281, line: 346, baseType: !82, size: 32)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !3452, file: !281, line: 347, baseType: !315, size: 64, offset: 64)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !3452, file: !281, line: 348, baseType: !315, size: 64, offset: 128)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !3452, file: !281, line: 349, baseType: !315, size: 64, offset: 192)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !3452, file: !281, line: 350, baseType: !315, size: 64, offset: 256)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !3452, file: !281, line: 351, baseType: !315, size: 64, offset: 320)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !3452, file: !281, line: 352, baseType: !315, size: 64, offset: 384)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !3452, file: !281, line: 353, baseType: !440, size: 64, offset: 448)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !3452, file: !281, line: 355, baseType: !440, size: 64, offset: 512)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !3452, file: !281, line: 356, baseType: !82, size: 32, offset: 576)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !3452, file: !281, line: 357, baseType: !82, size: 32, offset: 608)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !3452, file: !281, line: 358, baseType: !315, size: 64, offset: 640)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !3452, file: !281, line: 359, baseType: !315, size: 64, offset: 704)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !3452, file: !281, line: 360, baseType: !315, size: 64, offset: 768)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !3452, file: !281, line: 361, baseType: !440, size: 64, offset: 832)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !3452, file: !281, line: 362, baseType: !82, size: 32, offset: 896)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !3419, file: !281, line: 438, baseType: !3471, size: 64, offset: 448)
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!3472 = !DISubroutineType(types: !3473)
!3473 = !{!82, !1434, !3415, !3451}
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !3419, file: !281, line: 440, baseType: !3448, size: 64, offset: 512)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !3419, file: !281, line: 441, baseType: !3476, size: 64, offset: 576)
!3476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3477, size: 64)
!3477 = !DISubroutineType(types: !3478)
!3478 = !{!82, !1434, !3479}
!3479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3480, size: 64)
!3480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !281, line: 411, size: 1408, elements: !3481)
!3481 = !{!3482, !3483}
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !3480, file: !281, line: 412, baseType: !7, size: 32)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !3480, file: !281, line: 413, baseType: !3484, size: 1344, offset: 64)
!3484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3485, size: 1344, elements: !770)
!3485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !281, line: 397, size: 448, elements: !3486)
!3486 = !{!3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3497}
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3485, file: !281, line: 398, baseType: !7, size: 32)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !3485, file: !281, line: 399, baseType: !7, size: 32, offset: 32)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !3485, file: !281, line: 401, baseType: !7, size: 32, offset: 64)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !3485, file: !281, line: 402, baseType: !7, size: 32, offset: 96)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !3485, file: !281, line: 403, baseType: !7, size: 32, offset: 128)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !3485, file: !281, line: 404, baseType: !7, size: 32, offset: 160)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !3485, file: !281, line: 405, baseType: !7, size: 32, offset: 192)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3485, file: !281, line: 406, baseType: !317, size: 64, offset: 256)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3485, file: !281, line: 407, baseType: !3496, size: 64, offset: 320)
!3496 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !85, line: 132, baseType: !315)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !3485, file: !281, line: 408, baseType: !3496, size: 64, offset: 384)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !3419, file: !281, line: 442, baseType: !3427, size: 64, offset: 640)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1435, file: !276, line: 1200, baseType: !3500, size: 64, offset: 576)
!3500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3501, size: 64)
!3501 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3502)
!3502 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !276, line: 54, flags: DIFlagFwdDecl)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1435, file: !276, line: 1201, baseType: !99, size: 64, offset: 640)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1435, file: !276, line: 1202, baseType: !99, size: 64, offset: 704)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1435, file: !276, line: 1203, baseType: !99, size: 64, offset: 768)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1435, file: !276, line: 1204, baseType: !1192, size: 64, offset: 832)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1435, file: !276, line: 1205, baseType: !867, size: 320, offset: 896)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1435, file: !276, line: 1206, baseType: !82, size: 32, offset: 1216)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1435, file: !276, line: 1207, baseType: !109, size: 32, offset: 1248)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1435, file: !276, line: 1209, baseType: !80, size: 64, offset: 1280)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1435, file: !276, line: 1211, baseType: !3512, size: 64, offset: 1344)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3514, size: 64)
!3514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3515)
!3515 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !276, line: 1211, flags: DIFlagFwdDecl)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1435, file: !276, line: 1223, baseType: !3517, size: 64, offset: 1408)
!3517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !1204, line: 34, size: 64, elements: !3518)
!3518 = !{!3519}
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3517, file: !1204, line: 35, baseType: !1207, size: 64)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1435, file: !276, line: 1224, baseType: !157, size: 128, offset: 1472)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1435, file: !276, line: 1225, baseType: !2140, size: 64, offset: 1600)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1435, file: !276, line: 1226, baseType: !3523, size: 64, offset: 1664)
!3523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3524, size: 64)
!3524 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !276, line: 1226, flags: DIFlagFwdDecl)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1435, file: !276, line: 1227, baseType: !3526, size: 64, offset: 1728)
!3526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3527, size: 64)
!3527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !287, line: 163, size: 6848, elements: !3528)
!3528 = !{!3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3576, !3577, !3578, !3579, !3581, !3582, !3583}
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3527, file: !287, line: 164, baseType: !315, size: 64)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3527, file: !287, line: 165, baseType: !424, size: 192, align: 64, offset: 64)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !3527, file: !287, line: 166, baseType: !157, size: 128, offset: 256)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3527, file: !287, line: 167, baseType: !99, size: 64, offset: 384)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !3527, file: !287, line: 168, baseType: !99, size: 64, offset: 448)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3527, file: !287, line: 170, baseType: !2882, size: 32, offset: 512)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !3527, file: !287, line: 171, baseType: !7, size: 32, offset: 544)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !3527, file: !287, line: 172, baseType: !7, size: 32, offset: 576)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !3527, file: !287, line: 173, baseType: !7, size: 32, offset: 608)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !3527, file: !287, line: 173, baseType: !7, size: 32, offset: 640)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !3527, file: !287, line: 179, baseType: !727, size: 64, offset: 704)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "last_bdp_sleep", scope: !3527, file: !287, line: 184, baseType: !99, size: 64, offset: 768)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !3527, file: !287, line: 186, baseType: !3542, size: 4672, offset: 832)
!3542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !287, line: 105, size: 4672, elements: !3543)
!3543 = !{!3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3569, !3570, !3571, !3572, !3573, !3574, !3575}
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !3542, file: !287, line: 106, baseType: !3526, size: 64)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3542, file: !287, line: 108, baseType: !99, size: 64, offset: 64)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !3542, file: !287, line: 109, baseType: !99, size: 64, offset: 128)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !3542, file: !287, line: 111, baseType: !157, size: 128, offset: 192)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !3542, file: !287, line: 112, baseType: !157, size: 128, offset: 320)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !3542, file: !287, line: 113, baseType: !157, size: 128, offset: 448)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !3542, file: !287, line: 114, baseType: !157, size: 128, offset: 576)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !3542, file: !287, line: 115, baseType: !119, size: 32, offset: 704)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_inodes", scope: !3542, file: !287, line: 117, baseType: !109, size: 32, offset: 736)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !3542, file: !287, line: 118, baseType: !3554, size: 1280, offset: 768)
!3554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !985, size: 1280, elements: !791)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !3542, file: !287, line: 120, baseType: !99, size: 64, offset: 2048)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !3542, file: !287, line: 121, baseType: !99, size: 64, offset: 2112)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !3542, file: !287, line: 122, baseType: !99, size: 64, offset: 2176)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !3542, file: !287, line: 123, baseType: !99, size: 64, offset: 2240)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !3542, file: !287, line: 124, baseType: !99, size: 64, offset: 2304)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !3542, file: !287, line: 132, baseType: !99, size: 64, offset: 2368)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !3542, file: !287, line: 133, baseType: !99, size: 64, offset: 2432)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !3542, file: !287, line: 135, baseType: !3563, size: 384, offset: 2496)
!3563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !3564, line: 76, size: 384, elements: !3565)
!3564 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a71374c9cbe54a4b0f3b6bbea75a8cfc")
!3565 = !{!3566, !3567, !3568}
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3563, file: !3564, line: 78, baseType: !985, size: 320)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3563, file: !3564, line: 80, baseType: !7, size: 32, offset: 320)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3563, file: !3564, line: 81, baseType: !521, size: 32, offset: 352)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !3542, file: !287, line: 136, baseType: !82, size: 32, offset: 2880)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !3542, file: !287, line: 137, baseType: !286, size: 32, offset: 2912)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !3542, file: !287, line: 139, baseType: !119, size: 32, offset: 2944)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !3542, file: !287, line: 140, baseType: !157, size: 128, offset: 3008)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !3542, file: !287, line: 141, baseType: !3178, size: 704, offset: 3136)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "bw_dwork", scope: !3542, file: !287, line: 142, baseType: !3178, size: 704, offset: 3840)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !3542, file: !287, line: 144, baseType: !157, size: 128, offset: 4544)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !3527, file: !287, line: 187, baseType: !157, size: 128, offset: 5504)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !3527, file: !287, line: 193, baseType: !114, size: 192, offset: 5632)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3527, file: !287, line: 195, baseType: !2186, size: 64, offset: 5824)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3527, file: !287, line: 196, baseType: !3580, size: 512, offset: 5888)
!3580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 512, elements: !1523)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3527, file: !287, line: 197, baseType: !2186, size: 64, offset: 6400)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !3527, file: !287, line: 199, baseType: !2376, size: 320, offset: 6464)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !3527, file: !287, line: 202, baseType: !1192, size: 64, offset: 6784)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1435, file: !276, line: 1228, baseType: !3585, size: 64, offset: 1792)
!3585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3586, size: 64)
!3586 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !276, line: 1228, flags: DIFlagFwdDecl)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1435, file: !276, line: 1229, baseType: !786, size: 128, offset: 1856)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1435, file: !276, line: 1230, baseType: !7, size: 32, offset: 1984)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1435, file: !276, line: 1231, baseType: !3590, size: 2496, offset: 2048)
!3590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !281, line: 521, size: 2496, elements: !3591)
!3591 = !{!3592, !3593, !3594, !3596, !3628}
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3590, file: !281, line: 522, baseType: !7, size: 32)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3590, file: !281, line: 523, baseType: !867, size: 320, offset: 64)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3590, file: !281, line: 524, baseType: !3595, size: 192, offset: 384)
!3595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1227, size: 192, elements: !770)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3590, file: !281, line: 525, baseType: !3597, size: 1728, offset: 576)
!3597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3598, size: 1728, elements: !770)
!3598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !281, line: 222, size: 576, elements: !3599)
!3599 = !{!3600, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627}
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3598, file: !281, line: 223, baseType: !3601, size: 64)
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3602, size: 64)
!3602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !281, line: 445, size: 256, elements: !3603)
!3603 = !{!3604, !3605, !3618, !3619}
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3602, file: !281, line: 446, baseType: !82, size: 32)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3602, file: !281, line: 447, baseType: !3606, size: 64, offset: 64)
!3606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3607, size: 64)
!3607 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3608)
!3608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !281, line: 312, size: 512, elements: !3609)
!3609 = !{!3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617}
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3608, file: !281, line: 313, baseType: !3273, size: 64)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3608, file: !281, line: 314, baseType: !3273, size: 64, offset: 64)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3608, file: !281, line: 315, baseType: !3273, size: 64, offset: 128)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3608, file: !281, line: 316, baseType: !3273, size: 64, offset: 192)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3608, file: !281, line: 317, baseType: !3382, size: 64, offset: 256)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3608, file: !281, line: 318, baseType: !3382, size: 64, offset: 320)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3608, file: !281, line: 319, baseType: !3382, size: 64, offset: 384)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3608, file: !281, line: 320, baseType: !3412, size: 64, offset: 448)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3602, file: !281, line: 448, baseType: !1467, size: 64, offset: 128)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3602, file: !281, line: 449, baseType: !3601, size: 64, offset: 192)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3598, file: !281, line: 224, baseType: !82, size: 32, offset: 64)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3598, file: !281, line: 226, baseType: !157, size: 128, offset: 128)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3598, file: !281, line: 227, baseType: !99, size: 64, offset: 256)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3598, file: !281, line: 228, baseType: !7, size: 32, offset: 320)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3598, file: !281, line: 229, baseType: !7, size: 32, offset: 352)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3598, file: !281, line: 230, baseType: !3350, size: 64, offset: 384)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3598, file: !281, line: 231, baseType: !3350, size: 64, offset: 448)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3598, file: !281, line: 232, baseType: !80, size: 64, offset: 512)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3590, file: !281, line: 526, baseType: !3629, size: 192, offset: 2304)
!3629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3606, size: 192, elements: !770)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1435, file: !276, line: 1233, baseType: !3631, size: 2368, offset: 4544)
!3631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !276, line: 1184, size: 2368, elements: !3632)
!3632 = !{!3633, !3634, !3635}
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3631, file: !276, line: 1185, baseType: !86, size: 16)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3631, file: !276, line: 1186, baseType: !86, size: 16, offset: 16)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3631, file: !276, line: 1187, baseType: !3636, size: 2304, offset: 64)
!3636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3637, size: 2304, elements: !770)
!3637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3638, line: 12, size: 768, elements: !3639)
!3638 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3639 = !{!3640, !3648, !3649, !3654, !3655}
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3637, file: !3638, line: 13, baseType: !3641, size: 384)
!3641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3642, line: 17, size: 384, elements: !3643)
!3642 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3643 = !{!3644, !3645, !3646, !3647}
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3641, file: !3642, line: 18, baseType: !82, size: 32)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3641, file: !3642, line: 19, baseType: !82, size: 32, offset: 32)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3641, file: !3642, line: 20, baseType: !114, size: 192, offset: 64)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3641, file: !3642, line: 22, baseType: !714, size: 128, align: 64, offset: 256)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3637, file: !3638, line: 14, baseType: !2131, size: 64, offset: 384)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3637, file: !3638, line: 15, baseType: !3650, size: 64, offset: 448)
!3650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3651, line: 16, size: 64, elements: !3652)
!3651 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3652 = !{!3653}
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3650, file: !3651, line: 17, baseType: !365, size: 64)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3637, file: !3638, line: 16, baseType: !114, size: 192, offset: 512)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3637, file: !3638, line: 17, baseType: !109, size: 32, offset: 704)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1435, file: !276, line: 1240, baseType: !80, size: 64, offset: 6912)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1435, file: !276, line: 1243, baseType: !349, size: 32, offset: 6976)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1435, file: !276, line: 1245, baseType: !883, size: 64, offset: 7040)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1435, file: !276, line: 1246, baseType: !883, size: 64, offset: 7104)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1435, file: !276, line: 1248, baseType: !350, size: 32, offset: 7168)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1435, file: !276, line: 1249, baseType: !3662, size: 64, offset: 7232)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !276, line: 634, flags: DIFlagFwdDecl)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1435, file: !276, line: 1252, baseType: !2275, size: 256, offset: 7296)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1435, file: !276, line: 1253, baseType: !3666, size: 128, offset: 7552)
!3666 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !328, line: 21, baseType: !3667)
!3667 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !328, line: 19, size: 128, elements: !3668)
!3668 = !{!3669}
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3667, file: !328, line: 20, baseType: !332, size: 128)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1435, file: !276, line: 1255, baseType: !7, size: 32, offset: 7680)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1435, file: !276, line: 1261, baseType: !734, size: 256, offset: 7744)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1435, file: !276, line: 1267, baseType: !76, size: 64, offset: 8000)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1435, file: !276, line: 1269, baseType: !3674, size: 64, offset: 8064)
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3675, size: 64)
!3675 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3676)
!3676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !1194, line: 128, size: 1024, align: 512, elements: !3677)
!3677 = !{!3678, !3682, !3683, !3690, !3696, !3700, !3704, !3708, !3709, !3713, !3717, !3722, !3726}
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3676, file: !1194, line: 129, baseType: !3679, size: 64)
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = !DISubroutineType(types: !3681)
!3681 = !{!82, !1192, !7}
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3676, file: !1194, line: 130, baseType: !3679, size: 64, offset: 64)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3676, file: !1194, line: 131, baseType: !3684, size: 64, offset: 128)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = !DISubroutineType(types: !3686)
!3686 = !{!82, !3687, !3689}
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1193)
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3676, file: !1194, line: 132, baseType: !3691, size: 64, offset: 192)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = !DISubroutineType(types: !3693)
!3693 = !{!82, !3687, !7, !76, !3694}
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3695, size: 64)
!3695 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1212)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3676, file: !1194, line: 134, baseType: !3697, size: 64, offset: 256)
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = !DISubroutineType(types: !3699)
!3699 = !{!82, !3687}
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3676, file: !1194, line: 135, baseType: !3701, size: 64, offset: 320)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = !DISubroutineType(types: !3703)
!3703 = !{!82, !1192}
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3676, file: !1194, line: 136, baseType: !3705, size: 64, offset: 384)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DISubroutineType(types: !3707)
!3707 = !{null, !1192}
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3676, file: !1194, line: 137, baseType: !3705, size: 64, offset: 448)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3676, file: !1194, line: 138, baseType: !3710, size: 64, offset: 512)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = !DISubroutineType(types: !3712)
!3712 = !{null, !1192, !1227}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3676, file: !1194, line: 139, baseType: !3714, size: 64, offset: 576)
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = !DISubroutineType(types: !3716)
!3716 = !{!937, !1192, !937, !82}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3676, file: !1194, line: 140, baseType: !3718, size: 64, offset: 640)
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = !DISubroutineType(types: !3720)
!3720 = !{!1187, !3721}
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3676, file: !1194, line: 141, baseType: !3723, size: 64, offset: 704)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{!82, !1348, !926}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3676, file: !1194, line: 142, baseType: !3727, size: 64, offset: 768)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = !DISubroutineType(types: !3729)
!3729 = !{!1192, !1192, !3730}
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1228)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1435, file: !276, line: 1271, baseType: !3733, size: 448, offset: 8128)
!3733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !3365, line: 63, size: 448, elements: !3734)
!3734 = !{!3735, !3740, !3741, !3742, !3743, !3744, !3745}
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3733, file: !3365, line: 64, baseType: !3736, size: 64)
!3736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3737, size: 64)
!3737 = !DISubroutineType(types: !3738)
!3738 = !{!99, !3739, !3363}
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3733, file: !3365, line: 66, baseType: !3736, size: 64, offset: 64)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3733, file: !3365, line: 69, baseType: !343, size: 64, offset: 128)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3733, file: !3365, line: 70, baseType: !82, size: 32, offset: 192)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3733, file: !3365, line: 71, baseType: !7, size: 32, offset: 224)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3733, file: !3365, line: 74, baseType: !157, size: 128, offset: 256)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3733, file: !3365, line: 85, baseType: !3746, size: 64, offset: 384)
!3746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1435, file: !276, line: 1274, baseType: !727, size: 64, offset: 8576)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1435, file: !276, line: 1280, baseType: !727, size: 64, offset: 8640)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1435, file: !276, line: 1283, baseType: !82, size: 32, offset: 8704)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1435, file: !276, line: 1286, baseType: !2708, size: 32, offset: 8736)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1435, file: !276, line: 1289, baseType: !3183, size: 64, offset: 8768)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1435, file: !276, line: 1290, baseType: !782, size: 64, offset: 8832)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1435, file: !276, line: 1297, baseType: !1010, size: 64, offset: 8896)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1435, file: !276, line: 1304, baseType: !3755, size: 64, offset: 8960)
!3755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3756, line: 49, size: 64, elements: !3757)
!3756 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3757 = !{!3758}
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3755, file: !3756, line: 50, baseType: !3759, size: 64)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3756, line: 41, size: 512, align: 512, elements: !3761)
!3761 = !{!3762, !3763, !3768}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3760, file: !3756, line: 43, baseType: !119, size: 32)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3760, file: !3756, line: 45, baseType: !3764, size: 192, offset: 64)
!3764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3756, line: 29, size: 192, elements: !3765)
!3765 = !{!3766, !3767}
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3764, file: !3756, line: 30, baseType: !157, size: 128)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3764, file: !3756, line: 32, baseType: !343, size: 64, offset: 128)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3760, file: !3756, line: 46, baseType: !343, size: 64, offset: 256)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1435, file: !276, line: 1305, baseType: !3755, size: 64, offset: 9024)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1435, file: !276, line: 1306, baseType: !714, size: 128, align: 64, offset: 9088)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1435, file: !276, line: 1307, baseType: !1059, size: 256, offset: 9216)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1435, file: !276, line: 1309, baseType: !734, size: 256, offset: 9472)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1435, file: !276, line: 1314, baseType: !82, size: 32, offset: 9728)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1435, file: !276, line: 1317, baseType: !119, size: 32, align: 512, offset: 10240)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1435, file: !276, line: 1318, baseType: !157, size: 128, offset: 10304)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1435, file: !276, line: 1320, baseType: !119, size: 32, offset: 10432)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1435, file: !276, line: 1321, baseType: !157, size: 128, offset: 10496)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1228, file: !276, line: 656, baseType: !1584, size: 64, offset: 512)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !1228, file: !276, line: 659, baseType: !80, size: 64, offset: 576)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1228, file: !276, line: 663, baseType: !99, size: 64, offset: 640)
!3781 = !DIDerivedType(tag: DW_TAG_member, scope: !1228, file: !276, line: 671, baseType: !3782, size: 32, offset: 704)
!3782 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1228, file: !276, line: 671, size: 32, elements: !3783)
!3783 = !{!3784, !3786}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3782, file: !276, line: 672, baseType: !3785, size: 32)
!3785 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3782, file: !276, line: 673, baseType: !7, size: 32)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1228, file: !276, line: 675, baseType: !1301, size: 32, offset: 736)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1228, file: !276, line: 676, baseType: !101, size: 64, offset: 768)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1228, file: !276, line: 677, baseType: !1337, size: 128, offset: 832)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1228, file: !276, line: 678, baseType: !1337, size: 128, offset: 960)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !1228, file: !276, line: 679, baseType: !1337, size: 128, offset: 1088)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1228, file: !276, line: 680, baseType: !119, size: 32, offset: 1216)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1228, file: !276, line: 681, baseType: !86, size: 16, offset: 1248)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1228, file: !276, line: 682, baseType: !143, size: 8, offset: 1264)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1228, file: !276, line: 683, baseType: !143, size: 8, offset: 1272)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1228, file: !276, line: 684, baseType: !3496, size: 64, offset: 1280)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1228, file: !276, line: 691, baseType: !99, size: 64, offset: 1344)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1228, file: !276, line: 692, baseType: !867, size: 320, offset: 1408)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1228, file: !276, line: 694, baseType: !99, size: 64, offset: 1728)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1228, file: !276, line: 695, baseType: !99, size: 64, offset: 1792)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1228, file: !276, line: 697, baseType: !786, size: 128, offset: 1856)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1228, file: !276, line: 698, baseType: !157, size: 128, offset: 1984)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1228, file: !276, line: 707, baseType: !157, size: 128, offset: 2112)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1228, file: !276, line: 708, baseType: !157, size: 128, offset: 2240)
!3805 = !DIDerivedType(tag: DW_TAG_member, scope: !1228, file: !276, line: 709, baseType: !3806, size: 128, offset: 2368)
!3806 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1228, file: !276, line: 709, size: 128, elements: !3807)
!3807 = !{!3808, !3809}
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3806, file: !276, line: 710, baseType: !782, size: 64)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3806, file: !276, line: 711, baseType: !714, size: 128, align: 64)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1228, file: !276, line: 713, baseType: !729, size: 64, offset: 2496)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1228, file: !276, line: 714, baseType: !729, size: 64, offset: 2560)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1228, file: !276, line: 715, baseType: !109, size: 32, offset: 2624)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1228, file: !276, line: 716, baseType: !109, size: 32, offset: 2656)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1228, file: !276, line: 717, baseType: !109, size: 32, offset: 2688)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1228, file: !276, line: 719, baseType: !109, size: 32, offset: 2720)
!3816 = !DIDerivedType(tag: DW_TAG_member, scope: !1228, file: !276, line: 721, baseType: !3817, size: 64, offset: 2752)
!3817 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1228, file: !276, line: 721, size: 64, elements: !3818)
!3818 = !{!3819, !3945}
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3817, file: !276, line: 722, baseType: !3820, size: 64)
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3822)
!3822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !276, line: 1914, size: 2112, elements: !3823)
!3823 = !{!3824, !3825, !3829, !3833, !3837, !3838, !3839, !3845, !3858, !3862, !3866, !3867, !3871, !3872, !3876, !3881, !3882, !3886, !3890, !3896, !3897, !3901, !3902, !3908, !3912, !3913, !3918, !3922, !3926, !3930, !3934, !3935, !3941}
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3822, file: !276, line: 1915, baseType: !1467, size: 64)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3822, file: !276, line: 1916, baseType: !3826, size: 64, offset: 64)
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = !DISubroutineType(types: !3828)
!3828 = !{!101, !706, !101, !82}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3822, file: !276, line: 1917, baseType: !3830, size: 64, offset: 128)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = !DISubroutineType(types: !3832)
!3832 = !{!1379, !706, !937, !95, !100}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3822, file: !276, line: 1918, baseType: !3834, size: 64, offset: 192)
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3835 = !DISubroutineType(types: !3836)
!3836 = !{!1379, !706, !76, !95, !100}
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3822, file: !276, line: 1919, baseType: !2031, size: 64, offset: 256)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3822, file: !276, line: 1920, baseType: !2031, size: 64, offset: 320)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3822, file: !276, line: 1921, baseType: !3840, size: 64, offset: 384)
!3840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3841, size: 64)
!3841 = !DISubroutineType(types: !3842)
!3842 = !{!82, !2034, !3843, !7}
!3843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3844, size: 64)
!3844 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !276, line: 53, flags: DIFlagFwdDecl)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3822, file: !276, line: 1923, baseType: !3846, size: 64, offset: 448)
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = !DISubroutineType(types: !3848)
!3848 = !{!82, !706, !3849}
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !276, line: 1858, size: 128, elements: !3851)
!3851 = !{!3852, !3857}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3850, file: !276, line: 1859, baseType: !3853, size: 64)
!3853 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !276, line: 1855, baseType: !3854)
!3854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3855, size: 64)
!3855 = !DISubroutineType(types: !3856)
!3856 = !{!926, !3849, !76, !82, !101, !315, !7}
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3850, file: !276, line: 1860, baseType: !101, size: 64, offset: 64)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3822, file: !276, line: 1924, baseType: !3859, size: 64, offset: 512)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = !DISubroutineType(types: !3861)
!3861 = !{!2851, !706, !2853}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3822, file: !276, line: 1925, baseType: !3863, size: 64, offset: 576)
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3864, size: 64)
!3864 = !DISubroutineType(types: !3865)
!3865 = !{!343, !706, !7, !99}
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3822, file: !276, line: 1926, baseType: !3863, size: 64, offset: 640)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3822, file: !276, line: 1927, baseType: !3868, size: 64, offset: 704)
!3868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3869, size: 64)
!3869 = !DISubroutineType(types: !3870)
!3870 = !{!82, !706, !1713}
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3822, file: !276, line: 1928, baseType: !99, size: 64, offset: 768)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3822, file: !276, line: 1929, baseType: !3873, size: 64, offset: 832)
!3873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3874, size: 64)
!3874 = !DISubroutineType(types: !3875)
!3875 = !{!82, !1227, !706}
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3822, file: !276, line: 1930, baseType: !3877, size: 64, offset: 896)
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3878 = !DISubroutineType(types: !3879)
!3879 = !{!82, !706, !3880}
!3880 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !276, line: 1061, baseType: !80)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3822, file: !276, line: 1931, baseType: !3873, size: 64, offset: 960)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3822, file: !276, line: 1932, baseType: !3883, size: 64, offset: 1024)
!3883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3884, size: 64)
!3884 = !DISubroutineType(types: !3885)
!3885 = !{!82, !706, !101, !101, !82}
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3822, file: !276, line: 1933, baseType: !3887, size: 64, offset: 1088)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = !DISubroutineType(types: !3889)
!3889 = !{!82, !82, !706, !82}
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3822, file: !276, line: 1934, baseType: !3891, size: 64, offset: 1152)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3892 = !DISubroutineType(types: !3893)
!3893 = !{!82, !706, !82, !3894}
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3895 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !276, line: 1063, flags: DIFlagFwdDecl)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3822, file: !276, line: 1935, baseType: !703, size: 64, offset: 1216)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3822, file: !276, line: 1936, baseType: !3898, size: 64, offset: 1280)
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3899, size: 64)
!3899 = !DISubroutineType(types: !3900)
!3900 = !{!82, !82}
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3822, file: !276, line: 1937, baseType: !3891, size: 64, offset: 1344)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3822, file: !276, line: 1938, baseType: !3903, size: 64, offset: 1408)
!3903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3904, size: 64)
!3904 = !DISubroutineType(types: !3905)
!3905 = !{!1379, !3906, !706, !100, !95, !7}
!3906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3907, size: 64)
!3907 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !367, line: 59, flags: DIFlagFwdDecl)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3822, file: !276, line: 1939, baseType: !3909, size: 64, offset: 1472)
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3910, size: 64)
!3910 = !DISubroutineType(types: !3911)
!3911 = !{!1379, !706, !100, !3906, !95, !7}
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3822, file: !276, line: 1940, baseType: !2698, size: 64, offset: 1536)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3822, file: !276, line: 1941, baseType: !3914, size: 64, offset: 1600)
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = !DISubroutineType(types: !3916)
!3916 = !{!82, !706, !82, !3917, !2008}
!3917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3822, file: !276, line: 1942, baseType: !3919, size: 64, offset: 1664)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = !DISubroutineType(types: !3921)
!3921 = !{!343, !706, !82, !101, !101}
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3822, file: !276, line: 1944, baseType: !3923, size: 64, offset: 1728)
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3924 = !DISubroutineType(types: !3925)
!3925 = !{null, !2784, !706}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3822, file: !276, line: 1948, baseType: !3927, size: 64, offset: 1792)
!3927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3928, size: 64)
!3928 = !DISubroutineType(types: !3929)
!3929 = !{!1379, !706, !101, !706, !101, !95, !7}
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3822, file: !276, line: 1950, baseType: !3931, size: 64, offset: 1856)
!3931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3932, size: 64)
!3932 = !DISubroutineType(types: !3933)
!3933 = !{!101, !706, !101, !706, !101, !101, !7}
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3822, file: !276, line: 1953, baseType: !3883, size: 64, offset: 1920)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3822, file: !276, line: 1954, baseType: !3936, size: 64, offset: 1984)
!3936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3937, size: 64)
!3937 = !DISubroutineType(types: !3938)
!3938 = !{!82, !3939, !7}
!3939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3940, size: 64)
!3940 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !276, line: 1911, flags: DIFlagFwdDecl)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3822, file: !276, line: 1955, baseType: !3942, size: 64, offset: 2048)
!3942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3943, size: 64)
!3943 = !DISubroutineType(types: !3944)
!3944 = !{!82, !3939, !3843, !7}
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3817, file: !276, line: 723, baseType: !3254, size: 64)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1228, file: !276, line: 725, baseType: !3947, size: 64, offset: 2816)
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!3948 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !276, line: 725, flags: DIFlagFwdDecl)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1228, file: !276, line: 726, baseType: !1585, size: 1536, align: 64, offset: 2880)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1228, file: !276, line: 727, baseType: !157, size: 128, offset: 4416)
!3951 = !DIDerivedType(tag: DW_TAG_member, scope: !1228, file: !276, line: 728, baseType: !3952, size: 64, offset: 4544)
!3952 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1228, file: !276, line: 728, size: 64, elements: !3953)
!3953 = !{!3954, !3955, !3966, !3967}
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3952, file: !276, line: 729, baseType: !3906, size: 64)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3952, file: !276, line: 730, baseType: !3956, size: 64)
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3957, size: 64)
!3957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !3958, line: 14, size: 832, elements: !3959)
!3958 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dd3580fb19b1b4d9a4e84334e4ba7aa6")
!3959 = !{!3960, !3961, !3962, !3963, !3964, !3965}
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3957, file: !3958, line: 15, baseType: !1480, size: 512)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3957, file: !3958, line: 16, baseType: !1467, size: 64, offset: 512)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3957, file: !3958, line: 17, baseType: !3820, size: 64, offset: 576)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3957, file: !3958, line: 18, baseType: !157, size: 128, offset: 640)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3957, file: !3958, line: 19, baseType: !1301, size: 32, offset: 768)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3957, file: !3958, line: 20, baseType: !7, size: 32, offset: 800)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3952, file: !276, line: 731, baseType: !937, size: 64)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3952, file: !276, line: 732, baseType: !7, size: 32)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1228, file: !276, line: 735, baseType: !350, size: 32, offset: 4608)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1228, file: !276, line: 738, baseType: !350, size: 32, offset: 4640)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1228, file: !276, line: 739, baseType: !3662, size: 64, offset: 4672)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1228, file: !276, line: 750, baseType: !80, size: 64, offset: 4736)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !1193, file: !1194, line: 91, baseType: !3973, size: 256, offset: 448)
!3973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 256, elements: !2276)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !1193, file: !1194, line: 94, baseType: !3975, size: 64, offset: 704)
!3975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3976, line: 25, size: 64, elements: !3977)
!3976 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3977 = !{!3978}
!3978 = !DIDerivedType(tag: DW_TAG_member, scope: !3975, file: !3976, line: 26, baseType: !3979, size: 64)
!3979 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3975, file: !3976, line: 26, size: 64, elements: !3980)
!3980 = !{!3981, !3982}
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3979, file: !3976, line: 28, baseType: !316, size: 64, align: 64)
!3982 = !DIDerivedType(tag: DW_TAG_member, scope: !3979, file: !3976, line: 30, baseType: !3983, size: 64)
!3983 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3979, file: !3976, line: 30, size: 64, elements: !3984)
!3984 = !{!3985, !3986}
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3983, file: !3976, line: 31, baseType: !119, size: 32)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3983, file: !3976, line: 32, baseType: !82, size: 32, offset: 32)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !1193, file: !1194, line: 95, baseType: !3674, size: 64, offset: 768)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !1193, file: !1194, line: 96, baseType: !1434, size: 64, offset: 832)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !1193, file: !1194, line: 97, baseType: !99, size: 64, offset: 896)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !1193, file: !1194, line: 98, baseType: !80, size: 64, offset: 960)
!3991 = !DIDerivedType(tag: DW_TAG_member, scope: !1193, file: !1194, line: 100, baseType: !3992, size: 128, offset: 1024)
!3992 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1193, file: !1194, line: 100, size: 128, elements: !3993)
!3993 = !{!3994, !3995}
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3992, file: !1194, line: 101, baseType: !157, size: 128)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3992, file: !1194, line: 102, baseType: !2862, size: 64)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !1193, file: !1194, line: 104, baseType: !157, size: 128, offset: 1152)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !1193, file: !1194, line: 105, baseType: !157, size: 128, offset: 1280)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !1193, file: !1194, line: 113, baseType: !3999, size: 128, offset: 1408)
!3999 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1193, file: !1194, line: 109, size: 128, elements: !4000)
!4000 = !{!4001, !4002, !4003}
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3999, file: !1194, line: 110, baseType: !786, size: 128)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3999, file: !1194, line: 111, baseType: !1203, size: 128)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3999, file: !1194, line: 112, baseType: !714, size: 128, align: 64)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !1188, file: !1189, line: 72, baseType: !1434, size: 64, offset: 64)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !1188, file: !1189, line: 73, baseType: !82, size: 32, offset: 128)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !1188, file: !1189, line: 74, baseType: !1266, size: 64, offset: 192)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1183, file: !1184, line: 10, baseType: !1192, size: 64, offset: 64)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !707, file: !276, line: 1015, baseType: !1227, size: 64, offset: 1344)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !707, file: !276, line: 1016, baseType: !3820, size: 64, offset: 1408)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !707, file: !276, line: 1018, baseType: !315, size: 64, offset: 1472)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !707, file: !276, line: 1020, baseType: !80, size: 64, offset: 1536)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !707, file: !276, line: 1023, baseType: !80, size: 64, offset: 1600)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !707, file: !276, line: 1027, baseType: !4014, size: 64, offset: 1664)
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !707, file: !276, line: 1029, baseType: !1584, size: 64, offset: 1728)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !707, file: !276, line: 1030, baseType: !2708, size: 32, offset: 1792)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !707, file: !276, line: 1031, baseType: !2708, size: 32, offset: 1824)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !682, file: !183, line: 756, baseType: !99, size: 64, offset: 704)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !682, file: !183, line: 757, baseType: !99, size: 64, offset: 768)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !682, file: !183, line: 760, baseType: !99, size: 64, offset: 832)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !682, file: !183, line: 761, baseType: !99, size: 64, offset: 896)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !682, file: !183, line: 763, baseType: !99, size: 64, offset: 960)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !682, file: !183, line: 764, baseType: !4024, size: 64, offset: 1024)
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4025, size: 64)
!4025 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1728, line: 299, baseType: !4026)
!4026 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1728, line: 299, size: 64, elements: !4027)
!4027 = !{!4028}
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !4026, file: !1728, line: 299, baseType: !4029, size: 64)
!4029 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !320, line: 18, baseType: !99)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !682, file: !183, line: 773, baseType: !109, size: 32, offset: 1088)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !682, file: !183, line: 785, baseType: !109, size: 32, offset: 1120)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !682, file: !183, line: 795, baseType: !4033, size: 64, offset: 1152)
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4034, size: 64)
!4034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !183, line: 726, size: 128, elements: !4035)
!4035 = !{!4036, !4037}
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4034, file: !183, line: 727, baseType: !315, size: 64)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !4034, file: !183, line: 728, baseType: !82, size: 32, offset: 64)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !682, file: !183, line: 801, baseType: !99, size: 64, offset: 1216)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !682, file: !183, line: 804, baseType: !727, size: 64, offset: 1280)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !682, file: !183, line: 806, baseType: !82, size: 32, offset: 1344)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !682, file: !183, line: 808, baseType: !119, size: 32, offset: 1376)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !682, file: !183, line: 823, baseType: !867, size: 320, offset: 1408)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !682, file: !183, line: 825, baseType: !157, size: 128, offset: 1728)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !682, file: !183, line: 845, baseType: !82, size: 32, offset: 1856)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !682, file: !183, line: 849, baseType: !99, size: 64, offset: 1920)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !682, file: !183, line: 850, baseType: !99, size: 64, offset: 1984)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !682, file: !183, line: 852, baseType: !99, size: 64, offset: 2048)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !682, file: !183, line: 853, baseType: !99, size: 64, offset: 2112)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !682, file: !183, line: 854, baseType: !729, size: 64, offset: 2176)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !682, file: !183, line: 855, baseType: !99, size: 64, offset: 2240)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !682, file: !183, line: 856, baseType: !99, size: 64, offset: 2304)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !682, file: !183, line: 857, baseType: !99, size: 64, offset: 2368)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !682, file: !183, line: 858, baseType: !99, size: 64, offset: 2432)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !682, file: !183, line: 865, baseType: !552, size: 32, offset: 2496)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !682, file: !183, line: 867, baseType: !119, size: 32, offset: 2528)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !682, file: !183, line: 869, baseType: !99, size: 64, offset: 2560)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !682, file: !183, line: 869, baseType: !99, size: 64, offset: 2624)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !682, file: !183, line: 869, baseType: !99, size: 64, offset: 2688)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !682, file: !183, line: 869, baseType: !99, size: 64, offset: 2752)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !682, file: !183, line: 870, baseType: !99, size: 64, offset: 2816)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !682, file: !183, line: 870, baseType: !99, size: 64, offset: 2880)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !682, file: !183, line: 870, baseType: !99, size: 64, offset: 2944)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !682, file: !183, line: 871, baseType: !99, size: 64, offset: 3008)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !682, file: !183, line: 871, baseType: !99, size: 64, offset: 3072)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !682, file: !183, line: 871, baseType: !99, size: 64, offset: 3136)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !682, file: !183, line: 871, baseType: !99, size: 64, offset: 3200)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !682, file: !183, line: 873, baseType: !4068, size: 3328, offset: 3264)
!4068 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 3328, elements: !4069)
!4069 = !{!4070}
!4070 = !DISubrange(count: 52)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !682, file: !183, line: 875, baseType: !3554, size: 1280, offset: 6592)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !682, file: !183, line: 877, baseType: !4073, size: 64, offset: 7872)
!4073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4074, size: 64)
!4074 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !183, line: 877, flags: DIFlagFwdDecl)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !682, file: !183, line: 880, baseType: !4076, size: 1088, offset: 7936)
!4076 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !4077, line: 72, baseType: !4078)
!4077 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!4078 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4077, line: 23, size: 1088, elements: !4079)
!4079 = !{!4080, !4081, !4082, !4083, !4084, !4109, !4110, !4111, !4112, !4137, !4138, !4139}
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !4078, file: !4077, line: 28, baseType: !315, size: 64)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !4078, file: !4077, line: 38, baseType: !729, size: 64, offset: 64)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !4078, file: !4077, line: 40, baseType: !99, size: 64, offset: 128)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !4078, file: !4077, line: 43, baseType: !867, size: 320, offset: 192)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !4078, file: !4077, line: 44, baseType: !4085, size: 64, offset: 512)
!4085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4086, size: 64)
!4086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !4087, line: 30, size: 128, elements: !4088)
!4087 = !DIFile(filename: "./arch/x86/include/asm/mmu_context.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8e7349a2ab0563256af671ddc4b36d96")
!4088 = !{!4089, !4107, !4108}
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !4086, file: !4087, line: 37, baseType: !4090, size: 64)
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4091, size: 64)
!4091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4092, line: 16, size: 64, elements: !4093)
!4092 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4093 = !{!4094, !4095, !4096, !4097, !4098, !4099, !4100, !4101, !4102, !4103, !4104, !4105, !4106}
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4091, file: !4092, line: 17, baseType: !153, size: 16)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4091, file: !4092, line: 18, baseType: !153, size: 16, offset: 16)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4091, file: !4092, line: 19, baseType: !153, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4091, file: !4092, line: 19, baseType: !153, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4091, file: !4092, line: 19, baseType: !153, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4091, file: !4092, line: 19, baseType: !153, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4091, file: !4092, line: 19, baseType: !153, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4091, file: !4092, line: 20, baseType: !153, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4091, file: !4092, line: 20, baseType: !153, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4091, file: !4092, line: 20, baseType: !153, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4091, file: !4092, line: 20, baseType: !153, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4091, file: !4092, line: 20, baseType: !153, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4091, file: !4092, line: 20, baseType: !153, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "nr_entries", scope: !4086, file: !4087, line: 38, baseType: !7, size: 32, offset: 64)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !4086, file: !4087, line: 49, baseType: !82, size: 32, offset: 96)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4078, file: !4077, line: 48, baseType: !99, size: 64, offset: 576)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4078, file: !4077, line: 59, baseType: !734, size: 256, offset: 640)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !4078, file: !4077, line: 60, baseType: !80, size: 64, offset: 896)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !4078, file: !4077, line: 61, baseType: !4113, size: 64, offset: 960)
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4114, size: 64)
!4114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4115)
!4115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !4116, line: 13, size: 1216, elements: !4117)
!4116 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!4117 = !{!4118, !4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4133, !4134, !4135, !4136}
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4115, file: !4116, line: 14, baseType: !80, size: 64)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4115, file: !4116, line: 15, baseType: !99, size: 64, offset: 64)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !4115, file: !4116, line: 17, baseType: !99, size: 64, offset: 128)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !4115, file: !4116, line: 17, baseType: !99, size: 64, offset: 192)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !4115, file: !4116, line: 18, baseType: !99, size: 64, offset: 256)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !4115, file: !4116, line: 18, baseType: !99, size: 64, offset: 320)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !4115, file: !4116, line: 19, baseType: !2284, size: 64, offset: 384)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !4115, file: !4116, line: 21, baseType: !343, size: 64, offset: 448)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !4115, file: !4116, line: 23, baseType: !343, size: 64, offset: 512)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !4115, file: !4116, line: 24, baseType: !343, size: 64, offset: 576)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !4115, file: !4116, line: 25, baseType: !343, size: 64, offset: 640)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !4115, file: !4116, line: 26, baseType: !343, size: 64, offset: 704)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !4115, file: !4116, line: 27, baseType: !343, size: 64, offset: 768)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !4115, file: !4116, line: 28, baseType: !343, size: 64, offset: 832)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !4115, file: !4116, line: 29, baseType: !343, size: 64, offset: 896)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !4115, file: !4116, line: 30, baseType: !343, size: 64, offset: 960)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !4115, file: !4116, line: 31, baseType: !343, size: 64, offset: 1024)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !4115, file: !4116, line: 32, baseType: !343, size: 64, offset: 1088)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !4115, file: !4116, line: 33, baseType: !343, size: 64, offset: 1152)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !4078, file: !4077, line: 63, baseType: !109, size: 32, offset: 1024)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !4078, file: !4077, line: 69, baseType: !153, size: 16, offset: 1056)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !4078, file: !4077, line: 70, baseType: !3038, size: 16, offset: 1072)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !682, file: !183, line: 882, baseType: !99, size: 64, offset: 9024)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !682, file: !183, line: 885, baseType: !119, size: 32, offset: 9088)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !682, file: !183, line: 886, baseType: !4143, size: 64, offset: 9152)
!4143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4144, size: 64)
!4144 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !183, line: 732, flags: DIFlagFwdDecl)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !682, file: !183, line: 901, baseType: !1010, size: 64, offset: 9216)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !682, file: !183, line: 904, baseType: !706, size: 64, offset: 9280)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !682, file: !183, line: 906, baseType: !4148, size: 64, offset: 9344)
!4148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4149, size: 64)
!4149 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !183, line: 906, flags: DIFlagFwdDecl)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !682, file: !183, line: 930, baseType: !109, size: 32, offset: 9408)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !682, file: !183, line: 933, baseType: !109, size: 32, offset: 9440)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !682, file: !183, line: 935, baseType: !4153, size: 64, offset: 9472)
!4153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !305, line: 103, size: 64, elements: !4154)
!4154 = !{!4155}
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !4153, file: !305, line: 104, baseType: !4156, size: 64)
!4156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4157, size: 64)
!4157 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !305, line: 101, flags: DIFlagFwdDecl)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !682, file: !183, line: 940, baseType: !727, size: 64, offset: 9536)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !682, file: !183, line: 942, baseType: !1059, size: 256, offset: 9600)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !679, file: !183, line: 986, baseType: !4161, offset: 10240)
!4161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, elements: !804)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !366, file: !367, line: 882, baseType: !678, size: 64, offset: 9792)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !366, file: !367, line: 884, baseType: !82, size: 32, offset: 9856)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !366, file: !367, line: 885, baseType: !82, size: 32, offset: 9888)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !366, file: !367, line: 886, baseType: !82, size: 32, offset: 9920)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !366, file: !367, line: 888, baseType: !82, size: 32, offset: 9952)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !366, file: !367, line: 890, baseType: !99, size: 64, offset: 9984)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !366, file: !367, line: 893, baseType: !7, size: 32, offset: 10048)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !366, file: !367, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !366, file: !367, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !366, file: !367, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !366, file: !367, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !366, file: !367, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !366, file: !367, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !366, file: !367, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !366, file: !367, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !366, file: !367, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !366, file: !367, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !366, file: !367, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !366, file: !367, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !366, file: !367, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !366, file: !367, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !366, file: !367, line: 969, baseType: !99, size: 64, offset: 10176)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !366, file: !367, line: 971, baseType: !4185, size: 448, offset: 10240)
!4185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !299, line: 25, size: 448, elements: !4186)
!4186 = !{!4187, !4188, !4193}
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !4185, file: !299, line: 26, baseType: !99, size: 64)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4185, file: !299, line: 27, baseType: !4189, size: 64, offset: 64)
!4189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4190, size: 64)
!4190 = !DISubroutineType(types: !4191)
!4191 = !{!343, !4192}
!4192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4185, size: 64)
!4193 = !DIDerivedType(tag: DW_TAG_member, scope: !4185, file: !299, line: 28, baseType: !4194, size: 320, offset: 128)
!4194 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4185, file: !299, line: 28, size: 320, elements: !4195)
!4195 = !{!4196, !4206, !4231}
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !4194, file: !299, line: 37, baseType: !4197, size: 320)
!4197 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4194, file: !299, line: 30, size: 320, elements: !4198)
!4198 = !{!4199, !4201, !4202, !4203, !4204, !4205}
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !4197, file: !299, line: 31, baseType: !4200, size: 64)
!4200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4197, file: !299, line: 32, baseType: !349, size: 32, offset: 64)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4197, file: !299, line: 33, baseType: !349, size: 32, offset: 96)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !4197, file: !299, line: 34, baseType: !349, size: 32, offset: 128)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4197, file: !299, line: 35, baseType: !315, size: 64, offset: 192)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !4197, file: !299, line: 36, baseType: !4200, size: 64, offset: 256)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !4194, file: !299, line: 47, baseType: !4207, size: 192)
!4207 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4194, file: !299, line: 39, size: 192, elements: !4208)
!4208 = !{!4209, !4210, !4211, !4230}
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !4207, file: !299, line: 40, baseType: !544, size: 32)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4207, file: !299, line: 41, baseType: !298, size: 32, offset: 32)
!4211 = !DIDerivedType(tag: DW_TAG_member, scope: !4207, file: !299, line: 42, baseType: !4212, size: 64, offset: 64)
!4212 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4207, file: !299, line: 42, size: 64, elements: !4213)
!4213 = !{!4214, !4222}
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !4212, file: !299, line: 43, baseType: !4215, size: 64)
!4215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4216, size: 64)
!4216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !4217, line: 7, size: 128, elements: !4218)
!4217 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!4218 = !{!4219, !4221}
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4216, file: !4217, line: 8, baseType: !4220, size: 64)
!4220 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !97, line: 93, baseType: !103)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4216, file: !4217, line: 9, baseType: !103, size: 64, offset: 64)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !4212, file: !299, line: 44, baseType: !4223, size: 64)
!4223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4224, size: 64)
!4224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !4225, line: 7, size: 64, elements: !4226)
!4225 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!4226 = !{!4227, !4229}
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4224, file: !4225, line: 8, baseType: !4228, size: 32)
!4228 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !4225, line: 5, baseType: !859)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4224, file: !4225, line: 9, baseType: !859, size: 32, offset: 32)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !4207, file: !299, line: 46, baseType: !315, size: 64, offset: 128)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4194, file: !299, line: 55, baseType: !4232, size: 256)
!4232 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4194, file: !299, line: 49, size: 256, elements: !4233)
!4233 = !{!4234, !4242, !4243, !4244, !4245}
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !4232, file: !299, line: 50, baseType: !4235, size: 64)
!4235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4236, size: 64)
!4236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !4237, line: 36, size: 64, elements: !4238)
!4237 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!4238 = !{!4239, !4240, !4241}
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !4236, file: !4237, line: 37, baseType: !82, size: 32)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !4236, file: !4237, line: 38, baseType: !895, size: 16, offset: 32)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !4236, file: !4237, line: 39, baseType: !895, size: 16, offset: 48)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !4232, file: !299, line: 51, baseType: !82, size: 32, offset: 64)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !4232, file: !299, line: 52, baseType: !82, size: 32, offset: 96)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4232, file: !299, line: 53, baseType: !99, size: 64, offset: 128)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4232, file: !299, line: 54, baseType: !99, size: 64, offset: 192)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !366, file: !367, line: 973, baseType: !4247, size: 32, offset: 10688)
!4247 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !85, line: 27, baseType: !4248)
!4248 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !97, line: 28, baseType: !82)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !366, file: !367, line: 974, baseType: !4247, size: 32, offset: 10720)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !366, file: !367, line: 978, baseType: !99, size: 64, offset: 10752)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !366, file: !367, line: 987, baseType: !365, size: 64, offset: 10816)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !366, file: !367, line: 990, baseType: !365, size: 64, offset: 10880)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !366, file: !367, line: 995, baseType: !157, size: 128, offset: 10944)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !366, file: !367, line: 996, baseType: !157, size: 128, offset: 11072)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !366, file: !367, line: 997, baseType: !365, size: 64, offset: 11200)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !366, file: !367, line: 1005, baseType: !157, size: 128, offset: 11264)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !366, file: !367, line: 1006, baseType: !157, size: 128, offset: 11392)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !366, file: !367, line: 1009, baseType: !774, size: 64, offset: 11520)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !366, file: !367, line: 1010, baseType: !4260, size: 512, offset: 11584)
!4260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !786, size: 512, elements: !791)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !366, file: !367, line: 1011, baseType: !157, size: 128, offset: 12096)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !366, file: !367, line: 1012, baseType: !157, size: 128, offset: 12224)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !366, file: !367, line: 1014, baseType: !1097, size: 64, offset: 12352)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !366, file: !367, line: 1017, baseType: !3031, size: 64, offset: 12416)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !366, file: !367, line: 1020, baseType: !3031, size: 64, offset: 12480)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !366, file: !367, line: 1023, baseType: !80, size: 64, offset: 12544)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !366, file: !367, line: 1025, baseType: !315, size: 64, offset: 12608)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !366, file: !367, line: 1026, baseType: !315, size: 64, offset: 12672)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !366, file: !367, line: 1031, baseType: !315, size: 64, offset: 12736)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !366, file: !367, line: 1032, baseType: !4271, size: 192, offset: 12800)
!4271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !367, line: 324, size: 192, elements: !4272)
!4272 = !{!4273, !4274, !4275}
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4271, file: !367, line: 326, baseType: !315, size: 64)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4271, file: !367, line: 327, baseType: !315, size: 64, offset: 64)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4271, file: !367, line: 328, baseType: !521, size: 32, offset: 128)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !366, file: !367, line: 1041, baseType: !99, size: 64, offset: 12992)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !366, file: !367, line: 1042, baseType: !99, size: 64, offset: 13056)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !366, file: !367, line: 1045, baseType: !315, size: 64, offset: 13120)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !366, file: !367, line: 1048, baseType: !315, size: 64, offset: 13184)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !366, file: !367, line: 1051, baseType: !99, size: 64, offset: 13248)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !366, file: !367, line: 1052, baseType: !99, size: 64, offset: 13312)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !366, file: !367, line: 1055, baseType: !4283, size: 640, offset: 13376)
!4283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !4284, line: 132, size: 640, elements: !4285)
!4284 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!4285 = !{!4286, !4292, !4293}
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !4283, file: !4284, line: 133, baseType: !4287, size: 576)
!4287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4288, size: 576, elements: !770)
!4288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !4284, line: 117, size: 192, elements: !4289)
!4289 = !{!4290, !4291}
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !4288, file: !4284, line: 118, baseType: !315, size: 64)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !4288, file: !4284, line: 119, baseType: !558, size: 128, offset: 64)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !4283, file: !4284, line: 134, baseType: !7, size: 32, offset: 576)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !4283, file: !4284, line: 135, baseType: !7, size: 32, offset: 608)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !366, file: !367, line: 1058, baseType: !4295, size: 448, offset: 14016)
!4295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !4284, line: 144, size: 448, elements: !4296)
!4296 = !{!4297, !4298, !4299}
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4295, file: !4284, line: 145, baseType: !714, size: 128, align: 64)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4295, file: !4284, line: 146, baseType: !734, size: 256, offset: 128)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !4295, file: !4284, line: 147, baseType: !7, size: 32, offset: 384)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !366, file: !367, line: 1064, baseType: !818, size: 64, offset: 14464)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !366, file: !367, line: 1067, baseType: !818, size: 64, offset: 14528)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !366, file: !367, line: 1070, baseType: !818, size: 64, offset: 14592)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !366, file: !367, line: 1074, baseType: !851, size: 64, offset: 14656)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !366, file: !367, line: 1084, baseType: !4305, size: 128, offset: 14720)
!4305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 128, elements: !333)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !366, file: !367, line: 1086, baseType: !4307, size: 64, offset: 14848)
!4307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4308, size: 64)
!4308 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !367, line: 55, flags: DIFlagFwdDecl)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !366, file: !367, line: 1089, baseType: !4310, size: 64, offset: 14912)
!4310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !4311, line: 12, size: 64, elements: !4312)
!4311 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!4312 = !{!4313}
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !4310, file: !4311, line: 13, baseType: !4314, size: 64)
!4314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4315, size: 64)
!4315 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !4311, line: 8, flags: DIFlagFwdDecl)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !366, file: !367, line: 1090, baseType: !4317, size: 128, offset: 14976)
!4317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !4318, line: 13, size: 128, elements: !4319)
!4318 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!4319 = !{!4320}
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !4317, file: !4318, line: 14, baseType: !157, size: 128)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !366, file: !367, line: 1097, baseType: !4322, size: 64, offset: 15104)
!4322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4323, size: 64)
!4323 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !367, line: 50, flags: DIFlagFwdDecl)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !366, file: !367, line: 1100, baseType: !4325, size: 64, offset: 15168)
!4325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4326, size: 64)
!4326 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !367, line: 1100, flags: DIFlagFwdDecl)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !366, file: !367, line: 1103, baseType: !4328, size: 64, offset: 15232)
!4328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4329, size: 64)
!4329 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !367, line: 53, flags: DIFlagFwdDecl)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !366, file: !367, line: 1107, baseType: !4331, size: 64, offset: 15296)
!4331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4332, size: 64)
!4332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !4333, line: 31, size: 576, elements: !4334)
!4333 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!4334 = !{!4335, !4336, !4339, !4342, !4345, !4346, !4349, !4352, !4353}
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4332, file: !4333, line: 32, baseType: !380, size: 32)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !4332, file: !4333, line: 33, baseType: !4337, size: 64, offset: 64)
!4337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4338, size: 64)
!4338 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !4333, line: 9, flags: DIFlagFwdDecl)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !4332, file: !4333, line: 34, baseType: !4340, size: 64, offset: 128)
!4340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4341, size: 64)
!4341 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !4333, line: 10, flags: DIFlagFwdDecl)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !4332, file: !4333, line: 35, baseType: !4343, size: 64, offset: 192)
!4343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4344, size: 64)
!4344 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !4333, line: 8, flags: DIFlagFwdDecl)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !4332, file: !4333, line: 36, baseType: !802, size: 64, offset: 256)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !4332, file: !4333, line: 37, baseType: !4347, size: 64, offset: 320)
!4347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4348, size: 64)
!4348 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !853, line: 34, flags: DIFlagFwdDecl)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !4332, file: !4333, line: 38, baseType: !4350, size: 64, offset: 384)
!4350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4351, size: 64)
!4351 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !4333, line: 38, flags: DIFlagFwdDecl)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !4332, file: !4333, line: 39, baseType: !4350, size: 64, offset: 448)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !4332, file: !4333, line: 40, baseType: !4354, size: 64, offset: 512)
!4354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4355, size: 64)
!4355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !4356, line: 771, size: 384, elements: !4357)
!4356 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!4357 = !{!4358, !4359, !4360, !4361}
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4355, file: !4356, line: 772, baseType: !1043, size: 192)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !4355, file: !4356, line: 773, baseType: !1010, size: 64, offset: 192)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !4355, file: !4356, line: 774, baseType: !1142, size: 64, offset: 256)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !4355, file: !4356, line: 775, baseType: !4362, size: 64, offset: 320)
!4362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4363, size: 64)
!4363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !4364, line: 209, size: 4736, elements: !4365)
!4364 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!4365 = !{!4366, !4601, !4602, !4603, !4604, !4605, !4606, !4607, !4608, !4609, !4610, !4611, !4612, !4613, !4614, !4615, !4616, !4617, !4618, !4619, !4620, !4621}
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !4363, file: !4364, line: 215, baseType: !4367, size: 896)
!4367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4368, size: 896, elements: !4425)
!4368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4369, size: 64)
!4369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !4364, line: 152, size: 1600, elements: !4370)
!4370 = !{!4371, !4476, !4585, !4586, !4587, !4588, !4589, !4590, !4591, !4592, !4593, !4594, !4600}
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !4369, file: !4364, line: 154, baseType: !4372, size: 64)
!4372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4373, size: 64)
!4373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !4364, line: 389, size: 7872, elements: !4374)
!4374 = !{!4375, !4376, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4384, !4385, !4386, !4387, !4388, !4394, !4395, !4399, !4400, !4401, !4402, !4403, !4404, !4422, !4423, !4427, !4428, !4429, !4451, !4452, !4453, !4454, !4455, !4456, !4457, !4458, !4459, !4463, !4466, !4467, !4474}
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4373, file: !4364, line: 391, baseType: !4369, size: 1600)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4373, file: !4364, line: 393, baseType: !99, size: 64, offset: 1600)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4373, file: !4364, line: 401, baseType: !82, size: 32, offset: 1664)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !4373, file: !4364, line: 404, baseType: !82, size: 32, offset: 1696)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !4373, file: !4364, line: 417, baseType: !82, size: 32, offset: 1728)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !4373, file: !4364, line: 418, baseType: !82, size: 32, offset: 1760)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !4373, file: !4364, line: 419, baseType: !82, size: 32, offset: 1792)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !4373, file: !4364, line: 432, baseType: !82, size: 32, offset: 1824)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !4373, file: !4364, line: 433, baseType: !82, size: 32, offset: 1856)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !4373, file: !4364, line: 434, baseType: !82, size: 32, offset: 1888)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !4373, file: !4364, line: 436, baseType: !82, size: 32, offset: 1920)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !4373, file: !4364, line: 439, baseType: !7, size: 32, offset: 1952)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4373, file: !4364, line: 441, baseType: !2739, size: 64, offset: 1984)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !4373, file: !4364, line: 442, baseType: !4389, size: 448, offset: 2048)
!4389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !4364, line: 138, size: 448, elements: !4390)
!4390 = !{!4391, !4392, !4393}
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4389, file: !4364, line: 140, baseType: !2739, size: 64)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !4389, file: !4364, line: 141, baseType: !99, size: 64, offset: 64)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !4389, file: !4364, line: 142, baseType: !2376, size: 320, offset: 128)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !4373, file: !4364, line: 443, baseType: !4389, size: 448, offset: 2496)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !4373, file: !4364, line: 446, baseType: !4396, offset: 2944)
!4396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4389, elements: !4397)
!4397 = !{!4398}
!4398 = !DISubrange(count: 0)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !4373, file: !4364, line: 455, baseType: !153, size: 16, offset: 2944)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !4373, file: !4364, line: 456, baseType: !153, size: 16, offset: 2960)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !4373, file: !4364, line: 457, baseType: !153, size: 16, offset: 2976)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !4373, file: !4364, line: 458, baseType: !153, size: 16, offset: 2992)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !4373, file: !4364, line: 461, baseType: !4367, size: 896, offset: 3008)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4373, file: !4364, line: 463, baseType: !4405, size: 64, offset: 3904)
!4405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4406, size: 64)
!4406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !4364, line: 537, size: 41664, elements: !4407)
!4407 = !{!4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4421}
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !4406, file: !4364, line: 538, baseType: !2759, size: 64)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !4406, file: !4364, line: 541, baseType: !7, size: 32, offset: 64)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !4406, file: !4364, line: 544, baseType: !82, size: 32, offset: 96)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !4406, file: !4364, line: 547, baseType: !157, size: 128, offset: 128)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4406, file: !4364, line: 548, baseType: !714, size: 128, align: 64, offset: 256)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !4406, file: !4364, line: 555, baseType: !4373, size: 7872, offset: 384)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !4406, file: !4364, line: 558, baseType: !4372, size: 64, offset: 8256)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !4406, file: !4364, line: 561, baseType: !109, size: 32, offset: 8320)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4406, file: !4364, line: 564, baseType: !7, size: 32, offset: 8352)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !4406, file: !4364, line: 567, baseType: !4418, size: 32768, offset: 8384)
!4418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 32768, elements: !4419)
!4419 = !{!4420}
!4420 = !DISubrange(count: 4096)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4406, file: !4364, line: 570, baseType: !3580, size: 512, offset: 41152)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !4373, file: !4364, line: 469, baseType: !157, size: 128, offset: 3968)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !4373, file: !4364, line: 478, baseType: !4424, size: 1792, offset: 4096)
!4424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 1792, elements: !4425)
!4425 = !{!4426}
!4426 = !DISubrange(count: 14)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !4373, file: !4364, line: 487, baseType: !4372, size: 64, offset: 5888)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !4373, file: !4364, line: 488, baseType: !4372, size: 64, offset: 5952)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !4373, file: !4364, line: 491, baseType: !4430, size: 64, offset: 6016)
!4430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4431, size: 64)
!4431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !4364, line: 327, size: 896, elements: !4432)
!4432 = !{!4433, !4436, !4446, !4447, !4448, !4449, !4450}
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !4431, file: !4364, line: 332, baseType: !4434)
!4434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !4435, line: 64, elements: !699)
!4435 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !4431, file: !4364, line: 333, baseType: !4437, size: 192)
!4437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !4364, line: 299, size: 192, elements: !4438)
!4438 = !{!4439}
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !4437, file: !4364, line: 300, baseType: !4440, size: 192)
!4440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !4441, line: 17, size: 192, elements: !4442)
!4441 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!4442 = !{!4443, !4444, !4445}
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4440, file: !4441, line: 18, baseType: !315, size: 64)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4440, file: !4441, line: 19, baseType: !315, size: 64, offset: 64)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !4440, file: !4441, line: 20, baseType: !317, size: 64, offset: 128)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !4431, file: !4364, line: 339, baseType: !4437, size: 192, offset: 192)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !4431, file: !4364, line: 347, baseType: !4437, size: 192, offset: 384)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !4431, file: !4364, line: 353, baseType: !4437, size: 192, offset: 576)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !4431, file: !4364, line: 366, baseType: !4372, size: 64, offset: 768)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !4431, file: !4364, line: 367, baseType: !4372, size: 64, offset: 832)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !4373, file: !4364, line: 492, baseType: !157, size: 128, offset: 6080)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !4373, file: !4364, line: 495, baseType: !4437, size: 192, offset: 6208)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !4373, file: !4364, line: 496, baseType: !4437, size: 192, offset: 6400)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !4373, file: !4364, line: 497, baseType: !4271, size: 192, offset: 6592)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !4373, file: !4364, line: 503, baseType: !157, size: 128, offset: 6784)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !4373, file: !4364, line: 504, baseType: !734, size: 256, offset: 6912)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !4373, file: !4364, line: 507, baseType: !114, size: 192, offset: 7168)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !4373, file: !4364, line: 510, baseType: !1059, size: 256, offset: 7360)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !4373, file: !4364, line: 513, baseType: !4460, size: 64, offset: 7616)
!4460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4461, size: 64)
!4461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !4462, line: 214, elements: !699)
!4462 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !4373, file: !4364, line: 516, baseType: !4464, offset: 7680)
!4464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !4465, line: 76, elements: !699)
!4465 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !4373, file: !4364, line: 519, baseType: !109, size: 32, offset: 7680)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !4373, file: !4364, line: 522, baseType: !4468, size: 128, offset: 7712)
!4468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !4364, line: 370, size: 128, elements: !4469)
!4469 = !{!4470, !4471, !4472, !4473}
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4468, file: !4364, line: 372, baseType: !926, size: 8)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !4468, file: !4364, line: 375, baseType: !82, size: 32, offset: 32)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !4468, file: !4364, line: 380, baseType: !82, size: 32, offset: 64)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !4468, file: !4364, line: 386, baseType: !82, size: 32, offset: 96)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !4373, file: !4364, line: 529, baseType: !4475, offset: 7872)
!4475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4372, elements: !804)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4369, file: !4364, line: 157, baseType: !4477, size: 64, offset: 64)
!4477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4478, size: 64)
!4478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !4364, line: 669, size: 1984, elements: !4479)
!4479 = !{!4480, !4484, !4488, !4492, !4493, !4494, !4495, !4499, !4503, !4504, !4510, !4514, !4515, !4516, !4520, !4524, !4528, !4529, !4530, !4531, !4532, !4533, !4534, !4535, !4536, !4537, !4538, !4545, !4546, !4583, !4584}
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !4478, file: !4364, line: 670, baseType: !4481, size: 64)
!4481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4482, size: 64)
!4482 = !DISubroutineType(types: !4483)
!4483 = !{!4368, !4368}
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !4478, file: !4364, line: 671, baseType: !4485, size: 64, offset: 64)
!4485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4486, size: 64)
!4486 = !DISubroutineType(types: !4487)
!4487 = !{!82, !4368}
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !4478, file: !4364, line: 672, baseType: !4489, size: 64, offset: 128)
!4489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4490, size: 64)
!4490 = !DISubroutineType(types: !4491)
!4491 = !{null, !4368}
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !4478, file: !4364, line: 673, baseType: !4489, size: 64, offset: 192)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !4478, file: !4364, line: 674, baseType: !4489, size: 64, offset: 256)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !4478, file: !4364, line: 675, baseType: !4489, size: 64, offset: 320)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !4478, file: !4364, line: 676, baseType: !4496, size: 64, offset: 384)
!4496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4497, size: 64)
!4497 = !DISubroutineType(types: !4498)
!4498 = !{null, !4368, !82}
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !4478, file: !4364, line: 677, baseType: !4500, size: 64, offset: 448)
!4500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4501, size: 64)
!4501 = !DISubroutineType(types: !4502)
!4502 = !{!82, !2784, !4368}
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !4478, file: !4364, line: 679, baseType: !4500, size: 64, offset: 512)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !4478, file: !4364, line: 682, baseType: !4505, size: 64, offset: 576)
!4505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4506, size: 64)
!4506 = !DISubroutineType(types: !4507)
!4507 = !{!82, !4508}
!4508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4509, size: 64)
!4509 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !4364, line: 30, flags: DIFlagFwdDecl)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !4478, file: !4364, line: 683, baseType: !4511, size: 64, offset: 640)
!4511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4512, size: 64)
!4512 = !DISubroutineType(types: !4513)
!4513 = !{null, !4508}
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !4478, file: !4364, line: 684, baseType: !4511, size: 64, offset: 704)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !4478, file: !4364, line: 685, baseType: !3228, size: 64, offset: 768)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !4478, file: !4364, line: 686, baseType: !4517, size: 64, offset: 832)
!4517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4518, size: 64)
!4518 = !DISubroutineType(types: !4519)
!4519 = !{!82, !365, !4362}
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !4478, file: !4364, line: 688, baseType: !4521, size: 64, offset: 896)
!4521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4522, size: 64)
!4522 = !DISubroutineType(types: !4523)
!4523 = !{null, !365, !4362}
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !4478, file: !4364, line: 689, baseType: !4525, size: 64, offset: 960)
!4525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4526, size: 64)
!4526 = !DISubroutineType(types: !4527)
!4527 = !{null, !365}
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !4478, file: !4364, line: 690, baseType: !4525, size: 64, offset: 1024)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4478, file: !4364, line: 691, baseType: !4525, size: 64, offset: 1088)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !4478, file: !4364, line: 692, baseType: !4489, size: 64, offset: 1152)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4478, file: !4364, line: 694, baseType: !926, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !4478, file: !4364, line: 707, baseType: !926, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !4478, file: !4364, line: 719, baseType: !926, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4478, file: !4364, line: 722, baseType: !82, size: 32, offset: 1248)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4478, file: !4364, line: 723, baseType: !76, size: 64, offset: 1280)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !4478, file: !4364, line: 726, baseType: !76, size: 64, offset: 1344)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4478, file: !4364, line: 729, baseType: !4405, size: 64, offset: 1408)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !4478, file: !4364, line: 732, baseType: !4539, size: 192, offset: 1472)
!4539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !4540, line: 19, size: 192, elements: !4541)
!4540 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!4541 = !{!4542, !4543, !4544}
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !4539, file: !4540, line: 20, baseType: !1426, size: 128)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !4539, file: !4540, line: 21, baseType: !7, size: 32, offset: 128)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !4539, file: !4540, line: 22, baseType: !7, size: 32, offset: 160)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !4478, file: !4364, line: 738, baseType: !157, size: 128, offset: 1664)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !4478, file: !4364, line: 744, baseType: !4547, size: 64, offset: 1792)
!4547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4548, size: 64)
!4548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !4364, line: 580, size: 1728, elements: !4549)
!4549 = !{!4550, !4551, !4552, !4553, !4554, !4555, !4556, !4557, !4559, !4560, !4561, !4565, !4569, !4570, !4571, !4572, !4573, !4577, !4581, !4582}
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4548, file: !4364, line: 586, baseType: !3580, size: 512)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4548, file: !4364, line: 587, baseType: !99, size: 64, offset: 512)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4548, file: !4364, line: 593, baseType: !95, size: 64, offset: 576)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4548, file: !4364, line: 596, baseType: !7, size: 32, offset: 640)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !4548, file: !4364, line: 604, baseType: !7, size: 32, offset: 672)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4548, file: !4364, line: 610, baseType: !4477, size: 64, offset: 704)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4548, file: !4364, line: 611, baseType: !157, size: 128, offset: 768)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !4548, file: !4364, line: 612, baseType: !4558, size: 64, offset: 896)
!4558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2772, size: 64)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4548, file: !4364, line: 614, baseType: !2775, size: 64, offset: 960)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4548, file: !4364, line: 615, baseType: !2833, size: 64, offset: 1024)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !4548, file: !4364, line: 621, baseType: !4562, size: 64, offset: 1088)
!4562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4563, size: 64)
!4563 = !DISubroutineType(types: !4564)
!4564 = !{!315, !4368, !4547}
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !4548, file: !4364, line: 625, baseType: !4566, size: 64, offset: 1152)
!4566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4567, size: 64)
!4567 = !DISubroutineType(types: !4568)
!4568 = !{!440, !4368, !4547}
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4548, file: !4364, line: 628, baseType: !2814, size: 64, offset: 1216)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4548, file: !4364, line: 631, baseType: !2802, size: 64, offset: 1280)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4548, file: !4364, line: 632, baseType: !2810, size: 64, offset: 1344)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4548, file: !4364, line: 633, baseType: !2806, size: 64, offset: 1408)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !4548, file: !4364, line: 640, baseType: !4574, size: 64, offset: 1472)
!4574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4575, size: 64)
!4575 = !DISubroutineType(types: !4576)
!4576 = !{!82, !4368, !4547, !315}
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !4548, file: !4364, line: 645, baseType: !4578, size: 64, offset: 1536)
!4578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4579, size: 64)
!4579 = !DISubroutineType(types: !4580)
!4580 = !{!82, !4368, !4547, !440}
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4548, file: !4364, line: 654, baseType: !2841, size: 64, offset: 1600)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4548, file: !4364, line: 657, baseType: !2848, size: 64, offset: 1664)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !4478, file: !4364, line: 745, baseType: !4547, size: 64, offset: 1856)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !4478, file: !4364, line: 754, baseType: !7, size: 32, offset: 1920)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !4369, file: !4364, line: 160, baseType: !1667, size: 128, offset: 128)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4369, file: !4364, line: 163, baseType: !157, size: 128, offset: 256)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4369, file: !4364, line: 164, baseType: !157, size: 128, offset: 384)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !4369, file: !4364, line: 167, baseType: !157, size: 128, offset: 512)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4369, file: !4364, line: 173, baseType: !82, size: 32, offset: 640)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4369, file: !4364, line: 175, baseType: !7, size: 32, offset: 672)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !4369, file: !4364, line: 183, baseType: !315, size: 64, offset: 704)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !4369, file: !4364, line: 189, baseType: !109, size: 32, offset: 768)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !4369, file: !4364, line: 192, baseType: !1059, size: 256, offset: 832)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !4369, file: !4364, line: 193, baseType: !4595, size: 448, offset: 1088)
!4595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !1060, line: 120, size: 448, elements: !4596)
!4596 = !{!4597, !4598, !4599}
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4595, file: !1060, line: 121, baseType: !1059, size: 256)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4595, file: !1060, line: 122, baseType: !714, size: 128, align: 64, offset: 256)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4595, file: !1060, line: 125, baseType: !3183, size: 64, offset: 384)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4369, file: !4364, line: 199, baseType: !4368, size: 64, offset: 1536)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4363, file: !4364, line: 218, baseType: !380, size: 32, offset: 896)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !4363, file: !4364, line: 226, baseType: !4362, size: 64, offset: 960)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !4363, file: !4364, line: 229, baseType: !4372, size: 64, offset: 1024)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !4363, file: !4364, line: 232, baseType: !82, size: 32, offset: 1088)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !4363, file: !4364, line: 241, baseType: !157, size: 128, offset: 1152)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !4363, file: !4364, line: 242, baseType: !157, size: 128, offset: 1280)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !4363, file: !4364, line: 243, baseType: !157, size: 128, offset: 1408)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !4363, file: !4364, line: 246, baseType: !157, size: 128, offset: 1536)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !4363, file: !4364, line: 255, baseType: !4424, size: 1792, offset: 1664)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !4363, file: !4364, line: 258, baseType: !157, size: 128, offset: 3456)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !4363, file: !4364, line: 259, baseType: !157, size: 128, offset: 3584)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !4363, file: !4364, line: 265, baseType: !786, size: 128, offset: 3712)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !4363, file: !4364, line: 271, baseType: !157, size: 128, offset: 3840)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !4363, file: !4364, line: 277, baseType: !157, size: 128, offset: 3968)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !4363, file: !4364, line: 278, baseType: !157, size: 128, offset: 4096)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !4363, file: !4364, line: 279, baseType: !157, size: 128, offset: 4224)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !4363, file: !4364, line: 288, baseType: !4372, size: 64, offset: 4352)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !4363, file: !4364, line: 289, baseType: !4372, size: 64, offset: 4416)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !4363, file: !4364, line: 290, baseType: !4362, size: 64, offset: 4480)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !4363, file: !4364, line: 293, baseType: !926, size: 8, offset: 4544)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !4363, file: !4364, line: 296, baseType: !714, size: 128, align: 64, offset: 4608)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !366, file: !367, line: 1110, baseType: !4623, size: 64, offset: 15360)
!4623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4624, size: 64)
!4624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !4625, line: 93, size: 8768, elements: !4626)
!4625 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!4626 = !{!4627, !4628, !4629, !4630, !4631, !4632, !4633, !4634, !4645, !4646, !4647, !4648, !4649, !4650, !4651, !4663, !4664, !4665, !4666, !4667, !4668, !4669, !4675, !4684, !4685, !4687, !4688, !4689, !4692, !4698, !4699, !4700, !4701, !4702, !4703, !4704, !4705, !4706, !4707, !4708, !4709, !4710, !4711, !4712, !4713, !4714, !4715, !4716, !4717, !4718, !4719, !4730, !4731, !4738, !4748, !4810, !4811, !4814, !4815, !4816, !4817, !4818, !4819}
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !4624, file: !4625, line: 94, baseType: !380, size: 32)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !4624, file: !4625, line: 95, baseType: !109, size: 32, offset: 32)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !4624, file: !4625, line: 96, baseType: !82, size: 32, offset: 64)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !4624, file: !4625, line: 97, baseType: !82, size: 32, offset: 96)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !4624, file: !4625, line: 98, baseType: !157, size: 128, offset: 128)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !4624, file: !4625, line: 100, baseType: !114, size: 192, offset: 256)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !4624, file: !4625, line: 103, baseType: !365, size: 64, offset: 448)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !4624, file: !4625, line: 106, baseType: !4635, size: 192, offset: 512)
!4635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !4636, line: 32, size: 192, elements: !4637)
!4636 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!4637 = !{!4638, !4639}
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4635, file: !4636, line: 33, baseType: !157, size: 128)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !4635, file: !4636, line: 34, baseType: !4640, size: 64, offset: 128)
!4640 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !4641, line: 25, baseType: !4642)
!4641 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!4642 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4641, line: 23, size: 64, elements: !4643)
!4643 = !{!4644}
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !4642, file: !4641, line: 24, baseType: !629, size: 64)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !4624, file: !4625, line: 109, baseType: !782, size: 64, offset: 704)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !4624, file: !4625, line: 112, baseType: !82, size: 32, offset: 768)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !4624, file: !4625, line: 114, baseType: !82, size: 32, offset: 800)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !4624, file: !4625, line: 115, baseType: !365, size: 64, offset: 832)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !4624, file: !4625, line: 118, baseType: !82, size: 32, offset: 896)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4624, file: !4625, line: 119, baseType: !7, size: 32, offset: 928)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !4624, file: !4625, line: 121, baseType: !4652, size: 64, offset: 960)
!4652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4653, size: 64)
!4653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !4625, line: 80, size: 448, elements: !4654)
!4654 = !{!4655, !4656, !4662}
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !4653, file: !4625, line: 81, baseType: !109, size: 32)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !4653, file: !4625, line: 82, baseType: !4657, size: 128, offset: 64)
!4657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !4625, line: 75, size: 128, elements: !4658)
!4658 = !{!4659, !4660}
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4657, file: !4625, line: 76, baseType: !365, size: 64)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4657, file: !4625, line: 77, baseType: !4661, size: 64, offset: 64)
!4661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4657, size: 64)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !4653, file: !4625, line: 83, baseType: !1098, size: 256, offset: 192)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !4624, file: !4625, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !4624, file: !4625, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !4624, file: !4625, line: 138, baseType: !7, size: 32, offset: 1056)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !4624, file: !4625, line: 139, baseType: !157, size: 128, offset: 1088)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !4624, file: !4625, line: 142, baseType: !496, size: 512, offset: 1216)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !4624, file: !4625, line: 143, baseType: !504, size: 64, offset: 1728)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !4624, file: !4625, line: 150, baseType: !4670, size: 256, offset: 1792)
!4670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4671, size: 256, elements: !3021)
!4671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !4625, line: 38, size: 128, elements: !4672)
!4672 = !{!4673, !4674}
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !4671, file: !4625, line: 39, baseType: !315, size: 64)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !4671, file: !4625, line: 40, baseType: !315, size: 64, offset: 64)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !4624, file: !4625, line: 156, baseType: !4676, size: 192, offset: 2048)
!4676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !4625, line: 66, size: 192, elements: !4677)
!4677 = !{!4678}
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !4676, file: !4625, line: 67, baseType: !4679, size: 192)
!4679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !4625, line: 47, size: 192, elements: !4680)
!4680 = !{!4681, !4682, !4683}
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4679, file: !4625, line: 48, baseType: !729, size: 64)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4679, file: !4625, line: 49, baseType: !729, size: 64, offset: 64)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !4679, file: !4625, line: 50, baseType: !729, size: 64, offset: 128)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !4624, file: !4625, line: 160, baseType: !4283, size: 640, offset: 2240)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !4624, file: !4625, line: 163, baseType: !4686, size: 256, offset: 2880)
!4686 = !DICompositeType(tag: DW_TAG_array_type, baseType: !774, size: 256, elements: !791)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !4624, file: !4625, line: 169, baseType: !774, size: 64, offset: 3136)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !4624, file: !4625, line: 172, baseType: !82, size: 32, offset: 3200)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !4624, file: !4625, line: 174, baseType: !4690, size: 64, offset: 3264)
!4690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4691, size: 64)
!4691 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !4625, line: 174, flags: DIFlagFwdDecl)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !4624, file: !4625, line: 185, baseType: !4693, size: 64, offset: 3328)
!4693 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !548, line: 860, baseType: !4694)
!4694 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !548, line: 853, size: 64, elements: !4695)
!4695 = !{!4696, !4697}
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !4694, file: !548, line: 858, baseType: !1198, size: 32)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4694, file: !548, line: 859, baseType: !119, size: 32, offset: 32)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4624, file: !4625, line: 186, baseType: !315, size: 64, offset: 3392)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4624, file: !4625, line: 186, baseType: !315, size: 64, offset: 3456)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !4624, file: !4625, line: 186, baseType: !315, size: 64, offset: 3520)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !4624, file: !4625, line: 186, baseType: !315, size: 64, offset: 3584)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !4624, file: !4625, line: 187, baseType: !315, size: 64, offset: 3648)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !4624, file: !4625, line: 188, baseType: !315, size: 64, offset: 3712)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !4624, file: !4625, line: 189, baseType: !4271, size: 192, offset: 3776)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !4624, file: !4625, line: 190, baseType: !99, size: 64, offset: 3968)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !4624, file: !4625, line: 190, baseType: !99, size: 64, offset: 4032)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !4624, file: !4625, line: 190, baseType: !99, size: 64, offset: 4096)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !4624, file: !4625, line: 190, baseType: !99, size: 64, offset: 4160)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !4624, file: !4625, line: 191, baseType: !99, size: 64, offset: 4224)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !4624, file: !4625, line: 191, baseType: !99, size: 64, offset: 4288)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !4624, file: !4625, line: 191, baseType: !99, size: 64, offset: 4352)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !4624, file: !4625, line: 191, baseType: !99, size: 64, offset: 4416)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !4624, file: !4625, line: 192, baseType: !99, size: 64, offset: 4480)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !4624, file: !4625, line: 192, baseType: !99, size: 64, offset: 4544)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !4624, file: !4625, line: 192, baseType: !99, size: 64, offset: 4608)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !4624, file: !4625, line: 192, baseType: !99, size: 64, offset: 4672)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !4624, file: !4625, line: 193, baseType: !99, size: 64, offset: 4736)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !4624, file: !4625, line: 193, baseType: !99, size: 64, offset: 4800)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !4624, file: !4625, line: 194, baseType: !4720, size: 448, offset: 4864)
!4720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !4721, line: 12, size: 448, elements: !4722)
!4721 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!4722 = !{!4723, !4724, !4725, !4726, !4727, !4728, !4729}
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !4720, file: !4721, line: 15, baseType: !315, size: 64)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !4720, file: !4721, line: 17, baseType: !315, size: 64, offset: 64)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !4720, file: !4721, line: 19, baseType: !315, size: 64, offset: 128)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !4720, file: !4721, line: 21, baseType: !315, size: 64, offset: 192)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !4720, file: !4721, line: 29, baseType: !315, size: 64, offset: 256)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !4720, file: !4721, line: 35, baseType: !315, size: 64, offset: 320)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !4720, file: !4721, line: 44, baseType: !315, size: 64, offset: 384)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !4624, file: !4625, line: 202, baseType: !317, size: 64, offset: 5312)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !4624, file: !4625, line: 213, baseType: !4732, size: 2048, offset: 5376)
!4732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4733, size: 2048, elements: !333)
!4733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !4734, line: 43, size: 128, elements: !4735)
!4734 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!4735 = !{!4736, !4737}
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !4733, file: !4734, line: 44, baseType: !98, size: 64)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !4733, file: !4734, line: 45, baseType: !98, size: 64, offset: 64)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !4624, file: !4625, line: 216, baseType: !4739, size: 448, offset: 7424)
!4739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !4625, line: 30, size: 448, elements: !4740)
!4740 = !{!4741, !4742, !4743, !4744, !4745, !4746, !4747}
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !4739, file: !4625, line: 31, baseType: !82, size: 32)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !4739, file: !4625, line: 32, baseType: !343, size: 64, offset: 64)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !4739, file: !4625, line: 33, baseType: !99, size: 64, offset: 128)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !4739, file: !4625, line: 34, baseType: !315, size: 64, offset: 192)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !4739, file: !4625, line: 34, baseType: !315, size: 64, offset: 256)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !4739, file: !4625, line: 35, baseType: !99, size: 64, offset: 320)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !4739, file: !4625, line: 35, baseType: !99, size: 64, offset: 384)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !4624, file: !4625, line: 219, baseType: !4749, size: 64, offset: 7872)
!4749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4750, size: 64)
!4750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !4751, line: 41, size: 3456, elements: !4752)
!4751 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!4752 = !{!4753, !4754, !4755, !4756, !4757, !4758, !4759, !4760, !4761, !4762, !4763, !4764, !4765, !4766, !4767, !4769, !4770, !4771, !4772, !4773, !4774, !4775, !4776, !4777, !4778, !4779, !4780, !4781, !4782, !4783, !4784, !4785, !4786, !4787, !4788, !4789, !4790, !4791, !4792, !4793, !4794, !4795, !4796, !4797, !4798, !4799, !4800, !4801, !4802, !4803, !4804, !4805, !4806, !4807, !4808, !4809}
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4750, file: !4751, line: 47, baseType: !154, size: 16)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !4750, file: !4751, line: 48, baseType: !350, size: 32, offset: 32)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !4750, file: !4751, line: 54, baseType: !145, size: 8, offset: 64)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !4750, file: !4751, line: 55, baseType: !145, size: 8, offset: 72)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !4750, file: !4751, line: 73, baseType: !316, size: 64, align: 64, offset: 128)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !4750, file: !4751, line: 74, baseType: !316, size: 64, offset: 192)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !4750, file: !4751, line: 81, baseType: !316, size: 64, offset: 256)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !4750, file: !4751, line: 82, baseType: !316, size: 64, offset: 320)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !4750, file: !4751, line: 85, baseType: !316, size: 64, offset: 384)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !4750, file: !4751, line: 86, baseType: !316, size: 64, offset: 448)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !4750, file: !4751, line: 94, baseType: !316, size: 64, offset: 512)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !4750, file: !4751, line: 102, baseType: !316, size: 64, offset: 576)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !4750, file: !4751, line: 107, baseType: !2275, size: 256, offset: 640)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !4750, file: !4751, line: 108, baseType: !145, size: 8, align: 64, offset: 896)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !4750, file: !4751, line: 110, baseType: !4768, size: 24, offset: 904)
!4768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 24, elements: !770)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !4750, file: !4751, line: 111, baseType: !350, size: 32, align: 64, offset: 960)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !4750, file: !4751, line: 113, baseType: !350, size: 32, offset: 992)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !4750, file: !4751, line: 114, baseType: !350, size: 32, offset: 1024)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !4750, file: !4751, line: 115, baseType: !350, size: 32, offset: 1056)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !4750, file: !4751, line: 117, baseType: !350, size: 32, offset: 1088)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !4750, file: !4751, line: 118, baseType: !316, size: 64, align: 64, offset: 1152)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !4750, file: !4751, line: 120, baseType: !316, size: 64, offset: 1216)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !4750, file: !4751, line: 121, baseType: !316, size: 64, offset: 1280)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !4750, file: !4751, line: 122, baseType: !316, size: 64, offset: 1344)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !4750, file: !4751, line: 123, baseType: !316, size: 64, offset: 1408)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !4750, file: !4751, line: 133, baseType: !316, size: 64, offset: 1472)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !4750, file: !4751, line: 137, baseType: !316, size: 64, offset: 1536)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !4750, file: !4751, line: 142, baseType: !316, size: 64, offset: 1600)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !4750, file: !4751, line: 143, baseType: !316, size: 64, offset: 1664)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !4750, file: !4751, line: 146, baseType: !316, size: 64, offset: 1728)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !4750, file: !4751, line: 147, baseType: !316, size: 64, offset: 1792)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !4750, file: !4751, line: 148, baseType: !316, size: 64, offset: 1856)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !4750, file: !4751, line: 149, baseType: !316, size: 64, offset: 1920)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !4750, file: !4751, line: 154, baseType: !316, size: 64, offset: 1984)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !4750, file: !4751, line: 155, baseType: !316, size: 64, offset: 2048)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !4750, file: !4751, line: 156, baseType: !316, size: 64, offset: 2112)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !4750, file: !4751, line: 158, baseType: !316, size: 64, offset: 2176)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !4750, file: !4751, line: 159, baseType: !316, size: 64, offset: 2240)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !4750, file: !4751, line: 162, baseType: !316, size: 64, offset: 2304)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !4750, file: !4751, line: 163, baseType: !316, size: 64, offset: 2368)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !4750, file: !4751, line: 164, baseType: !316, size: 64, offset: 2432)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !4750, file: !4751, line: 167, baseType: !316, size: 64, offset: 2496)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !4750, file: !4751, line: 168, baseType: !316, size: 64, offset: 2560)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !4750, file: !4751, line: 171, baseType: !316, size: 64, offset: 2624)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !4750, file: !4751, line: 172, baseType: !316, size: 64, offset: 2688)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !4750, file: !4751, line: 175, baseType: !316, size: 64, offset: 2752)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !4750, file: !4751, line: 178, baseType: !316, size: 64, offset: 2816)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !4750, file: !4751, line: 179, baseType: !316, size: 64, offset: 2880)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !4750, file: !4751, line: 182, baseType: !350, size: 32, offset: 2944)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !4750, file: !4751, line: 186, baseType: !316, size: 64, align: 64, offset: 3008)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !4750, file: !4751, line: 194, baseType: !316, size: 64, offset: 3072)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !4750, file: !4751, line: 195, baseType: !316, size: 64, offset: 3136)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !4750, file: !4751, line: 199, baseType: !316, size: 64, offset: 3200)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !4750, file: !4751, line: 200, baseType: !316, size: 64, offset: 3264)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !4750, file: !4751, line: 203, baseType: !316, size: 64, offset: 3328)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !4750, file: !4751, line: 204, baseType: !316, size: 64, offset: 3392)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !4624, file: !4625, line: 222, baseType: !7, size: 32, offset: 7936)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !4624, file: !4625, line: 223, baseType: !4812, size: 64, offset: 8000)
!4812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4813, size: 64)
!4813 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !4625, line: 223, flags: DIFlagFwdDecl)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !4624, file: !4625, line: 230, baseType: !926, size: 8, offset: 8064)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !4624, file: !4625, line: 231, baseType: !895, size: 16, offset: 8080)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !4624, file: !4625, line: 232, baseType: !895, size: 16, offset: 8096)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !4624, file: !4625, line: 234, baseType: !678, size: 64, offset: 8128)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !4624, file: !4625, line: 237, baseType: !734, size: 256, offset: 8192)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !4624, file: !4625, line: 243, baseType: !867, size: 320, offset: 8448)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !366, file: !367, line: 1111, baseType: !4821, size: 64, offset: 15424)
!4821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4822, size: 64)
!4822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !4625, line: 20, size: 16640, elements: !4823)
!4823 = !{!4824, !4825, !4826, !4827}
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !4822, file: !4625, line: 21, baseType: !119, size: 32)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4822, file: !4625, line: 22, baseType: !380, size: 32, offset: 32)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !4822, file: !4625, line: 23, baseType: !114, size: 192, offset: 64)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !4822, file: !4625, line: 24, baseType: !4828, size: 16384, offset: 256)
!4828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4829, size: 16384, elements: !1523)
!4829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !4636, line: 51, size: 256, elements: !4830)
!4830 = !{!4831}
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !4829, file: !4636, line: 52, baseType: !4832, size: 256)
!4832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !4636, line: 37, size: 256, elements: !4833)
!4833 = !{!4834, !4841, !4842, !4846}
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !4832, file: !4636, line: 39, baseType: !4835, size: 64)
!4835 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !4836, line: 83, baseType: !4837)
!4836 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!4837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4838, size: 64)
!4838 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !4836, line: 82, baseType: !4839)
!4839 = !DISubroutineType(types: !4840)
!4840 = !{null, !82}
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !4832, file: !4636, line: 40, baseType: !99, size: 64, offset: 64)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !4832, file: !4636, line: 46, baseType: !4843, size: 64, offset: 128)
!4843 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !4836, line: 86, baseType: !4844)
!4844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4845, size: 64)
!4845 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !4836, line: 85, baseType: !3229)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !4832, file: !4636, line: 48, baseType: !4640, size: 64, offset: 192)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !366, file: !367, line: 1112, baseType: !4640, size: 64, offset: 15488)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !366, file: !367, line: 1113, baseType: !4640, size: 64, offset: 15552)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !366, file: !367, line: 1115, baseType: !4640, size: 64, offset: 15616)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !366, file: !367, line: 1116, baseType: !4635, size: 192, offset: 15680)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !366, file: !367, line: 1117, baseType: !99, size: 64, offset: 15872)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !366, file: !367, line: 1118, baseType: !95, size: 64, offset: 15936)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !366, file: !367, line: 1119, baseType: !7, size: 32, offset: 16000)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !366, file: !367, line: 1121, baseType: !717, size: 64, offset: 16064)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !366, file: !367, line: 1125, baseType: !4856, size: 64, offset: 16128)
!4856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4857, size: 64)
!4857 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !367, line: 43, flags: DIFlagFwdDecl)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !366, file: !367, line: 1127, baseType: !808, size: 32, offset: 16192)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !366, file: !367, line: 1128, baseType: !7, size: 32, offset: 16224)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !366, file: !367, line: 1130, baseType: !4861, size: 128, offset: 16256)
!4861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !4862, line: 37, size: 128, elements: !4863)
!4862 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!4863 = !{!4864, !4865, !4866}
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4861, file: !4862, line: 38, baseType: !82, size: 32)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !4861, file: !4862, line: 39, baseType: !109, size: 32, offset: 32)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4861, file: !4862, line: 40, baseType: !4867, size: 64, offset: 64)
!4867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4868, size: 64)
!4868 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !4862, line: 24, flags: DIFlagFwdDecl)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !366, file: !367, line: 1131, baseType: !4870, size: 256, offset: 16384)
!4870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !4871, line: 12, size: 256, elements: !4872)
!4871 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!4872 = !{!4873, !4874, !4875, !4876}
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !4870, file: !4871, line: 13, baseType: !937, size: 64)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4870, file: !4871, line: 14, baseType: !99, size: 64, offset: 64)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4870, file: !4871, line: 15, baseType: !99, size: 64, offset: 128)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !4870, file: !4871, line: 16, baseType: !926, size: 8, offset: 192)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !366, file: !367, line: 1134, baseType: !315, size: 64, offset: 16640)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !366, file: !367, line: 1135, baseType: !315, size: 64, offset: 16704)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !366, file: !367, line: 1138, baseType: !119, size: 32, offset: 16768)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !366, file: !367, line: 1141, baseType: !521, size: 32, offset: 16800)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !366, file: !367, line: 1143, baseType: !4882, size: 64, offset: 16832)
!4882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !367, line: 735, size: 64, elements: !4883)
!4883 = !{!4884}
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4882, file: !367, line: 736, baseType: !4885, size: 64)
!4885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4882, size: 64)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !366, file: !367, line: 1147, baseType: !561, size: 128, offset: 16896)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !366, file: !367, line: 1149, baseType: !365, size: 64, offset: 17024)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !366, file: !367, line: 1151, baseType: !4889, size: 64, offset: 17088)
!4889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4890, size: 64)
!4890 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !367, line: 1151, flags: DIFlagFwdDecl)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !366, file: !367, line: 1188, baseType: !80, size: 64, offset: 17152)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !366, file: !367, line: 1191, baseType: !4893, size: 64, offset: 17216)
!4893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4894, size: 64)
!4894 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !367, line: 44, flags: DIFlagFwdDecl)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !366, file: !367, line: 1194, baseType: !4896, size: 64, offset: 17280)
!4896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4897, size: 64)
!4897 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !367, line: 45, flags: DIFlagFwdDecl)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !366, file: !367, line: 1197, baseType: !4899, size: 64, offset: 17344)
!4899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4900, size: 64)
!4900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !2101, line: 155, size: 64, elements: !4901)
!4901 = !{!4902}
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "reclaimed", scope: !4900, file: !2101, line: 157, baseType: !99, size: 64)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !366, file: !367, line: 1199, baseType: !4904, size: 64, offset: 17408)
!4904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4905, size: 64)
!4905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2152, line: 99, size: 128, elements: !4906)
!4906 = !{!4907, !4908, !4909}
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4905, file: !2152, line: 100, baseType: !727, size: 64)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !4905, file: !2152, line: 101, baseType: !109, size: 32, offset: 64)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !4905, file: !2152, line: 103, baseType: !86, size: 16, offset: 96)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !366, file: !367, line: 1202, baseType: !4911, size: 64, offset: 17472)
!4911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4912, size: 64)
!4912 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !367, line: 48, flags: DIFlagFwdDecl)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !366, file: !367, line: 1205, baseType: !99, size: 64, offset: 17536)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !366, file: !367, line: 1206, baseType: !4915, size: 64, offset: 17600)
!4915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4916, size: 64)
!4916 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !4636, line: 14, baseType: !4917)
!4917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !4636, line: 12, size: 384, elements: !4918)
!4918 = !{!4919}
!4919 = !DIDerivedType(tag: DW_TAG_member, scope: !4917, file: !4636, line: 13, baseType: !4920, size: 384)
!4920 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4917, file: !4636, line: 13, size: 384, elements: !4921)
!4921 = !{!4922, !4923, !4924, !4925}
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !4920, file: !4636, line: 13, baseType: !82, size: 32)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !4920, file: !4636, line: 13, baseType: !82, size: 32, offset: 32)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !4920, file: !4636, line: 13, baseType: !82, size: 32, offset: 64)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !4920, file: !4636, line: 13, baseType: !4926, size: 256, offset: 128)
!4926 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !4927, line: 37, size: 256, elements: !4928)
!4927 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!4928 = !{!4929, !4934, !4947, !4953, !4962, !4989, !4994}
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !4926, file: !4927, line: 42, baseType: !4930, size: 64)
!4930 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4926, file: !4927, line: 39, size: 64, elements: !4931)
!4931 = !{!4932, !4933}
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4930, file: !4927, line: 40, baseType: !4248, size: 32)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4930, file: !4927, line: 41, baseType: !814, size: 32, offset: 32)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !4926, file: !4927, line: 50, baseType: !4935, size: 192)
!4935 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4926, file: !4927, line: 45, size: 192, elements: !4936)
!4936 = !{!4937, !4939, !4940, !4946}
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !4935, file: !4927, line: 46, baseType: !4938, size: 32)
!4938 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !97, line: 95, baseType: !82)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !4935, file: !4927, line: 47, baseType: !82, size: 32, offset: 32)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4935, file: !4927, line: 48, baseType: !4941, size: 64, offset: 64)
!4941 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !4927, line: 11, baseType: !4942)
!4942 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !4927, line: 8, size: 64, elements: !4943)
!4943 = !{!4944, !4945}
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !4942, file: !4927, line: 9, baseType: !82, size: 32)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !4942, file: !4927, line: 10, baseType: !80, size: 64)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !4935, file: !4927, line: 49, baseType: !82, size: 32, offset: 128)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !4926, file: !4927, line: 57, baseType: !4948, size: 128)
!4948 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4926, file: !4927, line: 53, size: 128, elements: !4949)
!4949 = !{!4950, !4951, !4952}
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4948, file: !4927, line: 54, baseType: !4248, size: 32)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4948, file: !4927, line: 55, baseType: !814, size: 32, offset: 32)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4948, file: !4927, line: 56, baseType: !4941, size: 64, offset: 64)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !4926, file: !4927, line: 66, baseType: !4954, size: 256)
!4954 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4926, file: !4927, line: 60, size: 256, elements: !4955)
!4955 = !{!4956, !4957, !4958, !4959, !4961}
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4954, file: !4927, line: 61, baseType: !4248, size: 32)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4954, file: !4927, line: 62, baseType: !814, size: 32, offset: 32)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !4954, file: !4927, line: 63, baseType: !82, size: 32, offset: 64)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !4954, file: !4927, line: 64, baseType: !4960, size: 64, offset: 128)
!4960 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !97, line: 94, baseType: !1381)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !4954, file: !4927, line: 65, baseType: !4960, size: 64, offset: 192)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !4926, file: !4927, line: 105, baseType: !4963, size: 256)
!4963 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4926, file: !4927, line: 69, size: 256, elements: !4964)
!4964 = !{!4965, !4966}
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !4963, file: !4927, line: 70, baseType: !80, size: 64)
!4966 = !DIDerivedType(tag: DW_TAG_member, scope: !4963, file: !4927, line: 79, baseType: !4967, size: 192, offset: 64)
!4967 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4963, file: !4927, line: 79, size: 192, elements: !4968)
!4968 = !{!4969, !4970, !4971, !4978, !4983}
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !4967, file: !4927, line: 81, baseType: !82, size: 32)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !4967, file: !4927, line: 86, baseType: !895, size: 16)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !4967, file: !4927, line: 92, baseType: !4972, size: 192)
!4972 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4967, file: !4927, line: 88, size: 192, elements: !4973)
!4973 = !{!4974, !4976, !4977}
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !4972, file: !4927, line: 89, baseType: !4975, size: 64)
!4975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 64, elements: !540)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !4972, file: !4927, line: 90, baseType: !80, size: 64, offset: 64)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !4972, file: !4927, line: 91, baseType: !80, size: 64, offset: 128)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !4967, file: !4927, line: 97, baseType: !4979, size: 96)
!4979 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4967, file: !4927, line: 94, size: 96, elements: !4980)
!4980 = !{!4981, !4982}
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !4979, file: !4927, line: 95, baseType: !4975, size: 64)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !4979, file: !4927, line: 96, baseType: !350, size: 32, offset: 64)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !4967, file: !4927, line: 103, baseType: !4984, size: 128)
!4984 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4967, file: !4927, line: 99, size: 128, elements: !4985)
!4985 = !{!4986, !4987, !4988}
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !4984, file: !4927, line: 100, baseType: !99, size: 64)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !4984, file: !4927, line: 101, baseType: !350, size: 32, offset: 64)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4984, file: !4927, line: 102, baseType: !350, size: 32, offset: 96)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !4926, file: !4927, line: 111, baseType: !4990, size: 128)
!4990 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4926, file: !4927, line: 108, size: 128, elements: !4991)
!4991 = !{!4992, !4993}
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !4990, file: !4927, line: 109, baseType: !343, size: 64)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !4990, file: !4927, line: 110, baseType: !82, size: 32, offset: 64)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !4926, file: !4927, line: 118, baseType: !4995, size: 128)
!4995 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4926, file: !4927, line: 114, size: 128, elements: !4996)
!4996 = !{!4997, !4998, !4999}
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !4995, file: !4927, line: 115, baseType: !80, size: 64)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !4995, file: !4927, line: 116, baseType: !82, size: 32, offset: 64)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !4995, file: !4927, line: 117, baseType: !7, size: 32, offset: 96)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !366, file: !367, line: 1208, baseType: !4720, size: 448, offset: 17664)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !366, file: !367, line: 1215, baseType: !315, size: 64, offset: 18112)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !366, file: !367, line: 1217, baseType: !315, size: 64, offset: 18176)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !366, file: !367, line: 1219, baseType: !315, size: 64, offset: 18240)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !366, file: !367, line: 1223, baseType: !5005, size: 64, offset: 18304)
!5005 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !5006, line: 99, baseType: !5007)
!5006 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!5007 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5006, line: 99, size: 64, elements: !5008)
!5008 = !{!5009}
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !5007, file: !5006, line: 99, baseType: !629, size: 64)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !366, file: !367, line: 1225, baseType: !1198, size: 32, offset: 18368)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !366, file: !367, line: 1226, baseType: !82, size: 32, offset: 18400)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !366, file: !367, line: 1227, baseType: !82, size: 32, offset: 18432)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !366, file: !367, line: 1231, baseType: !4362, size: 64, offset: 18496)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !366, file: !367, line: 1233, baseType: !157, size: 128, offset: 18560)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !366, file: !367, line: 1240, baseType: !5016, size: 64, offset: 18688)
!5016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5017, size: 64)
!5017 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !367, line: 62, flags: DIFlagFwdDecl)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !366, file: !367, line: 1242, baseType: !5019, size: 64, offset: 18752)
!5019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5020, size: 64)
!5020 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !367, line: 1242, flags: DIFlagFwdDecl)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !366, file: !367, line: 1244, baseType: !157, size: 128, offset: 18816)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !366, file: !367, line: 1245, baseType: !5023, size: 64, offset: 18944)
!5023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5024, size: 64)
!5024 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !367, line: 51, flags: DIFlagFwdDecl)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !366, file: !367, line: 1246, baseType: !734, size: 256, offset: 19008)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !366, file: !367, line: 1247, baseType: !7, size: 32, offset: 19264)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !366, file: !367, line: 1250, baseType: !5028, size: 64, offset: 19328)
!5028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5029, size: 64)
!5029 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !367, line: 57, flags: DIFlagFwdDecl)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !366, file: !367, line: 1251, baseType: !734, size: 256, offset: 19392)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !366, file: !367, line: 1252, baseType: !157, size: 128, offset: 19648)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !366, file: !367, line: 1259, baseType: !1805, size: 64, offset: 19776)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !366, file: !367, line: 1260, baseType: !895, size: 16, offset: 19840)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !366, file: !367, line: 1261, baseType: !895, size: 16, offset: 19856)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !366, file: !367, line: 1314, baseType: !5036, size: 64, offset: 19904)
!5036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5037, size: 64)
!5037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !5038, line: 62, size: 256, align: 256, elements: !5039)
!5038 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!5039 = !{!5040, !5041, !5042, !5043, !5044, !5045, !5046}
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !5037, file: !5038, line: 75, baseType: !350, size: 32)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !5037, file: !5038, line: 90, baseType: !350, size: 32, offset: 32)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !5037, file: !5038, line: 112, baseType: !316, size: 64, offset: 64)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5037, file: !5038, line: 132, baseType: !350, size: 32, offset: 128)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !5037, file: !5038, line: 140, baseType: !350, size: 32, offset: 160)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !5037, file: !5038, line: 149, baseType: !350, size: 32, offset: 192)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5037, file: !5038, line: 154, baseType: !5047, offset: 224)
!5047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, elements: !804)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !366, file: !367, line: 1315, baseType: !349, size: 32, offset: 19968)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !366, file: !367, line: 1316, baseType: !349, size: 32, offset: 20000)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !366, file: !367, line: 1321, baseType: !99, size: 64, offset: 20032)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !366, file: !367, line: 1325, baseType: !82, size: 32, offset: 20096)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !366, file: !367, line: 1326, baseType: !82, size: 32, offset: 20128)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !366, file: !367, line: 1327, baseType: !82, size: 32, offset: 20160)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !366, file: !367, line: 1328, baseType: !82, size: 32, offset: 20192)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !366, file: !367, line: 1329, baseType: !714, size: 128, align: 64, offset: 20224)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !366, file: !367, line: 1332, baseType: !5057, size: 128, offset: 20352)
!5057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !5058, line: 51, size: 128, elements: !5059)
!5058 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!5059 = !{!5060, !5065, !5066}
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !5057, file: !5058, line: 60, baseType: !5061, size: 64)
!5061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !5062, line: 7, size: 64, elements: !5063)
!5062 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!5063 = !{!5064}
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !5061, file: !5062, line: 12, baseType: !626, size: 64)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !5057, file: !5058, line: 63, baseType: !926, size: 8, offset: 64)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !5057, file: !5058, line: 70, baseType: !926, size: 8, offset: 72)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !366, file: !367, line: 1335, baseType: !3906, size: 64, offset: 20480)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !366, file: !367, line: 1337, baseType: !5069, size: 128, offset: 20544)
!5069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !5058, line: 39, size: 128, elements: !5070)
!5070 = !{!5071, !5072, !5073}
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !5069, file: !5058, line: 40, baseType: !1604, size: 64)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5069, file: !5058, line: 42, baseType: !350, size: 32, offset: 64)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5069, file: !5058, line: 43, baseType: !350, size: 32, offset: 96)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !366, file: !367, line: 1340, baseType: !5075, size: 64, offset: 20672)
!5075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5076, size: 64)
!5076 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !367, line: 69, flags: DIFlagFwdDecl)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !366, file: !367, line: 1351, baseType: !82, size: 32, offset: 20736)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !366, file: !367, line: 1352, baseType: !82, size: 32, offset: 20768)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !366, file: !367, line: 1354, baseType: !99, size: 64, offset: 20800)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !366, file: !367, line: 1364, baseType: !315, size: 64, offset: 20864)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !366, file: !367, line: 1365, baseType: !315, size: 64, offset: 20928)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !366, file: !367, line: 1412, baseType: !99, size: 64, offset: 20992)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !366, file: !367, line: 1453, baseType: !2147, size: 64, offset: 21056)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !366, file: !367, line: 1457, baseType: !5085, size: 64, offset: 21120)
!5085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5086, size: 64)
!5086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !305, line: 61, size: 576, elements: !5087)
!5087 = !{!5088, !5089, !5108, !5111, !5112, !5145, !5155}
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5086, file: !305, line: 62, baseType: !304, size: 32)
!5089 = !DIDerivedType(tag: DW_TAG_member, scope: !5086, file: !305, line: 64, baseType: !5090, size: 192, offset: 64)
!5090 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5086, file: !305, line: 64, size: 192, elements: !5091)
!5091 = !{!5092, !5103}
!5092 = !DIDerivedType(tag: DW_TAG_member, scope: !5090, file: !305, line: 65, baseType: !5093, size: 192)
!5093 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5090, file: !305, line: 65, size: 192, elements: !5094)
!5094 = !{!5095, !5102}
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !5093, file: !305, line: 66, baseType: !5096, size: 128)
!5096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !5097, line: 50, size: 128, elements: !5098)
!5097 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!5098 = !{!5099, !5100, !5101}
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !5096, file: !5097, line: 52, baseType: !99, size: 64)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !5096, file: !5097, line: 54, baseType: !7, size: 32, offset: 64)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !5096, file: !5097, line: 55, baseType: !7, size: 32, offset: 96)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !5093, file: !305, line: 67, baseType: !99, size: 64, offset: 128)
!5103 = !DIDerivedType(tag: DW_TAG_member, scope: !5090, file: !305, line: 70, baseType: !5104, size: 192)
!5104 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5090, file: !305, line: 70, size: 192, elements: !5105)
!5105 = !{!5106, !5107}
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !5104, file: !305, line: 71, baseType: !714, size: 128, align: 64)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !5104, file: !305, line: 72, baseType: !99, size: 64, offset: 128)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !5086, file: !305, line: 76, baseType: !5109, size: 64, offset: 256)
!5109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5110, size: 64)
!5110 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !305, line: 76, flags: DIFlagFwdDecl)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !5086, file: !305, line: 77, baseType: !99, size: 64, offset: 320)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !5086, file: !305, line: 79, baseType: !5113, size: 64, offset: 384)
!5113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5114, size: 64)
!5114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !5097, line: 25, size: 256, elements: !5115)
!5115 = !{!5116, !5122, !5126}
!5116 = !DIDerivedType(tag: DW_TAG_member, scope: !5114, file: !5097, line: 26, baseType: !5117, size: 128)
!5117 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5114, file: !5097, line: 26, size: 128, elements: !5118)
!5118 = !{!5119, !5121}
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !5117, file: !5097, line: 27, baseType: !5120, size: 128)
!5120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 128, elements: !333)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !5117, file: !5097, line: 28, baseType: !5120, size: 128)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5114, file: !5097, line: 31, baseType: !5123, size: 64, offset: 128)
!5123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5124, size: 64)
!5124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5125)
!5125 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !5097, line: 23, flags: DIFlagFwdDecl)
!5126 = !DIDerivedType(tag: DW_TAG_member, scope: !5114, file: !5097, line: 33, baseType: !5127, size: 64, offset: 192)
!5127 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5114, file: !5097, line: 33, size: 64, elements: !5128)
!5128 = !{!5129, !5135, !5140}
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !5127, file: !5097, line: 38, baseType: !5130, size: 64)
!5130 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5127, file: !5097, line: 34, size: 64, elements: !5131)
!5131 = !{!5132, !5133, !5134}
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !5130, file: !5097, line: 35, baseType: !859, size: 32)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5130, file: !5097, line: 36, baseType: !143, size: 8, offset: 32)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !5130, file: !5097, line: 37, baseType: !143, size: 8, offset: 40)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !5127, file: !5097, line: 42, baseType: !5136, size: 16)
!5136 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5127, file: !5097, line: 39, size: 16, elements: !5137)
!5137 = !{!5138, !5139}
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !5136, file: !5097, line: 40, baseType: !143, size: 8)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5136, file: !5097, line: 41, baseType: !143, size: 8, offset: 8)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !5127, file: !5097, line: 46, baseType: !5141, size: 16)
!5141 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5127, file: !5097, line: 43, size: 16, elements: !5142)
!5142 = !{!5143, !5144}
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !5141, file: !5097, line: 44, baseType: !143, size: 8)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5141, file: !5097, line: 45, baseType: !143, size: 8, offset: 8)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !5086, file: !305, line: 81, baseType: !5146, size: 64, offset: 448)
!5146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5147, size: 64)
!5147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !305, line: 85, size: 384, elements: !5148)
!5148 = !{!5149, !5150, !5151, !5152, !5153, !5154}
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !5147, file: !305, line: 86, baseType: !5109, size: 64)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5147, file: !305, line: 87, baseType: !99, size: 64, offset: 64)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !5147, file: !305, line: 88, baseType: !99, size: 64, offset: 128)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !5147, file: !305, line: 89, baseType: !99, size: 64, offset: 192)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !5147, file: !305, line: 90, baseType: !926, size: 8, offset: 256)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5147, file: !305, line: 92, baseType: !5146, size: 64, offset: 320)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !5086, file: !305, line: 82, baseType: !7, size: 32, offset: 512)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !366, file: !367, line: 1463, baseType: !5157, offset: 21184)
!5157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !367, line: 739, elements: !699)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !366, file: !367, line: 1470, baseType: !714, size: 128, align: 64, offset: 21184)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !366, file: !367, line: 1471, baseType: !380, size: 32, offset: 21312)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !366, file: !367, line: 1472, baseType: !82, size: 32, offset: 21344)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !366, file: !367, line: 1474, baseType: !365, size: 64, offset: 21376)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !366, file: !367, line: 1475, baseType: !2376, size: 320, offset: 21440)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !366, file: !367, line: 1478, baseType: !5164, size: 64, offset: 21760)
!5164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5165, size: 64)
!5165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !5166, line: 49, size: 512, elements: !5167)
!5166 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!5167 = !{!5168, !5169, !5170, !5171, !5172, !5173, !5174, !5175, !5176}
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5165, file: !5166, line: 50, baseType: !5164, size: 64)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !5165, file: !5166, line: 51, baseType: !80, size: 64, offset: 64)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5165, file: !5166, line: 52, baseType: !99, size: 64, offset: 128)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5165, file: !5166, line: 53, baseType: !99, size: 64, offset: 192)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !5165, file: !5166, line: 54, baseType: !2007, size: 64, offset: 256)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !5165, file: !5166, line: 56, baseType: !7, size: 32, offset: 320)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !5165, file: !5166, line: 58, baseType: !7, size: 32, offset: 352)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !5165, file: !5166, line: 59, baseType: !318, size: 64, offset: 384)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !5165, file: !5166, line: 60, baseType: !2284, size: 64, offset: 448)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !366, file: !367, line: 1482, baseType: !380, size: 32, offset: 21824)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !366, file: !367, line: 1489, baseType: !80, size: 64, offset: 21888)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !366, file: !367, line: 1504, baseType: !80, size: 64, offset: 21952)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !366, file: !367, line: 1505, baseType: !316, size: 64, offset: 22016)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !366, file: !367, line: 1506, baseType: !315, size: 64, offset: 22080)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !366, file: !367, line: 1507, baseType: !316, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !366, file: !367, line: 1508, baseType: !316, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !366, file: !367, line: 1509, baseType: !316, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !366, file: !367, line: 1510, baseType: !714, size: 128, align: 64, offset: 22208)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !366, file: !367, line: 1511, baseType: !82, size: 32, offset: 22336)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !366, file: !367, line: 1515, baseType: !5188, size: 64, offset: 22400)
!5188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !394, line: 56, size: 64, elements: !5189)
!5189 = !{!5190}
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !5188, file: !394, line: 57, baseType: !397, size: 64)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !366, file: !367, line: 1518, baseType: !5188, size: 64, offset: 22464)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !366, file: !367, line: 1528, baseType: !714, size: 128, align: 64, offset: 22528)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !366, file: !367, line: 1552, baseType: !5194, size: 35328, offset: 23040)
!5194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !5195, line: 430, size: 35328, elements: !5196)
!5195 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!5196 = !{!5197, !5199, !5200, !5201, !5202, !5203, !5204, !5205, !5206, !5210, !5211, !5212, !5213, !5214, !5215, !5218, !5219, !5220, !5221}
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !5194, file: !5195, line: 432, baseType: !5198, size: 192)
!5198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4091, size: 192, elements: !770)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !5194, file: !5195, line: 436, baseType: !99, size: 64, offset: 192)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !5194, file: !5195, line: 440, baseType: !86, size: 16, offset: 256)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !5194, file: !5195, line: 441, baseType: !86, size: 16, offset: 272)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !5194, file: !5195, line: 442, baseType: !86, size: 16, offset: 288)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !5194, file: !5195, line: 443, baseType: !86, size: 16, offset: 304)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !5194, file: !5195, line: 447, baseType: !99, size: 64, offset: 320)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !5194, file: !5195, line: 448, baseType: !99, size: 64, offset: 384)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !5194, file: !5195, line: 459, baseType: !5207, size: 256, offset: 448)
!5207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5208, size: 256, elements: !791)
!5208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5209, size: 64)
!5209 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !5195, line: 428, flags: DIFlagFwdDecl)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !5194, file: !5195, line: 461, baseType: !99, size: 64, offset: 704)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !5194, file: !5195, line: 463, baseType: !99, size: 64, offset: 768)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !5194, file: !5195, line: 465, baseType: !99, size: 64, offset: 832)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !5194, file: !5195, line: 466, baseType: !99, size: 64, offset: 896)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !5194, file: !5195, line: 467, baseType: !99, size: 64, offset: 960)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !5194, file: !5195, line: 473, baseType: !5216, size: 64, offset: 1024)
!5216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5217, size: 64)
!5217 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !5195, line: 10, flags: DIFlagFwdDecl)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !5194, file: !5195, line: 480, baseType: !99, size: 64, offset: 1088)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !5194, file: !5195, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !5194, file: !5195, line: 491, baseType: !349, size: 32, offset: 1184)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !5194, file: !5195, line: 501, baseType: !5222, size: 33792, offset: 1536)
!5222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !5223, line: 448, size: 33792, elements: !5224)
!5223 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!5224 = !{!5225, !5226, !5227, !5387, !5388, !5394, !5395}
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !5222, file: !5223, line: 461, baseType: !7, size: 32)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !5222, file: !5223, line: 468, baseType: !99, size: 64, offset: 64)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !5222, file: !5223, line: 476, baseType: !5228, size: 64, offset: 128)
!5228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5229, size: 64)
!5229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !5223, line: 356, size: 33280, align: 512, elements: !5230)
!5230 = !{!5231, !5232, !5233, !5234, !5235, !5236, !5237, !5238, !5239, !5240}
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5229, file: !5223, line: 358, baseType: !7, size: 32)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !5229, file: !5223, line: 361, baseType: !7, size: 32, offset: 32)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5229, file: !5223, line: 364, baseType: !315, size: 64, offset: 64)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !5229, file: !5223, line: 367, baseType: !315, size: 64, offset: 128)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !5229, file: !5223, line: 370, baseType: !315, size: 64, offset: 192)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !5229, file: !5223, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !5229, file: !5223, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !5229, file: !5223, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !5229, file: !5223, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5229, file: !5223, line: 397, baseType: !5241, size: 32768, offset: 512)
!5241 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !5223, line: 348, size: 32768, elements: !5242)
!5242 = !{!5243, !5258, !5295, !5372, !5385}
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !5241, file: !5223, line: 349, baseType: !5244, size: 896)
!5244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !5223, line: 12, size: 896, elements: !5245)
!5245 = !{!5246, !5247, !5248, !5249, !5250, !5251, !5252, !5253, !5257}
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5244, file: !5223, line: 13, baseType: !349, size: 32)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5244, file: !5223, line: 14, baseType: !349, size: 32, offset: 32)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5244, file: !5223, line: 15, baseType: !349, size: 32, offset: 64)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5244, file: !5223, line: 16, baseType: !349, size: 32, offset: 96)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5244, file: !5223, line: 17, baseType: !349, size: 32, offset: 128)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5244, file: !5223, line: 18, baseType: !349, size: 32, offset: 160)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5244, file: !5223, line: 19, baseType: !349, size: 32, offset: 192)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5244, file: !5223, line: 22, baseType: !5254, size: 640, offset: 224)
!5254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !349, size: 640, elements: !5255)
!5255 = !{!5256}
!5256 = !DISubrange(count: 20)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5244, file: !5223, line: 25, baseType: !349, size: 32, offset: 864)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !5241, file: !5223, line: 350, baseType: !5259, size: 4096, align: 128)
!5259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !5223, line: 34, size: 4096, align: 128, elements: !5260)
!5260 = !{!5261, !5262, !5263, !5264, !5265, !5280, !5281, !5282, !5284, !5286, !5290}
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5259, file: !5223, line: 35, baseType: !153, size: 16)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5259, file: !5223, line: 36, baseType: !153, size: 16, offset: 16)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5259, file: !5223, line: 37, baseType: !153, size: 16, offset: 32)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !5259, file: !5223, line: 38, baseType: !153, size: 16, offset: 48)
!5265 = !DIDerivedType(tag: DW_TAG_member, scope: !5259, file: !5223, line: 39, baseType: !5266, size: 128, offset: 64)
!5266 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5259, file: !5223, line: 39, size: 128, elements: !5267)
!5267 = !{!5268, !5273}
!5268 = !DIDerivedType(tag: DW_TAG_member, scope: !5266, file: !5223, line: 40, baseType: !5269, size: 128)
!5269 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5266, file: !5223, line: 40, size: 128, elements: !5270)
!5270 = !{!5271, !5272}
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !5269, file: !5223, line: 41, baseType: !315, size: 64)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !5269, file: !5223, line: 42, baseType: !315, size: 64, offset: 64)
!5273 = !DIDerivedType(tag: DW_TAG_member, scope: !5266, file: !5223, line: 44, baseType: !5274, size: 128)
!5274 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5266, file: !5223, line: 44, size: 128, elements: !5275)
!5275 = !{!5276, !5277, !5278, !5279}
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5274, file: !5223, line: 45, baseType: !349, size: 32)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5274, file: !5223, line: 46, baseType: !349, size: 32, offset: 32)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5274, file: !5223, line: 47, baseType: !349, size: 32, offset: 64)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5274, file: !5223, line: 48, baseType: !349, size: 32, offset: 96)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !5259, file: !5223, line: 51, baseType: !349, size: 32, offset: 192)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !5259, file: !5223, line: 52, baseType: !349, size: 32, offset: 224)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5259, file: !5223, line: 55, baseType: !5283, size: 1024, offset: 256)
!5283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !349, size: 1024, elements: !2276)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !5259, file: !5223, line: 58, baseType: !5285, size: 2048, offset: 1280)
!5285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !349, size: 2048, elements: !1523)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !5259, file: !5223, line: 60, baseType: !5287, size: 384, offset: 3328)
!5287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !349, size: 384, elements: !5288)
!5288 = !{!5289}
!5289 = !DISubrange(count: 12)
!5290 = !DIDerivedType(tag: DW_TAG_member, scope: !5259, file: !5223, line: 62, baseType: !5291, size: 384, offset: 3712)
!5291 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5259, file: !5223, line: 62, size: 384, elements: !5292)
!5292 = !{!5293, !5294}
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !5291, file: !5223, line: 63, baseType: !5287, size: 384)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !5291, file: !5223, line: 64, baseType: !5287, size: 384)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !5241, file: !5223, line: 351, baseType: !5296, size: 1088)
!5296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !5223, line: 79, size: 1088, elements: !5297)
!5297 = !{!5298, !5299, !5300, !5301, !5302, !5303, !5304, !5305, !5306, !5307, !5308, !5309, !5310, !5311, !5312, !5371}
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5296, file: !5223, line: 80, baseType: !349, size: 32)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5296, file: !5223, line: 81, baseType: !349, size: 32, offset: 32)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5296, file: !5223, line: 82, baseType: !349, size: 32, offset: 64)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5296, file: !5223, line: 83, baseType: !349, size: 32, offset: 96)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5296, file: !5223, line: 84, baseType: !349, size: 32, offset: 128)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5296, file: !5223, line: 85, baseType: !349, size: 32, offset: 160)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5296, file: !5223, line: 86, baseType: !349, size: 32, offset: 192)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5296, file: !5223, line: 88, baseType: !5254, size: 640, offset: 224)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !5296, file: !5223, line: 89, baseType: !143, size: 8, offset: 864)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !5296, file: !5223, line: 90, baseType: !143, size: 8, offset: 872)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !5296, file: !5223, line: 91, baseType: !143, size: 8, offset: 880)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !5296, file: !5223, line: 92, baseType: !143, size: 8, offset: 888)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !5296, file: !5223, line: 93, baseType: !143, size: 8, offset: 896)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !5296, file: !5223, line: 94, baseType: !143, size: 8, offset: 904)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5296, file: !5223, line: 95, baseType: !5313, size: 64, offset: 960)
!5313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5314, size: 64)
!5314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !5315, line: 11, size: 128, elements: !5316)
!5315 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!5316 = !{!5317, !5318}
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !5314, file: !5315, line: 12, baseType: !343, size: 64)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5314, file: !5315, line: 13, baseType: !5319, size: 64, offset: 64)
!5319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5320, size: 64)
!5320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !5321, line: 103, size: 1344, elements: !5322)
!5321 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!5322 = !{!5323, !5324, !5325, !5326, !5327, !5328, !5329, !5330, !5331, !5332, !5333, !5334, !5335, !5336, !5337, !5338, !5339, !5340, !5351, !5352, !5353}
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !5320, file: !5321, line: 109, baseType: !99, size: 64)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !5320, file: !5321, line: 110, baseType: !99, size: 64, offset: 64)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !5320, file: !5321, line: 111, baseType: !99, size: 64, offset: 128)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !5320, file: !5321, line: 112, baseType: !99, size: 64, offset: 192)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !5320, file: !5321, line: 113, baseType: !99, size: 64, offset: 256)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !5320, file: !5321, line: 114, baseType: !99, size: 64, offset: 320)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !5320, file: !5321, line: 117, baseType: !99, size: 64, offset: 384)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !5320, file: !5321, line: 118, baseType: !99, size: 64, offset: 448)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !5320, file: !5321, line: 119, baseType: !99, size: 64, offset: 512)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !5320, file: !5321, line: 120, baseType: !99, size: 64, offset: 576)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !5320, file: !5321, line: 121, baseType: !99, size: 64, offset: 640)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !5320, file: !5321, line: 122, baseType: !99, size: 64, offset: 704)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !5320, file: !5321, line: 123, baseType: !99, size: 64, offset: 768)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !5320, file: !5321, line: 124, baseType: !99, size: 64, offset: 832)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !5320, file: !5321, line: 125, baseType: !99, size: 64, offset: 896)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !5320, file: !5321, line: 139, baseType: !99, size: 64, offset: 960)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !5320, file: !5321, line: 142, baseType: !99, size: 64, offset: 1024)
!5340 = !DIDerivedType(tag: DW_TAG_member, scope: !5320, file: !5321, line: 144, baseType: !5341, size: 64, offset: 1088)
!5341 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5320, file: !5321, line: 144, size: 64, elements: !5342)
!5342 = !{!5343, !5344, !5345}
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !5341, file: !5321, line: 146, baseType: !153, size: 16)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !5341, file: !5321, line: 148, baseType: !315, size: 64)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !5341, file: !5321, line: 150, baseType: !5346, size: 64)
!5346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !5321, line: 59, size: 64, elements: !5347)
!5347 = !{!5348, !5349, !5350}
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !5346, file: !5321, line: 61, baseType: !315, size: 16, flags: DIFlagBitField, extraData: i64 0)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !5346, file: !5321, line: 63, baseType: !315, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !5346, file: !5321, line: 65, baseType: !315, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5320, file: !5321, line: 153, baseType: !99, size: 64, offset: 1152)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !5320, file: !5321, line: 154, baseType: !99, size: 64, offset: 1216)
!5353 = !DIDerivedType(tag: DW_TAG_member, scope: !5320, file: !5321, line: 156, baseType: !5354, size: 64, offset: 1280)
!5354 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5320, file: !5321, line: 156, size: 64, elements: !5355)
!5355 = !{!5356, !5357, !5358}
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !5354, file: !5321, line: 158, baseType: !153, size: 16)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !5354, file: !5321, line: 160, baseType: !315, size: 64)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !5354, file: !5321, line: 162, baseType: !5359, size: 64)
!5359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !5321, line: 69, size: 64, elements: !5360)
!5360 = !{!5361, !5362, !5363, !5364, !5365, !5366, !5367, !5368, !5369, !5370}
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !5359, file: !5321, line: 71, baseType: !315, size: 16, flags: DIFlagBitField, extraData: i64 0)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !5359, file: !5321, line: 73, baseType: !315, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !5359, file: !5321, line: 75, baseType: !315, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !5359, file: !5321, line: 77, baseType: !315, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !5359, file: !5321, line: 80, baseType: !315, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5359, file: !5321, line: 83, baseType: !315, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !5359, file: !5321, line: 86, baseType: !315, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !5359, file: !5321, line: 88, baseType: !315, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !5359, file: !5321, line: 93, baseType: !315, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !5359, file: !5321, line: 100, baseType: !315, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !5296, file: !5223, line: 96, baseType: !349, size: 32, offset: 1024)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !5241, file: !5223, line: 352, baseType: !5373, size: 4608, align: 512)
!5373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !5223, line: 333, size: 4608, align: 512, elements: !5374)
!5374 = !{!5375, !5376, !5383}
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !5373, file: !5223, line: 334, baseType: !5259, size: 4096, align: 128)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !5373, file: !5223, line: 335, baseType: !5377, size: 512, offset: 4096)
!5377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !5223, line: 312, size: 512, elements: !5378)
!5378 = !{!5379, !5380, !5381}
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5377, file: !5223, line: 313, baseType: !315, size: 64)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !5377, file: !5223, line: 314, baseType: !315, size: 64, offset: 64)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5377, file: !5223, line: 315, baseType: !5382, size: 384, offset: 128)
!5382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 384, elements: !913)
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !5373, file: !5223, line: 336, baseType: !5384, offset: 4608)
!5384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, elements: !804)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !5241, file: !5223, line: 353, baseType: !5386, size: 32768)
!5386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 32768, elements: !4419)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !5222, file: !5223, line: 484, baseType: !5228, size: 64, offset: 192)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !5222, file: !5223, line: 491, baseType: !5389, size: 128, offset: 256)
!5389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !5223, line: 404, size: 128, elements: !5390)
!5390 = !{!5391, !5392, !5393}
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !5389, file: !5223, line: 424, baseType: !315, size: 64)
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !5389, file: !5223, line: 432, baseType: !7, size: 32, offset: 64)
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !5389, file: !5223, line: 440, baseType: !7, size: 32, offset: 96)
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !5222, file: !5223, line: 498, baseType: !5389, size: 128, offset: 384)
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !5222, file: !5223, line: 508, baseType: !5229, size: 33280, align: 512, offset: 512)
!5396 = !{!5397, !5408, !5410, !5412, !5417, !5422, !5427, !5432, !5437, !5442, !5447, !5452, !5454, !5459, !5464, !5469, !5474, !0, !5476, !5480, !5485, !5487}
!5397 = !DIGlobalVariableExpression(var: !5398, expr: !DIExpression())
!5398 = distinct !DIGlobalVariable(name: "__setup_setup_storage_paranoia", scope: !2, file: !3, line: 103, type: !5399, isLocal: true, isDefinition: true, align: 64)
!5399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obs_kernel_param", file: !5400, line: 324, size: 192, elements: !5401)
!5400 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!5401 = !{!5402, !5403, !5407}
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !5399, file: !5400, line: 325, baseType: !76, size: 64)
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "setup_func", scope: !5399, file: !5400, line: 326, baseType: !5404, size: 64, offset: 64)
!5404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5405, size: 64)
!5405 = !DISubroutineType(types: !5406)
!5406 = !{!82, !937}
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "early", scope: !5399, file: !5400, line: 327, baseType: !82, size: 32, offset: 128)
!5408 = !DIGlobalVariableExpression(var: !5409, expr: !DIExpression())
!5409 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_efivar_reserved_space345", scope: !2, file: !3, line: 123, type: !80, isLocal: true, isDefinition: true)
!5410 = !DIGlobalVariableExpression(var: !5411, expr: !DIExpression())
!5411 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_efi_query_variable_store346", scope: !2, file: !3, line: 231, type: !80, isLocal: true, isDefinition: true)
!5412 = !DIGlobalVariableExpression(var: !5413, expr: !DIExpression())
!5413 = distinct !DIGlobalVariable(scope: null, file: !3, line: 263, type: !5414, isLocal: true, isDefinition: true)
!5414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 440, elements: !5415)
!5415 = !{!5416}
!5416 = !DISubrange(count: 55)
!5417 = !DIGlobalVariableExpression(var: !5418, expr: !DIExpression())
!5418 = distinct !DIGlobalVariable(scope: null, file: !3, line: 268, type: !5419, isLocal: true, isDefinition: true)
!5419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 392, elements: !5420)
!5420 = !{!5421}
!5421 = !DISubrange(count: 49)
!5422 = !DIGlobalVariableExpression(var: !5423, expr: !DIExpression())
!5423 = distinct !DIGlobalVariable(scope: null, file: !3, line: 284, type: !5424, isLocal: true, isDefinition: true)
!5424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 384, elements: !5425)
!5425 = !{!5426}
!5426 = !DISubrange(count: 48)
!5427 = !DIGlobalVariableExpression(var: !5428, expr: !DIExpression())
!5428 = distinct !DIGlobalVariable(scope: null, file: !3, line: 291, type: !5429, isLocal: true, isDefinition: true)
!5429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 376, elements: !5430)
!5430 = !{!5431}
!5431 = !DISubrange(count: 47)
!5432 = !DIGlobalVariableExpression(var: !5433, expr: !DIExpression())
!5433 = distinct !DIGlobalVariable(scope: null, file: !3, line: 481, type: !5434, isLocal: true, isDefinition: true)
!5434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 336, elements: !5435)
!5435 = !{!5436}
!5436 = !DISubrange(count: 42)
!5437 = !DIGlobalVariableExpression(var: !5438, expr: !DIExpression())
!5438 = distinct !DIGlobalVariable(scope: null, file: !3, line: 487, type: !5439, isLocal: true, isDefinition: true)
!5439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 296, elements: !5440)
!5440 = !{!5441}
!5441 = !DISubrange(count: 37)
!5442 = !DIGlobalVariableExpression(var: !5443, expr: !DIExpression())
!5443 = distinct !DIGlobalVariable(scope: null, file: !3, line: 510, type: !5444, isLocal: true, isDefinition: true)
!5444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 328, elements: !5445)
!5445 = !{!5446}
!5446 = !DISubrange(count: 41)
!5447 = !DIGlobalVariableExpression(var: !5448, expr: !DIExpression())
!5448 = distinct !DIGlobalVariable(scope: null, file: !3, line: 552, type: !5449, isLocal: true, isDefinition: true)
!5449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 344, elements: !5450)
!5450 = !{!5451}
!5451 = !DISubrange(count: 43)
!5452 = !DIGlobalVariableExpression(var: !5453, expr: !DIExpression())
!5453 = distinct !DIGlobalVariable(scope: null, file: !3, line: 582, type: !1473, isLocal: true, isDefinition: true)
!5454 = !DIGlobalVariableExpression(var: !5455, expr: !DIExpression())
!5455 = distinct !DIGlobalVariable(scope: null, file: !3, line: 743, type: !5456, isLocal: true, isDefinition: true)
!5456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 480, elements: !5457)
!5457 = !{!5458}
!5458 = !DISubrange(count: 60)
!5459 = !DIGlobalVariableExpression(var: !5460, expr: !DIExpression())
!5460 = distinct !DIGlobalVariable(scope: null, file: !3, line: 743, type: !5461, isLocal: true, isDefinition: true)
!5461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 248, elements: !5462)
!5462 = !{!5463}
!5463 = !DISubrange(count: 31)
!5464 = !DIGlobalVariableExpression(var: !5465, expr: !DIExpression())
!5465 = distinct !DIGlobalVariable(scope: null, file: !3, line: 755, type: !5466, isLocal: true, isDefinition: true)
!5466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 432, elements: !5467)
!5467 = !{!5468}
!5468 = !DISubrange(count: 54)
!5469 = !DIGlobalVariableExpression(var: !5470, expr: !DIExpression())
!5470 = distinct !DIGlobalVariable(scope: null, file: !3, line: 771, type: !5471, isLocal: true, isDefinition: true)
!5471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 472, elements: !5472)
!5472 = !{!5473}
!5473 = !DISubrange(count: 59)
!5474 = !DIGlobalVariableExpression(var: !5475, expr: !DIExpression())
!5475 = distinct !DIGlobalVariable(name: "efi_no_storage_paranoia", scope: !2, file: !3, line: 82, type: !926, isLocal: true, isDefinition: true)
!5476 = !DIGlobalVariableExpression(var: !5477, expr: !DIExpression())
!5477 = distinct !DIGlobalVariable(name: "efi_dummy_name", scope: !2, file: !3, line: 80, type: !5478, isLocal: true, isDefinition: true)
!5478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5479, size: 96, elements: !913)
!5479 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !313)
!5480 = !DIGlobalVariableExpression(var: !5481, expr: !DIExpression())
!5481 = distinct !DIGlobalVariable(scope: null, file: !49, line: 480, type: !5482, isLocal: true, isDefinition: true)
!5482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 168, elements: !5483)
!5483 = !{!5484}
!5484 = !DISubrange(count: 21)
!5485 = !DIGlobalVariableExpression(var: !5486, expr: !DIExpression())
!5486 = distinct !DIGlobalVariable(scope: null, file: !3, line: 401, type: !5429, isLocal: true, isDefinition: true)
!5487 = !DIGlobalVariableExpression(var: !5488, expr: !DIExpression())
!5488 = distinct !DIGlobalVariable(scope: null, file: !3, line: 404, type: !5489, isLocal: true, isDefinition: true)
!5489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 368, elements: !5490)
!5490 = !{!5491}
!5491 = !DISubrange(count: 46)
!5492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 192, elements: !5493)
!5493 = !{!5494}
!5494 = !DISubrange(count: 24)
!5495 = !{i32 7, !"Dwarf Version", i32 5}
!5496 = !{i32 2, !"Debug Info Version", i32 3}
!5497 = !{i32 1, !"wchar_size", i32 2}
!5498 = !{i32 8, !"cf-protection-branch", i32 1}
!5499 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5500 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5501 = !{i32 1, !"Code Model", i32 2}
!5502 = !{i32 1, !"override-stack-alignment", i32 8}
!5503 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5504 = distinct !DISubprogram(name: "setup_storage_paranoia", scope: !3, file: !3, line: 98, type: !5405, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5505)
!5505 = !{!5506}
!5506 = !DILocalVariable(name: "arg", arg: 1, scope: !5504, file: !3, line: 98, type: !937)
!5507 = !DILocation(line: 98, column: 48, scope: !5504)
!5508 = !DILocation(line: 100, column: 26, scope: !5504)
!5509 = !DILocation(line: 101, column: 2, scope: !5504)
!5510 = distinct !DISubprogram(name: "efi_delete_dummy_variable", scope: !3, file: !3, line: 108, type: !3229, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5511 = !DILocation(line: 110, column: 6, scope: !5510)
!5512 = !DILocation(line: 111, column: 11, scope: !5510)
!5513 = !DILocation(line: 110, column: 2, scope: !5510)
!5514 = !DILocation(line: 115, column: 1, scope: !5510)
!5515 = distinct !DISubprogram(name: "efivar_reserved_space", scope: !3, file: !3, line: 117, type: !5516, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5516 = !DISubroutineType(types: !5517)
!5517 = !{!315}
!5518 = !DILocation(line: 119, column: 6, scope: !5519)
!5519 = distinct !DILexicalBlock(scope: !5515, file: !3, line: 119, column: 6)
!5520 = !{i8 0, i8 2}
!5521 = !DILocation(line: 119, column: 6, scope: !5515)
!5522 = !DILocation(line: 120, column: 3, scope: !5519)
!5523 = !DILocation(line: 121, column: 2, scope: !5515)
!5524 = !DILocation(line: 122, column: 1, scope: !5515)
!5525 = distinct !DISubprogram(name: "efi_query_variable_store", scope: !3, file: !3, line: 159, type: !5526, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5529)
!5526 = !DISubroutineType(types: !5527)
!5527 = !{!5528, !349, !99, !926}
!5528 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_status_t", file: !32, line: 47, baseType: !99)
!5529 = !{!5530, !5531, !5532, !5533, !5534, !5535, !5536, !5537, !5540}
!5530 = !DILocalVariable(name: "attributes", arg: 1, scope: !5525, file: !3, line: 159, type: !349)
!5531 = !DILocalVariable(name: "size", arg: 2, scope: !5525, file: !3, line: 159, type: !99)
!5532 = !DILocalVariable(name: "nonblocking", arg: 3, scope: !5525, file: !3, line: 160, type: !926)
!5533 = !DILocalVariable(name: "status", scope: !5525, file: !3, line: 162, type: !5528)
!5534 = !DILocalVariable(name: "storage_size", scope: !5525, file: !3, line: 163, type: !315)
!5535 = !DILocalVariable(name: "remaining_size", scope: !5525, file: !3, line: 163, type: !315)
!5536 = !DILocalVariable(name: "max_size", scope: !5525, file: !3, line: 163, type: !315)
!5537 = !DILocalVariable(name: "dummy_size", scope: !5538, file: !3, line: 189, type: !99)
!5538 = distinct !DILexicalBlock(scope: !5539, file: !3, line: 182, column: 29)
!5539 = distinct !DILexicalBlock(scope: !5525, file: !3, line: 181, column: 6)
!5540 = !DILocalVariable(name: "dummy", scope: !5538, file: !3, line: 190, type: !80)
!5541 = !DILocation(line: 159, column: 43, scope: !5525)
!5542 = !DILocation(line: 159, column: 69, scope: !5525)
!5543 = !DILocation(line: 160, column: 16, scope: !5525)
!5544 = !DILocation(line: 162, column: 2, scope: !5525)
!5545 = !DILocation(line: 162, column: 15, scope: !5525)
!5546 = !DILocation(line: 163, column: 2, scope: !5525)
!5547 = !DILocation(line: 163, column: 6, scope: !5525)
!5548 = !DILocation(line: 163, column: 20, scope: !5525)
!5549 = !DILocation(line: 163, column: 36, scope: !5525)
!5550 = !DILocation(line: 165, column: 8, scope: !5551)
!5551 = distinct !DILexicalBlock(scope: !5525, file: !3, line: 165, column: 6)
!5552 = !DILocation(line: 165, column: 19, scope: !5551)
!5553 = !DILocation(line: 165, column: 6, scope: !5525)
!5554 = !DILocation(line: 166, column: 3, scope: !5551)
!5555 = !DILocation(line: 168, column: 6, scope: !5556)
!5556 = distinct !DILexicalBlock(scope: !5525, file: !3, line: 168, column: 6)
!5557 = !DILocation(line: 168, column: 6, scope: !5525)
!5558 = !DILocation(line: 169, column: 43, scope: !5556)
!5559 = !DILocation(line: 169, column: 55, scope: !5556)
!5560 = !DILocation(line: 169, column: 10, scope: !5556)
!5561 = !DILocation(line: 169, column: 3, scope: !5556)
!5562 = !DILocation(line: 171, column: 15, scope: !5525)
!5563 = !DILocation(line: 171, column: 35, scope: !5525)
!5564 = !DILocation(line: 171, column: 11, scope: !5525)
!5565 = !DILocation(line: 171, column: 9, scope: !5525)
!5566 = !DILocation(line: 173, column: 6, scope: !5567)
!5567 = distinct !DILexicalBlock(scope: !5525, file: !3, line: 173, column: 6)
!5568 = !DILocation(line: 173, column: 13, scope: !5567)
!5569 = !DILocation(line: 173, column: 6, scope: !5525)
!5570 = !DILocation(line: 174, column: 10, scope: !5567)
!5571 = !DILocation(line: 174, column: 3, scope: !5567)
!5572 = !DILocation(line: 181, column: 7, scope: !5539)
!5573 = !DILocation(line: 181, column: 24, scope: !5539)
!5574 = !DILocation(line: 181, column: 22, scope: !5539)
!5575 = !DILocation(line: 181, column: 29, scope: !5539)
!5576 = !DILocation(line: 181, column: 48, scope: !5539)
!5577 = !DILocation(line: 182, column: 4, scope: !5539)
!5578 = !DILocation(line: 181, column: 6, scope: !5525)
!5579 = !DILocation(line: 189, column: 3, scope: !5538)
!5580 = !DILocation(line: 189, column: 17, scope: !5538)
!5581 = !DILocation(line: 189, column: 30, scope: !5538)
!5582 = !DILocation(line: 189, column: 45, scope: !5538)
!5583 = !DILocation(line: 190, column: 3, scope: !5538)
!5584 = !DILocation(line: 190, column: 9, scope: !5538)
!5585 = !DILocation(line: 190, column: 25, scope: !5538)
!5586 = !DILocation(line: 190, column: 17, scope: !5538)
!5587 = !DILocation(line: 192, column: 8, scope: !5588)
!5588 = distinct !DILexicalBlock(scope: !5538, file: !3, line: 192, column: 7)
!5589 = !DILocation(line: 192, column: 7, scope: !5538)
!5590 = !DILocation(line: 193, column: 4, scope: !5588)
!5591 = !DILocation(line: 195, column: 16, scope: !5538)
!5592 = !DILocation(line: 196, column: 9, scope: !5538)
!5593 = !DILocation(line: 200, column: 8, scope: !5538)
!5594 = !DILocation(line: 200, column: 20, scope: !5538)
!5595 = !DILocation(line: 195, column: 12, scope: !5538)
!5596 = !DILocation(line: 195, column: 10, scope: !5538)
!5597 = !DILocation(line: 202, column: 7, scope: !5598)
!5598 = distinct !DILexicalBlock(scope: !5538, file: !3, line: 202, column: 7)
!5599 = !DILocation(line: 202, column: 14, scope: !5598)
!5600 = !DILocation(line: 202, column: 7, scope: !5538)
!5601 = !DILocation(line: 207, column: 4, scope: !5602)
!5602 = distinct !DILexicalBlock(scope: !5598, file: !3, line: 202, column: 30)
!5603 = !DILocation(line: 208, column: 3, scope: !5602)
!5604 = !DILocation(line: 210, column: 9, scope: !5538)
!5605 = !DILocation(line: 210, column: 3, scope: !5538)
!5606 = !DILocation(line: 216, column: 16, scope: !5538)
!5607 = !DILocation(line: 216, column: 36, scope: !5538)
!5608 = !DILocation(line: 216, column: 12, scope: !5538)
!5609 = !DILocation(line: 216, column: 10, scope: !5538)
!5610 = !DILocation(line: 219, column: 7, scope: !5611)
!5611 = distinct !DILexicalBlock(scope: !5538, file: !3, line: 219, column: 7)
!5612 = !DILocation(line: 219, column: 14, scope: !5611)
!5613 = !DILocation(line: 219, column: 7, scope: !5538)
!5614 = !DILocation(line: 220, column: 11, scope: !5611)
!5615 = !DILocation(line: 220, column: 4, scope: !5611)
!5616 = !DILocation(line: 225, column: 7, scope: !5617)
!5617 = distinct !DILexicalBlock(scope: !5538, file: !3, line: 225, column: 7)
!5618 = !DILocation(line: 225, column: 24, scope: !5617)
!5619 = !DILocation(line: 225, column: 22, scope: !5617)
!5620 = !DILocation(line: 225, column: 29, scope: !5617)
!5621 = !DILocation(line: 225, column: 7, scope: !5538)
!5622 = !DILocation(line: 226, column: 4, scope: !5617)
!5623 = !DILocation(line: 227, column: 2, scope: !5539)
!5624 = !DILocation(line: 227, column: 2, scope: !5538)
!5625 = !DILocation(line: 229, column: 2, scope: !5525)
!5626 = !DILocation(line: 230, column: 1, scope: !5525)
!5627 = distinct !DISubprogram(name: "query_variable_store_nonblocking", scope: !3, file: !3, line: 135, type: !5628, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5630)
!5628 = !DISubroutineType(types: !5629)
!5629 = !{!5528, !349, !99}
!5630 = !{!5631, !5632, !5633, !5634, !5635, !5636}
!5631 = !DILocalVariable(name: "attributes", arg: 1, scope: !5627, file: !3, line: 135, type: !349)
!5632 = !DILocalVariable(name: "size", arg: 2, scope: !5627, file: !3, line: 135, type: !99)
!5633 = !DILocalVariable(name: "status", scope: !5627, file: !3, line: 137, type: !5528)
!5634 = !DILocalVariable(name: "storage_size", scope: !5627, file: !3, line: 138, type: !315)
!5635 = !DILocalVariable(name: "remaining_size", scope: !5627, file: !3, line: 138, type: !315)
!5636 = !DILocalVariable(name: "max_size", scope: !5627, file: !3, line: 138, type: !315)
!5637 = !DILocation(line: 135, column: 38, scope: !5627)
!5638 = !DILocation(line: 135, column: 64, scope: !5627)
!5639 = !DILocation(line: 137, column: 2, scope: !5627)
!5640 = !DILocation(line: 137, column: 15, scope: !5627)
!5641 = !DILocation(line: 138, column: 2, scope: !5627)
!5642 = !DILocation(line: 138, column: 6, scope: !5627)
!5643 = !DILocation(line: 138, column: 20, scope: !5627)
!5644 = !DILocation(line: 138, column: 36, scope: !5627)
!5645 = !DILocation(line: 140, column: 15, scope: !5627)
!5646 = !DILocation(line: 140, column: 47, scope: !5627)
!5647 = !DILocation(line: 140, column: 11, scope: !5627)
!5648 = !DILocation(line: 140, column: 9, scope: !5627)
!5649 = !DILocation(line: 143, column: 6, scope: !5650)
!5650 = distinct !DILexicalBlock(scope: !5627, file: !3, line: 143, column: 6)
!5651 = !DILocation(line: 143, column: 13, scope: !5650)
!5652 = !DILocation(line: 143, column: 6, scope: !5627)
!5653 = !DILocation(line: 144, column: 10, scope: !5650)
!5654 = !DILocation(line: 144, column: 3, scope: !5650)
!5655 = !DILocation(line: 146, column: 6, scope: !5656)
!5656 = distinct !DILexicalBlock(scope: !5627, file: !3, line: 146, column: 6)
!5657 = !DILocation(line: 146, column: 23, scope: !5656)
!5658 = !DILocation(line: 146, column: 21, scope: !5656)
!5659 = !DILocation(line: 146, column: 28, scope: !5656)
!5660 = !DILocation(line: 146, column: 6, scope: !5627)
!5661 = !DILocation(line: 147, column: 3, scope: !5656)
!5662 = !DILocation(line: 149, column: 2, scope: !5627)
!5663 = !DILocation(line: 150, column: 1, scope: !5627)
!5664 = distinct !DISubprogram(name: "kzalloc", scope: !49, file: !49, line: 719, type: !5665, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5667)
!5665 = !DISubroutineType(types: !5666)
!5666 = !{!80, !95, !314}
!5667 = !{!5668, !5669}
!5668 = !DILocalVariable(name: "size", arg: 1, scope: !5664, file: !49, line: 719, type: !95)
!5669 = !DILocalVariable(name: "flags", arg: 2, scope: !5664, file: !49, line: 719, type: !314)
!5670 = !DILocation(line: 719, column: 52, scope: !5664)
!5671 = !DILocation(line: 719, column: 64, scope: !5664)
!5672 = !DILocation(line: 721, column: 17, scope: !5664)
!5673 = !DILocation(line: 721, column: 23, scope: !5664)
!5674 = !DILocation(line: 721, column: 29, scope: !5664)
!5675 = !DILocation(line: 721, column: 9, scope: !5664)
!5676 = !DILocation(line: 721, column: 2, scope: !5664)
!5677 = !DISubprogram(name: "kfree", scope: !49, file: !49, line: 227, type: !5678, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5678 = !DISubroutineType(types: !5679)
!5679 = !{null, !2284}
!5680 = distinct !DISubprogram(name: "efi_arch_mem_reserve", scope: !3, file: !3, line: 253, type: !5681, scopeLine: 254, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5683)
!5681 = !DISubroutineType(types: !5682)
!5682 = !{null, !318, !315}
!5683 = !{!5684, !5685, !5686, !5694, !5699, !5709, !5710}
!5684 = !DILocalVariable(name: "addr", arg: 1, scope: !5680, file: !3, line: 253, type: !318)
!5685 = !DILocalVariable(name: "size", arg: 2, scope: !5680, file: !3, line: 253, type: !315)
!5686 = !DILocalVariable(name: "data", scope: !5680, file: !3, line: 255, type: !5687)
!5687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "efi_memory_map_data", file: !32, line: 557, size: 320, elements: !5688)
!5688 = !{!5689, !5690, !5691, !5692, !5693}
!5689 = !DIDerivedType(tag: DW_TAG_member, name: "phys_map", scope: !5687, file: !32, line: 558, baseType: !318, size: 64)
!5690 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5687, file: !32, line: 559, baseType: !99, size: 64, offset: 64)
!5691 = !DIDerivedType(tag: DW_TAG_member, name: "desc_version", scope: !5687, file: !32, line: 560, baseType: !99, size: 64, offset: 128)
!5692 = !DIDerivedType(tag: DW_TAG_member, name: "desc_size", scope: !5687, file: !32, line: 561, baseType: !99, size: 64, offset: 192)
!5693 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5687, file: !32, line: 562, baseType: !99, size: 64, offset: 256)
!5694 = !DILocalVariable(name: "mr", scope: !5680, file: !3, line: 256, type: !5695)
!5695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "efi_mem_range", file: !32, line: 578, size: 192, elements: !5696)
!5696 = !{!5697, !5698}
!5697 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !5695, file: !32, line: 579, baseType: !1868, size: 128)
!5698 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !5695, file: !32, line: 580, baseType: !315, size: 64, offset: 128)
!5699 = !DILocalVariable(name: "md", scope: !5680, file: !3, line: 257, type: !5700)
!5700 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_memory_desc_t", file: !32, line: 145, baseType: !5701)
!5701 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !32, line: 138, size: 320, elements: !5702)
!5702 = !{!5703, !5704, !5705, !5706, !5707, !5708}
!5703 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5701, file: !32, line: 139, baseType: !349, size: 32)
!5704 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !5701, file: !32, line: 140, baseType: !349, size: 32, offset: 32)
!5705 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !5701, file: !32, line: 141, baseType: !315, size: 64, offset: 64)
!5706 = !DIDerivedType(tag: DW_TAG_member, name: "virt_addr", scope: !5701, file: !32, line: 142, baseType: !315, size: 64, offset: 128)
!5707 = !DIDerivedType(tag: DW_TAG_member, name: "num_pages", scope: !5701, file: !32, line: 143, baseType: !315, size: 64, offset: 192)
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !5701, file: !32, line: 144, baseType: !315, size: 64, offset: 256)
!5709 = !DILocalVariable(name: "num_entries", scope: !5680, file: !3, line: 258, type: !82)
!5710 = !DILocalVariable(name: "new", scope: !5680, file: !3, line: 259, type: !80)
!5711 = !DILocation(line: 253, column: 46, scope: !5680)
!5712 = !DILocation(line: 253, column: 56, scope: !5680)
!5713 = !DILocation(line: 255, column: 2, scope: !5680)
!5714 = !DILocation(line: 255, column: 29, scope: !5680)
!5715 = !DILocation(line: 256, column: 2, scope: !5680)
!5716 = !DILocation(line: 256, column: 23, scope: !5680)
!5717 = !DILocation(line: 257, column: 2, scope: !5680)
!5718 = !DILocation(line: 257, column: 20, scope: !5680)
!5719 = !DILocation(line: 258, column: 2, scope: !5680)
!5720 = !DILocation(line: 258, column: 6, scope: !5680)
!5721 = !DILocation(line: 259, column: 2, scope: !5680)
!5722 = !DILocation(line: 259, column: 8, scope: !5680)
!5723 = !DILocation(line: 261, column: 26, scope: !5724)
!5724 = distinct !DILexicalBlock(scope: !5680, file: !3, line: 261, column: 6)
!5725 = !DILocation(line: 261, column: 6, scope: !5724)
!5726 = !DILocation(line: 261, column: 37, scope: !5724)
!5727 = !DILocation(line: 262, column: 9, scope: !5724)
!5728 = !DILocation(line: 262, column: 14, scope: !5724)
!5729 = !DILocation(line: 261, column: 6, scope: !5680)
!5730 = !DILocation(line: 263, column: 3, scope: !5731)
!5731 = distinct !DILexicalBlock(scope: !5732, file: !3, line: 263, column: 3)
!5732 = distinct !DILexicalBlock(scope: !5724, file: !3, line: 262, column: 41)
!5733 = !DILocation(line: 263, column: 3, scope: !5734)
!5734 = distinct !DILexicalBlock(scope: !5731, file: !3, line: 263, column: 3)
!5735 = !DILocation(line: 264, column: 3, scope: !5732)
!5736 = !DILocation(line: 267, column: 6, scope: !5737)
!5737 = distinct !DILexicalBlock(scope: !5680, file: !3, line: 267, column: 6)
!5738 = !DILocation(line: 267, column: 13, scope: !5737)
!5739 = !DILocation(line: 267, column: 11, scope: !5737)
!5740 = !DILocation(line: 267, column: 23, scope: !5737)
!5741 = !DILocation(line: 267, column: 39, scope: !5737)
!5742 = !DILocation(line: 267, column: 49, scope: !5737)
!5743 = !DILocation(line: 267, column: 33, scope: !5737)
!5744 = !DILocation(line: 267, column: 18, scope: !5737)
!5745 = !DILocation(line: 267, column: 6, scope: !5680)
!5746 = !DILocation(line: 268, column: 3, scope: !5747)
!5747 = distinct !DILexicalBlock(scope: !5748, file: !3, line: 268, column: 3)
!5748 = distinct !DILexicalBlock(scope: !5737, file: !3, line: 267, column: 69)
!5749 = !DILocation(line: 268, column: 3, scope: !5750)
!5750 = distinct !DILexicalBlock(scope: !5747, file: !3, line: 268, column: 3)
!5751 = !DILocation(line: 269, column: 3, scope: !5748)
!5752 = !DILocation(line: 272, column: 10, scope: !5680)
!5753 = !DILocation(line: 272, column: 15, scope: !5680)
!5754 = !DILocation(line: 272, column: 7, scope: !5680)
!5755 = !DILocation(line: 273, column: 9, scope: !5680)
!5756 = !DILocation(line: 273, column: 7, scope: !5680)
!5757 = !DILocation(line: 274, column: 9, scope: !5680)
!5758 = !DILocation(line: 274, column: 7, scope: !5680)
!5759 = !DILocation(line: 276, column: 19, scope: !5680)
!5760 = !DILocation(line: 276, column: 5, scope: !5680)
!5761 = !DILocation(line: 276, column: 11, scope: !5680)
!5762 = !DILocation(line: 276, column: 17, scope: !5680)
!5763 = !DILocation(line: 277, column: 17, scope: !5680)
!5764 = !DILocation(line: 277, column: 24, scope: !5680)
!5765 = !DILocation(line: 277, column: 22, scope: !5680)
!5766 = !DILocation(line: 277, column: 29, scope: !5680)
!5767 = !DILocation(line: 277, column: 5, scope: !5680)
!5768 = !DILocation(line: 277, column: 11, scope: !5680)
!5769 = !DILocation(line: 277, column: 15, scope: !5680)
!5770 = !DILocation(line: 278, column: 20, scope: !5680)
!5771 = !DILocation(line: 278, column: 30, scope: !5680)
!5772 = !DILocation(line: 278, column: 5, scope: !5680)
!5773 = !DILocation(line: 278, column: 15, scope: !5680)
!5774 = !DILocation(line: 280, column: 48, scope: !5680)
!5775 = !DILocation(line: 280, column: 16, scope: !5680)
!5776 = !DILocation(line: 280, column: 14, scope: !5680)
!5777 = !DILocation(line: 281, column: 28, scope: !5680)
!5778 = !DILocation(line: 281, column: 14, scope: !5680)
!5779 = !DILocation(line: 283, column: 23, scope: !5780)
!5780 = distinct !DILexicalBlock(scope: !5680, file: !3, line: 283, column: 6)
!5781 = !DILocation(line: 283, column: 6, scope: !5780)
!5782 = !DILocation(line: 283, column: 43, scope: !5780)
!5783 = !DILocation(line: 283, column: 6, scope: !5680)
!5784 = !DILocation(line: 284, column: 3, scope: !5785)
!5785 = distinct !DILexicalBlock(scope: !5786, file: !3, line: 284, column: 3)
!5786 = distinct !DILexicalBlock(scope: !5780, file: !3, line: 283, column: 49)
!5787 = !DILocation(line: 284, column: 3, scope: !5788)
!5788 = distinct !DILexicalBlock(scope: !5785, file: !3, line: 284, column: 3)
!5789 = !DILocation(line: 285, column: 3, scope: !5786)
!5790 = !DILocation(line: 288, column: 33, scope: !5680)
!5791 = !DILocation(line: 288, column: 48, scope: !5680)
!5792 = !DILocation(line: 289, column: 7, scope: !5680)
!5793 = !DILocation(line: 288, column: 8, scope: !5680)
!5794 = !DILocation(line: 288, column: 6, scope: !5680)
!5795 = !DILocation(line: 290, column: 7, scope: !5796)
!5796 = distinct !DILexicalBlock(scope: !5680, file: !3, line: 290, column: 6)
!5797 = !DILocation(line: 290, column: 6, scope: !5680)
!5798 = !DILocation(line: 291, column: 3, scope: !5799)
!5799 = distinct !DILexicalBlock(scope: !5800, file: !3, line: 291, column: 3)
!5800 = distinct !DILexicalBlock(scope: !5796, file: !3, line: 290, column: 12)
!5801 = !DILocation(line: 291, column: 3, scope: !5802)
!5802 = distinct !DILexicalBlock(scope: !5799, file: !3, line: 291, column: 3)
!5803 = !DILocation(line: 292, column: 3, scope: !5800)
!5804 = !DILocation(line: 295, column: 33, scope: !5680)
!5805 = !DILocation(line: 295, column: 2, scope: !5680)
!5806 = !DILocation(line: 296, column: 17, scope: !5680)
!5807 = !DILocation(line: 296, column: 27, scope: !5680)
!5808 = !DILocation(line: 296, column: 2, scope: !5680)
!5809 = !DILocation(line: 298, column: 2, scope: !5680)
!5810 = !DILocation(line: 299, column: 21, scope: !5680)
!5811 = !DILocation(line: 299, column: 27, scope: !5680)
!5812 = !DILocation(line: 299, column: 2, scope: !5680)
!5813 = !DILocation(line: 300, column: 21, scope: !5680)
!5814 = !DILocation(line: 300, column: 2, scope: !5680)
!5815 = !DILocation(line: 301, column: 1, scope: !5680)
!5816 = !DISubprogram(name: "efi_mem_desc_lookup", scope: !32, file: !32, line: 754, type: !5817, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5817 = !DISubroutineType(types: !5818)
!5818 = !{!82, !315, !5819}
!5819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5700, size: 64)
!5820 = !DISubprogram(name: "_printk", scope: !5821, file: !5821, line: 153, type: !5822, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5821 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!5822 = !DISubroutineType(types: !5823)
!5823 = !{!82, !76, null}
!5824 = !DISubprogram(name: "efi_memmap_split_count", scope: !5825, file: !5825, line: 415, type: !5826, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5825 = !DIFile(filename: "./arch/x86/include/asm/efi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a4b467ae7390bce7623c86c5f172fa43")
!5826 = !DISubroutineType(types: !5827)
!5827 = !{!82, !5819, !5828}
!5828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!5829 = !DISubprogram(name: "efi_memmap_alloc", scope: !5825, file: !5825, line: 409, type: !5830, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5830 = !DISubroutineType(types: !5831)
!5831 = !{!82, !7, !5832}
!5832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5687, size: 64)
!5833 = !DISubprogram(name: "early_memremap_prot", scope: !5834, file: !5834, line: 17, type: !5835, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5834 = !DIFile(filename: "./include/asm-generic/early_ioremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f963a4865cd884f109103123c55bb3b2")
!5835 = !DISubroutineType(types: !5836)
!5836 = !{!80, !5837, !99, !99}
!5837 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !85, line: 164, baseType: !318)
!5838 = distinct !DISubprogram(name: "cc_mkenc", scope: !5839, file: !5839, line: 30, type: !5840, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5842)
!5839 = !DIFile(filename: "./arch/x86/include/asm/coco.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "86b21b242eb5d608419a067ab7dfc6d8")
!5840 = !DISubroutineType(types: !5841)
!5841 = !{!315, !315}
!5842 = !{!5843}
!5843 = !DILocalVariable(name: "val", arg: 1, scope: !5838, file: !5839, line: 30, type: !315)
!5844 = !DILocation(line: 30, column: 32, scope: !5838)
!5845 = !DILocation(line: 32, column: 9, scope: !5838)
!5846 = !DILocation(line: 32, column: 2, scope: !5838)
!5847 = !DISubprogram(name: "efi_memmap_insert", scope: !5825, file: !5825, line: 417, type: !5848, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5848 = !DISubroutineType(types: !5849)
!5849 = !{null, !5850, !80, !5860}
!5850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5851, size: 64)
!5851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "efi_memory_map", file: !32, line: 565, size: 448, elements: !5852)
!5852 = !{!5853, !5854, !5855, !5856, !5857, !5858, !5859}
!5853 = !DIDerivedType(tag: DW_TAG_member, name: "phys_map", scope: !5851, file: !32, line: 566, baseType: !318, size: 64)
!5854 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !5851, file: !32, line: 567, baseType: !80, size: 64, offset: 64)
!5855 = !DIDerivedType(tag: DW_TAG_member, name: "map_end", scope: !5851, file: !32, line: 568, baseType: !80, size: 64, offset: 128)
!5856 = !DIDerivedType(tag: DW_TAG_member, name: "nr_map", scope: !5851, file: !32, line: 569, baseType: !82, size: 32, offset: 192)
!5857 = !DIDerivedType(tag: DW_TAG_member, name: "desc_version", scope: !5851, file: !32, line: 570, baseType: !99, size: 64, offset: 256)
!5858 = !DIDerivedType(tag: DW_TAG_member, name: "desc_size", scope: !5851, file: !32, line: 571, baseType: !99, size: 64, offset: 320)
!5859 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5851, file: !32, line: 575, baseType: !99, size: 64, offset: 384)
!5860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5695, size: 64)
!5861 = !DISubprogram(name: "early_memunmap", scope: !5834, file: !5834, line: 20, type: !5862, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5862 = !DISubroutineType(types: !5863)
!5863 = !{null, !80, !99}
!5864 = !DISubprogram(name: "efi_memmap_install", scope: !5825, file: !5825, line: 414, type: !5865, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5865 = !DISubroutineType(types: !5866)
!5866 = !{!82, !5832}
!5867 = !DISubprogram(name: "e820__range_update", scope: !5868, file: !5868, line: 18, type: !5869, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5868 = !DIFile(filename: "./arch/x86/include/asm/e820/api.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "65a6719b6cd64e8daf1f569367f0fcc3")
!5869 = !DISubroutineType(types: !5870)
!5870 = !{!315, !315, !315, !5, !5}
!5871 = !DISubprogram(name: "e820__update_table", scope: !5868, file: !5868, line: 22, type: !5872, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5872 = !DISubroutineType(types: !5873)
!5873 = !{!82, !5874}
!5874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5875, size: 64)
!5875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "e820_table", file: !6, line: 94, size: 51232, elements: !5876)
!5876 = !{!5877, !5878}
!5877 = !DIDerivedType(tag: DW_TAG_member, name: "nr_entries", scope: !5875, file: !6, line: 95, baseType: !350, size: 32)
!5878 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !5875, file: !6, line: 96, baseType: !5879, size: 51200, offset: 32)
!5879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5880, size: 51200, elements: !5885)
!5880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "e820_entry", file: !6, line: 55, size: 160, elements: !5881)
!5881 = !{!5882, !5883, !5884}
!5882 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !5880, file: !6, line: 56, baseType: !315, size: 64)
!5883 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5880, file: !6, line: 57, baseType: !315, size: 64, offset: 64)
!5884 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5880, file: !6, line: 58, baseType: !5, size: 32, offset: 128)
!5885 = !{!5886}
!5886 = !DISubrange(count: 320)
!5887 = distinct !DISubprogram(name: "efi_reserve_boot_services", scope: !3, file: !3, line: 324, type: !3229, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5888)
!5888 = !{!5889, !5890, !5894, !5895}
!5889 = !DILocalVariable(name: "md", scope: !5887, file: !3, line: 326, type: !5819)
!5890 = !DILocalVariable(name: "start", scope: !5891, file: !3, line: 332, type: !315)
!5891 = distinct !DILexicalBlock(scope: !5892, file: !3, line: 331, column: 31)
!5892 = distinct !DILexicalBlock(scope: !5893, file: !3, line: 331, column: 2)
!5893 = distinct !DILexicalBlock(scope: !5887, file: !3, line: 331, column: 2)
!5894 = !DILocalVariable(name: "size", scope: !5891, file: !3, line: 333, type: !315)
!5895 = !DILocalVariable(name: "already_reserved", scope: !5891, file: !3, line: 334, type: !926)
!5896 = !DILocation(line: 326, column: 2, scope: !5887)
!5897 = !DILocation(line: 326, column: 21, scope: !5887)
!5898 = !DILocation(line: 328, column: 7, scope: !5899)
!5899 = distinct !DILexicalBlock(scope: !5887, file: !3, line: 328, column: 6)
!5900 = !DILocation(line: 328, column: 6, scope: !5887)
!5901 = !DILocation(line: 329, column: 3, scope: !5899)
!5902 = !DILocation(line: 331, column: 2, scope: !5893)
!5903 = !DILocation(line: 331, column: 2, scope: !5892)
!5904 = !DILocation(line: 0, scope: !5892)
!5905 = !DILocation(line: 332, column: 3, scope: !5891)
!5906 = !DILocation(line: 332, column: 7, scope: !5891)
!5907 = !DILocation(line: 332, column: 15, scope: !5891)
!5908 = !DILocation(line: 332, column: 19, scope: !5891)
!5909 = !DILocation(line: 333, column: 3, scope: !5891)
!5910 = !DILocation(line: 333, column: 7, scope: !5891)
!5911 = !DILocation(line: 333, column: 14, scope: !5891)
!5912 = !DILocation(line: 333, column: 18, scope: !5891)
!5913 = !DILocation(line: 333, column: 28, scope: !5891)
!5914 = !DILocation(line: 334, column: 3, scope: !5891)
!5915 = !DILocation(line: 334, column: 8, scope: !5891)
!5916 = !DILocation(line: 336, column: 7, scope: !5917)
!5917 = distinct !DILexicalBlock(scope: !5891, file: !3, line: 336, column: 7)
!5918 = !DILocation(line: 336, column: 11, scope: !5917)
!5919 = !DILocation(line: 336, column: 16, scope: !5917)
!5920 = !DILocation(line: 336, column: 42, scope: !5917)
!5921 = !DILocation(line: 337, column: 7, scope: !5917)
!5922 = !DILocation(line: 337, column: 11, scope: !5917)
!5923 = !DILocation(line: 337, column: 16, scope: !5917)
!5924 = !DILocation(line: 336, column: 7, scope: !5891)
!5925 = !DILocation(line: 338, column: 4, scope: !5917)
!5926 = !DILocation(line: 340, column: 50, scope: !5891)
!5927 = !DILocation(line: 340, column: 57, scope: !5891)
!5928 = !DILocation(line: 340, column: 22, scope: !5891)
!5929 = !DILocation(line: 340, column: 20, scope: !5891)
!5930 = !DILocation(line: 356, column: 8, scope: !5931)
!5931 = distinct !DILexicalBlock(scope: !5891, file: !3, line: 356, column: 7)
!5932 = !DILocation(line: 356, column: 7, scope: !5891)
!5933 = !DILocation(line: 357, column: 21, scope: !5934)
!5934 = distinct !DILexicalBlock(scope: !5931, file: !3, line: 356, column: 26)
!5935 = !DILocation(line: 357, column: 28, scope: !5934)
!5936 = !DILocation(line: 357, column: 4, scope: !5934)
!5937 = !DILocation(line: 364, column: 24, scope: !5938)
!5938 = distinct !DILexicalBlock(scope: !5934, file: !3, line: 364, column: 8)
!5939 = !DILocation(line: 364, column: 31, scope: !5938)
!5940 = !DILocation(line: 364, column: 8, scope: !5938)
!5941 = !DILocation(line: 364, column: 8, scope: !5934)
!5942 = !DILocation(line: 365, column: 5, scope: !5938)
!5943 = !DILocation(line: 366, column: 3, scope: !5934)
!5944 = !DILocation(line: 377, column: 3, scope: !5891)
!5945 = !DILocation(line: 377, column: 7, scope: !5891)
!5946 = !DILocation(line: 377, column: 17, scope: !5891)
!5947 = !DILocation(line: 378, column: 2, scope: !5892)
!5948 = !DILocation(line: 378, column: 2, scope: !5891)
!5949 = distinct !{!5949, !5902, !5950, !5951, !5952}
!5950 = !DILocation(line: 378, column: 2, scope: !5893)
!5951 = !{!"llvm.loop.mustprogress"}
!5952 = !{!"llvm.loop.unroll.disable"}
!5953 = !DILocation(line: 379, column: 1, scope: !5887)
!5954 = distinct !DISubprogram(name: "efi_enabled", scope: !32, file: !32, line: 880, type: !5955, scopeLine: 881, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5957)
!5955 = !DISubroutineType(types: !5956)
!5956 = !{!926, !82}
!5957 = !{!5958}
!5958 = !DILocalVariable(name: "feature", arg: 1, scope: !5954, file: !32, line: 880, type: !82)
!5959 = !DILocation(line: 880, column: 36, scope: !5954)
!5960 = !DILocation(line: 882, column: 9, scope: !5954)
!5961 = !DILocation(line: 882, column: 39, scope: !5954)
!5962 = !DILocation(line: 882, column: 2, scope: !5954)
!5963 = !DISubprogram(name: "memblock_is_region_reserved", scope: !5964, file: !5964, line: 491, type: !5965, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5964 = !DIFile(filename: "./include/linux/memblock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee488cc8c6522cca1567fc06e1716948")
!5965 = !DISubroutineType(types: !5966)
!5966 = !{!926, !318, !318}
!5967 = !DISubprogram(name: "memblock_reserve", scope: !5964, file: !5964, line: 116, type: !5968, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5968 = !DISubroutineType(types: !5969)
!5969 = !{!82, !318, !318}
!5970 = distinct !DISubprogram(name: "can_free_region", scope: !3, file: !3, line: 313, type: !5971, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5973)
!5971 = !DISubroutineType(types: !5972)
!5972 = !{!926, !315, !315}
!5973 = !{!5974, !5975}
!5974 = !DILocalVariable(name: "start", arg: 1, scope: !5970, file: !3, line: 313, type: !315)
!5975 = !DILocalVariable(name: "size", arg: 2, scope: !5970, file: !3, line: 313, type: !315)
!5976 = !DILocation(line: 313, column: 40, scope: !5970)
!5977 = !DILocation(line: 313, column: 51, scope: !5970)
!5978 = !DILocation(line: 315, column: 6, scope: !5979)
!5979 = distinct !DILexicalBlock(scope: !5970, file: !3, line: 315, column: 6)
!5980 = !DILocation(line: 315, column: 14, scope: !5979)
!5981 = !DILocation(line: 315, column: 12, scope: !5979)
!5982 = !DILocation(line: 315, column: 21, scope: !5979)
!5983 = !DILocation(line: 315, column: 19, scope: !5979)
!5984 = !DILocation(line: 315, column: 40, scope: !5979)
!5985 = !DILocation(line: 315, column: 43, scope: !5979)
!5986 = !DILocation(line: 315, column: 52, scope: !5979)
!5987 = !DILocation(line: 315, column: 49, scope: !5979)
!5988 = !DILocation(line: 315, column: 6, scope: !5970)
!5989 = !DILocation(line: 316, column: 3, scope: !5979)
!5990 = !DILocation(line: 318, column: 24, scope: !5991)
!5991 = distinct !DILexicalBlock(scope: !5970, file: !3, line: 318, column: 6)
!5992 = !DILocation(line: 318, column: 31, scope: !5991)
!5993 = !DILocation(line: 318, column: 37, scope: !5991)
!5994 = !DILocation(line: 318, column: 36, scope: !5991)
!5995 = !DILocation(line: 318, column: 7, scope: !5991)
!5996 = !DILocation(line: 318, column: 6, scope: !5970)
!5997 = !DILocation(line: 319, column: 3, scope: !5991)
!5998 = !DILocation(line: 321, column: 2, scope: !5970)
!5999 = !DILocation(line: 322, column: 1, scope: !5970)
!6000 = distinct !DISubprogram(name: "efi_free_boot_services", scope: !3, file: !3, line: 407, type: !3229, scopeLine: 408, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6001)
!6001 = !{!6002, !6003, !6004, !6005, !6006, !6007, !6011, !6012}
!6002 = !DILocalVariable(name: "data", scope: !6000, file: !3, line: 409, type: !5687)
!6003 = !DILocalVariable(name: "md", scope: !6000, file: !3, line: 410, type: !5819)
!6004 = !DILocalVariable(name: "num_entries", scope: !6000, file: !3, line: 411, type: !82)
!6005 = !DILocalVariable(name: "new", scope: !6000, file: !3, line: 412, type: !80)
!6006 = !DILocalVariable(name: "new_md", scope: !6000, file: !3, line: 412, type: !80)
!6007 = !DILocalVariable(name: "start", scope: !6008, file: !3, line: 419, type: !317)
!6008 = distinct !DILexicalBlock(scope: !6009, file: !3, line: 418, column: 31)
!6009 = distinct !DILexicalBlock(scope: !6010, file: !3, line: 418, column: 2)
!6010 = distinct !DILexicalBlock(scope: !6000, file: !3, line: 418, column: 2)
!6011 = !DILocalVariable(name: "size", scope: !6008, file: !3, line: 420, type: !317)
!6012 = !DILocalVariable(name: "rm_size", scope: !6008, file: !3, line: 421, type: !95)
!6013 = !DILocation(line: 409, column: 2, scope: !6000)
!6014 = !DILocation(line: 409, column: 29, scope: !6000)
!6015 = !DILocation(line: 410, column: 2, scope: !6000)
!6016 = !DILocation(line: 410, column: 21, scope: !6000)
!6017 = !DILocation(line: 411, column: 2, scope: !6000)
!6018 = !DILocation(line: 411, column: 6, scope: !6000)
!6019 = !DILocation(line: 412, column: 2, scope: !6000)
!6020 = !DILocation(line: 412, column: 8, scope: !6000)
!6021 = !DILocation(line: 412, column: 14, scope: !6000)
!6022 = !DILocation(line: 415, column: 6, scope: !6023)
!6023 = distinct !DILexicalBlock(scope: !6000, file: !3, line: 415, column: 6)
!6024 = !DILocation(line: 415, column: 6, scope: !6000)
!6025 = !DILocation(line: 416, column: 3, scope: !6023)
!6026 = !DILocation(line: 418, column: 2, scope: !6010)
!6027 = !DILocation(line: 418, column: 2, scope: !6009)
!6028 = !DILocation(line: 0, scope: !6009)
!6029 = !DILocation(line: 419, column: 3, scope: !6008)
!6030 = !DILocation(line: 419, column: 22, scope: !6008)
!6031 = !DILocation(line: 419, column: 30, scope: !6008)
!6032 = !DILocation(line: 419, column: 34, scope: !6008)
!6033 = !DILocation(line: 420, column: 3, scope: !6008)
!6034 = !DILocation(line: 420, column: 22, scope: !6008)
!6035 = !DILocation(line: 420, column: 29, scope: !6008)
!6036 = !DILocation(line: 420, column: 33, scope: !6008)
!6037 = !DILocation(line: 420, column: 43, scope: !6008)
!6038 = !DILocation(line: 421, column: 3, scope: !6008)
!6039 = !DILocation(line: 421, column: 10, scope: !6008)
!6040 = !DILocation(line: 423, column: 7, scope: !6041)
!6041 = distinct !DILexicalBlock(scope: !6008, file: !3, line: 423, column: 7)
!6042 = !DILocation(line: 423, column: 11, scope: !6041)
!6043 = !DILocation(line: 423, column: 16, scope: !6041)
!6044 = !DILocation(line: 423, column: 42, scope: !6041)
!6045 = !DILocation(line: 424, column: 7, scope: !6041)
!6046 = !DILocation(line: 424, column: 11, scope: !6041)
!6047 = !DILocation(line: 424, column: 16, scope: !6041)
!6048 = !DILocation(line: 423, column: 7, scope: !6008)
!6049 = !DILocation(line: 425, column: 15, scope: !6050)
!6050 = distinct !DILexicalBlock(scope: !6041, file: !3, line: 424, column: 43)
!6051 = !DILocation(line: 426, column: 4, scope: !6050)
!6052 = !DILocation(line: 430, column: 7, scope: !6053)
!6053 = distinct !DILexicalBlock(scope: !6008, file: !3, line: 430, column: 7)
!6054 = !DILocation(line: 430, column: 11, scope: !6053)
!6055 = !DILocation(line: 430, column: 21, scope: !6053)
!6056 = !DILocation(line: 430, column: 7, scope: !6008)
!6057 = !DILocation(line: 431, column: 15, scope: !6058)
!6058 = distinct !DILexicalBlock(scope: !6053, file: !3, line: 430, column: 43)
!6059 = !DILocation(line: 432, column: 4, scope: !6058)
!6060 = !DILocation(line: 440, column: 19, scope: !6008)
!6061 = !DILocation(line: 440, column: 3, scope: !6008)
!6062 = !DILocation(line: 455, column: 13, scope: !6008)
!6063 = !DILocation(line: 455, column: 11, scope: !6008)
!6064 = !DILocation(line: 456, column: 7, scope: !6065)
!6065 = distinct !DILexicalBlock(scope: !6008, file: !3, line: 456, column: 7)
!6066 = !DILocation(line: 456, column: 15, scope: !6065)
!6067 = !DILocation(line: 456, column: 19, scope: !6065)
!6068 = !DILocation(line: 456, column: 27, scope: !6065)
!6069 = !DILocation(line: 456, column: 25, scope: !6065)
!6070 = !DILocation(line: 456, column: 36, scope: !6065)
!6071 = !DILocation(line: 456, column: 46, scope: !6065)
!6072 = !DILocation(line: 456, column: 49, scope: !6065)
!6073 = !DILocation(line: 456, column: 57, scope: !6065)
!6074 = !DILocation(line: 456, column: 54, scope: !6065)
!6075 = !DILocation(line: 456, column: 7, scope: !6008)
!6076 = !DILocation(line: 457, column: 22, scope: !6077)
!6077 = distinct !DILexicalBlock(scope: !6065, file: !3, line: 456, column: 66)
!6078 = !DILocation(line: 457, column: 4, scope: !6077)
!6079 = !DILocation(line: 458, column: 13, scope: !6077)
!6080 = !DILocation(line: 458, column: 10, scope: !6077)
!6081 = !DILocation(line: 459, column: 12, scope: !6077)
!6082 = !DILocation(line: 459, column: 9, scope: !6077)
!6083 = !DILocation(line: 460, column: 3, scope: !6077)
!6084 = !DILocation(line: 467, column: 7, scope: !6085)
!6085 = distinct !DILexicalBlock(scope: !6008, file: !3, line: 467, column: 7)
!6086 = !DILocation(line: 467, column: 15, scope: !6085)
!6087 = !DILocation(line: 467, column: 13, scope: !6085)
!6088 = !DILocation(line: 467, column: 20, scope: !6085)
!6089 = !DILocation(line: 467, column: 7, scope: !6008)
!6090 = !DILocation(line: 468, column: 4, scope: !6085)
!6091 = !DILocation(line: 469, column: 7, scope: !6092)
!6092 = distinct !DILexicalBlock(scope: !6008, file: !3, line: 469, column: 7)
!6093 = !DILocation(line: 469, column: 13, scope: !6092)
!6094 = !DILocation(line: 469, column: 7, scope: !6008)
!6095 = !DILocation(line: 470, column: 21, scope: !6096)
!6096 = distinct !DILexicalBlock(scope: !6092, file: !3, line: 469, column: 22)
!6097 = !DILocation(line: 470, column: 19, scope: !6096)
!6098 = !DILocation(line: 470, column: 9, scope: !6096)
!6099 = !DILocation(line: 471, column: 10, scope: !6096)
!6100 = !DILocation(line: 472, column: 3, scope: !6096)
!6101 = !DILocation(line: 474, column: 22, scope: !6008)
!6102 = !DILocation(line: 474, column: 29, scope: !6008)
!6103 = !DILocation(line: 474, column: 3, scope: !6008)
!6104 = !DILocation(line: 475, column: 2, scope: !6009)
!6105 = !DILocation(line: 475, column: 2, scope: !6008)
!6106 = distinct !{!6106, !6026, !6107, !5951, !5952}
!6107 = !DILocation(line: 475, column: 2, scope: !6010)
!6108 = !DILocation(line: 477, column: 7, scope: !6109)
!6109 = distinct !DILexicalBlock(scope: !6000, file: !3, line: 477, column: 6)
!6110 = !DILocation(line: 477, column: 6, scope: !6000)
!6111 = !DILocation(line: 478, column: 3, scope: !6109)
!6112 = !DILocation(line: 480, column: 23, scope: !6113)
!6113 = distinct !DILexicalBlock(scope: !6000, file: !3, line: 480, column: 6)
!6114 = !DILocation(line: 480, column: 6, scope: !6113)
!6115 = !DILocation(line: 480, column: 43, scope: !6113)
!6116 = !DILocation(line: 480, column: 6, scope: !6000)
!6117 = !DILocation(line: 481, column: 3, scope: !6118)
!6118 = distinct !DILexicalBlock(scope: !6119, file: !3, line: 481, column: 3)
!6119 = distinct !DILexicalBlock(scope: !6113, file: !3, line: 480, column: 49)
!6120 = !DILocation(line: 481, column: 3, scope: !6121)
!6121 = distinct !DILexicalBlock(scope: !6118, file: !3, line: 481, column: 3)
!6122 = !DILocation(line: 482, column: 3, scope: !6119)
!6123 = !DILocation(line: 485, column: 22, scope: !6000)
!6124 = !DILocation(line: 485, column: 37, scope: !6000)
!6125 = !DILocation(line: 485, column: 8, scope: !6000)
!6126 = !DILocation(line: 485, column: 6, scope: !6000)
!6127 = !DILocation(line: 486, column: 7, scope: !6128)
!6128 = distinct !DILexicalBlock(scope: !6000, file: !3, line: 486, column: 6)
!6129 = !DILocation(line: 486, column: 6, scope: !6000)
!6130 = !DILocation(line: 487, column: 3, scope: !6131)
!6131 = distinct !DILexicalBlock(scope: !6132, file: !3, line: 487, column: 3)
!6132 = distinct !DILexicalBlock(scope: !6128, file: !3, line: 486, column: 12)
!6133 = !DILocation(line: 487, column: 3, scope: !6134)
!6134 = distinct !DILexicalBlock(scope: !6131, file: !3, line: 487, column: 3)
!6135 = !DILocation(line: 488, column: 3, scope: !6132)
!6136 = !DILocation(line: 496, column: 11, scope: !6000)
!6137 = !DILocation(line: 496, column: 9, scope: !6000)
!6138 = !DILocation(line: 497, column: 2, scope: !6139)
!6139 = distinct !DILexicalBlock(scope: !6000, file: !3, line: 497, column: 2)
!6140 = !DILocation(line: 497, column: 2, scope: !6141)
!6141 = distinct !DILexicalBlock(scope: !6139, file: !3, line: 497, column: 2)
!6142 = !DILocation(line: 0, scope: !6141)
!6143 = !DILocation(line: 498, column: 9, scope: !6144)
!6144 = distinct !DILexicalBlock(scope: !6145, file: !3, line: 498, column: 7)
!6145 = distinct !DILexicalBlock(scope: !6141, file: !3, line: 497, column: 31)
!6146 = !DILocation(line: 498, column: 13, scope: !6144)
!6147 = !DILocation(line: 498, column: 23, scope: !6144)
!6148 = !DILocation(line: 498, column: 45, scope: !6144)
!6149 = !DILocation(line: 499, column: 8, scope: !6144)
!6150 = !DILocation(line: 499, column: 12, scope: !6144)
!6151 = !DILocation(line: 499, column: 17, scope: !6144)
!6152 = !DILocation(line: 499, column: 43, scope: !6144)
!6153 = !DILocation(line: 500, column: 8, scope: !6144)
!6154 = !DILocation(line: 500, column: 12, scope: !6144)
!6155 = !DILocation(line: 500, column: 17, scope: !6144)
!6156 = !DILocation(line: 498, column: 7, scope: !6145)
!6157 = !DILocation(line: 501, column: 4, scope: !6144)
!6158 = !DILocation(line: 503, column: 10, scope: !6145)
!6159 = !DILocation(line: 503, column: 18, scope: !6145)
!6160 = !DILocation(line: 503, column: 33, scope: !6145)
!6161 = !DILocation(line: 503, column: 3, scope: !6145)
!6162 = !DILocation(line: 504, column: 24, scope: !6145)
!6163 = !DILocation(line: 504, column: 10, scope: !6145)
!6164 = !DILocation(line: 505, column: 2, scope: !6145)
!6165 = distinct !{!6165, !6138, !6166, !5951, !5952}
!6166 = !DILocation(line: 505, column: 2, scope: !6139)
!6167 = !DILocation(line: 507, column: 11, scope: !6000)
!6168 = !DILocation(line: 507, column: 2, scope: !6000)
!6169 = !DILocation(line: 509, column: 6, scope: !6170)
!6170 = distinct !DILexicalBlock(scope: !6000, file: !3, line: 509, column: 6)
!6171 = !DILocation(line: 509, column: 32, scope: !6170)
!6172 = !DILocation(line: 509, column: 6, scope: !6000)
!6173 = !DILocation(line: 510, column: 3, scope: !6174)
!6174 = distinct !DILexicalBlock(scope: !6175, file: !3, line: 510, column: 3)
!6175 = distinct !DILexicalBlock(scope: !6170, file: !3, line: 509, column: 38)
!6176 = !DILocation(line: 510, column: 3, scope: !6177)
!6177 = distinct !DILexicalBlock(scope: !6174, file: !3, line: 510, column: 3)
!6178 = !DILocation(line: 511, column: 3, scope: !6175)
!6179 = !DILocation(line: 513, column: 1, scope: !6000)
!6180 = distinct !DISubprogram(name: "efi_unmap_pages", scope: !3, file: !3, line: 386, type: !6181, scopeLine: 387, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6183)
!6181 = !DISubroutineType(types: !6182)
!6182 = !{null, !5819}
!6183 = !{!6184, !6185, !6186, !6187}
!6184 = !DILocalVariable(name: "md", arg: 1, scope: !6180, file: !3, line: 386, type: !5819)
!6185 = !DILocalVariable(name: "pgd", scope: !6180, file: !3, line: 388, type: !4024)
!6186 = !DILocalVariable(name: "pa", scope: !6180, file: !3, line: 389, type: !315)
!6187 = !DILocalVariable(name: "va", scope: !6180, file: !3, line: 390, type: !315)
!6188 = !DILocation(line: 386, column: 55, scope: !6180)
!6189 = !DILocation(line: 388, column: 2, scope: !6180)
!6190 = !DILocation(line: 388, column: 9, scope: !6180)
!6191 = !DILocation(line: 388, column: 22, scope: !6180)
!6192 = !DILocation(line: 389, column: 2, scope: !6180)
!6193 = !DILocation(line: 389, column: 6, scope: !6180)
!6194 = !DILocation(line: 389, column: 11, scope: !6180)
!6195 = !DILocation(line: 389, column: 15, scope: !6180)
!6196 = !DILocation(line: 390, column: 2, scope: !6180)
!6197 = !DILocation(line: 390, column: 6, scope: !6180)
!6198 = !DILocation(line: 390, column: 11, scope: !6180)
!6199 = !DILocation(line: 390, column: 15, scope: !6180)
!6200 = !DILocation(line: 397, column: 6, scope: !6201)
!6201 = distinct !DILexicalBlock(scope: !6180, file: !3, line: 397, column: 6)
!6202 = !DILocation(line: 397, column: 6, scope: !6180)
!6203 = !DILocation(line: 398, column: 3, scope: !6201)
!6204 = !DILocation(line: 400, column: 32, scope: !6205)
!6205 = distinct !DILexicalBlock(scope: !6180, file: !3, line: 400, column: 6)
!6206 = !DILocation(line: 400, column: 37, scope: !6205)
!6207 = !DILocation(line: 400, column: 41, scope: !6205)
!6208 = !DILocation(line: 400, column: 45, scope: !6205)
!6209 = !DILocation(line: 400, column: 6, scope: !6205)
!6210 = !DILocation(line: 400, column: 6, scope: !6180)
!6211 = !DILocation(line: 401, column: 3, scope: !6212)
!6212 = distinct !DILexicalBlock(scope: !6205, file: !3, line: 401, column: 3)
!6213 = !DILocation(line: 401, column: 3, scope: !6214)
!6214 = distinct !DILexicalBlock(scope: !6212, file: !3, line: 401, column: 3)
!6215 = !DILocation(line: 401, column: 3, scope: !6205)
!6216 = !DILocation(line: 403, column: 32, scope: !6217)
!6217 = distinct !DILexicalBlock(scope: !6180, file: !3, line: 403, column: 6)
!6218 = !DILocation(line: 403, column: 37, scope: !6217)
!6219 = !DILocation(line: 403, column: 41, scope: !6217)
!6220 = !DILocation(line: 403, column: 45, scope: !6217)
!6221 = !DILocation(line: 403, column: 6, scope: !6217)
!6222 = !DILocation(line: 403, column: 6, scope: !6180)
!6223 = !DILocation(line: 404, column: 3, scope: !6224)
!6224 = distinct !DILexicalBlock(scope: !6217, file: !3, line: 404, column: 3)
!6225 = !DILocation(line: 404, column: 3, scope: !6226)
!6226 = distinct !DILexicalBlock(scope: !6224, file: !3, line: 404, column: 3)
!6227 = !DILocation(line: 404, column: 3, scope: !6217)
!6228 = !DILocation(line: 405, column: 1, scope: !6180)
!6229 = distinct !DISubprogram(name: "real_mode_size_needed", scope: !346, file: !346, line: 81, type: !6230, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6230 = !DISubroutineType(types: !6231)
!6231 = !{!95}
!6232 = !DILocation(line: 83, column: 6, scope: !6233)
!6233 = distinct !DILexicalBlock(scope: !6229, file: !346, line: 83, column: 6)
!6234 = !DILocation(line: 83, column: 6, scope: !6229)
!6235 = !DILocation(line: 84, column: 3, scope: !6233)
!6236 = !DILocation(line: 86, column: 9, scope: !6229)
!6237 = !DILocation(line: 86, column: 2, scope: !6229)
!6238 = !DILocation(line: 87, column: 1, scope: !6229)
!6239 = distinct !DISubprogram(name: "set_real_mode_mem", scope: !346, file: !346, line: 89, type: !6240, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6242)
!6240 = !DISubroutineType(types: !6241)
!6241 = !{null, !318}
!6242 = !{!6243}
!6243 = !DILocalVariable(name: "mem", arg: 1, scope: !6239, file: !346, line: 89, type: !318)
!6244 = !DILocation(line: 89, column: 50, scope: !6239)
!6245 = !DILocation(line: 91, column: 49, scope: !6239)
!6246 = !DILocation(line: 91, column: 19, scope: !6239)
!6247 = !DILocation(line: 92, column: 1, scope: !6239)
!6248 = !DISubprogram(name: "memblock_free_late", scope: !5964, file: !5964, line: 147, type: !6249, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6249 = !DISubroutineType(types: !6250)
!6250 = !{null, !318, !318}
!6251 = !DISubprogram(name: "memremap", scope: !19, file: !19, line: 149, type: !6252, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6252 = !DISubroutineType(types: !6253)
!6253 = !{!80, !5837, !95, !99}
!6254 = !DISubprogram(name: "memunmap", scope: !19, file: !19, line: 150, type: !1259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6255 = distinct !DISubprogram(name: "efi_reuse_config", scope: !3, file: !3, line: 524, type: !6256, scopeLine: 525, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6258)
!6256 = !DISubroutineType(types: !6257)
!6257 = !{!82, !315, !82}
!6258 = !{!6259, !6260, !6261, !6262, !6263, !6264, !6265, !6266, !6275, !6279, !6280}
!6259 = !DILocalVariable(name: "tables", arg: 1, scope: !6255, file: !3, line: 524, type: !315)
!6260 = !DILocalVariable(name: "nr_tables", arg: 2, scope: !6255, file: !3, line: 524, type: !82)
!6261 = !DILocalVariable(name: "i", scope: !6255, file: !3, line: 526, type: !82)
!6262 = !DILocalVariable(name: "sz", scope: !6255, file: !3, line: 526, type: !82)
!6263 = !DILocalVariable(name: "ret", scope: !6255, file: !3, line: 526, type: !82)
!6264 = !DILocalVariable(name: "p", scope: !6255, file: !3, line: 527, type: !80)
!6265 = !DILocalVariable(name: "tablep", scope: !6255, file: !3, line: 527, type: !80)
!6266 = !DILocalVariable(name: "data", scope: !6255, file: !3, line: 528, type: !6267)
!6267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6268, size: 64)
!6268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "efi_setup_data", file: !5825, line: 147, size: 768, elements: !6269)
!6269 = !{!6270, !6271, !6272, !6273, !6274}
!6270 = !DIDerivedType(tag: DW_TAG_member, name: "fw_vendor", scope: !6268, file: !5825, line: 148, baseType: !315, size: 64)
!6271 = !DIDerivedType(tag: DW_TAG_member, name: "__unused", scope: !6268, file: !5825, line: 149, baseType: !315, size: 64, offset: 64)
!6272 = !DIDerivedType(tag: DW_TAG_member, name: "tables", scope: !6268, file: !5825, line: 150, baseType: !315, size: 64, offset: 128)
!6273 = !DIDerivedType(tag: DW_TAG_member, name: "smbios", scope: !6268, file: !5825, line: 151, baseType: !315, size: 64, offset: 192)
!6274 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !6268, file: !5825, line: 152, baseType: !2575, size: 512, offset: 256)
!6275 = !DILocalVariable(name: "guid", scope: !6276, file: !3, line: 558, type: !326)
!6276 = distinct !DILexicalBlock(scope: !6277, file: !3, line: 557, column: 34)
!6277 = distinct !DILexicalBlock(scope: !6278, file: !3, line: 557, column: 2)
!6278 = distinct !DILexicalBlock(scope: !6255, file: !3, line: 557, column: 2)
!6279 = !DILabel(scope: !6255, name: "out_memremap", file: !3, line: 568)
!6280 = !DILabel(scope: !6255, name: "out", file: !3, line: 570)
!6281 = !DILocation(line: 524, column: 33, scope: !6255)
!6282 = !DILocation(line: 524, column: 45, scope: !6255)
!6283 = !DILocation(line: 526, column: 2, scope: !6255)
!6284 = !DILocation(line: 526, column: 6, scope: !6255)
!6285 = !DILocation(line: 526, column: 9, scope: !6255)
!6286 = !DILocation(line: 526, column: 13, scope: !6255)
!6287 = !DILocation(line: 527, column: 2, scope: !6255)
!6288 = !DILocation(line: 527, column: 8, scope: !6255)
!6289 = !DILocation(line: 527, column: 12, scope: !6255)
!6290 = !DILocation(line: 528, column: 2, scope: !6255)
!6291 = !DILocation(line: 528, column: 25, scope: !6255)
!6292 = !DILocation(line: 530, column: 6, scope: !6293)
!6293 = distinct !DILexicalBlock(scope: !6255, file: !3, line: 530, column: 6)
!6294 = !DILocation(line: 530, column: 16, scope: !6293)
!6295 = !DILocation(line: 530, column: 6, scope: !6255)
!6296 = !DILocation(line: 531, column: 3, scope: !6293)
!6297 = !DILocation(line: 533, column: 7, scope: !6298)
!6298 = distinct !DILexicalBlock(scope: !6255, file: !3, line: 533, column: 6)
!6299 = !DILocation(line: 533, column: 6, scope: !6255)
!6300 = !DILocation(line: 534, column: 3, scope: !6298)
!6301 = !DILocation(line: 536, column: 7, scope: !6302)
!6302 = distinct !DILexicalBlock(scope: !6255, file: !3, line: 536, column: 6)
!6303 = !DILocation(line: 536, column: 6, scope: !6255)
!6304 = !DILocation(line: 537, column: 3, scope: !6302)
!6305 = !DILocation(line: 539, column: 24, scope: !6255)
!6306 = !DILocation(line: 539, column: 9, scope: !6255)
!6307 = !DILocation(line: 539, column: 7, scope: !6255)
!6308 = !DILocation(line: 540, column: 7, scope: !6309)
!6309 = distinct !DILexicalBlock(scope: !6255, file: !3, line: 540, column: 6)
!6310 = !DILocation(line: 540, column: 6, scope: !6255)
!6311 = !DILocation(line: 541, column: 7, scope: !6312)
!6312 = distinct !DILexicalBlock(scope: !6309, file: !3, line: 540, column: 13)
!6313 = !DILocation(line: 542, column: 3, scope: !6312)
!6314 = !DILocation(line: 545, column: 7, scope: !6315)
!6315 = distinct !DILexicalBlock(scope: !6255, file: !3, line: 545, column: 6)
!6316 = !DILocation(line: 545, column: 13, scope: !6315)
!6317 = !DILocation(line: 545, column: 6, scope: !6255)
!6318 = !DILocation(line: 546, column: 3, scope: !6315)
!6319 = !DILocation(line: 548, column: 5, scope: !6255)
!6320 = !DILocation(line: 550, column: 30, scope: !6255)
!6321 = !DILocation(line: 550, column: 38, scope: !6255)
!6322 = !DILocation(line: 550, column: 50, scope: !6255)
!6323 = !DILocation(line: 550, column: 48, scope: !6255)
!6324 = !DILocation(line: 550, column: 15, scope: !6255)
!6325 = !DILocation(line: 550, column: 13, scope: !6255)
!6326 = !DILocation(line: 550, column: 4, scope: !6255)
!6327 = !DILocation(line: 551, column: 7, scope: !6328)
!6328 = distinct !DILexicalBlock(scope: !6255, file: !3, line: 551, column: 6)
!6329 = !DILocation(line: 551, column: 6, scope: !6255)
!6330 = !DILocation(line: 552, column: 3, scope: !6331)
!6331 = distinct !DILexicalBlock(scope: !6332, file: !3, line: 552, column: 3)
!6332 = distinct !DILexicalBlock(scope: !6328, file: !3, line: 551, column: 10)
!6333 = !DILocation(line: 552, column: 3, scope: !6334)
!6334 = distinct !DILexicalBlock(scope: !6331, file: !3, line: 552, column: 3)
!6335 = !DILocation(line: 553, column: 7, scope: !6332)
!6336 = !DILocation(line: 554, column: 3, scope: !6332)
!6337 = !DILocation(line: 557, column: 9, scope: !6278)
!6338 = !DILocation(line: 557, column: 7, scope: !6278)
!6339 = !DILocation(line: 557, column: 14, scope: !6277)
!6340 = !DILocation(line: 557, column: 18, scope: !6277)
!6341 = !DILocation(line: 557, column: 16, scope: !6277)
!6342 = !DILocation(line: 557, column: 2, scope: !6278)
!6343 = !DILocation(line: 558, column: 3, scope: !6276)
!6344 = !DILocation(line: 558, column: 14, scope: !6276)
!6345 = !DILocation(line: 560, column: 36, scope: !6276)
!6346 = !DILocation(line: 560, column: 40, scope: !6276)
!6347 = !DILocation(line: 562, column: 26, scope: !6348)
!6348 = distinct !DILexicalBlock(scope: !6276, file: !3, line: 562, column: 7)
!6349 = !DILocation(line: 562, column: 8, scope: !6348)
!6350 = !DILocation(line: 562, column: 7, scope: !6276)
!6351 = !DILocation(line: 563, column: 42, scope: !6348)
!6352 = !DILocation(line: 563, column: 48, scope: !6348)
!6353 = !DILocation(line: 563, column: 30, scope: !6348)
!6354 = !DILocation(line: 563, column: 34, scope: !6348)
!6355 = !DILocation(line: 563, column: 40, scope: !6348)
!6356 = !DILocation(line: 563, column: 4, scope: !6348)
!6357 = !DILocation(line: 564, column: 8, scope: !6276)
!6358 = !DILocation(line: 564, column: 5, scope: !6276)
!6359 = !DILocation(line: 565, column: 2, scope: !6277)
!6360 = !DILocation(line: 565, column: 2, scope: !6276)
!6361 = !DILocation(line: 557, column: 30, scope: !6277)
!6362 = !DILocation(line: 557, column: 2, scope: !6277)
!6363 = distinct !{!6363, !6342, !6364, !5951, !5952}
!6364 = !DILocation(line: 565, column: 2, scope: !6278)
!6365 = !DILocation(line: 566, column: 17, scope: !6255)
!6366 = !DILocation(line: 566, column: 25, scope: !6255)
!6367 = !DILocation(line: 566, column: 37, scope: !6255)
!6368 = !DILocation(line: 566, column: 35, scope: !6255)
!6369 = !DILocation(line: 566, column: 2, scope: !6255)
!6370 = !DILocation(line: 568, column: 1, scope: !6255)
!6371 = !DILocation(line: 569, column: 17, scope: !6255)
!6372 = !DILocation(line: 569, column: 2, scope: !6255)
!6373 = !DILocation(line: 570, column: 1, scope: !6255)
!6374 = !DILocation(line: 571, column: 9, scope: !6255)
!6375 = !DILocation(line: 571, column: 2, scope: !6255)
!6376 = !DILocation(line: 572, column: 1, scope: !6255)
!6377 = !DISubprogram(name: "early_memremap", scope: !5834, file: !5834, line: 13, type: !6378, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6378 = !DISubroutineType(types: !6379)
!6379 = !{!80, !5837, !99}
!6380 = distinct !DISubprogram(name: "efi_guidcmp", scope: !32, file: !32, line: 699, type: !6381, scopeLine: 700, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6383)
!6381 = !DISubroutineType(types: !6382)
!6382 = !{!82, !326, !326}
!6383 = !{!6384, !6385}
!6384 = !DILocalVariable(name: "left", arg: 1, scope: !6380, file: !32, line: 699, type: !326)
!6385 = !DILocalVariable(name: "right", arg: 2, scope: !6380, file: !32, line: 699, type: !326)
!6386 = !DILocation(line: 699, column: 25, scope: !6380)
!6387 = !DILocation(line: 699, column: 42, scope: !6380)
!6388 = !DILocation(line: 701, column: 9, scope: !6380)
!6389 = !DILocation(line: 701, column: 2, scope: !6380)
!6390 = distinct !DISubprogram(name: "efi_apply_memmap_quirks", scope: !3, file: !3, line: 574, type: !3229, scopeLine: 575, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6391 = !DILocation(line: 581, column: 7, scope: !6392)
!6392 = distinct !DILexicalBlock(scope: !6390, file: !3, line: 581, column: 6)
!6393 = !DILocation(line: 581, column: 6, scope: !6390)
!6394 = !DILocation(line: 582, column: 3, scope: !6395)
!6395 = distinct !DILexicalBlock(scope: !6396, file: !3, line: 582, column: 3)
!6396 = distinct !DILexicalBlock(scope: !6392, file: !3, line: 581, column: 32)
!6397 = !DILocation(line: 582, column: 3, scope: !6398)
!6398 = distinct !DILexicalBlock(scope: !6395, file: !3, line: 582, column: 3)
!6399 = !DILocation(line: 583, column: 3, scope: !6396)
!6400 = !DILocation(line: 584, column: 2, scope: !6396)
!6401 = !DILocation(line: 585, column: 1, scope: !6390)
!6402 = distinct !DISubprogram(name: "efi_runtime_supported", scope: !5825, file: !5825, line: 173, type: !2638, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6403 = !DILocation(line: 175, column: 35, scope: !6404)
!6404 = distinct !DILexicalBlock(scope: !6402, file: !5825, line: 175, column: 6)
!6405 = !DILocation(line: 175, column: 32, scope: !6404)
!6406 = !DILocation(line: 175, column: 6, scope: !6402)
!6407 = !DILocation(line: 176, column: 3, scope: !6404)
!6408 = !DILocation(line: 178, column: 2, scope: !6402)
!6409 = !DILocation(line: 179, column: 1, scope: !6402)
!6410 = !DISubprogram(name: "efi_memmap_unmap", scope: !32, file: !32, line: 735, type: !3229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6411 = distinct !DISubprogram(name: "efi_reboot_required", scope: !3, file: !3, line: 595, type: !2638, scopeLine: 596, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6412 = !DILocation(line: 597, column: 7, scope: !6413)
!6413 = distinct !DILexicalBlock(scope: !6411, file: !3, line: 597, column: 6)
!6414 = !DILocation(line: 597, column: 6, scope: !6411)
!6415 = !DILocation(line: 598, column: 3, scope: !6413)
!6416 = !DILocation(line: 600, column: 24, scope: !6411)
!6417 = !DILocation(line: 601, column: 2, scope: !6411)
!6418 = !DILocation(line: 602, column: 1, scope: !6411)
!6419 = distinct !DISubprogram(name: "efi_poweroff_required", scope: !3, file: !3, line: 604, type: !2638, scopeLine: 605, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6420 = !DILocation(line: 606, column: 9, scope: !6419)
!6421 = !DILocation(line: 606, column: 35, scope: !6419)
!6422 = !DILocation(line: 606, column: 38, scope: !6419)
!6423 = !DILocation(line: 606, column: 2, scope: !6419)
!6424 = distinct !DISubprogram(name: "efi_crash_gracefully_on_page_fault", scope: !3, file: !3, line: 711, type: !6425, scopeLine: 712, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6427)
!6425 = !DISubroutineType(types: !6426)
!6426 = !{null, !99}
!6427 = !{!6428, !6429, !6431, !6435, !6443}
!6428 = !DILocalVariable(name: "phys_addr", arg: 1, scope: !6424, file: !3, line: 711, type: !99)
!6429 = !DILocalVariable(name: "__ret_warn_on", scope: !6430, file: !3, line: 743, type: !82)
!6430 = distinct !DILexicalBlock(scope: !6424, file: !3, line: 743, column: 2)
!6431 = !DILocalVariable(name: "__flags", scope: !6432, file: !3, line: 743, type: !82)
!6432 = distinct !DILexicalBlock(scope: !6433, file: !3, line: 743, column: 2)
!6433 = distinct !DILexicalBlock(scope: !6434, file: !3, line: 743, column: 2)
!6434 = distinct !DILexicalBlock(scope: !6430, file: !3, line: 743, column: 2)
!6435 = !DILocalVariable(name: "__ai_ptr", scope: !6436, file: !3, line: 778, type: !2131)
!6436 = distinct !DILexicalBlock(scope: !6437, file: !3, line: 778, column: 3)
!6437 = distinct !DILexicalBlock(scope: !6438, file: !3, line: 778, column: 3)
!6438 = distinct !DILexicalBlock(scope: !6439, file: !3, line: 778, column: 3)
!6439 = distinct !DILexicalBlock(scope: !6440, file: !3, line: 778, column: 3)
!6440 = distinct !DILexicalBlock(scope: !6441, file: !3, line: 777, column: 11)
!6441 = distinct !DILexicalBlock(scope: !6442, file: !3, line: 777, column: 2)
!6442 = distinct !DILexicalBlock(scope: !6424, file: !3, line: 777, column: 2)
!6443 = !DILocalVariable(name: "__ret", scope: !6444, file: !3, line: 778, type: !7)
!6444 = distinct !DILexicalBlock(scope: !6436, file: !3, line: 778, column: 3)
!6445 = !DILocation(line: 711, column: 55, scope: !6424)
!6446 = !DILocation(line: 720, column: 6, scope: !6447)
!6447 = distinct !DILexicalBlock(scope: !6424, file: !3, line: 720, column: 6)
!6448 = !DILocation(line: 720, column: 6, scope: !6424)
!6449 = !DILocation(line: 721, column: 3, scope: !6447)
!6450 = !DILocation(line: 728, column: 6, scope: !6451)
!6451 = distinct !DILexicalBlock(scope: !6452, file: !3, line: 728, column: 6)
!6452 = distinct !DILexicalBlock(scope: !6424, file: !3, line: 728, column: 6)
!6453 = !DILocation(line: 728, column: 6, scope: !6454)
!6454 = distinct !DILexicalBlock(scope: !6451, file: !3, line: 728, column: 6)
!6455 = !DILocation(line: 728, column: 41, scope: !6452)
!6456 = !DILocation(line: 728, column: 53, scope: !6452)
!6457 = !DILocation(line: 729, column: 6, scope: !6452)
!6458 = !DILocation(line: 729, column: 21, scope: !6452)
!6459 = !DILocation(line: 728, column: 6, scope: !6424)
!6460 = !DILocation(line: 730, column: 3, scope: !6452)
!6461 = !DILocation(line: 736, column: 6, scope: !6462)
!6462 = distinct !DILexicalBlock(scope: !6424, file: !3, line: 736, column: 6)
!6463 = !DILocation(line: 736, column: 16, scope: !6462)
!6464 = !DILocation(line: 736, column: 6, scope: !6424)
!6465 = !DILocation(line: 737, column: 3, scope: !6462)
!6466 = !DILocation(line: 743, column: 2, scope: !6430)
!6467 = !DILocation(line: 743, column: 2, scope: !6434)
!6468 = !DILocation(line: 743, column: 2, scope: !6433)
!6469 = !DILocation(line: 743, column: 2, scope: !6470)
!6470 = distinct !DILexicalBlock(scope: !6433, file: !3, line: 743, column: 2)
!6471 = !DILocation(line: 743, column: 2, scope: !6432)
!6472 = !DILocation(line: 743, column: 2, scope: !6473)
!6473 = distinct !DILexicalBlock(scope: !6432, file: !3, line: 743, column: 2)
!6474 = !DILocation(line: 743, column: 2, scope: !6475)
!6475 = distinct !DILexicalBlock(scope: !6432, file: !3, line: 743, column: 2)
!6476 = !{i64 2156651543, i64 2156651572, i64 2156651618, i64 2156651676, i64 2156651730, i64 2156651784, i64 2156651839, i64 2156651870, i64 2156652178, i64 2156652184, i64 2156652231, i64 2156652254, i64 2156652280}
!6477 = !DILocation(line: 743, column: 2, scope: !6478)
!6478 = distinct !DILexicalBlock(scope: !6432, file: !3, line: 743, column: 2)
!6479 = !DILocation(line: 743, column: 2, scope: !6480)
!6480 = distinct !DILexicalBlock(scope: !6433, file: !3, line: 743, column: 2)
!6481 = !DILocation(line: 743, column: 2, scope: !6424)
!6482 = !DILocation(line: 754, column: 19, scope: !6483)
!6483 = distinct !DILexicalBlock(scope: !6424, file: !3, line: 754, column: 6)
!6484 = !DILocation(line: 754, column: 30, scope: !6483)
!6485 = !DILocation(line: 754, column: 6, scope: !6424)
!6486 = !DILocation(line: 755, column: 3, scope: !6487)
!6487 = distinct !DILexicalBlock(scope: !6488, file: !3, line: 755, column: 3)
!6488 = distinct !DILexicalBlock(scope: !6483, file: !3, line: 754, column: 51)
!6489 = !DILocation(line: 755, column: 3, scope: !6490)
!6490 = distinct !DILexicalBlock(scope: !6487, file: !3, line: 755, column: 3)
!6491 = !DILocation(line: 756, column: 3, scope: !6488)
!6492 = !DILocation(line: 764, column: 2, scope: !6424)
!6493 = !DILocation(line: 767, column: 22, scope: !6424)
!6494 = !DILocation(line: 768, column: 2, scope: !6424)
!6495 = !DILocation(line: 770, column: 2, scope: !6424)
!6496 = !DILocation(line: 771, column: 2, scope: !6497)
!6497 = distinct !DILexicalBlock(scope: !6424, file: !3, line: 771, column: 2)
!6498 = !DILocation(line: 771, column: 2, scope: !6499)
!6499 = distinct !DILexicalBlock(scope: !6497, file: !3, line: 771, column: 2)
!6500 = !DILocation(line: 777, column: 2, scope: !6424)
!6501 = !DILocation(line: 778, column: 3, scope: !6440)
!6502 = !DILocation(line: 778, column: 3, scope: !6439)
!6503 = !DILocation(line: 778, column: 3, scope: !6504)
!6504 = distinct !DILexicalBlock(scope: !6439, file: !3, line: 778, column: 3)
!6505 = !DILocation(line: 778, column: 3, scope: !6438)
!6506 = !DILocation(line: 778, column: 3, scope: !6507)
!6507 = distinct !DILexicalBlock(scope: !6438, file: !3, line: 778, column: 3)
!6508 = !DILocation(line: 778, column: 3, scope: !6436)
!6509 = !DILocation(line: 778, column: 3, scope: !6510)
!6510 = distinct !DILexicalBlock(scope: !6436, file: !3, line: 778, column: 3)
!6511 = !DILocation(line: 778, column: 3, scope: !6444)
!6512 = !{i64 2156655495}
!6513 = !DILocation(line: 778, column: 3, scope: !6437)
!6514 = !DILocation(line: 779, column: 3, scope: !6440)
!6515 = !DILocation(line: 777, column: 2, scope: !6441)
!6516 = distinct !{!6516, !6517, !6518, !5952}
!6517 = !DILocation(line: 777, column: 2, scope: !6442)
!6518 = !DILocation(line: 780, column: 2, scope: !6442)
!6519 = !DILocation(line: 781, column: 1, scope: !6424)
!6520 = distinct !DISubprogram(name: "preempt_count", scope: !6521, file: !6521, line: 25, type: !3003, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6522)
!6521 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!6522 = !{!6523}
!6523 = !DILocalVariable(name: "pfo_val__", scope: !6524, file: !6521, line: 27, type: !349)
!6524 = distinct !DILexicalBlock(scope: !6520, file: !6521, line: 27, column: 9)
!6525 = !DILocation(line: 27, column: 9, scope: !6524)
!6526 = !{i64 2149752149}
!6527 = !DILocation(line: 27, column: 9, scope: !6520)
!6528 = !DILocation(line: 27, column: 48, scope: !6520)
!6529 = !DILocation(line: 27, column: 2, scope: !6520)
!6530 = !DISubprogram(name: "current_work", scope: !1060, file: !1060, line: 525, type: !6531, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6531 = !DISubroutineType(types: !6532)
!6532 = !{!1069}
!6533 = !DISubprogram(name: "__warn_printk", scope: !3051, file: !3051, line: 93, type: !6534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6534 = !DISubroutineType(types: !6535)
!6535 = !{null, !76, null}
!6536 = !DISubprogram(name: "machine_real_restart", scope: !6537, file: !6537, line: 23, type: !6538, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6537 = !DIFile(filename: "./arch/x86/include/asm/reboot.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c3f621f1b649e8b50e39ca18d5be2f80")
!6538 = !DISubroutineType(types: !6539)
!6539 = !{null, !7}
!6540 = !DISubprogram(name: "arch_efi_call_virt_teardown", scope: !5825, file: !5825, line: 144, type: !3229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6541 = !DISubprogram(name: "complete", scope: !1099, file: !1099, line: 118, type: !6542, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6542 = !DISubroutineType(types: !6543)
!6543 = !{null, !1097}
!6544 = distinct !DISubprogram(name: "clear_bit", scope: !6545, file: !6545, line: 39, type: !6546, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6550)
!6545 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!6546 = !DISubroutineType(types: !6547)
!6547 = !{null, !343, !6548}
!6548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6549, size: 64)
!6549 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !99)
!6550 = !{!6551, !6552}
!6551 = !DILocalVariable(name: "nr", arg: 1, scope: !6544, file: !6545, line: 39, type: !343)
!6552 = !DILocalVariable(name: "addr", arg: 2, scope: !6544, file: !6545, line: 39, type: !6548)
!6553 = !DILocation(line: 39, column: 44, scope: !6544)
!6554 = !DILocation(line: 39, column: 72, scope: !6544)
!6555 = !DILocation(line: 41, column: 26, scope: !6544)
!6556 = !DILocation(line: 41, column: 33, scope: !6544)
!6557 = !DILocation(line: 41, column: 31, scope: !6544)
!6558 = !DILocation(line: 41, column: 2, scope: !6544)
!6559 = !DILocation(line: 42, column: 17, scope: !6544)
!6560 = !DILocation(line: 42, column: 21, scope: !6544)
!6561 = !DILocation(line: 42, column: 2, scope: !6544)
!6562 = !DILocation(line: 43, column: 1, scope: !6544)
!6563 = distinct !DISubprogram(name: "get_current", scope: !6564, file: !6564, line: 39, type: !6565, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6567)
!6564 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!6565 = !DISubroutineType(types: !6566)
!6566 = !{!365}
!6567 = !{!6568, !6570, !6572}
!6568 = !DILocalVariable(name: "pscr_ret__", scope: !6569, file: !6564, line: 41, type: !365)
!6569 = distinct !DILexicalBlock(scope: !6563, file: !6564, line: 41, column: 9)
!6570 = !DILocalVariable(name: "__vpp_verify", scope: !6571, file: !6564, line: 41, type: !2284)
!6571 = distinct !DILexicalBlock(scope: !6569, file: !6564, line: 41, column: 9)
!6572 = !DILocalVariable(name: "pfo_val__", scope: !6573, file: !6564, line: 41, type: !315)
!6573 = distinct !DILexicalBlock(scope: !6569, file: !6564, line: 41, column: 9)
!6574 = !DILocation(line: 41, column: 9, scope: !6569)
!6575 = !DILocation(line: 41, column: 9, scope: !6571)
!6576 = !DILocation(line: 41, column: 9, scope: !6573)
!6577 = !{i64 2148451775}
!6578 = !DILocation(line: 41, column: 9, scope: !6563)
!6579 = !DILocation(line: 41, column: 2, scope: !6563)
!6580 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !6581, file: !6581, line: 94, type: !6582, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6587)
!6581 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6582 = !DISubroutineType(types: !6583)
!6583 = !{null, !6584, !95}
!6584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6585, size: 64)
!6585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6586)
!6586 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6587 = !{!6588, !6589}
!6588 = !DILocalVariable(name: "v", arg: 1, scope: !6580, file: !6581, line: 94, type: !6584)
!6589 = !DILocalVariable(name: "size", arg: 2, scope: !6580, file: !6581, line: 94, type: !95)
!6590 = !DILocation(line: 94, column: 79, scope: !6580)
!6591 = !DILocation(line: 94, column: 89, scope: !6580)
!6592 = !DILocation(line: 96, column: 20, scope: !6580)
!6593 = !DILocation(line: 96, column: 23, scope: !6580)
!6594 = !DILocation(line: 96, column: 2, scope: !6580)
!6595 = !DILocation(line: 97, column: 2, scope: !6580)
!6596 = !DILocation(line: 98, column: 1, scope: !6580)
!6597 = !DISubprogram(name: "schedule", scope: !367, file: !367, line: 303, type: !3229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6598 = distinct !DISubprogram(name: "kmalloc", scope: !49, file: !49, line: 591, type: !5665, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6599)
!6599 = !{!6600, !6601, !6602}
!6600 = !DILocalVariable(name: "size", arg: 1, scope: !6598, file: !49, line: 591, type: !95)
!6601 = !DILocalVariable(name: "flags", arg: 2, scope: !6598, file: !49, line: 591, type: !314)
!6602 = !DILocalVariable(name: "index", scope: !6603, file: !49, line: 594, type: !7)
!6603 = distinct !DILexicalBlock(scope: !6604, file: !49, line: 593, column: 42)
!6604 = distinct !DILexicalBlock(scope: !6598, file: !49, line: 593, column: 6)
!6605 = !DILocation(line: 591, column: 61, scope: !6598)
!6606 = !DILocation(line: 591, column: 73, scope: !6598)
!6607 = !DILocation(line: 593, column: 27, scope: !6604)
!6608 = !DILocation(line: 593, column: 6, scope: !6604)
!6609 = !DILocation(line: 593, column: 33, scope: !6604)
!6610 = !DILocation(line: 593, column: 36, scope: !6604)
!6611 = !DILocation(line: 593, column: 6, scope: !6598)
!6612 = !DILocation(line: 594, column: 3, scope: !6603)
!6613 = !DILocation(line: 594, column: 16, scope: !6603)
!6614 = !DILocation(line: 596, column: 7, scope: !6615)
!6615 = distinct !DILexicalBlock(scope: !6603, file: !49, line: 596, column: 7)
!6616 = !DILocation(line: 596, column: 12, scope: !6615)
!6617 = !DILocation(line: 596, column: 7, scope: !6603)
!6618 = !DILocation(line: 597, column: 25, scope: !6615)
!6619 = !DILocation(line: 597, column: 31, scope: !6615)
!6620 = !DILocation(line: 597, column: 11, scope: !6615)
!6621 = !DILocation(line: 597, column: 4, scope: !6615)
!6622 = !DILocation(line: 599, column: 11, scope: !6603)
!6623 = !DILocation(line: 599, column: 9, scope: !6603)
!6624 = !DILocation(line: 601, column: 33, scope: !6603)
!6625 = !DILocation(line: 601, column: 40, scope: !6603)
!6626 = !DILocation(line: 601, column: 20, scope: !6603)
!6627 = !DILocation(line: 601, column: 5, scope: !6603)
!6628 = !DILocation(line: 601, column: 51, scope: !6603)
!6629 = !DILocation(line: 602, column: 5, scope: !6603)
!6630 = !DILocation(line: 602, column: 12, scope: !6603)
!6631 = !DILocation(line: 600, column: 10, scope: !6603)
!6632 = !DILocation(line: 600, column: 3, scope: !6603)
!6633 = !DILocation(line: 603, column: 2, scope: !6604)
!6634 = !DILocation(line: 604, column: 19, scope: !6598)
!6635 = !DILocation(line: 604, column: 25, scope: !6598)
!6636 = !DILocation(line: 604, column: 9, scope: !6598)
!6637 = !DILocation(line: 604, column: 2, scope: !6598)
!6638 = !DILocation(line: 605, column: 1, scope: !6598)
!6639 = !DISubprogram(name: "kmalloc_large", scope: !49, file: !49, line: 531, type: !5665, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6640 = distinct !DISubprogram(name: "__kmalloc_index", scope: !49, file: !49, line: 444, type: !6641, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6643)
!6641 = !DISubroutineType(types: !6642)
!6642 = !{!7, !95, !926}
!6643 = !{!6644, !6645}
!6644 = !DILocalVariable(name: "size", arg: 1, scope: !6640, file: !49, line: 444, type: !95)
!6645 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6640, file: !49, line: 445, type: !926)
!6646 = !DILocation(line: 444, column: 60, scope: !6640)
!6647 = !DILocation(line: 445, column: 16, scope: !6640)
!6648 = !DILocation(line: 447, column: 7, scope: !6649)
!6649 = distinct !DILexicalBlock(scope: !6640, file: !49, line: 447, column: 6)
!6650 = !DILocation(line: 447, column: 6, scope: !6640)
!6651 = !DILocation(line: 448, column: 3, scope: !6649)
!6652 = !DILocation(line: 450, column: 6, scope: !6653)
!6653 = distinct !DILexicalBlock(scope: !6640, file: !49, line: 450, column: 6)
!6654 = !DILocation(line: 450, column: 11, scope: !6653)
!6655 = !DILocation(line: 450, column: 6, scope: !6640)
!6656 = !DILocation(line: 451, column: 3, scope: !6653)
!6657 = !DILocation(line: 453, column: 32, scope: !6658)
!6658 = distinct !DILexicalBlock(scope: !6640, file: !49, line: 453, column: 6)
!6659 = !DILocation(line: 453, column: 37, scope: !6658)
!6660 = !DILocation(line: 453, column: 42, scope: !6658)
!6661 = !DILocation(line: 453, column: 45, scope: !6658)
!6662 = !DILocation(line: 453, column: 50, scope: !6658)
!6663 = !DILocation(line: 453, column: 6, scope: !6640)
!6664 = !DILocation(line: 454, column: 3, scope: !6658)
!6665 = !DILocation(line: 455, column: 32, scope: !6666)
!6666 = distinct !DILexicalBlock(scope: !6640, file: !49, line: 455, column: 6)
!6667 = !DILocation(line: 455, column: 37, scope: !6666)
!6668 = !DILocation(line: 455, column: 43, scope: !6666)
!6669 = !DILocation(line: 455, column: 46, scope: !6666)
!6670 = !DILocation(line: 455, column: 51, scope: !6666)
!6671 = !DILocation(line: 455, column: 6, scope: !6640)
!6672 = !DILocation(line: 456, column: 3, scope: !6666)
!6673 = !DILocation(line: 457, column: 6, scope: !6674)
!6674 = distinct !DILexicalBlock(scope: !6640, file: !49, line: 457, column: 6)
!6675 = !DILocation(line: 457, column: 11, scope: !6674)
!6676 = !DILocation(line: 457, column: 6, scope: !6640)
!6677 = !DILocation(line: 457, column: 26, scope: !6674)
!6678 = !DILocation(line: 458, column: 6, scope: !6679)
!6679 = distinct !DILexicalBlock(scope: !6640, file: !49, line: 458, column: 6)
!6680 = !DILocation(line: 458, column: 11, scope: !6679)
!6681 = !DILocation(line: 458, column: 6, scope: !6640)
!6682 = !DILocation(line: 458, column: 26, scope: !6679)
!6683 = !DILocation(line: 459, column: 6, scope: !6684)
!6684 = distinct !DILexicalBlock(scope: !6640, file: !49, line: 459, column: 6)
!6685 = !DILocation(line: 459, column: 11, scope: !6684)
!6686 = !DILocation(line: 459, column: 6, scope: !6640)
!6687 = !DILocation(line: 459, column: 26, scope: !6684)
!6688 = !DILocation(line: 460, column: 6, scope: !6689)
!6689 = distinct !DILexicalBlock(scope: !6640, file: !49, line: 460, column: 6)
!6690 = !DILocation(line: 460, column: 11, scope: !6689)
!6691 = !DILocation(line: 460, column: 6, scope: !6640)
!6692 = !DILocation(line: 460, column: 26, scope: !6689)
!6693 = !DILocation(line: 461, column: 6, scope: !6694)
!6694 = distinct !DILexicalBlock(scope: !6640, file: !49, line: 461, column: 6)
!6695 = !DILocation(line: 461, column: 11, scope: !6694)
!6696 = !DILocation(line: 461, column: 6, scope: !6640)
!6697 = !DILocation(line: 461, column: 26, scope: !6694)
!6698 = !DILocation(line: 462, column: 6, scope: !6699)
!6699 = distinct !DILexicalBlock(scope: !6640, file: !49, line: 462, column: 6)
!6700 = !DILocation(line: 462, column: 11, scope: !6699)
!6701 = !DILocation(line: 462, column: 6, scope: !6640)
!6702 = !DILocation(line: 462, column: 26, scope: !6699)
!6703 = !DILocation(line: 463, column: 6, scope: !6704)
!6704 = distinct !DILexicalBlock(scope: !6640, file: !49, line: 463, column: 6)
!6705 = !DILocation(line: 463, column: 11, scope: !6704)
!6706 = !DILocation(line: 463, column: 6, scope: !6640)
!6707 = !DILocation(line: 463, column: 26, scope: !6704)
!6708 = !DILocation(line: 464, column: 6, scope: !6709)
!6709 = distinct !DILexicalBlock(scope: !6640, file: !49, line: 464, column: 6)
!6710 = !DILocation(line: 464, column: 11, scope: !6709)
!6711 = !DILocation(line: 464, column: 6, scope: !6640)
!6712 = !DILocation(line: 464, column: 26, scope: !6709)
!6713 = !DILocation(line: 465, column: 6, scope: !6714)
!6714 = distinct !DILexicalBlock(scope: !6640, file: !49, line: 465, column: 6)
!6715 = !DILocation(line: 465, column: 11, scope: !6714)
!6716 = !DILocation(line: 465, column: 6, scope: !6640)
!6717 = !DILocation(line: 465, column: 26, scope: !6714)
!6718 = !DILocation(line: 466, column: 6, scope: !6719)
!6719 = distinct !DILexicalBlock(scope: !6640, file: !49, line: 466, column: 6)
!6720 = !DILocation(line: 466, column: 11, scope: !6719)
!6721 = !DILocation(line: 466, column: 6, scope: !6640)
!6722 = !DILocation(line: 466, column: 26, scope: !6719)
!6723 = !DILocation(line: 467, column: 6, scope: !6724)
!6724 = distinct !DILexicalBlock(scope: !6640, file: !49, line: 467, column: 6)
!6725 = !DILocation(line: 467, column: 11, scope: !6724)
!6726 = !DILocation(line: 467, column: 6, scope: !6640)
!6727 = !DILocation(line: 467, column: 26, scope: !6724)
!6728 = !DILocation(line: 468, column: 6, scope: !6729)
!6729 = distinct !DILexicalBlock(scope: !6640, file: !49, line: 468, column: 6)
!6730 = !DILocation(line: 468, column: 11, scope: !6729)
!6731 = !DILocation(line: 468, column: 6, scope: !6640)
!6732 = !DILocation(line: 468, column: 26, scope: !6729)
!6733 = !DILocation(line: 469, column: 6, scope: !6734)
!6734 = distinct !DILexicalBlock(scope: !6640, file: !49, line: 469, column: 6)
!6735 = !DILocation(line: 469, column: 11, scope: !6734)
!6736 = !DILocation(line: 469, column: 6, scope: !6640)
!6737 = !DILocation(line: 469, column: 26, scope: !6734)
!6738 = !DILocation(line: 470, column: 6, scope: !6739)
!6739 = distinct !DILexicalBlock(scope: !6640, file: !49, line: 470, column: 6)
!6740 = !DILocation(line: 470, column: 11, scope: !6739)
!6741 = !DILocation(line: 470, column: 6, scope: !6640)
!6742 = !DILocation(line: 470, column: 26, scope: !6739)
!6743 = !DILocation(line: 471, column: 6, scope: !6744)
!6744 = distinct !DILexicalBlock(scope: !6640, file: !49, line: 471, column: 6)
!6745 = !DILocation(line: 471, column: 11, scope: !6744)
!6746 = !DILocation(line: 471, column: 6, scope: !6640)
!6747 = !DILocation(line: 471, column: 26, scope: !6744)
!6748 = !DILocation(line: 472, column: 6, scope: !6749)
!6749 = distinct !DILexicalBlock(scope: !6640, file: !49, line: 472, column: 6)
!6750 = !DILocation(line: 472, column: 11, scope: !6749)
!6751 = !DILocation(line: 472, column: 6, scope: !6640)
!6752 = !DILocation(line: 472, column: 26, scope: !6749)
!6753 = !DILocation(line: 473, column: 6, scope: !6754)
!6754 = distinct !DILexicalBlock(scope: !6640, file: !49, line: 473, column: 6)
!6755 = !DILocation(line: 473, column: 11, scope: !6754)
!6756 = !DILocation(line: 473, column: 6, scope: !6640)
!6757 = !DILocation(line: 473, column: 26, scope: !6754)
!6758 = !DILocation(line: 474, column: 6, scope: !6759)
!6759 = distinct !DILexicalBlock(scope: !6640, file: !49, line: 474, column: 6)
!6760 = !DILocation(line: 474, column: 11, scope: !6759)
!6761 = !DILocation(line: 474, column: 6, scope: !6640)
!6762 = !DILocation(line: 474, column: 27, scope: !6759)
!6763 = !DILocation(line: 475, column: 6, scope: !6764)
!6764 = distinct !DILexicalBlock(scope: !6640, file: !49, line: 475, column: 6)
!6765 = !DILocation(line: 475, column: 11, scope: !6764)
!6766 = !DILocation(line: 475, column: 6, scope: !6640)
!6767 = !DILocation(line: 475, column: 32, scope: !6764)
!6768 = !DILocation(line: 477, column: 50, scope: !6769)
!6769 = distinct !DILexicalBlock(scope: !6640, file: !49, line: 477, column: 6)
!6770 = !DILocation(line: 477, column: 6, scope: !6640)
!6771 = !DILocation(line: 478, column: 3, scope: !6769)
!6772 = !DILocation(line: 478, column: 3, scope: !6773)
!6773 = distinct !DILexicalBlock(scope: !6774, file: !49, line: 478, column: 3)
!6774 = distinct !DILexicalBlock(scope: !6769, file: !49, line: 478, column: 3)
!6775 = !{i32 -2141647967}
!6776 = !DILocation(line: 478, column: 3, scope: !6774)
!6777 = !DILocation(line: 480, column: 3, scope: !6769)
!6778 = !DILocation(line: 480, column: 3, scope: !6779)
!6779 = distinct !DILexicalBlock(scope: !6769, file: !49, line: 480, column: 3)
!6780 = !DILocation(line: 480, column: 3, scope: !6781)
!6781 = distinct !DILexicalBlock(scope: !6779, file: !49, line: 480, column: 3)
!6782 = !DILocation(line: 480, column: 3, scope: !6783)
!6783 = distinct !DILexicalBlock(scope: !6779, file: !49, line: 480, column: 3)
!6784 = !{i64 2153319532, i64 2153319561, i64 2153319607, i64 2153319665, i64 2153319719, i64 2153319773, i64 2153319828, i64 2153319859}
!6785 = !DILocation(line: 483, column: 2, scope: !6640)
!6786 = !DILocation(line: 484, column: 1, scope: !6640)
!6787 = !DISubprogram(name: "kmalloc_trace", scope: !49, file: !49, line: 525, type: !6788, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6788 = !DISubroutineType(types: !6789)
!6789 = !{!80, !6790, !314, !95}
!6790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6791, size: 64)
!6791 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !6792, line: 325, flags: DIFlagFwdDecl)
!6792 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!6793 = distinct !DISubprogram(name: "kmalloc_type", scope: !49, file: !49, line: 401, type: !6794, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6796)
!6794 = !DISubroutineType(types: !6795)
!6795 = !{!48, !314, !99}
!6796 = !{!6797, !6798}
!6797 = !DILocalVariable(name: "flags", arg: 1, scope: !6793, file: !49, line: 401, type: !314)
!6798 = !DILocalVariable(name: "caller", arg: 2, scope: !6793, file: !49, line: 401, type: !99)
!6799 = !DILocation(line: 401, column: 67, scope: !6793)
!6800 = !DILocation(line: 401, column: 88, scope: !6793)
!6801 = !DILocation(line: 407, column: 6, scope: !6802)
!6802 = distinct !DILexicalBlock(scope: !6793, file: !49, line: 407, column: 6)
!6803 = !DILocation(line: 407, column: 6, scope: !6793)
!6804 = !DILocation(line: 413, column: 3, scope: !6802)
!6805 = !DILocation(line: 423, column: 38, scope: !6806)
!6806 = distinct !DILexicalBlock(scope: !6793, file: !49, line: 423, column: 6)
!6807 = !DILocation(line: 423, column: 44, scope: !6806)
!6808 = !DILocation(line: 423, column: 6, scope: !6793)
!6809 = !DILocation(line: 424, column: 3, scope: !6806)
!6810 = !DILocation(line: 426, column: 3, scope: !6811)
!6811 = distinct !DILexicalBlock(scope: !6793, file: !49, line: 425, column: 6)
!6812 = !DILocation(line: 429, column: 1, scope: !6793)
!6813 = !DISubprogram(name: "__kmalloc", scope: !49, file: !49, line: 488, type: !5665, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6814 = !DISubprogram(name: "__compiletime_assert_245", scope: !49, file: !49, line: 478, type: !3229, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6815 = distinct !DISubprogram(name: "const_test_bit", scope: !6816, file: !6816, line: 166, type: !6817, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6821)
!6816 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!6817 = !DISubroutineType(types: !6818)
!6818 = !{!926, !99, !6819}
!6819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6820, size: 64)
!6820 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6549)
!6821 = !{!6822, !6823, !6824, !6825, !6826}
!6822 = !DILocalVariable(name: "nr", arg: 1, scope: !6815, file: !6816, line: 166, type: !99)
!6823 = !DILocalVariable(name: "addr", arg: 2, scope: !6815, file: !6816, line: 166, type: !6819)
!6824 = !DILocalVariable(name: "p", scope: !6815, file: !6816, line: 168, type: !340)
!6825 = !DILocalVariable(name: "mask", scope: !6815, file: !6816, line: 169, type: !99)
!6826 = !DILocalVariable(name: "val", scope: !6815, file: !6816, line: 170, type: !99)
!6827 = !DILocation(line: 166, column: 30, scope: !6815)
!6828 = !DILocation(line: 166, column: 64, scope: !6815)
!6829 = !DILocation(line: 168, column: 2, scope: !6815)
!6830 = !DILocation(line: 168, column: 23, scope: !6815)
!6831 = !DILocation(line: 168, column: 50, scope: !6815)
!6832 = !DILocation(line: 168, column: 57, scope: !6815)
!6833 = !DILocation(line: 168, column: 55, scope: !6815)
!6834 = !DILocation(line: 169, column: 2, scope: !6815)
!6835 = !DILocation(line: 169, column: 16, scope: !6815)
!6836 = !DILocation(line: 169, column: 23, scope: !6815)
!6837 = !DILocation(line: 170, column: 2, scope: !6815)
!6838 = !DILocation(line: 170, column: 16, scope: !6815)
!6839 = !DILocation(line: 170, column: 23, scope: !6815)
!6840 = !DILocation(line: 170, column: 22, scope: !6815)
!6841 = !DILocation(line: 172, column: 12, scope: !6815)
!6842 = !DILocation(line: 172, column: 18, scope: !6815)
!6843 = !DILocation(line: 172, column: 16, scope: !6815)
!6844 = !DILocation(line: 172, column: 10, scope: !6815)
!6845 = !DILocation(line: 172, column: 9, scope: !6815)
!6846 = !DILocation(line: 173, column: 1, scope: !6815)
!6847 = !DILocation(line: 172, column: 2, scope: !6815)
!6848 = distinct !DISubprogram(name: "_test_bit", scope: !6849, file: !6849, line: 139, type: !6817, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6850)
!6849 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!6850 = !{!6851, !6852}
!6851 = !DILocalVariable(name: "nr", arg: 1, scope: !6848, file: !6849, line: 139, type: !99)
!6852 = !DILocalVariable(name: "addr", arg: 2, scope: !6848, file: !6849, line: 139, type: !6819)
!6853 = !DILocation(line: 139, column: 25, scope: !6848)
!6854 = !DILocation(line: 139, column: 59, scope: !6848)
!6855 = !DILocation(line: 141, column: 25, scope: !6848)
!6856 = !DILocation(line: 141, column: 32, scope: !6848)
!6857 = !DILocation(line: 141, column: 30, scope: !6848)
!6858 = !DILocation(line: 141, column: 2, scope: !6848)
!6859 = !DILocation(line: 142, column: 23, scope: !6848)
!6860 = !DILocation(line: 142, column: 27, scope: !6848)
!6861 = !DILocation(line: 142, column: 9, scope: !6848)
!6862 = !DILocation(line: 142, column: 2, scope: !6848)
!6863 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !6581, file: !6581, line: 66, type: !6582, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6864)
!6864 = !{!6865, !6866}
!6865 = !DILocalVariable(name: "v", arg: 1, scope: !6863, file: !6581, line: 66, type: !6584)
!6866 = !DILocalVariable(name: "size", arg: 2, scope: !6863, file: !6581, line: 66, type: !95)
!6867 = !DILocation(line: 66, column: 73, scope: !6863)
!6868 = !DILocation(line: 66, column: 83, scope: !6863)
!6869 = !DILocation(line: 68, column: 19, scope: !6863)
!6870 = !DILocation(line: 68, column: 22, scope: !6863)
!6871 = !DILocation(line: 68, column: 2, scope: !6863)
!6872 = !DILocation(line: 69, column: 2, scope: !6863)
!6873 = !DILocation(line: 70, column: 1, scope: !6863)
!6874 = distinct !DISubprogram(name: "arch_test_bit", scope: !6875, file: !6875, line: 237, type: !6817, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6876)
!6875 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!6876 = !{!6877, !6878}
!6877 = !DILocalVariable(name: "nr", arg: 1, scope: !6874, file: !6875, line: 237, type: !99)
!6878 = !DILocalVariable(name: "addr", arg: 2, scope: !6874, file: !6875, line: 237, type: !6819)
!6879 = !DILocation(line: 237, column: 29, scope: !6874)
!6880 = !DILocation(line: 237, column: 63, scope: !6874)
!6881 = !DILocation(line: 239, column: 30, scope: !6874)
!6882 = !DILocation(line: 239, column: 9, scope: !6874)
!6883 = !DILocation(line: 239, column: 54, scope: !6874)
!6884 = !DILocation(line: 239, column: 58, scope: !6874)
!6885 = !DILocation(line: 239, column: 36, scope: !6874)
!6886 = !DILocation(line: 240, column: 26, scope: !6874)
!6887 = !DILocation(line: 240, column: 30, scope: !6874)
!6888 = !DILocation(line: 240, column: 8, scope: !6874)
!6889 = !DILocation(line: 239, column: 2, scope: !6874)
!6890 = distinct !DISubprogram(name: "kasan_check_read", scope: !6891, file: !6891, line: 40, type: !6892, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6894)
!6891 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6892 = !DISubroutineType(types: !6893)
!6893 = !{!926, !6584, !7}
!6894 = !{!6895, !6896}
!6895 = !DILocalVariable(name: "p", arg: 1, scope: !6890, file: !6891, line: 40, type: !6584)
!6896 = !DILocalVariable(name: "size", arg: 2, scope: !6890, file: !6891, line: 40, type: !7)
!6897 = !DILocation(line: 40, column: 58, scope: !6890)
!6898 = !DILocation(line: 40, column: 74, scope: !6890)
!6899 = !DILocation(line: 42, column: 2, scope: !6890)
!6900 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6901, file: !6901, line: 229, type: !6902, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6904)
!6901 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6902 = !DISubroutineType(types: !6903)
!6903 = !{null, !6584, !95, !82}
!6904 = !{!6905, !6906, !6907}
!6905 = !DILocalVariable(name: "ptr", arg: 1, scope: !6900, file: !6901, line: 229, type: !6584)
!6906 = !DILocalVariable(name: "size", arg: 2, scope: !6900, file: !6901, line: 229, type: !95)
!6907 = !DILocalVariable(name: "type", arg: 3, scope: !6900, file: !6901, line: 230, type: !82)
!6908 = !DILocation(line: 229, column: 60, scope: !6900)
!6909 = !DILocation(line: 229, column: 72, scope: !6900)
!6910 = !DILocation(line: 230, column: 15, scope: !6900)
!6911 = !DILocation(line: 230, column: 23, scope: !6900)
!6912 = distinct !DISubprogram(name: "constant_test_bit", scope: !6875, file: !6875, line: 204, type: !6913, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6915)
!6913 = !DISubroutineType(types: !6914)
!6914 = !{!926, !343, !6819}
!6915 = !{!6916, !6917}
!6916 = !DILocalVariable(name: "nr", arg: 1, scope: !6912, file: !6875, line: 204, type: !343)
!6917 = !DILocalVariable(name: "addr", arg: 2, scope: !6912, file: !6875, line: 204, type: !6819)
!6918 = !DILocation(line: 204, column: 52, scope: !6912)
!6919 = !DILocation(line: 204, column: 86, scope: !6912)
!6920 = !DILocation(line: 206, column: 19, scope: !6912)
!6921 = !DILocation(line: 206, column: 22, scope: !6912)
!6922 = !DILocation(line: 206, column: 15, scope: !6912)
!6923 = !DILocation(line: 207, column: 4, scope: !6912)
!6924 = !DILocation(line: 207, column: 9, scope: !6912)
!6925 = !DILocation(line: 207, column: 12, scope: !6912)
!6926 = !DILocation(line: 206, column: 44, scope: !6912)
!6927 = !DILocation(line: 207, column: 37, scope: !6912)
!6928 = !DILocation(line: 206, column: 2, scope: !6912)
!6929 = distinct !DISubprogram(name: "variable_test_bit", scope: !6875, file: !6875, line: 224, type: !6913, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6930)
!6930 = !{!6931, !6932, !6933}
!6931 = !DILocalVariable(name: "nr", arg: 1, scope: !6929, file: !6875, line: 224, type: !343)
!6932 = !DILocalVariable(name: "addr", arg: 2, scope: !6929, file: !6875, line: 224, type: !6819)
!6933 = !DILocalVariable(name: "oldbit", scope: !6929, file: !6875, line: 226, type: !926)
!6934 = !DILocation(line: 224, column: 52, scope: !6929)
!6935 = !DILocation(line: 224, column: 86, scope: !6929)
!6936 = !DILocation(line: 226, column: 2, scope: !6929)
!6937 = !DILocation(line: 226, column: 7, scope: !6929)
!6938 = !DILocation(line: 231, column: 33, scope: !6929)
!6939 = !DILocation(line: 231, column: 46, scope: !6929)
!6940 = !DILocation(line: 228, column: 2, scope: !6929)
!6941 = !{i64 2147833215, i64 2147833289}
!6942 = !DILocation(line: 233, column: 9, scope: !6929)
!6943 = !DILocation(line: 234, column: 1, scope: !6929)
!6944 = !DILocation(line: 233, column: 2, scope: !6929)
!6945 = !DISubprogram(name: "e820__mapped_all", scope: !5868, file: !5868, line: 15, type: !6946, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6946 = !DISubroutineType(types: !6947)
!6947 = !{!926, !315, !315, !5}
!6948 = distinct !DISubprogram(name: "efi_is_mixed", scope: !5825, file: !5825, line: 166, type: !2638, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6949 = !DILocation(line: 170, column: 39, scope: !6948)
!6950 = !DILocation(line: 170, column: 38, scope: !6948)
!6951 = !DILocation(line: 170, column: 2, scope: !6948)
!6952 = !DISubprogram(name: "kernel_unmap_pages_in_pgd", scope: !1728, file: !1728, line: 582, type: !6953, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6953 = !DISubroutineType(types: !6954)
!6954 = !{!82, !4024, !99, !99}
!6955 = !DISubprogram(name: "memcmp", scope: !6956, file: !6956, line: 196, type: !6957, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6956 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!6957 = !DISubroutineType(types: !6958)
!6958 = !{!82, !2284, !2284, !96}
!6959 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !6581, file: !6581, line: 80, type: !6582, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6960)
!6960 = !{!6961, !6962}
!6961 = !DILocalVariable(name: "v", arg: 1, scope: !6959, file: !6581, line: 80, type: !6584)
!6962 = !DILocalVariable(name: "size", arg: 2, scope: !6959, file: !6581, line: 80, type: !95)
!6963 = !DILocation(line: 80, column: 74, scope: !6959)
!6964 = !DILocation(line: 80, column: 84, scope: !6959)
!6965 = !DILocation(line: 82, column: 20, scope: !6959)
!6966 = !DILocation(line: 82, column: 23, scope: !6959)
!6967 = !DILocation(line: 82, column: 2, scope: !6959)
!6968 = !DILocation(line: 83, column: 2, scope: !6959)
!6969 = !DILocation(line: 84, column: 1, scope: !6959)
!6970 = distinct !DISubprogram(name: "arch_clear_bit", scope: !6875, file: !6875, line: 72, type: !6546, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6971)
!6971 = !{!6972, !6973}
!6972 = !DILocalVariable(name: "nr", arg: 1, scope: !6970, file: !6875, line: 72, type: !343)
!6973 = !DILocalVariable(name: "addr", arg: 2, scope: !6970, file: !6875, line: 72, type: !6548)
!6974 = !DILocation(line: 72, column: 21, scope: !6970)
!6975 = !DILocation(line: 72, column: 49, scope: !6970)
!6976 = !DILocation(line: 74, column: 27, scope: !6977)
!6977 = distinct !DILexicalBlock(scope: !6970, file: !6875, line: 74, column: 6)
!6978 = !DILocation(line: 74, column: 6, scope: !6977)
!6979 = !DILocation(line: 74, column: 6, scope: !6970)
!6980 = !DILocation(line: 76, column: 6, scope: !6981)
!6981 = distinct !DILexicalBlock(scope: !6977, file: !6875, line: 74, column: 32)
!6982 = !DILocation(line: 77, column: 13, scope: !6981)
!6983 = !DILocation(line: 77, column: 12, scope: !6981)
!6984 = !DILocation(line: 75, column: 3, scope: !6981)
!6985 = !{i64 2147820891, i64 2147820930, i64 2147820951, i64 2147820988, i64 2147821011, i64 2147820881}
!6986 = !DILocation(line: 78, column: 2, scope: !6981)
!6987 = !DILocation(line: 80, column: 8, scope: !6988)
!6988 = distinct !DILexicalBlock(scope: !6977, file: !6875, line: 78, column: 9)
!6989 = !DILocation(line: 80, column: 32, scope: !6988)
!6990 = !DILocation(line: 79, column: 3, scope: !6988)
!6991 = !{i64 2147821176, i64 2147821215, i64 2147821236, i64 2147821273, i64 2147821296, i64 2147821166}
!6992 = !DILocation(line: 82, column: 1, scope: !6970)
!6993 = distinct !DISubprogram(name: "kasan_check_write", scope: !6891, file: !6891, line: 44, type: !6892, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6994)
!6994 = !{!6995, !6996}
!6995 = !DILocalVariable(name: "p", arg: 1, scope: !6993, file: !6891, line: 44, type: !6584)
!6996 = !DILocalVariable(name: "size", arg: 2, scope: !6993, file: !6891, line: 44, type: !7)
!6997 = !DILocation(line: 44, column: 59, scope: !6993)
!6998 = !DILocation(line: 44, column: 75, scope: !6993)
!6999 = !DILocation(line: 46, column: 2, scope: !6993)
