; ModuleID = 'arch/x86/mm/ioremap.c'
source_filename = "arch/x86/mm/ioremap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ioremap: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ioremap ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ioremap_uc: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad ioremap_uc ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ioremap_wc: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ioremap_wc ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ioremap_wt: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ioremap_wt ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ioremap_encrypted: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ioremap_encrypted ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ioremap_cache: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ioremap_cache ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ioremap_prot: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ioremap_prot ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_iounmap: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad iounmap ; .previous"

%struct.pte_t = type { i64 }
%struct.mm_struct = type { %struct.anon.13, [0 x i64] }
%struct.anon.13 = type { %struct.anon.14, %struct.maple_tree, ptr, i64, i64, i64, i64, i64, ptr, %struct.atomic_t, %struct.atomic_t, ptr, i64, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [52 x i64], [4 x %struct.percpu_counter], ptr, %struct.mm_context_t, i64, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, %struct.uprobes_state, %struct.atomic64_t, %struct.work_struct, [48 x i8] }
%struct.anon.14 = type { %struct.atomic_t, [60 x i8] }
%struct.maple_tree = type { %union.anon.15, i32, ptr }
%union.anon.15 = type { %struct.spinlock }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.seqcount = type { i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.mm_context_t = type { i64, %struct.atomic64_t, i64, %struct.rw_semaphore, ptr, i64, %struct.mutex, ptr, ptr, %struct.atomic_t, i16, i16 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type { ptr }
%struct.atomic64_t = type { i64 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.cpuinfo_x86 = type { %union.anon.16, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.18, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon.16 = type { i32 }
%union.anon.18 = type { i64, [88 x i8] }
%struct.pcpu_hot = type { %union.anon.29 }
%union.anon.29 = type { %struct.anon.30, [16 x i8] }
%struct.anon.30 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.static_call_key = type { ptr, %union.anon.31 }
%union.anon.31 = type { i64 }
%struct.x86_platform_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.x86_legacy_features, ptr, ptr, ptr, %struct.x86_hyper_runtime, %struct.x86_guest }
%struct.x86_legacy_features = type { i32, i32, i32, i32, i32, %struct.x86_legacy_devices }
%struct.x86_legacy_devices = type { i32 }
%struct.x86_hyper_runtime = type { ptr, ptr, ptr, ptr }
%struct.x86_guest = type { ptr, ptr, ptr, ptr }
%struct.ioremap_desc = type { i32 }
%struct.pgprot = type { i64 }
%struct.vm_struct = type { ptr, ptr, i64, i64, ptr, i32, i32, i64, ptr }
%struct.pgd_t = type { i64 }
%struct.pmd_t = type { i64 }
%struct.resource = type { i64, i64, ptr, i64, i64, ptr, ptr, ptr }
%struct.page = type { i64, %union.anon.19, %union.anon.28, %struct.atomic_t, [8 x i8] }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { %union.anon.21, ptr, %union.anon.23, i64 }
%union.anon.21 = type { %struct.list_head }
%union.anon.23 = type { i64 }
%union.anon.28 = type { %struct.atomic_t }
%struct.mem_section = type { i64, ptr }
%struct.mem_section_usage = type { %struct.callback_head, [1 x i64], [0 x i64] }
%struct.callback_head = type { ptr, ptr }
%struct.p4d_t = type { i64 }
%struct.pud_t = type { i64 }

@__UNIQUE_ID___addressable_ioremap345 = internal global ptr @ioremap, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_ioremap_uc346 = internal global ptr @ioremap_uc, section ".discard.addressable", align 8, !dbg !5424
@__UNIQUE_ID___addressable_ioremap_wc347 = internal global ptr @ioremap_wc, section ".discard.addressable", align 8, !dbg !5426
@__UNIQUE_ID___addressable_ioremap_wt348 = internal global ptr @ioremap_wt, section ".discard.addressable", align 8, !dbg !5428
@__UNIQUE_ID___addressable_ioremap_encrypted349 = internal global ptr @ioremap_encrypted, section ".discard.addressable", align 8, !dbg !5430
@__UNIQUE_ID___addressable_ioremap_cache350 = internal global ptr @ioremap_cache, section ".discard.addressable", align 8, !dbg !5432
@__UNIQUE_ID___addressable_ioremap_prot351 = internal global ptr @ioremap_prot, section ".discard.addressable", align 8, !dbg !5434
@high_memory = external dso_local global ptr, align 8
@.str = private unnamed_addr constant [61 x i8] c"iounmap() called for ISA range not obtained using ioremap()\0A\00", align 1, !dbg !5436
@.str.1 = private unnamed_addr constant [22 x i8] c"arch/x86/mm/ioremap.c\00", align 1, !dbg !5441
@.str.2 = private unnamed_addr constant [27 x i8] c"\013iounmap: bad address %p\0A\00", align 1, !dbg !5446
@__UNIQUE_ID___addressable_iounmap352 = internal global ptr @iounmap, section ".discard.addressable", align 8, !dbg !5451
@bm_pte = internal global [512 x %struct.pte_t] zeroinitializer, section ".bss..page_aligned", align 4096, !dbg !5466
@init_mm = external dso_local global %struct.mm_struct, align 64
@.str.3 = private unnamed_addr constant [16 x i8] c"\014pmd %p != %p\0A\00", align 1, !dbg !5453
@.str.4 = private unnamed_addr constant [39 x i8] c"\014fix_to_virt(FIX_BTMAP_BEGIN): %08lx\0A\00", align 1, !dbg !5455
@.str.5 = private unnamed_addr constant [39 x i8] c"\014fix_to_virt(FIX_BTMAP_END):   %08lx\0A\00", align 1, !dbg !5460
@.str.6 = private unnamed_addr constant [27 x i8] c"\014FIX_BTMAP_END:       %d\0A\00", align 1, !dbg !5462
@.str.7 = private unnamed_addr constant [27 x i8] c"\014FIX_BTMAP_BEGIN:     %d\0A\00", align 1, !dbg !5464
@__supported_pte_mask = external dso_local global i64, align 8
@.str.8 = private unnamed_addr constant [42 x i8] c"\014ioremap: invalid physical address %llx\0A\00", align 1, !dbg !5471
@__ioremap_caller.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !5476
@.str.9 = private unnamed_addr constant [29 x i8] c"ioremap on RAM at %pa - %pa\0A\00", align 1, !dbg !5525
@.str.10 = private unnamed_addr constant [37 x i8] c"\013ioremap memtype_reserve failed %d\0A\00", align 1, !dbg !5530
@.str.11 = private unnamed_addr constant [61 x i8] c"\013ioremap error for 0x%llx-0x%llx, requested 0x%x, got 0x%x\0A\00", align 1, !dbg !5535
@__default_kernel_pte_mask = external dso_local global i64, align 8
@.str.12 = private unnamed_addr constant [36 x i8] c"\014caller %pS mapping multiple BARs\0A\00", align 1, !dbg !5537
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@vmemmap_base = external dso_local global i64, align 8
@mem_section = external dso_local global ptr, align 8
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@rcu_read_unlock_sched.__UNIQUE_ID___addressable___SCK__preempt_schedule89 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !5542
@__SCK__preempt_schedule = external dso_local global %struct.static_call_key, align 8
@x86_platform = external dso_local global %struct.x86_platform_ops, align 8
@page_offset_base = external dso_local global i64, align 8
@pgdir_shift = external dso_local global i32, align 4
@ptrs_per_p4d = external dso_local global i32, align 4
@phys_base = external dso_local global i64, align 8
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID___addressable_ioremap345, ptr @__UNIQUE_ID___addressable_ioremap_uc346, ptr @__UNIQUE_ID___addressable_ioremap_wc347, ptr @__UNIQUE_ID___addressable_ioremap_wt348, ptr @__UNIQUE_ID___addressable_ioremap_encrypted349, ptr @__UNIQUE_ID___addressable_ioremap_cache350, ptr @__UNIQUE_ID___addressable_ioremap_prot351, ptr @__UNIQUE_ID___addressable_iounmap352, ptr @rcu_read_unlock_sched.__UNIQUE_ID___addressable___SCK__preempt_schedule89], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ioremap_change_attr(i64 noundef %vaddr, i64 noundef %size, i32 noundef %pcm) #0 align 16 !dbg !5556 {
entry:
  %vaddr.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %pcm.addr = alloca i32, align 4
  %nrpages = alloca i64, align 8
  %err = alloca i32, align 4
  store i64 %vaddr, ptr %vaddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vaddr.addr, metadata !5560, metadata !DIExpression()), !dbg !5565
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5561, metadata !DIExpression()), !dbg !5566
  store i32 %pcm, ptr %pcm.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pcm.addr, metadata !5562, metadata !DIExpression()), !dbg !5567
  call void @llvm.lifetime.start.p0(i64 8, ptr %nrpages) #18, !dbg !5568
  call void @llvm.dbg.declare(metadata ptr %nrpages, metadata !5563, metadata !DIExpression()), !dbg !5569
  %0 = load i64, ptr %size.addr, align 8, !dbg !5570
  %shr = lshr i64 %0, 12, !dbg !5571
  store i64 %shr, ptr %nrpages, align 8, !dbg !5569
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #18, !dbg !5572
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5564, metadata !DIExpression()), !dbg !5573
  %1 = load i32, ptr %pcm.addr, align 4, !dbg !5574
  switch i32 %1, label %sw.default [
    i32 3, label %sw.bb
    i32 1, label %sw.bb1
    i32 4, label %sw.bb4
    i32 0, label %sw.bb7
  ], !dbg !5575

sw.bb:                                            ; preds = %entry
  br label %sw.default, !dbg !5576

sw.default:                                       ; preds = %entry, %sw.bb
  %2 = load i64, ptr %vaddr.addr, align 8, !dbg !5578
  %3 = load i64, ptr %nrpages, align 8, !dbg !5579
  %conv = trunc i64 %3 to i32, !dbg !5579
  %call = call i32 @_set_memory_uc(i64 noundef %2, i32 noundef %conv) #19, !dbg !5580
  store i32 %call, ptr %err, align 4, !dbg !5581
  br label %sw.epilog, !dbg !5582

sw.bb1:                                           ; preds = %entry
  %4 = load i64, ptr %vaddr.addr, align 8, !dbg !5583
  %5 = load i64, ptr %nrpages, align 8, !dbg !5584
  %conv2 = trunc i64 %5 to i32, !dbg !5584
  %call3 = call i32 @_set_memory_wc(i64 noundef %4, i32 noundef %conv2) #19, !dbg !5585
  store i32 %call3, ptr %err, align 4, !dbg !5586
  br label %sw.epilog, !dbg !5587

sw.bb4:                                           ; preds = %entry
  %6 = load i64, ptr %vaddr.addr, align 8, !dbg !5588
  %7 = load i64, ptr %nrpages, align 8, !dbg !5589
  %conv5 = trunc i64 %7 to i32, !dbg !5589
  %call6 = call i32 @_set_memory_wt(i64 noundef %6, i32 noundef %conv5) #19, !dbg !5590
  store i32 %call6, ptr %err, align 4, !dbg !5591
  br label %sw.epilog, !dbg !5592

sw.bb7:                                           ; preds = %entry
  %8 = load i64, ptr %vaddr.addr, align 8, !dbg !5593
  %9 = load i64, ptr %nrpages, align 8, !dbg !5594
  %conv8 = trunc i64 %9 to i32, !dbg !5594
  %call9 = call i32 @_set_memory_wb(i64 noundef %8, i32 noundef %conv8) #19, !dbg !5595
  store i32 %call9, ptr %err, align 4, !dbg !5596
  br label %sw.epilog, !dbg !5597

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb4, %sw.bb1, %sw.default
  %10 = load i32, ptr %err, align 4, !dbg !5598
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #18, !dbg !5599
  call void @llvm.lifetime.end.p0(i64 8, ptr %nrpages) #18, !dbg !5599
  ret i32 %10, !dbg !5600
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5601 dso_local i32 @_set_memory_uc(i64 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5605 dso_local i32 @_set_memory_wc(i64 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5606 dso_local i32 @_set_memory_wt(i64 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5607 dso_local i32 @_set_memory_wb(i64 noundef, i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @ioremap(i64 noundef %phys_addr, i64 noundef %size) #0 align 16 !dbg !5608 {
entry:
  %phys_addr.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %pcm = alloca i32, align 4
  store i64 %phys_addr, ptr %phys_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phys_addr.addr, metadata !5612, metadata !DIExpression()), !dbg !5615
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5613, metadata !DIExpression()), !dbg !5616
  call void @llvm.lifetime.start.p0(i64 4, ptr %pcm) #18, !dbg !5617
  call void @llvm.dbg.declare(metadata ptr %pcm, metadata !5614, metadata !DIExpression()), !dbg !5618
  store i32 2, ptr %pcm, align 4, !dbg !5618
  %0 = load i64, ptr %phys_addr.addr, align 8, !dbg !5619
  %1 = load i64, ptr %size.addr, align 8, !dbg !5620
  %2 = load i32, ptr %pcm, align 4, !dbg !5621
  %3 = call ptr @llvm.returnaddress(i32 0), !dbg !5622
  %call = call ptr @__ioremap_caller(i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i1 noundef zeroext false) #19, !dbg !5623
  call void @llvm.lifetime.end.p0(i64 4, ptr %pcm) #18, !dbg !5624
  ret ptr %call, !dbg !5625
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__ioremap_caller(i64 noundef %phys_addr, i64 noundef %size, i32 noundef %pcm, ptr noundef %caller, i1 noundef zeroext %encrypted) #0 align 16 !dbg !5478 {
entry:
  %retval = alloca ptr, align 8
  %phys_addr.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %pcm.addr = alloca i32, align 4
  %caller.addr = alloca ptr, align 8
  %encrypted.addr = alloca i8, align 1
  %offset = alloca i64, align 8
  %vaddr = alloca i64, align 8
  %last_addr = alloca i64, align 8
  %unaligned_phys_addr = alloca i64, align 8
  %unaligned_size = alloca i64, align 8
  %io_desc = alloca %struct.ioremap_desc, align 4
  %area = alloca ptr, align 8
  %new_pcm = alloca i32, align 4
  %prot = alloca %struct.pgprot, align 8
  %retval1 = alloca i32, align 4
  %ret_addr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp22 = alloca i64, align 8
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp53 = alloca i64, align 8
  %__ret_warn_on63 = alloca i32, align 4
  %__flags78 = alloca i32, align 4
  %tmp96 = alloca i64, align 8
  %tmp105 = alloca i64, align 8
  %tmp128 = alloca i32, align 4
  %tmp140 = alloca i32, align 4
  %.compoundliteral = alloca %struct.pgprot, align 8
  %.compoundliteral153 = alloca %struct.pgprot, align 8
  %.compoundliteral157 = alloca %struct.pgprot, align 8
  %.compoundliteral162 = alloca %struct.pgprot, align 8
  %.compoundliteral167 = alloca %struct.pgprot, align 8
  %.compoundliteral173 = alloca %struct.pgprot, align 8
  %.compoundliteral179 = alloca %struct.pgprot, align 8
  %tmp205 = alloca i32, align 4
  store i64 %phys_addr, ptr %phys_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phys_addr.addr, metadata !5482, metadata !DIExpression()), !dbg !5626
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5483, metadata !DIExpression()), !dbg !5627
  store i32 %pcm, ptr %pcm.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pcm.addr, metadata !5484, metadata !DIExpression()), !dbg !5628
  store ptr %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5485, metadata !DIExpression()), !dbg !5629
  %frombool = zext i1 %encrypted to i8
  store i8 %frombool, ptr %encrypted.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %encrypted.addr, metadata !5486, metadata !DIExpression()), !dbg !5630
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #18, !dbg !5631
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !5487, metadata !DIExpression()), !dbg !5632
  call void @llvm.lifetime.start.p0(i64 8, ptr %vaddr) #18, !dbg !5631
  call void @llvm.dbg.declare(metadata ptr %vaddr, metadata !5488, metadata !DIExpression()), !dbg !5633
  call void @llvm.lifetime.start.p0(i64 8, ptr %last_addr) #18, !dbg !5634
  call void @llvm.dbg.declare(metadata ptr %last_addr, metadata !5489, metadata !DIExpression()), !dbg !5635
  call void @llvm.lifetime.start.p0(i64 8, ptr %unaligned_phys_addr) #18, !dbg !5636
  call void @llvm.dbg.declare(metadata ptr %unaligned_phys_addr, metadata !5490, metadata !DIExpression()), !dbg !5637
  %0 = load i64, ptr %phys_addr.addr, align 8, !dbg !5638
  store i64 %0, ptr %unaligned_phys_addr, align 8, !dbg !5637
  call void @llvm.lifetime.start.p0(i64 8, ptr %unaligned_size) #18, !dbg !5639
  call void @llvm.dbg.declare(metadata ptr %unaligned_size, metadata !5492, metadata !DIExpression()), !dbg !5640
  %1 = load i64, ptr %size.addr, align 8, !dbg !5641
  store i64 %1, ptr %unaligned_size, align 8, !dbg !5640
  call void @llvm.lifetime.start.p0(i64 4, ptr %io_desc) #18, !dbg !5642
  call void @llvm.dbg.declare(metadata ptr %io_desc, metadata !5493, metadata !DIExpression()), !dbg !5643
  call void @llvm.lifetime.start.p0(i64 8, ptr %area) #18, !dbg !5644
  call void @llvm.dbg.declare(metadata ptr %area, metadata !5497, metadata !DIExpression()), !dbg !5645
  call void @llvm.lifetime.start.p0(i64 4, ptr %new_pcm) #18, !dbg !5646
  call void @llvm.dbg.declare(metadata ptr %new_pcm, metadata !5498, metadata !DIExpression()), !dbg !5647
  call void @llvm.lifetime.start.p0(i64 8, ptr %prot) #18, !dbg !5648
  call void @llvm.dbg.declare(metadata ptr %prot, metadata !5499, metadata !DIExpression()), !dbg !5649
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #18, !dbg !5650
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !5500, metadata !DIExpression()), !dbg !5651
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret_addr) #18, !dbg !5652
  call void @llvm.dbg.declare(metadata ptr %ret_addr, metadata !5501, metadata !DIExpression()), !dbg !5653
  %2 = load i64, ptr %phys_addr.addr, align 8, !dbg !5654
  %3 = load i64, ptr %size.addr, align 8, !dbg !5655
  %add = add i64 %2, %3, !dbg !5656
  %sub = sub i64 %add, 1, !dbg !5657
  store i64 %sub, ptr %last_addr, align 8, !dbg !5658
  %4 = load i64, ptr %size.addr, align 8, !dbg !5659
  %tobool = icmp ne i64 %4, 0, !dbg !5659
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5661

lor.lhs.false:                                    ; preds = %entry
  %5 = load i64, ptr %last_addr, align 8, !dbg !5662
  %6 = load i64, ptr %phys_addr.addr, align 8, !dbg !5663
  %cmp = icmp ult i64 %5, %6, !dbg !5664
  br i1 %cmp, label %if.then, label %if.end, !dbg !5665

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8, !dbg !5666
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5666

if.end:                                           ; preds = %lor.lhs.false
  %7 = load i64, ptr %phys_addr.addr, align 8, !dbg !5667
  %call = call i32 @phys_addr_valid(i64 noundef %7) #19, !dbg !5668
  %tobool2 = icmp ne i32 %call, 0, !dbg !5668
  br i1 %tobool2, label %if.end30, label %if.then3, !dbg !5669

if.then3:                                         ; preds = %if.end
  br label %do.body, !dbg !5670

do.body:                                          ; preds = %if.then3
  br label %do.cond, !dbg !5672

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5672

do.end:                                           ; preds = %do.cond
  %8 = load i64, ptr %phys_addr.addr, align 8, !dbg !5670
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef @.str.8, i64 noundef %8) #20, !dbg !5670
  store i32 %call4, ptr %tmp, align 4, !dbg !5672
  %9 = load i32, ptr %tmp, align 4, !dbg !5670
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #18, !dbg !5674
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5502, metadata !DIExpression()), !dbg !5674
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !5674
  %10 = load i32, ptr %__ret_warn_on, align 4, !dbg !5675
  %tobool5 = icmp ne i32 %10, 0, !dbg !5675
  %lnot = xor i1 %tobool5, true, !dbg !5675
  %lnot6 = xor i1 %lnot, true, !dbg !5675
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !5675
  %conv = sext i32 %lnot.ext to i64, !dbg !5675
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5675
  %tobool7 = icmp ne i64 %expval, 0, !dbg !5675
  br i1 %tobool7, label %if.then8, label %if.end21, !dbg !5674

if.then8:                                         ; preds = %do.end
  br label %do.body9, !dbg !5675

do.body9:                                         ; preds = %if.then8
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #18, !dbg !5676
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5506, metadata !DIExpression()), !dbg !5676
  store i32 2307, ptr %__flags, align 4, !dbg !5676
  br label %do.body10, !dbg !5676

do.body10:                                        ; preds = %do.body9
  br label %do.cond11, !dbg !5677

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !5677

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !5676

do.body13:                                        ; preds = %do.end12
  %11 = load i32, ptr %__flags, align 4, !dbg !5679
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 206, i32 %11, i64 12) #18, !dbg !5679, !srcloc !5681
  br label %do.cond14, !dbg !5679

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !5679

do.end15:                                         ; preds = %do.cond14
  br label %do.body16, !dbg !5676

do.body16:                                        ; preds = %do.end15
  br label %do.cond17, !dbg !5682

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !5682

do.end18:                                         ; preds = %do.cond17
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #18, !dbg !5675
  br label %do.cond19, !dbg !5676

do.cond19:                                        ; preds = %do.end18
  br label %do.end20, !dbg !5676

do.end20:                                         ; preds = %do.cond19
  br label %if.end21, !dbg !5676

if.end21:                                         ; preds = %do.end20, %do.end
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !5674
  %tobool23 = icmp ne i32 %12, 0, !dbg !5674
  %lnot24 = xor i1 %tobool23, true, !dbg !5674
  %lnot26 = xor i1 %lnot24, true, !dbg !5674
  %lnot.ext27 = zext i1 %lnot26 to i32, !dbg !5674
  %conv28 = sext i32 %lnot.ext27 to i64, !dbg !5674
  %expval29 = call i64 @llvm.expect.i64(i64 %conv28, i64 0), !dbg !5674
  store i64 %expval29, ptr %tmp22, align 8, !dbg !5675
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #18, !dbg !5684
  %13 = load i64, ptr %tmp22, align 8, !dbg !5674
  store ptr null, ptr %retval, align 8, !dbg !5685
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5685

if.end30:                                         ; preds = %if.end
  %14 = load i64, ptr %phys_addr.addr, align 8, !dbg !5686
  %15 = load i64, ptr %size.addr, align 8, !dbg !5687
  call void @__ioremap_check_mem(i64 noundef %14, i64 noundef %15, ptr noundef %io_desc) #19, !dbg !5688
  %flags = getelementptr inbounds %struct.ioremap_desc, ptr %io_desc, i32 0, i32 0, !dbg !5689
  %16 = load i32, ptr %flags, align 4, !dbg !5689
  %and = and i32 %16, 1, !dbg !5690
  %tobool31 = icmp ne i32 %and, 0, !dbg !5690
  br i1 %tobool31, label %if.then32, label %if.end113, !dbg !5691

if.then32:                                        ; preds = %if.end30
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #18, !dbg !5692
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !5509, metadata !DIExpression()), !dbg !5692
  store i8 1, ptr %__ret_do_once, align 1, !dbg !5692
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #18, !dbg !5693
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !5513, metadata !DIExpression()), !dbg !5693
  %17 = load i8, ptr %__ret_do_once, align 1, !dbg !5693, !range !5694, !noundef !1411
  %tobool33 = trunc i8 %17 to i1, !dbg !5693
  %lnot34 = xor i1 %tobool33, true, !dbg !5693
  %lnot36 = xor i1 %lnot34, true, !dbg !5693
  %frombool38 = zext i1 %lnot36 to i8, !dbg !5693
  store i8 %frombool38, ptr %__ret_cond, align 1, !dbg !5693
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #18, !dbg !5693
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !5516, metadata !DIExpression()), !dbg !5693
  store i8 0, ptr %__ret_once, align 1, !dbg !5693
  %18 = load i8, ptr %__ret_cond, align 1, !dbg !5695, !range !5694, !noundef !1411
  %tobool39 = trunc i8 %18 to i1, !dbg !5695
  br i1 %tobool39, label %land.rhs, label %land.end, !dbg !5695

land.rhs:                                         ; preds = %if.then32
  %19 = load i8, ptr @__ioremap_caller.__already_done, align 1, !dbg !5695, !range !5694, !noundef !1411
  %tobool41 = trunc i8 %19 to i1, !dbg !5695
  %lnot42 = xor i1 %tobool41, true, !dbg !5695
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then32
  %20 = phi i1 [ false, %if.then32 ], [ %lnot42, %land.rhs ], !dbg !5697
  %lnot44 = xor i1 %20, true, !dbg !5695
  %lnot46 = xor i1 %lnot44, true, !dbg !5695
  %lnot.ext47 = zext i1 %lnot46 to i32, !dbg !5695
  %conv48 = sext i32 %lnot.ext47 to i64, !dbg !5695
  %expval49 = call i64 @llvm.expect.i64(i64 %conv48, i64 0), !dbg !5695
  %tobool50 = icmp ne i64 %expval49, 0, !dbg !5695
  br i1 %tobool50, label %if.then51, label %if.end52, !dbg !5693

if.then51:                                        ; preds = %land.end
  store i8 1, ptr @__ioremap_caller.__already_done, align 1, !dbg !5698
  store i8 1, ptr %__ret_once, align 1, !dbg !5698
  br label %if.end52, !dbg !5698

if.end52:                                         ; preds = %if.then51, %land.end
  %21 = load i8, ptr %__ret_once, align 1, !dbg !5693, !range !5694, !noundef !1411
  %tobool54 = trunc i8 %21 to i1, !dbg !5693
  %lnot55 = xor i1 %tobool54, true, !dbg !5693
  %lnot57 = xor i1 %lnot55, true, !dbg !5693
  %lnot.ext58 = zext i1 %lnot57 to i32, !dbg !5693
  %conv59 = sext i32 %lnot.ext58 to i64, !dbg !5693
  %expval60 = call i64 @llvm.expect.i64(i64 %conv59, i64 0), !dbg !5693
  store i64 %expval60, ptr %tmp53, align 8, !dbg !5695
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #18, !dbg !5700
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #18, !dbg !5700
  %22 = load i64, ptr %tmp53, align 8, !dbg !5693
  %tobool61 = icmp ne i64 %22, 0, !dbg !5700
  br i1 %tobool61, label %if.then62, label %if.end104, !dbg !5692

if.then62:                                        ; preds = %if.end52
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on63) #18, !dbg !5701
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on63, metadata !5517, metadata !DIExpression()), !dbg !5701
  store i32 1, ptr %__ret_warn_on63, align 4, !dbg !5701
  %23 = load i32, ptr %__ret_warn_on63, align 4, !dbg !5702
  %tobool64 = icmp ne i32 %23, 0, !dbg !5702
  %lnot65 = xor i1 %tobool64, true, !dbg !5702
  %lnot67 = xor i1 %lnot65, true, !dbg !5702
  %lnot.ext68 = zext i1 %lnot67 to i32, !dbg !5702
  %conv69 = sext i32 %lnot.ext68 to i64, !dbg !5702
  %expval70 = call i64 @llvm.expect.i64(i64 %conv69, i64 0), !dbg !5702
  %tobool71 = icmp ne i64 %expval70, 0, !dbg !5702
  br i1 %tobool71, label %if.then72, label %if.end95, !dbg !5701

if.then72:                                        ; preds = %if.then62
  br label %do.body73, !dbg !5702

do.body73:                                        ; preds = %if.then72
  br label %do.body74, !dbg !5703

do.body74:                                        ; preds = %do.body73
  br label %do.cond75, !dbg !5704

do.cond75:                                        ; preds = %do.body74
  br label %do.end76, !dbg !5704

do.end76:                                         ; preds = %do.cond75
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.9, ptr noundef %phys_addr.addr, ptr noundef %last_addr) #19, !dbg !5703
  br label %do.body77, !dbg !5703

do.body77:                                        ; preds = %do.end76
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags78) #18, !dbg !5706
  call void @llvm.dbg.declare(metadata ptr %__flags78, metadata !5519, metadata !DIExpression()), !dbg !5706
  store i32 2313, ptr %__flags78, align 4, !dbg !5706
  br label %do.body79, !dbg !5706

do.body79:                                        ; preds = %do.body77
  br label %do.cond80, !dbg !5707

do.cond80:                                        ; preds = %do.body79
  br label %do.end81, !dbg !5707

do.end81:                                         ; preds = %do.cond80
  br label %do.body82, !dbg !5706

do.body82:                                        ; preds = %do.end81
  %24 = load i32, ptr %__flags78, align 4, !dbg !5709
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 217, i32 %24, i64 12) #18, !dbg !5709, !srcloc !5711
  br label %do.cond83, !dbg !5709

do.cond83:                                        ; preds = %do.body82
  br label %do.end84, !dbg !5709

do.end84:                                         ; preds = %do.cond83
  br label %do.body85, !dbg !5706

do.body85:                                        ; preds = %do.end84
  br label %do.cond86, !dbg !5712

do.cond86:                                        ; preds = %do.body85
  br label %do.end87, !dbg !5712

do.end87:                                         ; preds = %do.cond86
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags78) #18, !dbg !5703
  br label %do.cond88, !dbg !5706

do.cond88:                                        ; preds = %do.end87
  br label %do.end89, !dbg !5706

do.end89:                                         ; preds = %do.cond88
  br label %do.body90, !dbg !5703

do.body90:                                        ; preds = %do.end89
  br label %do.cond91, !dbg !5714

do.cond91:                                        ; preds = %do.body90
  br label %do.end92, !dbg !5714

do.end92:                                         ; preds = %do.cond91
  br label %do.cond93, !dbg !5703

do.cond93:                                        ; preds = %do.end92
  br label %do.end94, !dbg !5703

do.end94:                                         ; preds = %do.cond93
  br label %if.end95, !dbg !5703

if.end95:                                         ; preds = %do.end94, %if.then62
  %25 = load i32, ptr %__ret_warn_on63, align 4, !dbg !5701
  %tobool97 = icmp ne i32 %25, 0, !dbg !5701
  %lnot98 = xor i1 %tobool97, true, !dbg !5701
  %lnot100 = xor i1 %lnot98, true, !dbg !5701
  %lnot.ext101 = zext i1 %lnot100 to i32, !dbg !5701
  %conv102 = sext i32 %lnot.ext101 to i64, !dbg !5701
  %expval103 = call i64 @llvm.expect.i64(i64 %conv102, i64 0), !dbg !5701
  store i64 %expval103, ptr %tmp96, align 8, !dbg !5702
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on63) #18, !dbg !5700
  %26 = load i64, ptr %tmp96, align 8, !dbg !5701
  br label %if.end104, !dbg !5700

if.end104:                                        ; preds = %if.end95, %if.end52
  %27 = load i8, ptr %__ret_do_once, align 1, !dbg !5692, !range !5694, !noundef !1411
  %tobool106 = trunc i8 %27 to i1, !dbg !5692
  %lnot107 = xor i1 %tobool106, true, !dbg !5692
  %lnot109 = xor i1 %lnot107, true, !dbg !5692
  %lnot.ext110 = zext i1 %lnot109 to i32, !dbg !5692
  %conv111 = sext i32 %lnot.ext110 to i64, !dbg !5692
  %expval112 = call i64 @llvm.expect.i64(i64 %conv111, i64 0), !dbg !5692
  store i64 %expval112, ptr %tmp105, align 8, !dbg !5700
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #18, !dbg !5716
  %28 = load i64, ptr %tmp105, align 8, !dbg !5692
  store ptr null, ptr %retval, align 8, !dbg !5717
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5717

if.end113:                                        ; preds = %if.end30
  %29 = load i64, ptr %phys_addr.addr, align 8, !dbg !5718
  %and114 = and i64 %29, 4095, !dbg !5719
  store i64 %and114, ptr %offset, align 8, !dbg !5720
  %30 = load i64, ptr %phys_addr.addr, align 8, !dbg !5721
  %and115 = and i64 %30, -4096, !dbg !5721
  store i64 %and115, ptr %phys_addr.addr, align 8, !dbg !5721
  %31 = load i64, ptr %last_addr, align 8, !dbg !5722
  %add116 = add i64 %31, 1, !dbg !5722
  %add117 = add i64 %add116, 4095, !dbg !5722
  %and118 = and i64 %add117, -4096, !dbg !5722
  %32 = load i64, ptr %phys_addr.addr, align 8, !dbg !5723
  %sub119 = sub i64 %and118, %32, !dbg !5724
  store i64 %sub119, ptr %size.addr, align 8, !dbg !5725
  %33 = load i64, ptr %phys_addr.addr, align 8, !dbg !5726
  %and120 = and i64 %33, 4503599627366400, !dbg !5726
  store i64 %and120, ptr %phys_addr.addr, align 8, !dbg !5726
  %34 = load i64, ptr %phys_addr.addr, align 8, !dbg !5727
  %35 = load i64, ptr %phys_addr.addr, align 8, !dbg !5728
  %36 = load i64, ptr %size.addr, align 8, !dbg !5729
  %add121 = add i64 %35, %36, !dbg !5730
  %37 = load i32, ptr %pcm.addr, align 4, !dbg !5731
  %call122 = call i32 @memtype_reserve(i64 noundef %34, i64 noundef %add121, i32 noundef %37, ptr noundef %new_pcm) #19, !dbg !5732
  store i32 %call122, ptr %retval1, align 4, !dbg !5733
  %38 = load i32, ptr %retval1, align 4, !dbg !5734
  %tobool123 = icmp ne i32 %38, 0, !dbg !5734
  br i1 %tobool123, label %if.then124, label %if.end130, !dbg !5736

if.then124:                                       ; preds = %if.end113
  br label %do.body125, !dbg !5737

do.body125:                                       ; preds = %if.then124
  br label %do.cond126, !dbg !5740

do.cond126:                                       ; preds = %do.body125
  br label %do.end127, !dbg !5740

do.end127:                                        ; preds = %do.cond126
  %39 = load i32, ptr %retval1, align 4, !dbg !5737
  %call129 = call i32 (ptr, ...) @_printk(ptr noundef @.str.10, i32 noundef %39) #20, !dbg !5737
  store i32 %call129, ptr %tmp128, align 4, !dbg !5740
  %40 = load i32, ptr %tmp128, align 4, !dbg !5737
  store ptr null, ptr %retval, align 8, !dbg !5742
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5742

if.end130:                                        ; preds = %if.end113
  %41 = load i32, ptr %pcm.addr, align 4, !dbg !5743
  %42 = load i32, ptr %new_pcm, align 4, !dbg !5745
  %cmp131 = icmp ne i32 %41, %42, !dbg !5746
  br i1 %cmp131, label %if.then133, label %if.end144, !dbg !5747

if.then133:                                       ; preds = %if.end130
  %43 = load i64, ptr %phys_addr.addr, align 8, !dbg !5748
  %44 = load i64, ptr %size.addr, align 8, !dbg !5751
  %45 = load i32, ptr %pcm.addr, align 4, !dbg !5752
  %46 = load i32, ptr %new_pcm, align 4, !dbg !5753
  %call134 = call i32 @is_new_memtype_allowed(i64 noundef %43, i64 noundef %44, i32 noundef %45, i32 noundef %46) #19, !dbg !5754
  %tobool135 = icmp ne i32 %call134, 0, !dbg !5754
  br i1 %tobool135, label %if.end143, label %if.then136, !dbg !5755

if.then136:                                       ; preds = %if.then133
  br label %do.body137, !dbg !5756

do.body137:                                       ; preds = %if.then136
  br label %do.cond138, !dbg !5759

do.cond138:                                       ; preds = %do.body137
  br label %do.end139, !dbg !5759

do.end139:                                        ; preds = %do.cond138
  %47 = load i64, ptr %phys_addr.addr, align 8, !dbg !5756
  %48 = load i64, ptr %phys_addr.addr, align 8, !dbg !5756
  %49 = load i64, ptr %size.addr, align 8, !dbg !5756
  %add141 = add i64 %48, %49, !dbg !5756
  %50 = load i32, ptr %pcm.addr, align 4, !dbg !5756
  %51 = load i32, ptr %new_pcm, align 4, !dbg !5756
  %call142 = call i32 (ptr, ...) @_printk(ptr noundef @.str.11, i64 noundef %47, i64 noundef %add141, i32 noundef %50, i32 noundef %51) #20, !dbg !5756
  store i32 %call142, ptr %tmp140, align 4, !dbg !5759
  %52 = load i32, ptr %tmp140, align 4, !dbg !5756
  br label %err_free_memtype, !dbg !5761

if.end143:                                        ; preds = %if.then133
  %53 = load i32, ptr %new_pcm, align 4, !dbg !5762
  store i32 %53, ptr %pcm.addr, align 4, !dbg !5763
  br label %if.end144, !dbg !5764

if.end144:                                        ; preds = %if.end143, %if.end130
  %pgprot = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral, i32 0, i32 0, !dbg !5765
  %54 = load i64, ptr @__default_kernel_pte_mask, align 8, !dbg !5765
  %and145 = and i64 -9223372036854775453, %54, !dbg !5765
  store i64 %and145, ptr %pgprot, align 8, !dbg !5765
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %prot, ptr align 8 %.compoundliteral, i64 8, i1 false), !dbg !5765
  %flags146 = getelementptr inbounds %struct.ioremap_desc, ptr %io_desc, i32 0, i32 0, !dbg !5766
  %55 = load i32, ptr %flags146, align 4, !dbg !5766
  %and147 = and i32 %55, 2, !dbg !5768
  %tobool148 = icmp ne i32 %and147, 0, !dbg !5768
  br i1 %tobool148, label %if.then152, label %lor.lhs.false149, !dbg !5769

lor.lhs.false149:                                 ; preds = %if.end144
  %56 = load i8, ptr %encrypted.addr, align 1, !dbg !5770, !range !5694, !noundef !1411
  %tobool150 = trunc i8 %56 to i1, !dbg !5770
  br i1 %tobool150, label %if.then152, label %if.else, !dbg !5771

if.then152:                                       ; preds = %lor.lhs.false149, %if.end144
  %pgprot154 = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral153, i32 0, i32 0, !dbg !5772
  %pgprot155 = getelementptr inbounds %struct.pgprot, ptr %prot, i32 0, i32 0, !dbg !5772
  %57 = load i64, ptr %pgprot155, align 8, !dbg !5772
  %call156 = call i64 @cc_mkenc(i64 noundef %57) #19, !dbg !5772
  store i64 %call156, ptr %pgprot154, align 8, !dbg !5772
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %prot, ptr align 8 %.compoundliteral153, i64 8, i1 false), !dbg !5772
  br label %if.end161, !dbg !5773

if.else:                                          ; preds = %lor.lhs.false149
  %pgprot158 = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral157, i32 0, i32 0, !dbg !5774
  %pgprot159 = getelementptr inbounds %struct.pgprot, ptr %prot, i32 0, i32 0, !dbg !5774
  %58 = load i64, ptr %pgprot159, align 8, !dbg !5774
  %call160 = call i64 @cc_mkdec(i64 noundef %58) #19, !dbg !5774
  store i64 %call160, ptr %pgprot158, align 8, !dbg !5774
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %prot, ptr align 8 %.compoundliteral157, i64 8, i1 false), !dbg !5774
  br label %if.end161

if.end161:                                        ; preds = %if.else, %if.then152
  %59 = load i32, ptr %pcm.addr, align 4, !dbg !5775
  switch i32 %59, label %sw.default [
    i32 3, label %sw.bb
    i32 2, label %sw.bb166
    i32 1, label %sw.bb172
    i32 4, label %sw.bb178
    i32 0, label %sw.epilog
  ], !dbg !5776

sw.bb:                                            ; preds = %if.end161
  br label %sw.default, !dbg !5777

sw.default:                                       ; preds = %if.end161, %sw.bb
  %pgprot163 = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral162, i32 0, i32 0, !dbg !5779
  %pgprot164 = getelementptr inbounds %struct.pgprot, ptr %prot, i32 0, i32 0, !dbg !5779
  %60 = load i64, ptr %pgprot164, align 8, !dbg !5779
  %call165 = call i64 @cachemode2protval(i32 noundef 3) #19, !dbg !5779
  %or = or i64 %60, %call165, !dbg !5779
  store i64 %or, ptr %pgprot163, align 8, !dbg !5779
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %prot, ptr align 8 %.compoundliteral162, i64 8, i1 false), !dbg !5779
  br label %sw.epilog, !dbg !5780

sw.bb166:                                         ; preds = %if.end161
  %pgprot168 = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral167, i32 0, i32 0, !dbg !5781
  %pgprot169 = getelementptr inbounds %struct.pgprot, ptr %prot, i32 0, i32 0, !dbg !5781
  %61 = load i64, ptr %pgprot169, align 8, !dbg !5781
  %call170 = call i64 @cachemode2protval(i32 noundef 2) #19, !dbg !5781
  %or171 = or i64 %61, %call170, !dbg !5781
  store i64 %or171, ptr %pgprot168, align 8, !dbg !5781
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %prot, ptr align 8 %.compoundliteral167, i64 8, i1 false), !dbg !5781
  br label %sw.epilog, !dbg !5782

sw.bb172:                                         ; preds = %if.end161
  %pgprot174 = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral173, i32 0, i32 0, !dbg !5783
  %pgprot175 = getelementptr inbounds %struct.pgprot, ptr %prot, i32 0, i32 0, !dbg !5783
  %62 = load i64, ptr %pgprot175, align 8, !dbg !5783
  %call176 = call i64 @cachemode2protval(i32 noundef 1) #19, !dbg !5783
  %or177 = or i64 %62, %call176, !dbg !5783
  store i64 %or177, ptr %pgprot174, align 8, !dbg !5783
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %prot, ptr align 8 %.compoundliteral173, i64 8, i1 false), !dbg !5783
  br label %sw.epilog, !dbg !5784

sw.bb178:                                         ; preds = %if.end161
  %pgprot180 = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral179, i32 0, i32 0, !dbg !5785
  %pgprot181 = getelementptr inbounds %struct.pgprot, ptr %prot, i32 0, i32 0, !dbg !5785
  %63 = load i64, ptr %pgprot181, align 8, !dbg !5785
  %call182 = call i64 @cachemode2protval(i32 noundef 4) #19, !dbg !5785
  %or183 = or i64 %63, %call182, !dbg !5785
  store i64 %or183, ptr %pgprot180, align 8, !dbg !5785
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %prot, ptr align 8 %.compoundliteral179, i64 8, i1 false), !dbg !5785
  br label %sw.epilog, !dbg !5786

sw.epilog:                                        ; preds = %if.end161, %sw.bb178, %sw.bb172, %sw.bb166, %sw.default
  %64 = load i64, ptr %size.addr, align 8, !dbg !5787
  %65 = load ptr, ptr %caller.addr, align 8, !dbg !5788
  %call184 = call ptr @get_vm_area_caller(i64 noundef %64, i64 noundef 1, ptr noundef %65) #19, !dbg !5789
  store ptr %call184, ptr %area, align 8, !dbg !5790
  %66 = load ptr, ptr %area, align 8, !dbg !5791
  %tobool185 = icmp ne ptr %66, null, !dbg !5791
  br i1 %tobool185, label %if.end187, label %if.then186, !dbg !5793

if.then186:                                       ; preds = %sw.epilog
  br label %err_free_memtype, !dbg !5794

if.end187:                                        ; preds = %sw.epilog
  %67 = load i64, ptr %phys_addr.addr, align 8, !dbg !5795
  %68 = load ptr, ptr %area, align 8, !dbg !5796
  %phys_addr188 = getelementptr inbounds %struct.vm_struct, ptr %68, i32 0, i32 7, !dbg !5797
  store i64 %67, ptr %phys_addr188, align 8, !dbg !5798
  %69 = load ptr, ptr %area, align 8, !dbg !5799
  %addr = getelementptr inbounds %struct.vm_struct, ptr %69, i32 0, i32 1, !dbg !5800
  %70 = load ptr, ptr %addr, align 8, !dbg !5800
  %71 = ptrtoint ptr %70 to i64, !dbg !5801
  store i64 %71, ptr %vaddr, align 8, !dbg !5802
  %72 = load i64, ptr %phys_addr.addr, align 8, !dbg !5803
  %73 = load i64, ptr %size.addr, align 8, !dbg !5805
  %74 = load i32, ptr %pcm.addr, align 4, !dbg !5806
  %call189 = call i32 @memtype_kernel_map_sync(i64 noundef %72, i64 noundef %73, i32 noundef %74) #19, !dbg !5807
  %tobool190 = icmp ne i32 %call189, 0, !dbg !5807
  br i1 %tobool190, label %if.then191, label %if.end192, !dbg !5808

if.then191:                                       ; preds = %if.end187
  br label %err_free_area, !dbg !5809

if.end192:                                        ; preds = %if.end187
  %75 = load i64, ptr %vaddr, align 8, !dbg !5810
  %76 = load i64, ptr %vaddr, align 8, !dbg !5812
  %77 = load i64, ptr %size.addr, align 8, !dbg !5813
  %add193 = add i64 %76, %77, !dbg !5814
  %78 = load i64, ptr %phys_addr.addr, align 8, !dbg !5815
  %coerce.dive = getelementptr inbounds %struct.pgprot, ptr %prot, i32 0, i32 0, !dbg !5816
  %79 = load i64, ptr %coerce.dive, align 8, !dbg !5816
  %call194 = call i32 @ioremap_page_range(i64 noundef %75, i64 noundef %add193, i64 noundef %78, i64 %79) #19, !dbg !5816
  %tobool195 = icmp ne i32 %call194, 0, !dbg !5816
  br i1 %tobool195, label %if.then196, label %if.end197, !dbg !5817

if.then196:                                       ; preds = %if.end192
  br label %err_free_area, !dbg !5818

if.end197:                                        ; preds = %if.end192
  %80 = load i64, ptr %vaddr, align 8, !dbg !5819
  %81 = load i64, ptr %offset, align 8, !dbg !5820
  %add198 = add i64 %80, %81, !dbg !5821
  %82 = inttoptr i64 %add198 to ptr, !dbg !5822
  store ptr %82, ptr %ret_addr, align 8, !dbg !5823
  %83 = load i64, ptr %unaligned_phys_addr, align 8, !dbg !5824
  %84 = load i64, ptr %unaligned_size, align 8, !dbg !5825
  %85 = load ptr, ptr %ret_addr, align 8, !dbg !5826
  call void @mmiotrace_ioremap(i64 noundef %83, i64 noundef %84, ptr noundef %85) #19, !dbg !5827
  %86 = load i64, ptr %unaligned_phys_addr, align 8, !dbg !5828
  %87 = load i64, ptr %unaligned_size, align 8, !dbg !5830
  %call199 = call i32 @iomem_map_sanity_check(i64 noundef %86, i64 noundef %87) #19, !dbg !5831
  %tobool200 = icmp ne i32 %call199, 0, !dbg !5831
  br i1 %tobool200, label %if.then201, label %if.end207, !dbg !5832

if.then201:                                       ; preds = %if.end197
  br label %do.body202, !dbg !5833

do.body202:                                       ; preds = %if.then201
  br label %do.cond203, !dbg !5835

do.cond203:                                       ; preds = %do.body202
  br label %do.end204, !dbg !5835

do.end204:                                        ; preds = %do.cond203
  %88 = load ptr, ptr %caller.addr, align 8, !dbg !5833
  %call206 = call i32 (ptr, ...) @_printk(ptr noundef @.str.12, ptr noundef %88) #20, !dbg !5833
  store i32 %call206, ptr %tmp205, align 4, !dbg !5835
  %89 = load i32, ptr %tmp205, align 4, !dbg !5833
  br label %if.end207, !dbg !5837

if.end207:                                        ; preds = %do.end204, %if.end197
  %90 = load ptr, ptr %ret_addr, align 8, !dbg !5838
  store ptr %90, ptr %retval, align 8, !dbg !5839
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5839

err_free_area:                                    ; preds = %if.then196, %if.then191
  call void @llvm.dbg.label(metadata !5523), !dbg !5840
  %91 = load ptr, ptr %area, align 8, !dbg !5841
  call void @free_vm_area(ptr noundef %91) #19, !dbg !5842
  br label %err_free_memtype, !dbg !5842

err_free_memtype:                                 ; preds = %err_free_area, %if.then186, %do.end139
  call void @llvm.dbg.label(metadata !5524), !dbg !5843
  %92 = load i64, ptr %phys_addr.addr, align 8, !dbg !5844
  %93 = load i64, ptr %phys_addr.addr, align 8, !dbg !5845
  %94 = load i64, ptr %size.addr, align 8, !dbg !5846
  %add208 = add i64 %93, %94, !dbg !5847
  %call209 = call i32 @memtype_free(i64 noundef %92, i64 noundef %add208) #19, !dbg !5848
  store ptr null, ptr %retval, align 8, !dbg !5849
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5849

cleanup:                                          ; preds = %err_free_memtype, %if.end207, %do.end127, %if.end104, %if.end21, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret_addr) #18, !dbg !5850
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #18, !dbg !5850
  call void @llvm.lifetime.end.p0(i64 8, ptr %prot) #18, !dbg !5850
  call void @llvm.lifetime.end.p0(i64 4, ptr %new_pcm) #18, !dbg !5850
  call void @llvm.lifetime.end.p0(i64 8, ptr %area) #18, !dbg !5850
  call void @llvm.lifetime.end.p0(i64 4, ptr %io_desc) #18, !dbg !5850
  call void @llvm.lifetime.end.p0(i64 8, ptr %unaligned_size) #18, !dbg !5850
  call void @llvm.lifetime.end.p0(i64 8, ptr %unaligned_phys_addr) #18, !dbg !5850
  call void @llvm.lifetime.end.p0(i64 8, ptr %last_addr) #18, !dbg !5850
  call void @llvm.lifetime.end.p0(i64 8, ptr %vaddr) #18, !dbg !5850
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #18, !dbg !5850
  %95 = load ptr, ptr %retval, align 8, !dbg !5850
  ret ptr %95, !dbg !5850
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @ioremap_uc(i64 noundef %phys_addr, i64 noundef %size) #0 align 16 !dbg !5851 {
entry:
  %phys_addr.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %pcm = alloca i32, align 4
  store i64 %phys_addr, ptr %phys_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phys_addr.addr, metadata !5853, metadata !DIExpression()), !dbg !5856
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5854, metadata !DIExpression()), !dbg !5857
  call void @llvm.lifetime.start.p0(i64 4, ptr %pcm) #18, !dbg !5858
  call void @llvm.dbg.declare(metadata ptr %pcm, metadata !5855, metadata !DIExpression()), !dbg !5859
  store i32 3, ptr %pcm, align 4, !dbg !5859
  %0 = load i64, ptr %phys_addr.addr, align 8, !dbg !5860
  %1 = load i64, ptr %size.addr, align 8, !dbg !5861
  %2 = load i32, ptr %pcm, align 4, !dbg !5862
  %3 = call ptr @llvm.returnaddress(i32 0), !dbg !5863
  %call = call ptr @__ioremap_caller(i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i1 noundef zeroext false) #19, !dbg !5864
  call void @llvm.lifetime.end.p0(i64 4, ptr %pcm) #18, !dbg !5865
  ret ptr %call, !dbg !5866
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @ioremap_wc(i64 noundef %phys_addr, i64 noundef %size) #0 align 16 !dbg !5867 {
entry:
  %phys_addr.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  store i64 %phys_addr, ptr %phys_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phys_addr.addr, metadata !5869, metadata !DIExpression()), !dbg !5871
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5870, metadata !DIExpression()), !dbg !5872
  %0 = load i64, ptr %phys_addr.addr, align 8, !dbg !5873
  %1 = load i64, ptr %size.addr, align 8, !dbg !5874
  %2 = call ptr @llvm.returnaddress(i32 0), !dbg !5875
  %call = call ptr @__ioremap_caller(i64 noundef %0, i64 noundef %1, i32 noundef 1, ptr noundef %2, i1 noundef zeroext false) #19, !dbg !5876
  ret ptr %call, !dbg !5877
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @ioremap_wt(i64 noundef %phys_addr, i64 noundef %size) #0 align 16 !dbg !5878 {
entry:
  %phys_addr.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  store i64 %phys_addr, ptr %phys_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phys_addr.addr, metadata !5880, metadata !DIExpression()), !dbg !5882
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5881, metadata !DIExpression()), !dbg !5883
  %0 = load i64, ptr %phys_addr.addr, align 8, !dbg !5884
  %1 = load i64, ptr %size.addr, align 8, !dbg !5885
  %2 = call ptr @llvm.returnaddress(i32 0), !dbg !5886
  %call = call ptr @__ioremap_caller(i64 noundef %0, i64 noundef %1, i32 noundef 4, ptr noundef %2, i1 noundef zeroext false) #19, !dbg !5887
  ret ptr %call, !dbg !5888
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @ioremap_encrypted(i64 noundef %phys_addr, i64 noundef %size) #0 align 16 !dbg !5889 {
entry:
  %phys_addr.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  store i64 %phys_addr, ptr %phys_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phys_addr.addr, metadata !5891, metadata !DIExpression()), !dbg !5893
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5892, metadata !DIExpression()), !dbg !5894
  %0 = load i64, ptr %phys_addr.addr, align 8, !dbg !5895
  %1 = load i64, ptr %size.addr, align 8, !dbg !5896
  %2 = call ptr @llvm.returnaddress(i32 0), !dbg !5897
  %call = call ptr @__ioremap_caller(i64 noundef %0, i64 noundef %1, i32 noundef 0, ptr noundef %2, i1 noundef zeroext true) #19, !dbg !5898
  ret ptr %call, !dbg !5899
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @ioremap_cache(i64 noundef %phys_addr, i64 noundef %size) #0 align 16 !dbg !5900 {
entry:
  %phys_addr.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  store i64 %phys_addr, ptr %phys_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phys_addr.addr, metadata !5902, metadata !DIExpression()), !dbg !5904
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5903, metadata !DIExpression()), !dbg !5905
  %0 = load i64, ptr %phys_addr.addr, align 8, !dbg !5906
  %1 = load i64, ptr %size.addr, align 8, !dbg !5907
  %2 = call ptr @llvm.returnaddress(i32 0), !dbg !5908
  %call = call ptr @__ioremap_caller(i64 noundef %0, i64 noundef %1, i32 noundef 0, ptr noundef %2, i1 noundef zeroext false) #19, !dbg !5909
  ret ptr %call, !dbg !5910
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @ioremap_prot(i64 noundef %phys_addr, i64 noundef %size, i64 noundef %prot_val) #0 align 16 !dbg !5911 {
entry:
  %phys_addr.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %prot_val.addr = alloca i64, align 8
  %.compoundliteral = alloca %struct.pgprot, align 8
  store i64 %phys_addr, ptr %phys_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phys_addr.addr, metadata !5915, metadata !DIExpression()), !dbg !5918
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5916, metadata !DIExpression()), !dbg !5919
  store i64 %prot_val, ptr %prot_val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prot_val.addr, metadata !5917, metadata !DIExpression()), !dbg !5920
  %0 = load i64, ptr %phys_addr.addr, align 8, !dbg !5921
  %1 = load i64, ptr %size.addr, align 8, !dbg !5922
  %pgprot = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral, i32 0, i32 0, !dbg !5923
  %2 = load i64, ptr %prot_val.addr, align 8, !dbg !5923
  store i64 %2, ptr %pgprot, align 8, !dbg !5923
  %coerce.dive = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral, i32 0, i32 0, !dbg !5924
  %3 = load i64, ptr %coerce.dive, align 8, !dbg !5924
  %call = call i32 @pgprot2cachemode(i64 %3) #19, !dbg !5924
  %4 = call ptr @llvm.returnaddress(i32 0), !dbg !5925
  %call1 = call ptr @__ioremap_caller(i64 noundef %0, i64 noundef %1, i32 noundef %call, ptr noundef %4, i1 noundef zeroext false) #19, !dbg !5926
  ret ptr %call1, !dbg !5927
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5928 dso_local i32 @pgprot2cachemode(i64) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @iounmap(ptr noundef %addr) #0 align 16 !dbg !5932 {
entry:
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %o = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %tmp41 = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5936, metadata !DIExpression()), !dbg !5947
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #18, !dbg !5948
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5937, metadata !DIExpression()), !dbg !5949
  call void @llvm.lifetime.start.p0(i64 8, ptr %o) #18, !dbg !5948
  call void @llvm.dbg.declare(metadata ptr %o, metadata !5938, metadata !DIExpression()), !dbg !5950
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5951
  %1 = load ptr, ptr @high_memory, align 8, !dbg !5953
  %cmp = icmp ule ptr %0, %1, !dbg !5954
  br i1 %cmp, label %if.then, label %if.end, !dbg !5955

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5956

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !5957
  %call = call ptr @phys_to_virt(i64 noundef 655360) #19, !dbg !5958
  %cmp1 = icmp uge ptr %2, %call, !dbg !5959
  br i1 %cmp1, label %land.lhs.true, label %if.end34, !dbg !5960

land.lhs.true:                                    ; preds = %if.end
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5961
  %call2 = call ptr @phys_to_virt(i64 noundef 1048576) #19, !dbg !5962
  %cmp3 = icmp ult ptr %3, %call2, !dbg !5963
  br i1 %cmp3, label %if.then4, label %if.end34, !dbg !5964

if.then4:                                         ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #18, !dbg !5965
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5939, metadata !DIExpression()), !dbg !5965
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !5965
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !5966
  %tobool = icmp ne i32 %4, 0, !dbg !5966
  %lnot = xor i1 %tobool, true, !dbg !5966
  %lnot5 = xor i1 %lnot, true, !dbg !5966
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !5966
  %conv = sext i32 %lnot.ext to i64, !dbg !5966
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5966
  %tobool6 = icmp ne i64 %expval, 0, !dbg !5966
  br i1 %tobool6, label %if.then7, label %if.end26, !dbg !5965

if.then7:                                         ; preds = %if.then4
  br label %do.body, !dbg !5966

do.body:                                          ; preds = %if.then7
  br label %do.body8, !dbg !5967

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !5968

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !5968

do.end:                                           ; preds = %do.cond
  call void (ptr, ...) @__warn_printk(ptr noundef @.str) #19, !dbg !5967
  br label %do.body9, !dbg !5967

do.body9:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #18, !dbg !5970
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5943, metadata !DIExpression()), !dbg !5970
  store i32 2313, ptr %__flags, align 4, !dbg !5970
  br label %do.body10, !dbg !5970

do.body10:                                        ; preds = %do.body9
  br label %do.cond11, !dbg !5971

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !5971

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !5970

do.body13:                                        ; preds = %do.end12
  %5 = load i32, ptr %__flags, align 4, !dbg !5973
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 472, i32 %5, i64 12) #18, !dbg !5973, !srcloc !5975
  br label %do.cond14, !dbg !5973

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !5973

do.end15:                                         ; preds = %do.cond14
  br label %do.body16, !dbg !5970

do.body16:                                        ; preds = %do.end15
  br label %do.cond17, !dbg !5976

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !5976

do.end18:                                         ; preds = %do.cond17
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #18, !dbg !5967
  br label %do.cond19, !dbg !5970

do.cond19:                                        ; preds = %do.end18
  br label %do.end20, !dbg !5970

do.end20:                                         ; preds = %do.cond19
  br label %do.body21, !dbg !5967

do.body21:                                        ; preds = %do.end20
  br label %do.cond22, !dbg !5978

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !5978

do.end23:                                         ; preds = %do.cond22
  br label %do.cond24, !dbg !5967

do.cond24:                                        ; preds = %do.end23
  br label %do.end25, !dbg !5967

do.end25:                                         ; preds = %do.cond24
  br label %if.end26, !dbg !5967

if.end26:                                         ; preds = %do.end25, %if.then4
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !5965
  %tobool27 = icmp ne i32 %6, 0, !dbg !5965
  %lnot28 = xor i1 %tobool27, true, !dbg !5965
  %lnot30 = xor i1 %lnot28, true, !dbg !5965
  %lnot.ext31 = zext i1 %lnot30 to i32, !dbg !5965
  %conv32 = sext i32 %lnot.ext31 to i64, !dbg !5965
  %expval33 = call i64 @llvm.expect.i64(i64 %conv32, i64 0), !dbg !5965
  store i64 %expval33, ptr %tmp, align 8, !dbg !5966
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #18, !dbg !5980
  %7 = load i64, ptr %tmp, align 8, !dbg !5965
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5981

if.end34:                                         ; preds = %land.lhs.true, %if.end
  %8 = load ptr, ptr %addr.addr, align 8, !dbg !5982
  call void @mmiotrace_iounmap(ptr noundef %8) #19, !dbg !5983
  %9 = load ptr, ptr %addr.addr, align 8, !dbg !5984
  %10 = ptrtoint ptr %9 to i64, !dbg !5985
  %and = and i64 -4096, %10, !dbg !5986
  %11 = inttoptr i64 %and to ptr, !dbg !5987
  store ptr %11, ptr %addr.addr, align 8, !dbg !5988
  %12 = load ptr, ptr %addr.addr, align 8, !dbg !5989
  %call35 = call ptr @find_vm_area(ptr noundef %12) #19, !dbg !5990
  store ptr %call35, ptr %p, align 8, !dbg !5991
  %13 = load ptr, ptr %p, align 8, !dbg !5992
  %tobool36 = icmp ne ptr %13, null, !dbg !5992
  br i1 %tobool36, label %if.end43, label %if.then37, !dbg !5994

if.then37:                                        ; preds = %if.end34
  br label %do.body38, !dbg !5995

do.body38:                                        ; preds = %if.then37
  br label %do.cond39, !dbg !5998

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !5998

do.end40:                                         ; preds = %do.cond39
  %14 = load ptr, ptr %addr.addr, align 8, !dbg !5995
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2, ptr noundef %14) #20, !dbg !5995
  store i32 %call42, ptr %tmp41, align 4, !dbg !5998
  %15 = load i32, ptr %tmp41, align 4, !dbg !5995
  call void @dump_stack() #20, !dbg !6000
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6001

if.end43:                                         ; preds = %if.end34
  %16 = load ptr, ptr %addr.addr, align 8, !dbg !6002
  %17 = ptrtoint ptr %16 to i64, !dbg !6003
  %18 = load ptr, ptr %addr.addr, align 8, !dbg !6004
  %19 = ptrtoint ptr %18 to i64, !dbg !6005
  %20 = load ptr, ptr %p, align 8, !dbg !6006
  %call44 = call i64 @get_vm_area_size(ptr noundef %20) #19, !dbg !6007
  %add = add i64 %19, %call44, !dbg !6008
  call void @kmsan_iounmap_page_range(i64 noundef %17, i64 noundef %add) #19, !dbg !6009
  %21 = load ptr, ptr %p, align 8, !dbg !6010
  %phys_addr = getelementptr inbounds %struct.vm_struct, ptr %21, i32 0, i32 7, !dbg !6011
  %22 = load i64, ptr %phys_addr, align 8, !dbg !6011
  %23 = load ptr, ptr %p, align 8, !dbg !6012
  %phys_addr45 = getelementptr inbounds %struct.vm_struct, ptr %23, i32 0, i32 7, !dbg !6013
  %24 = load i64, ptr %phys_addr45, align 8, !dbg !6013
  %25 = load ptr, ptr %p, align 8, !dbg !6014
  %call46 = call i64 @get_vm_area_size(ptr noundef %25) #19, !dbg !6015
  %add47 = add i64 %24, %call46, !dbg !6016
  %call48 = call i32 @memtype_free(i64 noundef %22, i64 noundef %add47) #19, !dbg !6017
  %26 = load ptr, ptr %addr.addr, align 8, !dbg !6018
  %call49 = call ptr @remove_vm_area(ptr noundef %26) #19, !dbg !6019
  store ptr %call49, ptr %o, align 8, !dbg !6020
  br label %do.body50, !dbg !6021

do.body50:                                        ; preds = %if.end43
  %27 = load ptr, ptr %p, align 8, !dbg !6022
  %28 = load ptr, ptr %o, align 8, !dbg !6022
  %cmp51 = icmp ne ptr %27, %28, !dbg !6022
  br i1 %cmp51, label %lor.end, label %lor.rhs, !dbg !6022

lor.rhs:                                          ; preds = %do.body50
  %29 = load ptr, ptr %o, align 8, !dbg !6022
  %cmp53 = icmp eq ptr %29, null, !dbg !6022
  br label %lor.end, !dbg !6022

lor.end:                                          ; preds = %lor.rhs, %do.body50
  %30 = phi i1 [ true, %do.body50 ], [ %cmp53, %lor.rhs ]
  %lnot55 = xor i1 %30, true, !dbg !6022
  %lnot57 = xor i1 %lnot55, true, !dbg !6022
  %lnot.ext58 = zext i1 %lnot57 to i32, !dbg !6022
  %conv59 = sext i32 %lnot.ext58 to i64, !dbg !6022
  %expval60 = call i64 @llvm.expect.i64(i64 %conv59, i64 0), !dbg !6022
  %tobool61 = icmp ne i64 %expval60, 0, !dbg !6022
  br i1 %tobool61, label %if.then62, label %if.end72, !dbg !6025

if.then62:                                        ; preds = %lor.end
  br label %do.body63, !dbg !6022

do.body63:                                        ; preds = %if.then62
  br label %do.body64, !dbg !6026

do.body64:                                        ; preds = %do.body63
  br label %do.cond65, !dbg !6028

do.cond65:                                        ; preds = %do.body64
  br label %do.end66, !dbg !6028

do.end66:                                         ; preds = %do.cond65
  br label %do.body67, !dbg !6026

do.body67:                                        ; preds = %do.end66
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 500, i32 0, i64 12) #18, !dbg !6030, !srcloc !6032
  br label %do.cond68, !dbg !6030

do.cond68:                                        ; preds = %do.body67
  br label %do.end69, !dbg !6030

do.end69:                                         ; preds = %do.cond68
  unreachable, !dbg !6026

do.cond70:                                        ; No predecessors!
  br label %do.end71, !dbg !6026

do.end71:                                         ; preds = %do.cond70
  br label %if.end72, !dbg !6026

if.end72:                                         ; preds = %do.end71, %lor.end
  br label %do.cond73, !dbg !6025

do.cond73:                                        ; preds = %if.end72
  br label %do.end74, !dbg !6025

do.end74:                                         ; preds = %do.cond73
  %31 = load ptr, ptr %p, align 8, !dbg !6033
  call void @kfree(ptr noundef %31) #19, !dbg !6034
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6035
  br label %cleanup, !dbg !6035

cleanup:                                          ; preds = %do.end74, %do.end40, %if.end26, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %o) #18, !dbg !6035
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #18, !dbg !6035
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6035

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @phys_to_virt(i64 noundef %address) #5 align 16 !dbg !6036 {
entry:
  %address.addr = alloca i64, align 8
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !6041, metadata !DIExpression()), !dbg !6042
  %0 = load i64, ptr %address.addr, align 8, !dbg !6043
  %1 = load i64, ptr @page_offset_base, align 8, !dbg !6043
  %add = add i64 %0, %1, !dbg !6043
  %2 = inttoptr i64 %add to ptr, !dbg !6043
  ret ptr %2, !dbg !6044
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6045 dso_local void @__warn_printk(ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mmiotrace_iounmap(ptr noundef %addr) #5 align 16 !dbg !6048 {
entry:
  %addr.addr = alloca ptr, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6051, metadata !DIExpression()), !dbg !6052
  ret void, !dbg !6053
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6054 dso_local ptr @find_vm_area(ptr noundef) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6057 dso_local i32 @_printk(ptr noundef, ...) #6

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6061 dso_local void @dump_stack() #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_iounmap_page_range(i64 noundef %start, i64 noundef %end) #5 align 16 !dbg !6062 {
entry:
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !6067, metadata !DIExpression()), !dbg !6069
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !6068, metadata !DIExpression()), !dbg !6070
  ret void, !dbg !6071
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @get_vm_area_size(ptr noundef %area) #5 align 16 !dbg !6072 {
entry:
  %retval = alloca i64, align 8
  %area.addr = alloca ptr, align 8
  store ptr %area, ptr %area.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %area.addr, metadata !6078, metadata !DIExpression()), !dbg !6079
  %0 = load ptr, ptr %area.addr, align 8, !dbg !6080
  %flags = getelementptr inbounds %struct.vm_struct, ptr %0, i32 0, i32 3, !dbg !6082
  %1 = load i64, ptr %flags, align 8, !dbg !6082
  %and = and i64 %1, 64, !dbg !6083
  %tobool = icmp ne i64 %and, 0, !dbg !6083
  br i1 %tobool, label %if.else, label %if.then, !dbg !6084

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %area.addr, align 8, !dbg !6085
  %size = getelementptr inbounds %struct.vm_struct, ptr %2, i32 0, i32 2, !dbg !6086
  %3 = load i64, ptr %size, align 8, !dbg !6086
  %sub = sub i64 %3, 4096, !dbg !6087
  store i64 %sub, ptr %retval, align 8, !dbg !6088
  br label %return, !dbg !6088

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %area.addr, align 8, !dbg !6089
  %size1 = getelementptr inbounds %struct.vm_struct, ptr %4, i32 0, i32 2, !dbg !6090
  %5 = load i64, ptr %size1, align 8, !dbg !6090
  store i64 %5, ptr %retval, align 8, !dbg !6091
  br label %return, !dbg !6091

return:                                           ; preds = %if.else, %if.then
  %6 = load i64, ptr %retval, align 8, !dbg !6092
  ret i64 %6, !dbg !6092
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6093 dso_local i32 @memtype_free(i64 noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6096 dso_local ptr @remove_vm_area(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6097 dso_local void @kfree(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @xlate_dev_mem_ptr(i64 noundef %phys) #0 align 16 !dbg !6101 {
entry:
  %phys.addr = alloca i64, align 8
  %start = alloca i64, align 8
  %offset = alloca i64, align 8
  %vaddr = alloca ptr, align 8
  store i64 %phys, ptr %phys.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phys.addr, metadata !6103, metadata !DIExpression()), !dbg !6107
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #18, !dbg !6108
  call void @llvm.dbg.declare(metadata ptr %start, metadata !6104, metadata !DIExpression()), !dbg !6109
  %0 = load i64, ptr %phys.addr, align 8, !dbg !6110
  %and = and i64 %0, -4096, !dbg !6111
  store i64 %and, ptr %start, align 8, !dbg !6109
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #18, !dbg !6112
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !6105, metadata !DIExpression()), !dbg !6113
  %1 = load i64, ptr %phys.addr, align 8, !dbg !6114
  %and1 = and i64 %1, 4095, !dbg !6115
  store i64 %and1, ptr %offset, align 8, !dbg !6113
  call void @llvm.lifetime.start.p0(i64 8, ptr %vaddr) #18, !dbg !6116
  call void @llvm.dbg.declare(metadata ptr %vaddr, metadata !6106, metadata !DIExpression()), !dbg !6117
  %2 = load i64, ptr %start, align 8, !dbg !6118
  %call = call ptr @memremap(i64 noundef %2, i64 noundef 4096, i64 noundef 1) #19, !dbg !6119
  store ptr %call, ptr %vaddr, align 8, !dbg !6120
  %3 = load ptr, ptr %vaddr, align 8, !dbg !6121
  %tobool = icmp ne ptr %3, null, !dbg !6121
  br i1 %tobool, label %if.then, label %if.end, !dbg !6123

if.then:                                          ; preds = %entry
  %4 = load i64, ptr %offset, align 8, !dbg !6124
  %5 = load ptr, ptr %vaddr, align 8, !dbg !6125
  %add.ptr = getelementptr i8, ptr %5, i64 %4, !dbg !6125
  store ptr %add.ptr, ptr %vaddr, align 8, !dbg !6125
  br label %if.end, !dbg !6126

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr %vaddr, align 8, !dbg !6127
  call void @llvm.lifetime.end.p0(i64 8, ptr %vaddr) #18, !dbg !6128
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #18, !dbg !6128
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #18, !dbg !6128
  ret ptr %6, !dbg !6129
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6130 dso_local ptr @memremap(i64 noundef, i64 noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @unxlate_dev_mem_ptr(i64 noundef %phys, ptr noundef %addr) #0 align 16 !dbg !6133 {
entry:
  %phys.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %phys, ptr %phys.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phys.addr, metadata !6137, metadata !DIExpression()), !dbg !6139
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6138, metadata !DIExpression()), !dbg !6140
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6141
  %1 = ptrtoint ptr %0 to i64, !dbg !6142
  %and = and i64 %1, -4096, !dbg !6143
  %2 = inttoptr i64 %and to ptr, !dbg !6144
  call void @memunmap(ptr noundef %2) #19, !dbg !6145
  ret void, !dbg !6146
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6147 dso_local void @memunmap(ptr noundef) #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden zeroext i1 @is_early_ioremap_ptep(ptr noundef %ptep) #7 section ".init.text" align 16 !dbg !6148 {
entry:
  %ptep.addr = alloca ptr, align 8
  store ptr %ptep, ptr %ptep.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptep.addr, metadata !6152, metadata !DIExpression()), !dbg !6153
  %0 = load ptr, ptr %ptep.addr, align 8, !dbg !6154
  %cmp = icmp uge ptr %0, @bm_pte, !dbg !6155
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !6156

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr %ptep.addr, align 8, !dbg !6157
  %cmp1 = icmp ult ptr %1, getelementptr inbounds ([512 x %struct.pte_t], ptr @bm_pte, i64 1, i64 0), !dbg !6158
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !6159
  ret i1 %2, !dbg !6160
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @early_ioremap_init() #7 section ".init.text" align 16 !dbg !6161 {
entry:
  %pmd = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %tmp36 = alloca i32, align 4
  %tmp43 = alloca i32, align 4
  %tmp49 = alloca i32, align 4
  %tmp55 = alloca i32, align 4
  %tmp60 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %pmd) #18, !dbg !6171
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !6163, metadata !DIExpression()), !dbg !6172
  br label %do.body, !dbg !6173

do.body:                                          ; preds = %entry
  %call = call i64 @fix_to_virt(i32 noundef 0) #19, !dbg !6174
  %add = add i64 %call, 4096, !dbg !6174
  %and = and i64 %add, 2097151, !dbg !6174
  %tobool = icmp ne i64 %and, 0, !dbg !6174
  br i1 %tobool, label %if.then, label %if.end, !dbg !6177

if.then:                                          ; preds = %do.body
  call void @__compiletime_assert_353() #21, !dbg !6174, !srcloc !6178
  unreachable, !dbg !6174

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !6177

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !6177

do.end:                                           ; preds = %do.cond
  call void @early_ioremap_setup() #19, !dbg !6179
  %call1 = call i64 @fix_to_virt(i32 noundef 1535) #19, !dbg !6180
  %call2 = call ptr @early_ioremap_pmd(i64 noundef %call1) #20, !dbg !6181
  store ptr %call2, ptr %pmd, align 8, !dbg !6182
  call void @llvm.memset.p0.i64(ptr align 4096 @bm_pte, i8 0, i64 4096, i1 false), !dbg !6183
  %0 = load ptr, ptr %pmd, align 8, !dbg !6184
  call void @pmd_populate_kernel(ptr noundef @init_mm, ptr noundef %0, ptr noundef @bm_pte) #19, !dbg !6185
  br label %do.body3, !dbg !6186

do.body3:                                         ; preds = %do.end
  br label %do.cond4, !dbg !6187

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !6187

do.end5:                                          ; preds = %do.cond4
  %1 = load ptr, ptr %pmd, align 8, !dbg !6189
  %call6 = call i64 @fix_to_virt(i32 noundef 1024) #19, !dbg !6190
  %call7 = call ptr @early_ioremap_pmd(i64 noundef %call6) #20, !dbg !6191
  %cmp = icmp ne ptr %1, %call7, !dbg !6192
  br i1 %cmp, label %if.then8, label %if.end62, !dbg !6193

if.then8:                                         ; preds = %do.end5
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #18, !dbg !6194
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6164, metadata !DIExpression()), !dbg !6194
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !6194
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !6195
  %tobool9 = icmp ne i32 %2, 0, !dbg !6195
  %lnot = xor i1 %tobool9, true, !dbg !6195
  %lnot10 = xor i1 %lnot, true, !dbg !6195
  %lnot.ext = zext i1 %lnot10 to i32, !dbg !6195
  %conv = sext i32 %lnot.ext to i64, !dbg !6195
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6195
  %tobool11 = icmp ne i64 %expval, 0, !dbg !6195
  br i1 %tobool11, label %if.then12, label %if.end25, !dbg !6194

if.then12:                                        ; preds = %if.then8
  br label %do.body13, !dbg !6195

do.body13:                                        ; preds = %if.then12
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #18, !dbg !6196
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6168, metadata !DIExpression()), !dbg !6196
  store i32 2305, ptr %__flags, align 4, !dbg !6196
  br label %do.body14, !dbg !6196

do.body14:                                        ; preds = %do.body13
  br label %do.cond15, !dbg !6197

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !6197

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !6196

do.body17:                                        ; preds = %do.end16
  %3 = load i32, ptr %__flags, align 4, !dbg !6199
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 904, i32 %3, i64 12) #18, !dbg !6199, !srcloc !6201
  br label %do.cond18, !dbg !6199

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !6199

do.end19:                                         ; preds = %do.cond18
  br label %do.body20, !dbg !6196

do.body20:                                        ; preds = %do.end19
  br label %do.cond21, !dbg !6202

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !6202

do.end22:                                         ; preds = %do.cond21
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #18, !dbg !6195
  br label %do.cond23, !dbg !6196

do.cond23:                                        ; preds = %do.end22
  br label %do.end24, !dbg !6196

do.end24:                                         ; preds = %do.cond23
  br label %if.end25, !dbg !6196

if.end25:                                         ; preds = %do.end24, %if.then8
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !6194
  %tobool26 = icmp ne i32 %4, 0, !dbg !6194
  %lnot27 = xor i1 %tobool26, true, !dbg !6194
  %lnot29 = xor i1 %lnot27, true, !dbg !6194
  %lnot.ext30 = zext i1 %lnot29 to i32, !dbg !6194
  %conv31 = sext i32 %lnot.ext30 to i64, !dbg !6194
  %expval32 = call i64 @llvm.expect.i64(i64 %conv31, i64 0), !dbg !6194
  store i64 %expval32, ptr %tmp, align 8, !dbg !6195
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #18, !dbg !6204
  %5 = load i64, ptr %tmp, align 8, !dbg !6194
  br label %do.body33, !dbg !6205

do.body33:                                        ; preds = %if.end25
  br label %do.cond34, !dbg !6207

do.cond34:                                        ; preds = %do.body33
  br label %do.end35, !dbg !6207

do.end35:                                         ; preds = %do.cond34
  %6 = load ptr, ptr %pmd, align 8, !dbg !6205
  %call37 = call i64 @fix_to_virt(i32 noundef 1024) #19, !dbg !6205
  %call38 = call ptr @early_ioremap_pmd(i64 noundef %call37) #20, !dbg !6205
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3, ptr noundef %6, ptr noundef %call38) #20, !dbg !6205
  store i32 %call39, ptr %tmp36, align 4, !dbg !6207
  %7 = load i32, ptr %tmp36, align 4, !dbg !6205
  br label %do.body40, !dbg !6209

do.body40:                                        ; preds = %do.end35
  br label %do.cond41, !dbg !6211

do.cond41:                                        ; preds = %do.body40
  br label %do.end42, !dbg !6211

do.end42:                                         ; preds = %do.cond41
  %call44 = call i64 @fix_to_virt(i32 noundef 1535) #19, !dbg !6209
  %call45 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4, i64 noundef %call44) #20, !dbg !6209
  store i32 %call45, ptr %tmp43, align 4, !dbg !6211
  %8 = load i32, ptr %tmp43, align 4, !dbg !6209
  br label %do.body46, !dbg !6213

do.body46:                                        ; preds = %do.end42
  br label %do.cond47, !dbg !6215

do.cond47:                                        ; preds = %do.body46
  br label %do.end48, !dbg !6215

do.end48:                                         ; preds = %do.cond47
  %call50 = call i64 @fix_to_virt(i32 noundef 1024) #19, !dbg !6213
  %call51 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5, i64 noundef %call50) #20, !dbg !6213
  store i32 %call51, ptr %tmp49, align 4, !dbg !6215
  %9 = load i32, ptr %tmp49, align 4, !dbg !6213
  br label %do.body52, !dbg !6217

do.body52:                                        ; preds = %do.end48
  br label %do.cond53, !dbg !6219

do.cond53:                                        ; preds = %do.body52
  br label %do.end54, !dbg !6219

do.end54:                                         ; preds = %do.cond53
  %call56 = call i32 (ptr, ...) @_printk(ptr noundef @.str.6, i32 noundef 1024) #20, !dbg !6217
  store i32 %call56, ptr %tmp55, align 4, !dbg !6219
  %10 = load i32, ptr %tmp55, align 4, !dbg !6217
  br label %do.body57, !dbg !6221

do.body57:                                        ; preds = %do.end54
  br label %do.cond58, !dbg !6223

do.cond58:                                        ; preds = %do.body57
  br label %do.end59, !dbg !6223

do.end59:                                         ; preds = %do.cond58
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef @.str.7, i32 noundef 1535) #20, !dbg !6221
  store i32 %call61, ptr %tmp60, align 4, !dbg !6223
  %11 = load i32, ptr %tmp60, align 4, !dbg !6221
  br label %if.end62, !dbg !6225

if.end62:                                         ; preds = %do.end59, %do.end5
  call void @llvm.lifetime.end.p0(i64 8, ptr %pmd) #18, !dbg !6226
  ret void, !dbg !6226
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @fix_to_virt(i32 noundef %idx) #8 align 16 !dbg !6227 {
entry:
  %idx.addr = alloca i32, align 4
  store i32 %idx, ptr %idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !6232, metadata !DIExpression()), !dbg !6233
  br label %do.body, !dbg !6234

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %idx.addr, align 4, !dbg !6235
  %cmp = icmp uge i32 %0, 1536, !dbg !6235
  br i1 %cmp, label %if.then, label %if.end, !dbg !6238

if.then:                                          ; preds = %do.body
  call void @__compiletime_assert_181() #21, !dbg !6235, !srcloc !6239
  unreachable, !dbg !6235

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !6238

do.end:                                           ; preds = %if.end
  %1 = load i32, ptr %idx.addr, align 4, !dbg !6240
  %shl = shl i32 %1, 12, !dbg !6240
  %conv = zext i32 %shl to i64, !dbg !6240
  %sub = sub i64 -8392704, %conv, !dbg !6240
  ret i64 %sub, !dbg !6241
}

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6242 dso_local void @__compiletime_assert_353() #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6243 dso_local void @early_ioremap_setup() #3

; Function Attrs: cold fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal ptr @early_ioremap_pmd(i64 noundef %addr) #10 section ".init.text" align 16 !dbg !6245 {
entry:
  %addr.addr = alloca i64, align 8
  %base = alloca ptr, align 8
  %pgd = alloca ptr, align 8
  %p4d = alloca ptr, align 8
  %pud = alloca ptr, align 8
  %pmd = alloca ptr, align 8
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6249, metadata !DIExpression()), !dbg !6255
  call void @llvm.lifetime.start.p0(i64 8, ptr %base) #18, !dbg !6256
  call void @llvm.dbg.declare(metadata ptr %base, metadata !6250, metadata !DIExpression()), !dbg !6257
  %call = call i64 @read_cr3_pa() #19, !dbg !6258
  %0 = load i64, ptr @page_offset_base, align 8, !dbg !6258
  %add = add i64 %call, %0, !dbg !6258
  %1 = inttoptr i64 %add to ptr, !dbg !6258
  store ptr %1, ptr %base, align 8, !dbg !6257
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgd) #18, !dbg !6259
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !6251, metadata !DIExpression()), !dbg !6260
  %2 = load ptr, ptr %base, align 8, !dbg !6261
  %3 = load i64, ptr %addr.addr, align 8, !dbg !6262
  %4 = load i32, ptr @pgdir_shift, align 4, !dbg !6262
  %sh_prom = zext i32 %4 to i64, !dbg !6262
  %shr = lshr i64 %3, %sh_prom, !dbg !6262
  %and = and i64 %shr, 511, !dbg !6262
  %arrayidx = getelementptr %struct.pgd_t, ptr %2, i64 %and, !dbg !6261
  store ptr %arrayidx, ptr %pgd, align 8, !dbg !6260
  call void @llvm.lifetime.start.p0(i64 8, ptr %p4d) #18, !dbg !6263
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !6252, metadata !DIExpression()), !dbg !6264
  %5 = load ptr, ptr %pgd, align 8, !dbg !6265
  %6 = load i64, ptr %addr.addr, align 8, !dbg !6266
  %call1 = call ptr @p4d_offset(ptr noundef %5, i64 noundef %6) #19, !dbg !6267
  store ptr %call1, ptr %p4d, align 8, !dbg !6264
  call void @llvm.lifetime.start.p0(i64 8, ptr %pud) #18, !dbg !6268
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !6253, metadata !DIExpression()), !dbg !6269
  %7 = load ptr, ptr %p4d, align 8, !dbg !6270
  %8 = load i64, ptr %addr.addr, align 8, !dbg !6271
  %call2 = call ptr @pud_offset(ptr noundef %7, i64 noundef %8) #19, !dbg !6272
  store ptr %call2, ptr %pud, align 8, !dbg !6269
  call void @llvm.lifetime.start.p0(i64 8, ptr %pmd) #18, !dbg !6273
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !6254, metadata !DIExpression()), !dbg !6274
  %9 = load ptr, ptr %pud, align 8, !dbg !6275
  %10 = load i64, ptr %addr.addr, align 8, !dbg !6276
  %call3 = call ptr @pmd_offset(ptr noundef %9, i64 noundef %10) #19, !dbg !6277
  store ptr %call3, ptr %pmd, align 8, !dbg !6274
  %11 = load ptr, ptr %pmd, align 8, !dbg !6278
  call void @llvm.lifetime.end.p0(i64 8, ptr %pmd) #18, !dbg !6279
  call void @llvm.lifetime.end.p0(i64 8, ptr %pud) #18, !dbg !6279
  call void @llvm.lifetime.end.p0(i64 8, ptr %p4d) #18, !dbg !6279
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgd) #18, !dbg !6279
  call void @llvm.lifetime.end.p0(i64 8, ptr %base) #18, !dbg !6279
  ret ptr %11, !dbg !6280
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pmd_populate_kernel(ptr noundef %mm, ptr noundef %pmd, ptr noundef %pte) #5 align 16 !dbg !6281 {
entry:
  %mm.addr = alloca ptr, align 8
  %pmd.addr = alloca ptr, align 8
  %pte.addr = alloca ptr, align 8
  %agg.tmp = alloca %struct.pmd_t, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !6286, metadata !DIExpression()), !dbg !6289
  store ptr %pmd, ptr %pmd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd.addr, metadata !6287, metadata !DIExpression()), !dbg !6290
  store ptr %pte, ptr %pte.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pte.addr, metadata !6288, metadata !DIExpression()), !dbg !6291
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !6292
  %1 = load ptr, ptr %pte.addr, align 8, !dbg !6293
  %2 = ptrtoint ptr %1 to i64, !dbg !6293
  %call = call i64 @__phys_addr_nodebug(i64 noundef %2) #19, !dbg !6293
  %shr = lshr i64 %call, 12, !dbg !6294
  call void @paravirt_alloc_pte(ptr noundef %0, i64 noundef %shr) #19, !dbg !6295
  %3 = load ptr, ptr %pmd.addr, align 8, !dbg !6296
  %4 = load ptr, ptr %pte.addr, align 8, !dbg !6296
  %5 = ptrtoint ptr %4 to i64, !dbg !6296
  %call1 = call i64 @__phys_addr_nodebug(i64 noundef %5) #19, !dbg !6296
  %or = or i64 %call1, 103, !dbg !6296
  %call2 = call i64 @native_make_pmd(i64 noundef %or) #19, !dbg !6296
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %agg.tmp, i32 0, i32 0, !dbg !6296
  store i64 %call2, ptr %coerce.dive, align 8, !dbg !6296
  %coerce.dive3 = getelementptr inbounds %struct.pmd_t, ptr %agg.tmp, i32 0, i32 0, !dbg !6296
  %6 = load i64, ptr %coerce.dive3, align 8, !dbg !6296
  call void @native_set_pmd(ptr noundef %3, i64 %6) #19, !dbg !6296
  ret void, !dbg !6297
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @__early_set_fixmap(i32 noundef %idx, i64 noundef %phys, i64 %flags.coerce) #7 section ".init.text" align 16 !dbg !6298 {
entry:
  %flags = alloca %struct.pgprot, align 8
  %idx.addr = alloca i32, align 4
  %phys.addr = alloca i64, align 8
  %addr = alloca i64, align 8
  %pte = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %agg.tmp = alloca %struct.pte_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pgprot, ptr %flags, i32 0, i32 0
  store i64 %flags.coerce, ptr %coerce.dive, align 8
  store i32 %idx, ptr %idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !6302, metadata !DIExpression()), !dbg !6307
  store i64 %phys, ptr %phys.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phys.addr, metadata !6303, metadata !DIExpression()), !dbg !6308
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !6304, metadata !DIExpression()), !dbg !6309
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr) #18, !dbg !6310
  call void @llvm.dbg.declare(metadata ptr %addr, metadata !6305, metadata !DIExpression()), !dbg !6311
  %0 = load i32, ptr %idx.addr, align 4, !dbg !6312
  %shl = shl i32 %0, 12, !dbg !6312
  %conv = zext i32 %shl to i64, !dbg !6312
  %sub = sub i64 -8392704, %conv, !dbg !6312
  store i64 %sub, ptr %addr, align 8, !dbg !6311
  call void @llvm.lifetime.start.p0(i64 8, ptr %pte) #18, !dbg !6313
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !6306, metadata !DIExpression()), !dbg !6314
  %1 = load i32, ptr %idx.addr, align 4, !dbg !6315
  %cmp = icmp uge i32 %1, 1536, !dbg !6317
  br i1 %cmp, label %if.then, label %if.end, !dbg !6318

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6319

do.body:                                          ; preds = %if.then
  br label %do.body2, !dbg !6321

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !6323

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !6323

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !6321

do.body3:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 925, i32 0, i64 12) #18, !dbg !6325, !srcloc !6327
  br label %do.cond4, !dbg !6325

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !6325

do.end5:                                          ; preds = %do.cond4
  unreachable, !dbg !6321

do.cond6:                                         ; No predecessors!
  br label %do.end7, !dbg !6321

do.end7:                                          ; preds = %do.cond6
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6328

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %addr, align 8, !dbg !6329
  %call = call ptr @early_ioremap_pte(i64 noundef %2) #20, !dbg !6330
  store ptr %call, ptr %pte, align 8, !dbg !6331
  %3 = load i64, ptr @__supported_pte_mask, align 8, !dbg !6332
  %pgprot = getelementptr inbounds %struct.pgprot, ptr %flags, i32 0, i32 0, !dbg !6333
  %4 = load i64, ptr %pgprot, align 8, !dbg !6334
  %and = and i64 %4, %3, !dbg !6334
  store i64 %and, ptr %pgprot, align 8, !dbg !6334
  %pgprot8 = getelementptr inbounds %struct.pgprot, ptr %flags, i32 0, i32 0, !dbg !6335
  %5 = load i64, ptr %pgprot8, align 8, !dbg !6335
  %tobool = icmp ne i64 %5, 0, !dbg !6335
  br i1 %tobool, label %if.then9, label %if.else, !dbg !6337

if.then9:                                         ; preds = %if.end
  %6 = load ptr, ptr %pte, align 8, !dbg !6338
  %7 = load i64, ptr %phys.addr, align 8, !dbg !6338
  %shr = lshr i64 %7, 12, !dbg !6338
  %coerce.dive10 = getelementptr inbounds %struct.pgprot, ptr %flags, i32 0, i32 0, !dbg !6338
  %8 = load i64, ptr %coerce.dive10, align 8, !dbg !6338
  %call11 = call i64 @pfn_pte(i64 noundef %shr, i64 %8) #19, !dbg !6338
  %coerce.dive12 = getelementptr inbounds %struct.pte_t, ptr %agg.tmp, i32 0, i32 0, !dbg !6338
  store i64 %call11, ptr %coerce.dive12, align 8, !dbg !6338
  %coerce.dive13 = getelementptr inbounds %struct.pte_t, ptr %agg.tmp, i32 0, i32 0, !dbg !6338
  %9 = load i64, ptr %coerce.dive13, align 8, !dbg !6338
  call void @native_set_pte(ptr noundef %6, i64 %9) #19, !dbg !6338
  br label %if.end14, !dbg !6338

if.else:                                          ; preds = %if.end
  %10 = load i64, ptr %addr, align 8, !dbg !6339
  %11 = load ptr, ptr %pte, align 8, !dbg !6339
  call void @native_pte_clear(ptr noundef @init_mm, i64 noundef %10, ptr noundef %11) #19, !dbg !6339
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then9
  %12 = load i64, ptr %addr, align 8, !dbg !6340
  call void @flush_tlb_one_kernel(i64 noundef %12) #19, !dbg !6341
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6342
  br label %cleanup, !dbg !6342

cleanup:                                          ; preds = %if.end14, %do.end7
  call void @llvm.lifetime.end.p0(i64 8, ptr %pte) #18, !dbg !6342
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr) #18, !dbg !6342
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6342

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: cold fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal ptr @early_ioremap_pte(i64 noundef %addr) #10 section ".init.text" align 16 !dbg !6343 {
entry:
  %addr.addr = alloca i64, align 8
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6347, metadata !DIExpression()), !dbg !6348
  %0 = load i64, ptr %addr.addr, align 8, !dbg !6349
  %call = call i64 @pte_index(i64 noundef %0) #19, !dbg !6350
  %arrayidx = getelementptr [512 x %struct.pte_t], ptr @bm_pte, i64 0, i64 %call, !dbg !6351
  ret ptr %arrayidx, !dbg !6352
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_set_pte(ptr noundef %ptep, i64 %pte.coerce) #5 align 16 !dbg !6353 {
entry:
  %pte = alloca %struct.pte_t, align 8
  %ptep.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0
  store i64 %pte.coerce, ptr %coerce.dive, align 8
  store ptr %ptep, ptr %ptep.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptep.addr, metadata !6358, metadata !DIExpression()), !dbg !6360
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !6359, metadata !DIExpression()), !dbg !6361
  br label %do.body, !dbg !6362

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6363

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !6365

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !6363

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %ptep.addr, align 8, !dbg !6367
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %pte, i64 8, i1 true), !dbg !6367
  br label %do.end3, !dbg !6367

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !6363

do.end4:                                          ; preds = %do.end3
  ret void, !dbg !6369
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pfn_pte(i64 noundef %page_nr, i64 %pgprot.coerce) #5 align 16 !dbg !6370 {
entry:
  %retval = alloca %struct.pte_t, align 8
  %pgprot = alloca %struct.pgprot, align 8
  %page_nr.addr = alloca i64, align 8
  %pfn = alloca i64, align 8
  %coerce.dive = getelementptr inbounds %struct.pgprot, ptr %pgprot, i32 0, i32 0
  store i64 %pgprot.coerce, ptr %coerce.dive, align 8
  store i64 %page_nr, ptr %page_nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page_nr.addr, metadata !6375, metadata !DIExpression()), !dbg !6378
  call void @llvm.dbg.declare(metadata ptr %pgprot, metadata !6376, metadata !DIExpression()), !dbg !6379
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfn) #18, !dbg !6380
  call void @llvm.dbg.declare(metadata ptr %pfn, metadata !6377, metadata !DIExpression()), !dbg !6381
  %0 = load i64, ptr %page_nr.addr, align 8, !dbg !6382
  %shl = shl i64 %0, 12, !dbg !6383
  store i64 %shl, ptr %pfn, align 8, !dbg !6381
  %pgprot1 = getelementptr inbounds %struct.pgprot, ptr %pgprot, i32 0, i32 0, !dbg !6384
  %1 = load i64, ptr %pgprot1, align 8, !dbg !6384
  %call = call i64 @protnone_mask(i64 noundef %1) #19, !dbg !6385
  %2 = load i64, ptr %pfn, align 8, !dbg !6386
  %xor = xor i64 %2, %call, !dbg !6386
  store i64 %xor, ptr %pfn, align 8, !dbg !6386
  %3 = load i64, ptr %pfn, align 8, !dbg !6387
  %and = and i64 %3, 4503599627366400, !dbg !6387
  store i64 %and, ptr %pfn, align 8, !dbg !6387
  %4 = load i64, ptr %pfn, align 8, !dbg !6388
  %coerce.dive2 = getelementptr inbounds %struct.pgprot, ptr %pgprot, i32 0, i32 0, !dbg !6388
  %5 = load i64, ptr %coerce.dive2, align 8, !dbg !6388
  %call3 = call i64 @check_pgprot(i64 %5) #19, !dbg !6388
  %or = or i64 %4, %call3, !dbg !6388
  %call4 = call i64 @native_make_pte(i64 noundef %or) #19, !dbg !6388
  %coerce.dive5 = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !6388
  store i64 %call4, ptr %coerce.dive5, align 8, !dbg !6388
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfn) #18, !dbg !6389
  %coerce.dive6 = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !6389
  %6 = load i64, ptr %coerce.dive6, align 8, !dbg !6389
  ret i64 %6, !dbg !6389
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_pte_clear(ptr noundef %mm, i64 noundef %addr, ptr noundef %ptep) #5 align 16 !dbg !6390 {
entry:
  %mm.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %ptep.addr = alloca ptr, align 8
  %agg.tmp = alloca %struct.pte_t, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !6394, metadata !DIExpression()), !dbg !6397
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6395, metadata !DIExpression()), !dbg !6398
  store ptr %ptep, ptr %ptep.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptep.addr, metadata !6396, metadata !DIExpression()), !dbg !6399
  %0 = load ptr, ptr %ptep.addr, align 8, !dbg !6400
  %call = call i64 @native_make_pte(i64 noundef 0) #19, !dbg !6401
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %agg.tmp, i32 0, i32 0, !dbg !6401
  store i64 %call, ptr %coerce.dive, align 8, !dbg !6401
  %coerce.dive1 = getelementptr inbounds %struct.pte_t, ptr %agg.tmp, i32 0, i32 0, !dbg !6402
  %1 = load i64, ptr %coerce.dive1, align 8, !dbg !6402
  call void @native_set_pte(ptr noundef %0, i64 %1) #19, !dbg !6402
  ret void, !dbg !6403
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6404 dso_local void @flush_tlb_one_kernel(i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @phys_addr_valid(i64 noundef %addr) #5 align 16 !dbg !6408 {
entry:
  %addr.addr = alloca i64, align 8
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6413, metadata !DIExpression()), !dbg !6414
  %0 = load i64, ptr %addr.addr, align 8, !dbg !6415
  %1 = load i8, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 5), align 1, !dbg !6416
  %conv = zext i8 %1 to i32, !dbg !6417
  %sh_prom = zext i32 %conv to i64, !dbg !6418
  %shr = lshr i64 %0, %sh_prom, !dbg !6418
  %tobool = icmp ne i64 %shr, 0, !dbg !6419
  %lnot = xor i1 %tobool, true, !dbg !6419
  %lnot.ext = zext i1 %lnot to i32, !dbg !6419
  ret i32 %lnot.ext, !dbg !6420
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__ioremap_check_mem(i64 noundef %addr, i64 noundef %size, ptr noundef %desc) #0 align 16 !dbg !6421 {
entry:
  %addr.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %desc.addr = alloca ptr, align 8
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6426, metadata !DIExpression()), !dbg !6431
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6427, metadata !DIExpression()), !dbg !6432
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !6428, metadata !DIExpression()), !dbg !6433
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #18, !dbg !6434
  call void @llvm.dbg.declare(metadata ptr %start, metadata !6429, metadata !DIExpression()), !dbg !6435
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #18, !dbg !6434
  call void @llvm.dbg.declare(metadata ptr %end, metadata !6430, metadata !DIExpression()), !dbg !6436
  %0 = load i64, ptr %addr.addr, align 8, !dbg !6437
  store i64 %0, ptr %start, align 8, !dbg !6438
  %1 = load i64, ptr %start, align 8, !dbg !6439
  %2 = load i64, ptr %size.addr, align 8, !dbg !6440
  %add = add i64 %1, %2, !dbg !6441
  %sub = sub i64 %add, 1, !dbg !6442
  store i64 %sub, ptr %end, align 8, !dbg !6443
  %3 = load ptr, ptr %desc.addr, align 8, !dbg !6444
  call void @llvm.memset.p0.i64(ptr align 4 %3, i8 0, i64 4, i1 false), !dbg !6445
  %4 = load i64, ptr %start, align 8, !dbg !6446
  %5 = load i64, ptr %end, align 8, !dbg !6447
  %6 = load ptr, ptr %desc.addr, align 8, !dbg !6448
  %call = call i32 @walk_mem_res(i64 noundef %4, i64 noundef %5, ptr noundef %6, ptr noundef @__ioremap_collect_map_flags) #19, !dbg !6449
  %7 = load i64, ptr %addr.addr, align 8, !dbg !6450
  %8 = load ptr, ptr %desc.addr, align 8, !dbg !6451
  call void @__ioremap_check_other(i64 noundef %7, ptr noundef %8) #19, !dbg !6452
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #18, !dbg !6453
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #18, !dbg !6453
  ret void, !dbg !6453
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6454 dso_local i32 @memtype_reserve(i64 noundef, i64 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @is_new_memtype_allowed(i64 noundef %paddr, i64 noundef %size, i32 noundef %pcm, i32 noundef %new_pcm) #5 align 16 !dbg !6458 {
entry:
  %retval = alloca i32, align 4
  %paddr.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %pcm.addr = alloca i32, align 4
  %new_pcm.addr = alloca i32, align 4
  store i64 %paddr, ptr %paddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %paddr.addr, metadata !6462, metadata !DIExpression()), !dbg !6466
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6463, metadata !DIExpression()), !dbg !6467
  store i32 %pcm, ptr %pcm.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pcm.addr, metadata !6464, metadata !DIExpression()), !dbg !6468
  store i32 %new_pcm, ptr %new_pcm.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new_pcm.addr, metadata !6465, metadata !DIExpression()), !dbg !6469
  %0 = load ptr, ptr getelementptr inbounds (%struct.x86_platform_ops, ptr @x86_platform, i32 0, i32 5), align 8, !dbg !6470
  %1 = load i64, ptr %paddr.addr, align 8, !dbg !6472
  %2 = load i64, ptr %paddr.addr, align 8, !dbg !6473
  %3 = load i64, ptr %size.addr, align 8, !dbg !6474
  %add = add i64 %2, %3, !dbg !6475
  %call = call zeroext i1 %0(i64 noundef %1, i64 noundef %add) #19, !dbg !6476
  br i1 %call, label %if.then, label %if.end, !dbg !6477

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !6478
  br label %return, !dbg !6478

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %pcm.addr, align 4, !dbg !6479
  %cmp = icmp eq i32 %4, 2, !dbg !6481
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false, !dbg !6482

land.lhs.true:                                    ; preds = %if.end
  %5 = load i32, ptr %new_pcm.addr, align 4, !dbg !6483
  %cmp1 = icmp eq i32 %5, 0, !dbg !6484
  br i1 %cmp1, label %if.then13, label %lor.lhs.false, !dbg !6485

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end
  %6 = load i32, ptr %pcm.addr, align 4, !dbg !6486
  %cmp2 = icmp eq i32 %6, 1, !dbg !6487
  br i1 %cmp2, label %land.lhs.true3, label %lor.lhs.false5, !dbg !6488

land.lhs.true3:                                   ; preds = %lor.lhs.false
  %7 = load i32, ptr %new_pcm.addr, align 4, !dbg !6489
  %cmp4 = icmp eq i32 %7, 0, !dbg !6490
  br i1 %cmp4, label %if.then13, label %lor.lhs.false5, !dbg !6491

lor.lhs.false5:                                   ; preds = %land.lhs.true3, %lor.lhs.false
  %8 = load i32, ptr %pcm.addr, align 4, !dbg !6492
  %cmp6 = icmp eq i32 %8, 4, !dbg !6493
  br i1 %cmp6, label %land.lhs.true7, label %lor.lhs.false9, !dbg !6494

land.lhs.true7:                                   ; preds = %lor.lhs.false5
  %9 = load i32, ptr %new_pcm.addr, align 4, !dbg !6495
  %cmp8 = icmp eq i32 %9, 0, !dbg !6496
  br i1 %cmp8, label %if.then13, label %lor.lhs.false9, !dbg !6497

lor.lhs.false9:                                   ; preds = %land.lhs.true7, %lor.lhs.false5
  %10 = load i32, ptr %pcm.addr, align 4, !dbg !6498
  %cmp10 = icmp eq i32 %10, 4, !dbg !6499
  br i1 %cmp10, label %land.lhs.true11, label %if.end14, !dbg !6500

land.lhs.true11:                                  ; preds = %lor.lhs.false9
  %11 = load i32, ptr %new_pcm.addr, align 4, !dbg !6501
  %cmp12 = icmp eq i32 %11, 1, !dbg !6502
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6503

if.then13:                                        ; preds = %land.lhs.true11, %land.lhs.true7, %land.lhs.true3, %land.lhs.true
  store i32 0, ptr %retval, align 4, !dbg !6504
  br label %return, !dbg !6504

if.end14:                                         ; preds = %land.lhs.true11, %lor.lhs.false9
  store i32 1, ptr %retval, align 4, !dbg !6506
  br label %return, !dbg !6506

return:                                           ; preds = %if.end14, %if.then13, %if.then
  %12 = load i32, ptr %retval, align 4, !dbg !6507
  ret i32 %12, !dbg !6507
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @cc_mkenc(i64 noundef %val) #5 align 16 !dbg !6508 {
entry:
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6513, metadata !DIExpression()), !dbg !6514
  %0 = load i64, ptr %val.addr, align 8, !dbg !6515
  ret i64 %0, !dbg !6516
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @cc_mkdec(i64 noundef %val) #5 align 16 !dbg !6517 {
entry:
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6519, metadata !DIExpression()), !dbg !6520
  %0 = load i64, ptr %val.addr, align 8, !dbg !6521
  ret i64 %0, !dbg !6522
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6523 dso_local i64 @cachemode2protval(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6526 dso_local ptr @get_vm_area_caller(i64 noundef, i64 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6529 dso_local i32 @memtype_kernel_map_sync(i64 noundef, i64 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6532 dso_local i32 @ioremap_page_range(i64 noundef, i64 noundef, i64 noundef, i64) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mmiotrace_ioremap(i64 noundef %offset, i64 noundef %size, ptr noundef %addr) #5 align 16 !dbg !6535 {
entry:
  %offset.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !6539, metadata !DIExpression()), !dbg !6542
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6540, metadata !DIExpression()), !dbg !6543
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6541, metadata !DIExpression()), !dbg !6544
  ret void, !dbg !6545
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6546 dso_local i32 @iomem_map_sanity_check(i64 noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6549 dso_local void @free_vm_area(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6552 dso_local i32 @walk_mem_res(i64 noundef, i64 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__ioremap_collect_map_flags(ptr noundef %res, ptr noundef %arg) #0 align 16 !dbg !6569 {
entry:
  %res.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %desc = alloca ptr, align 8
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !6571, metadata !DIExpression()), !dbg !6574
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !6572, metadata !DIExpression()), !dbg !6575
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #18, !dbg !6576
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !6573, metadata !DIExpression()), !dbg !6577
  %0 = load ptr, ptr %arg.addr, align 8, !dbg !6578
  store ptr %0, ptr %desc, align 8, !dbg !6577
  %1 = load ptr, ptr %desc, align 8, !dbg !6579
  %flags = getelementptr inbounds %struct.ioremap_desc, ptr %1, i32 0, i32 0, !dbg !6581
  %2 = load i32, ptr %flags, align 4, !dbg !6581
  %and = and i32 %2, 1, !dbg !6582
  %tobool = icmp ne i32 %and, 0, !dbg !6582
  br i1 %tobool, label %if.end, label %if.then, !dbg !6583

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %res.addr, align 8, !dbg !6584
  %call = call i32 @__ioremap_check_ram(ptr noundef %3) #19, !dbg !6585
  %4 = load ptr, ptr %desc, align 8, !dbg !6586
  %flags1 = getelementptr inbounds %struct.ioremap_desc, ptr %4, i32 0, i32 0, !dbg !6587
  %5 = load i32, ptr %flags1, align 4, !dbg !6588
  %or = or i32 %5, %call, !dbg !6588
  store i32 %or, ptr %flags1, align 4, !dbg !6588
  br label %if.end, !dbg !6586

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr %desc, align 8, !dbg !6589
  %flags2 = getelementptr inbounds %struct.ioremap_desc, ptr %6, i32 0, i32 0, !dbg !6591
  %7 = load i32, ptr %flags2, align 4, !dbg !6591
  %and3 = and i32 %7, 2, !dbg !6592
  %tobool4 = icmp ne i32 %and3, 0, !dbg !6592
  br i1 %tobool4, label %if.end9, label %if.then5, !dbg !6593

if.then5:                                         ; preds = %if.end
  %8 = load ptr, ptr %res.addr, align 8, !dbg !6594
  %call6 = call i32 @__ioremap_check_encrypted(ptr noundef %8) #19, !dbg !6595
  %9 = load ptr, ptr %desc, align 8, !dbg !6596
  %flags7 = getelementptr inbounds %struct.ioremap_desc, ptr %9, i32 0, i32 0, !dbg !6597
  %10 = load i32, ptr %flags7, align 4, !dbg !6598
  %or8 = or i32 %10, %call6, !dbg !6598
  store i32 %or8, ptr %flags7, align 4, !dbg !6598
  br label %if.end9, !dbg !6596

if.end9:                                          ; preds = %if.then5, %if.end
  %11 = load ptr, ptr %desc, align 8, !dbg !6599
  %flags10 = getelementptr inbounds %struct.ioremap_desc, ptr %11, i32 0, i32 0, !dbg !6600
  %12 = load i32, ptr %flags10, align 4, !dbg !6600
  %and11 = and i32 %12, 3, !dbg !6601
  %cmp = icmp eq i32 %and11, 3, !dbg !6602
  %conv = zext i1 %cmp to i32, !dbg !6602
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #18, !dbg !6603
  ret i32 %conv, !dbg !6604
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__ioremap_check_other(i64 noundef %addr, ptr noundef %desc) #0 align 16 !dbg !6605 {
entry:
  %addr.addr = alloca i64, align 8
  %desc.addr = alloca ptr, align 8
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6609, metadata !DIExpression()), !dbg !6611
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !6610, metadata !DIExpression()), !dbg !6612
  %call = call zeroext i1 @cc_platform_has(i32 noundef 2) #19, !dbg !6613
  br i1 %call, label %if.end, label %if.then, !dbg !6615

if.then:                                          ; preds = %entry
  br label %if.end11, !dbg !6616

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr getelementptr inbounds (%struct.x86_platform_ops, ptr @x86_platform, i32 0, i32 15, i32 3), align 8, !dbg !6617
  %1 = load i64, ptr %addr.addr, align 8, !dbg !6619
  %call1 = call zeroext i1 %0(i64 noundef %1) #19, !dbg !6620
  br i1 %call1, label %if.then2, label %if.end3, !dbg !6621

if.then2:                                         ; preds = %if.end
  %2 = load ptr, ptr %desc.addr, align 8, !dbg !6622
  %flags = getelementptr inbounds %struct.ioremap_desc, ptr %2, i32 0, i32 0, !dbg !6624
  %3 = load i32, ptr %flags, align 4, !dbg !6625
  %or = or i32 %3, 2, !dbg !6625
  store i32 %or, ptr %flags, align 4, !dbg !6625
  br label %if.end11, !dbg !6626

if.end3:                                          ; preds = %if.end
  %4 = load i64, ptr %addr.addr, align 8, !dbg !6627
  %call4 = call i32 @efi_mem_type(i64 noundef %4) #19, !dbg !6629
  %cmp = icmp eq i32 %call4, 6, !dbg !6630
  br i1 %cmp, label %if.then8, label %lor.lhs.false, !dbg !6631

lor.lhs.false:                                    ; preds = %if.end3
  %5 = load i64, ptr %addr.addr, align 8, !dbg !6632
  %call5 = call i32 @efi_mem_type(i64 noundef %5) #19, !dbg !6633
  %cmp6 = icmp eq i32 %call5, 4, !dbg !6634
  br i1 %cmp6, label %land.lhs.true, label %if.end11, !dbg !6635

land.lhs.true:                                    ; preds = %lor.lhs.false
  %6 = load i64, ptr %addr.addr, align 8, !dbg !6636
  %call7 = call i64 @efi_mem_attributes(i64 noundef %6) #19, !dbg !6637
  %and = and i64 %call7, -9223372036854775808, !dbg !6638
  %tobool = icmp ne i64 %and, 0, !dbg !6638
  br i1 %tobool, label %if.then8, label %if.end11, !dbg !6639

if.then8:                                         ; preds = %land.lhs.true, %if.end3
  %7 = load ptr, ptr %desc.addr, align 8, !dbg !6640
  %flags9 = getelementptr inbounds %struct.ioremap_desc, ptr %7, i32 0, i32 0, !dbg !6641
  %8 = load i32, ptr %flags9, align 4, !dbg !6642
  %or10 = or i32 %8, 2, !dbg !6642
  store i32 %or10, ptr %flags9, align 4, !dbg !6642
  br label %if.end11, !dbg !6640

if.end11:                                         ; preds = %if.then, %if.then2, %if.then8, %land.lhs.true, %lor.lhs.false
  ret void, !dbg !6643
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__ioremap_check_ram(ptr noundef %res) #0 align 16 !dbg !6644 {
entry:
  %retval = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  %start_pfn = alloca i64, align 8
  %stop_pfn = alloca i64, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !6648, metadata !DIExpression()), !dbg !6652
  call void @llvm.lifetime.start.p0(i64 8, ptr %start_pfn) #18, !dbg !6653
  call void @llvm.dbg.declare(metadata ptr %start_pfn, metadata !6649, metadata !DIExpression()), !dbg !6654
  call void @llvm.lifetime.start.p0(i64 8, ptr %stop_pfn) #18, !dbg !6653
  call void @llvm.dbg.declare(metadata ptr %stop_pfn, metadata !6650, metadata !DIExpression()), !dbg !6655
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #18, !dbg !6656
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6651, metadata !DIExpression()), !dbg !6657
  %0 = load ptr, ptr %res.addr, align 8, !dbg !6658
  %flags = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 3, !dbg !6660
  %1 = load i64, ptr %flags, align 8, !dbg !6660
  %and = and i64 %1, 16777728, !dbg !6661
  %cmp = icmp ne i64 %and, 16777728, !dbg !6662
  br i1 %cmp, label %if.then, label %if.end, !dbg !6663

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6664
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6664

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %res.addr, align 8, !dbg !6665
  %start = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 0, !dbg !6666
  %3 = load i64, ptr %start, align 8, !dbg !6666
  %add = add i64 %3, 4096, !dbg !6667
  %sub = sub i64 %add, 1, !dbg !6668
  %shr = lshr i64 %sub, 12, !dbg !6669
  store i64 %shr, ptr %start_pfn, align 8, !dbg !6670
  %4 = load ptr, ptr %res.addr, align 8, !dbg !6671
  %end = getelementptr inbounds %struct.resource, ptr %4, i32 0, i32 1, !dbg !6672
  %5 = load i64, ptr %end, align 8, !dbg !6672
  %add1 = add i64 %5, 1, !dbg !6673
  %shr2 = lshr i64 %add1, 12, !dbg !6674
  store i64 %shr2, ptr %stop_pfn, align 8, !dbg !6675
  %6 = load i64, ptr %stop_pfn, align 8, !dbg !6676
  %7 = load i64, ptr %start_pfn, align 8, !dbg !6678
  %cmp3 = icmp ugt i64 %6, %7, !dbg !6679
  br i1 %cmp3, label %if.then4, label %if.end13, !dbg !6680

if.then4:                                         ; preds = %if.end
  store i64 0, ptr %i, align 8, !dbg !6681
  br label %for.cond, !dbg !6684

for.cond:                                         ; preds = %for.inc, %if.then4
  %8 = load i64, ptr %i, align 8, !dbg !6685
  %9 = load i64, ptr %stop_pfn, align 8, !dbg !6687
  %10 = load i64, ptr %start_pfn, align 8, !dbg !6688
  %sub5 = sub i64 %9, %10, !dbg !6689
  %cmp6 = icmp ult i64 %8, %sub5, !dbg !6690
  br i1 %cmp6, label %for.body, label %for.end, !dbg !6691

for.body:                                         ; preds = %for.cond
  %11 = load i64, ptr %start_pfn, align 8, !dbg !6692
  %12 = load i64, ptr %i, align 8, !dbg !6694
  %add7 = add i64 %11, %12, !dbg !6695
  %call = call i32 @pfn_valid(i64 noundef %add7) #19, !dbg !6696
  %tobool = icmp ne i32 %call, 0, !dbg !6696
  br i1 %tobool, label %land.lhs.true, label %if.end12, !dbg !6697

land.lhs.true:                                    ; preds = %for.body
  %13 = load i64, ptr @vmemmap_base, align 8, !dbg !6698
  %14 = inttoptr i64 %13 to ptr, !dbg !6698
  %15 = load i64, ptr %start_pfn, align 8, !dbg !6698
  %16 = load i64, ptr %i, align 8, !dbg !6698
  %add8 = add i64 %15, %16, !dbg !6698
  %add.ptr = getelementptr %struct.page, ptr %14, i64 %add8, !dbg !6698
  %call9 = call i32 @PageReserved(ptr noundef %add.ptr) #19, !dbg !6699
  %tobool10 = icmp ne i32 %call9, 0, !dbg !6699
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !6700

if.then11:                                        ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6701
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6701

if.end12:                                         ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !6702

for.inc:                                          ; preds = %if.end12
  %17 = load i64, ptr %i, align 8, !dbg !6703
  %inc = add i64 %17, 1, !dbg !6703
  store i64 %inc, ptr %i, align 8, !dbg !6703
  br label %for.cond, !dbg !6704, !llvm.loop !6705

for.end:                                          ; preds = %for.cond
  br label %if.end13, !dbg !6709

if.end13:                                         ; preds = %for.end, %if.end
  store i32 0, ptr %retval, align 4, !dbg !6710
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6710

cleanup:                                          ; preds = %if.end13, %if.then11, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #18, !dbg !6711
  call void @llvm.lifetime.end.p0(i64 8, ptr %stop_pfn) #18, !dbg !6711
  call void @llvm.lifetime.end.p0(i64 8, ptr %start_pfn) #18, !dbg !6711
  %18 = load i32, ptr %retval, align 4, !dbg !6711
  ret i32 %18, !dbg !6711
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__ioremap_check_encrypted(ptr noundef %res) #0 align 16 !dbg !6712 {
entry:
  %retval = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !6714, metadata !DIExpression()), !dbg !6715
  %call = call zeroext i1 @cc_platform_has(i32 noundef 2) #19, !dbg !6716
  br i1 %call, label %if.end, label %if.then, !dbg !6718

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6719
  br label %return, !dbg !6719

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %res.addr, align 8, !dbg !6720
  %desc = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 4, !dbg !6721
  %1 = load i64, ptr %desc, align 8, !dbg !6721
  switch i64 %1, label %sw.default [
    i64 0, label %sw.bb
    i64 7, label %sw.bb
  ], !dbg !6722

sw.bb:                                            ; preds = %if.end, %if.end
  br label %sw.epilog, !dbg !6723

sw.default:                                       ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6725
  br label %return, !dbg !6725

sw.epilog:                                        ; preds = %sw.bb
  store i32 0, ptr %retval, align 4, !dbg !6726
  br label %return, !dbg !6726

return:                                           ; preds = %sw.epilog, %sw.default, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6727
  ret i32 %2, !dbg !6727
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pfn_valid(i64 noundef %pfn) #5 align 16 !dbg !6728 {
entry:
  %retval = alloca i32, align 4
  %pfn.addr = alloca i64, align 8
  %ms = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %pfn, ptr %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pfn.addr, metadata !6732, metadata !DIExpression()), !dbg !6740
  call void @llvm.lifetime.start.p0(i64 8, ptr %ms) #18, !dbg !6741
  call void @llvm.dbg.declare(metadata ptr %ms, metadata !6733, metadata !DIExpression()), !dbg !6742
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #18, !dbg !6743
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6739, metadata !DIExpression()), !dbg !6744
  %0 = load i64, ptr %pfn.addr, align 8, !dbg !6745
  %shl = shl i64 %0, 12, !dbg !6745
  %shr = lshr i64 %shl, 12, !dbg !6745
  %1 = load i64, ptr %pfn.addr, align 8, !dbg !6747
  %cmp = icmp ne i64 %shr, %1, !dbg !6748
  br i1 %cmp, label %if.then, label %if.end, !dbg !6749

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6750
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6750

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %pfn.addr, align 8, !dbg !6751
  %call = call i64 @pfn_to_section_nr(i64 noundef %2) #19, !dbg !6753
  %call1 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 528) #19, !dbg !6754
  %3 = zext i1 %call1 to i64, !dbg !6754
  %cond = select i1 %call1, i32 52, i32 46, !dbg !6754
  %sub = sub i32 %cond, 27, !dbg !6754
  %sh_prom = zext i32 %sub to i64, !dbg !6754
  %shl2 = shl i64 1, %sh_prom, !dbg !6754
  %cmp3 = icmp uge i64 %call, %shl2, !dbg !6755
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !6756

if.then4:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !6757
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6757

if.end5:                                          ; preds = %if.end
  %4 = load i64, ptr %pfn.addr, align 8, !dbg !6758
  %call6 = call ptr @__pfn_to_section(i64 noundef %4) #19, !dbg !6759
  store ptr %call6, ptr %ms, align 8, !dbg !6760
  call void @rcu_read_lock_sched() #19, !dbg !6761
  %5 = load ptr, ptr %ms, align 8, !dbg !6762
  %call7 = call i32 @valid_section(ptr noundef %5) #19, !dbg !6764
  %tobool = icmp ne i32 %call7, 0, !dbg !6764
  br i1 %tobool, label %if.end9, label %if.then8, !dbg !6765

if.then8:                                         ; preds = %if.end5
  call void @rcu_read_unlock_sched() #19, !dbg !6766
  store i32 0, ptr %retval, align 4, !dbg !6768
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6768

if.end9:                                          ; preds = %if.end5
  %6 = load ptr, ptr %ms, align 8, !dbg !6769
  %call10 = call i32 @early_section(ptr noundef %6) #19, !dbg !6770
  %tobool11 = icmp ne i32 %call10, 0, !dbg !6770
  br i1 %tobool11, label %lor.end, label %lor.rhs, !dbg !6771

lor.rhs:                                          ; preds = %if.end9
  %7 = load ptr, ptr %ms, align 8, !dbg !6772
  %8 = load i64, ptr %pfn.addr, align 8, !dbg !6773
  %call12 = call i32 @pfn_section_valid(ptr noundef %7, i64 noundef %8) #19, !dbg !6774
  %tobool13 = icmp ne i32 %call12, 0, !dbg !6771
  br label %lor.end, !dbg !6771

lor.end:                                          ; preds = %lor.rhs, %if.end9
  %9 = phi i1 [ true, %if.end9 ], [ %tobool13, %lor.rhs ]
  %lor.ext = zext i1 %9 to i32, !dbg !6771
  store i32 %lor.ext, ptr %ret, align 4, !dbg !6775
  call void @rcu_read_unlock_sched() #19, !dbg !6776
  %10 = load i32, ptr %ret, align 4, !dbg !6777
  store i32 %10, ptr %retval, align 4, !dbg !6778
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6778

cleanup:                                          ; preds = %lor.end, %if.then8, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #18, !dbg !6779
  call void @llvm.lifetime.end.p0(i64 8, ptr %ms) #18, !dbg !6779
  %11 = load i32, ptr %retval, align 4, !dbg !6779
  ret i32 %11, !dbg !6779
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @PageReserved(ptr noundef %page) #8 align 16 !dbg !6780 {
entry:
  %page.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %tmp8 = alloca ptr, align 8
  %tmp9 = alloca ptr, align 8
  %tmp11 = alloca ptr, align 8
  %tmp12 = alloca ptr, align 8
  %tmp15 = alloca ptr, align 8
  %tmp16 = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6784, metadata !DIExpression()), !dbg !6785
  %0 = load ptr, ptr %page.addr, align 8, !dbg !6786
  store ptr %0, ptr %tmp1, align 8, !dbg !6786
  %1 = load ptr, ptr %tmp1, align 8, !dbg !6786
  store ptr %1, ptr %tmp, align 8, !dbg !6789
  %2 = load ptr, ptr %tmp, align 8, !dbg !6789
  %flags = getelementptr inbounds %struct.page, ptr %2, i32 0, i32 0, !dbg !6785
  %3 = ptrtoint ptr %flags to i64, !dbg !6785
  %cmp = icmp ne i64 %3, 0, !dbg !6785
  %conv = zext i1 %cmp to i32, !dbg !6785
  %4 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !6785
  br i1 %4, label %land.lhs.true, label %cond.false, !dbg !6785

land.lhs.true:                                    ; preds = %entry
  %5 = load ptr, ptr %page.addr, align 8, !dbg !6790
  store ptr %5, ptr %tmp3, align 8, !dbg !6790
  %6 = load ptr, ptr %tmp3, align 8, !dbg !6790
  store ptr %6, ptr %tmp2, align 8, !dbg !6793
  %7 = load ptr, ptr %tmp2, align 8, !dbg !6793
  %flags4 = getelementptr inbounds %struct.page, ptr %7, i32 0, i32 0, !dbg !6785
  %8 = ptrtoint ptr %flags4 to i64, !dbg !6785
  %cmp5 = icmp ne i64 %8, 0, !dbg !6785
  br i1 %cmp5, label %land.lhs.true7, label %cond.false, !dbg !6785

land.lhs.true7:                                   ; preds = %land.lhs.true
  %9 = load ptr, ptr %page.addr, align 8, !dbg !6794
  store ptr %9, ptr %tmp9, align 8, !dbg !6794
  %10 = load ptr, ptr %tmp9, align 8, !dbg !6794
  store ptr %10, ptr %tmp8, align 8, !dbg !6797
  %11 = load ptr, ptr %tmp8, align 8, !dbg !6797
  %flags10 = getelementptr inbounds %struct.page, ptr %11, i32 0, i32 0, !dbg !6785
  %12 = load i64, ptr %flags10, align 16, !dbg !6785
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !6785
  br i1 %13, label %cond.true, label %cond.false, !dbg !6785

cond.true:                                        ; preds = %land.lhs.true7
  %14 = load ptr, ptr %page.addr, align 8, !dbg !6798
  store ptr %14, ptr %tmp12, align 8, !dbg !6798
  %15 = load ptr, ptr %tmp12, align 8, !dbg !6798
  store ptr %15, ptr %tmp11, align 8, !dbg !6801
  %16 = load ptr, ptr %tmp11, align 8, !dbg !6801
  %flags13 = getelementptr inbounds %struct.page, ptr %16, i32 0, i32 0, !dbg !6785
  %call = call zeroext i1 @const_test_bit(i64 noundef 14, ptr noundef %flags13) #19, !dbg !6785
  %conv14 = zext i1 %call to i32, !dbg !6785
  br label %cond.end, !dbg !6785

cond.false:                                       ; preds = %land.lhs.true7, %land.lhs.true, %entry
  %17 = load ptr, ptr %page.addr, align 8, !dbg !6802
  store ptr %17, ptr %tmp16, align 8, !dbg !6802
  %18 = load ptr, ptr %tmp16, align 8, !dbg !6802
  store ptr %18, ptr %tmp15, align 8, !dbg !6805
  %19 = load ptr, ptr %tmp15, align 8, !dbg !6805
  %flags17 = getelementptr inbounds %struct.page, ptr %19, i32 0, i32 0, !dbg !6785
  %call18 = call zeroext i1 @_test_bit(i64 noundef 14, ptr noundef %flags17) #19, !dbg !6785
  %conv19 = zext i1 %call18 to i32, !dbg !6785
  br label %cond.end, !dbg !6785

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv14, %cond.true ], [ %conv19, %cond.false ], !dbg !6785
  ret i32 %cond, !dbg !6785
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pfn_to_section_nr(i64 noundef %pfn) #5 align 16 !dbg !6806 {
entry:
  %pfn.addr = alloca i64, align 8
  store i64 %pfn, ptr %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pfn.addr, metadata !6810, metadata !DIExpression()), !dbg !6811
  %0 = load i64, ptr %pfn.addr, align 8, !dbg !6812
  %shr = lshr i64 %0, 15, !dbg !6813
  ret i64 %shr, !dbg !6814
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_static_cpu_has(i16 noundef zeroext %bit) #8 align 16 !dbg !6815 {
entry:
  %retval = alloca i1, align 1
  %bit.addr = alloca i16, align 2
  store i16 %bit, ptr %bit.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !6820, metadata !DIExpression()), !dbg !6823
  %0 = load i16, ptr %bit.addr, align 2, !dbg !6824
  %1 = load i16, ptr %bit.addr, align 2, !dbg !6825
  %conv = zext i16 %1 to i32, !dbg !6825
  %and = and i32 %conv, 7, !dbg !6826
  %shl = shl i32 1, %and, !dbg !6827
  %2 = load i16, ptr %bit.addr, align 2, !dbg !6828
  %conv1 = zext i16 %2 to i32, !dbg !6828
  %shr = ashr i32 %conv1, 3, !dbg !6829
  %idxprom = sext i32 %shr to i64, !dbg !6830
  %arrayidx = getelementptr i8, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10), i64 %idxprom, !dbg !6830
  callbr void asm sideeffect "# ALT: oldinstr2\0A661:\0A\09jmp 6f\0A662:\0A# ALT: padding2\0A.skip -((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)) > 0) * (((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)), 0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 3*32+21)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .long 661b - .\0A .long 6642f - .\0A .4byte ${0:c}\0A .byte 663b-661b\0A .byte 6652f-6642f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09jmp ${4:l}\0A6651:\0A# ALT: replacement 2\0A6642:\0A\09\0A6652:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A testb $1,${2:P} (% rip)\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 %0, i32 %shl, ptr %arrayidx) #18
          to label %asm.fallthrough [label %t_yes, label %t_no], !dbg !6831, !srcloc !6832

asm.fallthrough:                                  ; preds = %entry
  br label %t_yes, !dbg !6831

t_yes:                                            ; preds = %asm.fallthrough, %entry
  call void @llvm.dbg.label(metadata !6821), !dbg !6833
  store i1 true, ptr %retval, align 1, !dbg !6834
  br label %return, !dbg !6834

t_no:                                             ; preds = %entry
  call void @llvm.dbg.label(metadata !6822), !dbg !6835
  store i1 false, ptr %retval, align 1, !dbg !6836
  br label %return, !dbg !6836

return:                                           ; preds = %t_no, %t_yes
  %3 = load i1, ptr %retval, align 1, !dbg !6837
  ret i1 %3, !dbg !6837
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__pfn_to_section(i64 noundef %pfn) #5 align 16 !dbg !6838 {
entry:
  %pfn.addr = alloca i64, align 8
  store i64 %pfn, ptr %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pfn.addr, metadata !6842, metadata !DIExpression()), !dbg !6843
  %0 = load i64, ptr %pfn.addr, align 8, !dbg !6844
  %call = call i64 @pfn_to_section_nr(i64 noundef %0) #19, !dbg !6845
  %call1 = call ptr @__nr_to_section(i64 noundef %call) #19, !dbg !6846
  ret ptr %call1, !dbg !6847
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_lock_sched() #5 align 16 !dbg !6848 {
entry:
  br label %do.body, !dbg !6849

do.body:                                          ; preds = %entry
  call void @__preempt_count_add(i32 noundef 1) #19, !dbg !6850
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !dbg !6850, !srcloc !6852
  br label %do.end, !dbg !6850

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !6853

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !6854

do.end2:                                          ; preds = %do.body1
  br label %do.body3, !dbg !6856

do.body3:                                         ; preds = %do.end2
  br label %do.end4, !dbg !6857

do.end4:                                          ; preds = %do.body3
  ret void, !dbg !6859
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @valid_section(ptr noundef %section) #5 align 16 !dbg !6860 {
entry:
  %section.addr = alloca ptr, align 8
  store ptr %section, ptr %section.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %section.addr, metadata !6864, metadata !DIExpression()), !dbg !6865
  %0 = load ptr, ptr %section.addr, align 8, !dbg !6866
  %tobool = icmp ne ptr %0, null, !dbg !6866
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !6867

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr %section.addr, align 8, !dbg !6868
  %section_mem_map = getelementptr inbounds %struct.mem_section, ptr %1, i32 0, i32 0, !dbg !6869
  %2 = load i64, ptr %section_mem_map, align 8, !dbg !6869
  %and = and i64 %2, 2, !dbg !6870
  %tobool1 = icmp ne i64 %and, 0, !dbg !6867
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %tobool1, %land.rhs ], !dbg !6871
  %land.ext = zext i1 %3 to i32, !dbg !6867
  ret i32 %land.ext, !dbg !6872
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_unlock_sched() #5 align 16 !dbg !5544 {
entry:
  br label %do.body, !dbg !6873

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6874

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !6876

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !6877

do.end2:                                          ; preds = %do.body1
  br label %do.body3, !dbg !6879

do.body3:                                         ; preds = %do.end2
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !dbg !6880, !srcloc !6882
  %call = call zeroext i1 @__preempt_count_dec_and_test() #19, !dbg !6883
  %lnot = xor i1 %call, true, !dbg !6883
  %lnot4 = xor i1 %lnot, true, !dbg !6883
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !6883
  %conv = sext i32 %lnot.ext to i64, !dbg !6883
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6883
  %tobool = icmp ne i64 %expval, 0, !dbg !6883
  br i1 %tobool, label %if.then, label %if.end, !dbg !6880

if.then:                                          ; preds = %do.body3
  br label %do.body5, !dbg !6883

do.body5:                                         ; preds = %if.then
  %0 = call i64 @llvm.read_register.i64(metadata !5546), !dbg !6885
  %1 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %0) #18, !dbg !6885, !srcloc !6887
  call void @llvm.write_register.i64(metadata !5546, i64 %1), !dbg !6885
  br label %do.end6, !dbg !6885

do.end6:                                          ; preds = %do.body5
  br label %if.end, !dbg !6885

if.end:                                           ; preds = %do.end6, %do.body3
  br label %do.end7, !dbg !6880

do.end7:                                          ; preds = %if.end
  ret void, !dbg !6888
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @early_section(ptr noundef %section) #5 align 16 !dbg !6889 {
entry:
  %section.addr = alloca ptr, align 8
  store ptr %section, ptr %section.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %section.addr, metadata !6891, metadata !DIExpression()), !dbg !6892
  %0 = load ptr, ptr %section.addr, align 8, !dbg !6893
  %tobool = icmp ne ptr %0, null, !dbg !6893
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !6894

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr %section.addr, align 8, !dbg !6895
  %section_mem_map = getelementptr inbounds %struct.mem_section, ptr %1, i32 0, i32 0, !dbg !6896
  %2 = load i64, ptr %section_mem_map, align 8, !dbg !6896
  %and = and i64 %2, 8, !dbg !6897
  %tobool1 = icmp ne i64 %and, 0, !dbg !6894
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %tobool1, %land.rhs ], !dbg !6898
  %land.ext = zext i1 %3 to i32, !dbg !6894
  ret i32 %land.ext, !dbg !6899
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pfn_section_valid(ptr noundef %ms, i64 noundef %pfn) #5 align 16 !dbg !6900 {
entry:
  %ms.addr = alloca ptr, align 8
  %pfn.addr = alloca i64, align 8
  %idx = alloca i32, align 4
  %usage = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %ms, ptr %ms.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ms.addr, metadata !6904, metadata !DIExpression()), !dbg !6908
  store i64 %pfn, ptr %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pfn.addr, metadata !6905, metadata !DIExpression()), !dbg !6909
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #18, !dbg !6910
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !6906, metadata !DIExpression()), !dbg !6911
  %0 = load i64, ptr %pfn.addr, align 8, !dbg !6912
  %call = call i32 @subsection_map_index(i64 noundef %0) #19, !dbg !6913
  store i32 %call, ptr %idx, align 4, !dbg !6911
  call void @llvm.lifetime.start.p0(i64 8, ptr %usage) #18, !dbg !6914
  call void @llvm.dbg.declare(metadata ptr %usage, metadata !6907, metadata !DIExpression()), !dbg !6915
  br label %do.body, !dbg !6916

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6918

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6918

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %ms.addr, align 8, !dbg !6916
  %usage1 = getelementptr inbounds %struct.mem_section, ptr %1, i32 0, i32 1, !dbg !6916
  %2 = load volatile ptr, ptr %usage1, align 8, !dbg !6916
  store ptr %2, ptr %tmp, align 8, !dbg !6918
  %3 = load ptr, ptr %tmp, align 8, !dbg !6916
  store ptr %3, ptr %usage, align 8, !dbg !6915
  %4 = load ptr, ptr %usage, align 8, !dbg !6920
  %tobool = icmp ne ptr %4, null, !dbg !6920
  br i1 %tobool, label %cond.true, label %cond.false21, !dbg !6920

cond.true:                                        ; preds = %do.end
  %5 = load i32, ptr %idx, align 4, !dbg !6921
  %6 = call i1 @llvm.is.constant.i32(i32 %5), !dbg !6921
  br i1 %6, label %land.lhs.true, label %cond.false, !dbg !6921

land.lhs.true:                                    ; preds = %cond.true
  %7 = load ptr, ptr %usage, align 8, !dbg !6921
  %subsection_map = getelementptr inbounds %struct.mem_section_usage, ptr %7, i32 0, i32 1, !dbg !6921
  %arraydecay = getelementptr inbounds [1 x i64], ptr %subsection_map, i64 0, i64 0, !dbg !6921
  %8 = ptrtoint ptr %arraydecay to i64, !dbg !6921
  %cmp = icmp ne i64 %8, 0, !dbg !6921
  %conv = zext i1 %cmp to i32, !dbg !6921
  %9 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !6921
  br i1 %9, label %land.lhs.true2, label %cond.false, !dbg !6921

land.lhs.true2:                                   ; preds = %land.lhs.true
  %10 = load ptr, ptr %usage, align 8, !dbg !6921
  %subsection_map3 = getelementptr inbounds %struct.mem_section_usage, ptr %10, i32 0, i32 1, !dbg !6921
  %arraydecay4 = getelementptr inbounds [1 x i64], ptr %subsection_map3, i64 0, i64 0, !dbg !6921
  %11 = ptrtoint ptr %arraydecay4 to i64, !dbg !6921
  %cmp5 = icmp ne i64 %11, 0, !dbg !6921
  br i1 %cmp5, label %land.lhs.true7, label %cond.false, !dbg !6921

land.lhs.true7:                                   ; preds = %land.lhs.true2
  %12 = load ptr, ptr %usage, align 8, !dbg !6921
  %subsection_map8 = getelementptr inbounds %struct.mem_section_usage, ptr %12, i32 0, i32 1, !dbg !6921
  %arraydecay9 = getelementptr inbounds [1 x i64], ptr %subsection_map8, i64 0, i64 0, !dbg !6921
  %13 = load i64, ptr %arraydecay9, align 8, !dbg !6921
  %14 = call i1 @llvm.is.constant.i64(i64 %13), !dbg !6921
  br i1 %14, label %cond.true10, label %cond.false, !dbg !6921

cond.true10:                                      ; preds = %land.lhs.true7
  %15 = load i32, ptr %idx, align 4, !dbg !6921
  %conv11 = sext i32 %15 to i64, !dbg !6921
  %16 = load ptr, ptr %usage, align 8, !dbg !6921
  %subsection_map12 = getelementptr inbounds %struct.mem_section_usage, ptr %16, i32 0, i32 1, !dbg !6921
  %arraydecay13 = getelementptr inbounds [1 x i64], ptr %subsection_map12, i64 0, i64 0, !dbg !6921
  %call14 = call zeroext i1 @const_test_bit(i64 noundef %conv11, ptr noundef %arraydecay13) #19, !dbg !6921
  %conv15 = zext i1 %call14 to i32, !dbg !6921
  br label %cond.end, !dbg !6921

cond.false:                                       ; preds = %land.lhs.true7, %land.lhs.true2, %land.lhs.true, %cond.true
  %17 = load i32, ptr %idx, align 4, !dbg !6921
  %conv16 = sext i32 %17 to i64, !dbg !6921
  %18 = load ptr, ptr %usage, align 8, !dbg !6921
  %subsection_map17 = getelementptr inbounds %struct.mem_section_usage, ptr %18, i32 0, i32 1, !dbg !6921
  %arraydecay18 = getelementptr inbounds [1 x i64], ptr %subsection_map17, i64 0, i64 0, !dbg !6921
  %call19 = call zeroext i1 @_test_bit(i64 noundef %conv16, ptr noundef %arraydecay18) #19, !dbg !6921
  %conv20 = zext i1 %call19 to i32, !dbg !6921
  br label %cond.end, !dbg !6921

cond.end:                                         ; preds = %cond.false, %cond.true10
  %cond = phi i32 [ %conv15, %cond.true10 ], [ %conv20, %cond.false ], !dbg !6921
  br label %cond.end22, !dbg !6920

cond.false21:                                     ; preds = %do.end
  br label %cond.end22, !dbg !6920

cond.end22:                                       ; preds = %cond.false21, %cond.end
  %cond23 = phi i32 [ %cond, %cond.end ], [ 0, %cond.false21 ], !dbg !6920
  call void @llvm.lifetime.end.p0(i64 8, ptr %usage) #18, !dbg !6922
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #18, !dbg !6922
  ret i32 %cond23, !dbg !6923
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__nr_to_section(i64 noundef %nr) #5 align 16 !dbg !6924 {
entry:
  %retval = alloca ptr, align 8
  %nr.addr = alloca i64, align 8
  %root = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6926, metadata !DIExpression()), !dbg !6928
  call void @llvm.lifetime.start.p0(i64 8, ptr %root) #18, !dbg !6929
  call void @llvm.dbg.declare(metadata ptr %root, metadata !6927, metadata !DIExpression()), !dbg !6930
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6931
  %div = udiv i64 %0, 256, !dbg !6931
  store i64 %div, ptr %root, align 8, !dbg !6930
  %1 = load i64, ptr %root, align 8, !dbg !6932
  %call = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 528) #19, !dbg !6932
  %2 = zext i1 %call to i64, !dbg !6932
  %cond = select i1 %call, i32 52, i32 46, !dbg !6932
  %sub = sub i32 %cond, 27, !dbg !6932
  %sh_prom = zext i32 %sub to i64, !dbg !6932
  %shl = shl i64 1, %sh_prom, !dbg !6932
  %add = add i64 %shl, 256, !dbg !6932
  %sub1 = sub i64 %add, 1, !dbg !6932
  %div2 = udiv i64 %sub1, 256, !dbg !6932
  %cmp = icmp uge i64 %1, %div2, !dbg !6932
  %lnot = xor i1 %cmp, true, !dbg !6932
  %lnot3 = xor i1 %lnot, true, !dbg !6932
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !6932
  %conv = sext i32 %lnot.ext to i64, !dbg !6932
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6932
  %tobool = icmp ne i64 %expval, 0, !dbg !6932
  br i1 %tobool, label %if.then, label %if.end, !dbg !6934

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !6935
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6935

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr @mem_section, align 8, !dbg !6936
  %tobool4 = icmp ne ptr %3, null, !dbg !6936
  br i1 %tobool4, label %lor.lhs.false, label %if.then6, !dbg !6938

lor.lhs.false:                                    ; preds = %if.end
  %4 = load ptr, ptr @mem_section, align 8, !dbg !6939
  %5 = load i64, ptr %root, align 8, !dbg !6940
  %arrayidx = getelementptr ptr, ptr %4, i64 %5, !dbg !6939
  %6 = load ptr, ptr %arrayidx, align 8, !dbg !6939
  %tobool5 = icmp ne ptr %6, null, !dbg !6939
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !6941

if.then6:                                         ; preds = %lor.lhs.false, %if.end
  store ptr null, ptr %retval, align 8, !dbg !6942
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6942

if.end7:                                          ; preds = %lor.lhs.false
  %7 = load ptr, ptr @mem_section, align 8, !dbg !6943
  %8 = load i64, ptr %root, align 8, !dbg !6944
  %arrayidx8 = getelementptr ptr, ptr %7, i64 %8, !dbg !6943
  %9 = load ptr, ptr %arrayidx8, align 8, !dbg !6943
  %10 = load i64, ptr %nr.addr, align 8, !dbg !6945
  %and = and i64 %10, 255, !dbg !6946
  %arrayidx9 = getelementptr %struct.mem_section, ptr %9, i64 %and, !dbg !6943
  store ptr %arrayidx9, ptr %retval, align 8, !dbg !6947
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6947

cleanup:                                          ; preds = %if.end7, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %root) #18, !dbg !6948
  %11 = load ptr, ptr %retval, align 8, !dbg !6948
  ret ptr %11, !dbg !6948
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #8 align 16 !dbg !6949 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6952, metadata !DIExpression()), !dbg !6959
  br label %do.body, !dbg !6960

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #18, !dbg !6961
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !6953, metadata !DIExpression()), !dbg !6961
  %0 = load i32, ptr %val.addr, align 4, !dbg !6961
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !6961
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !6961

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !6961
  %cmp = icmp eq i32 %2, 1, !dbg !6961
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !6961

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !6961
  %cmp1 = icmp eq i32 %3, -1, !dbg !6961
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !6961

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !6961
  br label %cond.end, !dbg !6961

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !6961

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !6961
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !6961
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !6962
  %cmp2 = icmp eq i32 %5, 1, !dbg !6962
  br i1 %cmp2, label %if.then, label %if.else, !dbg !6961

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.30, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.30, ptr @pcpu_hot, i32 0, i32 1)) #18, !dbg !6963, !srcloc !6965
  br label %if.end8, !dbg !6962

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !6966
  %cmp3 = icmp eq i32 %6, -1, !dbg !6966
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !6962

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.30, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.30, ptr @pcpu_hot, i32 0, i32 1)) #18, !dbg !6967, !srcloc !6969
  br label %if.end, !dbg !6966

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !6966

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #18, !dbg !6970
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !6955, metadata !DIExpression()), !dbg !6970
  %7 = load i32, ptr %val.addr, align 4, !dbg !6970
  %conv = sext i32 %7 to i64, !dbg !6970
  %and = and i64 %conv, 4294967295, !dbg !6970
  %conv7 = trunc i64 %and to i32, !dbg !6970
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !6970
  %8 = load i32, ptr %pto_val__, align 4, !dbg !6970
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.30, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon.30, ptr @pcpu_hot, i32 0, i32 1)) #18, !dbg !6970, !srcloc !6971
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #18, !dbg !6966
  br label %do.cond, !dbg !6970

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !6970

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #18, !dbg !6960
  br label %do.end10, !dbg !6961

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !6972
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #8 align 16 !dbg !6973 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #18, !dbg !6977
  call void @llvm.dbg.declare(metadata ptr %c, metadata !6975, metadata !DIExpression()), !dbg !6977
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.30, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.30, ptr @pcpu_hot, i32 0, i32 1)) #18, !dbg !6977, !srcloc !6978
  %1 = icmp ult i8 %0, 2, !dbg !6977
  call void @llvm.assume(i1 %1), !dbg !6977
  store i8 %0, ptr %c, align 1, !dbg !6977
  %2 = load i8, ptr %c, align 1, !dbg !6977, !range !5694, !noundef !1411
  %tobool = trunc i8 %2 to i1, !dbg !6977
  %frombool = zext i1 %tobool to i8, !dbg !6977
  store i8 %frombool, ptr %tmp, align 1, !dbg !6977
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #18, !dbg !6979
  %3 = load i8, ptr %tmp, align 1, !dbg !6977, !range !5694, !noundef !1411
  %tobool1 = trunc i8 %3 to i1, !dbg !6977
  ret i1 %tobool1, !dbg !6980
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #14

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @subsection_map_index(i64 noundef %pfn) #5 align 16 !dbg !6981 {
entry:
  %pfn.addr = alloca i64, align 8
  store i64 %pfn, ptr %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pfn.addr, metadata !6983, metadata !DIExpression()), !dbg !6984
  %0 = load i64, ptr %pfn.addr, align 8, !dbg !6985
  %and = and i64 %0, 32767, !dbg !6986
  %div = udiv i64 %and, 512, !dbg !6987
  %conv = trunc i64 %div to i32, !dbg !6988
  ret i32 %conv, !dbg !6989
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !6990 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6998, metadata !DIExpression()), !dbg !7003
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6999, metadata !DIExpression()), !dbg !7004
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #18, !dbg !7005
  call void @llvm.dbg.declare(metadata ptr %p, metadata !7000, metadata !DIExpression()), !dbg !7006
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7007
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7008
  %div = udiv i64 %1, 64, !dbg !7008
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !7009
  store ptr %add.ptr, ptr %p, align 8, !dbg !7006
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #18, !dbg !7010
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !7001, metadata !DIExpression()), !dbg !7011
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7012
  %rem = urem i64 %2, 64, !dbg !7012
  %shl = shl i64 1, %rem, !dbg !7012
  store i64 %shl, ptr %mask, align 8, !dbg !7011
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #18, !dbg !7013
  call void @llvm.dbg.declare(metadata ptr %val, metadata !7002, metadata !DIExpression()), !dbg !7014
  %3 = load ptr, ptr %p, align 8, !dbg !7015
  %4 = load i64, ptr %3, align 8, !dbg !7016
  store i64 %4, ptr %val, align 8, !dbg !7014
  %5 = load i64, ptr %val, align 8, !dbg !7017
  %6 = load i64, ptr %mask, align 8, !dbg !7018
  %and = and i64 %5, %6, !dbg !7019
  %tobool = icmp ne i64 %and, 0, !dbg !7020
  %lnot = xor i1 %tobool, true, !dbg !7020
  %lnot1 = xor i1 %lnot, true, !dbg !7021
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #18, !dbg !7022
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #18, !dbg !7022
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #18, !dbg !7022
  ret i1 %lnot1, !dbg !7023
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !7024 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7027, metadata !DIExpression()), !dbg !7029
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7028, metadata !DIExpression()), !dbg !7030
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7031
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7032
  %div = udiv i64 %1, 64, !dbg !7032
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !7033
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #19, !dbg !7034
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7035
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !7036
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #19, !dbg !7037
  ret i1 %call, !dbg !7038
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #8 align 16 !dbg !7039 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7046, metadata !DIExpression()), !dbg !7048
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7047, metadata !DIExpression()), !dbg !7049
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7050
  %1 = load i64, ptr %size.addr, align 8, !dbg !7051
  %conv = trunc i64 %1 to i32, !dbg !7051
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #19, !dbg !7052
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7053
  %3 = load i64, ptr %size.addr, align 8, !dbg !7053
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #19, !dbg !7053
  ret void, !dbg !7054
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !7055 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7058, metadata !DIExpression()), !dbg !7060
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7059, metadata !DIExpression()), !dbg !7061
  %0 = load i64, ptr %nr.addr, align 8, !dbg !7062
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !7063
  br i1 %1, label %cond.true, label %cond.false, !dbg !7063

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7064
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !7065
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #19, !dbg !7066
  %conv = zext i1 %call to i32, !dbg !7066
  br label %cond.end, !dbg !7063

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !7067
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !7068
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #19, !dbg !7069
  %conv2 = zext i1 %call1 to i32, !dbg !7069
  br label %cond.end, !dbg !7063

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !7063
  %tobool = icmp ne i32 %cond, 0, !dbg !7063
  ret i1 %tobool, !dbg !7070
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !7071 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7076, metadata !DIExpression()), !dbg !7078
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7077, metadata !DIExpression()), !dbg !7079
  ret i1 true, !dbg !7080
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #5 align 16 !dbg !7081 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !7086, metadata !DIExpression()), !dbg !7089
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7087, metadata !DIExpression()), !dbg !7090
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !7088, metadata !DIExpression()), !dbg !7091
  ret void, !dbg !7092
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !7093 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7097, metadata !DIExpression()), !dbg !7099
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7098, metadata !DIExpression()), !dbg !7100
  %0 = load i64, ptr %nr.addr, align 8, !dbg !7101
  %and = and i64 %0, 63, !dbg !7102
  %shl = shl i64 1, %and, !dbg !7103
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !7104
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7105
  %shr = ashr i64 %2, 6, !dbg !7106
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !7104
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !7104
  %and1 = and i64 %shl, %3, !dbg !7107
  %cmp = icmp ne i64 %and1, 0, !dbg !7108
  ret i1 %cmp, !dbg !7109
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !7110 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7112, metadata !DIExpression()), !dbg !7115
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7113, metadata !DIExpression()), !dbg !7116
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #18, !dbg !7117
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !7114, metadata !DIExpression()), !dbg !7118
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7119
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7120
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #18, !dbg !7121, !srcloc !7122
  %3 = icmp ult i8 %2, 2, !dbg !7121
  call void @llvm.assume(i1 %3), !dbg !7121
  store i8 %2, ptr %oldbit, align 1, !dbg !7121
  %4 = load i8, ptr %oldbit, align 1, !dbg !7123, !range !5694, !noundef !1411
  %tobool = trunc i8 %4 to i1, !dbg !7123
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #18, !dbg !7124
  ret i1 %tobool, !dbg !7125
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cc_platform_has(i32 noundef %attr) #5 align 16 !dbg !7126 {
entry:
  %attr.addr = alloca i32, align 4
  store i32 %attr, ptr %attr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !7130, metadata !DIExpression()), !dbg !7131
  ret i1 false, !dbg !7132
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7133 dso_local i32 @efi_mem_type(i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7135 dso_local i64 @efi_mem_attributes(i64 noundef) #3

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !7138 dso_local void @__compiletime_assert_181() #17

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @read_cr3_pa() #5 align 16 !dbg !7139 {
entry:
  %call = call i64 @__read_cr3() #19, !dbg !7142
  %and = and i64 %call, 4503599627366400, !dbg !7143
  ret i64 %and, !dbg !7144
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @p4d_offset(ptr noundef %pgd, i64 noundef %address) #5 align 16 !dbg !7145 {
entry:
  %retval = alloca ptr, align 8
  %pgd.addr = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  store ptr %pgd, ptr %pgd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd.addr, metadata !7149, metadata !DIExpression()), !dbg !7151
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !7150, metadata !DIExpression()), !dbg !7152
  br i1 false, label %cond.true, label %cond.false, !dbg !7153

cond.true:                                        ; preds = %entry
  br i1 false, label %if.end, label %if.then, !dbg !7154

cond.false:                                       ; preds = %entry
  br i1 false, label %cond.true1, label %cond.false4, !dbg !7153

cond.true1:                                       ; preds = %cond.false
  br i1 false, label %cond.true2, label %cond.false3, !dbg !7154

cond.true2:                                       ; preds = %cond.true1
  br i1 true, label %if.end, label %if.then, !dbg !7154

cond.false3:                                      ; preds = %cond.true1
  %call = call zeroext i1 @arch_test_bit(i64 noundef 528, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #19, !dbg !7154
  br i1 %call, label %if.end, label %if.then, !dbg !7154

cond.false4:                                      ; preds = %cond.false
  %call5 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 528) #19, !dbg !7154
  br i1 %call5, label %if.end, label %if.then, !dbg !7153

if.then:                                          ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  %0 = load ptr, ptr %pgd.addr, align 8, !dbg !7156
  store ptr %0, ptr %retval, align 8, !dbg !7157
  br label %return, !dbg !7157

if.end:                                           ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  %1 = load ptr, ptr %pgd.addr, align 8, !dbg !7158
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %1, i32 0, i32 0, !dbg !7159
  %2 = load i64, ptr %coerce.dive, align 8, !dbg !7159
  %call6 = call i64 @pgd_page_vaddr(i64 %2) #19, !dbg !7159
  %3 = inttoptr i64 %call6 to ptr, !dbg !7160
  %4 = load i64, ptr %address.addr, align 8, !dbg !7161
  %call7 = call i64 @p4d_index(i64 noundef %4) #19, !dbg !7162
  %add.ptr = getelementptr %struct.p4d_t, ptr %3, i64 %call7, !dbg !7163
  store ptr %add.ptr, ptr %retval, align 8, !dbg !7164
  br label %return, !dbg !7164

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8, !dbg !7165
  ret ptr %5, !dbg !7165
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pud_offset(ptr noundef %p4d, i64 noundef %address) #5 align 16 !dbg !7166 {
entry:
  %p4d.addr = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  store ptr %p4d, ptr %p4d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d.addr, metadata !7171, metadata !DIExpression()), !dbg !7173
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !7172, metadata !DIExpression()), !dbg !7174
  %0 = load ptr, ptr %p4d.addr, align 8, !dbg !7175
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %0, i32 0, i32 0, !dbg !7176
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !7176
  %call = call ptr @p4d_pgtable(i64 %1) #19, !dbg !7176
  %2 = load i64, ptr %address.addr, align 8, !dbg !7177
  %call1 = call i64 @pud_index(i64 noundef %2) #19, !dbg !7178
  %add.ptr = getelementptr %struct.pud_t, ptr %call, i64 %call1, !dbg !7179
  ret ptr %add.ptr, !dbg !7180
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pmd_offset(ptr noundef %pud, i64 noundef %address) #5 align 16 !dbg !7181 {
entry:
  %pud.addr = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  store ptr %pud, ptr %pud.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pud.addr, metadata !7185, metadata !DIExpression()), !dbg !7187
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !7186, metadata !DIExpression()), !dbg !7188
  %0 = load ptr, ptr %pud.addr, align 8, !dbg !7189
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %0, i32 0, i32 0, !dbg !7190
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !7190
  %call = call ptr @pud_pgtable(i64 %1) #19, !dbg !7190
  %2 = load i64, ptr %address.addr, align 8, !dbg !7191
  %call1 = call i64 @pmd_index(i64 noundef %2) #19, !dbg !7192
  %add.ptr = getelementptr %struct.pmd_t, ptr %call, i64 %call1, !dbg !7193
  ret ptr %add.ptr, !dbg !7194
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__read_cr3() #5 align 16 !dbg !7195 {
entry:
  %call = call i64 @__native_read_cr3() #19, !dbg !7197
  ret i64 %call, !dbg !7198
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__native_read_cr3() #5 align 16 !dbg !7199 {
entry:
  %val = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #18, !dbg !7202
  call void @llvm.dbg.declare(metadata ptr %val, metadata !7201, metadata !DIExpression()), !dbg !7203
  %0 = call i64 asm sideeffect "mov %cr3,$0\0A\09", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) inttoptr (i64 4096 to ptr)) #18, !dbg !7204, !srcloc !7205
  store i64 %0, ptr %val, align 8, !dbg !7204
  %1 = load i64, ptr %val, align 8, !dbg !7206
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #18, !dbg !7207
  ret i64 %1, !dbg !7208
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pgd_page_vaddr(i64 %pgd.coerce) #5 align 16 !dbg !7209 {
entry:
  %pgd = alloca %struct.pgd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0
  store i64 %pgd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !7213, metadata !DIExpression()), !dbg !7214
  %coerce.dive1 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !7215
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !7215
  %call = call i64 @native_pgd_val(i64 %0) #19, !dbg !7215
  %and = and i64 %call, 4503599627366400, !dbg !7215
  %1 = load i64, ptr @page_offset_base, align 8, !dbg !7215
  %add = add i64 %and, %1, !dbg !7215
  %2 = inttoptr i64 %add to ptr, !dbg !7215
  %3 = ptrtoint ptr %2 to i64, !dbg !7216
  ret i64 %3, !dbg !7217
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @p4d_index(i64 noundef %address) #5 align 16 !dbg !7218 {
entry:
  %address.addr = alloca i64, align 8
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !7220, metadata !DIExpression()), !dbg !7221
  %0 = load i64, ptr %address.addr, align 8, !dbg !7222
  %shr = lshr i64 %0, 39, !dbg !7223
  %1 = load i32, ptr @ptrs_per_p4d, align 4, !dbg !7224
  %sub = sub i32 %1, 1, !dbg !7225
  %conv = zext i32 %sub to i64, !dbg !7226
  %and = and i64 %shr, %conv, !dbg !7227
  ret i64 %and, !dbg !7228
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_pgd_val(i64 %pgd.coerce) #5 align 16 !dbg !7229 {
entry:
  %pgd = alloca %struct.pgd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0
  store i64 %pgd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !7233, metadata !DIExpression()), !dbg !7234
  %pgd1 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !7235
  %0 = load i64, ptr %pgd1, align 8, !dbg !7235
  %and = and i64 %0, -1, !dbg !7236
  ret i64 %and, !dbg !7237
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @p4d_pgtable(i64 %p4d.coerce) #5 align 16 !dbg !7238 {
entry:
  %p4d = alloca %struct.p4d_t, align 8
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0
  store i64 %p4d.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !7242, metadata !DIExpression()), !dbg !7243
  %coerce.dive1 = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0, !dbg !7244
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !7244
  %call = call i64 @native_p4d_val(i64 %0) #19, !dbg !7244
  %coerce.dive2 = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0, !dbg !7244
  %1 = load i64, ptr %coerce.dive2, align 8, !dbg !7244
  %call3 = call i64 @p4d_pfn_mask(i64 %1) #19, !dbg !7244
  %and = and i64 %call, %call3, !dbg !7244
  %2 = load i64, ptr @page_offset_base, align 8, !dbg !7244
  %add = add i64 %and, %2, !dbg !7244
  %3 = inttoptr i64 %add to ptr, !dbg !7244
  ret ptr %3, !dbg !7245
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pud_index(i64 noundef %address) #5 align 16 !dbg !7246 {
entry:
  %address.addr = alloca i64, align 8
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !7248, metadata !DIExpression()), !dbg !7249
  %0 = load i64, ptr %address.addr, align 8, !dbg !7250
  %shr = lshr i64 %0, 30, !dbg !7251
  %and = and i64 %shr, 511, !dbg !7252
  ret i64 %and, !dbg !7253
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_p4d_val(i64 %p4d.coerce) #5 align 16 !dbg !7254 {
entry:
  %p4d = alloca %struct.p4d_t, align 8
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0
  store i64 %p4d.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !7258, metadata !DIExpression()), !dbg !7259
  %p4d1 = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0, !dbg !7260
  %0 = load i64, ptr %p4d1, align 8, !dbg !7260
  ret i64 %0, !dbg !7261
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @p4d_pfn_mask(i64 %p4d.coerce) #5 align 16 !dbg !7262 {
entry:
  %p4d = alloca %struct.p4d_t, align 8
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0
  store i64 %p4d.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !7264, metadata !DIExpression()), !dbg !7265
  ret i64 4503599627366400, !dbg !7266
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pud_pgtable(i64 %pud.coerce) #5 align 16 !dbg !7267 {
entry:
  %pud = alloca %struct.pud_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0
  store i64 %pud.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !7271, metadata !DIExpression()), !dbg !7272
  %coerce.dive1 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !7273
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !7273
  %call = call i64 @native_pud_val(i64 %0) #19, !dbg !7273
  %coerce.dive2 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !7273
  %1 = load i64, ptr %coerce.dive2, align 8, !dbg !7273
  %call3 = call i64 @pud_pfn_mask(i64 %1) #19, !dbg !7273
  %and = and i64 %call, %call3, !dbg !7273
  %2 = load i64, ptr @page_offset_base, align 8, !dbg !7273
  %add = add i64 %and, %2, !dbg !7273
  %3 = inttoptr i64 %add to ptr, !dbg !7273
  ret ptr %3, !dbg !7274
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pmd_index(i64 noundef %address) #5 align 16 !dbg !7275 {
entry:
  %address.addr = alloca i64, align 8
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !7277, metadata !DIExpression()), !dbg !7278
  %0 = load i64, ptr %address.addr, align 8, !dbg !7279
  %shr = lshr i64 %0, 21, !dbg !7280
  %and = and i64 %shr, 511, !dbg !7281
  ret i64 %and, !dbg !7282
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_pud_val(i64 %pud.coerce) #5 align 16 !dbg !7283 {
entry:
  %pud = alloca %struct.pud_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0
  store i64 %pud.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !7287, metadata !DIExpression()), !dbg !7288
  %pud1 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !7289
  %0 = load i64, ptr %pud1, align 8, !dbg !7289
  ret i64 %0, !dbg !7290
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pud_pfn_mask(i64 %pud.coerce) #5 align 16 !dbg !7291 {
entry:
  %retval = alloca i64, align 8
  %pud = alloca %struct.pud_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0
  store i64 %pud.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !7293, metadata !DIExpression()), !dbg !7294
  %coerce.dive1 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !7295
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !7295
  %call = call i64 @native_pud_val(i64 %0) #19, !dbg !7295
  %and = and i64 %call, 128, !dbg !7297
  %tobool = icmp ne i64 %and, 0, !dbg !7297
  br i1 %tobool, label %if.then, label %if.else, !dbg !7298

if.then:                                          ; preds = %entry
  store i64 4503598553628672, ptr %retval, align 8, !dbg !7299
  br label %return, !dbg !7299

if.else:                                          ; preds = %entry
  store i64 4503599627366400, ptr %retval, align 8, !dbg !7300
  br label %return, !dbg !7300

return:                                           ; preds = %if.else, %if.then
  %1 = load i64, ptr %retval, align 8, !dbg !7301
  ret i64 %1, !dbg !7301
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @paravirt_alloc_pte(ptr noundef %mm, i64 noundef %pfn) #5 align 16 !dbg !7302 {
entry:
  %mm.addr = alloca ptr, align 8
  %pfn.addr = alloca i64, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !7306, metadata !DIExpression()), !dbg !7308
  store i64 %pfn, ptr %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pfn.addr, metadata !7307, metadata !DIExpression()), !dbg !7309
  ret void, !dbg !7310
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__phys_addr_nodebug(i64 noundef %x) #8 align 16 !dbg !7311 {
entry:
  %x.addr = alloca i64, align 8
  %y = alloca i64, align 8
  store i64 %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !7314, metadata !DIExpression()), !dbg !7316
  call void @llvm.lifetime.start.p0(i64 8, ptr %y) #18, !dbg !7317
  call void @llvm.dbg.declare(metadata ptr %y, metadata !7315, metadata !DIExpression()), !dbg !7318
  %0 = load i64, ptr %x.addr, align 8, !dbg !7319
  %sub = sub i64 %0, -2147483648, !dbg !7320
  store i64 %sub, ptr %y, align 8, !dbg !7318
  %1 = load i64, ptr %y, align 8, !dbg !7321
  %2 = load i64, ptr %x.addr, align 8, !dbg !7322
  %3 = load i64, ptr %y, align 8, !dbg !7323
  %cmp = icmp ugt i64 %2, %3, !dbg !7324
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !7325

cond.true:                                        ; preds = %entry
  %4 = load i64, ptr @phys_base, align 8, !dbg !7326
  br label %cond.end, !dbg !7325

cond.false:                                       ; preds = %entry
  %5 = load i64, ptr @page_offset_base, align 8, !dbg !7327
  %sub1 = sub i64 -2147483648, %5, !dbg !7328
  br label %cond.end, !dbg !7325

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ %sub1, %cond.false ], !dbg !7325
  %add = add i64 %1, %cond, !dbg !7329
  store i64 %add, ptr %x.addr, align 8, !dbg !7330
  %6 = load i64, ptr %x.addr, align 8, !dbg !7331
  call void @llvm.lifetime.end.p0(i64 8, ptr %y) #18, !dbg !7332
  ret i64 %6, !dbg !7333
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_set_pmd(ptr noundef %pmdp, i64 %pmd.coerce) #5 align 16 !dbg !7334 {
entry:
  %pmd = alloca %struct.pmd_t, align 8
  %pmdp.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  store ptr %pmdp, ptr %pmdp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pmdp.addr, metadata !7338, metadata !DIExpression()), !dbg !7340
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !7339, metadata !DIExpression()), !dbg !7341
  br label %do.body, !dbg !7342

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !7343

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !7345

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !7343

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %pmdp.addr, align 8, !dbg !7347
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %pmd, i64 8, i1 true), !dbg !7347
  br label %do.end3, !dbg !7347

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !7343

do.end4:                                          ; preds = %do.end3
  ret void, !dbg !7349
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_make_pmd(i64 noundef %val) #5 align 16 !dbg !7350 {
entry:
  %retval = alloca %struct.pmd_t, align 8
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !7354, metadata !DIExpression()), !dbg !7355
  %pmd = getelementptr inbounds %struct.pmd_t, ptr %retval, i32 0, i32 0, !dbg !7356
  %0 = load i64, ptr %val.addr, align 8, !dbg !7357
  store i64 %0, ptr %pmd, align 8, !dbg !7356
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %retval, i32 0, i32 0, !dbg !7358
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !7358
  ret i64 %1, !dbg !7358
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pte_index(i64 noundef %address) #5 align 16 !dbg !7359 {
entry:
  %address.addr = alloca i64, align 8
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !7361, metadata !DIExpression()), !dbg !7362
  %0 = load i64, ptr %address.addr, align 8, !dbg !7363
  %shr = lshr i64 %0, 12, !dbg !7364
  %and = and i64 %shr, 511, !dbg !7365
  ret i64 %and, !dbg !7366
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @protnone_mask(i64 noundef %val) #5 align 16 !dbg !7367 {
entry:
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !7370, metadata !DIExpression()), !dbg !7371
  %0 = load i64, ptr %val.addr, align 8, !dbg !7372
  %call = call zeroext i1 @__pte_needs_invert(i64 noundef %0) #19, !dbg !7373
  %1 = zext i1 %call to i64, !dbg !7373
  %cond = select i1 %call, i64 -1, i64 0, !dbg !7373
  ret i64 %cond, !dbg !7374
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_make_pte(i64 noundef %val) #5 align 16 !dbg !7375 {
entry:
  %retval = alloca %struct.pte_t, align 8
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !7379, metadata !DIExpression()), !dbg !7380
  %pte = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !7381
  %0 = load i64, ptr %val.addr, align 8, !dbg !7382
  store i64 %0, ptr %pte, align 8, !dbg !7381
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !7383
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !7383
  ret i64 %1, !dbg !7383
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @check_pgprot(i64 %pgprot.coerce) #5 align 16 !dbg !7384 {
entry:
  %pgprot = alloca %struct.pgprot, align 8
  %massaged_val = alloca i64, align 8
  %coerce.dive = getelementptr inbounds %struct.pgprot, ptr %pgprot, i32 0, i32 0
  store i64 %pgprot.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pgprot, metadata !7388, metadata !DIExpression()), !dbg !7390
  call void @llvm.lifetime.start.p0(i64 8, ptr %massaged_val) #18, !dbg !7391
  call void @llvm.dbg.declare(metadata ptr %massaged_val, metadata !7389, metadata !DIExpression()), !dbg !7392
  %coerce.dive1 = getelementptr inbounds %struct.pgprot, ptr %pgprot, i32 0, i32 0, !dbg !7393
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !7393
  %call = call i64 @massage_pgprot(i64 %0) #19, !dbg !7393
  store i64 %call, ptr %massaged_val, align 8, !dbg !7392
  %1 = load i64, ptr %massaged_val, align 8, !dbg !7394
  call void @llvm.lifetime.end.p0(i64 8, ptr %massaged_val) #18, !dbg !7395
  ret i64 %1, !dbg !7396
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__pte_needs_invert(i64 noundef %val) #5 align 16 !dbg !7397 {
entry:
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !7401, metadata !DIExpression()), !dbg !7402
  %0 = load i64, ptr %val.addr, align 8, !dbg !7403
  %tobool = icmp ne i64 %0, 0, !dbg !7403
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !7404

land.rhs:                                         ; preds = %entry
  %1 = load i64, ptr %val.addr, align 8, !dbg !7405
  %and = and i64 %1, 1, !dbg !7406
  %tobool1 = icmp ne i64 %and, 0, !dbg !7407
  %lnot = xor i1 %tobool1, true, !dbg !7407
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ], !dbg !7408
  ret i1 %2, !dbg !7409
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @massage_pgprot(i64 %pgprot.coerce) #5 align 16 !dbg !7410 {
entry:
  %pgprot = alloca %struct.pgprot, align 8
  %protval = alloca i64, align 8
  %coerce.dive = getelementptr inbounds %struct.pgprot, ptr %pgprot, i32 0, i32 0
  store i64 %pgprot.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pgprot, metadata !7412, metadata !DIExpression()), !dbg !7414
  call void @llvm.lifetime.start.p0(i64 8, ptr %protval) #18, !dbg !7415
  call void @llvm.dbg.declare(metadata ptr %protval, metadata !7413, metadata !DIExpression()), !dbg !7416
  %pgprot1 = getelementptr inbounds %struct.pgprot, ptr %pgprot, i32 0, i32 0, !dbg !7417
  %0 = load i64, ptr %pgprot1, align 8, !dbg !7417
  store i64 %0, ptr %protval, align 8, !dbg !7416
  %1 = load i64, ptr %protval, align 8, !dbg !7418
  %and = and i64 %1, 1, !dbg !7420
  %tobool = icmp ne i64 %and, 0, !dbg !7420
  br i1 %tobool, label %if.then, label %if.end, !dbg !7421

if.then:                                          ; preds = %entry
  %2 = load i64, ptr @__supported_pte_mask, align 8, !dbg !7422
  %3 = load i64, ptr %protval, align 8, !dbg !7423
  %and2 = and i64 %3, %2, !dbg !7423
  store i64 %and2, ptr %protval, align 8, !dbg !7423
  br label %if.end, !dbg !7424

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, ptr %protval, align 8, !dbg !7425
  call void @llvm.lifetime.end.p0(i64 8, ptr %protval) #18, !dbg !7426
  ret i64 %4, !dbg !7427
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="BUILD_BUG_ON failed: (fix_to_virt(0) + PAGE_SIZE) & ((1 << PMD_SHIFT) - 1)" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { cold fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #15 = { nocallback nounwind }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="BUILD_BUG_ON failed: idx >= __end_of_fixed_addresses" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #18 = { nounwind }
attributes #19 = { noredzone }
attributes #20 = { cold noredzone }
attributes #21 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!5546}
!llvm.module.flags = !{!5547, !5548, !5549, !5550, !5551, !5552, !5553, !5554}
!llvm.ident = !{!5555}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ioremap345", scope: !2, file: !3, line: 358, type: !45, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/mm/.ioremap.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/mm/ioremap\22 -D KBUILD_BASENAME=\22ioremap\22 -D KBUILD_MODNAME=\22ioremap\22 -D __KBUILD_MODNAME=kmod_ioremap -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/mm/ioremap.ll arch/x86/mm/ioremap.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !365, globals: !5423, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/mm/ioremap.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2dc6e595b32b643472079e5feb1e0082")
!4 = !{!5, !16, !21, !28, !36, !132, !148, !154, !159, !164, !170, !176, !183, !188, !196, !203, !212, !217, !222, !228, !240, !246, !253, !260, !268, !276, !290, !295, !303, !343, !353}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_cache_mode", file: !6, line: 168, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15}
!9 = !DIEnumerator(name: "_PAGE_CACHE_MODE_WB", value: 0)
!10 = !DIEnumerator(name: "_PAGE_CACHE_MODE_WC", value: 1)
!11 = !DIEnumerator(name: "_PAGE_CACHE_MODE_UC_MINUS", value: 2)
!12 = !DIEnumerator(name: "_PAGE_CACHE_MODE_UC", value: 3)
!13 = !DIEnumerator(name: "_PAGE_CACHE_MODE_WT", value: 4)
!14 = !DIEnumerator(name: "_PAGE_CACHE_MODE_WP", value: 5)
!15 = !DIEnumerator(name: "_PAGE_CACHE_MODE_NUM", value: 8)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !17, line: 10, baseType: !7, size: 32, elements: !18)
!17 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!18 = !{!19, !20}
!19 = !DIEnumerator(name: "false", value: 0)
!20 = !DIEnumerator(name: "true", value: 1)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !22, line: 312, baseType: !7, size: 32, elements: !23)
!22 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!23 = !{!24, !25, !26, !27}
!24 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!25 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!26 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!27 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !29, line: 9, baseType: !7, size: 32, elements: !30)
!29 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!30 = !{!31, !32, !33, !34, !35}
!31 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!32 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!33 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!34 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!35 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !38, file: !37, line: 147, baseType: !7, size: 32, elements: !129)
!37 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !37, line: 135, size: 512, elements: !39)
!39 = !{!40, !44, !46, !48, !52, !53, !69, !127, !128}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !38, file: !37, line: 136, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!43 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !38, file: !37, line: 137, baseType: !45, size: 64, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !38, file: !37, line: 138, baseType: !47, size: 32, offset: 128)
!47 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !38, file: !37, line: 139, baseType: !49, size: 16, offset: 160)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !50, line: 24, baseType: !51)
!50 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!51 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !38, file: !37, line: 150, baseType: !36, size: 32, offset: 192)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !38, file: !37, line: 151, baseType: !54, size: 64, offset: 256)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !37, line: 64, baseType: !56)
!56 = !DISubroutineType(types: !57)
!57 = !{!47, !58, !47, !45, !59, !65}
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !50, line: 61, baseType: !61)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !62, line: 72, baseType: !63)
!62 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !62, line: 16, baseType: !64)
!64 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !50, line: 52, baseType: !67)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !62, line: 88, baseType: !68)
!68 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !38, file: !37, line: 152, baseType: !70, size: 64, offset: 320)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !37, line: 117, size: 256, elements: !72)
!72 = !{!73, !78}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !71, file: !37, line: 118, baseType: !74, size: 32)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !50, line: 174, baseType: !75)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !50, line: 172, size: 32, elements: !76)
!76 = !{!77}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !75, file: !50, line: 173, baseType: !47, size: 32)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !71, file: !37, line: 119, baseType: !79, size: 192, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !80, line: 41, baseType: !81)
!80 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !80, line: 37, size: 192, elements: !82)
!82 = !{!83, !121}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !81, file: !80, line: 38, baseType: !84, size: 32)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !85, line: 29, baseType: !86)
!85 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !85, line: 17, size: 32, elements: !87)
!87 = !{!88}
!88 = !DIDerivedType(tag: DW_TAG_member, scope: !86, file: !85, line: 18, baseType: !89, size: 32)
!89 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !86, file: !85, line: 18, size: 32, elements: !90)
!90 = !{!91}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !89, file: !85, line: 19, baseType: !92, size: 32)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !93, line: 14, size: 32, elements: !94)
!93 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!94 = !{!95}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !92, file: !93, line: 15, baseType: !96, size: 32)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !97, line: 44, baseType: !98)
!97 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !97, line: 14, size: 32, elements: !99)
!99 = !{!100}
!100 = !DIDerivedType(tag: DW_TAG_member, scope: !98, file: !97, line: 15, baseType: !101, size: 32)
!101 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !98, file: !97, line: 15, size: 32, elements: !102)
!102 = !{!103, !104, !114}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !101, file: !97, line: 16, baseType: !74, size: 32)
!104 = !DIDerivedType(tag: DW_TAG_member, scope: !101, file: !97, line: 24, baseType: !105, size: 16)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !101, file: !97, line: 24, size: 16, elements: !106)
!106 = !{!107, !113}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !105, file: !97, line: 25, baseType: !108, size: 8)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !109, line: 17, baseType: !110)
!109 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !111, line: 21, baseType: !112)
!111 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!112 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !105, file: !97, line: 26, baseType: !108, size: 8, offset: 8)
!114 = !DIDerivedType(tag: DW_TAG_member, scope: !101, file: !97, line: 28, baseType: !115, size: 32)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !101, file: !97, line: 28, size: 32, elements: !116)
!116 = !{!117, !120}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !115, file: !97, line: 29, baseType: !118, size: 16)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !109, line: 19, baseType: !119)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !111, line: 24, baseType: !51)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !115, file: !97, line: 30, baseType: !118, size: 16, offset: 16)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !81, file: !80, line: 39, baseType: !122, size: 128, offset: 64)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !50, line: 190, size: 128, elements: !123)
!123 = !{!124, !126}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !122, file: !50, line: 191, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !122, file: !50, line: 191, baseType: !125, size: 64, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !38, file: !37, line: 153, baseType: !45, size: 64, offset: 384)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !38, file: !37, line: 154, baseType: !45, size: 64, offset: 448)
!129 = !{!130, !131}
!130 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!131 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!132 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !133, line: 1325, baseType: !7, size: 32, elements: !134)
!133 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!134 = !{!135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147}
!135 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!136 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!137 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!138 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!139 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!140 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!141 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!142 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!143 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!144 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!145 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!146 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!147 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!148 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !149, line: 26, baseType: !7, size: 32, elements: !150)
!149 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!150 = !{!151, !152, !153}
!151 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!152 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!153 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!154 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writeback_sync_modes", file: !155, line: 32, baseType: !7, size: 32, elements: !156)
!155 = !DIFile(filename: "./include/linux/writeback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "529df0d846991cd3030ee9505d2aaa60")
!156 = !{!157, !158}
!157 = !DIEnumerator(name: "WB_SYNC_NONE", value: 0)
!158 = !DIEnumerator(name: "WB_SYNC_ALL", value: 1)
!159 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !160, line: 2052, baseType: !7, size: 32, elements: !161)
!160 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!161 = !{!162, !163}
!162 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!163 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!164 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !165, line: 54, baseType: !7, size: 32, elements: !166)
!165 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!166 = !{!167, !168, !169}
!167 = !DIEnumerator(name: "USRQUOTA", value: 0)
!168 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!169 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!170 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !171, line: 45, baseType: !7, size: 32, elements: !172)
!171 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!172 = !{!173, !174, !175}
!173 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!174 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!175 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!176 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !177, line: 487, baseType: !7, size: 32, elements: !178)
!177 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!178 = !{!179, !180, !181, !182}
!179 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!180 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!181 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!182 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!183 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !184, line: 65, baseType: !7, size: 32, elements: !185)
!184 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!185 = !{!186, !187}
!186 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!187 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!188 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !189, line: 620, baseType: !7, size: 32, elements: !190)
!189 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!190 = !{!191, !192, !193, !194, !195}
!191 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!192 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!193 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!194 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!195 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!196 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !189, line: 597, baseType: !47, size: 32, elements: !197)
!197 = !{!198, !199, !200, !201, !202}
!198 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!199 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!200 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!201 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!202 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!203 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !177, line: 547, baseType: !7, size: 32, elements: !204)
!204 = !{!205, !206, !207, !208, !209, !210, !211}
!205 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!206 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!207 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!208 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!209 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!210 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!211 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!212 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !177, line: 564, baseType: !7, size: 32, elements: !213)
!213 = !{!214, !215, !216}
!214 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!215 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!216 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!217 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !177, line: 577, baseType: !7, size: 32, elements: !218)
!218 = !{!219, !220, !221}
!219 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!220 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!221 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!222 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !177, line: 503, baseType: !7, size: 32, elements: !223)
!223 = !{!224, !225, !226, !227}
!224 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!225 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!226 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!227 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!228 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "wb_reason", file: !229, line: 44, baseType: !7, size: 32, elements: !230)
!229 = !DIFile(filename: "./include/linux/backing-dev-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48876dd2050c245a6230a2e03c4bc3c9")
!230 = !{!231, !232, !233, !234, !235, !236, !237, !238, !239}
!231 = !DIEnumerator(name: "WB_REASON_BACKGROUND", value: 0)
!232 = !DIEnumerator(name: "WB_REASON_VMSCAN", value: 1)
!233 = !DIEnumerator(name: "WB_REASON_SYNC", value: 2)
!234 = !DIEnumerator(name: "WB_REASON_PERIODIC", value: 3)
!235 = !DIEnumerator(name: "WB_REASON_LAPTOP_TIMER", value: 4)
!236 = !DIEnumerator(name: "WB_REASON_FS_FREE_SPACE", value: 5)
!237 = !DIEnumerator(name: "WB_REASON_FORKER_THREAD", value: 6)
!238 = !DIEnumerator(name: "WB_REASON_FOREIGN_FLUSH", value: 7)
!239 = !DIEnumerator(name: "WB_REASON_MAX", value: 8)
!240 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !241, line: 16, baseType: !7, size: 32, elements: !242)
!241 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!242 = !{!243, !244, !245}
!243 = !DIEnumerator(name: "TT_NONE", value: 0)
!244 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!245 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!246 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !247, line: 51, baseType: !7, size: 32, elements: !248)
!247 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!248 = !{!249, !250, !251, !252}
!249 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!250 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!251 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!252 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!253 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !254, line: 15, baseType: !7, size: 32, elements: !255)
!254 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!255 = !{!256, !257, !258, !259}
!256 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!257 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!258 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!259 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!260 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !261, line: 68, baseType: !7, size: 32, elements: !262)
!261 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!262 = !{!263, !264, !265, !266, !267}
!263 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!264 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!265 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!266 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!267 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!268 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !269, line: 140, baseType: !7, size: 32, elements: !270)
!269 = !DIFile(filename: "./include/linux/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9069a71c5724a11302a774eef2b1f711")
!270 = !{!271, !272, !273, !274, !275}
!271 = !DIEnumerator(name: "MEMREMAP_WB", value: 1)
!272 = !DIEnumerator(name: "MEMREMAP_WT", value: 2)
!273 = !DIEnumerator(name: "MEMREMAP_WC", value: 4)
!274 = !DIEnumerator(name: "MEMREMAP_ENC", value: 8)
!275 = !DIEnumerator(name: "MEMREMAP_DEC", value: 16)
!276 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fixed_addresses", file: !277, line: 81, baseType: !7, size: 32, elements: !278)
!277 = !DIFile(filename: "./arch/x86/include/asm/fixmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f7ee1b51217b4f967bead339632e7de6")
!278 = !{!279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289}
!279 = !DIEnumerator(name: "VSYSCALL_PAGE", value: 511)
!280 = !DIEnumerator(name: "FIX_DBGP_BASE", value: 512)
!281 = !DIEnumerator(name: "FIX_EARLYCON_MEM_BASE", value: 513)
!282 = !DIEnumerator(name: "FIX_OHCI1394_BASE", value: 514)
!283 = !DIEnumerator(name: "FIX_APIC_BASE", value: 515)
!284 = !DIEnumerator(name: "FIX_IO_APIC_BASE_0", value: 516)
!285 = !DIEnumerator(name: "FIX_IO_APIC_BASE_END", value: 643)
!286 = !DIEnumerator(name: "__end_of_permanent_fixed_addresses", value: 644)
!287 = !DIEnumerator(name: "FIX_BTMAP_END", value: 1024)
!288 = !DIEnumerator(name: "FIX_BTMAP_BEGIN", value: 1535)
!289 = !DIEnumerator(name: "__end_of_fixed_addresses", value: 1536)
!290 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !291, line: 151, baseType: !7, size: 32, elements: !292)
!291 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!292 = !{!293, !294}
!293 = !DIEnumerator(name: "IORES_MAP_SYSTEM_RAM", value: 1)
!294 = !DIEnumerator(name: "IORES_MAP_ENCRYPTED", value: 2)
!295 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !296, line: 1873, baseType: !7, size: 32, elements: !297)
!296 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e018db7b4c78b2d835997a33e792065c")
!297 = !{!298, !299, !300, !301, !302}
!298 = !DIEnumerator(name: "SECTION_MARKED_PRESENT_BIT", value: 0)
!299 = !DIEnumerator(name: "SECTION_HAS_MEM_MAP_BIT", value: 1)
!300 = !DIEnumerator(name: "SECTION_IS_ONLINE_BIT", value: 2)
!301 = !DIEnumerator(name: "SECTION_IS_EARLY_BIT", value: 3)
!302 = !DIEnumerator(name: "SECTION_MAP_LAST_BIT", value: 4)
!303 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pageflags", file: !304, line: 100, baseType: !7, size: 32, elements: !305)
!304 = !DIFile(filename: "./include/linux/page-flags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "303e043415a1e5da18ffd489677b4d01")
!305 = !{!306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342}
!306 = !DIEnumerator(name: "PG_locked", value: 0)
!307 = !DIEnumerator(name: "PG_writeback", value: 1)
!308 = !DIEnumerator(name: "PG_referenced", value: 2)
!309 = !DIEnumerator(name: "PG_uptodate", value: 3)
!310 = !DIEnumerator(name: "PG_dirty", value: 4)
!311 = !DIEnumerator(name: "PG_lru", value: 5)
!312 = !DIEnumerator(name: "PG_head", value: 6)
!313 = !DIEnumerator(name: "PG_waiters", value: 7)
!314 = !DIEnumerator(name: "PG_active", value: 8)
!315 = !DIEnumerator(name: "PG_workingset", value: 9)
!316 = !DIEnumerator(name: "PG_error", value: 10)
!317 = !DIEnumerator(name: "PG_slab", value: 11)
!318 = !DIEnumerator(name: "PG_owner_priv_1", value: 12)
!319 = !DIEnumerator(name: "PG_arch_1", value: 13)
!320 = !DIEnumerator(name: "PG_reserved", value: 14)
!321 = !DIEnumerator(name: "PG_private", value: 15)
!322 = !DIEnumerator(name: "PG_private_2", value: 16)
!323 = !DIEnumerator(name: "PG_mappedtodisk", value: 17)
!324 = !DIEnumerator(name: "PG_reclaim", value: 18)
!325 = !DIEnumerator(name: "PG_swapbacked", value: 19)
!326 = !DIEnumerator(name: "PG_unevictable", value: 20)
!327 = !DIEnumerator(name: "PG_mlocked", value: 21)
!328 = !DIEnumerator(name: "PG_uncached", value: 22)
!329 = !DIEnumerator(name: "__NR_PAGEFLAGS", value: 23)
!330 = !DIEnumerator(name: "PG_readahead", value: 18)
!331 = !DIEnumerator(name: "PG_anon_exclusive", value: 17)
!332 = !DIEnumerator(name: "PG_checked", value: 12)
!333 = !DIEnumerator(name: "PG_swapcache", value: 12)
!334 = !DIEnumerator(name: "PG_fscache", value: 16)
!335 = !DIEnumerator(name: "PG_pinned", value: 12)
!336 = !DIEnumerator(name: "PG_savepinned", value: 4)
!337 = !DIEnumerator(name: "PG_foreign", value: 12)
!338 = !DIEnumerator(name: "PG_xen_remapped", value: 12)
!339 = !DIEnumerator(name: "PG_isolated", value: 18)
!340 = !DIEnumerator(name: "PG_reported", value: 3)
!341 = !DIEnumerator(name: "PG_has_hwpoisoned", value: 10)
!342 = !DIEnumerator(name: "PG_large_rmappable", value: 9)
!343 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cc_attr", file: !344, line: 22, baseType: !7, size: 32, elements: !345)
!344 = !DIFile(filename: "./include/linux/cc_platform.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec881fca7f8cde0abb6c64a9f159f14b")
!345 = !{!346, !347, !348, !349, !350, !351, !352}
!346 = !DIEnumerator(name: "CC_ATTR_MEM_ENCRYPT", value: 0)
!347 = !DIEnumerator(name: "CC_ATTR_HOST_MEM_ENCRYPT", value: 1)
!348 = !DIEnumerator(name: "CC_ATTR_GUEST_MEM_ENCRYPT", value: 2)
!349 = !DIEnumerator(name: "CC_ATTR_GUEST_STATE_ENCRYPT", value: 3)
!350 = !DIEnumerator(name: "CC_ATTR_GUEST_UNROLL_STRING_IO", value: 4)
!351 = !DIEnumerator(name: "CC_ATTR_GUEST_SEV_SNP", value: 5)
!352 = !DIEnumerator(name: "CC_ATTR_HOTPLUG_DISABLED", value: 6)
!353 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !291, line: 135, baseType: !7, size: 32, elements: !354)
!354 = !{!355, !356, !357, !358, !359, !360, !361, !362, !363, !364}
!355 = !DIEnumerator(name: "IORES_DESC_NONE", value: 0)
!356 = !DIEnumerator(name: "IORES_DESC_CRASH_KERNEL", value: 1)
!357 = !DIEnumerator(name: "IORES_DESC_ACPI_TABLES", value: 2)
!358 = !DIEnumerator(name: "IORES_DESC_ACPI_NV_STORAGE", value: 3)
!359 = !DIEnumerator(name: "IORES_DESC_PERSISTENT_MEMORY", value: 4)
!360 = !DIEnumerator(name: "IORES_DESC_PERSISTENT_MEMORY_LEGACY", value: 5)
!361 = !DIEnumerator(name: "IORES_DESC_DEVICE_PRIVATE_MEMORY", value: 6)
!362 = !DIEnumerator(name: "IORES_DESC_RESERVED", value: 7)
!363 = !DIEnumerator(name: "IORES_DESC_SOFT_RESERVED", value: 8)
!364 = !DIEnumerator(name: "IORES_DESC_CXL", value: 9)
!365 = !{!45, !366, !64, !368, !369, !373, !370, !371, !374, !376, !41, !47, !471, !5401, !5411, !5412, !2325, !2082, !5413, !1645, !1638, !5419, !5421}
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!368 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !50, line: 164, baseType: !370)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !50, line: 159, baseType: !371)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !109, line: 23, baseType: !372)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !111, line: 31, baseType: !368)
!373 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !375, line: 14, baseType: !64)
!375 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !133, line: 74, size: 512, align: 128, elements: !378)
!378 = !{!379, !380, !5395, !5400}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !377, file: !133, line: 75, baseType: !64, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, scope: !377, file: !133, line: 83, baseType: !381, size: 320, offset: 64)
!381 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !377, file: !133, line: 83, size: 320, elements: !382)
!382 = !{!383, !5321, !5335, !5339, !5394}
!383 = !DIDerivedType(tag: DW_TAG_member, scope: !381, file: !133, line: 84, baseType: !384, size: 320)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !381, file: !133, line: 84, size: 320, elements: !385)
!385 = !{!386, !397, !5315, !5320}
!386 = !DIDerivedType(tag: DW_TAG_member, scope: !384, file: !133, line: 90, baseType: !387, size: 128)
!387 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !384, file: !133, line: 90, size: 128, elements: !388)
!388 = !{!389, !390, !395, !396}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !387, file: !133, line: 91, baseType: !122, size: 128)
!390 = !DIDerivedType(tag: DW_TAG_member, scope: !387, file: !133, line: 94, baseType: !391, size: 128)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !387, file: !133, line: 94, size: 128, elements: !392)
!392 = !{!393, !394}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !391, file: !133, line: 96, baseType: !45, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !391, file: !133, line: 98, baseType: !7, size: 32, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !387, file: !133, line: 102, baseType: !122, size: 128)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !387, file: !133, line: 103, baseType: !122, size: 128)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !384, file: !133, line: 106, baseType: !398, size: 64, offset: 128)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !160, line: 472, size: 1536, align: 64, elements: !400)
!400 = !{!401, !5162, !5163, !5164, !5165, !5166, !5167, !5168, !5169, !5309, !5310, !5311, !5312, !5313, !5314}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !399, file: !160, line: 473, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !160, line: 641, size: 4800, elements: !404)
!404 = !{!405, !406, !407, !415, !416, !423, !424, !427, !428, !5092, !5093, !5094, !5095, !5096, !5102, !5103, !5104, !5105, !5106, !5107, !5108, !5109, !5110, !5111, !5112, !5113, !5114, !5115, !5116, !5117, !5118, !5119, !5120, !5125, !5126, !5127, !5128, !5129, !5130, !5131, !5136, !5139, !5140, !5141, !5158, !5159, !5160, !5161}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !403, file: !160, line: 642, baseType: !49, size: 16)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !403, file: !160, line: 643, baseType: !51, size: 16, offset: 16)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !403, file: !160, line: 644, baseType: !408, size: 32, offset: 32)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !409, line: 23, baseType: !410)
!409 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !409, line: 21, size: 32, elements: !411)
!411 = !{!412}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !410, file: !409, line: 22, baseType: !413, size: 32)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !50, line: 37, baseType: !414)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !62, line: 49, baseType: !7)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !403, file: !160, line: 645, baseType: !122, size: 128, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !403, file: !160, line: 646, baseType: !417, size: 32, offset: 192)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !409, line: 28, baseType: !418)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !409, line: 26, size: 32, elements: !419)
!419 = !{!420}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !418, file: !409, line: 27, baseType: !421, size: 32)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !50, line: 38, baseType: !422)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !62, line: 50, baseType: !7)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !403, file: !160, line: 647, baseType: !7, size: 32, offset: 224)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !403, file: !160, line: 650, baseType: !425, size: 64, offset: 256)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !160, line: 607, flags: DIFlagFwdDecl)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !403, file: !160, line: 651, baseType: !425, size: 64, offset: 320)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !403, file: !160, line: 654, baseType: !429, size: 64, offset: 384)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !431)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !160, line: 1966, size: 2048, align: 512, elements: !432)
!432 = !{!433, !4926, !4936, !4940, !4944, !4948, !4952, !4956, !4960, !4964, !4968, !4969, !4973, !4977, !5014, !5043, !5047, !5053, !5057, !5061, !5065, !5069, !5073, !5079, !5083}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !431, file: !160, line: 1967, baseType: !434, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DISubroutineType(types: !436)
!436 = !{!437, !402, !437, !7}
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !439, line: 82, size: 1536, elements: !440)
!439 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!440 = !{!441, !442, !452, !460, !461, !478, !479, !483, !496, !4910, !4911, !4912, !4913, !4918, !4919, !4920}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !438, file: !439, line: 84, baseType: !7, size: 32)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !438, file: !439, line: 85, baseType: !443, size: 32, offset: 32)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !444, line: 275, baseType: !445)
!444 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !444, line: 275, size: 32, elements: !446)
!446 = !{!447}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !445, file: !444, line: 275, baseType: !448, size: 32)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !444, line: 69, baseType: !449)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !444, line: 64, size: 32, elements: !450)
!450 = !{!451}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !449, file: !444, line: 65, baseType: !7, size: 32)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !438, file: !439, line: 86, baseType: !453, size: 128, offset: 64)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !454, line: 38, size: 128, elements: !455)
!454 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!455 = !{!456, !458}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !453, file: !454, line: 39, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !453, file: !454, line: 39, baseType: !459, size: 64, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !438, file: !439, line: 87, baseType: !437, size: 64, offset: 192)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !438, file: !439, line: 88, baseType: !462, size: 128, offset: 256)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !439, line: 49, size: 128, elements: !463)
!463 = !{!464, !475}
!464 = !DIDerivedType(tag: DW_TAG_member, scope: !462, file: !439, line: 50, baseType: !465, size: 64)
!465 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !462, file: !439, line: 50, size: 64, elements: !466)
!466 = !{!467, !474}
!467 = !DIDerivedType(tag: DW_TAG_member, scope: !465, file: !439, line: 51, baseType: !468, size: 64)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !465, file: !439, line: 51, size: 64, elements: !469)
!469 = !{!470, !473}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !468, file: !439, line: 52, baseType: !471, size: 32)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !109, line: 21, baseType: !472)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !111, line: 27, baseType: !7)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !468, file: !439, line: 52, baseType: !471, size: 32, offset: 32)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !465, file: !439, line: 54, baseType: !371, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !462, file: !439, line: 56, baseType: !476, size: 64, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !438, file: !439, line: 89, baseType: !402, size: 64, offset: 384)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !438, file: !439, line: 91, baseType: !480, size: 256, offset: 448)
!480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 256, elements: !481)
!481 = !{!482}
!482 = !DISubrange(count: 32)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !438, file: !439, line: 94, baseType: !484, size: 64, offset: 704)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !485, line: 25, size: 64, elements: !486)
!485 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!486 = !{!487}
!487 = !DIDerivedType(tag: DW_TAG_member, scope: !484, file: !485, line: 26, baseType: !488, size: 64)
!488 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !484, file: !485, line: 26, size: 64, elements: !489)
!489 = !{!490, !491}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !488, file: !485, line: 28, baseType: !372, size: 64, align: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, scope: !488, file: !485, line: 30, baseType: !492, size: 64)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !488, file: !485, line: 30, size: 64, elements: !493)
!493 = !{!494, !495}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !492, file: !485, line: 31, baseType: !84, size: 32)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !492, file: !485, line: 32, baseType: !47, size: 32, offset: 32)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !438, file: !439, line: 95, baseType: !497, size: 64, offset: 768)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !499)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !439, line: 128, size: 1024, align: 512, elements: !500)
!500 = !{!501, !505, !506, !513, !519, !523, !527, !531, !532, !536, !541, !4900, !4904}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !499, file: !439, line: 129, baseType: !502, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DISubroutineType(types: !504)
!504 = !{!47, !437, !7}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !499, file: !439, line: 130, baseType: !502, size: 64, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !499, file: !439, line: 131, baseType: !507, size: 64, offset: 128)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DISubroutineType(types: !509)
!509 = !{!47, !510, !512}
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !438)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !499, file: !439, line: 132, baseType: !514, size: 64, offset: 192)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DISubroutineType(types: !516)
!516 = !{!47, !510, !7, !41, !517}
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !462)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !499, file: !439, line: 134, baseType: !520, size: 64, offset: 256)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DISubroutineType(types: !522)
!522 = !{!47, !510}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !499, file: !439, line: 135, baseType: !524, size: 64, offset: 320)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DISubroutineType(types: !526)
!526 = !{!47, !437}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !499, file: !439, line: 136, baseType: !528, size: 64, offset: 384)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DISubroutineType(types: !530)
!530 = !{null, !437}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !499, file: !439, line: 137, baseType: !528, size: 64, offset: 448)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !499, file: !439, line: 138, baseType: !533, size: 64, offset: 512)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{null, !437, !402}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !499, file: !439, line: 139, baseType: !537, size: 64, offset: 576)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DISubroutineType(types: !539)
!539 = !{!540, !437, !540, !47}
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !499, file: !439, line: 140, baseType: !542, size: 64, offset: 640)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DISubroutineType(types: !544)
!544 = !{!545, !4899}
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !547, line: 70, size: 256, elements: !548)
!547 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!548 = !{!549, !550, !4895, !4896}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !546, file: !547, line: 71, baseType: !437, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !546, file: !547, line: 72, baseType: !551, size: 64, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !160, line: 1190, size: 10752, elements: !553)
!553 = !{!554, !555, !558, !559, !560, !561, !2354, !2506, !2546, !2631, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2648, !2652, !2653, !3219, !3222, !3280, !3283, !3284, !3285, !3326, !4829, !4830, !4831, !4832, !4833, !4834, !4837, !4838, !4845, !4846, !4847, !4848, !4849, !4864, !4865, !4866, !4867, !4868, !4869, !4870, !4871, !4886, !4887, !4888, !4889, !4890, !4891, !4892, !4893, !4894}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !552, file: !160, line: 1191, baseType: !122, size: 128)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !552, file: !160, line: 1192, baseType: !556, size: 32, offset: 128)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !50, line: 21, baseType: !557)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !50, line: 18, baseType: !471)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !552, file: !160, line: 1193, baseType: !112, size: 8, offset: 160)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !552, file: !160, line: 1194, baseType: !64, size: 64, offset: 192)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !552, file: !160, line: 1195, baseType: !66, size: 64, offset: 256)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !552, file: !160, line: 1196, baseType: !562, size: 64, offset: 320)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !160, line: 2366, size: 576, elements: !564)
!564 = !{!565, !566, !567, !573, !577, !581, !585, !2342, !2343, !2344, !2346, !2347, !2348, !2350, !2351, !2352, !2353}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !563, file: !160, line: 2367, baseType: !41, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !563, file: !160, line: 2368, baseType: !47, size: 32, offset: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !563, file: !160, line: 2376, baseType: !568, size: 64, offset: 128)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{!47, !571}
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !547, line: 21, flags: DIFlagFwdDecl)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !563, file: !160, line: 2377, baseType: !574, size: 64, offset: 192)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !576)
!576 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !160, line: 75, flags: DIFlagFwdDecl)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !563, file: !160, line: 2378, baseType: !578, size: 64, offset: 256)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DISubroutineType(types: !580)
!580 = !{!437, !562, !47, !41, !45}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !563, file: !160, line: 2380, baseType: !582, size: 64, offset: 320)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DISubroutineType(types: !584)
!584 = !{null, !551}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !563, file: !160, line: 2381, baseType: !586, size: 64, offset: 384)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !22, line: 402, size: 9216, align: 512, elements: !588)
!588 = !{!589, !590, !591, !595, !1994, !2020, !2021, !2022, !2023, !2027, !2030, !2031, !2032, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2100, !2104, !2124, !2142, !2143, !2144, !2145, !2154, !2177, !2178, !2181, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2195, !2196, !2295, !2303, !2304, !2305, !2307, !2311, !2312, !2321, !2322, !2323, !2324, !2326, !2327, !2328, !2335, !2336, !2337, !2341}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !587, file: !22, line: 403, baseType: !21, size: 32)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !587, file: !22, line: 406, baseType: !122, size: 128, offset: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !587, file: !22, line: 409, baseType: !592, size: 448, offset: 192)
!592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 448, elements: !593)
!593 = !{!594}
!594 = !DISubrange(count: 56)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !587, file: !22, line: 417, baseType: !596, size: 768, offset: 640)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !22, line: 45, size: 768, elements: !597)
!597 = !{!598, !1988, !1989, !1990, !1993}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !596, file: !22, line: 46, baseType: !599, size: 512)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !600, line: 64, size: 512, elements: !601)
!600 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!601 = !{!602, !603, !604, !606, !652, !1886, !1978, !1983, !1984, !1985, !1986, !1987}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !599, file: !600, line: 65, baseType: !41, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !599, file: !600, line: 66, baseType: !122, size: 128, offset: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !599, file: !600, line: 67, baseType: !605, size: 64, offset: 192)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !599, file: !600, line: 68, baseType: !607, size: 64, offset: 256)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !600, line: 168, size: 768, elements: !609)
!609 = !{!610, !611, !612, !613}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !608, file: !600, line: 169, baseType: !122, size: 128)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !608, file: !600, line: 170, baseType: !84, size: 32, offset: 128)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !608, file: !600, line: 171, baseType: !599, size: 512, offset: 192)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !608, file: !600, line: 172, baseType: !614, size: 64, offset: 704)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !616)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !600, line: 133, size: 192, elements: !617)
!617 = !{!618, !625, !630}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !616, file: !600, line: 134, baseType: !619, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !620)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DISubroutineType(types: !622)
!622 = !{!47, !623}
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !599)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !616, file: !600, line: 135, baseType: !626, size: 64, offset: 64)
!626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !627)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{!41, !623}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !616, file: !600, line: 136, baseType: !631, size: 64, offset: 128)
!631 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !632)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DISubroutineType(types: !634)
!634 = !{!47, !623, !635}
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !600, line: 125, size: 20736, elements: !637)
!637 = !{!638, !642, !646, !647, !651}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !636, file: !600, line: 126, baseType: !639, size: 192)
!639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !540, size: 192, elements: !640)
!640 = !{!641}
!641 = !DISubrange(count: 3)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !636, file: !600, line: 127, baseType: !643, size: 4096, offset: 192)
!643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !540, size: 4096, elements: !644)
!644 = !{!645}
!645 = !DISubrange(count: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !636, file: !600, line: 128, baseType: !47, size: 32, offset: 4288)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !636, file: !600, line: 129, baseType: !648, size: 16384, offset: 4320)
!648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 16384, elements: !649)
!649 = !{!650}
!650 = !DISubrange(count: 2048)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !636, file: !600, line: 130, baseType: !47, size: 32, offset: 20704)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !599, file: !600, line: 69, baseType: !653, size: 64, offset: 320)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !655)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !600, line: 116, size: 384, elements: !656)
!656 = !{!657, !661, !683, !1847, !1878, !1882}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !655, file: !600, line: 117, baseType: !658, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DISubroutineType(types: !660)
!660 = !{null, !605}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !655, file: !600, line: 118, baseType: !662, size: 64, offset: 64)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !664)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !665, line: 254, size: 128, elements: !666)
!665 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!666 = !{!667, !679}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !664, file: !665, line: 255, baseType: !668, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DISubroutineType(types: !670)
!670 = !{!671, !605, !674, !540}
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !50, line: 66, baseType: !672)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !62, line: 73, baseType: !673)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !62, line: 15, baseType: !373)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !665, line: 30, size: 128, elements: !676)
!676 = !{!677, !678}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !675, file: !665, line: 31, baseType: !41, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !675, file: !665, line: 32, baseType: !49, size: 16, offset: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !664, file: !665, line: 256, baseType: !680, size: 64, offset: 64)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DISubroutineType(types: !682)
!682 = !{!671, !605, !674, !41, !60}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !655, file: !600, line: 119, baseType: !684, size: 64, offset: 128)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !687)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !665, line: 84, size: 320, elements: !688)
!688 = !{!689, !690, !694, !1843, !1845}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !687, file: !665, line: 85, baseType: !41, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !687, file: !665, line: 86, baseType: !691, size: 64, offset: 64)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DISubroutineType(types: !693)
!693 = !{!49, !605, !674, !47}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !687, file: !665, line: 88, baseType: !695, size: 64, offset: 128)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DISubroutineType(types: !697)
!697 = !{!49, !605, !698, !47}
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !665, line: 175, size: 512, elements: !700)
!700 = !{!701, !702, !703, !704, !708, !1838, !1839}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !699, file: !665, line: 176, baseType: !675, size: 128)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !699, file: !665, line: 177, baseType: !60, size: 64, offset: 128)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !699, file: !665, line: 178, baseType: !45, size: 64, offset: 192)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !699, file: !665, line: 179, baseType: !705, size: 64, offset: 256)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DISubroutineType(types: !707)
!707 = !{!398}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !699, file: !665, line: 180, baseType: !709, size: 64, offset: 320)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DISubroutineType(types: !711)
!711 = !{!671, !712, !605, !698, !540, !66, !60}
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !160, line: 994, size: 1856, align: 64, elements: !714)
!714 = !{!715, !734, !735, !737, !746, !759, !760, !761, !827, !1186, !1195, !1201, !1202, !1828, !1829, !1830, !1831, !1833, !1834, !1837}
!715 = !DIDerivedType(tag: DW_TAG_member, scope: !713, file: !160, line: 995, baseType: !716, size: 128)
!716 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !713, file: !160, line: 995, size: 128, elements: !717)
!717 = !{!718, !724, !733}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !716, file: !160, line: 996, baseType: !719, size: 64)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !720, line: 60, size: 64, elements: !721)
!720 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!721 = !{!722}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !719, file: !720, line: 61, baseType: !723, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !716, file: !160, line: 997, baseType: !725, size: 128, align: 64)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !50, line: 232, size: 128, align: 64, elements: !726)
!726 = !{!727, !729}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !725, file: !50, line: 233, baseType: !728, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !725, file: !50, line: 234, baseType: !730, size: 64, offset: 64)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DISubroutineType(types: !732)
!732 = !{null, !728}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !716, file: !160, line: 998, baseType: !7, size: 32)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !713, file: !160, line: 1005, baseType: !84, size: 32, offset: 128)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !713, file: !160, line: 1006, baseType: !736, size: 32, offset: 160)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !50, line: 156, baseType: !7)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !713, file: !160, line: 1007, baseType: !738, size: 64, offset: 192)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !739, line: 13, baseType: !740)
!739 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !50, line: 181, baseType: !741)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !50, line: 179, size: 64, elements: !742)
!742 = !{!743}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !741, file: !50, line: 180, baseType: !744, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !109, line: 22, baseType: !745)
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !111, line: 30, baseType: !68)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !713, file: !160, line: 1008, baseType: !747, size: 256, offset: 256)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !748, line: 66, size: 256, elements: !749)
!748 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!749 = !{!750, !751, !753, !758}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !747, file: !748, line: 67, baseType: !738, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !747, file: !748, line: 68, baseType: !752, size: 32, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !93, line: 23, baseType: !92)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !747, file: !748, line: 70, baseType: !754, size: 32, offset: 96)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !755, line: 15, size: 32, elements: !756)
!755 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!756 = !{!757}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !754, file: !755, line: 20, baseType: !74, size: 32)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !747, file: !748, line: 72, baseType: !122, size: 128, offset: 128)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !713, file: !160, line: 1009, baseType: !66, size: 64, offset: 512)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !713, file: !160, line: 1010, baseType: !7, size: 32, offset: 576)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !713, file: !160, line: 1011, baseType: !762, size: 256, offset: 640)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !160, line: 948, size: 256, elements: !763)
!763 = !{!764, !785, !823, !824, !825, !826}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !762, file: !160, line: 949, baseType: !765, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !766, line: 34, baseType: !767)
!766 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !766, line: 25, size: 64, elements: !768)
!768 = !{!769}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !767, file: !766, line: 26, baseType: !770, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !771, line: 27, baseType: !772)
!771 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !771, line: 13, size: 64, elements: !773)
!773 = !{!774, !784}
!774 = !DIDerivedType(tag: DW_TAG_member, scope: !772, file: !771, line: 14, baseType: !775, size: 32)
!775 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !772, file: !771, line: 14, size: 32, elements: !776)
!776 = !{!777, !778}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !775, file: !771, line: 15, baseType: !74, size: 32)
!778 = !DIDerivedType(tag: DW_TAG_member, scope: !775, file: !771, line: 16, baseType: !779, size: 32)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !775, file: !771, line: 16, size: 32, elements: !780)
!780 = !{!781, !782}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !779, file: !771, line: 18, baseType: !108, size: 8)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !779, file: !771, line: 19, baseType: !783, size: 24, offset: 8)
!783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 24, elements: !640)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !772, file: !771, line: 26, baseType: !96, size: 32, offset: 32)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !762, file: !160, line: 950, baseType: !786, size: 64, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !29, line: 59, size: 768, elements: !788)
!788 = !{!789, !795, !796, !797, !810, !811, !812, !813}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !787, file: !29, line: 61, baseType: !790, size: 32)
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !791, line: 113, baseType: !792)
!791 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !791, line: 111, size: 32, elements: !793)
!793 = !{!794}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !792, file: !791, line: 112, baseType: !74, size: 32)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !787, file: !29, line: 62, baseType: !7, size: 32, offset: 32)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !787, file: !29, line: 63, baseType: !84, size: 32, offset: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !787, file: !29, line: 65, baseType: !798, size: 256, offset: 128)
!798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !799, size: 256, elements: !808)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !50, line: 194, size: 64, elements: !800)
!800 = !{!801}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !799, file: !50, line: 195, baseType: !802, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !50, line: 198, size: 128, elements: !804)
!804 = !{!805, !806}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !803, file: !50, line: 199, baseType: !802, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !803, file: !50, line: 199, baseType: !807, size: 64, offset: 64)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!808 = !{!809}
!809 = !DISubrange(count: 4)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !787, file: !29, line: 66, baseType: !799, size: 64, offset: 384)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !787, file: !29, line: 68, baseType: !79, size: 192, offset: 448)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !787, file: !29, line: 69, baseType: !725, size: 128, align: 64, offset: 640)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !787, file: !29, line: 70, baseType: !814, offset: 768)
!814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !815, elements: !821)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !29, line: 54, size: 128, elements: !816)
!816 = !{!817, !818}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !815, file: !29, line: 55, baseType: !47, size: 32)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !815, file: !29, line: 56, baseType: !819, size: 64, offset: 64)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !29, line: 56, flags: DIFlagFwdDecl)
!821 = !{!822}
!822 = !DISubrange(count: -1)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !762, file: !160, line: 951, baseType: !28, size: 32, offset: 128)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !762, file: !160, line: 952, baseType: !408, size: 32, offset: 160)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !762, file: !160, line: 952, baseType: !408, size: 32, offset: 192)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !762, file: !160, line: 953, baseType: !47, size: 32, offset: 224)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !713, file: !160, line: 1012, baseType: !828, size: 64, offset: 896)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !830)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !831, line: 110, size: 1472, elements: !832)
!831 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!832 = !{!833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !849, !850, !851, !852, !853, !854, !984, !985, !986, !987, !988, !1019, !1172, !1173, !1181}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !830, file: !831, line: 111, baseType: !738, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !830, file: !831, line: 112, baseType: !408, size: 32, offset: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !830, file: !831, line: 113, baseType: !417, size: 32, offset: 96)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !830, file: !831, line: 114, baseType: !408, size: 32, offset: 128)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !830, file: !831, line: 115, baseType: !417, size: 32, offset: 160)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !830, file: !831, line: 116, baseType: !408, size: 32, offset: 192)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !830, file: !831, line: 117, baseType: !417, size: 32, offset: 224)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !830, file: !831, line: 118, baseType: !408, size: 32, offset: 256)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !830, file: !831, line: 119, baseType: !417, size: 32, offset: 288)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !830, file: !831, line: 120, baseType: !7, size: 32, offset: 320)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !830, file: !831, line: 121, baseType: !844, size: 64, offset: 384)
!844 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !845, line: 24, baseType: !846)
!845 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !845, line: 24, size: 64, elements: !847)
!847 = !{!848}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !846, file: !845, line: 24, baseType: !371, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !830, file: !831, line: 122, baseType: !844, size: 64, offset: 448)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !830, file: !831, line: 123, baseType: !844, size: 64, offset: 512)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !830, file: !831, line: 124, baseType: !844, size: 64, offset: 576)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !830, file: !831, line: 125, baseType: !844, size: 64, offset: 640)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !830, file: !831, line: 127, baseType: !112, size: 8, offset: 704)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !830, file: !831, line: 129, baseType: !855, size: 64, offset: 768)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !857, line: 195, size: 1728, elements: !858)
!857 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!858 = !{!859, !860, !865, !877, !886, !889, !890, !897, !898, !899, !900, !903, !904, !905, !907, !908, !948, !969}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !856, file: !857, line: 196, baseType: !790, size: 32)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !856, file: !857, line: 197, baseType: !861, size: 32, offset: 32)
!861 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !857, line: 28, baseType: !862)
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !50, line: 104, baseType: !863)
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !109, line: 20, baseType: !864)
!864 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !111, line: 26, baseType: !47)
!865 = !DIDerivedType(tag: DW_TAG_member, scope: !856, file: !857, line: 198, baseType: !866, size: 192, offset: 64)
!866 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !856, file: !857, line: 198, size: 192, elements: !867)
!867 = !{!868, !869}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !866, file: !857, line: 199, baseType: !122, size: 128)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !866, file: !857, line: 200, baseType: !870, size: 192, align: 64)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !871, line: 5, size: 192, align: 64, elements: !872)
!871 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!872 = !{!873, !874, !876}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !870, file: !871, line: 6, baseType: !64, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !870, file: !871, line: 7, baseType: !875, size: 64, offset: 64)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !870, file: !871, line: 8, baseType: !875, size: 64, offset: 128)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !856, file: !857, line: 205, baseType: !878, size: 320, offset: 256)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !879, line: 48, size: 320, elements: !880)
!879 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!880 = !{!881, !882, !883, !884, !885}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !878, file: !879, line: 49, baseType: !738, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !878, file: !879, line: 55, baseType: !738, size: 64, offset: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !878, file: !879, line: 57, baseType: !754, size: 32, offset: 128)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !878, file: !879, line: 59, baseType: !752, size: 32, offset: 160)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !878, file: !879, line: 60, baseType: !122, size: 128, offset: 192)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !856, file: !857, line: 206, baseType: !887, size: 64, offset: 576)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !857, line: 206, flags: DIFlagFwdDecl)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !856, file: !857, line: 207, baseType: !45, size: 64, offset: 640)
!890 = !DIDerivedType(tag: DW_TAG_member, scope: !856, file: !857, line: 208, baseType: !891, size: 64, offset: 704)
!891 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !856, file: !857, line: 208, size: 64, elements: !892)
!892 = !{!893, !896}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !891, file: !857, line: 209, baseType: !894, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !895, line: 8, baseType: !745)
!895 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!896 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !891, file: !857, line: 210, baseType: !894, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !856, file: !857, line: 212, baseType: !894, size: 64, offset: 768)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !856, file: !857, line: 213, baseType: !408, size: 32, offset: 832)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !856, file: !857, line: 214, baseType: !417, size: 32, offset: 864)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !856, file: !857, line: 215, baseType: !901, size: 32, offset: 896)
!901 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !857, line: 31, baseType: !902)
!902 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !50, line: 110, baseType: !471)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !856, file: !857, line: 216, baseType: !51, size: 16, offset: 928)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !856, file: !857, line: 217, baseType: !51, size: 16, offset: 944)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !856, file: !857, line: 221, baseType: !906, size: 16, offset: 960)
!906 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !856, file: !857, line: 228, baseType: !64, size: 64, offset: 1024)
!908 = !DIDerivedType(tag: DW_TAG_member, scope: !856, file: !857, line: 245, baseType: !909, size: 320, offset: 1088)
!909 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !856, file: !857, line: 245, size: 320, elements: !910)
!910 = !{!911, !940}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !909, file: !857, line: 246, baseType: !912, size: 320)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !857, line: 114, size: 320, elements: !913)
!913 = !{!914, !915, !927, !930, !939}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !912, file: !857, line: 116, baseType: !64, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, scope: !912, file: !857, line: 117, baseType: !916, size: 64, offset: 64)
!916 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !912, file: !857, line: 117, size: 64, elements: !917)
!917 = !{!918, !926}
!918 = !DIDerivedType(tag: DW_TAG_member, scope: !916, file: !857, line: 118, baseType: !919, size: 64)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !916, file: !857, line: 118, size: 64, elements: !920)
!920 = !{!921, !922}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !919, file: !857, line: 120, baseType: !118, size: 16)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !919, file: !857, line: 121, baseType: !923, size: 48, offset: 16)
!923 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 48, elements: !924)
!924 = !{!925}
!925 = !DISubrange(count: 6)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !916, file: !857, line: 127, baseType: !64, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !912, file: !857, line: 129, baseType: !928, size: 64, offset: 128)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !857, line: 102, flags: DIFlagFwdDecl)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !912, file: !857, line: 130, baseType: !931, size: 64, offset: 192)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !857, line: 108, size: 192, elements: !933)
!933 = !{!934, !935, !936}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !932, file: !857, line: 109, baseType: !725, size: 128, align: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !932, file: !857, line: 110, baseType: !790, size: 32, offset: 128)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !932, file: !857, line: 111, baseType: !937, size: 8, offset: 160)
!937 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !50, line: 35, baseType: !938)
!938 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !912, file: !857, line: 131, baseType: !41, size: 64, offset: 256)
!940 = !DIDerivedType(tag: DW_TAG_member, scope: !909, file: !857, line: 247, baseType: !941, size: 320)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !909, file: !857, line: 247, size: 320, elements: !942)
!942 = !{!943, !944, !945, !946, !947}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !941, file: !857, line: 248, baseType: !64, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !941, file: !857, line: 249, baseType: !64, size: 64, offset: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !941, file: !857, line: 250, baseType: !928, size: 64, offset: 128)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !941, file: !857, line: 251, baseType: !931, size: 64, offset: 192)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !941, file: !857, line: 252, baseType: !540, size: 64, offset: 256)
!948 = !DIDerivedType(tag: DW_TAG_member, scope: !856, file: !857, line: 260, baseType: !949, size: 256, offset: 1408)
!949 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !856, file: !857, line: 260, size: 256, elements: !950)
!950 = !{!951, !957}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !949, file: !857, line: 261, baseType: !952, size: 256)
!952 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !857, line: 134, size: 256, elements: !953)
!953 = !{!954, !955}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !952, file: !857, line: 135, baseType: !45, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !952, file: !857, line: 136, baseType: !956, size: 256)
!956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 256, elements: !808)
!957 = !DIDerivedType(tag: DW_TAG_member, scope: !949, file: !857, line: 262, baseType: !958, size: 256)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !949, file: !857, line: 262, size: 256, elements: !959)
!959 = !{!960, !961}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !958, file: !857, line: 264, baseType: !122, size: 128)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !958, file: !857, line: 265, baseType: !962, size: 128, offset: 128)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !963, line: 22, size: 128, elements: !964)
!963 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!964 = !{!965, !968}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !962, file: !963, line: 23, baseType: !966, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !963, line: 23, flags: DIFlagFwdDecl)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !962, file: !963, line: 24, baseType: !64, size: 64, offset: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !856, file: !857, line: 280, baseType: !970, size: 64, offset: 1664)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !857, line: 176, size: 192, elements: !972)
!972 = !{!973, !982, !983}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !971, file: !857, line: 177, baseType: !974, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !857, line: 171, baseType: !975)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DISubroutineType(types: !977)
!977 = !{!47, !855, !978, !980, !855}
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !929)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !952)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !971, file: !857, line: 178, baseType: !855, size: 64, offset: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !971, file: !857, line: 179, baseType: !928, size: 64, offset: 128)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !830, file: !831, line: 130, baseType: !855, size: 64, offset: 832)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !830, file: !831, line: 131, baseType: !855, size: 64, offset: 896)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !830, file: !831, line: 132, baseType: !855, size: 64, offset: 960)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !830, file: !831, line: 135, baseType: !45, size: 64, offset: 1024)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !830, file: !831, line: 137, baseType: !989, size: 64, offset: 1088)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !991, line: 14, size: 1088, elements: !992)
!991 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!992 = !{!993, !994, !1003, !1004, !1005, !1006, !1007, !1008}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !990, file: !991, line: 15, baseType: !790, size: 32)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !990, file: !991, line: 17, baseType: !995, size: 320, offset: 64)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !996, line: 22, size: 320, elements: !997)
!996 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!997 = !{!998, !999, !1000, !1001}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !995, file: !996, line: 23, baseType: !752, size: 32)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !995, file: !996, line: 24, baseType: !744, size: 64, offset: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !995, file: !996, line: 26, baseType: !122, size: 128, offset: 128)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !995, file: !996, line: 28, baseType: !1002, size: 64, offset: 256)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !990, file: !991, line: 19, baseType: !64, size: 64, offset: 384)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !990, file: !991, line: 20, baseType: !738, size: 64, offset: 448)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !990, file: !991, line: 23, baseType: !803, size: 128, offset: 512)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !990, file: !991, line: 24, baseType: !408, size: 32, offset: 640)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !990, file: !991, line: 29, baseType: !738, size: 64, offset: 704)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !990, file: !991, line: 36, baseType: !1009, size: 320, offset: 768)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1010, line: 15, size: 320, elements: !1011)
!1010 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1011 = !{!1012, !1013, !1014, !1015, !1016, !1017, !1018}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1009, file: !1010, line: 16, baseType: !752, size: 32)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1009, file: !1010, line: 18, baseType: !47, size: 32, offset: 32)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1009, file: !1010, line: 19, baseType: !47, size: 32, offset: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1009, file: !1010, line: 20, baseType: !47, size: 32, offset: 96)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1009, file: !1010, line: 21, baseType: !47, size: 32, offset: 128)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1009, file: !1010, line: 22, baseType: !64, size: 64, offset: 192)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1009, file: !1010, line: 23, baseType: !64, size: 64, offset: 256)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !830, file: !831, line: 138, baseType: !1020, size: 64, offset: 1152)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1022, line: 68, size: 4800, elements: !1023)
!1022 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!1023 = !{!1024, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1063, !1064, !1065, !1066, !1067, !1068, !1080, !1153, !1154, !1168, !1170}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !1021, file: !1022, line: 69, baseType: !1025, size: 576)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !1022, line: 23, size: 576, elements: !1026)
!1026 = !{!1027, !1028}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !1025, file: !1022, line: 24, baseType: !471, size: 32)
!1028 = !DIDerivedType(tag: DW_TAG_member, scope: !1025, file: !1022, line: 25, baseType: !1029, size: 512, offset: 64)
!1029 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1025, file: !1022, line: 25, size: 512, elements: !1030)
!1030 = !{!1031, !1040}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !1029, file: !1022, line: 26, baseType: !1032, size: 480)
!1032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1033, size: 480, elements: !1038)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !1022, line: 17, size: 96, elements: !1034)
!1034 = !{!1035, !1036, !1037}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1033, file: !1022, line: 18, baseType: !471, size: 32)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !1033, file: !1022, line: 19, baseType: !471, size: 32, offset: 32)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1033, file: !1022, line: 20, baseType: !471, size: 32, offset: 64)
!1038 = !{!1039}
!1039 = !DISubrange(count: 5)
!1040 = !DIDerivedType(tag: DW_TAG_member, scope: !1029, file: !1022, line: 27, baseType: !1041, size: 128)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1029, file: !1022, line: 27, size: 128, elements: !1042)
!1042 = !{!1043, !1045}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !1041, file: !1022, line: 28, baseType: !1044, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !1041, file: !1022, line: 29, baseType: !1044, size: 64, offset: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !1021, file: !1022, line: 70, baseType: !1025, size: 576, offset: 576)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !1021, file: !1022, line: 71, baseType: !1025, size: 576, offset: 1152)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1021, file: !1022, line: 72, baseType: !1020, size: 64, offset: 1728)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1021, file: !1022, line: 73, baseType: !47, size: 32, offset: 1792)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1021, file: !1022, line: 74, baseType: !408, size: 32, offset: 1824)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !1021, file: !1022, line: 75, baseType: !417, size: 32, offset: 1856)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1021, file: !1022, line: 76, baseType: !1053, size: 192, offset: 1920)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1054, line: 9, size: 192, elements: !1055)
!1054 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!1055 = !{!1056, !1057, !1061, !1062}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1053, file: !1054, line: 10, baseType: !738, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1053, file: !1054, line: 11, baseType: !1058, size: 64, offset: 64)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1060)
!1060 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1054, line: 7, flags: DIFlagFwdDecl)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1053, file: !1054, line: 12, baseType: !7, size: 32, offset: 128)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1053, file: !1054, line: 13, baseType: !790, size: 32, offset: 160)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1021, file: !1022, line: 77, baseType: !64, size: 64, offset: 2112)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !1021, file: !1022, line: 80, baseType: !937, size: 8, offset: 2176)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !1021, file: !1022, line: 88, baseType: !122, size: 128, offset: 2240)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !1021, file: !1022, line: 89, baseType: !855, size: 64, offset: 2368)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !1021, file: !1022, line: 90, baseType: !878, size: 320, offset: 2432)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1021, file: !1022, line: 97, baseType: !1069, size: 256, offset: 2752)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1070, line: 98, size: 256, elements: !1071)
!1070 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1071 = !{!1072, !1073, !1074}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1069, file: !1070, line: 99, baseType: !738, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1069, file: !1070, line: 100, baseType: !122, size: 128, offset: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1069, file: !1070, line: 101, baseType: !1075, size: 64, offset: 192)
!1075 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1070, line: 21, baseType: !1076)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{null, !1079}
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1021, file: !1022, line: 99, baseType: !1081, size: 768, offset: 3008)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !37, line: 199, size: 768, elements: !1082)
!1082 = !{!1083, !1088}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !1081, file: !37, line: 200, baseType: !1084, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!47, !1087}
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1081, file: !37, line: 201, baseType: !1089, size: 704, offset: 64)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !37, line: 193, size: 704, elements: !1090)
!1090 = !{!1091, !1149}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1089, file: !37, line: 195, baseType: !1092, size: 640)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !37, line: 173, size: 640, elements: !1093)
!1093 = !{!1094, !1106, !1118, !1119, !1139, !1140, !1142, !1148}
!1094 = !DIDerivedType(tag: DW_TAG_member, scope: !1092, file: !37, line: 174, baseType: !1095, size: 192)
!1095 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1092, file: !37, line: 174, size: 192, elements: !1096)
!1096 = !{!1097, !1105}
!1097 = !DIDerivedType(tag: DW_TAG_member, scope: !1095, file: !37, line: 175, baseType: !1098, size: 192)
!1098 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1095, file: !37, line: 175, size: 192, elements: !1099)
!1099 = !{!1100, !1101, !1102, !1103, !1104}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1098, file: !37, line: 176, baseType: !58, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1098, file: !37, line: 177, baseType: !47, size: 32, offset: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1098, file: !37, line: 178, baseType: !47, size: 32, offset: 96)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1098, file: !37, line: 179, baseType: !47, size: 32, offset: 128)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1098, file: !37, line: 180, baseType: !47, size: 32, offset: 160)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1095, file: !37, line: 182, baseType: !725, size: 128, align: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1092, file: !37, line: 184, baseType: !1107, size: 64, offset: 192)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1109, line: 26, size: 256, elements: !1110)
!1109 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1110 = !{!1111, !1112}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1108, file: !1109, line: 27, baseType: !7, size: 32)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1108, file: !1109, line: 28, baseType: !1113, size: 192, offset: 64)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1114, line: 43, size: 192, elements: !1115)
!1114 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1115 = !{!1116, !1117}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1113, file: !1114, line: 44, baseType: !752, size: 32)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1113, file: !1114, line: 45, baseType: !122, size: 128, offset: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1092, file: !37, line: 185, baseType: !58, size: 64, offset: 256)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1092, file: !37, line: 186, baseType: !1120, size: 64, offset: 320)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !37, line: 204, size: 960, elements: !1122)
!1122 = !{!1123, !1124, !1128, !1135}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1121, file: !37, line: 205, baseType: !1081, size: 768)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1121, file: !37, line: 206, baseType: !1125, size: 64, offset: 768)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{!1087, !1120}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1121, file: !37, line: 207, baseType: !1129, size: 64, offset: 832)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{null, !1132, !1133, !1134}
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1121, file: !37, line: 209, baseType: !1136, size: 64, offset: 896)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{!47, !1132, !58}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1092, file: !37, line: 187, baseType: !1087, size: 64, offset: 384)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1092, file: !37, line: 188, baseType: !1141, size: 64, offset: 448)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1092, file: !37, line: 189, baseType: !1143, size: 64, offset: 512)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !37, line: 157, size: 256, elements: !1145)
!1145 = !{!1146, !1147}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1144, file: !37, line: 158, baseType: !870, size: 192, align: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1144, file: !37, line: 159, baseType: !1132, size: 64, offset: 192)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1092, file: !37, line: 190, baseType: !799, size: 64, offset: 576)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1089, file: !37, line: 196, baseType: !1150, size: 64, offset: 640)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !871, line: 12, size: 64, elements: !1151)
!1151 = !{!1152}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1150, file: !871, line: 13, baseType: !875, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !1021, file: !1022, line: 100, baseType: !1132, size: 64, offset: 3776)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1021, file: !1022, line: 102, baseType: !1155, size: 64, offset: 3840)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1022, line: 107, size: 1152, elements: !1157)
!1157 = !{!1158, !1159, !1160, !1161, !1162, !1166}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1156, file: !1022, line: 108, baseType: !803, size: 128)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1156, file: !1022, line: 109, baseType: !1020, size: 64, offset: 128)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1156, file: !1022, line: 110, baseType: !408, size: 32, offset: 192)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1156, file: !1022, line: 111, baseType: !74, size: 32, offset: 224)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1156, file: !1022, line: 112, baseType: !1163, size: 640, offset: 256)
!1163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !738, size: 640, elements: !1164)
!1164 = !{!1165}
!1165 = !DISubrange(count: 10)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1156, file: !1022, line: 113, baseType: !1167, size: 256, offset: 896)
!1167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !738, size: 256, elements: !808)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !1021, file: !1022, line: 103, baseType: !1169, size: 640, offset: 3904)
!1169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !373, size: 640, elements: !1164)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !1021, file: !1022, line: 104, baseType: !1171, size: 256, offset: 4544)
!1171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !373, size: 256, elements: !808)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !830, file: !831, line: 139, baseType: !1155, size: 64, offset: 1216)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !830, file: !831, line: 140, baseType: !1174, size: 64, offset: 1280)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !831, line: 25, size: 64, elements: !1176)
!1176 = !{!1177, !1178, !1179}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1175, file: !831, line: 26, baseType: !74, size: 32)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1175, file: !831, line: 27, baseType: !47, size: 32, offset: 32)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1175, file: !831, line: 28, baseType: !1180, offset: 64)
!1180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !417, elements: !821)
!1181 = !DIDerivedType(tag: DW_TAG_member, scope: !830, file: !831, line: 142, baseType: !1182, size: 128, offset: 1344)
!1182 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !830, file: !831, line: 142, size: 128, elements: !1183)
!1183 = !{!1184, !1185}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1182, file: !831, line: 143, baseType: !47, size: 32)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1182, file: !831, line: 144, baseType: !725, size: 128, align: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !713, file: !160, line: 1013, baseType: !1187, size: 256, offset: 960)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !160, line: 970, size: 256, elements: !1188)
!1188 = !{!1189, !1190, !1191, !1192, !1193, !1194}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1187, file: !160, line: 971, baseType: !64, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1187, file: !160, line: 972, baseType: !7, size: 32, offset: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1187, file: !160, line: 973, baseType: !7, size: 32, offset: 96)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1187, file: !160, line: 974, baseType: !7, size: 32, offset: 128)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1187, file: !160, line: 975, baseType: !7, size: 32, offset: 160)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1187, file: !160, line: 976, baseType: !66, size: 64, offset: 192)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !713, file: !160, line: 1014, baseType: !1196, size: 128, offset: 1216)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1197, line: 8, size: 128, elements: !1198)
!1197 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1198 = !{!1199, !1200}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1196, file: !1197, line: 9, baseType: !545, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1196, file: !1197, line: 10, baseType: !437, size: 64, offset: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !713, file: !160, line: 1015, baseType: !402, size: 64, offset: 1344)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !713, file: !160, line: 1016, baseType: !1203, size: 64, offset: 1408)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1205)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !160, line: 1914, size: 2112, elements: !1206)
!1206 = !{!1207, !1208, !1212, !1216, !1220, !1331, !1332, !1338, !1351, !1368, !1372, !1373, !1711, !1712, !1716, !1721, !1722, !1726, !1730, !1736, !1737, !1741, !1742, !1749, !1753, !1757, !1763, !1767, !1809, !1813, !1817, !1818, !1824}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1205, file: !160, line: 1915, baseType: !586, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1205, file: !160, line: 1916, baseType: !1209, size: 64, offset: 64)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!66, !712, !66, !47}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1205, file: !160, line: 1917, baseType: !1213, size: 64, offset: 128)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{!671, !712, !540, !60, !65}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1205, file: !160, line: 1918, baseType: !1217, size: 64, offset: 192)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{!671, !712, !41, !60, !65}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1205, file: !160, line: 1919, baseType: !1221, size: 64, offset: 256)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{!671, !1224, !1329}
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !160, line: 373, size: 384, elements: !1226)
!1226 = !{!1227, !1228, !1229, !1233, !1234, !1235, !1236}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1225, file: !160, line: 374, baseType: !712, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1225, file: !160, line: 375, baseType: !66, size: 64, offset: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1225, file: !160, line: 376, baseType: !1230, size: 64, offset: 128)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DISubroutineType(types: !1232)
!1232 = !{null, !1224, !373}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1225, file: !160, line: 377, baseType: !45, size: 64, offset: 192)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1225, file: !160, line: 378, baseType: !47, size: 32, offset: 256)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1225, file: !160, line: 379, baseType: !118, size: 16, offset: 288)
!1236 = !DIDerivedType(tag: DW_TAG_member, scope: !1225, file: !160, line: 380, baseType: !1237, size: 64, offset: 320)
!1237 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1225, file: !160, line: 380, size: 64, elements: !1238)
!1238 = !{!1239, !1325}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1237, file: !160, line: 386, baseType: !1240, size: 64)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !1242, line: 998, size: 448, elements: !1243)
!1242 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!1243 = !{!1244, !1311, !1312}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !1241, file: !1242, line: 999, baseType: !1245, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !133, line: 293, size: 1536, elements: !1247)
!1247 = !{!1248, !1278, !1292}
!1248 = !DIDerivedType(tag: DW_TAG_member, scope: !1246, file: !133, line: 295, baseType: !1249, size: 512)
!1249 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1246, file: !133, line: 295, size: 512, elements: !1250)
!1250 = !{!1251, !1277}
!1251 = !DIDerivedType(tag: DW_TAG_member, scope: !1249, file: !133, line: 296, baseType: !1252, size: 448)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1249, file: !133, line: 296, size: 448, elements: !1253)
!1253 = !{!1254, !1255, !1264, !1265, !1266, !1275, !1276}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1252, file: !133, line: 298, baseType: !64, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, scope: !1252, file: !133, line: 299, baseType: !1256, size: 128, offset: 64)
!1256 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1252, file: !133, line: 299, size: 128, elements: !1257)
!1257 = !{!1258, !1259}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1256, file: !133, line: 300, baseType: !122, size: 128)
!1259 = !DIDerivedType(tag: DW_TAG_member, scope: !1256, file: !133, line: 302, baseType: !1260, size: 128)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1256, file: !133, line: 302, size: 128, elements: !1261)
!1261 = !{!1262, !1263}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1260, file: !133, line: 303, baseType: !45, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1260, file: !133, line: 305, baseType: !7, size: 32, offset: 64)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1252, file: !133, line: 310, baseType: !398, size: 64, offset: 192)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1252, file: !133, line: 311, baseType: !64, size: 64, offset: 256)
!1266 = !DIDerivedType(tag: DW_TAG_member, scope: !1252, file: !133, line: 312, baseType: !1267, size: 64, offset: 320)
!1267 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1252, file: !133, line: 312, size: 64, elements: !1268)
!1268 = !{!1269, !1270}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1267, file: !133, line: 313, baseType: !45, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1267, file: !133, line: 314, baseType: !1271, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !133, line: 257, baseType: !1272)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !133, line: 255, size: 64, elements: !1273)
!1273 = !{!1274}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1272, file: !133, line: 256, baseType: !64, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1252, file: !133, line: 316, baseType: !74, size: 32, offset: 384)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1252, file: !133, line: 317, baseType: !74, size: 32, offset: 416)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1249, file: !133, line: 323, baseType: !377, size: 512, align: 128)
!1278 = !DIDerivedType(tag: DW_TAG_member, scope: !1246, file: !133, line: 325, baseType: !1279, size: 512, offset: 512)
!1279 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1246, file: !133, line: 325, size: 512, elements: !1280)
!1280 = !{!1281, !1291}
!1281 = !DIDerivedType(tag: DW_TAG_member, scope: !1279, file: !133, line: 326, baseType: !1282, size: 320)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1279, file: !133, line: 326, size: 320, elements: !1283)
!1283 = !{!1284, !1285, !1286, !1287, !1288, !1289, !1290}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1282, file: !133, line: 327, baseType: !64, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1282, file: !133, line: 328, baseType: !64, size: 64, offset: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1282, file: !133, line: 329, baseType: !64, size: 64, offset: 128)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1282, file: !133, line: 331, baseType: !74, size: 32, offset: 192)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1282, file: !133, line: 332, baseType: !74, size: 32, offset: 224)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1282, file: !133, line: 333, baseType: !74, size: 32, offset: 256)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1282, file: !133, line: 335, baseType: !7, size: 32, offset: 288)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1279, file: !133, line: 339, baseType: !377, size: 512, align: 128)
!1292 = !DIDerivedType(tag: DW_TAG_member, scope: !1246, file: !133, line: 341, baseType: !1293, size: 512, offset: 1024)
!1293 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1246, file: !133, line: 341, size: 512, elements: !1294)
!1294 = !{!1295, !1304, !1310}
!1295 = !DIDerivedType(tag: DW_TAG_member, scope: !1293, file: !133, line: 342, baseType: !1296, size: 384)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1293, file: !133, line: 342, size: 384, elements: !1297)
!1297 = !{!1298, !1299, !1300, !1301, !1302, !1303}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1296, file: !133, line: 343, baseType: !64, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1296, file: !133, line: 344, baseType: !64, size: 64, offset: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1296, file: !133, line: 346, baseType: !45, size: 64, offset: 128)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1296, file: !133, line: 347, baseType: !45, size: 64, offset: 192)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1296, file: !133, line: 348, baseType: !45, size: 64, offset: 256)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1296, file: !133, line: 349, baseType: !45, size: 64, offset: 320)
!1304 = !DIDerivedType(tag: DW_TAG_member, scope: !1293, file: !133, line: 352, baseType: !1305, size: 256)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1293, file: !133, line: 352, size: 256, elements: !1306)
!1306 = !{!1307, !1308, !1309}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1305, file: !133, line: 353, baseType: !64, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1305, file: !133, line: 354, baseType: !64, size: 64, offset: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1305, file: !133, line: 356, baseType: !122, size: 128, offset: 128)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1293, file: !133, line: 359, baseType: !377, size: 512, align: 128)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !1241, file: !1242, line: 1000, baseType: !47, size: 32, offset: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1241, file: !1242, line: 1001, baseType: !1313, size: 320, offset: 128)
!1313 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !80, line: 14, baseType: !1314)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !80, line: 30, size: 320, elements: !1315)
!1315 = !{!1316, !1317, !1318, !1324}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1314, file: !80, line: 31, baseType: !7, size: 32)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1314, file: !80, line: 32, baseType: !45, size: 64, offset: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1314, file: !80, line: 33, baseType: !1319, size: 64, offset: 128)
!1319 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !80, line: 16, baseType: !1320)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DISubroutineType(types: !1322)
!1322 = !{!47, !1323, !7, !47, !45}
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1314, file: !80, line: 34, baseType: !122, size: 128, offset: 192)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1237, file: !160, line: 395, baseType: !1326, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = !DISubroutineType(types: !1328)
!1328 = !{!671, !45}
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !160, line: 69, flags: DIFlagFwdDecl)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1205, file: !160, line: 1920, baseType: !1221, size: 64, offset: 320)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1205, file: !160, line: 1921, baseType: !1333, size: 64, offset: 384)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{!47, !1224, !1336, !7}
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !160, line: 53, flags: DIFlagFwdDecl)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1205, file: !160, line: 1923, baseType: !1339, size: 64, offset: 448)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DISubroutineType(types: !1341)
!1341 = !{!47, !712, !1342}
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !160, line: 1858, size: 128, elements: !1344)
!1344 = !{!1345, !1350}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1343, file: !160, line: 1859, baseType: !1346, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !160, line: 1855, baseType: !1347)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{!937, !1342, !41, !47, !66, !371, !7}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1343, file: !160, line: 1860, baseType: !66, size: 64, offset: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1205, file: !160, line: 1924, baseType: !1352, size: 64, offset: 512)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DISubroutineType(types: !1354)
!1354 = !{!1355, !712, !1357}
!1355 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1356, line: 59, baseType: !7)
!1356 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1359, line: 37, size: 128, elements: !1360)
!1359 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!1360 = !{!1361, !1367}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !1358, file: !1359, line: 38, baseType: !1362, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !1359, line: 31, baseType: !1363)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{null, !712, !1366, !1357}
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !1358, file: !1359, line: 39, baseType: !1355, size: 32, offset: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1205, file: !160, line: 1925, baseType: !1369, size: 64, offset: 576)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{!373, !712, !7, !64}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1205, file: !160, line: 1926, baseType: !1369, size: 64, offset: 640)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1205, file: !160, line: 1927, baseType: !1374, size: 64, offset: 704)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{!47, !712, !1377}
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !133, line: 625, size: 1344, elements: !1379)
!1379 = !{!1380, !1389, !1567, !1573, !1580, !1581, !1586, !1587, !1592, !1593, !1596, !1704, !1705, !1706, !1707, !1708, !1709}
!1380 = !DIDerivedType(tag: DW_TAG_member, scope: !1378, file: !133, line: 628, baseType: !1381, size: 128)
!1381 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1378, file: !133, line: 628, size: 128, elements: !1382)
!1382 = !{!1383, !1388}
!1383 = !DIDerivedType(tag: DW_TAG_member, scope: !1381, file: !133, line: 629, baseType: !1384, size: 128)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1381, file: !133, line: 629, size: 128, elements: !1385)
!1385 = !{!1386, !1387}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1384, file: !133, line: 631, baseType: !64, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1384, file: !133, line: 632, baseType: !64, size: 64, offset: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1381, file: !133, line: 635, baseType: !725, size: 128, align: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1378, file: !133, line: 639, baseType: !1390, size: 64, offset: 128)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !133, line: 733, size: 10240, elements: !1392)
!1392 = !{!1393, !1565}
!1393 = !DIDerivedType(tag: DW_TAG_member, scope: !1391, file: !133, line: 734, baseType: !1394, size: 10240)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1391, file: !133, line: 734, size: 10240, elements: !1395)
!1395 = !{!1396, !1400, !1414, !1418, !1419, !1420, !1421, !1422, !1423, !1430, !1431, !1432, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1471, !1473, !1476, !1545, !1546, !1547, !1550, !1551, !1552, !1555, !1556, !1557, !1563, !1564}
!1396 = !DIDerivedType(tag: DW_TAG_member, scope: !1394, file: !133, line: 739, baseType: !1397, size: 512, align: 512)
!1397 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1394, file: !133, line: 739, size: 512, align: 512, elements: !1398)
!1398 = !{!1399}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1397, file: !133, line: 747, baseType: !74, size: 32)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1394, file: !133, line: 750, baseType: !1401, size: 128, offset: 512)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1402, line: 218, size: 128, elements: !1403)
!1402 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1403 = !{!1404, !1412, !1413}
!1404 = !DIDerivedType(tag: DW_TAG_member, scope: !1401, file: !1402, line: 219, baseType: !1405, size: 32)
!1405 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1401, file: !1402, line: 219, size: 32, elements: !1406)
!1406 = !{!1407, !1408}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1405, file: !1402, line: 220, baseType: !84, size: 32)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1405, file: !1402, line: 221, baseType: !1409)
!1409 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1402, line: 197, baseType: !1410)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1402, line: 197, elements: !1411)
!1411 = !{}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1401, file: !1402, line: 223, baseType: !7, size: 32, offset: 32)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1401, file: !1402, line: 224, baseType: !45, size: 64, offset: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1394, file: !133, line: 752, baseType: !1415, size: 64, offset: 640)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!64, !712, !64, !64, !64, !64}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1394, file: !133, line: 756, baseType: !64, size: 64, offset: 704)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1394, file: !133, line: 757, baseType: !64, size: 64, offset: 768)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1394, file: !133, line: 760, baseType: !64, size: 64, offset: 832)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1394, file: !133, line: 761, baseType: !64, size: 64, offset: 896)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1394, file: !133, line: 763, baseType: !64, size: 64, offset: 960)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1394, file: !133, line: 764, baseType: !1424, size: 64, offset: 1024)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !6, line: 299, baseType: !1426)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 299, size: 64, elements: !1427)
!1427 = !{!1428}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1426, file: !6, line: 299, baseType: !1429, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !375, line: 18, baseType: !64)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1394, file: !133, line: 773, baseType: !74, size: 32, offset: 1088)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1394, file: !133, line: 785, baseType: !74, size: 32, offset: 1120)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1394, file: !133, line: 795, baseType: !1433, size: 64, offset: 1152)
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !133, line: 726, size: 128, elements: !1435)
!1435 = !{!1436, !1437}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1434, file: !133, line: 727, baseType: !371, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1434, file: !133, line: 728, baseType: !47, size: 32, offset: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1394, file: !133, line: 801, baseType: !64, size: 64, offset: 1216)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1394, file: !133, line: 804, baseType: !738, size: 64, offset: 1280)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1394, file: !133, line: 806, baseType: !47, size: 32, offset: 1344)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1394, file: !133, line: 808, baseType: !84, size: 32, offset: 1376)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1394, file: !133, line: 823, baseType: !878, size: 320, offset: 1408)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1394, file: !133, line: 825, baseType: !122, size: 128, offset: 1728)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1394, file: !133, line: 845, baseType: !47, size: 32, offset: 1856)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1394, file: !133, line: 849, baseType: !64, size: 64, offset: 1920)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1394, file: !133, line: 850, baseType: !64, size: 64, offset: 1984)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1394, file: !133, line: 852, baseType: !64, size: 64, offset: 2048)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1394, file: !133, line: 853, baseType: !64, size: 64, offset: 2112)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1394, file: !133, line: 854, baseType: !740, size: 64, offset: 2176)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1394, file: !133, line: 855, baseType: !64, size: 64, offset: 2240)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1394, file: !133, line: 856, baseType: !64, size: 64, offset: 2304)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1394, file: !133, line: 857, baseType: !64, size: 64, offset: 2368)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1394, file: !133, line: 858, baseType: !64, size: 64, offset: 2432)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1394, file: !133, line: 865, baseType: !448, size: 32, offset: 2496)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1394, file: !133, line: 867, baseType: !84, size: 32, offset: 2528)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1394, file: !133, line: 869, baseType: !64, size: 64, offset: 2560)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1394, file: !133, line: 869, baseType: !64, size: 64, offset: 2624)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1394, file: !133, line: 869, baseType: !64, size: 64, offset: 2688)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1394, file: !133, line: 869, baseType: !64, size: 64, offset: 2752)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1394, file: !133, line: 870, baseType: !64, size: 64, offset: 2816)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1394, file: !133, line: 870, baseType: !64, size: 64, offset: 2880)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1394, file: !133, line: 870, baseType: !64, size: 64, offset: 2944)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1394, file: !133, line: 871, baseType: !64, size: 64, offset: 3008)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1394, file: !133, line: 871, baseType: !64, size: 64, offset: 3072)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1394, file: !133, line: 871, baseType: !64, size: 64, offset: 3136)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1394, file: !133, line: 871, baseType: !64, size: 64, offset: 3200)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1394, file: !133, line: 873, baseType: !1468, size: 3328, offset: 3264)
!1468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 3328, elements: !1469)
!1469 = !{!1470}
!1470 = !DISubrange(count: 52)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1394, file: !133, line: 875, baseType: !1472, size: 1280, offset: 6592)
!1472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !995, size: 1280, elements: !808)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1394, file: !133, line: 877, baseType: !1474, size: 64, offset: 7872)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !133, line: 877, flags: DIFlagFwdDecl)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1394, file: !133, line: 880, baseType: !1477, size: 1088, offset: 7936)
!1477 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1478, line: 72, baseType: !1479)
!1478 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1478, line: 23, size: 1088, elements: !1480)
!1480 = !{!1481, !1482, !1483, !1484, !1485, !1510, !1511, !1512, !1513, !1540, !1541, !1542}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1479, file: !1478, line: 28, baseType: !371, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1479, file: !1478, line: 38, baseType: !740, size: 64, offset: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1479, file: !1478, line: 40, baseType: !64, size: 64, offset: 128)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1479, file: !1478, line: 43, baseType: !878, size: 320, offset: 192)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1479, file: !1478, line: 44, baseType: !1486, size: 64, offset: 512)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1488, line: 30, size: 128, elements: !1489)
!1488 = !DIFile(filename: "./arch/x86/include/asm/mmu_context.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8e7349a2ab0563256af671ddc4b36d96")
!1489 = !{!1490, !1508, !1509}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1487, file: !1488, line: 37, baseType: !1491, size: 64)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1493, line: 16, size: 64, elements: !1494)
!1493 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!1494 = !{!1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1492, file: !1493, line: 17, baseType: !118, size: 16)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1492, file: !1493, line: 18, baseType: !118, size: 16, offset: 16)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1492, file: !1493, line: 19, baseType: !118, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1492, file: !1493, line: 19, baseType: !118, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1492, file: !1493, line: 19, baseType: !118, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1492, file: !1493, line: 19, baseType: !118, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1492, file: !1493, line: 19, baseType: !118, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1492, file: !1493, line: 20, baseType: !118, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1492, file: !1493, line: 20, baseType: !118, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1492, file: !1493, line: 20, baseType: !118, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1492, file: !1493, line: 20, baseType: !118, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1492, file: !1493, line: 20, baseType: !118, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1492, file: !1493, line: 20, baseType: !118, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "nr_entries", scope: !1487, file: !1488, line: 38, baseType: !7, size: 32, offset: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !1487, file: !1488, line: 49, baseType: !47, size: 32, offset: 96)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1479, file: !1478, line: 48, baseType: !64, size: 64, offset: 576)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1479, file: !1478, line: 59, baseType: !747, size: 256, offset: 640)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1479, file: !1478, line: 60, baseType: !45, size: 64, offset: 896)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1479, file: !1478, line: 61, baseType: !1514, size: 64, offset: 960)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1516)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1517, line: 13, size: 1216, elements: !1518)
!1517 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1518 = !{!1519, !1520, !1521, !1522, !1523, !1524, !1525, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1516, file: !1517, line: 14, baseType: !45, size: 64)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1516, file: !1517, line: 15, baseType: !64, size: 64, offset: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1516, file: !1517, line: 17, baseType: !64, size: 64, offset: 128)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1516, file: !1517, line: 17, baseType: !64, size: 64, offset: 192)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1516, file: !1517, line: 18, baseType: !64, size: 64, offset: 256)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1516, file: !1517, line: 18, baseType: !64, size: 64, offset: 320)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1516, file: !1517, line: 19, baseType: !1526, size: 64, offset: 384)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1516, file: !1517, line: 21, baseType: !373, size: 64, offset: 448)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1516, file: !1517, line: 23, baseType: !373, size: 64, offset: 512)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1516, file: !1517, line: 24, baseType: !373, size: 64, offset: 576)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1516, file: !1517, line: 25, baseType: !373, size: 64, offset: 640)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1516, file: !1517, line: 26, baseType: !373, size: 64, offset: 704)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1516, file: !1517, line: 27, baseType: !373, size: 64, offset: 768)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1516, file: !1517, line: 28, baseType: !373, size: 64, offset: 832)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1516, file: !1517, line: 29, baseType: !373, size: 64, offset: 896)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1516, file: !1517, line: 30, baseType: !373, size: 64, offset: 960)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1516, file: !1517, line: 31, baseType: !373, size: 64, offset: 1024)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1516, file: !1517, line: 32, baseType: !373, size: 64, offset: 1088)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1516, file: !1517, line: 33, baseType: !373, size: 64, offset: 1152)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1479, file: !1478, line: 63, baseType: !74, size: 32, offset: 1024)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1479, file: !1478, line: 69, baseType: !118, size: 16, offset: 1056)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1479, file: !1478, line: 70, baseType: !1543, size: 16, offset: 1072)
!1543 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !109, line: 18, baseType: !1544)
!1544 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !111, line: 23, baseType: !906)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1394, file: !133, line: 882, baseType: !64, size: 64, offset: 9024)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1394, file: !133, line: 885, baseType: !84, size: 32, offset: 9088)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1394, file: !133, line: 886, baseType: !1548, size: 64, offset: 9152)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !133, line: 732, flags: DIFlagFwdDecl)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1394, file: !133, line: 901, baseType: !1020, size: 64, offset: 9216)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1394, file: !133, line: 904, baseType: !712, size: 64, offset: 9280)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1394, file: !133, line: 906, baseType: !1553, size: 64, offset: 9344)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !133, line: 906, flags: DIFlagFwdDecl)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1394, file: !133, line: 930, baseType: !74, size: 32, offset: 9408)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1394, file: !133, line: 933, baseType: !74, size: 32, offset: 9440)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1394, file: !133, line: 935, baseType: !1558, size: 64, offset: 9472)
!1558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !247, line: 103, size: 64, elements: !1559)
!1559 = !{!1560}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1558, file: !247, line: 104, baseType: !1561, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !247, line: 101, flags: DIFlagFwdDecl)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1394, file: !133, line: 940, baseType: !738, size: 64, offset: 9536)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1394, file: !133, line: 942, baseType: !1069, size: 256, offset: 9600)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1391, file: !133, line: 986, baseType: !1566, offset: 10240)
!1566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, elements: !821)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1378, file: !133, line: 640, baseType: !1568, size: 64, offset: 192)
!1568 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !6, line: 297, baseType: !1569)
!1569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !6, line: 297, size: 64, elements: !1570)
!1570 = !{!1571}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1569, file: !6, line: 297, baseType: !1572, size: 64)
!1572 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !375, line: 19, baseType: !64)
!1573 = !DIDerivedType(tag: DW_TAG_member, scope: !1378, file: !133, line: 646, baseType: !1574, size: 64, offset: 256)
!1574 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1378, file: !133, line: 646, size: 64, elements: !1575)
!1575 = !{!1576, !1579}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1574, file: !133, line: 647, baseType: !1577, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1578)
!1578 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !133, line: 542, baseType: !64)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1574, file: !133, line: 648, baseType: !1578, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1378, file: !133, line: 666, baseType: !47, size: 32, offset: 320)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1378, file: !133, line: 667, baseType: !1582, size: 64, offset: 384)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !133, line: 579, size: 320, elements: !1584)
!1584 = !{!1585}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1583, file: !133, line: 580, baseType: !878, size: 320)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1378, file: !133, line: 670, baseType: !937, size: 8, offset: 448)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1378, file: !133, line: 681, baseType: !1588, size: 256, offset: 512)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1378, file: !133, line: 678, size: 256, elements: !1589)
!1589 = !{!1590, !1591}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1588, file: !133, line: 679, baseType: !870, size: 192, align: 64)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1588, file: !133, line: 680, baseType: !64, size: 64, offset: 192)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1378, file: !133, line: 689, baseType: !122, size: 128, offset: 768)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1378, file: !133, line: 691, baseType: !1594, size: 64, offset: 896)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !133, line: 691, flags: DIFlagFwdDecl)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1378, file: !133, line: 694, baseType: !1597, size: 64, offset: 960)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1599)
!1599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1600, line: 563, size: 1024, elements: !1601)
!1600 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1601 = !{!1602, !1606, !1607, !1611, !1615, !1619, !1668, !1672, !1676, !1680, !1681, !1682, !1686, !1690, !1696, !1700}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1599, file: !1600, line: 564, baseType: !1603, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{null, !1377}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1599, file: !1600, line: 569, baseType: !1603, size: 64, offset: 64)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1599, file: !1600, line: 571, baseType: !1608, size: 64, offset: 128)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{!47, !1377, !64}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1599, file: !1600, line: 572, baseType: !1612, size: 64, offset: 192)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DISubroutineType(types: !1614)
!1614 = !{!47, !1377}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1599, file: !1600, line: 578, baseType: !1616, size: 64, offset: 256)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{!47, !1377, !64, !64, !64}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1599, file: !1600, line: 580, baseType: !1620, size: 64, offset: 320)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{!1623, !1624}
!1623 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !133, line: 1184, baseType: !7)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1600, line: 512, size: 896, elements: !1626)
!1626 = !{!1627, !1636, !1637, !1644, !1651, !1660, !1661, !1662, !1664, !1666}
!1627 = !DIDerivedType(tag: DW_TAG_member, scope: !1625, file: !1600, line: 513, baseType: !1628, size: 320)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1625, file: !1600, line: 513, size: 320, elements: !1629)
!1629 = !{!1630, !1631, !1633, !1634, !1635}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1628, file: !1600, line: 514, baseType: !1377, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1628, file: !1600, line: 515, baseType: !1632, size: 32, offset: 64)
!1632 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !50, line: 154, baseType: !7)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1628, file: !1600, line: 516, baseType: !64, size: 64, offset: 128)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1628, file: !1600, line: 517, baseType: !64, size: 64, offset: 192)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1628, file: !1600, line: 518, baseType: !64, size: 64, offset: 256)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1625, file: !1600, line: 520, baseType: !132, size: 32, offset: 320)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1625, file: !1600, line: 522, baseType: !1638, size: 64, offset: 384)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !375, line: 22, baseType: !1640)
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !375, line: 22, size: 64, elements: !1641)
!1641 = !{!1642}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1640, file: !375, line: 22, baseType: !1643, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !375, line: 15, baseType: !64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1625, file: !1600, line: 524, baseType: !1645, size: 64, offset: 448)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !6, line: 372, baseType: !1647)
!1647 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 372, size: 64, elements: !1648)
!1648 = !{!1649}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1647, file: !6, line: 372, baseType: !1650, size: 64)
!1650 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !375, line: 16, baseType: !64)
!1651 = !DIDerivedType(tag: DW_TAG_member, scope: !1625, file: !1600, line: 527, baseType: !1652, size: 64, offset: 512)
!1652 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1625, file: !1600, line: 527, size: 64, elements: !1653)
!1653 = !{!1654, !1659}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1652, file: !1600, line: 528, baseType: !1655, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !375, line: 21, baseType: !1656)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !375, line: 21, size: 64, elements: !1657)
!1657 = !{!1658}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1656, file: !375, line: 21, baseType: !374, size: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1652, file: !1600, line: 529, baseType: !1639, size: 64)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1625, file: !1600, line: 534, baseType: !376, size: 64, offset: 576)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1625, file: !1600, line: 535, baseType: !376, size: 64, offset: 640)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1625, file: !1600, line: 541, baseType: !1663, size: 64, offset: 704)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1625, file: !1600, line: 545, baseType: !1665, size: 64, offset: 768)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1625, file: !1600, line: 549, baseType: !1667, size: 64, offset: 832)
!1667 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !6, line: 520, baseType: !376)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1599, file: !1600, line: 581, baseType: !1669, size: 64, offset: 384)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DISubroutineType(types: !1671)
!1671 = !{!1623, !1624, !7}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1599, file: !1600, line: 582, baseType: !1673, size: 64, offset: 448)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{!1623, !1624, !64, !64}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1599, file: !1600, line: 584, baseType: !1677, size: 64, offset: 512)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DISubroutineType(types: !1679)
!1679 = !{!64, !1377}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1599, file: !1600, line: 588, baseType: !1620, size: 64, offset: 576)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1599, file: !1600, line: 591, baseType: !1620, size: 64, offset: 640)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1599, file: !1600, line: 597, baseType: !1683, size: 64, offset: 704)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{!47, !1377, !64, !45, !47, !47}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1599, file: !1600, line: 603, baseType: !1687, size: 64, offset: 768)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{!41, !1377}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1599, file: !1600, line: 613, baseType: !1691, size: 64, offset: 832)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = !DISubroutineType(types: !1693)
!1693 = !{!47, !1377, !1694}
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !133, line: 717, flags: DIFlagFwdDecl)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1599, file: !1600, line: 625, baseType: !1697, size: 64, offset: 896)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{!1694, !1377, !64}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1599, file: !1600, line: 633, baseType: !1701, size: 64, offset: 960)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{!376, !1377, !64}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1378, file: !133, line: 697, baseType: !64, size: 64, offset: 1024)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1378, file: !133, line: 699, baseType: !712, size: 64, offset: 1088)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1378, file: !133, line: 700, baseType: !45, size: 64, offset: 1152)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1378, file: !133, line: 711, baseType: !738, size: 64, offset: 1216)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1378, file: !133, line: 717, baseType: !1694, size: 64, offset: 1280)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1378, file: !133, line: 722, baseType: !1710, offset: 1344)
!1710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !133, line: 570, elements: !1411)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1205, file: !160, line: 1928, baseType: !64, size: 64, offset: 768)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1205, file: !160, line: 1929, baseType: !1713, size: 64, offset: 832)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DISubroutineType(types: !1715)
!1715 = !{!47, !402, !712}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1205, file: !160, line: 1930, baseType: !1717, size: 64, offset: 896)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{!47, !712, !1720}
!1720 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !160, line: 1061, baseType: !45)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1205, file: !160, line: 1931, baseType: !1713, size: 64, offset: 960)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1205, file: !160, line: 1932, baseType: !1723, size: 64, offset: 1024)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{!47, !712, !66, !66, !47}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1205, file: !160, line: 1933, baseType: !1727, size: 64, offset: 1088)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{!47, !47, !712, !47}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1205, file: !160, line: 1934, baseType: !1731, size: 64, offset: 1152)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{!47, !712, !47, !1734}
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !160, line: 1063, flags: DIFlagFwdDecl)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1205, file: !160, line: 1935, baseType: !1415, size: 64, offset: 1216)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1205, file: !160, line: 1936, baseType: !1738, size: 64, offset: 1280)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DISubroutineType(types: !1740)
!1740 = !{!47, !47}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1205, file: !160, line: 1937, baseType: !1731, size: 64, offset: 1344)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1205, file: !160, line: 1938, baseType: !1743, size: 64, offset: 1408)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DISubroutineType(types: !1745)
!1745 = !{!671, !1746, !712, !65, !60, !7}
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1748, line: 59, flags: DIFlagFwdDecl)
!1748 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1205, file: !160, line: 1939, baseType: !1750, size: 64, offset: 1472)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{!671, !712, !65, !1746, !60, !7}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1205, file: !160, line: 1940, baseType: !1754, size: 64, offset: 1536)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{null, !712}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1205, file: !160, line: 1941, baseType: !1758, size: 64, offset: 1600)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DISubroutineType(types: !1760)
!1760 = !{!47, !712, !47, !1761, !1762}
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1205, file: !160, line: 1942, baseType: !1764, size: 64, offset: 1664)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = !DISubroutineType(types: !1766)
!1766 = !{!373, !712, !47, !66, !66}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1205, file: !160, line: 1944, baseType: !1768, size: 64, offset: 1728)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = !DISubroutineType(types: !1770)
!1770 = !{null, !1771, !712}
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1773, line: 17, size: 960, elements: !1774)
!1773 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1774 = !{!1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1804, !1805, !1808}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1772, file: !1773, line: 18, baseType: !540, size: 64)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1772, file: !1773, line: 19, baseType: !60, size: 64, offset: 64)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1772, file: !1773, line: 20, baseType: !60, size: 64, offset: 128)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1772, file: !1773, line: 21, baseType: !60, size: 64, offset: 192)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1772, file: !1773, line: 22, baseType: !60, size: 64, offset: 256)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1772, file: !1773, line: 23, baseType: !66, size: 64, offset: 320)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1772, file: !1773, line: 24, baseType: !66, size: 64, offset: 384)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1772, file: !1773, line: 25, baseType: !747, size: 256, offset: 448)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1772, file: !1773, line: 26, baseType: !1784, size: 64, offset: 704)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1786)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1773, line: 32, size: 256, elements: !1787)
!1787 = !{!1788, !1792, !1796, !1800}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1786, file: !1773, line: 33, baseType: !1789, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = !DISubroutineType(types: !1791)
!1791 = !{!45, !1771, !65}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1786, file: !1773, line: 34, baseType: !1793, size: 64, offset: 64)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = !DISubroutineType(types: !1795)
!1795 = !{null, !1771, !45}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1786, file: !1773, line: 35, baseType: !1797, size: 64, offset: 128)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{!45, !1771, !45, !65}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1786, file: !1773, line: 36, baseType: !1801, size: 64, offset: 192)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DISubroutineType(types: !1803)
!1803 = !{!47, !1771, !45}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1772, file: !1773, line: 27, baseType: !47, size: 32, offset: 768)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1772, file: !1773, line: 28, baseType: !1806, size: 64, offset: 832)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !713)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1772, file: !1773, line: 29, baseType: !45, size: 64, offset: 896)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1205, file: !160, line: 1948, baseType: !1810, size: 64, offset: 1792)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DISubroutineType(types: !1812)
!1812 = !{!671, !712, !66, !712, !66, !60, !7}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1205, file: !160, line: 1950, baseType: !1814, size: 64, offset: 1856)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{!66, !712, !66, !712, !66, !66, !7}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1205, file: !160, line: 1953, baseType: !1723, size: 64, offset: 1920)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1205, file: !160, line: 1954, baseType: !1819, size: 64, offset: 1984)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = !DISubroutineType(types: !1821)
!1821 = !{!47, !1822, !7}
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !160, line: 1911, flags: DIFlagFwdDecl)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1205, file: !160, line: 1955, baseType: !1825, size: 64, offset: 2048)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = !DISubroutineType(types: !1827)
!1827 = !{!47, !1822, !1336, !7}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !713, file: !160, line: 1018, baseType: !371, size: 64, offset: 1472)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !713, file: !160, line: 1020, baseType: !45, size: 64, offset: 1536)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !713, file: !160, line: 1023, baseType: !45, size: 64, offset: 1600)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !713, file: !160, line: 1027, baseType: !1832, size: 64, offset: 1664)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !713, file: !160, line: 1029, baseType: !398, size: 64, offset: 1728)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !713, file: !160, line: 1030, baseType: !1835, size: 32, offset: 1792)
!1835 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1836, line: 8, baseType: !471)
!1836 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !713, file: !160, line: 1031, baseType: !1835, size: 32, offset: 1824)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !699, file: !665, line: 182, baseType: !709, size: 64, offset: 384)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !699, file: !665, line: 184, baseType: !1840, size: 64, offset: 448)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = !DISubroutineType(types: !1842)
!1842 = !{!47, !712, !605, !698, !1377}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !687, file: !665, line: 90, baseType: !1844, size: 64, offset: 192)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !687, file: !665, line: 91, baseType: !1846, size: 64, offset: 256)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !655, file: !600, line: 120, baseType: !1848, size: 64, offset: 192)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = !DISubroutineType(types: !1850)
!1850 = !{!1851, !623}
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1853)
!1853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !149, line: 39, size: 384, elements: !1854)
!1854 = !{!1855, !1856, !1860, !1864, !1870, !1874}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1853, file: !149, line: 40, baseType: !148, size: 32)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1853, file: !149, line: 41, baseType: !1857, size: 64, offset: 64)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = !DISubroutineType(types: !1859)
!1859 = !{!937}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1853, file: !149, line: 42, baseType: !1861, size: 64, offset: 128)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DISubroutineType(types: !1863)
!1863 = !{!45}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1853, file: !149, line: 43, baseType: !1865, size: 64, offset: 192)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DISubroutineType(types: !1867)
!1867 = !{!1526, !1868}
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !149, line: 19, flags: DIFlagFwdDecl)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1853, file: !149, line: 44, baseType: !1871, size: 64, offset: 256)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = !DISubroutineType(types: !1873)
!1873 = !{!1526}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1853, file: !149, line: 45, baseType: !1875, size: 64, offset: 320)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DISubroutineType(types: !1877)
!1877 = !{null, !45}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !655, file: !600, line: 121, baseType: !1879, size: 64, offset: 256)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = !DISubroutineType(types: !1881)
!1881 = !{!1526, !623}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !655, file: !600, line: 122, baseType: !1883, size: 64, offset: 320)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DISubroutineType(types: !1885)
!1885 = !{null, !623, !1133, !1134}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !599, file: !600, line: 70, baseType: !1887, size: 64, offset: 384)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1889, line: 190, size: 1152, elements: !1890)
!1889 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1890 = !{!1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1970, !1971, !1972, !1973, !1974, !1977}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1888, file: !1889, line: 191, baseType: !74, size: 32)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1888, file: !1889, line: 192, baseType: !74, size: 32, offset: 32)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1888, file: !1889, line: 202, baseType: !1887, size: 64, offset: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1888, file: !1889, line: 203, baseType: !41, size: 64, offset: 128)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1888, file: !1889, line: 205, baseType: !870, size: 192, align: 64, offset: 192)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1888, file: !1889, line: 207, baseType: !1526, size: 64, offset: 384)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1888, file: !1889, line: 208, baseType: !7, size: 32, offset: 448)
!1898 = !DIDerivedType(tag: DW_TAG_member, scope: !1888, file: !1889, line: 209, baseType: !1899, size: 256, offset: 512)
!1899 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1888, file: !1889, line: 209, size: 256, elements: !1900)
!1900 = !{!1901, !1910, !1914}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1899, file: !1889, line: 210, baseType: !1902, size: 256)
!1902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1889, line: 153, size: 256, elements: !1903)
!1903 = !{!1904, !1905, !1906, !1909}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1902, file: !1889, line: 154, baseType: !64, size: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1902, file: !1889, line: 156, baseType: !1150, size: 64, offset: 64)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1902, file: !1889, line: 162, baseType: !1907, size: 64, offset: 128)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1889, line: 162, flags: DIFlagFwdDecl)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1902, file: !1889, line: 167, baseType: !64, size: 64, offset: 192)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1899, file: !1889, line: 211, baseType: !1911, size: 64)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1889, line: 170, size: 64, elements: !1912)
!1912 = !{!1913}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1911, file: !1889, line: 171, baseType: !1887, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1899, file: !1889, line: 212, baseType: !1915, size: 256)
!1915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1889, line: 174, size: 256, elements: !1916)
!1916 = !{!1917, !1965, !1968, !1969}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1915, file: !1889, line: 175, baseType: !1918, size: 64)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1920)
!1920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1889, line: 271, size: 768, elements: !1921)
!1921 = !{!1922, !1942, !1946, !1947, !1948, !1949, !1950, !1954, !1955, !1956, !1957, !1961}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1920, file: !1889, line: 276, baseType: !1923, size: 64)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{!47, !1926}
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1889, line: 251, size: 1216, elements: !1928)
!1928 = !{!1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1927, file: !1889, line: 253, baseType: !1887, size: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1927, file: !1889, line: 254, baseType: !712, size: 64, offset: 64)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1927, file: !1889, line: 255, baseType: !1771, size: 64, offset: 128)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1927, file: !1889, line: 256, baseType: !45, size: 64, offset: 192)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1927, file: !1889, line: 259, baseType: !747, size: 256, offset: 256)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1927, file: !1889, line: 260, baseType: !747, size: 256, offset: 512)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1927, file: !1889, line: 261, baseType: !47, size: 32, offset: 768)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1927, file: !1889, line: 262, baseType: !122, size: 128, offset: 832)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1927, file: !1889, line: 263, baseType: !540, size: 64, offset: 960)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1927, file: !1889, line: 265, baseType: !60, size: 64, offset: 1024)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1927, file: !1889, line: 266, baseType: !937, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1927, file: !1889, line: 267, baseType: !937, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1927, file: !1889, line: 268, baseType: !1597, size: 64, offset: 1152)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1920, file: !1889, line: 277, baseType: !1943, size: 64, offset: 64)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{null, !1926}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1920, file: !1889, line: 290, baseType: !1801, size: 64, offset: 128)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1920, file: !1889, line: 292, baseType: !1789, size: 64, offset: 192)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1920, file: !1889, line: 293, baseType: !1797, size: 64, offset: 256)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1920, file: !1889, line: 294, baseType: !1793, size: 64, offset: 320)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1920, file: !1889, line: 296, baseType: !1951, size: 64, offset: 384)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DISubroutineType(types: !1953)
!1953 = !{!671, !1926, !540, !60, !66}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1920, file: !1889, line: 306, baseType: !60, size: 64, offset: 448)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1920, file: !1889, line: 313, baseType: !937, size: 8, offset: 512)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1920, file: !1889, line: 314, baseType: !1951, size: 64, offset: 576)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1920, file: !1889, line: 317, baseType: !1958, size: 64, offset: 640)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = !DISubroutineType(types: !1960)
!1960 = !{!1355, !1926, !1357}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1920, file: !1889, line: 320, baseType: !1962, size: 64, offset: 704)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DISubroutineType(types: !1964)
!1964 = !{!47, !1926, !1377}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1915, file: !1889, line: 176, baseType: !1966, size: 64, offset: 64)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1889, line: 35, flags: DIFlagFwdDecl)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1915, file: !1889, line: 177, baseType: !66, size: 64, offset: 128)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1915, file: !1889, line: 178, baseType: !1887, size: 64, offset: 192)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1888, file: !1889, line: 215, baseType: !45, size: 64, offset: 768)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1888, file: !1889, line: 221, baseType: !371, size: 64, offset: 832)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1888, file: !1889, line: 223, baseType: !51, size: 16, offset: 896)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1888, file: !1889, line: 224, baseType: !49, size: 16, offset: 912)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1888, file: !1889, line: 225, baseType: !1975, size: 64, offset: 960)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1889, line: 36, flags: DIFlagFwdDecl)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1888, file: !1889, line: 227, baseType: !725, size: 128, align: 64, offset: 1024)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !599, file: !600, line: 71, baseType: !1979, size: 32, offset: 448)
!1979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1980, line: 19, size: 32, elements: !1981)
!1980 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1981 = !{!1982}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1979, file: !1980, line: 20, baseType: !790, size: 32)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !599, file: !600, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !599, file: !600, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !599, file: !600, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !599, file: !600, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !599, file: !600, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !596, file: !22, line: 47, baseType: !586, size: 64, offset: 512)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !596, file: !22, line: 48, baseType: !605, size: 64, offset: 576)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !596, file: !22, line: 49, baseType: !1991, size: 64, offset: 640)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !22, line: 49, flags: DIFlagFwdDecl)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !596, file: !22, line: 50, baseType: !1107, size: 64, offset: 704)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !587, file: !22, line: 418, baseType: !1995, size: 64, offset: 1408)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !22, line: 53, size: 448, elements: !1997)
!1997 = !{!1998, !1999, !2004, !2008, !2012, !2016}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1996, file: !22, line: 54, baseType: !675, size: 128)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1996, file: !22, line: 55, baseType: !2000, size: 64, offset: 128)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{!671, !1995, !2003, !540}
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1996, file: !22, line: 57, baseType: !2005, size: 64, offset: 192)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!671, !1995, !2003, !41, !60}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1996, file: !22, line: 59, baseType: !2009, size: 64, offset: 256)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{null, !586, !41}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1996, file: !22, line: 60, baseType: !2013, size: 64, offset: 320)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{!47, !586}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1996, file: !22, line: 61, baseType: !2017, size: 64, offset: 384)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{null, !586}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !587, file: !22, line: 419, baseType: !41, size: 64, offset: 1472)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !587, file: !22, line: 420, baseType: !41, size: 64, offset: 1536)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !587, file: !22, line: 421, baseType: !605, size: 64, offset: 1600)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !587, file: !22, line: 424, baseType: !2024, size: 64, offset: 1664)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2026)
!2026 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !22, line: 424, flags: DIFlagFwdDecl)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !587, file: !22, line: 425, baseType: !2028, size: 64, offset: 1728)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !863)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !587, file: !22, line: 426, baseType: !7, size: 32, offset: 1792)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !587, file: !22, line: 435, baseType: !747, size: 256, offset: 1856)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !587, file: !22, line: 437, baseType: !2033, size: 64, offset: 2112)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2035, line: 69, size: 320, elements: !2036)
!2035 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2036 = !{!2037, !2038, !2039, !2056, !2058, !2062, !2063}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2034, file: !2035, line: 70, baseType: !41, size: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2034, file: !2035, line: 71, baseType: !586, size: 64, offset: 64)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2034, file: !2035, line: 72, baseType: !2040, size: 64, offset: 128)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2042)
!2042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2035, line: 47, size: 256, elements: !2043)
!2043 = !{!2044, !2045, !2051, !2055}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2042, file: !2035, line: 49, baseType: !7, size: 32)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2042, file: !2035, line: 51, baseType: !2046, size: 64, offset: 64)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DISubroutineType(types: !2048)
!2048 = !{!47, !41, !2049}
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2034)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2042, file: !2035, line: 53, baseType: !2052, size: 64, offset: 128)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = !DISubroutineType(types: !2054)
!2054 = !{!47, !540, !2049}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2042, file: !2035, line: 55, baseType: !1875, size: 64, offset: 192)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2034, file: !2035, line: 73, baseType: !2057, size: 16, offset: 192)
!2057 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2034, file: !2035, line: 74, baseType: !2059, size: 8, offset: 208)
!2059 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !109, line: 16, baseType: !2060)
!2060 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !111, line: 20, baseType: !2061)
!2061 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2034, file: !2035, line: 75, baseType: !108, size: 8, offset: 216)
!2063 = !DIDerivedType(tag: DW_TAG_member, scope: !2034, file: !2035, line: 76, baseType: !2064, size: 64, offset: 256)
!2064 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2034, file: !2035, line: 76, size: 64, elements: !2065)
!2065 = !{!2066, !2067, !2074}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2064, file: !2035, line: 77, baseType: !45, size: 64)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2064, file: !2035, line: 78, baseType: !2068, size: 64)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2070)
!2070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2035, line: 86, size: 128, elements: !2071)
!2071 = !{!2072, !2073}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2070, file: !2035, line: 87, baseType: !7, size: 32)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2070, file: !2035, line: 88, baseType: !540, size: 64, offset: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2064, file: !2035, line: 79, baseType: !2075, size: 64)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2077)
!2077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2035, line: 92, size: 256, elements: !2078)
!2078 = !{!2079, !2080, !2081, !2083, !2084}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2077, file: !2035, line: 94, baseType: !7, size: 32)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2077, file: !2035, line: 95, baseType: !7, size: 32, offset: 32)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2077, file: !2035, line: 96, baseType: !2082, size: 64, offset: 64)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2077, file: !2035, line: 97, baseType: !2040, size: 64, offset: 128)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2077, file: !2035, line: 98, baseType: !45, size: 64, offset: 192)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !587, file: !22, line: 438, baseType: !7, size: 32, offset: 2176)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !587, file: !22, line: 441, baseType: !7, size: 32, offset: 2208)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !587, file: !22, line: 442, baseType: !2024, size: 64, offset: 2240)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !587, file: !22, line: 443, baseType: !2028, size: 64, offset: 2304)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !587, file: !22, line: 444, baseType: !937, size: 8, offset: 2368)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !587, file: !22, line: 451, baseType: !937, size: 8, offset: 2376)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !587, file: !22, line: 454, baseType: !7, size: 32, offset: 2400)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !587, file: !22, line: 455, baseType: !2093, size: 64, offset: 2432)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2095, line: 23, size: 96, elements: !2096)
!2095 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2096 = !{!2097, !2098, !2099}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2094, file: !2095, line: 24, baseType: !47, size: 32)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2094, file: !2095, line: 24, baseType: !47, size: 32, offset: 32)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2094, file: !2095, line: 24, baseType: !47, size: 32, offset: 64)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !587, file: !22, line: 458, baseType: !2101, size: 64, offset: 2496)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{!47}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !587, file: !22, line: 460, baseType: !2105, size: 4032, align: 512, offset: 2560)
!2105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2106, size: 4032, elements: !2122)
!2106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !22, line: 362, size: 576, elements: !2107)
!2107 = !{!2108, !2109, !2110}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2106, file: !22, line: 363, baseType: !45, size: 64)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2106, file: !22, line: 364, baseType: !7, size: 32, offset: 64)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2106, file: !22, line: 367, baseType: !2111, size: 448, offset: 128)
!2111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !22, line: 319, size: 448, elements: !2112)
!2112 = !{!2113, !2114}
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2111, file: !22, line: 320, baseType: !586, size: 64)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2111, file: !22, line: 321, baseType: !2115, size: 384, offset: 64)
!2115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2116, line: 40, size: 384, elements: !2117)
!2116 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2117 = !{!2118}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2115, file: !2116, line: 41, baseType: !2119, size: 384, align: 64)
!2119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !870, size: 384, align: 64, elements: !2120)
!2120 = !{!2121}
!2121 = !DISubrange(count: 2)
!2122 = !{!2123}
!2123 = !DISubrange(count: 7)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !587, file: !22, line: 463, baseType: !2125, size: 192, offset: 6592)
!2125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2126, line: 8, size: 192, elements: !2127)
!2126 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2127 = !{!2128, !2129, !2131}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2125, file: !2126, line: 10, baseType: !7, size: 32)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2125, file: !2126, line: 11, baseType: !2130, size: 64, offset: 64)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2125, file: !2126, line: 12, baseType: !2132, size: 64, offset: 128)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2134, line: 59, size: 48, elements: !2135)
!2134 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2135 = !{!2136, !2137, !2138, !2139, !2140, !2141}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2133, file: !2134, line: 60, baseType: !1543, size: 16)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2133, file: !2134, line: 61, baseType: !1543, size: 16, offset: 16)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2133, file: !2134, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2133, file: !2134, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2133, file: !2134, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2133, file: !2134, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !587, file: !22, line: 465, baseType: !64, size: 64, offset: 6784)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !587, file: !22, line: 469, baseType: !7, size: 32, offset: 6848)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !587, file: !22, line: 470, baseType: !122, size: 128, offset: 6912)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !587, file: !22, line: 471, baseType: !2146, size: 64, offset: 7040)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2148, line: 33, size: 96, elements: !2149)
!2148 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2149 = !{!2150, !2151, !2152, !2153}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2147, file: !2148, line: 37, baseType: !47, size: 32)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2147, file: !2148, line: 43, baseType: !47, size: 32, offset: 32)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2147, file: !2148, line: 45, baseType: !51, size: 16, offset: 64)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2147, file: !2148, line: 47, baseType: !51, size: 16, offset: 80)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !587, file: !22, line: 476, baseType: !2155, size: 64, offset: 7104)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !22, line: 378, size: 256, elements: !2157)
!2157 = !{!2158, !2174, !2175, !2176}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2156, file: !22, line: 379, baseType: !2159, size: 64)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2161, line: 204, baseType: !2162)
!2161 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2161, line: 197, size: 192, elements: !2163)
!2163 = !{!2164, !2166, !2167, !2168, !2170, !2172}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2162, file: !2161, line: 198, baseType: !2165, size: 32)
!2165 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2161, line: 21, baseType: !472)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2162, file: !2161, line: 199, baseType: !112, size: 8, offset: 32)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2162, file: !2161, line: 200, baseType: !112, size: 8, offset: 40)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2162, file: !2161, line: 201, baseType: !2169, size: 16, offset: 48)
!2169 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2161, line: 17, baseType: !119)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2162, file: !2161, line: 202, baseType: !2171, size: 64, offset: 64)
!2171 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2161, line: 16, baseType: !372)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2162, file: !2161, line: 203, baseType: !2173, size: 64, offset: 128)
!2173 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2161, line: 22, baseType: !372)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2156, file: !22, line: 380, baseType: !7, size: 32, offset: 64)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2156, file: !22, line: 381, baseType: !540, size: 64, offset: 128)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2156, file: !22, line: 382, baseType: !540, size: 64, offset: 192)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !587, file: !22, line: 477, baseType: !2156, size: 256, offset: 7168)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !587, file: !22, line: 480, baseType: !2179, size: 64, offset: 7424)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !22, line: 480, flags: DIFlagFwdDecl)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !587, file: !22, line: 483, baseType: !2182, size: 64, offset: 7488)
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2183 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !22, line: 483, flags: DIFlagFwdDecl)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !587, file: !22, line: 488, baseType: !540, size: 64, offset: 7552)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !587, file: !22, line: 492, baseType: !45, size: 64, offset: 7616)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !587, file: !22, line: 493, baseType: !7, size: 32, offset: 7680)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !587, file: !22, line: 495, baseType: !45, size: 64, offset: 7744)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !587, file: !22, line: 496, baseType: !7, size: 32, offset: 7808)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !587, file: !22, line: 499, baseType: !7, size: 32, offset: 7840)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !587, file: !22, line: 500, baseType: !2191, size: 64, offset: 7872)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2193, line: 45, baseType: !2194)
!2193 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !587, file: !22, line: 503, baseType: !7, size: 32, offset: 7936)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !587, file: !22, line: 504, baseType: !2197, size: 64, offset: 8000)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2200, line: 96, size: 192, elements: !2201)
!2200 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2201 = !{!2202, !2203, !2256, !2259}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2199, file: !2200, line: 97, baseType: !7, size: 32)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2199, file: !2200, line: 98, baseType: !2204, size: 64, offset: 64)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2200, line: 24, size: 3072, elements: !2206)
!2206 = !{!2207, !2209, !2210, !2211, !2212, !2225, !2226, !2227, !2228, !2240, !2241, !2242, !2253, !2254, !2255}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2205, file: !2200, line: 26, baseType: !2208, size: 128)
!2208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !738, size: 128, elements: !2120)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2205, file: !2200, line: 27, baseType: !2208, size: 128, offset: 128)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2205, file: !2200, line: 28, baseType: !47, size: 32, offset: 256)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2205, file: !2200, line: 31, baseType: !84, size: 32, align: 512, offset: 512)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2205, file: !2200, line: 32, baseType: !2213, size: 960, offset: 576)
!2213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2214, line: 206, size: 960, elements: !2215)
!2214 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2215 = !{!2216, !2217, !2220, !2222, !2223, !2224}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2213, file: !2214, line: 207, baseType: !728, size: 64)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2213, file: !2214, line: 208, baseType: !2218, size: 256, offset: 64)
!2218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2219, size: 256, elements: !808)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2213, file: !2214, line: 209, baseType: !2221, size: 256, offset: 320)
!2221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 256, elements: !808)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2213, file: !2214, line: 213, baseType: !373, size: 64, offset: 576)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2213, file: !2214, line: 215, baseType: !1171, size: 256, offset: 640)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2213, file: !2214, line: 216, baseType: !108, size: 8, offset: 896)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2205, file: !2200, line: 33, baseType: !64, size: 64, offset: 1536)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2205, file: !2200, line: 34, baseType: !64, size: 64, offset: 1600)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2205, file: !2200, line: 35, baseType: !937, size: 8, offset: 1664)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2205, file: !2200, line: 36, baseType: !2229, size: 320, offset: 1728)
!2229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2230, line: 11, size: 320, elements: !2231)
!2230 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2231 = !{!2232, !2233, !2234, !2239}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2229, file: !2230, line: 16, baseType: !803, size: 128)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2229, file: !2230, line: 17, baseType: !64, size: 64, offset: 128)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2229, file: !2230, line: 18, baseType: !2235, size: 64, offset: 192)
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2236 = !DISubroutineType(types: !2237)
!2237 = !{null, !2238}
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2229, file: !2230, line: 19, baseType: !471, size: 32, offset: 256)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2205, file: !2200, line: 37, baseType: !1069, size: 256, offset: 2048)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2205, file: !2200, line: 38, baseType: !725, size: 128, align: 64, offset: 2304)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2205, file: !2200, line: 39, baseType: !2243, size: 64, offset: 2432)
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2200, line: 49, size: 768, elements: !2245)
!2245 = !{!2246, !2247, !2248, !2249, !2250, !2251, !2252}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2244, file: !2200, line: 50, baseType: !84, size: 32)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2244, file: !2200, line: 51, baseType: !2221, size: 256, offset: 64)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2244, file: !2200, line: 53, baseType: !2221, size: 256, offset: 320)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2244, file: !2200, line: 54, baseType: !64, size: 64, offset: 576)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2244, file: !2200, line: 55, baseType: !2243, size: 64, offset: 640)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2244, file: !2200, line: 56, baseType: !47, size: 32, offset: 704)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2244, file: !2200, line: 57, baseType: !47, size: 32, offset: 736)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2205, file: !2200, line: 40, baseType: !64, size: 64, offset: 2496)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2205, file: !2200, line: 42, baseType: !47, size: 32, offset: 2560)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2205, file: !2200, line: 43, baseType: !2198, size: 64, offset: 2624)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2199, file: !2200, line: 99, baseType: !2257, offset: 128)
!2257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2258, line: 211, elements: !1411)
!2258 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2199, file: !2200, line: 100, baseType: !2260, size: 64, offset: 128)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2200, line: 63, size: 3008, elements: !2262)
!2262 = !{!2263, !2264, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2294}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2261, file: !2200, line: 64, baseType: !2243, size: 64)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2261, file: !2200, line: 65, baseType: !2265, size: 192, offset: 64)
!2265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2243, size: 192, elements: !640)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2261, file: !2200, line: 67, baseType: !47, size: 32, offset: 256)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2261, file: !2200, line: 68, baseType: !747, size: 256, offset: 320)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2261, file: !2200, line: 69, baseType: !84, size: 32, offset: 576)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2261, file: !2200, line: 70, baseType: !747, size: 256, offset: 640)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2261, file: !2200, line: 71, baseType: !64, size: 64, offset: 896)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2261, file: !2200, line: 72, baseType: !64, size: 64, offset: 960)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2261, file: !2200, line: 73, baseType: !64, size: 64, offset: 1024)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2261, file: !2200, line: 74, baseType: !64, size: 64, offset: 1088)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2261, file: !2200, line: 75, baseType: !64, size: 64, offset: 1152)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2261, file: !2200, line: 76, baseType: !64, size: 64, offset: 1216)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2261, file: !2200, line: 77, baseType: !64, size: 64, offset: 1280)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2261, file: !2200, line: 78, baseType: !64, size: 64, offset: 1344)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2261, file: !2200, line: 79, baseType: !937, size: 8, offset: 1408)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2261, file: !2200, line: 80, baseType: !64, size: 64, offset: 1472)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2261, file: !2200, line: 81, baseType: !747, size: 256, offset: 1536)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2261, file: !2200, line: 82, baseType: !1108, size: 256, offset: 1792)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2261, file: !2200, line: 84, baseType: !74, size: 32, offset: 2048)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2261, file: !2200, line: 87, baseType: !64, size: 64, offset: 2112)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2261, file: !2200, line: 88, baseType: !64, size: 64, offset: 2176)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2261, file: !2200, line: 89, baseType: !2286, size: 704, offset: 2240)
!2286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1070, line: 111, size: 704, elements: !2287)
!2287 = !{!2288, !2289, !2290, !2293}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2286, file: !1070, line: 112, baseType: !1069, size: 256)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2286, file: !1070, line: 113, baseType: !2229, size: 320, offset: 256)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2286, file: !1070, line: 116, baseType: !2291, size: 64, offset: 576)
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2292 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1070, line: 18, flags: DIFlagFwdDecl)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2286, file: !1070, line: 117, baseType: !47, size: 32, offset: 640)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2261, file: !2200, line: 90, baseType: !2198, size: 64, offset: 2944)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !587, file: !22, line: 515, baseType: !2296, size: 64, offset: 8064)
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2298, line: 117, size: 128, elements: !2299)
!2298 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2299 = !{!2300, !2301, !2302}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2297, file: !2298, line: 118, baseType: !863, size: 32)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2297, file: !2298, line: 119, baseType: !863, size: 32, offset: 32)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2297, file: !2298, line: 120, baseType: !373, size: 64, offset: 64)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !587, file: !22, line: 516, baseType: !7, size: 32, offset: 8128)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !587, file: !22, line: 519, baseType: !7, size: 32, offset: 8160)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !587, file: !22, line: 520, baseType: !2306, size: 64, offset: 8192)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !587, file: !22, line: 523, baseType: !2308, size: 64, offset: 8256)
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !22, line: 523, flags: DIFlagFwdDecl)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !587, file: !22, line: 524, baseType: !7, size: 32, offset: 8320)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !587, file: !22, line: 525, baseType: !2313, size: 64, offset: 8384)
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !2316, line: 28, size: 192, elements: !2317)
!2316 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb3837c9edbef1074628f52e8cfdb75")
!2317 = !{!2318, !2319, !2320}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !2315, file: !2316, line: 29, baseType: !41, size: 64)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "eval_string", scope: !2315, file: !2316, line: 30, baseType: !41, size: 64, offset: 64)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "eval_value", scope: !2315, file: !2316, line: 31, baseType: !64, size: 64, offset: 128)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !587, file: !22, line: 526, baseType: !7, size: 32, offset: 8448)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !587, file: !22, line: 533, baseType: !45, size: 64, offset: 8512)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !587, file: !22, line: 534, baseType: !7, size: 32, offset: 8576)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !587, file: !22, line: 535, baseType: !2325, size: 64, offset: 8640)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !587, file: !22, line: 536, baseType: !7, size: 32, offset: 8704)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !587, file: !22, line: 539, baseType: !47, size: 32, offset: 8736)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !587, file: !22, line: 540, baseType: !2329, size: 64, offset: 8768)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2331, line: 32, size: 64, elements: !2332)
!2331 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2332 = !{!2333, !2334}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2330, file: !2331, line: 33, baseType: !863, size: 32)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2330, file: !2331, line: 34, baseType: !863, size: 32, offset: 32)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !587, file: !22, line: 563, baseType: !122, size: 128, offset: 8832)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !587, file: !22, line: 565, baseType: !122, size: 128, offset: 8960)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !587, file: !22, line: 568, baseType: !2338, size: 64, offset: 9088)
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2339, size: 64)
!2339 = !DISubroutineType(types: !2340)
!2340 = !{null}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !587, file: !22, line: 570, baseType: !74, size: 32, offset: 9152)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !563, file: !160, line: 2382, baseType: !562, size: 64, offset: 448)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !563, file: !160, line: 2383, baseType: !799, size: 64, offset: 512)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !563, file: !160, line: 2385, baseType: !2345, offset: 576)
!2345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2258, line: 206, elements: !1411)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !563, file: !160, line: 2386, baseType: !2345, offset: 576)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !563, file: !160, line: 2387, baseType: !2345, offset: 576)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !563, file: !160, line: 2388, baseType: !2349, offset: 576)
!2349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2345, elements: !640)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !563, file: !160, line: 2390, baseType: !2345, offset: 576)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !563, file: !160, line: 2391, baseType: !2345, offset: 576)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !563, file: !160, line: 2392, baseType: !2345, offset: 576)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !563, file: !160, line: 2393, baseType: !2345, offset: 576)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !552, file: !160, line: 1197, baseType: !2355, size: 64, offset: 384)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2357)
!2357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !160, line: 2057, size: 1664, elements: !2358)
!2358 = !{!2359, !2363, !2367, !2368, !2372, !2396, !2400, !2401, !2402, !2406, !2410, !2414, !2415, !2416, !2422, !2426, !2427, !2431, !2432, !2433, !2434, !2438, !2442, !2489, !2504, !2505}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2357, file: !160, line: 2058, baseType: !2360, size: 64)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{!402, !551}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2357, file: !160, line: 2059, baseType: !2364, size: 64, offset: 64)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = !DISubroutineType(types: !2366)
!2366 = !{null, !402}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2357, file: !160, line: 2060, baseType: !2364, size: 64, offset: 128)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2357, file: !160, line: 2062, baseType: !2369, size: 64, offset: 192)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = !DISubroutineType(types: !2371)
!2371 = !{null, !402, !47}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2357, file: !160, line: 2063, baseType: !2373, size: 64, offset: 256)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{!47, !402, !2376}
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !155, line: 42, size: 384, elements: !2378)
!2378 = !{!2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2387, !2388, !2389, !2390, !2391, !2392}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_write", scope: !2377, file: !155, line: 43, baseType: !373, size: 64)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "pages_skipped", scope: !2377, file: !155, line: 45, baseType: !373, size: 64, offset: 64)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !2377, file: !155, line: 52, baseType: !66, size: 64, offset: 128)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !2377, file: !155, line: 53, baseType: !66, size: 64, offset: 192)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "sync_mode", scope: !2377, file: !155, line: 55, baseType: !154, size: 32, offset: 256)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "for_kupdate", scope: !2377, file: !155, line: 57, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "for_background", scope: !2377, file: !155, line: 58, baseType: !7, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_writepages", scope: !2377, file: !155, line: 59, baseType: !7, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "for_reclaim", scope: !2377, file: !155, line: 60, baseType: !7, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "range_cyclic", scope: !2377, file: !155, line: 61, baseType: !7, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "for_sync", scope: !2377, file: !155, line: 62, baseType: !7, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "unpinned_fscache_wb", scope: !2377, file: !155, line: 63, baseType: !7, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_owner", scope: !2377, file: !155, line: 71, baseType: !7, size: 1, offset: 295, flags: DIFlagBitField, extraData: i64 288)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "swap_plug", scope: !2377, file: !155, line: 78, baseType: !2393, size: 64, offset: 320)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_iocb", file: !155, line: 78, flags: DIFlagFwdDecl)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2357, file: !160, line: 2064, baseType: !2397, size: 64, offset: 320)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = !DISubroutineType(types: !2399)
!2399 = !{!47, !402}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2357, file: !160, line: 2065, baseType: !2364, size: 64, offset: 384)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2357, file: !160, line: 2066, baseType: !582, size: 64, offset: 448)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2357, file: !160, line: 2067, baseType: !2403, size: 64, offset: 512)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{!47, !551, !47}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2357, file: !160, line: 2068, baseType: !2407, size: 64, offset: 576)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{!47, !551, !159}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2357, file: !160, line: 2069, baseType: !2411, size: 64, offset: 640)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = !DISubroutineType(types: !2413)
!2413 = !{!47, !551}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2357, file: !160, line: 2070, baseType: !2407, size: 64, offset: 704)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2357, file: !160, line: 2071, baseType: !2411, size: 64, offset: 768)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2357, file: !160, line: 2072, baseType: !2417, size: 64, offset: 832)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = !DISubroutineType(types: !2419)
!2419 = !{!47, !437, !2420}
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !160, line: 62, flags: DIFlagFwdDecl)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2357, file: !160, line: 2073, baseType: !2423, size: 64, offset: 896)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{!47, !551, !2130, !540}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2357, file: !160, line: 2074, baseType: !582, size: 64, offset: 960)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2357, file: !160, line: 2076, baseType: !2428, size: 64, offset: 1024)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DISubroutineType(types: !2430)
!2430 = !{!47, !1771, !437}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2357, file: !160, line: 2077, baseType: !2428, size: 64, offset: 1088)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2357, file: !160, line: 2078, baseType: !2428, size: 64, offset: 1152)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2357, file: !160, line: 2079, baseType: !2428, size: 64, offset: 1216)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2357, file: !160, line: 2081, baseType: !2435, size: 64, offset: 1280)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{!671, !551, !47, !540, !60, !66}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2357, file: !160, line: 2082, baseType: !2439, size: 64, offset: 1344)
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2440 = !DISubroutineType(types: !2441)
!2441 = !{!671, !551, !47, !41, !60, !66}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2357, file: !160, line: 2083, baseType: !2443, size: 64, offset: 1408)
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = !DISubroutineType(types: !2445)
!2445 = !{!2446, !402}
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !165, line: 296, size: 1664, elements: !2449)
!2449 = !{!2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2474, !2475, !2476}
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2448, file: !165, line: 297, baseType: !803, size: 128)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2448, file: !165, line: 298, baseType: !122, size: 128, offset: 128)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2448, file: !165, line: 299, baseType: !122, size: 128, offset: 256)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2448, file: !165, line: 300, baseType: !122, size: 128, offset: 384)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2448, file: !165, line: 301, baseType: !747, size: 256, offset: 512)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2448, file: !165, line: 302, baseType: !84, size: 32, offset: 768)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2448, file: !165, line: 303, baseType: !74, size: 32, offset: 800)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2448, file: !165, line: 304, baseType: !551, size: 64, offset: 832)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2448, file: !165, line: 305, baseType: !2459, size: 64, offset: 896)
!2459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !165, line: 68, size: 64, elements: !2460)
!2460 = !{!2461, !2473}
!2461 = !DIDerivedType(tag: DW_TAG_member, scope: !2459, file: !165, line: 69, baseType: !2462, size: 32)
!2462 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2459, file: !165, line: 69, size: 32, elements: !2463)
!2463 = !{!2464, !2465, !2466}
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2462, file: !165, line: 70, baseType: !408, size: 32)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2462, file: !165, line: 71, baseType: !417, size: 32)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2462, file: !165, line: 72, baseType: !2467, size: 32)
!2467 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2468, line: 24, baseType: !2469)
!2468 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2469 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2468, line: 22, size: 32, elements: !2470)
!2470 = !{!2471}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2469, file: !2468, line: 23, baseType: !2472, size: 32)
!2472 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2468, line: 20, baseType: !414)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2459, file: !165, line: 74, baseType: !164, size: 32, offset: 32)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2448, file: !165, line: 306, baseType: !66, size: 64, offset: 960)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2448, file: !165, line: 307, baseType: !64, size: 64, offset: 1024)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2448, file: !165, line: 308, baseType: !2477, size: 576, offset: 1088)
!2477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !165, line: 205, size: 576, elements: !2478)
!2478 = !{!2479, !2481, !2482, !2483, !2484, !2485, !2486, !2487, !2488}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2477, file: !165, line: 206, baseType: !2480, size: 64)
!2480 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !165, line: 66, baseType: !68)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2477, file: !165, line: 207, baseType: !2480, size: 64, offset: 64)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2477, file: !165, line: 208, baseType: !2480, size: 64, offset: 128)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2477, file: !165, line: 209, baseType: !2480, size: 64, offset: 192)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2477, file: !165, line: 210, baseType: !2480, size: 64, offset: 256)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2477, file: !165, line: 211, baseType: !2480, size: 64, offset: 320)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2477, file: !165, line: 212, baseType: !2480, size: 64, offset: 384)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2477, file: !165, line: 213, baseType: !894, size: 64, offset: 448)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2477, file: !165, line: 214, baseType: !894, size: 64, offset: 512)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2357, file: !160, line: 2085, baseType: !2490, size: 64, offset: 1472)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = !DISubroutineType(types: !2492)
!2492 = !{!373, !551, !2493}
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2495, line: 15, size: 256, elements: !2496)
!2495 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2496 = !{!2497, !2498, !2499, !2500, !2501}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2494, file: !2495, line: 16, baseType: !1632, size: 32)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2494, file: !2495, line: 19, baseType: !47, size: 32, offset: 32)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2494, file: !2495, line: 26, baseType: !64, size: 64, offset: 64)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2494, file: !2495, line: 33, baseType: !64, size: 64, offset: 128)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2494, file: !2495, line: 36, baseType: !2502, size: 64, offset: 192)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !133, line: 33, flags: DIFlagFwdDecl)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2357, file: !160, line: 2087, baseType: !2490, size: 64, offset: 1536)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2357, file: !160, line: 2089, baseType: !582, size: 64, offset: 1600)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !552, file: !160, line: 1198, baseType: !2507, size: 64, offset: 448)
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2509)
!2509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !165, line: 324, size: 704, elements: !2510)
!2510 = !{!2511, !2515, !2519, !2523, !2524, !2525, !2526, !2527, !2532, !2537, !2541}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2509, file: !165, line: 325, baseType: !2512, size: 64)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{!47, !2447}
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2509, file: !165, line: 326, baseType: !2516, size: 64, offset: 64)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = !DISubroutineType(types: !2518)
!2518 = !{!2447, !551, !47}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2509, file: !165, line: 327, baseType: !2520, size: 64, offset: 128)
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{null, !2447}
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2509, file: !165, line: 328, baseType: !2512, size: 64, offset: 192)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2509, file: !165, line: 329, baseType: !2512, size: 64, offset: 256)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2509, file: !165, line: 330, baseType: !2512, size: 64, offset: 320)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2509, file: !165, line: 331, baseType: !2403, size: 64, offset: 384)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2509, file: !165, line: 334, baseType: !2528, size: 64, offset: 448)
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = !DISubroutineType(types: !2530)
!2530 = !{!2531, !402}
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2509, file: !165, line: 335, baseType: !2533, size: 64, offset: 512)
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2534, size: 64)
!2534 = !DISubroutineType(types: !2535)
!2535 = !{!47, !402, !2536}
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2509, file: !165, line: 337, baseType: !2538, size: 64, offset: 576)
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = !DISubroutineType(types: !2540)
!2540 = !{!47, !402, !2531}
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2509, file: !165, line: 339, baseType: !2542, size: 64, offset: 640)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = !DISubroutineType(types: !2544)
!2544 = !{!47, !551, !2545}
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !552, file: !160, line: 1199, baseType: !2547, size: 64, offset: 512)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2549)
!2549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !165, line: 430, size: 704, elements: !2550)
!2550 = !{!2551, !2557, !2558, !2562, !2563, !2564, !2579, !2602, !2606, !2607, !2630}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2549, file: !165, line: 431, baseType: !2552, size: 64)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = !DISubroutineType(types: !2554)
!2554 = !{!47, !551, !47, !47, !2555}
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1196)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2549, file: !165, line: 432, baseType: !2403, size: 64, offset: 64)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2549, file: !165, line: 433, baseType: !2559, size: 64, offset: 128)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{!47, !551, !7}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2549, file: !165, line: 434, baseType: !2559, size: 64, offset: 192)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2549, file: !165, line: 435, baseType: !2403, size: 64, offset: 256)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2549, file: !165, line: 436, baseType: !2565, size: 64, offset: 320)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{!47, !551, !47, !2568}
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !165, line: 417, size: 256, elements: !2570)
!2570 = !{!2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2569, file: !165, line: 418, baseType: !47, size: 32)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2569, file: !165, line: 419, baseType: !7, size: 32, offset: 32)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2569, file: !165, line: 420, baseType: !7, size: 32, offset: 64)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2569, file: !165, line: 422, baseType: !7, size: 32, offset: 96)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2569, file: !165, line: 423, baseType: !7, size: 32, offset: 128)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2569, file: !165, line: 424, baseType: !7, size: 32, offset: 160)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2569, file: !165, line: 425, baseType: !7, size: 32, offset: 192)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2569, file: !165, line: 426, baseType: !7, size: 32, offset: 224)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2549, file: !165, line: 437, baseType: !2580, size: 64, offset: 384)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = !DISubroutineType(types: !2582)
!2582 = !{!47, !551, !2459, !2583}
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !165, line: 345, size: 960, elements: !2585)
!2585 = !{!2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2584, file: !165, line: 346, baseType: !47, size: 32)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2584, file: !165, line: 347, baseType: !371, size: 64, offset: 64)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2584, file: !165, line: 348, baseType: !371, size: 64, offset: 128)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2584, file: !165, line: 349, baseType: !371, size: 64, offset: 192)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2584, file: !165, line: 350, baseType: !371, size: 64, offset: 256)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2584, file: !165, line: 351, baseType: !371, size: 64, offset: 320)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2584, file: !165, line: 352, baseType: !371, size: 64, offset: 384)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2584, file: !165, line: 353, baseType: !744, size: 64, offset: 448)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2584, file: !165, line: 355, baseType: !744, size: 64, offset: 512)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2584, file: !165, line: 356, baseType: !47, size: 32, offset: 576)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2584, file: !165, line: 357, baseType: !47, size: 32, offset: 608)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2584, file: !165, line: 358, baseType: !371, size: 64, offset: 640)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2584, file: !165, line: 359, baseType: !371, size: 64, offset: 704)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2584, file: !165, line: 360, baseType: !371, size: 64, offset: 768)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2584, file: !165, line: 361, baseType: !744, size: 64, offset: 832)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2584, file: !165, line: 362, baseType: !47, size: 32, offset: 896)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2549, file: !165, line: 438, baseType: !2603, size: 64, offset: 448)
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = !DISubroutineType(types: !2605)
!2605 = !{!47, !551, !2545, !2583}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2549, file: !165, line: 440, baseType: !2580, size: 64, offset: 512)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2549, file: !165, line: 441, baseType: !2608, size: 64, offset: 576)
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2609 = !DISubroutineType(types: !2610)
!2610 = !{!47, !551, !2611}
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !165, line: 411, size: 1408, elements: !2613)
!2613 = !{!2614, !2615}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2612, file: !165, line: 412, baseType: !7, size: 32)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2612, file: !165, line: 413, baseType: !2616, size: 1344, offset: 64)
!2616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2617, size: 1344, elements: !640)
!2617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !165, line: 397, size: 448, elements: !2618)
!2618 = !{!2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2629}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2617, file: !165, line: 398, baseType: !7, size: 32)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2617, file: !165, line: 399, baseType: !7, size: 32, offset: 32)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2617, file: !165, line: 401, baseType: !7, size: 32, offset: 64)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2617, file: !165, line: 402, baseType: !7, size: 32, offset: 96)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2617, file: !165, line: 403, baseType: !7, size: 32, offset: 128)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2617, file: !165, line: 404, baseType: !7, size: 32, offset: 160)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2617, file: !165, line: 405, baseType: !7, size: 32, offset: 192)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2617, file: !165, line: 406, baseType: !368, size: 64, offset: 256)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2617, file: !165, line: 407, baseType: !2628, size: 64, offset: 320)
!2628 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !50, line: 132, baseType: !371)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2617, file: !165, line: 408, baseType: !2628, size: 64, offset: 384)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2549, file: !165, line: 442, baseType: !2559, size: 64, offset: 640)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !552, file: !160, line: 1200, baseType: !2632, size: 64, offset: 576)
!2632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2633, size: 64)
!2633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2634)
!2634 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !160, line: 54, flags: DIFlagFwdDecl)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !552, file: !160, line: 1201, baseType: !64, size: 64, offset: 640)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !552, file: !160, line: 1202, baseType: !64, size: 64, offset: 704)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !552, file: !160, line: 1203, baseType: !64, size: 64, offset: 768)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !552, file: !160, line: 1204, baseType: !437, size: 64, offset: 832)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !552, file: !160, line: 1205, baseType: !878, size: 320, offset: 896)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !552, file: !160, line: 1206, baseType: !47, size: 32, offset: 1216)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !552, file: !160, line: 1207, baseType: !74, size: 32, offset: 1248)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !552, file: !160, line: 1209, baseType: !45, size: 64, offset: 1280)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !552, file: !160, line: 1211, baseType: !2644, size: 64, offset: 1344)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2647)
!2647 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !160, line: 1211, flags: DIFlagFwdDecl)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !552, file: !160, line: 1223, baseType: !2649, size: 64, offset: 1408)
!2649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !454, line: 34, size: 64, elements: !2650)
!2650 = !{!2651}
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2649, file: !454, line: 35, baseType: !457, size: 64)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !552, file: !160, line: 1224, baseType: !122, size: 128, offset: 1472)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !552, file: !160, line: 1225, baseType: !2654, size: 64, offset: 1600)
!2654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2655, size: 64)
!2655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !2656, line: 40, size: 7424, elements: !2657)
!2656 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!2657 = !{!2658, !2660, !2661, !2664, !2668, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2695, !2696}
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !2655, file: !2656, line: 41, baseType: !2659, size: 64)
!2659 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !50, line: 131, baseType: !371)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !2655, file: !2656, line: 42, baseType: !2659, size: 64, offset: 64)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !2655, file: !2656, line: 43, baseType: !2662, size: 64, offset: 128)
!2662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2663, size: 64)
!2663 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1748, line: 1453, flags: DIFlagFwdDecl)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !2655, file: !2656, line: 44, baseType: !2665, size: 64, offset: 192)
!2665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2666, size: 64)
!2666 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2667, line: 74, flags: DIFlagFwdDecl)
!2667 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !2655, file: !2656, line: 45, baseType: !2669, size: 64, offset: 256)
!2669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2670, size: 64)
!2670 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !2656, line: 45, flags: DIFlagFwdDecl)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !2655, file: !2656, line: 46, baseType: !64, size: 64, offset: 320)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !2655, file: !2656, line: 47, baseType: !937, size: 8, offset: 384)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !2655, file: !2656, line: 48, baseType: !108, size: 8, offset: 392)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !2655, file: !2656, line: 49, baseType: !937, size: 8, offset: 400)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !2655, file: !2656, line: 50, baseType: !937, size: 8, offset: 408)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !2655, file: !2656, line: 51, baseType: !556, size: 32, offset: 416)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !2655, file: !2656, line: 52, baseType: !74, size: 32, offset: 448)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !2655, file: !2656, line: 53, baseType: !84, size: 32, offset: 480)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !2655, file: !2656, line: 54, baseType: !402, size: 64, offset: 512)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !2655, file: !2656, line: 55, baseType: !45, size: 64, offset: 576)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !2655, file: !2656, line: 56, baseType: !45, size: 64, offset: 640)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !2655, file: !2656, line: 57, baseType: !2683, size: 64, offset: 704)
!2683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2684, size: 64)
!2684 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2685)
!2685 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !2656, line: 57, flags: DIFlagFwdDecl)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !2655, file: !2656, line: 58, baseType: !747, size: 256, offset: 768)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !2655, file: !2656, line: 60, baseType: !47, size: 32, offset: 1024)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !2655, file: !2656, line: 61, baseType: !47, size: 32, offset: 1056)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !2655, file: !2656, line: 62, baseType: !605, size: 64, offset: 1088)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !2655, file: !2656, line: 65, baseType: !747, size: 256, offset: 1152)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !2655, file: !2656, line: 66, baseType: !551, size: 64, offset: 1408)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !2655, file: !2656, line: 68, baseType: !2693, size: 64, offset: 1472)
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2694 = !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !2656, line: 68, flags: DIFlagFwdDecl)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !2655, file: !2656, line: 72, baseType: !937, size: 8, offset: 1536)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !2655, file: !2656, line: 77, baseType: !2697, size: 5824, offset: 1600)
!2697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !177, line: 705, size: 5824, elements: !2698)
!2698 = !{!2699, !2700, !2702, !2705, !2706, !2759, !2829, !2830, !2831, !2832, !2833, !2840, !3004, !3017, !3027, !3031, !3033, !3034, !3035, !3039, !3046, !3047, !3050, !3053, !3057, !3161, !3162, !3163, !3164, !3165, !3166, !3196, !3197, !3198, !3201, !3204, !3213, !3214, !3215, !3216, !3217, !3218}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2697, file: !177, line: 706, baseType: !599, size: 512)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2697, file: !177, line: 707, baseType: !2701, size: 64, offset: 512)
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2697, file: !177, line: 709, baseType: !2703, size: 64, offset: 576)
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2704 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !177, line: 37, flags: DIFlagFwdDecl)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2697, file: !177, line: 711, baseType: !41, size: 64, offset: 640)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2697, file: !177, line: 712, baseType: !2707, size: 64, offset: 704)
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2709)
!2709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !177, line: 89, size: 384, elements: !2710)
!2710 = !{!2711, !2712, !2713, !2719, !2724, !2728}
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2709, file: !177, line: 90, baseType: !41, size: 64)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2709, file: !177, line: 91, baseType: !684, size: 64, offset: 64)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2709, file: !177, line: 92, baseType: !2714, size: 64, offset: 128)
!2714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2715, size: 64)
!2715 = !DISubroutineType(types: !2716)
!2716 = !{!47, !2717, !635}
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2697)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2709, file: !177, line: 93, baseType: !2720, size: 64, offset: 192)
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2721 = !DISubroutineType(types: !2722)
!2722 = !{!540, !2717, !2723, !1133, !1134}
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2709, file: !177, line: 95, baseType: !2725, size: 64, offset: 256)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = !DISubroutineType(types: !2727)
!2727 = !{null, !2701}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2709, file: !177, line: 97, baseType: !2729, size: 64, offset: 320)
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2730 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2731)
!2731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !189, line: 286, size: 1472, elements: !2732)
!2732 = !{!2733, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758}
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2731, file: !189, line: 287, baseType: !2734, size: 64)
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2735, size: 64)
!2735 = !DISubroutineType(types: !2736)
!2736 = !{!47, !2701}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2731, file: !189, line: 288, baseType: !2725, size: 64, offset: 64)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2731, file: !189, line: 289, baseType: !2734, size: 64, offset: 128)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2731, file: !189, line: 290, baseType: !2734, size: 64, offset: 192)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2731, file: !189, line: 291, baseType: !2734, size: 64, offset: 256)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2731, file: !189, line: 292, baseType: !2734, size: 64, offset: 320)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2731, file: !189, line: 293, baseType: !2734, size: 64, offset: 384)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2731, file: !189, line: 294, baseType: !2734, size: 64, offset: 448)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2731, file: !189, line: 295, baseType: !2734, size: 64, offset: 512)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2731, file: !189, line: 296, baseType: !2734, size: 64, offset: 576)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2731, file: !189, line: 297, baseType: !2734, size: 64, offset: 640)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2731, file: !189, line: 298, baseType: !2734, size: 64, offset: 704)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2731, file: !189, line: 299, baseType: !2734, size: 64, offset: 768)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2731, file: !189, line: 300, baseType: !2734, size: 64, offset: 832)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2731, file: !189, line: 301, baseType: !2734, size: 64, offset: 896)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2731, file: !189, line: 302, baseType: !2734, size: 64, offset: 960)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2731, file: !189, line: 303, baseType: !2734, size: 64, offset: 1024)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2731, file: !189, line: 304, baseType: !2734, size: 64, offset: 1088)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2731, file: !189, line: 305, baseType: !2734, size: 64, offset: 1152)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2731, file: !189, line: 306, baseType: !2734, size: 64, offset: 1216)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2731, file: !189, line: 307, baseType: !2734, size: 64, offset: 1280)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2731, file: !189, line: 308, baseType: !2734, size: 64, offset: 1344)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2731, file: !189, line: 309, baseType: !2734, size: 64, offset: 1408)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2697, file: !177, line: 714, baseType: !2760, size: 64, offset: 768)
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2761, size: 64)
!2761 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2762)
!2762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2763, line: 80, size: 1344, elements: !2764)
!2763 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2764 = !{!2765, !2766, !2767, !2768, !2769, !2770, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2828}
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2762, file: !2763, line: 81, baseType: !41, size: 64)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2762, file: !2763, line: 82, baseType: !41, size: 64, offset: 64)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2762, file: !2763, line: 83, baseType: !684, size: 64, offset: 128)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2762, file: !2763, line: 84, baseType: !684, size: 64, offset: 192)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2762, file: !2763, line: 85, baseType: !684, size: 64, offset: 256)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2762, file: !2763, line: 87, baseType: !2771, size: 64, offset: 320)
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2772, size: 64)
!2772 = !DISubroutineType(types: !2773)
!2773 = !{!47, !2701, !2774}
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !171, line: 96, size: 1152, elements: !2776)
!2776 = !{!2777, !2778, !2779, !2780, !2781, !2782, !2783, !2787, !2791, !2792, !2793, !2794, !2795, !2803, !2804, !2805, !2806, !2807, !2808}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2775, file: !171, line: 97, baseType: !41, size: 64)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2775, file: !171, line: 98, baseType: !2760, size: 64, offset: 64)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2775, file: !171, line: 100, baseType: !586, size: 64, offset: 128)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2775, file: !171, line: 101, baseType: !41, size: 64, offset: 192)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2775, file: !171, line: 103, baseType: !937, size: 8, offset: 256)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2775, file: !171, line: 104, baseType: !170, size: 32, offset: 288)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2775, file: !171, line: 106, baseType: !2784, size: 64, offset: 320)
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2785 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2786)
!2786 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !171, line: 106, flags: DIFlagFwdDecl)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2775, file: !171, line: 107, baseType: !2788, size: 64, offset: 384)
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2789 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2790)
!2790 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !171, line: 107, flags: DIFlagFwdDecl)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2775, file: !171, line: 109, baseType: !2734, size: 64, offset: 448)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2775, file: !171, line: 110, baseType: !2725, size: 64, offset: 512)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2775, file: !171, line: 111, baseType: !2734, size: 64, offset: 576)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2775, file: !171, line: 112, baseType: !2725, size: 64, offset: 640)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2775, file: !171, line: 113, baseType: !2796, size: 64, offset: 704)
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2797 = !DISubroutineType(types: !2798)
!2798 = !{!47, !2701, !2799}
!2799 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !189, line: 60, baseType: !2800)
!2800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !189, line: 58, size: 32, elements: !2801)
!2801 = !{!2802}
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2800, file: !189, line: 59, baseType: !47, size: 32)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2775, file: !171, line: 114, baseType: !2734, size: 64, offset: 768)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2775, file: !171, line: 115, baseType: !684, size: 64, offset: 832)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2775, file: !171, line: 116, baseType: !684, size: 64, offset: 896)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2775, file: !171, line: 118, baseType: !2729, size: 64, offset: 960)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2775, file: !171, line: 119, baseType: !2725, size: 64, offset: 1024)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2775, file: !171, line: 121, baseType: !2809, size: 64, offset: 1088)
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !171, line: 121, flags: DIFlagFwdDecl)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2762, file: !2763, line: 88, baseType: !2714, size: 64, offset: 384)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2762, file: !2763, line: 89, baseType: !2734, size: 64, offset: 448)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2762, file: !2763, line: 90, baseType: !2725, size: 64, offset: 512)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2762, file: !2763, line: 91, baseType: !2725, size: 64, offset: 576)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2762, file: !2763, line: 92, baseType: !2725, size: 64, offset: 640)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2762, file: !2763, line: 94, baseType: !2734, size: 64, offset: 704)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2762, file: !2763, line: 95, baseType: !2734, size: 64, offset: 768)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2762, file: !2763, line: 97, baseType: !2796, size: 64, offset: 832)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2762, file: !2763, line: 98, baseType: !2734, size: 64, offset: 896)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2762, file: !2763, line: 100, baseType: !2734, size: 64, offset: 960)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2762, file: !2763, line: 102, baseType: !2734, size: 64, offset: 1024)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2762, file: !2763, line: 103, baseType: !2725, size: 64, offset: 1088)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2762, file: !2763, line: 105, baseType: !2729, size: 64, offset: 1152)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2762, file: !2763, line: 107, baseType: !2825, size: 64, offset: 1216)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2827)
!2827 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2763, line: 107, flags: DIFlagFwdDecl)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2762, file: !2763, line: 109, baseType: !937, size: 8, offset: 1280)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2697, file: !177, line: 715, baseType: !2774, size: 64, offset: 832)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2697, file: !177, line: 717, baseType: !45, size: 64, offset: 896)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2697, file: !177, line: 719, baseType: !45, size: 64, offset: 960)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2697, file: !177, line: 721, baseType: !747, size: 256, offset: 1024)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2697, file: !177, line: 725, baseType: !2834, size: 448, offset: 1280)
!2834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !177, line: 517, size: 448, elements: !2835)
!2835 = !{!2836, !2837, !2838, !2839}
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2834, file: !177, line: 518, baseType: !122, size: 128)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2834, file: !177, line: 519, baseType: !122, size: 128, offset: 128)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2834, file: !177, line: 520, baseType: !122, size: 128, offset: 256)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2834, file: !177, line: 521, baseType: !176, size: 32, offset: 384)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2697, file: !177, line: 726, baseType: !2841, size: 2496, offset: 1728)
!2841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !189, line: 663, size: 2496, elements: !2842)
!2842 = !{!2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2887, !2888, !2889, !2890, !2891, !2892, !2963, !2964, !2965, !2966, !2967, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2997, !3001}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2841, file: !189, line: 664, baseType: !2799, size: 32)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2841, file: !189, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2841, file: !189, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2841, file: !189, line: 667, baseType: !937, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2841, file: !189, line: 668, baseType: !937, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2841, file: !189, line: 669, baseType: !937, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2841, file: !189, line: 670, baseType: !937, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2841, file: !189, line: 671, baseType: !937, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2841, file: !189, line: 672, baseType: !937, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2841, file: !189, line: 673, baseType: !937, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2841, file: !189, line: 674, baseType: !937, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2841, file: !189, line: 675, baseType: !471, size: 32, offset: 64)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2841, file: !189, line: 676, baseType: !84, size: 32, offset: 96)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2841, file: !189, line: 678, baseType: !122, size: 128, offset: 128)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2841, file: !189, line: 679, baseType: !1108, size: 256, offset: 256)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2841, file: !189, line: 680, baseType: !2859, size: 64, offset: 512)
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2860, size: 64)
!2860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2861, line: 43, size: 1536, elements: !2862)
!2861 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!2862 = !{!2863, !2864, !2865, !2866, !2867, !2870, !2871, !2872, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886}
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2860, file: !2861, line: 44, baseType: !41, size: 64)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2860, file: !2861, line: 45, baseType: !47, size: 32, offset: 64)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2860, file: !2861, line: 46, baseType: !122, size: 128, offset: 128)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2860, file: !2861, line: 47, baseType: !84, size: 32, offset: 256)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2860, file: !2861, line: 48, baseType: !2868, size: 64, offset: 320)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !189, line: 629, flags: DIFlagFwdDecl)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2860, file: !2861, line: 49, baseType: !2229, size: 320, offset: 384)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2860, file: !2861, line: 50, baseType: !64, size: 64, offset: 704)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2860, file: !2861, line: 51, baseType: !2873, size: 64, offset: 768)
!2873 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2874, line: 29, baseType: !744)
!2874 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2860, file: !2861, line: 52, baseType: !2873, size: 64, offset: 832)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2860, file: !2861, line: 53, baseType: !2873, size: 64, offset: 896)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2860, file: !2861, line: 54, baseType: !2873, size: 64, offset: 960)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2860, file: !2861, line: 55, baseType: !2873, size: 64, offset: 1024)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2860, file: !2861, line: 56, baseType: !64, size: 64, offset: 1088)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2860, file: !2861, line: 57, baseType: !64, size: 64, offset: 1152)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2860, file: !2861, line: 58, baseType: !64, size: 64, offset: 1216)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2860, file: !2861, line: 59, baseType: !64, size: 64, offset: 1280)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2860, file: !2861, line: 60, baseType: !64, size: 64, offset: 1344)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2860, file: !2861, line: 61, baseType: !2701, size: 64, offset: 1408)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2860, file: !2861, line: 62, baseType: !937, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2860, file: !2861, line: 63, baseType: !937, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2841, file: !189, line: 681, baseType: !937, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2841, file: !189, line: 682, baseType: !937, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2841, file: !189, line: 683, baseType: !937, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2841, file: !189, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2841, file: !189, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2841, file: !189, line: 690, baseType: !2893, size: 512, offset: 640)
!2893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !184, line: 118, size: 512, elements: !2894)
!2894 = !{!2895, !2901, !2902, !2907, !2959, !2960, !2961, !2962}
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2893, file: !184, line: 119, baseType: !2896, size: 256)
!2896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2897, line: 9, size: 256, elements: !2898)
!2897 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2898 = !{!2899, !2900}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2896, file: !2897, line: 10, baseType: !870, size: 192, align: 64)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2896, file: !2897, line: 11, baseType: !2873, size: 64, offset: 192)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2893, file: !184, line: 120, baseType: !2873, size: 64, offset: 256)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2893, file: !184, line: 121, baseType: !2903, size: 64, offset: 320)
!2903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2904, size: 64)
!2904 = !DISubroutineType(types: !2905)
!2905 = !{!183, !2906}
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2893, file: !184, line: 122, baseType: !2908, size: 64, offset: 384)
!2908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2909, size: 64)
!2909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !184, line: 159, size: 512, align: 512, elements: !2910)
!2910 = !{!2911, !2936, !2937, !2940, !2945, !2946, !2954, !2958}
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2909, file: !184, line: 160, baseType: !2912, size: 64)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !184, line: 215, size: 4608, align: 512, elements: !2914)
!2914 = !{!2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2913, file: !184, line: 216, baseType: !752, size: 32)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2913, file: !184, line: 217, baseType: !7, size: 32, offset: 32)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2913, file: !184, line: 218, baseType: !7, size: 32, offset: 64)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2913, file: !184, line: 219, baseType: !7, size: 32, offset: 96)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2913, file: !184, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2913, file: !184, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2913, file: !184, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2913, file: !184, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2913, file: !184, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2913, file: !184, line: 226, baseType: !7, size: 32, offset: 160)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2913, file: !184, line: 227, baseType: !51, size: 16, offset: 192)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2913, file: !184, line: 228, baseType: !51, size: 16, offset: 208)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2913, file: !184, line: 229, baseType: !7, size: 32, offset: 224)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2913, file: !184, line: 235, baseType: !2873, size: 64, offset: 256)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2913, file: !184, line: 236, baseType: !2906, size: 64, offset: 320)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2913, file: !184, line: 237, baseType: !2873, size: 64, offset: 384)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2913, file: !184, line: 238, baseType: !2906, size: 64, offset: 448)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2913, file: !184, line: 239, baseType: !2933, size: 4096, align: 512, offset: 512)
!2933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2909, size: 4096, align: 512, elements: !2934)
!2934 = !{!2935}
!2935 = !DISubrange(count: 8)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2909, file: !184, line: 161, baseType: !7, size: 32, offset: 64)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2909, file: !184, line: 162, baseType: !2938, size: 32, offset: 96)
!2938 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !50, line: 32, baseType: !2939)
!2939 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !62, line: 96, baseType: !47)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2909, file: !184, line: 163, baseType: !2941, size: 32, offset: 128)
!2941 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !444, line: 274, baseType: !2942)
!2942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !444, line: 274, size: 32, elements: !2943)
!2943 = !{!2944}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2942, file: !444, line: 274, baseType: !448, size: 32)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2909, file: !184, line: 164, baseType: !2906, size: 64, offset: 192)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2909, file: !184, line: 165, baseType: !2947, size: 128, offset: 256)
!2947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2897, line: 14, size: 128, elements: !2948)
!2948 = !{!2949}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2947, file: !2897, line: 15, baseType: !2950, size: 128)
!2950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !871, line: 26, size: 128, elements: !2951)
!2951 = !{!2952, !2953}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2950, file: !871, line: 27, baseType: !1150, size: 64)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !2950, file: !871, line: 28, baseType: !875, size: 64, offset: 64)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2909, file: !184, line: 166, baseType: !2955, size: 64, offset: 384)
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2956, size: 64)
!2956 = !DISubroutineType(types: !2957)
!2957 = !{!2873}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2909, file: !184, line: 167, baseType: !2873, size: 64, offset: 448)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2893, file: !184, line: 123, baseType: !108, size: 8, offset: 448)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2893, file: !184, line: 124, baseType: !108, size: 8, offset: 456)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2893, file: !184, line: 125, baseType: !108, size: 8, offset: 464)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2893, file: !184, line: 126, baseType: !108, size: 8, offset: 472)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2841, file: !189, line: 691, baseType: !371, size: 64, offset: 1152)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2841, file: !189, line: 692, baseType: !1069, size: 256, offset: 1216)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2841, file: !189, line: 693, baseType: !79, size: 192, offset: 1472)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2841, file: !189, line: 694, baseType: !2868, size: 64, offset: 1664)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2841, file: !189, line: 695, baseType: !74, size: 32, offset: 1728)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2841, file: !189, line: 696, baseType: !74, size: 32, offset: 1760)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2841, file: !189, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2841, file: !189, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2841, file: !189, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2841, file: !189, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2841, file: !189, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2841, file: !189, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2841, file: !189, line: 703, baseType: !937, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2841, file: !189, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2841, file: !189, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2841, file: !189, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2841, file: !189, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2841, file: !189, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2841, file: !189, line: 709, baseType: !7, size: 32, offset: 1824)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2841, file: !189, line: 710, baseType: !188, size: 32, offset: 1856)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2841, file: !189, line: 711, baseType: !196, size: 32, offset: 1888)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2841, file: !189, line: 712, baseType: !196, size: 32, offset: 1920)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2841, file: !189, line: 713, baseType: !47, size: 32, offset: 1952)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2841, file: !189, line: 714, baseType: !47, size: 32, offset: 1984)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2841, file: !189, line: 715, baseType: !371, size: 64, offset: 2048)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2841, file: !189, line: 716, baseType: !371, size: 64, offset: 2112)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2841, file: !189, line: 717, baseType: !371, size: 64, offset: 2176)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2841, file: !189, line: 718, baseType: !371, size: 64, offset: 2240)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2841, file: !189, line: 720, baseType: !2992, size: 64, offset: 2304)
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2993, size: 64)
!2993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !189, line: 632, size: 64, elements: !2994)
!2994 = !{!2995, !2996}
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2993, file: !189, line: 633, baseType: !84, size: 32)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2993, file: !189, line: 634, baseType: !7, size: 32, offset: 32)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2841, file: !189, line: 721, baseType: !2998, size: 64, offset: 2368)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = !DISubroutineType(types: !3000)
!3000 = !{null, !2701, !863}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2841, file: !189, line: 722, baseType: !3002, size: 64, offset: 2432)
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !189, line: 722, flags: DIFlagFwdDecl)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2697, file: !177, line: 727, baseType: !3005, size: 64, offset: 4224)
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3006, size: 64)
!3006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !189, line: 742, size: 1792, elements: !3007)
!3007 = !{!3008, !3009, !3010, !3014, !3015, !3016}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3006, file: !189, line: 743, baseType: !2731, size: 1472)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3006, file: !189, line: 744, baseType: !2734, size: 64, offset: 1472)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3006, file: !189, line: 745, baseType: !3011, size: 64, offset: 1536)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{null, !2701, !937}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3006, file: !189, line: 746, baseType: !2734, size: 64, offset: 1600)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3006, file: !189, line: 747, baseType: !2725, size: 64, offset: 1664)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3006, file: !189, line: 748, baseType: !2725, size: 64, offset: 1728)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2697, file: !177, line: 736, baseType: !3018, size: 128, offset: 4288)
!3018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !177, line: 529, size: 128, elements: !3019)
!3019 = !{!3020, !3024}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3018, file: !177, line: 531, baseType: !3021, size: 64)
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64)
!3022 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3023, line: 13, flags: DIFlagFwdDecl)
!3023 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3018, file: !177, line: 532, baseType: !3025, size: 64, offset: 64)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3026 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !177, line: 49, flags: DIFlagFwdDecl)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2697, file: !177, line: 738, baseType: !3028, size: 64, offset: 4416)
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3029 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3030)
!3030 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !177, line: 738, flags: DIFlagFwdDecl)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2697, file: !177, line: 740, baseType: !3032, size: 64, offset: 4480)
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2697, file: !177, line: 741, baseType: !371, size: 64, offset: 4544)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2697, file: !177, line: 746, baseType: !371, size: 64, offset: 4608)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2697, file: !177, line: 747, baseType: !3036, size: 64, offset: 4672)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3038)
!3038 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !177, line: 747, flags: DIFlagFwdDecl)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2697, file: !177, line: 749, baseType: !3040, size: 64, offset: 4736)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !177, line: 428, size: 128, elements: !3042)
!3042 = !{!3043, !3044, !3045}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3041, file: !177, line: 433, baseType: !7, size: 32)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3041, file: !177, line: 434, baseType: !7, size: 32, offset: 32)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3041, file: !177, line: 435, baseType: !64, size: 64, offset: 64)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2697, file: !177, line: 751, baseType: !122, size: 128, offset: 4800)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2697, file: !177, line: 762, baseType: !3048, size: 64, offset: 4928)
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!3049 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !177, line: 762, flags: DIFlagFwdDecl)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2697, file: !177, line: 770, baseType: !3051, offset: 4992)
!3051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3052, line: 5, elements: !1411)
!3052 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2697, file: !177, line: 772, baseType: !3054, size: 64, offset: 4992)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3056, line: 18, flags: DIFlagFwdDecl)
!3056 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2697, file: !177, line: 773, baseType: !3058, size: 64, offset: 5056)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3060, line: 41, size: 512, elements: !3061)
!3060 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!3061 = !{!3062, !3063, !3157, !3158, !3159, !3160}
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3059, file: !3060, line: 42, baseType: !3058, size: 64)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3059, file: !3060, line: 43, baseType: !3064, size: 64, offset: 64)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3066)
!3066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3060, line: 125, size: 1408, elements: !3067)
!3067 = !{!3068, !3072, !3076, !3082, !3086, !3087, !3092, !3096, !3100, !3104, !3108, !3109, !3113, !3117, !3121, !3132, !3133, !3134, !3135, !3145, !3149, !3153}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3066, file: !3060, line: 126, baseType: !3069, size: 64)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3070 = !DISubroutineType(types: !3071)
!3071 = !{!3058, !3058}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3066, file: !3060, line: 127, baseType: !3073, size: 64, offset: 64)
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3074, size: 64)
!3074 = !DISubroutineType(types: !3075)
!3075 = !{null, !3058}
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3066, file: !3060, line: 128, baseType: !3077, size: 64, offset: 128)
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3078 = !DISubroutineType(types: !3079)
!3079 = !{!937, !3080}
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3059)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3066, file: !3060, line: 129, baseType: !3083, size: 64, offset: 192)
!3083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3084, size: 64)
!3084 = !DISubroutineType(types: !3085)
!3085 = !{!1526, !3080, !2717}
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !3066, file: !3060, line: 131, baseType: !3077, size: 64, offset: 256)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !3066, file: !3060, line: 133, baseType: !3088, size: 64, offset: 320)
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64)
!3089 = !DISubroutineType(types: !3090)
!3090 = !{!3091, !3080}
!3091 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !3060, line: 132, flags: DIFlagFwdDecl)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3066, file: !3060, line: 134, baseType: !3093, size: 64, offset: 384)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = !DISubroutineType(types: !3095)
!3095 = !{!937, !3080, !41}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3066, file: !3060, line: 136, baseType: !3097, size: 64, offset: 448)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{!47, !3080, !41, !7, !45, !60}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3066, file: !3060, line: 141, baseType: !3101, size: 64, offset: 512)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = !DISubroutineType(types: !3103)
!3103 = !{!47, !3080, !41, !2306, !60}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3066, file: !3060, line: 144, baseType: !3105, size: 64, offset: 576)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{!41, !3080}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3066, file: !3060, line: 145, baseType: !3105, size: 64, offset: 640)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3066, file: !3060, line: 146, baseType: !3110, size: 64, offset: 704)
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = !DISubroutineType(types: !3112)
!3112 = !{!3058, !3080}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3066, file: !3060, line: 148, baseType: !3114, size: 64, offset: 768)
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3115 = !DISubroutineType(types: !3116)
!3116 = !{!3058, !3080, !3058}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3066, file: !3060, line: 151, baseType: !3118, size: 64, offset: 832)
!3118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3119, size: 64)
!3119 = !DISubroutineType(types: !3120)
!3120 = !{!3058, !3080, !41}
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3066, file: !3060, line: 153, baseType: !3122, size: 64, offset: 896)
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!3123 = !DISubroutineType(types: !3124)
!3124 = !{!47, !3080, !41, !41, !7, !7, !3125}
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3060, line: 94, size: 640, elements: !3127)
!3127 = !{!3128, !3129, !3130}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3126, file: !3060, line: 95, baseType: !3058, size: 64)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3126, file: !3060, line: 96, baseType: !7, size: 32, offset: 64)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3126, file: !3060, line: 97, baseType: !3131, size: 512, offset: 128)
!3131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, size: 512, elements: !2934)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3066, file: !3060, line: 158, baseType: !3114, size: 64, offset: 960)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3066, file: !3060, line: 161, baseType: !3110, size: 64, offset: 1024)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3066, file: !3060, line: 163, baseType: !3069, size: 64, offset: 1088)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3066, file: !3060, line: 164, baseType: !3136, size: 64, offset: 1152)
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3137 = !DISubroutineType(types: !3138)
!3138 = !{!47, !3080, !3139}
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!3140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3060, line: 73, size: 128, elements: !3141)
!3141 = !{!3142, !3143, !3144}
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3140, file: !3060, line: 74, baseType: !7, size: 32)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3140, file: !3060, line: 75, baseType: !7, size: 32, offset: 32)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3140, file: !3060, line: 76, baseType: !3080, size: 64, offset: 64)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !3066, file: !3060, line: 166, baseType: !3146, size: 64, offset: 1216)
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3147 = !DISubroutineType(types: !3148)
!3148 = !{!45, !3058, !47}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !3066, file: !3060, line: 167, baseType: !3150, size: 64, offset: 1280)
!3150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3151, size: 64)
!3151 = !DISubroutineType(types: !3152)
!3152 = !{!47, !3080, !7}
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3066, file: !3060, line: 168, baseType: !3154, size: 64, offset: 1344)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3155 = !DISubroutineType(types: !3156)
!3156 = !{!47, !3058}
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3059, file: !3060, line: 44, baseType: !2701, size: 64, offset: 128)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3059, file: !3060, line: 45, baseType: !122, size: 128, offset: 192)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3059, file: !3060, line: 46, baseType: !122, size: 128, offset: 320)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3059, file: !3060, line: 47, baseType: !108, size: 8, offset: 448)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2697, file: !177, line: 776, baseType: !47, size: 32, offset: 5120)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2697, file: !177, line: 778, baseType: !556, size: 32, offset: 5152)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2697, file: !177, line: 779, baseType: !471, size: 32, offset: 5184)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2697, file: !177, line: 781, baseType: !84, size: 32, offset: 5216)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2697, file: !177, line: 782, baseType: !122, size: 128, offset: 5248)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2697, file: !177, line: 784, baseType: !3167, size: 64, offset: 5376)
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!3168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3169)
!3169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3170, line: 52, size: 768, elements: !3171)
!3170 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3171 = !{!3172, !3173, !3174, !3175, !3176, !3180, !3184, !3185, !3186, !3187, !3191, !3195}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3169, file: !3170, line: 53, baseType: !41, size: 64)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3169, file: !3170, line: 55, baseType: !684, size: 64, offset: 64)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3169, file: !3170, line: 56, baseType: !684, size: 64, offset: 128)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3169, file: !3170, line: 58, baseType: !2714, size: 64, offset: 192)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3169, file: !3170, line: 59, baseType: !3177, size: 64, offset: 256)
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3178 = !DISubroutineType(types: !3179)
!3179 = !{!540, !2717, !2723}
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3169, file: !3170, line: 61, baseType: !3181, size: 64, offset: 320)
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3182, size: 64)
!3182 = !DISubroutineType(types: !3183)
!3183 = !{null, !3167}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3169, file: !3170, line: 62, baseType: !2725, size: 64, offset: 384)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3169, file: !3170, line: 64, baseType: !2734, size: 64, offset: 448)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3169, file: !3170, line: 66, baseType: !1851, size: 64, offset: 512)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3169, file: !3170, line: 67, baseType: !3188, size: 64, offset: 576)
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3189 = !DISubroutineType(types: !3190)
!3190 = !{!1526, !2717}
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3169, file: !3170, line: 69, baseType: !3192, size: 64, offset: 640)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = !DISubroutineType(types: !3194)
!3194 = !{null, !2717, !1133, !1134}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3169, file: !3170, line: 71, baseType: !2729, size: 64, offset: 704)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2697, file: !177, line: 785, baseType: !684, size: 64, offset: 5440)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2697, file: !177, line: 787, baseType: !2725, size: 64, offset: 5504)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2697, file: !177, line: 788, baseType: !3199, size: 64, offset: 5568)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !177, line: 46, flags: DIFlagFwdDecl)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2697, file: !177, line: 789, baseType: !3202, size: 64, offset: 5632)
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3203, size: 64)
!3203 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !177, line: 48, flags: DIFlagFwdDecl)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2697, file: !177, line: 791, baseType: !3205, size: 64, offset: 5696)
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3206, size: 64)
!3206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !177, line: 597, size: 128, elements: !3207)
!3207 = !{!3208, !3209, !3210, !3211, !3212}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3206, file: !177, line: 598, baseType: !203, size: 32)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3206, file: !177, line: 599, baseType: !212, size: 32, offset: 32)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3206, file: !177, line: 600, baseType: !217, size: 32, offset: 64)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3206, file: !177, line: 601, baseType: !937, size: 8, offset: 96)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3206, file: !177, line: 602, baseType: !937, size: 8, offset: 104)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2697, file: !177, line: 793, baseType: !222, size: 32, offset: 5760)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2697, file: !177, line: 795, baseType: !937, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2697, file: !177, line: 796, baseType: !937, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2697, file: !177, line: 797, baseType: !937, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2697, file: !177, line: 798, baseType: !937, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2697, file: !177, line: 799, baseType: !937, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !552, file: !160, line: 1226, baseType: !3220, size: 64, offset: 1664)
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3221, size: 64)
!3221 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !160, line: 1226, flags: DIFlagFwdDecl)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !552, file: !160, line: 1227, baseType: !3223, size: 64, offset: 1728)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !229, line: 163, size: 6848, elements: !3225)
!3225 = !{!3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3272, !3273, !3274, !3275, !3277, !3278, !3279}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3224, file: !229, line: 164, baseType: !371, size: 64)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3224, file: !229, line: 165, baseType: !870, size: 192, align: 64, offset: 64)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !3224, file: !229, line: 166, baseType: !122, size: 128, offset: 256)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3224, file: !229, line: 167, baseType: !64, size: 64, offset: 384)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !3224, file: !229, line: 168, baseType: !64, size: 64, offset: 448)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3224, file: !229, line: 170, baseType: !1979, size: 32, offset: 512)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !3224, file: !229, line: 171, baseType: !7, size: 32, offset: 544)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !3224, file: !229, line: 172, baseType: !7, size: 32, offset: 576)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !3224, file: !229, line: 173, baseType: !7, size: 32, offset: 608)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !3224, file: !229, line: 173, baseType: !7, size: 32, offset: 640)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !3224, file: !229, line: 179, baseType: !738, size: 64, offset: 704)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "last_bdp_sleep", scope: !3224, file: !229, line: 184, baseType: !64, size: 64, offset: 768)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !3224, file: !229, line: 186, baseType: !3239, size: 4672, offset: 832)
!3239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !229, line: 105, size: 4672, elements: !3240)
!3240 = !{!3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3265, !3266, !3267, !3268, !3269, !3270, !3271}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !3239, file: !229, line: 106, baseType: !3223, size: 64)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3239, file: !229, line: 108, baseType: !64, size: 64, offset: 64)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !3239, file: !229, line: 109, baseType: !64, size: 64, offset: 128)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !3239, file: !229, line: 111, baseType: !122, size: 128, offset: 192)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !3239, file: !229, line: 112, baseType: !122, size: 128, offset: 320)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !3239, file: !229, line: 113, baseType: !122, size: 128, offset: 448)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !3239, file: !229, line: 114, baseType: !122, size: 128, offset: 576)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !3239, file: !229, line: 115, baseType: !84, size: 32, offset: 704)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_inodes", scope: !3239, file: !229, line: 117, baseType: !74, size: 32, offset: 736)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !3239, file: !229, line: 118, baseType: !1472, size: 1280, offset: 768)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !3239, file: !229, line: 120, baseType: !64, size: 64, offset: 2048)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !3239, file: !229, line: 121, baseType: !64, size: 64, offset: 2112)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !3239, file: !229, line: 122, baseType: !64, size: 64, offset: 2176)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !3239, file: !229, line: 123, baseType: !64, size: 64, offset: 2240)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !3239, file: !229, line: 124, baseType: !64, size: 64, offset: 2304)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !3239, file: !229, line: 132, baseType: !64, size: 64, offset: 2368)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !3239, file: !229, line: 133, baseType: !64, size: 64, offset: 2432)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !3239, file: !229, line: 135, baseType: !3259, size: 384, offset: 2496)
!3259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !3260, line: 76, size: 384, elements: !3261)
!3260 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a71374c9cbe54a4b0f3b6bbea75a8cfc")
!3261 = !{!3262, !3263, !3264}
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3259, file: !3260, line: 78, baseType: !995, size: 320)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3259, file: !3260, line: 80, baseType: !7, size: 32, offset: 320)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3259, file: !3260, line: 81, baseType: !752, size: 32, offset: 352)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !3239, file: !229, line: 136, baseType: !47, size: 32, offset: 2880)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !3239, file: !229, line: 137, baseType: !228, size: 32, offset: 2912)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !3239, file: !229, line: 139, baseType: !84, size: 32, offset: 2944)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !3239, file: !229, line: 140, baseType: !122, size: 128, offset: 3008)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !3239, file: !229, line: 141, baseType: !2286, size: 704, offset: 3136)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "bw_dwork", scope: !3239, file: !229, line: 142, baseType: !2286, size: 704, offset: 3840)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !3239, file: !229, line: 144, baseType: !122, size: 128, offset: 4544)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !3224, file: !229, line: 187, baseType: !122, size: 128, offset: 5504)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !3224, file: !229, line: 193, baseType: !79, size: 192, offset: 5632)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3224, file: !229, line: 195, baseType: !2701, size: 64, offset: 5824)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3224, file: !229, line: 196, baseType: !3276, size: 512, offset: 5888)
!3276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 512, elements: !644)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3224, file: !229, line: 197, baseType: !2701, size: 64, offset: 6400)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !3224, file: !229, line: 199, baseType: !2229, size: 320, offset: 6464)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !3224, file: !229, line: 202, baseType: !437, size: 64, offset: 6784)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !552, file: !160, line: 1228, baseType: !3281, size: 64, offset: 1792)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !160, line: 1228, flags: DIFlagFwdDecl)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !552, file: !160, line: 1229, baseType: !803, size: 128, offset: 1856)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !552, file: !160, line: 1230, baseType: !7, size: 32, offset: 1984)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !552, file: !160, line: 1231, baseType: !3286, size: 2496, offset: 2048)
!3286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !165, line: 521, size: 2496, elements: !3287)
!3287 = !{!3288, !3289, !3290, !3292, !3324}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3286, file: !165, line: 522, baseType: !7, size: 32)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3286, file: !165, line: 523, baseType: !878, size: 320, offset: 64)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3286, file: !165, line: 524, baseType: !3291, size: 192, offset: 384)
!3291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !402, size: 192, elements: !640)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3286, file: !165, line: 525, baseType: !3293, size: 1728, offset: 576)
!3293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3294, size: 1728, elements: !640)
!3294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !165, line: 222, size: 576, elements: !3295)
!3295 = !{!3296, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3294, file: !165, line: 223, baseType: !3297, size: 64)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !165, line: 445, size: 256, elements: !3299)
!3299 = !{!3300, !3301, !3314, !3315}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3298, file: !165, line: 446, baseType: !47, size: 32)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3298, file: !165, line: 447, baseType: !3302, size: 64, offset: 64)
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3303, size: 64)
!3303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3304)
!3304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !165, line: 312, size: 512, elements: !3305)
!3305 = !{!3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313}
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3304, file: !165, line: 313, baseType: !2403, size: 64)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3304, file: !165, line: 314, baseType: !2403, size: 64, offset: 64)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3304, file: !165, line: 315, baseType: !2403, size: 64, offset: 128)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3304, file: !165, line: 316, baseType: !2403, size: 64, offset: 192)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3304, file: !165, line: 317, baseType: !2512, size: 64, offset: 256)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3304, file: !165, line: 318, baseType: !2512, size: 64, offset: 320)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3304, file: !165, line: 319, baseType: !2512, size: 64, offset: 384)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3304, file: !165, line: 320, baseType: !2542, size: 64, offset: 448)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3298, file: !165, line: 448, baseType: !586, size: 64, offset: 128)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3298, file: !165, line: 449, baseType: !3297, size: 64, offset: 192)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3294, file: !165, line: 224, baseType: !47, size: 32, offset: 64)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3294, file: !165, line: 226, baseType: !122, size: 128, offset: 128)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3294, file: !165, line: 227, baseType: !64, size: 64, offset: 256)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3294, file: !165, line: 228, baseType: !7, size: 32, offset: 320)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3294, file: !165, line: 229, baseType: !7, size: 32, offset: 352)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3294, file: !165, line: 230, baseType: !2480, size: 64, offset: 384)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3294, file: !165, line: 231, baseType: !2480, size: 64, offset: 448)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3294, file: !165, line: 232, baseType: !45, size: 64, offset: 512)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3286, file: !165, line: 526, baseType: !3325, size: 192, offset: 2304)
!3325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3302, size: 192, elements: !640)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !552, file: !160, line: 1233, baseType: !3327, size: 2368, offset: 4544)
!3327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !160, line: 1184, size: 2368, elements: !3328)
!3328 = !{!3329, !3330, !3331}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3327, file: !160, line: 1185, baseType: !51, size: 16)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3327, file: !160, line: 1186, baseType: !51, size: 16, offset: 16)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3327, file: !160, line: 1187, baseType: !3332, size: 2304, offset: 64)
!3332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3333, size: 2304, elements: !640)
!3333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3334, line: 12, size: 768, elements: !3335)
!3334 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3335 = !{!3336, !3344, !3345, !4827, !4828}
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3333, file: !3334, line: 13, baseType: !3337, size: 384)
!3337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3338, line: 17, size: 384, elements: !3339)
!3338 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3339 = !{!3340, !3341, !3342, !3343}
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3337, file: !3338, line: 18, baseType: !47, size: 32)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3337, file: !3338, line: 19, baseType: !47, size: 32, offset: 32)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3337, file: !3338, line: 20, baseType: !79, size: 192, offset: 64)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3337, file: !3338, line: 22, baseType: !725, size: 128, align: 64, offset: 256)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3333, file: !3334, line: 14, baseType: !2082, size: 64, offset: 384)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3333, file: !3334, line: 15, baseType: !3346, size: 64, offset: 448)
!3346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3347, line: 16, size: 64, elements: !3348)
!3347 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3348 = !{!3349}
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3346, file: !3347, line: 17, baseType: !3350, size: 64)
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3351, size: 64)
!3351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1748, line: 746, size: 58368, elements: !3352)
!3352 = !{!3353, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3433, !3444, !3464, !3468, !3471, !3502, !3503, !3504, !3505, !3516, !3518, !3519, !3520, !3521, !3522, !3523, !3534, !3535, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3552, !3553, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3646, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3694, !3700, !3701, !3702, !3703, !3704, !3708, !3711, !3718, !3723, !3726, !3729, !3732, !4050, !4249, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4287, !4288, !4289, !4298, !4306, !4307, !4308, !4309, !4310, !4315, !4316, !4317, !4320, !4321, !4324, !4327, !4333, !4340, !4343, !4344, !4430, !4431, !4432, !4433, !4434, !4440, !4441, !4442, !4443, !4444, !4445, !4448, !4451, !4452, !4455, !4456, !4457, !4460, !4461, !4462, !4463, !4464, !4465, !4478, !4479, !4480, !4481, !4482, !4483, !4484, !4485, !4486, !4497, !4498, !4504, !4507, !4508, !4509, !4510, !4511, !4512, !4513, !4514, !4586, !4588, !4589, !4590, !4591, !4592, !4593, !4608, !4609, !4610, !4611, !4612, !4613, !4614, !4615, !4616, !4617, !4618, !4622, !4623, !4624}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !3351, file: !1748, line: 752, baseType: !3354, size: 192)
!3354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !3355, line: 56, size: 192, elements: !3356)
!3355 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!3356 = !{!3357, !3358, !3359, !3360}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3354, file: !3355, line: 57, baseType: !64, size: 64)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !3354, file: !3355, line: 58, baseType: !64, size: 64, offset: 64)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3354, file: !3355, line: 59, baseType: !471, size: 32, offset: 128)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3354, file: !3355, line: 61, baseType: !471, size: 32, offset: 160)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !3351, file: !1748, line: 754, baseType: !7, size: 32, offset: 192)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3351, file: !1748, line: 767, baseType: !45, size: 64, offset: 256)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3351, file: !1748, line: 768, baseType: !790, size: 32, offset: 320)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3351, file: !1748, line: 770, baseType: !7, size: 32, offset: 352)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !3351, file: !1748, line: 771, baseType: !7, size: 32, offset: 384)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !3351, file: !1748, line: 774, baseType: !47, size: 32, offset: 416)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !3351, file: !1748, line: 775, baseType: !3368, size: 128, offset: 448)
!3368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !3369, line: 58, size: 128, elements: !3370)
!3369 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!3370 = !{!3371, !3372, !3377, !3378}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !3368, file: !3369, line: 59, baseType: !719, size: 64)
!3372 = !DIDerivedType(tag: DW_TAG_member, scope: !3368, file: !3369, line: 60, baseType: !3373, size: 32, offset: 64)
!3373 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3368, file: !3369, line: 60, size: 32, elements: !3374)
!3374 = !{!3375, !3376}
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !3373, file: !3369, line: 61, baseType: !7, size: 32)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !3373, file: !3369, line: 62, baseType: !74, size: 32)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !3368, file: !3369, line: 65, baseType: !118, size: 16, offset: 96)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !3368, file: !3369, line: 65, baseType: !118, size: 16, offset: 112)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !3351, file: !1748, line: 776, baseType: !7, size: 32, offset: 576)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !3351, file: !1748, line: 777, baseType: !64, size: 64, offset: 640)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !3351, file: !1748, line: 778, baseType: !3350, size: 64, offset: 704)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !3351, file: !1748, line: 787, baseType: !47, size: 32, offset: 768)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !3351, file: !1748, line: 788, baseType: !47, size: 32, offset: 800)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3351, file: !1748, line: 790, baseType: !47, size: 32, offset: 832)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3351, file: !1748, line: 792, baseType: !47, size: 32, offset: 864)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !3351, file: !1748, line: 793, baseType: !47, size: 32, offset: 896)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !3351, file: !1748, line: 794, baseType: !47, size: 32, offset: 928)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !3351, file: !1748, line: 795, baseType: !7, size: 32, offset: 960)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !3351, file: !1748, line: 797, baseType: !3390, size: 2048, offset: 1024)
!3390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1748, line: 551, size: 2048, elements: !3391)
!3391 = !{!3392, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3412, !3415, !3416, !3417}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !3390, file: !1748, line: 553, baseType: !3393, size: 128)
!3393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1748, line: 411, size: 128, elements: !3394)
!3394 = !{!3395, !3396}
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3393, file: !1748, line: 412, baseType: !64, size: 64)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !3393, file: !1748, line: 413, baseType: !471, size: 32, offset: 64)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !3390, file: !1748, line: 554, baseType: !870, size: 192, align: 64, offset: 128)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3390, file: !1748, line: 555, baseType: !371, size: 64, offset: 320)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !3390, file: !1748, line: 556, baseType: !371, size: 64, offset: 384)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !3390, file: !1748, line: 558, baseType: !122, size: 128, offset: 448)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3390, file: !1748, line: 559, baseType: !7, size: 32, offset: 576)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !3390, file: !1748, line: 561, baseType: !371, size: 64, offset: 640)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3390, file: !1748, line: 562, baseType: !371, size: 64, offset: 704)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !3390, file: !1748, line: 563, baseType: !371, size: 64, offset: 768)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !3390, file: !1748, line: 564, baseType: !371, size: 64, offset: 832)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !3390, file: !1748, line: 565, baseType: !744, size: 64, offset: 896)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !3390, file: !1748, line: 566, baseType: !371, size: 64, offset: 960)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !3390, file: !1748, line: 568, baseType: !371, size: 64, offset: 1024)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3390, file: !1748, line: 571, baseType: !47, size: 32, offset: 1088)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3390, file: !1748, line: 572, baseType: !3411, size: 64, offset: 1152)
!3411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !3390, file: !1748, line: 574, baseType: !3413, size: 64, offset: 1216)
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3414 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1748, line: 49, flags: DIFlagFwdDecl)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !3390, file: !1748, line: 576, baseType: !3413, size: 64, offset: 1280)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !3390, file: !1748, line: 578, baseType: !64, size: 64, offset: 1344)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !3390, file: !1748, line: 588, baseType: !3418, size: 512, align: 512, offset: 1536)
!3418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1748, line: 497, size: 512, align: 512, elements: !3419)
!3419 = !{!3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428}
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !3418, file: !1748, line: 498, baseType: !371, size: 64)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !3418, file: !1748, line: 499, baseType: !371, size: 64, offset: 64)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !3418, file: !1748, line: 500, baseType: !371, size: 64, offset: 128)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !3418, file: !1748, line: 501, baseType: !471, size: 32, offset: 192)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !3418, file: !1748, line: 502, baseType: !471, size: 32, offset: 224)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !3418, file: !1748, line: 503, baseType: !64, size: 64, offset: 256)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !3418, file: !1748, line: 504, baseType: !64, size: 64, offset: 320)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !3418, file: !1748, line: 505, baseType: !64, size: 64, offset: 384)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !3418, file: !1748, line: 506, baseType: !3429, size: 64, align: 64, offset: 448)
!3429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1748, line: 445, size: 64, align: 64, elements: !3430)
!3430 = !{!3431, !3432}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !3429, file: !1748, line: 446, baseType: !7, size: 32)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !3429, file: !1748, line: 447, baseType: !7, size: 32, offset: 32)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !3351, file: !1748, line: 798, baseType: !3434, size: 384, offset: 3072)
!3434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1748, line: 592, size: 384, elements: !3435)
!3435 = !{!3436, !3437, !3438, !3439, !3440, !3441, !3442}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !3434, file: !1748, line: 593, baseType: !122, size: 128)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3434, file: !1748, line: 594, baseType: !64, size: 64, offset: 128)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !3434, file: !1748, line: 595, baseType: !64, size: 64, offset: 192)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !3434, file: !1748, line: 596, baseType: !7, size: 32, offset: 256)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3434, file: !1748, line: 597, baseType: !51, size: 16, offset: 288)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !3434, file: !1748, line: 598, baseType: !51, size: 16, offset: 304)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !3434, file: !1748, line: 600, baseType: !3443, size: 64, offset: 320)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3434, size: 64)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !3351, file: !1748, line: 799, baseType: !3445, size: 1792, offset: 3456)
!3445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1748, line: 610, size: 1792, elements: !3446)
!3446 = !{!3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3445, file: !1748, line: 611, baseType: !870, size: 192, align: 64)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !3445, file: !1748, line: 618, baseType: !371, size: 64, offset: 192)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !3445, file: !1748, line: 619, baseType: !371, size: 64, offset: 256)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !3445, file: !1748, line: 620, baseType: !371, size: 64, offset: 320)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !3445, file: !1748, line: 621, baseType: !371, size: 64, offset: 384)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !3445, file: !1748, line: 622, baseType: !371, size: 64, offset: 448)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !3445, file: !1748, line: 629, baseType: !744, size: 64, offset: 512)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3445, file: !1748, line: 630, baseType: !371, size: 64, offset: 576)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3445, file: !1748, line: 631, baseType: !7, size: 32, offset: 640)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !3445, file: !1748, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !3445, file: !1748, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !3445, file: !1748, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !3445, file: !1748, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !3445, file: !1748, line: 662, baseType: !2893, size: 512, offset: 704)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !3445, file: !1748, line: 671, baseType: !2893, size: 512, offset: 1216)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !3445, file: !1748, line: 679, baseType: !3463, size: 64, offset: 1728)
!3463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !3351, file: !1748, line: 800, baseType: !3465, size: 64, offset: 5248)
!3465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3466, size: 64)
!3466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3467)
!3467 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1748, line: 800, flags: DIFlagFwdDecl)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !3351, file: !1748, line: 809, baseType: !3469, size: 64, offset: 5312)
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3470, size: 64)
!3470 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1748, line: 70, flags: DIFlagFwdDecl)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3351, file: !1748, line: 825, baseType: !3472, size: 2048, align: 512, offset: 5632)
!3472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1748, line: 509, size: 2048, align: 512, elements: !3473)
!3473 = !{!3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501}
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !3472, file: !1748, line: 511, baseType: !371, size: 64)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !3472, file: !1748, line: 512, baseType: !371, size: 64, offset: 64)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !3472, file: !1748, line: 513, baseType: !371, size: 64, offset: 128)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !3472, file: !1748, line: 514, baseType: !371, size: 64, offset: 192)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !3472, file: !1748, line: 515, baseType: !371, size: 64, offset: 256)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !3472, file: !1748, line: 516, baseType: !371, size: 64, offset: 320)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !3472, file: !1748, line: 518, baseType: !371, size: 64, offset: 384)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !3472, file: !1748, line: 519, baseType: !371, size: 64, offset: 448)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !3472, file: !1748, line: 520, baseType: !744, size: 64, offset: 512)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !3472, file: !1748, line: 522, baseType: !371, size: 64, offset: 576)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !3472, file: !1748, line: 523, baseType: !371, size: 64, offset: 640)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !3472, file: !1748, line: 524, baseType: !744, size: 64, offset: 704)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !3472, file: !1748, line: 526, baseType: !744, size: 64, offset: 768)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !3472, file: !1748, line: 527, baseType: !371, size: 64, offset: 832)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !3472, file: !1748, line: 529, baseType: !371, size: 64, offset: 896)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !3472, file: !1748, line: 530, baseType: !371, size: 64, offset: 960)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !3472, file: !1748, line: 531, baseType: !371, size: 64, offset: 1024)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !3472, file: !1748, line: 532, baseType: !371, size: 64, offset: 1088)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !3472, file: !1748, line: 533, baseType: !371, size: 64, offset: 1152)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !3472, file: !1748, line: 535, baseType: !371, size: 64, offset: 1216)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !3472, file: !1748, line: 536, baseType: !371, size: 64, offset: 1280)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !3472, file: !1748, line: 537, baseType: !371, size: 64, offset: 1344)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !3472, file: !1748, line: 538, baseType: !371, size: 64, offset: 1408)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !3472, file: !1748, line: 539, baseType: !371, size: 64, offset: 1472)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !3472, file: !1748, line: 540, baseType: !371, size: 64, offset: 1536)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !3472, file: !1748, line: 541, baseType: !371, size: 64, offset: 1600)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !3472, file: !1748, line: 542, baseType: !371, size: 64, offset: 1664)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !3472, file: !1748, line: 543, baseType: !371, size: 64, offset: 1728)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !3351, file: !1748, line: 833, baseType: !7, size: 32, offset: 7680)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !3351, file: !1748, line: 836, baseType: !7, size: 32, offset: 7712)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !3351, file: !1748, line: 837, baseType: !47, size: 32, offset: 7744)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !3351, file: !1748, line: 838, baseType: !3506, size: 64, offset: 7808)
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3508)
!3508 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !3509, line: 19, baseType: !3510)
!3509 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!3510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !3509, line: 19, size: 64, elements: !3511)
!3511 = !{!3512}
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3510, file: !3509, line: 19, baseType: !3513, size: 64)
!3513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 64, elements: !3514)
!3514 = !{!3515}
!3515 = !DISubrange(count: 1)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !3351, file: !1748, line: 839, baseType: !3517, size: 64, offset: 7872)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3508, size: 64)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !3351, file: !1748, line: 840, baseType: !3508, size: 64, offset: 7936)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !3351, file: !1748, line: 841, baseType: !45, size: 64, offset: 8000)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !3351, file: !1748, line: 843, baseType: !51, size: 16, offset: 8064)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !3351, file: !1748, line: 845, baseType: !51, size: 16, offset: 8080)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !3351, file: !1748, line: 848, baseType: !47, size: 32, offset: 8096)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !3351, file: !1748, line: 849, baseType: !3524, size: 32, offset: 8128)
!3524 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1748, line: 718, size: 32, elements: !3525)
!3525 = !{!3526, !3533}
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3524, file: !1748, line: 724, baseType: !3527, size: 32)
!3527 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3524, file: !1748, line: 719, size: 32, elements: !3528)
!3528 = !{!3529, !3530, !3531, !3532}
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3527, file: !1748, line: 720, baseType: !108, size: 8)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !3527, file: !1748, line: 721, baseType: !108, size: 8, offset: 8)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !3527, file: !1748, line: 722, baseType: !108, size: 8, offset: 16)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !3527, file: !1748, line: 723, baseType: !108, size: 8, offset: 24)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3524, file: !1748, line: 725, baseType: !471, size: 32)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !3351, file: !1748, line: 850, baseType: !122, size: 128, offset: 8192)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !3351, file: !1748, line: 851, baseType: !3536, size: 64, offset: 8320)
!3536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3537, size: 64)
!3537 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1748, line: 60, flags: DIFlagFwdDecl)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !3351, file: !1748, line: 855, baseType: !64, size: 64, offset: 8384)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !3351, file: !1748, line: 856, baseType: !108, size: 8, offset: 8448)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !3351, file: !1748, line: 857, baseType: !108, size: 8, offset: 8456)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !3351, file: !1748, line: 858, baseType: !47, size: 32, offset: 8480)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !3351, file: !1748, line: 859, baseType: !122, size: 128, offset: 8512)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !3351, file: !1748, line: 860, baseType: !47, size: 32, offset: 8640)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !3351, file: !1748, line: 861, baseType: !122, size: 128, offset: 8704)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !3351, file: !1748, line: 873, baseType: !3546, size: 256, offset: 8832)
!3546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1748, line: 376, size: 256, elements: !3547)
!3547 = !{!3548, !3549, !3550, !3551}
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !3546, file: !1748, line: 381, baseType: !64, size: 64)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !3546, file: !1748, line: 384, baseType: !368, size: 64, offset: 64)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !3546, file: !1748, line: 389, baseType: !368, size: 64, offset: 128)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !3546, file: !1748, line: 392, baseType: !368, size: 64, offset: 192)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3351, file: !1748, line: 875, baseType: !122, size: 128, offset: 9088)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !3351, file: !1748, line: 877, baseType: !3554, size: 320, offset: 9216)
!3554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !3555, line: 86, size: 320, elements: !3556)
!3555 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!3556 = !{!3557, !3558, !3559}
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3554, file: !3555, line: 87, baseType: !47, size: 32)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !3554, file: !3555, line: 88, baseType: !122, size: 128, offset: 64)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !3554, file: !3555, line: 89, baseType: !122, size: 128, offset: 192)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !3351, file: !1748, line: 878, baseType: !870, size: 192, align: 64, offset: 9536)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !3351, file: !1748, line: 881, baseType: !1390, size: 64, offset: 9728)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !3351, file: !1748, line: 882, baseType: !1390, size: 64, offset: 9792)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !3351, file: !1748, line: 884, baseType: !47, size: 32, offset: 9856)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !3351, file: !1748, line: 885, baseType: !47, size: 32, offset: 9888)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !3351, file: !1748, line: 886, baseType: !47, size: 32, offset: 9920)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !3351, file: !1748, line: 888, baseType: !47, size: 32, offset: 9952)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !3351, file: !1748, line: 890, baseType: !64, size: 64, offset: 9984)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !3351, file: !1748, line: 893, baseType: !7, size: 32, offset: 10048)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !3351, file: !1748, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !3351, file: !1748, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !3351, file: !1748, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !3351, file: !1748, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !3351, file: !1748, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !3351, file: !1748, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !3351, file: !1748, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !3351, file: !1748, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !3351, file: !1748, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3351, file: !1748, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !3351, file: !1748, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !3351, file: !1748, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !3351, file: !1748, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !3351, file: !1748, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !3351, file: !1748, line: 969, baseType: !64, size: 64, offset: 10176)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !3351, file: !1748, line: 971, baseType: !3585, size: 448, offset: 10240)
!3585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !241, line: 25, size: 448, elements: !3586)
!3586 = !{!3587, !3588, !3593}
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3585, file: !241, line: 26, baseType: !64, size: 64)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3585, file: !241, line: 27, baseType: !3589, size: 64, offset: 64)
!3589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3590, size: 64)
!3590 = !DISubroutineType(types: !3591)
!3591 = !{!373, !3592}
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3585, size: 64)
!3593 = !DIDerivedType(tag: DW_TAG_member, scope: !3585, file: !241, line: 28, baseType: !3594, size: 320, offset: 128)
!3594 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3585, file: !241, line: 28, size: 320, elements: !3595)
!3595 = !{!3596, !3606, !3631}
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3594, file: !241, line: 37, baseType: !3597, size: 320)
!3597 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3594, file: !241, line: 30, size: 320, elements: !3598)
!3598 = !{!3599, !3601, !3602, !3603, !3604, !3605}
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3597, file: !241, line: 31, baseType: !3600, size: 64)
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3597, file: !241, line: 32, baseType: !471, size: 32, offset: 64)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3597, file: !241, line: 33, baseType: !471, size: 32, offset: 96)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3597, file: !241, line: 34, baseType: !471, size: 32, offset: 128)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3597, file: !241, line: 35, baseType: !371, size: 64, offset: 192)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3597, file: !241, line: 36, baseType: !3600, size: 64, offset: 256)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3594, file: !241, line: 47, baseType: !3607, size: 192)
!3607 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3594, file: !241, line: 39, size: 192, elements: !3608)
!3608 = !{!3609, !3610, !3611, !3630}
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3607, file: !241, line: 40, baseType: !2938, size: 32)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3607, file: !241, line: 41, baseType: !240, size: 32, offset: 32)
!3611 = !DIDerivedType(tag: DW_TAG_member, scope: !3607, file: !241, line: 42, baseType: !3612, size: 64, offset: 64)
!3612 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3607, file: !241, line: 42, size: 64, elements: !3613)
!3613 = !{!3614, !3622}
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3612, file: !241, line: 43, baseType: !3615, size: 64)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3617, line: 7, size: 128, elements: !3618)
!3617 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3618 = !{!3619, !3621}
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3616, file: !3617, line: 8, baseType: !3620, size: 64)
!3620 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !62, line: 93, baseType: !68)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3616, file: !3617, line: 9, baseType: !68, size: 64, offset: 64)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3612, file: !241, line: 44, baseType: !3623, size: 64)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3625, line: 7, size: 64, elements: !3626)
!3625 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3626 = !{!3627, !3629}
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3624, file: !3625, line: 8, baseType: !3628, size: 32)
!3628 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3625, line: 5, baseType: !863)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3624, file: !3625, line: 9, baseType: !863, size: 32, offset: 32)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3607, file: !241, line: 46, baseType: !371, size: 64, offset: 128)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3594, file: !241, line: 55, baseType: !3632, size: 256)
!3632 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3594, file: !241, line: 49, size: 256, elements: !3633)
!3633 = !{!3634, !3642, !3643, !3644, !3645}
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3632, file: !241, line: 50, baseType: !3635, size: 64)
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !3637, line: 36, size: 64, elements: !3638)
!3637 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!3638 = !{!3639, !3640, !3641}
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !3636, file: !3637, line: 37, baseType: !47, size: 32)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3636, file: !3637, line: 38, baseType: !906, size: 16, offset: 32)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !3636, file: !3637, line: 39, baseType: !906, size: 16, offset: 48)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3632, file: !241, line: 51, baseType: !47, size: 32, offset: 64)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3632, file: !241, line: 52, baseType: !47, size: 32, offset: 96)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3632, file: !241, line: 53, baseType: !64, size: 64, offset: 128)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3632, file: !241, line: 54, baseType: !64, size: 64, offset: 192)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3351, file: !1748, line: 973, baseType: !3647, size: 32, offset: 10688)
!3647 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !50, line: 27, baseType: !3648)
!3648 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !62, line: 28, baseType: !47)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !3351, file: !1748, line: 974, baseType: !3647, size: 32, offset: 10720)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !3351, file: !1748, line: 978, baseType: !64, size: 64, offset: 10752)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !3351, file: !1748, line: 987, baseType: !3350, size: 64, offset: 10816)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3351, file: !1748, line: 990, baseType: !3350, size: 64, offset: 10880)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3351, file: !1748, line: 995, baseType: !122, size: 128, offset: 10944)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3351, file: !1748, line: 996, baseType: !122, size: 128, offset: 11072)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !3351, file: !1748, line: 997, baseType: !3350, size: 64, offset: 11200)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !3351, file: !1748, line: 1005, baseType: !122, size: 128, offset: 11264)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !3351, file: !1748, line: 1006, baseType: !122, size: 128, offset: 11392)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !3351, file: !1748, line: 1009, baseType: !786, size: 64, offset: 11520)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !3351, file: !1748, line: 1010, baseType: !3660, size: 512, offset: 11584)
!3660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !803, size: 512, elements: !808)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !3351, file: !1748, line: 1011, baseType: !122, size: 128, offset: 12096)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !3351, file: !1748, line: 1012, baseType: !122, size: 128, offset: 12224)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !3351, file: !1748, line: 1014, baseType: !1107, size: 64, offset: 12352)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !3351, file: !1748, line: 1017, baseType: !2130, size: 64, offset: 12416)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !3351, file: !1748, line: 1020, baseType: !2130, size: 64, offset: 12480)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !3351, file: !1748, line: 1023, baseType: !45, size: 64, offset: 12544)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3351, file: !1748, line: 1025, baseType: !371, size: 64, offset: 12608)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3351, file: !1748, line: 1026, baseType: !371, size: 64, offset: 12672)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3351, file: !1748, line: 1031, baseType: !371, size: 64, offset: 12736)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3351, file: !1748, line: 1032, baseType: !3671, size: 192, offset: 12800)
!3671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1748, line: 324, size: 192, elements: !3672)
!3672 = !{!3673, !3674, !3675}
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3671, file: !1748, line: 326, baseType: !371, size: 64)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3671, file: !1748, line: 327, baseType: !371, size: 64, offset: 64)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3671, file: !1748, line: 328, baseType: !752, size: 32, offset: 128)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3351, file: !1748, line: 1041, baseType: !64, size: 64, offset: 12992)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3351, file: !1748, line: 1042, baseType: !64, size: 64, offset: 13056)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !3351, file: !1748, line: 1045, baseType: !371, size: 64, offset: 13120)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !3351, file: !1748, line: 1048, baseType: !371, size: 64, offset: 13184)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3351, file: !1748, line: 1051, baseType: !64, size: 64, offset: 13248)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3351, file: !1748, line: 1052, baseType: !64, size: 64, offset: 13312)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3351, file: !1748, line: 1055, baseType: !3683, size: 640, offset: 13376)
!3683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3684, line: 132, size: 640, elements: !3685)
!3684 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3685 = !{!3686, !3692, !3693}
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3683, file: !3684, line: 133, baseType: !3687, size: 576)
!3687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3688, size: 576, elements: !640)
!3688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3684, line: 117, size: 192, elements: !3689)
!3689 = !{!3690, !3691}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3688, file: !3684, line: 118, baseType: !371, size: 64)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3688, file: !3684, line: 119, baseType: !2947, size: 128, offset: 64)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3683, file: !3684, line: 134, baseType: !7, size: 32, offset: 576)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3683, file: !3684, line: 135, baseType: !7, size: 32, offset: 608)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !3351, file: !1748, line: 1058, baseType: !3695, size: 448, offset: 14016)
!3695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3684, line: 144, size: 448, elements: !3696)
!3696 = !{!3697, !3698, !3699}
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3695, file: !3684, line: 145, baseType: !725, size: 128, align: 64)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3695, file: !3684, line: 146, baseType: !747, size: 256, offset: 128)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3695, file: !3684, line: 147, baseType: !7, size: 32, offset: 384)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !3351, file: !1748, line: 1064, baseType: !828, size: 64, offset: 14464)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !3351, file: !1748, line: 1067, baseType: !828, size: 64, offset: 14528)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !3351, file: !1748, line: 1070, baseType: !828, size: 64, offset: 14592)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !3351, file: !1748, line: 1074, baseType: !855, size: 64, offset: 14656)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3351, file: !1748, line: 1084, baseType: !3705, size: 128, offset: 14720)
!3705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 128, elements: !3706)
!3706 = !{!3707}
!3707 = !DISubrange(count: 16)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !3351, file: !1748, line: 1086, baseType: !3709, size: 64, offset: 14848)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1748, line: 55, flags: DIFlagFwdDecl)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !3351, file: !1748, line: 1089, baseType: !3712, size: 64, offset: 14912)
!3712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3713, line: 12, size: 64, elements: !3714)
!3713 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3714 = !{!3715}
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3712, file: !3713, line: 13, baseType: !3716, size: 64)
!3716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3717, size: 64)
!3717 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3713, line: 8, flags: DIFlagFwdDecl)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !3351, file: !1748, line: 1090, baseType: !3719, size: 128, offset: 14976)
!3719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3720, line: 13, size: 128, elements: !3721)
!3720 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3721 = !{!3722}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3719, file: !3720, line: 14, baseType: !122, size: 128)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !3351, file: !1748, line: 1097, baseType: !3724, size: 64, offset: 15104)
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3725, size: 64)
!3725 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1748, line: 50, flags: DIFlagFwdDecl)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3351, file: !1748, line: 1100, baseType: !3727, size: 64, offset: 15168)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1748, line: 1100, flags: DIFlagFwdDecl)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !3351, file: !1748, line: 1103, baseType: !3730, size: 64, offset: 15232)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1748, line: 53, flags: DIFlagFwdDecl)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !3351, file: !1748, line: 1107, baseType: !3733, size: 64, offset: 15296)
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !3735, line: 31, size: 576, elements: !3736)
!3735 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!3736 = !{!3737, !3738, !3741, !3744, !3747, !3748, !3751, !3754, !3755}
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3734, file: !3735, line: 32, baseType: !790, size: 32)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !3734, file: !3735, line: 33, baseType: !3739, size: 64, offset: 64)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !3735, line: 9, flags: DIFlagFwdDecl)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !3734, file: !3735, line: 34, baseType: !3742, size: 64, offset: 128)
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3743, size: 64)
!3743 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !3735, line: 10, flags: DIFlagFwdDecl)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !3734, file: !3735, line: 35, baseType: !3745, size: 64, offset: 192)
!3745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3746, size: 64)
!3746 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !3735, line: 8, flags: DIFlagFwdDecl)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !3734, file: !3735, line: 36, baseType: !819, size: 64, offset: 256)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !3734, file: !3735, line: 37, baseType: !3749, size: 64, offset: 320)
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3750 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !857, line: 34, flags: DIFlagFwdDecl)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !3734, file: !3735, line: 38, baseType: !3752, size: 64, offset: 384)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !3735, line: 38, flags: DIFlagFwdDecl)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !3734, file: !3735, line: 39, baseType: !3752, size: 64, offset: 448)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !3734, file: !3735, line: 40, baseType: !3756, size: 64, offset: 512)
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !3758, line: 771, size: 384, elements: !3759)
!3758 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!3759 = !{!3760, !3761, !3762, !3763}
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3757, file: !3758, line: 772, baseType: !1053, size: 192)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !3757, file: !3758, line: 773, baseType: !1020, size: 64, offset: 192)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !3757, file: !3758, line: 774, baseType: !1155, size: 64, offset: 256)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !3757, file: !3758, line: 775, baseType: !3764, size: 64, offset: 320)
!3764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3765, size: 64)
!3765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !3766, line: 209, size: 4736, elements: !3767)
!3766 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!3767 = !{!3768, !4029, !4030, !4031, !4032, !4033, !4034, !4035, !4036, !4037, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048, !4049}
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !3765, file: !3766, line: 215, baseType: !3769, size: 896)
!3769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3770, size: 896, elements: !3827)
!3770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3771, size: 64)
!3771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !3766, line: 152, size: 1600, elements: !3772)
!3772 = !{!3773, !3878, !3993, !4014, !4015, !4016, !4017, !4018, !4019, !4020, !4021, !4022, !4028}
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3771, file: !3766, line: 154, baseType: !3774, size: 64)
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !3766, line: 389, size: 7872, elements: !3776)
!3776 = !{!3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3796, !3797, !3801, !3802, !3803, !3804, !3805, !3806, !3824, !3825, !3829, !3830, !3831, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3865, !3868, !3869, !3876}
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !3775, file: !3766, line: 391, baseType: !3771, size: 1600)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3775, file: !3766, line: 393, baseType: !64, size: 64, offset: 1600)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3775, file: !3766, line: 401, baseType: !47, size: 32, offset: 1664)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !3775, file: !3766, line: 404, baseType: !47, size: 32, offset: 1696)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !3775, file: !3766, line: 417, baseType: !47, size: 32, offset: 1728)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !3775, file: !3766, line: 418, baseType: !47, size: 32, offset: 1760)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !3775, file: !3766, line: 419, baseType: !47, size: 32, offset: 1792)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !3775, file: !3766, line: 432, baseType: !47, size: 32, offset: 1824)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !3775, file: !3766, line: 433, baseType: !47, size: 32, offset: 1856)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !3775, file: !3766, line: 434, baseType: !47, size: 32, offset: 1888)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !3775, file: !3766, line: 436, baseType: !47, size: 32, offset: 1920)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !3775, file: !3766, line: 439, baseType: !7, size: 32, offset: 1952)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3775, file: !3766, line: 441, baseType: !1887, size: 64, offset: 1984)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !3775, file: !3766, line: 442, baseType: !3791, size: 448, offset: 2048)
!3791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !3766, line: 138, size: 448, elements: !3792)
!3792 = !{!3793, !3794, !3795}
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3791, file: !3766, line: 140, baseType: !1887, size: 64)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !3791, file: !3766, line: 141, baseType: !64, size: 64, offset: 64)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !3791, file: !3766, line: 142, baseType: !2229, size: 320, offset: 128)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !3775, file: !3766, line: 443, baseType: !3791, size: 448, offset: 2496)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !3775, file: !3766, line: 446, baseType: !3798, offset: 2944)
!3798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3791, elements: !3799)
!3799 = !{!3800}
!3800 = !DISubrange(count: 0)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !3775, file: !3766, line: 455, baseType: !118, size: 16, offset: 2944)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !3775, file: !3766, line: 456, baseType: !118, size: 16, offset: 2960)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !3775, file: !3766, line: 457, baseType: !118, size: 16, offset: 2976)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !3775, file: !3766, line: 458, baseType: !118, size: 16, offset: 2992)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !3775, file: !3766, line: 461, baseType: !3769, size: 896, offset: 3008)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3775, file: !3766, line: 463, baseType: !3807, size: 64, offset: 3904)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !3766, line: 537, size: 41664, elements: !3809)
!3809 = !{!3810, !3811, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3819, !3823}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !3808, file: !3766, line: 538, baseType: !1907, size: 64)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !3808, file: !3766, line: 541, baseType: !7, size: 32, offset: 64)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !3808, file: !3766, line: 544, baseType: !47, size: 32, offset: 96)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !3808, file: !3766, line: 547, baseType: !122, size: 128, offset: 128)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3808, file: !3766, line: 548, baseType: !725, size: 128, align: 64, offset: 256)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !3808, file: !3766, line: 555, baseType: !3775, size: 7872, offset: 384)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !3808, file: !3766, line: 558, baseType: !3774, size: 64, offset: 8256)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !3808, file: !3766, line: 561, baseType: !74, size: 32, offset: 8320)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3808, file: !3766, line: 564, baseType: !7, size: 32, offset: 8352)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !3808, file: !3766, line: 567, baseType: !3820, size: 32768, offset: 8384)
!3820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 32768, elements: !3821)
!3821 = !{!3822}
!3822 = !DISubrange(count: 4096)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3808, file: !3766, line: 570, baseType: !3276, size: 512, offset: 41152)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !3775, file: !3766, line: 469, baseType: !122, size: 128, offset: 3968)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !3775, file: !3766, line: 478, baseType: !3826, size: 1792, offset: 4096)
!3826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 1792, elements: !3827)
!3827 = !{!3828}
!3828 = !DISubrange(count: 14)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !3775, file: !3766, line: 487, baseType: !3774, size: 64, offset: 5888)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !3775, file: !3766, line: 488, baseType: !3774, size: 64, offset: 5952)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !3775, file: !3766, line: 491, baseType: !3832, size: 64, offset: 6016)
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !3766, line: 327, size: 896, elements: !3834)
!3834 = !{!3835, !3838, !3848, !3849, !3850, !3851, !3852}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !3833, file: !3766, line: 332, baseType: !3836)
!3836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !3837, line: 64, elements: !1411)
!3837 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3833, file: !3766, line: 333, baseType: !3839, size: 192)
!3839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !3766, line: 299, size: 192, elements: !3840)
!3840 = !{!3841}
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !3839, file: !3766, line: 300, baseType: !3842, size: 192)
!3842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !3843, line: 17, size: 192, elements: !3844)
!3843 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!3844 = !{!3845, !3846, !3847}
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3842, file: !3843, line: 18, baseType: !371, size: 64)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3842, file: !3843, line: 19, baseType: !371, size: 64, offset: 64)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3842, file: !3843, line: 20, baseType: !368, size: 64, offset: 128)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3833, file: !3766, line: 339, baseType: !3839, size: 192, offset: 192)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !3833, file: !3766, line: 347, baseType: !3839, size: 192, offset: 384)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !3833, file: !3766, line: 353, baseType: !3839, size: 192, offset: 576)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !3833, file: !3766, line: 366, baseType: !3774, size: 64, offset: 768)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !3833, file: !3766, line: 367, baseType: !3774, size: 64, offset: 832)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !3775, file: !3766, line: 492, baseType: !122, size: 128, offset: 6080)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3775, file: !3766, line: 495, baseType: !3839, size: 192, offset: 6208)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3775, file: !3766, line: 496, baseType: !3839, size: 192, offset: 6400)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3775, file: !3766, line: 497, baseType: !3671, size: 192, offset: 6592)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !3775, file: !3766, line: 503, baseType: !122, size: 128, offset: 6784)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !3775, file: !3766, line: 504, baseType: !747, size: 256, offset: 6912)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !3775, file: !3766, line: 507, baseType: !79, size: 192, offset: 7168)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !3775, file: !3766, line: 510, baseType: !1069, size: 256, offset: 7360)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !3775, file: !3766, line: 513, baseType: !3862, size: 64, offset: 7616)
!3862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3863, size: 64)
!3863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !3864, line: 214, elements: !1411)
!3864 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !3775, file: !3766, line: 516, baseType: !3866, offset: 7680)
!3866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !3867, line: 76, elements: !1411)
!3867 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !3775, file: !3766, line: 519, baseType: !74, size: 32, offset: 7680)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !3775, file: !3766, line: 522, baseType: !3870, size: 128, offset: 7712)
!3870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !3766, line: 370, size: 128, elements: !3871)
!3871 = !{!3872, !3873, !3874, !3875}
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3870, file: !3766, line: 372, baseType: !937, size: 8)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !3870, file: !3766, line: 375, baseType: !47, size: 32, offset: 32)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !3870, file: !3766, line: 380, baseType: !47, size: 32, offset: 64)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !3870, file: !3766, line: 386, baseType: !47, size: 32, offset: 96)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !3775, file: !3766, line: 529, baseType: !3877, offset: 7872)
!3877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3774, elements: !821)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3771, file: !3766, line: 157, baseType: !3879, size: 64, offset: 64)
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !3766, line: 669, size: 1984, elements: !3881)
!3881 = !{!3882, !3886, !3890, !3894, !3895, !3896, !3897, !3901, !3905, !3906, !3912, !3916, !3917, !3918, !3922, !3926, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3953, !3954, !3991, !3992}
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !3880, file: !3766, line: 670, baseType: !3883, size: 64)
!3883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3884, size: 64)
!3884 = !DISubroutineType(types: !3885)
!3885 = !{!3770, !3770}
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !3880, file: !3766, line: 671, baseType: !3887, size: 64, offset: 64)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = !DISubroutineType(types: !3889)
!3889 = !{!47, !3770}
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !3880, file: !3766, line: 672, baseType: !3891, size: 64, offset: 128)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3892 = !DISubroutineType(types: !3893)
!3893 = !{null, !3770}
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !3880, file: !3766, line: 673, baseType: !3891, size: 64, offset: 192)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !3880, file: !3766, line: 674, baseType: !3891, size: 64, offset: 256)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !3880, file: !3766, line: 675, baseType: !3891, size: 64, offset: 320)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !3880, file: !3766, line: 676, baseType: !3898, size: 64, offset: 384)
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3899, size: 64)
!3899 = !DISubroutineType(types: !3900)
!3900 = !{null, !3770, !47}
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !3880, file: !3766, line: 677, baseType: !3902, size: 64, offset: 448)
!3902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3903, size: 64)
!3903 = !DISubroutineType(types: !3904)
!3904 = !{!47, !1771, !3770}
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !3880, file: !3766, line: 679, baseType: !3902, size: 64, offset: 512)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !3880, file: !3766, line: 682, baseType: !3907, size: 64, offset: 576)
!3907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3908, size: 64)
!3908 = !DISubroutineType(types: !3909)
!3909 = !{!47, !3910}
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3911 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !3766, line: 30, flags: DIFlagFwdDecl)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !3880, file: !3766, line: 683, baseType: !3913, size: 64, offset: 640)
!3913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3914, size: 64)
!3914 = !DISubroutineType(types: !3915)
!3915 = !{null, !3910}
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !3880, file: !3766, line: 684, baseType: !3913, size: 64, offset: 704)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !3880, file: !3766, line: 685, baseType: !2338, size: 64, offset: 768)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !3880, file: !3766, line: 686, baseType: !3919, size: 64, offset: 832)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = !DISubroutineType(types: !3921)
!3921 = !{!47, !3350, !3764}
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !3880, file: !3766, line: 688, baseType: !3923, size: 64, offset: 896)
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3924 = !DISubroutineType(types: !3925)
!3925 = !{null, !3350, !3764}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !3880, file: !3766, line: 689, baseType: !3927, size: 64, offset: 960)
!3927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3928, size: 64)
!3928 = !DISubroutineType(types: !3929)
!3929 = !{null, !3350}
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !3880, file: !3766, line: 690, baseType: !3927, size: 64, offset: 1024)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3880, file: !3766, line: 691, baseType: !3927, size: 64, offset: 1088)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !3880, file: !3766, line: 692, baseType: !3891, size: 64, offset: 1152)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3880, file: !3766, line: 694, baseType: !937, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !3880, file: !3766, line: 707, baseType: !937, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !3880, file: !3766, line: 719, baseType: !937, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3880, file: !3766, line: 722, baseType: !47, size: 32, offset: 1248)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3880, file: !3766, line: 723, baseType: !41, size: 64, offset: 1280)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !3880, file: !3766, line: 726, baseType: !41, size: 64, offset: 1344)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3880, file: !3766, line: 729, baseType: !3807, size: 64, offset: 1408)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !3880, file: !3766, line: 732, baseType: !3941, size: 192, offset: 1472)
!3941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3942, line: 19, size: 192, elements: !3943)
!3942 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!3943 = !{!3944, !3951, !3952}
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3941, file: !3942, line: 20, baseType: !3945, size: 128)
!3945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3946, line: 296, size: 128, elements: !3947)
!3946 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3947 = !{!3948, !3949, !3950}
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3945, file: !3946, line: 297, baseType: !84, size: 32)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3945, file: !3946, line: 299, baseType: !1632, size: 32, offset: 32)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3945, file: !3946, line: 300, baseType: !45, size: 64, offset: 64)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3941, file: !3942, line: 21, baseType: !7, size: 32, offset: 128)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3941, file: !3942, line: 22, baseType: !7, size: 32, offset: 160)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !3880, file: !3766, line: 738, baseType: !122, size: 128, offset: 1664)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !3880, file: !3766, line: 744, baseType: !3955, size: 64, offset: 1792)
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3956, size: 64)
!3956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !3766, line: 580, size: 1728, elements: !3957)
!3957 = !{!3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3967, !3968, !3969, !3973, !3977, !3978, !3979, !3980, !3981, !3985, !3989, !3990}
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3956, file: !3766, line: 586, baseType: !3276, size: 512)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3956, file: !3766, line: 587, baseType: !64, size: 64, offset: 512)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !3956, file: !3766, line: 593, baseType: !60, size: 64, offset: 576)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3956, file: !3766, line: 596, baseType: !7, size: 32, offset: 640)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !3956, file: !3766, line: 604, baseType: !7, size: 32, offset: 672)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3956, file: !3766, line: 610, baseType: !3879, size: 64, offset: 704)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3956, file: !3766, line: 611, baseType: !122, size: 128, offset: 768)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !3956, file: !3766, line: 612, baseType: !3966, size: 64, offset: 896)
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3956, file: !3766, line: 614, baseType: !1923, size: 64, offset: 960)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3956, file: !3766, line: 615, baseType: !1943, size: 64, offset: 1024)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !3956, file: !3766, line: 621, baseType: !3970, size: 64, offset: 1088)
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = !DISubroutineType(types: !3972)
!3972 = !{!371, !3770, !3955}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !3956, file: !3766, line: 625, baseType: !3974, size: 64, offset: 1152)
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3975, size: 64)
!3975 = !DISubroutineType(types: !3976)
!3976 = !{!744, !3770, !3955}
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3956, file: !3766, line: 628, baseType: !1801, size: 64, offset: 1216)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3956, file: !3766, line: 631, baseType: !1789, size: 64, offset: 1280)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3956, file: !3766, line: 632, baseType: !1797, size: 64, offset: 1344)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3956, file: !3766, line: 633, baseType: !1793, size: 64, offset: 1408)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !3956, file: !3766, line: 640, baseType: !3982, size: 64, offset: 1472)
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!3983 = !DISubroutineType(types: !3984)
!3984 = !{!47, !3770, !3955, !371}
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !3956, file: !3766, line: 645, baseType: !3986, size: 64, offset: 1536)
!3986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3987, size: 64)
!3987 = !DISubroutineType(types: !3988)
!3988 = !{!47, !3770, !3955, !744}
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3956, file: !3766, line: 654, baseType: !1951, size: 64, offset: 1600)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3956, file: !3766, line: 657, baseType: !1958, size: 64, offset: 1664)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !3880, file: !3766, line: 745, baseType: !3955, size: 64, offset: 1856)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !3880, file: !3766, line: 754, baseType: !7, size: 32, offset: 1920)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3771, file: !3766, line: 160, baseType: !3994, size: 128, offset: 128)
!3994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !3995, line: 105, size: 128, elements: !3996)
!3995 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!3996 = !{!3997, !3998}
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !3994, file: !3995, line: 110, baseType: !64, size: 64)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3994, file: !3995, line: 118, baseType: !3999, size: 64, offset: 64)
!3999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4000, size: 64)
!4000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !3995, line: 95, size: 448, elements: !4001)
!4001 = !{!4002, !4003, !4009, !4010, !4011, !4012, !4013}
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4000, file: !3995, line: 96, baseType: !738, size: 64)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4000, file: !3995, line: 97, baseType: !4004, size: 64, offset: 64)
!4004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4005, size: 64)
!4005 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !3995, line: 60, baseType: !4006)
!4006 = !DISubroutineType(types: !4007)
!4007 = !{null, !4008}
!4008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3994, size: 64)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !4000, file: !3995, line: 98, baseType: !4004, size: 64, offset: 128)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !4000, file: !3995, line: 99, baseType: !937, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !4000, file: !3995, line: 100, baseType: !937, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4000, file: !3995, line: 101, baseType: !725, size: 128, align: 64, offset: 256)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4000, file: !3995, line: 102, baseType: !4008, size: 64, offset: 384)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3771, file: !3766, line: 163, baseType: !122, size: 128, offset: 256)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3771, file: !3766, line: 164, baseType: !122, size: 128, offset: 384)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !3771, file: !3766, line: 167, baseType: !122, size: 128, offset: 512)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3771, file: !3766, line: 173, baseType: !47, size: 32, offset: 640)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3771, file: !3766, line: 175, baseType: !7, size: 32, offset: 672)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !3771, file: !3766, line: 183, baseType: !371, size: 64, offset: 704)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !3771, file: !3766, line: 189, baseType: !74, size: 32, offset: 768)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !3771, file: !3766, line: 192, baseType: !1069, size: 256, offset: 832)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !3771, file: !3766, line: 193, baseType: !4023, size: 448, offset: 1088)
!4023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !1070, line: 120, size: 448, elements: !4024)
!4024 = !{!4025, !4026, !4027}
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4023, file: !1070, line: 121, baseType: !1069, size: 256)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4023, file: !1070, line: 122, baseType: !725, size: 128, align: 64, offset: 256)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4023, file: !1070, line: 125, baseType: !2291, size: 64, offset: 384)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3771, file: !3766, line: 199, baseType: !3770, size: 64, offset: 1536)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3765, file: !3766, line: 218, baseType: !790, size: 32, offset: 896)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !3765, file: !3766, line: 226, baseType: !3764, size: 64, offset: 960)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !3765, file: !3766, line: 229, baseType: !3774, size: 64, offset: 1024)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !3765, file: !3766, line: 232, baseType: !47, size: 32, offset: 1088)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3765, file: !3766, line: 241, baseType: !122, size: 128, offset: 1152)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !3765, file: !3766, line: 242, baseType: !122, size: 128, offset: 1280)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !3765, file: !3766, line: 243, baseType: !122, size: 128, offset: 1408)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !3765, file: !3766, line: 246, baseType: !122, size: 128, offset: 1536)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !3765, file: !3766, line: 255, baseType: !3826, size: 1792, offset: 1664)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !3765, file: !3766, line: 258, baseType: !122, size: 128, offset: 3456)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !3765, file: !3766, line: 259, baseType: !122, size: 128, offset: 3584)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !3765, file: !3766, line: 265, baseType: !803, size: 128, offset: 3712)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !3765, file: !3766, line: 271, baseType: !122, size: 128, offset: 3840)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !3765, file: !3766, line: 277, baseType: !122, size: 128, offset: 3968)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !3765, file: !3766, line: 278, baseType: !122, size: 128, offset: 4096)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !3765, file: !3766, line: 279, baseType: !122, size: 128, offset: 4224)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !3765, file: !3766, line: 288, baseType: !3774, size: 64, offset: 4352)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !3765, file: !3766, line: 289, baseType: !3774, size: 64, offset: 4416)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !3765, file: !3766, line: 290, baseType: !3764, size: 64, offset: 4480)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !3765, file: !3766, line: 293, baseType: !937, size: 8, offset: 4544)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3765, file: !3766, line: 296, baseType: !725, size: 128, align: 64, offset: 4608)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3351, file: !1748, line: 1110, baseType: !4051, size: 64, offset: 15360)
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4052, size: 64)
!4052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !4053, line: 93, size: 8768, elements: !4054)
!4053 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!4054 = !{!4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4073, !4074, !4075, !4076, !4077, !4078, !4079, !4091, !4092, !4093, !4094, !4095, !4096, !4097, !4103, !4112, !4113, !4115, !4116, !4117, !4120, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4146, !4147, !4158, !4159, !4166, !4176, !4239, !4240, !4243, !4244, !4245, !4246, !4247, !4248}
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !4052, file: !4053, line: 94, baseType: !790, size: 32)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !4052, file: !4053, line: 95, baseType: !74, size: 32, offset: 32)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !4052, file: !4053, line: 96, baseType: !47, size: 32, offset: 64)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !4052, file: !4053, line: 97, baseType: !47, size: 32, offset: 96)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !4052, file: !4053, line: 98, baseType: !122, size: 128, offset: 128)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !4052, file: !4053, line: 100, baseType: !79, size: 192, offset: 256)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !4052, file: !4053, line: 103, baseType: !3350, size: 64, offset: 448)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !4052, file: !4053, line: 106, baseType: !4063, size: 192, offset: 512)
!4063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !4064, line: 32, size: 192, elements: !4065)
!4064 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!4065 = !{!4066, !4067}
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4063, file: !4064, line: 33, baseType: !122, size: 128)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !4063, file: !4064, line: 34, baseType: !4068, size: 64, offset: 128)
!4068 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !4069, line: 25, baseType: !4070)
!4069 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!4070 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4069, line: 23, size: 64, elements: !4071)
!4071 = !{!4072}
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !4070, file: !4069, line: 24, baseType: !3513, size: 64)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !4052, file: !4053, line: 109, baseType: !799, size: 64, offset: 704)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !4052, file: !4053, line: 112, baseType: !47, size: 32, offset: 768)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !4052, file: !4053, line: 114, baseType: !47, size: 32, offset: 800)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !4052, file: !4053, line: 115, baseType: !3350, size: 64, offset: 832)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !4052, file: !4053, line: 118, baseType: !47, size: 32, offset: 896)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4052, file: !4053, line: 119, baseType: !7, size: 32, offset: 928)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !4052, file: !4053, line: 121, baseType: !4080, size: 64, offset: 960)
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4081, size: 64)
!4081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !4053, line: 80, size: 448, elements: !4082)
!4082 = !{!4083, !4084, !4090}
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !4081, file: !4053, line: 81, baseType: !74, size: 32)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !4081, file: !4053, line: 82, baseType: !4085, size: 128, offset: 64)
!4085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !4053, line: 75, size: 128, elements: !4086)
!4086 = !{!4087, !4088}
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4085, file: !4053, line: 76, baseType: !3350, size: 64)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4085, file: !4053, line: 77, baseType: !4089, size: 64, offset: 64)
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4085, size: 64)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !4081, file: !4053, line: 83, baseType: !1108, size: 256, offset: 192)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !4052, file: !4053, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !4052, file: !4053, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !4052, file: !4053, line: 138, baseType: !7, size: 32, offset: 1056)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !4052, file: !4053, line: 139, baseType: !122, size: 128, offset: 1088)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !4052, file: !4053, line: 142, baseType: !2893, size: 512, offset: 1216)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !4052, file: !4053, line: 143, baseType: !2873, size: 64, offset: 1728)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !4052, file: !4053, line: 150, baseType: !4098, size: 256, offset: 1792)
!4098 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4099, size: 256, elements: !2120)
!4099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !4053, line: 38, size: 128, elements: !4100)
!4100 = !{!4101, !4102}
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !4099, file: !4053, line: 39, baseType: !371, size: 64)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !4099, file: !4053, line: 40, baseType: !371, size: 64, offset: 64)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !4052, file: !4053, line: 156, baseType: !4104, size: 192, offset: 2048)
!4104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !4053, line: 66, size: 192, elements: !4105)
!4105 = !{!4106}
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !4104, file: !4053, line: 67, baseType: !4107, size: 192)
!4107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !4053, line: 47, size: 192, elements: !4108)
!4108 = !{!4109, !4110, !4111}
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4107, file: !4053, line: 48, baseType: !740, size: 64)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4107, file: !4053, line: 49, baseType: !740, size: 64, offset: 64)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !4107, file: !4053, line: 50, baseType: !740, size: 64, offset: 128)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !4052, file: !4053, line: 160, baseType: !3683, size: 640, offset: 2240)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !4052, file: !4053, line: 163, baseType: !4114, size: 256, offset: 2880)
!4114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !786, size: 256, elements: !808)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !4052, file: !4053, line: 169, baseType: !786, size: 64, offset: 3136)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !4052, file: !4053, line: 172, baseType: !47, size: 32, offset: 3200)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !4052, file: !4053, line: 174, baseType: !4118, size: 64, offset: 3264)
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4119 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !4053, line: 174, flags: DIFlagFwdDecl)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !4052, file: !4053, line: 185, baseType: !4121, size: 64, offset: 3328)
!4121 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !444, line: 860, baseType: !4122)
!4122 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !444, line: 853, size: 64, elements: !4123)
!4123 = !{!4124, !4125}
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !4122, file: !444, line: 858, baseType: !443, size: 32)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4122, file: !444, line: 859, baseType: !84, size: 32, offset: 32)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4052, file: !4053, line: 186, baseType: !371, size: 64, offset: 3392)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4052, file: !4053, line: 186, baseType: !371, size: 64, offset: 3456)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !4052, file: !4053, line: 186, baseType: !371, size: 64, offset: 3520)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !4052, file: !4053, line: 186, baseType: !371, size: 64, offset: 3584)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !4052, file: !4053, line: 187, baseType: !371, size: 64, offset: 3648)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !4052, file: !4053, line: 188, baseType: !371, size: 64, offset: 3712)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !4052, file: !4053, line: 189, baseType: !3671, size: 192, offset: 3776)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !4052, file: !4053, line: 190, baseType: !64, size: 64, offset: 3968)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !4052, file: !4053, line: 190, baseType: !64, size: 64, offset: 4032)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !4052, file: !4053, line: 190, baseType: !64, size: 64, offset: 4096)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !4052, file: !4053, line: 190, baseType: !64, size: 64, offset: 4160)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !4052, file: !4053, line: 191, baseType: !64, size: 64, offset: 4224)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !4052, file: !4053, line: 191, baseType: !64, size: 64, offset: 4288)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !4052, file: !4053, line: 191, baseType: !64, size: 64, offset: 4352)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !4052, file: !4053, line: 191, baseType: !64, size: 64, offset: 4416)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !4052, file: !4053, line: 192, baseType: !64, size: 64, offset: 4480)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !4052, file: !4053, line: 192, baseType: !64, size: 64, offset: 4544)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !4052, file: !4053, line: 192, baseType: !64, size: 64, offset: 4608)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !4052, file: !4053, line: 192, baseType: !64, size: 64, offset: 4672)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !4052, file: !4053, line: 193, baseType: !64, size: 64, offset: 4736)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !4052, file: !4053, line: 193, baseType: !64, size: 64, offset: 4800)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !4052, file: !4053, line: 194, baseType: !4148, size: 448, offset: 4864)
!4148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !4149, line: 12, size: 448, elements: !4150)
!4149 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!4150 = !{!4151, !4152, !4153, !4154, !4155, !4156, !4157}
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !4148, file: !4149, line: 15, baseType: !371, size: 64)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !4148, file: !4149, line: 17, baseType: !371, size: 64, offset: 64)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !4148, file: !4149, line: 19, baseType: !371, size: 64, offset: 128)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !4148, file: !4149, line: 21, baseType: !371, size: 64, offset: 192)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !4148, file: !4149, line: 29, baseType: !371, size: 64, offset: 256)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !4148, file: !4149, line: 35, baseType: !371, size: 64, offset: 320)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !4148, file: !4149, line: 44, baseType: !371, size: 64, offset: 384)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !4052, file: !4053, line: 202, baseType: !368, size: 64, offset: 5312)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !4052, file: !4053, line: 213, baseType: !4160, size: 2048, offset: 5376)
!4160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4161, size: 2048, elements: !3706)
!4161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !4162, line: 43, size: 128, elements: !4163)
!4162 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!4163 = !{!4164, !4165}
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !4161, file: !4162, line: 44, baseType: !63, size: 64)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !4161, file: !4162, line: 45, baseType: !63, size: 64, offset: 64)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !4052, file: !4053, line: 216, baseType: !4167, size: 448, offset: 7424)
!4167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !4053, line: 30, size: 448, elements: !4168)
!4168 = !{!4169, !4170, !4171, !4172, !4173, !4174, !4175}
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !4167, file: !4053, line: 31, baseType: !47, size: 32)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !4167, file: !4053, line: 32, baseType: !373, size: 64, offset: 64)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !4167, file: !4053, line: 33, baseType: !64, size: 64, offset: 128)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !4167, file: !4053, line: 34, baseType: !371, size: 64, offset: 192)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !4167, file: !4053, line: 34, baseType: !371, size: 64, offset: 256)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !4167, file: !4053, line: 35, baseType: !64, size: 64, offset: 320)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !4167, file: !4053, line: 35, baseType: !64, size: 64, offset: 384)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !4052, file: !4053, line: 219, baseType: !4177, size: 64, offset: 7872)
!4177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4178, size: 64)
!4178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !4179, line: 41, size: 3456, elements: !4180)
!4179 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!4180 = !{!4181, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4189, !4190, !4191, !4192, !4193, !4195, !4196, !4198, !4199, !4200, !4201, !4202, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4216, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4230, !4231, !4232, !4233, !4234, !4235, !4236, !4237, !4238}
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4178, file: !4179, line: 47, baseType: !119, size: 16)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !4178, file: !4179, line: 48, baseType: !472, size: 32, offset: 32)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !4178, file: !4179, line: 54, baseType: !110, size: 8, offset: 64)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !4178, file: !4179, line: 55, baseType: !110, size: 8, offset: 72)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !4178, file: !4179, line: 73, baseType: !372, size: 64, align: 64, offset: 128)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !4178, file: !4179, line: 74, baseType: !372, size: 64, offset: 192)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !4178, file: !4179, line: 81, baseType: !372, size: 64, offset: 256)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !4178, file: !4179, line: 82, baseType: !372, size: 64, offset: 320)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !4178, file: !4179, line: 85, baseType: !372, size: 64, offset: 384)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !4178, file: !4179, line: 86, baseType: !372, size: 64, offset: 448)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !4178, file: !4179, line: 94, baseType: !372, size: 64, offset: 512)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !4178, file: !4179, line: 102, baseType: !372, size: 64, offset: 576)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !4178, file: !4179, line: 107, baseType: !4194, size: 256, offset: 640)
!4194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 256, elements: !481)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !4178, file: !4179, line: 108, baseType: !110, size: 8, align: 64, offset: 896)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !4178, file: !4179, line: 110, baseType: !4197, size: 24, offset: 904)
!4197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 24, elements: !640)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !4178, file: !4179, line: 111, baseType: !472, size: 32, align: 64, offset: 960)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !4178, file: !4179, line: 113, baseType: !472, size: 32, offset: 992)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !4178, file: !4179, line: 114, baseType: !472, size: 32, offset: 1024)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !4178, file: !4179, line: 115, baseType: !472, size: 32, offset: 1056)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !4178, file: !4179, line: 117, baseType: !472, size: 32, offset: 1088)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !4178, file: !4179, line: 118, baseType: !372, size: 64, align: 64, offset: 1152)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !4178, file: !4179, line: 120, baseType: !372, size: 64, offset: 1216)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !4178, file: !4179, line: 121, baseType: !372, size: 64, offset: 1280)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !4178, file: !4179, line: 122, baseType: !372, size: 64, offset: 1344)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !4178, file: !4179, line: 123, baseType: !372, size: 64, offset: 1408)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !4178, file: !4179, line: 133, baseType: !372, size: 64, offset: 1472)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !4178, file: !4179, line: 137, baseType: !372, size: 64, offset: 1536)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !4178, file: !4179, line: 142, baseType: !372, size: 64, offset: 1600)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !4178, file: !4179, line: 143, baseType: !372, size: 64, offset: 1664)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !4178, file: !4179, line: 146, baseType: !372, size: 64, offset: 1728)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !4178, file: !4179, line: 147, baseType: !372, size: 64, offset: 1792)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !4178, file: !4179, line: 148, baseType: !372, size: 64, offset: 1856)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !4178, file: !4179, line: 149, baseType: !372, size: 64, offset: 1920)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !4178, file: !4179, line: 154, baseType: !372, size: 64, offset: 1984)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !4178, file: !4179, line: 155, baseType: !372, size: 64, offset: 2048)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !4178, file: !4179, line: 156, baseType: !372, size: 64, offset: 2112)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !4178, file: !4179, line: 158, baseType: !372, size: 64, offset: 2176)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !4178, file: !4179, line: 159, baseType: !372, size: 64, offset: 2240)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !4178, file: !4179, line: 162, baseType: !372, size: 64, offset: 2304)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !4178, file: !4179, line: 163, baseType: !372, size: 64, offset: 2368)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !4178, file: !4179, line: 164, baseType: !372, size: 64, offset: 2432)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !4178, file: !4179, line: 167, baseType: !372, size: 64, offset: 2496)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !4178, file: !4179, line: 168, baseType: !372, size: 64, offset: 2560)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !4178, file: !4179, line: 171, baseType: !372, size: 64, offset: 2624)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !4178, file: !4179, line: 172, baseType: !372, size: 64, offset: 2688)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !4178, file: !4179, line: 175, baseType: !372, size: 64, offset: 2752)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !4178, file: !4179, line: 178, baseType: !372, size: 64, offset: 2816)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !4178, file: !4179, line: 179, baseType: !372, size: 64, offset: 2880)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !4178, file: !4179, line: 182, baseType: !472, size: 32, offset: 2944)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !4178, file: !4179, line: 186, baseType: !372, size: 64, align: 64, offset: 3008)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !4178, file: !4179, line: 194, baseType: !372, size: 64, offset: 3072)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !4178, file: !4179, line: 195, baseType: !372, size: 64, offset: 3136)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !4178, file: !4179, line: 199, baseType: !372, size: 64, offset: 3200)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !4178, file: !4179, line: 200, baseType: !372, size: 64, offset: 3264)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !4178, file: !4179, line: 203, baseType: !372, size: 64, offset: 3328)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !4178, file: !4179, line: 204, baseType: !372, size: 64, offset: 3392)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !4052, file: !4053, line: 222, baseType: !7, size: 32, offset: 7936)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !4052, file: !4053, line: 223, baseType: !4241, size: 64, offset: 8000)
!4241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4242, size: 64)
!4242 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !4053, line: 223, flags: DIFlagFwdDecl)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !4052, file: !4053, line: 230, baseType: !937, size: 8, offset: 8064)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !4052, file: !4053, line: 231, baseType: !906, size: 16, offset: 8080)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !4052, file: !4053, line: 232, baseType: !906, size: 16, offset: 8096)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !4052, file: !4053, line: 234, baseType: !1390, size: 64, offset: 8128)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !4052, file: !4053, line: 237, baseType: !747, size: 256, offset: 8192)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !4052, file: !4053, line: 243, baseType: !878, size: 320, offset: 8448)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !3351, file: !1748, line: 1111, baseType: !4250, size: 64, offset: 15424)
!4250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4251, size: 64)
!4251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !4053, line: 20, size: 16640, elements: !4252)
!4252 = !{!4253, !4254, !4255, !4256}
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !4251, file: !4053, line: 21, baseType: !84, size: 32)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4251, file: !4053, line: 22, baseType: !790, size: 32, offset: 32)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !4251, file: !4053, line: 23, baseType: !79, size: 192, offset: 64)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !4251, file: !4053, line: 24, baseType: !4257, size: 16384, offset: 256)
!4257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4258, size: 16384, elements: !644)
!4258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !4064, line: 51, size: 256, elements: !4259)
!4259 = !{!4260}
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !4258, file: !4064, line: 52, baseType: !4261, size: 256)
!4261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !4064, line: 37, size: 256, elements: !4262)
!4262 = !{!4263, !4270, !4271, !4275}
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !4261, file: !4064, line: 39, baseType: !4264, size: 64)
!4264 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !4265, line: 83, baseType: !4266)
!4265 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!4266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4267, size: 64)
!4267 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !4265, line: 82, baseType: !4268)
!4268 = !DISubroutineType(types: !4269)
!4269 = !{null, !47}
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !4261, file: !4064, line: 40, baseType: !64, size: 64, offset: 64)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !4261, file: !4064, line: 46, baseType: !4272, size: 64, offset: 128)
!4272 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !4265, line: 86, baseType: !4273)
!4273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4274, size: 64)
!4274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !4265, line: 85, baseType: !2339)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !4261, file: !4064, line: 48, baseType: !4068, size: 64, offset: 192)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3351, file: !1748, line: 1112, baseType: !4068, size: 64, offset: 15488)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !3351, file: !1748, line: 1113, baseType: !4068, size: 64, offset: 15552)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !3351, file: !1748, line: 1115, baseType: !4068, size: 64, offset: 15616)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !3351, file: !1748, line: 1116, baseType: !4063, size: 192, offset: 15680)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !3351, file: !1748, line: 1117, baseType: !64, size: 64, offset: 15872)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !3351, file: !1748, line: 1118, baseType: !60, size: 64, offset: 15936)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !3351, file: !1748, line: 1119, baseType: !7, size: 32, offset: 16000)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !3351, file: !1748, line: 1121, baseType: !728, size: 64, offset: 16064)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !3351, file: !1748, line: 1125, baseType: !4285, size: 64, offset: 16128)
!4285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4286, size: 64)
!4286 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1748, line: 43, flags: DIFlagFwdDecl)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !3351, file: !1748, line: 1127, baseType: !408, size: 32, offset: 16192)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !3351, file: !1748, line: 1128, baseType: !7, size: 32, offset: 16224)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !3351, file: !1748, line: 1130, baseType: !4290, size: 128, offset: 16256)
!4290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !4291, line: 37, size: 128, elements: !4292)
!4291 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!4292 = !{!4293, !4294, !4295}
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4290, file: !4291, line: 38, baseType: !47, size: 32)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !4290, file: !4291, line: 39, baseType: !74, size: 32, offset: 32)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4290, file: !4291, line: 40, baseType: !4296, size: 64, offset: 64)
!4296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4297, size: 64)
!4297 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !4291, line: 24, flags: DIFlagFwdDecl)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !3351, file: !1748, line: 1131, baseType: !4299, size: 256, offset: 16384)
!4299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !4300, line: 12, size: 256, elements: !4301)
!4300 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!4301 = !{!4302, !4303, !4304, !4305}
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !4299, file: !4300, line: 13, baseType: !540, size: 64)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4299, file: !4300, line: 14, baseType: !64, size: 64, offset: 64)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4299, file: !4300, line: 15, baseType: !64, size: 64, offset: 128)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !4299, file: !4300, line: 16, baseType: !937, size: 8, offset: 192)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !3351, file: !1748, line: 1134, baseType: !371, size: 64, offset: 16640)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !3351, file: !1748, line: 1135, baseType: !371, size: 64, offset: 16704)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !3351, file: !1748, line: 1138, baseType: !84, size: 32, offset: 16768)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !3351, file: !1748, line: 1141, baseType: !752, size: 32, offset: 16800)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !3351, file: !1748, line: 1143, baseType: !4311, size: 64, offset: 16832)
!4311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1748, line: 735, size: 64, elements: !4312)
!4312 = !{!4313}
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4311, file: !1748, line: 736, baseType: !4314, size: 64)
!4314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4311, size: 64)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !3351, file: !1748, line: 1147, baseType: !2950, size: 128, offset: 16896)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !3351, file: !1748, line: 1149, baseType: !3350, size: 64, offset: 17024)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !3351, file: !1748, line: 1151, baseType: !4318, size: 64, offset: 17088)
!4318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4319, size: 64)
!4319 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1748, line: 1151, flags: DIFlagFwdDecl)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !3351, file: !1748, line: 1188, baseType: !45, size: 64, offset: 17152)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !3351, file: !1748, line: 1191, baseType: !4322, size: 64, offset: 17216)
!4322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4323, size: 64)
!4323 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1748, line: 44, flags: DIFlagFwdDecl)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !3351, file: !1748, line: 1194, baseType: !4325, size: 64, offset: 17280)
!4325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4326, size: 64)
!4326 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1748, line: 45, flags: DIFlagFwdDecl)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !3351, file: !1748, line: 1197, baseType: !4328, size: 64, offset: 17344)
!4328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4329, size: 64)
!4329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !4330, line: 155, size: 64, elements: !4331)
!4330 = !DIFile(filename: "./include/linux/swap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b48f968c4d3c1313a5ba7451c8be5b79")
!4331 = !{!4332}
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "reclaimed", scope: !4329, file: !4330, line: 157, baseType: !64, size: 64)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !3351, file: !1748, line: 1199, baseType: !4334, size: 64, offset: 17408)
!4334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4335, size: 64)
!4335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2667, line: 99, size: 128, elements: !4336)
!4336 = !{!4337, !4338, !4339}
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4335, file: !2667, line: 100, baseType: !738, size: 64)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !4335, file: !2667, line: 101, baseType: !74, size: 32, offset: 64)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !4335, file: !2667, line: 103, baseType: !51, size: 16, offset: 96)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !3351, file: !1748, line: 1202, baseType: !4341, size: 64, offset: 17472)
!4341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4342, size: 64)
!4342 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1748, line: 48, flags: DIFlagFwdDecl)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !3351, file: !1748, line: 1205, baseType: !64, size: 64, offset: 17536)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !3351, file: !1748, line: 1206, baseType: !4345, size: 64, offset: 17600)
!4345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4346, size: 64)
!4346 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !4064, line: 14, baseType: !4347)
!4347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !4064, line: 12, size: 384, elements: !4348)
!4348 = !{!4349}
!4349 = !DIDerivedType(tag: DW_TAG_member, scope: !4347, file: !4064, line: 13, baseType: !4350, size: 384)
!4350 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4347, file: !4064, line: 13, size: 384, elements: !4351)
!4351 = !{!4352, !4353, !4354, !4355}
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !4350, file: !4064, line: 13, baseType: !47, size: 32)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !4350, file: !4064, line: 13, baseType: !47, size: 32, offset: 32)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !4350, file: !4064, line: 13, baseType: !47, size: 32, offset: 64)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !4350, file: !4064, line: 13, baseType: !4356, size: 256, offset: 128)
!4356 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !4357, line: 37, size: 256, elements: !4358)
!4357 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!4358 = !{!4359, !4364, !4377, !4383, !4392, !4419, !4424}
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !4356, file: !4357, line: 42, baseType: !4360, size: 64)
!4360 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4356, file: !4357, line: 39, size: 64, elements: !4361)
!4361 = !{!4362, !4363}
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4360, file: !4357, line: 40, baseType: !3648, size: 32)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4360, file: !4357, line: 41, baseType: !414, size: 32, offset: 32)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !4356, file: !4357, line: 50, baseType: !4365, size: 192)
!4365 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4356, file: !4357, line: 45, size: 192, elements: !4366)
!4366 = !{!4367, !4369, !4370, !4376}
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !4365, file: !4357, line: 46, baseType: !4368, size: 32)
!4368 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !62, line: 95, baseType: !47)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !4365, file: !4357, line: 47, baseType: !47, size: 32, offset: 32)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4365, file: !4357, line: 48, baseType: !4371, size: 64, offset: 64)
!4371 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !4357, line: 11, baseType: !4372)
!4372 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !4357, line: 8, size: 64, elements: !4373)
!4373 = !{!4374, !4375}
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !4372, file: !4357, line: 9, baseType: !47, size: 32)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !4372, file: !4357, line: 10, baseType: !45, size: 64)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !4365, file: !4357, line: 49, baseType: !47, size: 32, offset: 128)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !4356, file: !4357, line: 57, baseType: !4378, size: 128)
!4378 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4356, file: !4357, line: 53, size: 128, elements: !4379)
!4379 = !{!4380, !4381, !4382}
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4378, file: !4357, line: 54, baseType: !3648, size: 32)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4378, file: !4357, line: 55, baseType: !414, size: 32, offset: 32)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4378, file: !4357, line: 56, baseType: !4371, size: 64, offset: 64)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !4356, file: !4357, line: 66, baseType: !4384, size: 256)
!4384 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4356, file: !4357, line: 60, size: 256, elements: !4385)
!4385 = !{!4386, !4387, !4388, !4389, !4391}
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4384, file: !4357, line: 61, baseType: !3648, size: 32)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4384, file: !4357, line: 62, baseType: !414, size: 32, offset: 32)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !4384, file: !4357, line: 63, baseType: !47, size: 32, offset: 64)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !4384, file: !4357, line: 64, baseType: !4390, size: 64, offset: 128)
!4390 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !62, line: 94, baseType: !673)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !4384, file: !4357, line: 65, baseType: !4390, size: 64, offset: 192)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !4356, file: !4357, line: 105, baseType: !4393, size: 256)
!4393 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4356, file: !4357, line: 69, size: 256, elements: !4394)
!4394 = !{!4395, !4396}
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !4393, file: !4357, line: 70, baseType: !45, size: 64)
!4396 = !DIDerivedType(tag: DW_TAG_member, scope: !4393, file: !4357, line: 79, baseType: !4397, size: 192, offset: 64)
!4397 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4393, file: !4357, line: 79, size: 192, elements: !4398)
!4398 = !{!4399, !4400, !4401, !4408, !4413}
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !4397, file: !4357, line: 81, baseType: !47, size: 32)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !4397, file: !4357, line: 86, baseType: !906, size: 16)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !4397, file: !4357, line: 92, baseType: !4402, size: 192)
!4402 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4397, file: !4357, line: 88, size: 192, elements: !4403)
!4403 = !{!4404, !4406, !4407}
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !4402, file: !4357, line: 89, baseType: !4405, size: 64)
!4405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 64, elements: !2934)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !4402, file: !4357, line: 90, baseType: !45, size: 64, offset: 64)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !4402, file: !4357, line: 91, baseType: !45, size: 64, offset: 128)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !4397, file: !4357, line: 97, baseType: !4409, size: 96)
!4409 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4397, file: !4357, line: 94, size: 96, elements: !4410)
!4410 = !{!4411, !4412}
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !4409, file: !4357, line: 95, baseType: !4405, size: 64)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !4409, file: !4357, line: 96, baseType: !472, size: 32, offset: 64)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !4397, file: !4357, line: 103, baseType: !4414, size: 128)
!4414 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4397, file: !4357, line: 99, size: 128, elements: !4415)
!4415 = !{!4416, !4417, !4418}
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !4414, file: !4357, line: 100, baseType: !64, size: 64)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !4414, file: !4357, line: 101, baseType: !472, size: 32, offset: 64)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4414, file: !4357, line: 102, baseType: !472, size: 32, offset: 96)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !4356, file: !4357, line: 111, baseType: !4420, size: 128)
!4420 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4356, file: !4357, line: 108, size: 128, elements: !4421)
!4421 = !{!4422, !4423}
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !4420, file: !4357, line: 109, baseType: !373, size: 64)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !4420, file: !4357, line: 110, baseType: !47, size: 32, offset: 64)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !4356, file: !4357, line: 118, baseType: !4425, size: 128)
!4425 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4356, file: !4357, line: 114, size: 128, elements: !4426)
!4426 = !{!4427, !4428, !4429}
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !4425, file: !4357, line: 115, baseType: !45, size: 64)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !4425, file: !4357, line: 116, baseType: !47, size: 32, offset: 64)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !4425, file: !4357, line: 117, baseType: !7, size: 32, offset: 96)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3351, file: !1748, line: 1208, baseType: !4148, size: 448, offset: 17664)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !3351, file: !1748, line: 1215, baseType: !371, size: 64, offset: 18112)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !3351, file: !1748, line: 1217, baseType: !371, size: 64, offset: 18176)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !3351, file: !1748, line: 1219, baseType: !371, size: 64, offset: 18240)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !3351, file: !1748, line: 1223, baseType: !4435, size: 64, offset: 18304)
!4435 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !4436, line: 99, baseType: !4437)
!4436 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!4437 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4436, line: 99, size: 64, elements: !4438)
!4438 = !{!4439}
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !4437, file: !4436, line: 99, baseType: !3513, size: 64)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !3351, file: !1748, line: 1225, baseType: !443, size: 32, offset: 18368)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !3351, file: !1748, line: 1226, baseType: !47, size: 32, offset: 18400)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !3351, file: !1748, line: 1227, baseType: !47, size: 32, offset: 18432)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !3351, file: !1748, line: 1231, baseType: !3764, size: 64, offset: 18496)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !3351, file: !1748, line: 1233, baseType: !122, size: 128, offset: 18560)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !3351, file: !1748, line: 1240, baseType: !4446, size: 64, offset: 18688)
!4446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4447, size: 64)
!4447 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1748, line: 62, flags: DIFlagFwdDecl)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !3351, file: !1748, line: 1242, baseType: !4449, size: 64, offset: 18752)
!4449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4450, size: 64)
!4450 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1748, line: 1242, flags: DIFlagFwdDecl)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !3351, file: !1748, line: 1244, baseType: !122, size: 128, offset: 18816)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !3351, file: !1748, line: 1245, baseType: !4453, size: 64, offset: 18944)
!4453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4454, size: 64)
!4454 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1748, line: 51, flags: DIFlagFwdDecl)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !3351, file: !1748, line: 1246, baseType: !747, size: 256, offset: 19008)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !3351, file: !1748, line: 1247, baseType: !7, size: 32, offset: 19264)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !3351, file: !1748, line: 1250, baseType: !4458, size: 64, offset: 19328)
!4458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4459, size: 64)
!4459 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1748, line: 57, flags: DIFlagFwdDecl)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !3351, file: !1748, line: 1251, baseType: !747, size: 256, offset: 19392)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !3351, file: !1748, line: 1252, baseType: !122, size: 128, offset: 19648)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !3351, file: !1748, line: 1259, baseType: !1694, size: 64, offset: 19776)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !3351, file: !1748, line: 1260, baseType: !906, size: 16, offset: 19840)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !3351, file: !1748, line: 1261, baseType: !906, size: 16, offset: 19856)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !3351, file: !1748, line: 1314, baseType: !4466, size: 64, offset: 19904)
!4466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4467, size: 64)
!4467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !4468, line: 62, size: 256, align: 256, elements: !4469)
!4468 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!4469 = !{!4470, !4471, !4472, !4473, !4474, !4475, !4476}
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !4467, file: !4468, line: 75, baseType: !472, size: 32)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !4467, file: !4468, line: 90, baseType: !472, size: 32, offset: 32)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !4467, file: !4468, line: 112, baseType: !372, size: 64, offset: 64)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4467, file: !4468, line: 132, baseType: !472, size: 32, offset: 128)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !4467, file: !4468, line: 140, baseType: !472, size: 32, offset: 160)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !4467, file: !4468, line: 149, baseType: !472, size: 32, offset: 192)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4467, file: !4468, line: 154, baseType: !4477, offset: 224)
!4477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, elements: !821)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !3351, file: !1748, line: 1315, baseType: !471, size: 32, offset: 19968)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !3351, file: !1748, line: 1316, baseType: !471, size: 32, offset: 20000)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !3351, file: !1748, line: 1321, baseType: !64, size: 64, offset: 20032)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3351, file: !1748, line: 1325, baseType: !47, size: 32, offset: 20096)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !3351, file: !1748, line: 1326, baseType: !47, size: 32, offset: 20128)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !3351, file: !1748, line: 1327, baseType: !47, size: 32, offset: 20160)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !3351, file: !1748, line: 1328, baseType: !47, size: 32, offset: 20192)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !3351, file: !1748, line: 1329, baseType: !725, size: 128, align: 64, offset: 20224)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !3351, file: !1748, line: 1332, baseType: !4487, size: 128, offset: 20352)
!4487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !4488, line: 51, size: 128, elements: !4489)
!4488 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!4489 = !{!4490, !4495, !4496}
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !4487, file: !4488, line: 60, baseType: !4491, size: 64)
!4491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !4492, line: 7, size: 64, elements: !4493)
!4492 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!4493 = !{!4494}
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !4491, file: !4492, line: 12, baseType: !3510, size: 64)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !4487, file: !4488, line: 63, baseType: !937, size: 8, offset: 64)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !4487, file: !4488, line: 70, baseType: !937, size: 8, offset: 72)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !3351, file: !1748, line: 1335, baseType: !1746, size: 64, offset: 20480)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !3351, file: !1748, line: 1337, baseType: !4499, size: 128, offset: 20544)
!4499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !4488, line: 39, size: 128, elements: !4500)
!4500 = !{!4501, !4502, !4503}
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4499, file: !4488, line: 40, baseType: !376, size: 64)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4499, file: !4488, line: 42, baseType: !472, size: 32, offset: 64)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4499, file: !4488, line: 43, baseType: !472, size: 32, offset: 96)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !3351, file: !1748, line: 1340, baseType: !4505, size: 64, offset: 20672)
!4505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4506, size: 64)
!4506 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1748, line: 69, flags: DIFlagFwdDecl)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !3351, file: !1748, line: 1351, baseType: !47, size: 32, offset: 20736)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !3351, file: !1748, line: 1352, baseType: !47, size: 32, offset: 20768)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !3351, file: !1748, line: 1354, baseType: !64, size: 64, offset: 20800)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !3351, file: !1748, line: 1364, baseType: !371, size: 64, offset: 20864)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !3351, file: !1748, line: 1365, baseType: !371, size: 64, offset: 20928)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !3351, file: !1748, line: 1412, baseType: !64, size: 64, offset: 20992)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !3351, file: !1748, line: 1453, baseType: !2662, size: 64, offset: 21056)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !3351, file: !1748, line: 1457, baseType: !4515, size: 64, offset: 21120)
!4515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4516, size: 64)
!4516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !247, line: 61, size: 576, elements: !4517)
!4517 = !{!4518, !4519, !4538, !4541, !4542, !4575, !4585}
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4516, file: !247, line: 62, baseType: !246, size: 32)
!4519 = !DIDerivedType(tag: DW_TAG_member, scope: !4516, file: !247, line: 64, baseType: !4520, size: 192, offset: 64)
!4520 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4516, file: !247, line: 64, size: 192, elements: !4521)
!4521 = !{!4522, !4533}
!4522 = !DIDerivedType(tag: DW_TAG_member, scope: !4520, file: !247, line: 65, baseType: !4523, size: 192)
!4523 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4520, file: !247, line: 65, size: 192, elements: !4524)
!4524 = !{!4525, !4532}
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4523, file: !247, line: 66, baseType: !4526, size: 128)
!4526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4527, line: 50, size: 128, elements: !4528)
!4527 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4528 = !{!4529, !4530, !4531}
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4526, file: !4527, line: 52, baseType: !64, size: 64)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4526, file: !4527, line: 54, baseType: !7, size: 32, offset: 64)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4526, file: !4527, line: 55, baseType: !7, size: 32, offset: 96)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4523, file: !247, line: 67, baseType: !64, size: 64, offset: 128)
!4533 = !DIDerivedType(tag: DW_TAG_member, scope: !4520, file: !247, line: 70, baseType: !4534, size: 192)
!4534 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4520, file: !247, line: 70, size: 192, elements: !4535)
!4535 = !{!4536, !4537}
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4534, file: !247, line: 71, baseType: !725, size: 128, align: 64)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4534, file: !247, line: 72, baseType: !64, size: 64, offset: 128)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !4516, file: !247, line: 76, baseType: !4539, size: 64, offset: 256)
!4539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4540, size: 64)
!4540 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !247, line: 76, flags: DIFlagFwdDecl)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !4516, file: !247, line: 77, baseType: !64, size: 64, offset: 320)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !4516, file: !247, line: 79, baseType: !4543, size: 64, offset: 384)
!4543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4544, size: 64)
!4544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4527, line: 25, size: 256, elements: !4545)
!4545 = !{!4546, !4552, !4556}
!4546 = !DIDerivedType(tag: DW_TAG_member, scope: !4544, file: !4527, line: 26, baseType: !4547, size: 128)
!4547 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4544, file: !4527, line: 26, size: 128, elements: !4548)
!4548 = !{!4549, !4551}
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4547, file: !4527, line: 27, baseType: !4550, size: 128)
!4550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 128, elements: !3706)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4547, file: !4527, line: 28, baseType: !4550, size: 128)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4544, file: !4527, line: 31, baseType: !4553, size: 64, offset: 128)
!4553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4554, size: 64)
!4554 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4555)
!4555 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4527, line: 23, flags: DIFlagFwdDecl)
!4556 = !DIDerivedType(tag: DW_TAG_member, scope: !4544, file: !4527, line: 33, baseType: !4557, size: 64, offset: 192)
!4557 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4544, file: !4527, line: 33, size: 64, elements: !4558)
!4558 = !{!4559, !4565, !4570}
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4557, file: !4527, line: 38, baseType: !4560, size: 64)
!4560 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4557, file: !4527, line: 34, size: 64, elements: !4561)
!4561 = !{!4562, !4563, !4564}
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4560, file: !4527, line: 35, baseType: !863, size: 32)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4560, file: !4527, line: 36, baseType: !108, size: 8, offset: 32)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4560, file: !4527, line: 37, baseType: !108, size: 8, offset: 40)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4557, file: !4527, line: 42, baseType: !4566, size: 16)
!4566 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4557, file: !4527, line: 39, size: 16, elements: !4567)
!4567 = !{!4568, !4569}
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4566, file: !4527, line: 40, baseType: !108, size: 8)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4566, file: !4527, line: 41, baseType: !108, size: 8, offset: 8)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4557, file: !4527, line: 46, baseType: !4571, size: 16)
!4571 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4557, file: !4527, line: 43, size: 16, elements: !4572)
!4572 = !{!4573, !4574}
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4571, file: !4527, line: 44, baseType: !108, size: 8)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4571, file: !4527, line: 45, baseType: !108, size: 8, offset: 8)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !4516, file: !247, line: 81, baseType: !4576, size: 64, offset: 448)
!4576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4577, size: 64)
!4577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !247, line: 85, size: 384, elements: !4578)
!4578 = !{!4579, !4580, !4581, !4582, !4583, !4584}
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4577, file: !247, line: 86, baseType: !4539, size: 64)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4577, file: !247, line: 87, baseType: !64, size: 64, offset: 64)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4577, file: !247, line: 88, baseType: !64, size: 64, offset: 128)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4577, file: !247, line: 89, baseType: !64, size: 64, offset: 192)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4577, file: !247, line: 90, baseType: !937, size: 8, offset: 256)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4577, file: !247, line: 92, baseType: !4576, size: 64, offset: 320)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4516, file: !247, line: 82, baseType: !7, size: 32, offset: 512)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !3351, file: !1748, line: 1463, baseType: !4587, offset: 21184)
!4587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1748, line: 739, elements: !1411)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3351, file: !1748, line: 1470, baseType: !725, size: 128, align: 64, offset: 21184)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3351, file: !1748, line: 1471, baseType: !790, size: 32, offset: 21312)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !3351, file: !1748, line: 1472, baseType: !47, size: 32, offset: 21344)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !3351, file: !1748, line: 1474, baseType: !3350, size: 64, offset: 21376)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !3351, file: !1748, line: 1475, baseType: !2229, size: 320, offset: 21440)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !3351, file: !1748, line: 1478, baseType: !4594, size: 64, offset: 21760)
!4594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4595, size: 64)
!4595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !4596, line: 49, size: 512, elements: !4597)
!4596 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!4597 = !{!4598, !4599, !4600, !4601, !4602, !4604, !4605, !4606, !4607}
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4595, file: !4596, line: 50, baseType: !4594, size: 64)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4595, file: !4596, line: 51, baseType: !45, size: 64, offset: 64)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4595, file: !4596, line: 52, baseType: !64, size: 64, offset: 128)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4595, file: !4596, line: 53, baseType: !64, size: 64, offset: 192)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !4595, file: !4596, line: 54, baseType: !4603, size: 64, offset: 256)
!4603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !4595, file: !4596, line: 56, baseType: !7, size: 32, offset: 320)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !4595, file: !4596, line: 58, baseType: !7, size: 32, offset: 352)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !4595, file: !4596, line: 59, baseType: !370, size: 64, offset: 384)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !4595, file: !4596, line: 60, baseType: !1526, size: 64, offset: 448)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !3351, file: !1748, line: 1482, baseType: !790, size: 32, offset: 21824)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !3351, file: !1748, line: 1489, baseType: !45, size: 64, offset: 21888)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !3351, file: !1748, line: 1504, baseType: !45, size: 64, offset: 21952)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !3351, file: !1748, line: 1505, baseType: !372, size: 64, offset: 22016)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !3351, file: !1748, line: 1506, baseType: !371, size: 64, offset: 22080)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !3351, file: !1748, line: 1507, baseType: !372, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !3351, file: !1748, line: 1508, baseType: !372, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !3351, file: !1748, line: 1509, baseType: !372, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !3351, file: !1748, line: 1510, baseType: !725, size: 128, align: 64, offset: 22208)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !3351, file: !1748, line: 1511, baseType: !47, size: 32, offset: 22336)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !3351, file: !1748, line: 1515, baseType: !4619, size: 64, offset: 22400)
!4619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !720, line: 56, size: 64, elements: !4620)
!4620 = !{!4621}
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4619, file: !720, line: 57, baseType: !723, size: 64)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !3351, file: !1748, line: 1518, baseType: !4619, size: 64, offset: 22464)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !3351, file: !1748, line: 1528, baseType: !725, size: 128, align: 64, offset: 22528)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !3351, file: !1748, line: 1552, baseType: !4625, size: 35328, offset: 23040)
!4625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4626, line: 430, size: 35328, elements: !4627)
!4626 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4627 = !{!4628, !4630, !4631, !4632, !4633, !4634, !4635, !4636, !4637, !4641, !4642, !4643, !4644, !4645, !4646, !4649, !4650, !4651, !4652}
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4625, file: !4626, line: 432, baseType: !4629, size: 192)
!4629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1492, size: 192, elements: !640)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4625, file: !4626, line: 436, baseType: !64, size: 64, offset: 192)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4625, file: !4626, line: 440, baseType: !51, size: 16, offset: 256)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4625, file: !4626, line: 441, baseType: !51, size: 16, offset: 272)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4625, file: !4626, line: 442, baseType: !51, size: 16, offset: 288)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4625, file: !4626, line: 443, baseType: !51, size: 16, offset: 304)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4625, file: !4626, line: 447, baseType: !64, size: 64, offset: 320)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4625, file: !4626, line: 448, baseType: !64, size: 64, offset: 384)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4625, file: !4626, line: 459, baseType: !4638, size: 256, offset: 448)
!4638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4639, size: 256, elements: !808)
!4639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4640, size: 64)
!4640 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4626, line: 428, flags: DIFlagFwdDecl)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4625, file: !4626, line: 461, baseType: !64, size: 64, offset: 704)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4625, file: !4626, line: 463, baseType: !64, size: 64, offset: 768)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4625, file: !4626, line: 465, baseType: !64, size: 64, offset: 832)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4625, file: !4626, line: 466, baseType: !64, size: 64, offset: 896)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4625, file: !4626, line: 467, baseType: !64, size: 64, offset: 960)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4625, file: !4626, line: 473, baseType: !4647, size: 64, offset: 1024)
!4647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4648, size: 64)
!4648 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4626, line: 10, flags: DIFlagFwdDecl)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4625, file: !4626, line: 480, baseType: !64, size: 64, offset: 1088)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4625, file: !4626, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4625, file: !4626, line: 491, baseType: !471, size: 32, offset: 1184)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4625, file: !4626, line: 501, baseType: !4653, size: 33792, offset: 1536)
!4653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4654, line: 448, size: 33792, elements: !4655)
!4654 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4655 = !{!4656, !4657, !4658, !4818, !4819, !4825, !4826}
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4653, file: !4654, line: 461, baseType: !7, size: 32)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4653, file: !4654, line: 468, baseType: !64, size: 64, offset: 64)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4653, file: !4654, line: 476, baseType: !4659, size: 64, offset: 128)
!4659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4660, size: 64)
!4660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4654, line: 356, size: 33280, align: 512, elements: !4661)
!4661 = !{!4662, !4663, !4664, !4665, !4666, !4667, !4668, !4669, !4670, !4671}
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4660, file: !4654, line: 358, baseType: !7, size: 32)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4660, file: !4654, line: 361, baseType: !7, size: 32, offset: 32)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4660, file: !4654, line: 364, baseType: !371, size: 64, offset: 64)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4660, file: !4654, line: 367, baseType: !371, size: 64, offset: 128)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4660, file: !4654, line: 370, baseType: !371, size: 64, offset: 192)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4660, file: !4654, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4660, file: !4654, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4660, file: !4654, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4660, file: !4654, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4660, file: !4654, line: 397, baseType: !4672, size: 32768, offset: 512)
!4672 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4654, line: 348, size: 32768, elements: !4673)
!4673 = !{!4674, !4689, !4726, !4803, !4816}
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4672, file: !4654, line: 349, baseType: !4675, size: 896)
!4675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4654, line: 12, size: 896, elements: !4676)
!4676 = !{!4677, !4678, !4679, !4680, !4681, !4682, !4683, !4684, !4688}
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4675, file: !4654, line: 13, baseType: !471, size: 32)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4675, file: !4654, line: 14, baseType: !471, size: 32, offset: 32)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4675, file: !4654, line: 15, baseType: !471, size: 32, offset: 64)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4675, file: !4654, line: 16, baseType: !471, size: 32, offset: 96)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4675, file: !4654, line: 17, baseType: !471, size: 32, offset: 128)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4675, file: !4654, line: 18, baseType: !471, size: 32, offset: 160)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4675, file: !4654, line: 19, baseType: !471, size: 32, offset: 192)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4675, file: !4654, line: 22, baseType: !4685, size: 640, offset: 224)
!4685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !471, size: 640, elements: !4686)
!4686 = !{!4687}
!4687 = !DISubrange(count: 20)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4675, file: !4654, line: 25, baseType: !471, size: 32, offset: 864)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4672, file: !4654, line: 350, baseType: !4690, size: 4096, align: 128)
!4690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4654, line: 34, size: 4096, align: 128, elements: !4691)
!4691 = !{!4692, !4693, !4694, !4695, !4696, !4711, !4712, !4713, !4715, !4717, !4721}
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4690, file: !4654, line: 35, baseType: !118, size: 16)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4690, file: !4654, line: 36, baseType: !118, size: 16, offset: 16)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4690, file: !4654, line: 37, baseType: !118, size: 16, offset: 32)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4690, file: !4654, line: 38, baseType: !118, size: 16, offset: 48)
!4696 = !DIDerivedType(tag: DW_TAG_member, scope: !4690, file: !4654, line: 39, baseType: !4697, size: 128, offset: 64)
!4697 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4690, file: !4654, line: 39, size: 128, elements: !4698)
!4698 = !{!4699, !4704}
!4699 = !DIDerivedType(tag: DW_TAG_member, scope: !4697, file: !4654, line: 40, baseType: !4700, size: 128)
!4700 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4697, file: !4654, line: 40, size: 128, elements: !4701)
!4701 = !{!4702, !4703}
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4700, file: !4654, line: 41, baseType: !371, size: 64)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4700, file: !4654, line: 42, baseType: !371, size: 64, offset: 64)
!4704 = !DIDerivedType(tag: DW_TAG_member, scope: !4697, file: !4654, line: 44, baseType: !4705, size: 128)
!4705 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4697, file: !4654, line: 44, size: 128, elements: !4706)
!4706 = !{!4707, !4708, !4709, !4710}
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4705, file: !4654, line: 45, baseType: !471, size: 32)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4705, file: !4654, line: 46, baseType: !471, size: 32, offset: 32)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4705, file: !4654, line: 47, baseType: !471, size: 32, offset: 64)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4705, file: !4654, line: 48, baseType: !471, size: 32, offset: 96)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4690, file: !4654, line: 51, baseType: !471, size: 32, offset: 192)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4690, file: !4654, line: 52, baseType: !471, size: 32, offset: 224)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4690, file: !4654, line: 55, baseType: !4714, size: 1024, offset: 256)
!4714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !471, size: 1024, elements: !481)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4690, file: !4654, line: 58, baseType: !4716, size: 2048, offset: 1280)
!4716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !471, size: 2048, elements: !644)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4690, file: !4654, line: 60, baseType: !4718, size: 384, offset: 3328)
!4718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !471, size: 384, elements: !4719)
!4719 = !{!4720}
!4720 = !DISubrange(count: 12)
!4721 = !DIDerivedType(tag: DW_TAG_member, scope: !4690, file: !4654, line: 62, baseType: !4722, size: 384, offset: 3712)
!4722 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4690, file: !4654, line: 62, size: 384, elements: !4723)
!4723 = !{!4724, !4725}
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4722, file: !4654, line: 63, baseType: !4718, size: 384)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4722, file: !4654, line: 64, baseType: !4718, size: 384)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4672, file: !4654, line: 351, baseType: !4727, size: 1088)
!4727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4654, line: 79, size: 1088, elements: !4728)
!4728 = !{!4729, !4730, !4731, !4732, !4733, !4734, !4735, !4736, !4737, !4738, !4739, !4740, !4741, !4742, !4743, !4802}
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4727, file: !4654, line: 80, baseType: !471, size: 32)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4727, file: !4654, line: 81, baseType: !471, size: 32, offset: 32)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4727, file: !4654, line: 82, baseType: !471, size: 32, offset: 64)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4727, file: !4654, line: 83, baseType: !471, size: 32, offset: 96)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4727, file: !4654, line: 84, baseType: !471, size: 32, offset: 128)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4727, file: !4654, line: 85, baseType: !471, size: 32, offset: 160)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4727, file: !4654, line: 86, baseType: !471, size: 32, offset: 192)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4727, file: !4654, line: 88, baseType: !4685, size: 640, offset: 224)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4727, file: !4654, line: 89, baseType: !108, size: 8, offset: 864)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4727, file: !4654, line: 90, baseType: !108, size: 8, offset: 872)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4727, file: !4654, line: 91, baseType: !108, size: 8, offset: 880)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4727, file: !4654, line: 92, baseType: !108, size: 8, offset: 888)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4727, file: !4654, line: 93, baseType: !108, size: 8, offset: 896)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4727, file: !4654, line: 94, baseType: !108, size: 8, offset: 904)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4727, file: !4654, line: 95, baseType: !4744, size: 64, offset: 960)
!4744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4745, size: 64)
!4745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4746, line: 11, size: 128, elements: !4747)
!4746 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4747 = !{!4748, !4749}
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4745, file: !4746, line: 12, baseType: !373, size: 64)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4745, file: !4746, line: 13, baseType: !4750, size: 64, offset: 64)
!4750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4751, size: 64)
!4751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4752, line: 103, size: 1344, elements: !4753)
!4752 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4753 = !{!4754, !4755, !4756, !4757, !4758, !4759, !4760, !4761, !4762, !4763, !4764, !4765, !4766, !4767, !4768, !4769, !4770, !4771, !4782, !4783, !4784}
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4751, file: !4752, line: 109, baseType: !64, size: 64)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4751, file: !4752, line: 110, baseType: !64, size: 64, offset: 64)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4751, file: !4752, line: 111, baseType: !64, size: 64, offset: 128)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4751, file: !4752, line: 112, baseType: !64, size: 64, offset: 192)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4751, file: !4752, line: 113, baseType: !64, size: 64, offset: 256)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4751, file: !4752, line: 114, baseType: !64, size: 64, offset: 320)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4751, file: !4752, line: 117, baseType: !64, size: 64, offset: 384)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4751, file: !4752, line: 118, baseType: !64, size: 64, offset: 448)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4751, file: !4752, line: 119, baseType: !64, size: 64, offset: 512)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4751, file: !4752, line: 120, baseType: !64, size: 64, offset: 576)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4751, file: !4752, line: 121, baseType: !64, size: 64, offset: 640)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4751, file: !4752, line: 122, baseType: !64, size: 64, offset: 704)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4751, file: !4752, line: 123, baseType: !64, size: 64, offset: 768)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4751, file: !4752, line: 124, baseType: !64, size: 64, offset: 832)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4751, file: !4752, line: 125, baseType: !64, size: 64, offset: 896)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4751, file: !4752, line: 139, baseType: !64, size: 64, offset: 960)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4751, file: !4752, line: 142, baseType: !64, size: 64, offset: 1024)
!4771 = !DIDerivedType(tag: DW_TAG_member, scope: !4751, file: !4752, line: 144, baseType: !4772, size: 64, offset: 1088)
!4772 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4751, file: !4752, line: 144, size: 64, elements: !4773)
!4773 = !{!4774, !4775, !4776}
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4772, file: !4752, line: 146, baseType: !118, size: 16)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4772, file: !4752, line: 148, baseType: !371, size: 64)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4772, file: !4752, line: 150, baseType: !4777, size: 64)
!4777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4752, line: 59, size: 64, elements: !4778)
!4778 = !{!4779, !4780, !4781}
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4777, file: !4752, line: 61, baseType: !371, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4777, file: !4752, line: 63, baseType: !371, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4777, file: !4752, line: 65, baseType: !371, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4751, file: !4752, line: 153, baseType: !64, size: 64, offset: 1152)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4751, file: !4752, line: 154, baseType: !64, size: 64, offset: 1216)
!4784 = !DIDerivedType(tag: DW_TAG_member, scope: !4751, file: !4752, line: 156, baseType: !4785, size: 64, offset: 1280)
!4785 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4751, file: !4752, line: 156, size: 64, elements: !4786)
!4786 = !{!4787, !4788, !4789}
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4785, file: !4752, line: 158, baseType: !118, size: 16)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4785, file: !4752, line: 160, baseType: !371, size: 64)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4785, file: !4752, line: 162, baseType: !4790, size: 64)
!4790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4752, line: 69, size: 64, elements: !4791)
!4791 = !{!4792, !4793, !4794, !4795, !4796, !4797, !4798, !4799, !4800, !4801}
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4790, file: !4752, line: 71, baseType: !371, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4790, file: !4752, line: 73, baseType: !371, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4790, file: !4752, line: 75, baseType: !371, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4790, file: !4752, line: 77, baseType: !371, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4790, file: !4752, line: 80, baseType: !371, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4790, file: !4752, line: 83, baseType: !371, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4790, file: !4752, line: 86, baseType: !371, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4790, file: !4752, line: 88, baseType: !371, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4790, file: !4752, line: 93, baseType: !371, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4790, file: !4752, line: 100, baseType: !371, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4727, file: !4654, line: 96, baseType: !471, size: 32, offset: 1024)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4672, file: !4654, line: 352, baseType: !4804, size: 4608, align: 512)
!4804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4654, line: 333, size: 4608, align: 512, elements: !4805)
!4805 = !{!4806, !4807, !4814}
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4804, file: !4654, line: 334, baseType: !4690, size: 4096, align: 128)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4804, file: !4654, line: 335, baseType: !4808, size: 512, offset: 4096)
!4808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4654, line: 312, size: 512, elements: !4809)
!4809 = !{!4810, !4811, !4812}
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4808, file: !4654, line: 313, baseType: !371, size: 64)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4808, file: !4654, line: 314, baseType: !371, size: 64, offset: 64)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4808, file: !4654, line: 315, baseType: !4813, size: 384, offset: 128)
!4813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, size: 384, elements: !924)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4804, file: !4654, line: 336, baseType: !4815, offset: 4608)
!4815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, elements: !821)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4672, file: !4654, line: 353, baseType: !4817, size: 32768)
!4817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 32768, elements: !3821)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4653, file: !4654, line: 484, baseType: !4659, size: 64, offset: 192)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4653, file: !4654, line: 491, baseType: !4820, size: 128, offset: 256)
!4820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4654, line: 404, size: 128, elements: !4821)
!4821 = !{!4822, !4823, !4824}
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4820, file: !4654, line: 424, baseType: !371, size: 64)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4820, file: !4654, line: 432, baseType: !7, size: 32, offset: 64)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4820, file: !4654, line: 440, baseType: !7, size: 32, offset: 96)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4653, file: !4654, line: 498, baseType: !4820, size: 128, offset: 384)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4653, file: !4654, line: 508, baseType: !4660, size: 33280, align: 512, offset: 512)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3333, file: !3334, line: 16, baseType: !79, size: 192, offset: 512)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3333, file: !3334, line: 17, baseType: !74, size: 32, offset: 704)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !552, file: !160, line: 1240, baseType: !45, size: 64, offset: 6912)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !552, file: !160, line: 1243, baseType: !471, size: 32, offset: 6976)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !552, file: !160, line: 1245, baseType: !894, size: 64, offset: 7040)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !552, file: !160, line: 1246, baseType: !894, size: 64, offset: 7104)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !552, file: !160, line: 1248, baseType: !472, size: 32, offset: 7168)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !552, file: !160, line: 1249, baseType: !4835, size: 64, offset: 7232)
!4835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4836, size: 64)
!4836 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !160, line: 634, flags: DIFlagFwdDecl)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !552, file: !160, line: 1252, baseType: !4194, size: 256, offset: 7296)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !552, file: !160, line: 1253, baseType: !4839, size: 128, offset: 7552)
!4839 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4840, line: 21, baseType: !4841)
!4840 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4841 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4840, line: 19, size: 128, elements: !4842)
!4842 = !{!4843}
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4841, file: !4840, line: 20, baseType: !4844, size: 128)
!4844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 128, elements: !3706)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !552, file: !160, line: 1255, baseType: !7, size: 32, offset: 7680)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !552, file: !160, line: 1261, baseType: !747, size: 256, offset: 7744)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !552, file: !160, line: 1267, baseType: !41, size: 64, offset: 8000)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !552, file: !160, line: 1269, baseType: !497, size: 64, offset: 8064)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !552, file: !160, line: 1271, baseType: !4850, size: 448, offset: 8128)
!4850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2495, line: 63, size: 448, elements: !4851)
!4851 = !{!4852, !4857, !4858, !4859, !4860, !4861, !4862}
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4850, file: !2495, line: 64, baseType: !4853, size: 64)
!4853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4854, size: 64)
!4854 = !DISubroutineType(types: !4855)
!4855 = !{!64, !4856, !2493}
!4856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4850, size: 64)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4850, file: !2495, line: 66, baseType: !4853, size: 64, offset: 64)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4850, file: !2495, line: 69, baseType: !373, size: 64, offset: 128)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4850, file: !2495, line: 70, baseType: !47, size: 32, offset: 192)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4850, file: !2495, line: 71, baseType: !7, size: 32, offset: 224)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4850, file: !2495, line: 74, baseType: !122, size: 128, offset: 256)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4850, file: !2495, line: 85, baseType: !4863, size: 64, offset: 384)
!4863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !552, file: !160, line: 1274, baseType: !738, size: 64, offset: 8576)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !552, file: !160, line: 1280, baseType: !738, size: 64, offset: 8640)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !552, file: !160, line: 1283, baseType: !47, size: 32, offset: 8704)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !552, file: !160, line: 1286, baseType: !1835, size: 32, offset: 8736)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !552, file: !160, line: 1289, baseType: !2291, size: 64, offset: 8768)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !552, file: !160, line: 1290, baseType: !799, size: 64, offset: 8832)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !552, file: !160, line: 1297, baseType: !1020, size: 64, offset: 8896)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !552, file: !160, line: 1304, baseType: !4872, size: 64, offset: 8960)
!4872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4873, line: 49, size: 64, elements: !4874)
!4873 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4874 = !{!4875}
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4872, file: !4873, line: 50, baseType: !4876, size: 64)
!4876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4877, size: 64)
!4877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4873, line: 41, size: 512, align: 512, elements: !4878)
!4878 = !{!4879, !4880, !4885}
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4877, file: !4873, line: 43, baseType: !84, size: 32)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4877, file: !4873, line: 45, baseType: !4881, size: 192, offset: 64)
!4881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4873, line: 29, size: 192, elements: !4882)
!4882 = !{!4883, !4884}
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4881, file: !4873, line: 30, baseType: !122, size: 128)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4881, file: !4873, line: 32, baseType: !373, size: 64, offset: 128)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4877, file: !4873, line: 46, baseType: !373, size: 64, offset: 256)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !552, file: !160, line: 1305, baseType: !4872, size: 64, offset: 9024)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !552, file: !160, line: 1306, baseType: !725, size: 128, align: 64, offset: 9088)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !552, file: !160, line: 1307, baseType: !1069, size: 256, offset: 9216)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !552, file: !160, line: 1309, baseType: !747, size: 256, offset: 9472)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !552, file: !160, line: 1314, baseType: !47, size: 32, offset: 9728)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !552, file: !160, line: 1317, baseType: !84, size: 32, align: 512, offset: 10240)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !552, file: !160, line: 1318, baseType: !122, size: 128, offset: 10304)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !552, file: !160, line: 1320, baseType: !84, size: 32, offset: 10432)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !552, file: !160, line: 1321, baseType: !122, size: 128, offset: 10496)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !546, file: !547, line: 73, baseType: !47, size: 32, offset: 128)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !546, file: !547, line: 74, baseType: !4897, size: 64, offset: 192)
!4897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4898, size: 64)
!4898 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !845, line: 42, flags: DIFlagFwdDecl)
!4899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !499, file: !439, line: 141, baseType: !4901, size: 64, offset: 704)
!4901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4902, size: 64)
!4902 = !DISubroutineType(types: !4903)
!4903 = !{!47, !2555, !937}
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !499, file: !439, line: 142, baseType: !4905, size: 64, offset: 768)
!4905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4906, size: 64)
!4906 = !DISubroutineType(types: !4907)
!4907 = !{!437, !437, !4908}
!4908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4909, size: 64)
!4909 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !403)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !438, file: !439, line: 96, baseType: !551, size: 64, offset: 832)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !438, file: !439, line: 97, baseType: !64, size: 64, offset: 896)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !438, file: !439, line: 98, baseType: !45, size: 64, offset: 960)
!4913 = !DIDerivedType(tag: DW_TAG_member, scope: !438, file: !439, line: 100, baseType: !4914, size: 128, offset: 1024)
!4914 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !438, file: !439, line: 100, size: 128, elements: !4915)
!4915 = !{!4916, !4917}
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4914, file: !439, line: 101, baseType: !122, size: 128)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4914, file: !439, line: 102, baseType: !1366, size: 64)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !438, file: !439, line: 104, baseType: !122, size: 128, offset: 1152)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !438, file: !439, line: 105, baseType: !122, size: 128, offset: 1280)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !438, file: !439, line: 113, baseType: !4921, size: 128, offset: 1408)
!4921 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !438, file: !439, line: 109, size: 128, elements: !4922)
!4922 = !{!4923, !4924, !4925}
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4921, file: !439, line: 110, baseType: !803, size: 128)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4921, file: !439, line: 111, baseType: !453, size: 128)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4921, file: !439, line: 112, baseType: !725, size: 128, align: 64)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !431, file: !160, line: 1968, baseType: !4927, size: 64, offset: 64)
!4927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4928, size: 64)
!4928 = !DISubroutineType(types: !4929)
!4929 = !{!41, !437, !402, !4930}
!4930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4931, size: 64)
!4931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4932, line: 10, size: 128, elements: !4933)
!4932 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4933 = !{!4934, !4935}
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4931, file: !4932, line: 11, baseType: !1875, size: 64)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4931, file: !4932, line: 12, baseType: !45, size: 64, offset: 64)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !431, file: !160, line: 1969, baseType: !4937, size: 64, offset: 128)
!4937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4938, size: 64)
!4938 = !DISubroutineType(types: !4939)
!4939 = !{!47, !4897, !402, !47}
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !431, file: !160, line: 1970, baseType: !4941, size: 64, offset: 192)
!4941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4942, size: 64)
!4942 = !DISubroutineType(types: !4943)
!4943 = !{!425, !402, !47, !937}
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !431, file: !160, line: 1972, baseType: !4945, size: 64, offset: 256)
!4945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4946, size: 64)
!4946 = !DISubroutineType(types: !4947)
!4947 = !{!47, !437, !540, !47}
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !431, file: !160, line: 1974, baseType: !4949, size: 64, offset: 320)
!4949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4950, size: 64)
!4950 = !DISubroutineType(types: !4951)
!4951 = !{!47, !4897, !402, !437, !49, !937}
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !431, file: !160, line: 1976, baseType: !4953, size: 64, offset: 384)
!4953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4954, size: 64)
!4954 = !DISubroutineType(types: !4955)
!4955 = !{!47, !437, !402, !437}
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !431, file: !160, line: 1977, baseType: !4957, size: 64, offset: 448)
!4957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4958, size: 64)
!4958 = !DISubroutineType(types: !4959)
!4959 = !{!47, !402, !437}
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !431, file: !160, line: 1978, baseType: !4961, size: 64, offset: 512)
!4961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4962, size: 64)
!4962 = !DISubroutineType(types: !4963)
!4963 = !{!47, !4897, !402, !437, !41}
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !431, file: !160, line: 1980, baseType: !4965, size: 64, offset: 576)
!4965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4966, size: 64)
!4966 = !DISubroutineType(types: !4967)
!4967 = !{!47, !4897, !402, !437, !49}
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !431, file: !160, line: 1982, baseType: !4957, size: 64, offset: 640)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !431, file: !160, line: 1983, baseType: !4970, size: 64, offset: 704)
!4970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4971, size: 64)
!4971 = !DISubroutineType(types: !4972)
!4972 = !{!47, !4897, !402, !437, !49, !556}
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !431, file: !160, line: 1985, baseType: !4974, size: 64, offset: 768)
!4974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4975, size: 64)
!4975 = !DISubroutineType(types: !4976)
!4976 = !{!47, !4897, !402, !437, !402, !437, !7}
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !431, file: !160, line: 1987, baseType: !4978, size: 64, offset: 832)
!4978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4979, size: 64)
!4979 = !DISubroutineType(types: !4980)
!4980 = !{!47, !4897, !437, !4981}
!4981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4982, size: 64)
!4982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !160, line: 226, size: 640, elements: !4983)
!4983 = !{!4984, !4985, !4986, !4996, !5005, !5006, !5011, !5012, !5013}
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !4982, file: !160, line: 227, baseType: !7, size: 32)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !4982, file: !160, line: 228, baseType: !49, size: 16, offset: 32)
!4986 = !DIDerivedType(tag: DW_TAG_member, scope: !4982, file: !160, line: 241, baseType: !4987, size: 32, offset: 64)
!4987 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4982, file: !160, line: 241, size: 32, elements: !4988)
!4988 = !{!4989, !4990}
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !4987, file: !160, line: 242, baseType: !408, size: 32)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !4987, file: !160, line: 243, baseType: !4991, size: 32)
!4991 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !4992, line: 16, baseType: !4993)
!4992 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!4993 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4992, line: 14, size: 32, elements: !4994)
!4994 = !{!4995}
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4993, file: !4992, line: 15, baseType: !413, size: 32)
!4996 = !DIDerivedType(tag: DW_TAG_member, scope: !4982, file: !160, line: 245, baseType: !4997, size: 32, offset: 96)
!4997 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4982, file: !160, line: 245, size: 32, elements: !4998)
!4998 = !{!4999, !5000}
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !4997, file: !160, line: 246, baseType: !417, size: 32)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !4997, file: !160, line: 247, baseType: !5001, size: 32)
!5001 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !4992, line: 20, baseType: !5002)
!5002 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4992, line: 18, size: 32, elements: !5003)
!5003 = !{!5004}
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5002, file: !4992, line: 19, baseType: !421, size: 32)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !4982, file: !160, line: 249, baseType: !66, size: 64, offset: 128)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !4982, file: !160, line: 250, baseType: !5007, size: 128, offset: 192)
!5007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !895, line: 13, size: 128, elements: !5008)
!5008 = !{!5009, !5010}
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5007, file: !895, line: 14, baseType: !894, size: 64)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5007, file: !895, line: 15, baseType: !373, size: 64, offset: 64)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !4982, file: !160, line: 251, baseType: !5007, size: 128, offset: 320)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !4982, file: !160, line: 252, baseType: !5007, size: 128, offset: 448)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !4982, file: !160, line: 259, baseType: !712, size: 64, offset: 576)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !431, file: !160, line: 1988, baseType: !5015, size: 64, offset: 896)
!5015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5016, size: 64)
!5016 = !DISubroutineType(types: !5017)
!5017 = !{!47, !4897, !2555, !5018, !471, !7}
!5018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5019, size: 64)
!5019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !5020, line: 22, size: 1280, elements: !5021)
!5020 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!5021 = !{!5022, !5023, !5024, !5025, !5026, !5027, !5028, !5029, !5030, !5031, !5032, !5033, !5034, !5035, !5036, !5037, !5038, !5039, !5040, !5041, !5042}
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !5019, file: !5020, line: 23, baseType: !471, size: 32)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5019, file: !5020, line: 24, baseType: !49, size: 16, offset: 32)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !5019, file: !5020, line: 25, baseType: !7, size: 32, offset: 64)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !5019, file: !5020, line: 26, baseType: !902, size: 32, offset: 96)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !5019, file: !5020, line: 27, baseType: !371, size: 64, offset: 128)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !5019, file: !5020, line: 28, baseType: !371, size: 64, offset: 192)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !5019, file: !5020, line: 41, baseType: !371, size: 64, offset: 256)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5019, file: !5020, line: 42, baseType: !556, size: 32, offset: 320)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !5019, file: !5020, line: 43, baseType: !556, size: 32, offset: 352)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !5019, file: !5020, line: 44, baseType: !408, size: 32, offset: 384)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !5019, file: !5020, line: 45, baseType: !417, size: 32, offset: 416)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5019, file: !5020, line: 46, baseType: !66, size: 64, offset: 448)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !5019, file: !5020, line: 47, baseType: !5007, size: 128, offset: 512)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !5019, file: !5020, line: 48, baseType: !5007, size: 128, offset: 640)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !5019, file: !5020, line: 49, baseType: !5007, size: 128, offset: 768)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !5019, file: !5020, line: 50, baseType: !5007, size: 128, offset: 896)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !5019, file: !5020, line: 51, baseType: !371, size: 64, offset: 1024)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !5019, file: !5020, line: 52, baseType: !371, size: 64, offset: 1088)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !5019, file: !5020, line: 53, baseType: !471, size: 32, offset: 1152)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !5019, file: !5020, line: 54, baseType: !471, size: 32, offset: 1184)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !5019, file: !5020, line: 55, baseType: !371, size: 64, offset: 1216)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !431, file: !160, line: 1990, baseType: !5044, size: 64, offset: 960)
!5044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5045, size: 64)
!5045 = !DISubroutineType(types: !5046)
!5046 = !{!671, !437, !540, !60}
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !431, file: !160, line: 1991, baseType: !5048, size: 64, offset: 1024)
!5048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5049, size: 64)
!5049 = !DISubroutineType(types: !5050)
!5050 = !{!47, !402, !5051, !371, !371}
!5051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5052, size: 64)
!5052 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !160, line: 55, flags: DIFlagFwdDecl)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !431, file: !160, line: 1993, baseType: !5054, size: 64, offset: 1088)
!5054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5055, size: 64)
!5055 = !DISubroutineType(types: !5056)
!5056 = !{!47, !402, !47}
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !431, file: !160, line: 1994, baseType: !5058, size: 64, offset: 1152)
!5058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5059, size: 64)
!5059 = !DISubroutineType(types: !5060)
!5060 = !{!47, !402, !437, !712, !7, !49}
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !431, file: !160, line: 1997, baseType: !5062, size: 64, offset: 1216)
!5062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5063, size: 64)
!5063 = !DISubroutineType(types: !5064)
!5064 = !{!47, !4897, !402, !712, !49}
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !431, file: !160, line: 1999, baseType: !5066, size: 64, offset: 1280)
!5066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5067, size: 64)
!5067 = !DISubroutineType(types: !5068)
!5068 = !{!425, !4897, !437, !47}
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !431, file: !160, line: 2001, baseType: !5070, size: 64, offset: 1344)
!5070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5071, size: 64)
!5071 = !DISubroutineType(types: !5072)
!5072 = !{!47, !4897, !437, !425, !47}
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !431, file: !160, line: 2003, baseType: !5074, size: 64, offset: 1408)
!5074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5075, size: 64)
!5075 = !DISubroutineType(types: !5076)
!5076 = !{!47, !4897, !437, !5077}
!5077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5078, size: 64)
!5078 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !160, line: 76, flags: DIFlagFwdDecl)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !431, file: !160, line: 2005, baseType: !5080, size: 64, offset: 1472)
!5080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5081, size: 64)
!5081 = !DISubroutineType(types: !5082)
!5082 = !{!47, !437, !5077}
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !431, file: !160, line: 2006, baseType: !5084, size: 64, offset: 1536)
!5084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5085, size: 64)
!5085 = !DISubroutineType(types: !5086)
!5086 = !{!5087, !402}
!5087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5088, size: 64)
!5088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !160, line: 3192, size: 192, elements: !5089)
!5089 = !{!5090, !5091}
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !5088, file: !160, line: 3193, baseType: !3945, size: 128)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !5088, file: !160, line: 3194, baseType: !471, size: 32, offset: 128)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !403, file: !160, line: 655, baseType: !551, size: 64, offset: 448)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !403, file: !160, line: 656, baseType: !398, size: 64, offset: 512)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !403, file: !160, line: 659, baseType: !45, size: 64, offset: 576)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !403, file: !160, line: 663, baseType: !64, size: 64, offset: 640)
!5096 = !DIDerivedType(tag: DW_TAG_member, scope: !403, file: !160, line: 671, baseType: !5097, size: 32, offset: 704)
!5097 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !403, file: !160, line: 671, size: 32, elements: !5098)
!5098 = !{!5099, !5101}
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !5097, file: !160, line: 672, baseType: !5100, size: 32)
!5100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !5097, file: !160, line: 673, baseType: !7, size: 32)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !403, file: !160, line: 675, baseType: !556, size: 32, offset: 736)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !403, file: !160, line: 676, baseType: !66, size: 64, offset: 768)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !403, file: !160, line: 677, baseType: !5007, size: 128, offset: 832)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !403, file: !160, line: 678, baseType: !5007, size: 128, offset: 960)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !403, file: !160, line: 679, baseType: !5007, size: 128, offset: 1088)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !403, file: !160, line: 680, baseType: !84, size: 32, offset: 1216)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !403, file: !160, line: 681, baseType: !51, size: 16, offset: 1248)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !403, file: !160, line: 682, baseType: !108, size: 8, offset: 1264)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !403, file: !160, line: 683, baseType: !108, size: 8, offset: 1272)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !403, file: !160, line: 684, baseType: !2628, size: 64, offset: 1280)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !403, file: !160, line: 691, baseType: !64, size: 64, offset: 1344)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !403, file: !160, line: 692, baseType: !878, size: 320, offset: 1408)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !403, file: !160, line: 694, baseType: !64, size: 64, offset: 1728)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !403, file: !160, line: 695, baseType: !64, size: 64, offset: 1792)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !403, file: !160, line: 697, baseType: !803, size: 128, offset: 1856)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !403, file: !160, line: 698, baseType: !122, size: 128, offset: 1984)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !403, file: !160, line: 707, baseType: !122, size: 128, offset: 2112)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !403, file: !160, line: 708, baseType: !122, size: 128, offset: 2240)
!5120 = !DIDerivedType(tag: DW_TAG_member, scope: !403, file: !160, line: 709, baseType: !5121, size: 128, offset: 2368)
!5121 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !403, file: !160, line: 709, size: 128, elements: !5122)
!5122 = !{!5123, !5124}
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !5121, file: !160, line: 710, baseType: !799, size: 64)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !5121, file: !160, line: 711, baseType: !725, size: 128, align: 64)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !403, file: !160, line: 713, baseType: !740, size: 64, offset: 2496)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !403, file: !160, line: 714, baseType: !740, size: 64, offset: 2560)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !403, file: !160, line: 715, baseType: !74, size: 32, offset: 2624)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !403, file: !160, line: 716, baseType: !74, size: 32, offset: 2656)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !403, file: !160, line: 717, baseType: !74, size: 32, offset: 2688)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !403, file: !160, line: 719, baseType: !74, size: 32, offset: 2720)
!5131 = !DIDerivedType(tag: DW_TAG_member, scope: !403, file: !160, line: 721, baseType: !5132, size: 64, offset: 2752)
!5132 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !403, file: !160, line: 721, size: 64, elements: !5133)
!5133 = !{!5134, !5135}
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !5132, file: !160, line: 722, baseType: !1203, size: 64)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !5132, file: !160, line: 723, baseType: !2364, size: 64)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !403, file: !160, line: 725, baseType: !5137, size: 64, offset: 2816)
!5137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5138, size: 64)
!5138 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !160, line: 725, flags: DIFlagFwdDecl)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !403, file: !160, line: 726, baseType: !399, size: 1536, align: 64, offset: 2880)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !403, file: !160, line: 727, baseType: !122, size: 128, offset: 4416)
!5141 = !DIDerivedType(tag: DW_TAG_member, scope: !403, file: !160, line: 728, baseType: !5142, size: 64, offset: 4544)
!5142 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !403, file: !160, line: 728, size: 64, elements: !5143)
!5143 = !{!5144, !5145, !5156, !5157}
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !5142, file: !160, line: 729, baseType: !1746, size: 64)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !5142, file: !160, line: 730, baseType: !5146, size: 64)
!5146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5147, size: 64)
!5147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !5148, line: 14, size: 832, elements: !5149)
!5148 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dd3580fb19b1b4d9a4e84334e4ba7aa6")
!5149 = !{!5150, !5151, !5152, !5153, !5154, !5155}
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !5147, file: !5148, line: 15, baseType: !599, size: 512)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5147, file: !5148, line: 16, baseType: !586, size: 64, offset: 512)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5147, file: !5148, line: 17, baseType: !1203, size: 64, offset: 576)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5147, file: !5148, line: 18, baseType: !122, size: 128, offset: 640)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5147, file: !5148, line: 19, baseType: !556, size: 32, offset: 768)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5147, file: !5148, line: 20, baseType: !7, size: 32, offset: 800)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !5142, file: !160, line: 731, baseType: !540, size: 64)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !5142, file: !160, line: 732, baseType: !7, size: 32)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !403, file: !160, line: 735, baseType: !472, size: 32, offset: 4608)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !403, file: !160, line: 738, baseType: !472, size: 32, offset: 4640)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !403, file: !160, line: 739, baseType: !4835, size: 64, offset: 4672)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !403, file: !160, line: 750, baseType: !45, size: 64, offset: 4736)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !399, file: !160, line: 474, baseType: !3945, size: 128, offset: 64)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !399, file: !160, line: 475, baseType: !878, size: 320, offset: 192)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !399, file: !160, line: 476, baseType: !1632, size: 32, offset: 512)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !399, file: !160, line: 477, baseType: !74, size: 32, offset: 544)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !399, file: !160, line: 482, baseType: !2950, size: 128, offset: 576)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !399, file: !160, line: 483, baseType: !64, size: 64, offset: 704)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !399, file: !160, line: 484, baseType: !64, size: 64, offset: 768)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !399, file: !160, line: 485, baseType: !5170, size: 64, offset: 832)
!5170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5171, size: 64)
!5171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5172)
!5172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !160, line: 404, size: 1280, elements: !5173)
!5173 = !{!5174, !5178, !5182, !5186, !5190, !5206, !5210, !5214, !5218, !5222, !5226, !5230, !5231, !5235, !5239, !5243, !5248, !5252, !5304, !5305}
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !5172, file: !160, line: 405, baseType: !5175, size: 64)
!5175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5176, size: 64)
!5176 = !DISubroutineType(types: !5177)
!5177 = !{!47, !376, !2376}
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !5172, file: !160, line: 406, baseType: !5179, size: 64, offset: 64)
!5179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5180, size: 64)
!5180 = !DISubroutineType(types: !5181)
!5181 = !{!47, !712, !1245}
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !5172, file: !160, line: 409, baseType: !5183, size: 64, offset: 128)
!5183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5184, size: 64)
!5184 = !DISubroutineType(types: !5185)
!5185 = !{!47, !398, !2376}
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !5172, file: !160, line: 412, baseType: !5187, size: 64, offset: 192)
!5187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5188, size: 64)
!5188 = !DISubroutineType(types: !5189)
!5189 = !{!937, !398, !1245}
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !5172, file: !160, line: 414, baseType: !5191, size: 64, offset: 256)
!5191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5192, size: 64)
!5192 = !DISubroutineType(types: !5193)
!5193 = !{null, !5194}
!5194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5195, size: 64)
!5195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !1242, line: 1276, size: 448, elements: !5196)
!5196 = !{!5197, !5198, !5199, !5201, !5202, !5203, !5204, !5205}
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !5195, file: !1242, line: 1277, baseType: !712, size: 64)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !5195, file: !1242, line: 1278, baseType: !398, size: 64, offset: 64)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !5195, file: !1242, line: 1279, baseType: !5200, size: 64, offset: 128)
!5200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !5195, file: !1242, line: 1281, baseType: !64, size: 64, offset: 192)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !5195, file: !1242, line: 1282, baseType: !7, size: 32, offset: 256)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !5195, file: !1242, line: 1283, baseType: !7, size: 32, offset: 288)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !5195, file: !1242, line: 1284, baseType: !937, size: 8, offset: 320)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !5195, file: !1242, line: 1285, baseType: !64, size: 64, offset: 384)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !5172, file: !160, line: 416, baseType: !5207, size: 64, offset: 320)
!5207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5208, size: 64)
!5208 = !DISubroutineType(types: !5209)
!5209 = !{!47, !712, !398, !66, !7, !4603, !1762}
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !5172, file: !160, line: 419, baseType: !5211, size: 64, offset: 384)
!5211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5212, size: 64)
!5212 = !DISubroutineType(types: !5213)
!5213 = !{!47, !712, !398, !66, !7, !7, !376, !45}
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !5172, file: !160, line: 424, baseType: !5215, size: 64, offset: 448)
!5215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5216, size: 64)
!5216 = !DISubroutineType(types: !5217)
!5217 = !{!2659, !398, !2659}
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !5172, file: !160, line: 425, baseType: !5219, size: 64, offset: 512)
!5219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5220, size: 64)
!5220 = !DISubroutineType(types: !5221)
!5221 = !{null, !1245, !60, !60}
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !5172, file: !160, line: 426, baseType: !5223, size: 64, offset: 576)
!5223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5224, size: 64)
!5224 = !DISubroutineType(types: !5225)
!5225 = !{!937, !1245, !1632}
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !5172, file: !160, line: 427, baseType: !5227, size: 64, offset: 640)
!5227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5228, size: 64)
!5228 = !DISubroutineType(types: !5229)
!5229 = !{null, !1245}
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !5172, file: !160, line: 428, baseType: !1221, size: 64, offset: 704)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !5172, file: !160, line: 433, baseType: !5232, size: 64, offset: 768)
!5232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5233, size: 64)
!5233 = !DISubroutineType(types: !5234)
!5234 = !{!47, !398, !1245, !1245, !253}
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !5172, file: !160, line: 435, baseType: !5236, size: 64, offset: 832)
!5236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5237, size: 64)
!5237 = !DISubroutineType(types: !5238)
!5238 = !{!47, !1245}
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !5172, file: !160, line: 436, baseType: !5240, size: 64, offset: 896)
!5240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5241, size: 64)
!5241 = !DISubroutineType(types: !5242)
!5242 = !{!937, !1245, !60, !60}
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !5172, file: !160, line: 438, baseType: !5244, size: 64, offset: 960)
!5244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5245, size: 64)
!5245 = !DISubroutineType(types: !5246)
!5246 = !{null, !1245, !5247, !5247}
!5247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !5172, file: !160, line: 439, baseType: !5249, size: 64, offset: 1024)
!5249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5250, size: 64)
!5250 = !DISubroutineType(types: !5251)
!5251 = !{!47, !398, !376}
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !5172, file: !160, line: 442, baseType: !5253, size: 64, offset: 1088)
!5253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5254, size: 64)
!5254 = !DISubroutineType(types: !5255)
!5255 = !{!47, !5256, !712, !5303}
!5256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5257, size: 64)
!5257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !4330, line: 282, size: 2176, elements: !5258)
!5258 = !{!5259, !5260, !5261, !5262, !5263, !5264, !5265, !5267, !5274, !5279, !5280, !5281, !5282, !5283, !5284, !5285, !5286, !5292, !5293, !5294, !5295, !5296, !5297, !5298, !5299, !5300, !5301}
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !5257, file: !4330, line: 283, baseType: !3994, size: 128)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5257, file: !4330, line: 284, baseType: !64, size: 64, offset: 128)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !5257, file: !4330, line: 285, baseType: !906, size: 16, offset: 192)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5257, file: !4330, line: 286, baseType: !3554, size: 320, offset: 256)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5257, file: !4330, line: 287, baseType: !2061, size: 8, offset: 576)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !5257, file: !4330, line: 288, baseType: !7, size: 32, offset: 608)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "swap_map", scope: !5257, file: !4330, line: 289, baseType: !5266, size: 64, offset: 640)
!5266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_info", scope: !5257, file: !4330, line: 290, baseType: !5268, size: 64, offset: 704)
!5268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5269, size: 64)
!5269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_info", file: !4330, line: 250, size: 64, elements: !5270)
!5270 = !{!5271, !5272, !5273}
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5269, file: !4330, line: 251, baseType: !84, size: 32)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5269, file: !4330, line: 257, baseType: !7, size: 24, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5269, file: !4330, line: 258, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "free_clusters", scope: !5257, file: !4330, line: 291, baseType: !5275, size: 128, offset: 768)
!5275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_list", file: !4330, line: 274, size: 128, elements: !5276)
!5276 = !{!5277, !5278}
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5275, file: !4330, line: 275, baseType: !5269, size: 64)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !5275, file: !4330, line: 276, baseType: !5269, size: 64, offset: 64)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_bit", scope: !5257, file: !4330, line: 292, baseType: !7, size: 32, offset: 896)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "highest_bit", scope: !5257, file: !4330, line: 293, baseType: !7, size: 32, offset: 928)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !5257, file: !4330, line: 294, baseType: !7, size: 32, offset: 960)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "inuse_pages", scope: !5257, file: !4330, line: 295, baseType: !7, size: 32, offset: 992)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next", scope: !5257, file: !4330, line: 296, baseType: !7, size: 32, offset: 1024)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_nr", scope: !5257, file: !4330, line: 297, baseType: !7, size: 32, offset: 1056)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next_cpu", scope: !5257, file: !4330, line: 298, baseType: !2082, size: 64, offset: 1088)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_cluster", scope: !5257, file: !4330, line: 299, baseType: !5287, size: 64, offset: 1152)
!5287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5288, size: 64)
!5288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_cluster", file: !4330, line: 269, size: 96, elements: !5289)
!5289 = !{!5290, !5291}
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5288, file: !4330, line: 270, baseType: !5269, size: 64)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5288, file: !4330, line: 271, baseType: !7, size: 32, offset: 64)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "swap_extent_root", scope: !5257, file: !4330, line: 300, baseType: !1150, size: 64, offset: 1216)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !5257, file: !4330, line: 301, baseType: !2654, size: 64, offset: 1280)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "swap_file", scope: !5257, file: !4330, line: 302, baseType: !712, size: 64, offset: 1344)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "old_block_size", scope: !5257, file: !4330, line: 303, baseType: !7, size: 32, offset: 1408)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !5257, file: !4330, line: 304, baseType: !1108, size: 256, offset: 1472)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5257, file: !4330, line: 305, baseType: !84, size: 32, offset: 1728)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "cont_lock", scope: !5257, file: !4330, line: 318, baseType: !84, size: 32, offset: 1760)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "discard_work", scope: !5257, file: !4330, line: 322, baseType: !1069, size: 256, offset: 1792)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "discard_clusters", scope: !5257, file: !4330, line: 323, baseType: !5275, size: 128, offset: 2048)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "avail_lists", scope: !5257, file: !4330, line: 324, baseType: !5302, offset: 2176)
!5302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3554, elements: !821)
!5303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !5172, file: !160, line: 444, baseType: !1754, size: 64, offset: 1152)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !5172, file: !160, line: 445, baseType: !5306, size: 64, offset: 1216)
!5306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5307, size: 64)
!5307 = !DISubroutineType(types: !5308)
!5308 = !{!47, !1224, !1329}
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !399, file: !160, line: 486, baseType: !64, size: 64, offset: 896)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !399, file: !160, line: 487, baseType: !878, size: 320, offset: 960)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !399, file: !160, line: 488, baseType: !1835, size: 32, offset: 1280)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !399, file: !160, line: 489, baseType: !84, size: 32, offset: 1312)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !399, file: !160, line: 490, baseType: !122, size: 128, offset: 1344)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !399, file: !160, line: 491, baseType: !45, size: 64, offset: 1472)
!5315 = !DIDerivedType(tag: DW_TAG_member, scope: !384, file: !133, line: 107, baseType: !5316, size: 64, offset: 192)
!5316 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !384, file: !133, line: 107, size: 64, elements: !5317)
!5317 = !{!5318, !5319}
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5316, file: !133, line: 108, baseType: !64, size: 64)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !5316, file: !133, line: 109, baseType: !64, size: 64)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !384, file: !133, line: 117, baseType: !64, size: 64, offset: 256)
!5321 = !DIDerivedType(tag: DW_TAG_member, scope: !381, file: !133, line: 119, baseType: !5322, size: 320)
!5322 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !381, file: !133, line: 119, size: 320, elements: !5323)
!5323 = !{!5324, !5325, !5328, !5329, !5330}
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !5322, file: !133, line: 124, baseType: !64, size: 64)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !5322, file: !133, line: 125, baseType: !5326, size: 64, offset: 64)
!5326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5327, size: 64)
!5327 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !133, line: 125, flags: DIFlagFwdDecl)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !5322, file: !133, line: 126, baseType: !64, size: 64, offset: 128)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !5322, file: !133, line: 127, baseType: !64, size: 64, offset: 192)
!5330 = !DIDerivedType(tag: DW_TAG_member, scope: !5322, file: !133, line: 128, baseType: !5331, size: 64, offset: 256)
!5331 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5322, file: !133, line: 128, size: 64, elements: !5332)
!5332 = !{!5333, !5334}
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !5331, file: !133, line: 133, baseType: !64, size: 64)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !5331, file: !133, line: 138, baseType: !738, size: 64)
!5335 = !DIDerivedType(tag: DW_TAG_member, scope: !381, file: !133, line: 141, baseType: !5336, size: 64)
!5336 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !381, file: !133, line: 141, size: 64, elements: !5337)
!5337 = !{!5338}
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !5336, file: !133, line: 142, baseType: !64, size: 64)
!5339 = !DIDerivedType(tag: DW_TAG_member, scope: !381, file: !133, line: 144, baseType: !5340, size: 128)
!5340 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !381, file: !133, line: 144, size: 128, elements: !5341)
!5341 = !{!5342, !5393}
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !5340, file: !133, line: 146, baseType: !5343, size: 64)
!5343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5344, size: 64)
!5344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !261, line: 126, size: 1216, elements: !5345)
!5345 = !{!5346, !5356, !5357, !5358, !5359, !5360, !5361, !5375, !5376, !5377}
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !5344, file: !261, line: 127, baseType: !5347, size: 384)
!5347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !261, line: 21, size: 384, elements: !5348)
!5348 = !{!5349, !5350, !5352, !5353, !5354, !5355}
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !5347, file: !261, line: 22, baseType: !64, size: 64)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !5347, file: !261, line: 23, baseType: !5351, size: 64, offset: 64)
!5351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !5347, file: !261, line: 24, baseType: !5351, size: 64, offset: 128)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !5347, file: !261, line: 25, baseType: !64, size: 64, offset: 192)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !5347, file: !261, line: 26, baseType: !64, size: 64, offset: 256)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !5347, file: !261, line: 27, baseType: !64, size: 64, offset: 320)
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !5344, file: !261, line: 128, baseType: !3994, size: 128, offset: 384)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !5344, file: !261, line: 129, baseType: !1108, size: 256, offset: 512)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5344, file: !261, line: 130, baseType: !260, size: 32, offset: 768)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5344, file: !261, line: 131, baseType: !7, size: 32, offset: 800)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !5344, file: !261, line: 132, baseType: !64, size: 64, offset: 832)
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5344, file: !261, line: 133, baseType: !5362, size: 64, offset: 896)
!5362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5363, size: 64)
!5363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5364)
!5364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !261, line: 77, size: 192, elements: !5365)
!5365 = !{!5366, !5370, !5371}
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !5364, file: !261, line: 83, baseType: !5367, size: 64)
!5367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5368, size: 64)
!5368 = !DISubroutineType(types: !5369)
!5369 = !{null, !376}
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !5364, file: !261, line: 89, baseType: !1620, size: 64, offset: 64)
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !5364, file: !261, line: 100, baseType: !5372, size: 64, offset: 128)
!5372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5373, size: 64)
!5373 = !DISubroutineType(types: !5374)
!5374 = !{!47, !5343, !64, !64, !47}
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5344, file: !261, line: 134, baseType: !45, size: 64, offset: 960)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !5344, file: !261, line: 135, baseType: !47, size: 32, offset: 1024)
!5377 = !DIDerivedType(tag: DW_TAG_member, scope: !5344, file: !261, line: 136, baseType: !5378, size: 128, offset: 1088)
!5378 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5344, file: !261, line: 136, size: 128, elements: !5379)
!5379 = !{!5380, !5386}
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !5378, file: !261, line: 137, baseType: !5381, size: 128)
!5381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !5382, line: 6, size: 128, elements: !5383)
!5382 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!5383 = !{!5384, !5385}
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5381, file: !5382, line: 7, baseType: !371, size: 64)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5381, file: !5382, line: 8, baseType: !371, size: 64, offset: 64)
!5386 = !DIDerivedType(tag: DW_TAG_member, scope: !5378, file: !261, line: 138, baseType: !5387)
!5387 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5378, file: !261, line: 138, elements: !5388)
!5388 = !{!5389, !5391}
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !5387, file: !261, line: 138, baseType: !5390)
!5390 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5387, file: !261, line: 138, elements: !1411)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !5387, file: !261, line: 138, baseType: !5392)
!5392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5381, elements: !821)
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !5340, file: !133, line: 147, baseType: !45, size: 64, offset: 64)
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !381, file: !133, line: 161, baseType: !725, size: 128, align: 64)
!5395 = !DIDerivedType(tag: DW_TAG_member, scope: !377, file: !133, line: 164, baseType: !5396, size: 32, offset: 384)
!5396 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !377, file: !133, line: 164, size: 32, elements: !5397)
!5397 = !{!5398, !5399}
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !5396, file: !133, line: 169, baseType: !74, size: 32)
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !5396, file: !133, line: 177, baseType: !7, size: 32)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !377, file: !133, line: 181, baseType: !74, size: 32, offset: 416)
!5401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5402, size: 64)
!5402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5403)
!5403 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !5404)
!5404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5405, size: 64)
!5405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_section_usage", file: !296, line: 1777, size: 192, elements: !5406)
!5406 = !{!5407, !5408, !5409}
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !5405, file: !296, line: 1778, baseType: !725, size: 128, align: 64)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "subsection_map", scope: !5405, file: !296, line: 1780, baseType: !3513, size: 64, offset: 128)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "pageblock_flags", scope: !5405, file: !296, line: 1783, baseType: !5410, offset: 192)
!5410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, elements: !3799)
!5411 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !50, line: 42, baseType: !64)
!5412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5351, size: 64)
!5413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5414, size: 64)
!5414 = !DIDerivedType(tag: DW_TAG_typedef, name: "p4d_t", file: !6, line: 346, baseType: !5415)
!5415 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 346, size: 64, elements: !5416)
!5416 = !{!5417}
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "p4d", scope: !5415, file: !6, line: 346, baseType: !5418, size: 64)
!5418 = !DIDerivedType(tag: DW_TAG_typedef, name: "p4dval_t", file: !375, line: 17, baseType: !64)
!5419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5420, size: 64)
!5420 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !1639)
!5421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5422, size: 64)
!5422 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !1655)
!5423 = !{!0, !5424, !5426, !5428, !5430, !5432, !5434, !5436, !5441, !5446, !5451, !5453, !5455, !5460, !5462, !5464, !5466, !5471, !5476, !5525, !5530, !5535, !5537, !5542}
!5424 = !DIGlobalVariableExpression(var: !5425, expr: !DIExpression())
!5425 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ioremap_uc346", scope: !2, file: !3, line: 391, type: !45, isLocal: true, isDefinition: true)
!5426 = !DIGlobalVariableExpression(var: !5427, expr: !DIExpression())
!5427 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ioremap_wc347", scope: !2, file: !3, line: 408, type: !45, isLocal: true, isDefinition: true)
!5428 = !DIGlobalVariableExpression(var: !5429, expr: !DIExpression())
!5429 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ioremap_wt348", scope: !2, file: !3, line: 425, type: !45, isLocal: true, isDefinition: true)
!5430 = !DIGlobalVariableExpression(var: !5431, expr: !DIExpression())
!5431 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ioremap_encrypted349", scope: !2, file: !3, line: 432, type: !45, isLocal: true, isDefinition: true)
!5432 = !DIGlobalVariableExpression(var: !5433, expr: !DIExpression())
!5433 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ioremap_cache350", scope: !2, file: !3, line: 439, type: !45, isLocal: true, isDefinition: true)
!5434 = !DIGlobalVariableExpression(var: !5435, expr: !DIExpression())
!5435 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ioremap_prot351", scope: !2, file: !3, line: 448, type: !45, isLocal: true, isDefinition: true)
!5436 = !DIGlobalVariableExpression(var: !5437, expr: !DIExpression())
!5437 = distinct !DIGlobalVariable(scope: null, file: !3, line: 472, type: !5438, isLocal: true, isDefinition: true)
!5438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 488, elements: !5439)
!5439 = !{!5440}
!5440 = !DISubrange(count: 61)
!5441 = !DIGlobalVariableExpression(var: !5442, expr: !DIExpression())
!5442 = distinct !DIGlobalVariable(scope: null, file: !3, line: 472, type: !5443, isLocal: true, isDefinition: true)
!5443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 176, elements: !5444)
!5444 = !{!5445}
!5445 = !DISubrange(count: 22)
!5446 = !DIGlobalVariableExpression(var: !5447, expr: !DIExpression())
!5447 = distinct !DIGlobalVariable(scope: null, file: !3, line: 489, type: !5448, isLocal: true, isDefinition: true)
!5448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 216, elements: !5449)
!5449 = !{!5450}
!5450 = !DISubrange(count: 27)
!5451 = !DIGlobalVariableExpression(var: !5452, expr: !DIExpression())
!5452 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_iounmap352", scope: !2, file: !3, line: 503, type: !45, isLocal: true, isDefinition: true)
!5453 = !DIGlobalVariableExpression(var: !5454, expr: !DIExpression())
!5454 = distinct !DIGlobalVariable(scope: null, file: !3, line: 905, type: !3705, isLocal: true, isDefinition: true)
!5455 = !DIGlobalVariableExpression(var: !5456, expr: !DIExpression())
!5456 = distinct !DIGlobalVariable(scope: null, file: !3, line: 907, type: !5457, isLocal: true, isDefinition: true)
!5457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 312, elements: !5458)
!5458 = !{!5459}
!5459 = !DISubrange(count: 39)
!5460 = !DIGlobalVariableExpression(var: !5461, expr: !DIExpression())
!5461 = distinct !DIGlobalVariable(scope: null, file: !3, line: 909, type: !5457, isLocal: true, isDefinition: true)
!5462 = !DIGlobalVariableExpression(var: !5463, expr: !DIExpression())
!5463 = distinct !DIGlobalVariable(scope: null, file: !3, line: 912, type: !5448, isLocal: true, isDefinition: true)
!5464 = !DIGlobalVariableExpression(var: !5465, expr: !DIExpression())
!5465 = distinct !DIGlobalVariable(scope: null, file: !3, line: 913, type: !5448, isLocal: true, isDefinition: true)
!5466 = !DIGlobalVariableExpression(var: !5467, expr: !DIExpression())
!5467 = distinct !DIGlobalVariable(name: "bm_pte", scope: !2, file: !3, line: 855, type: !5468, isLocal: true, isDefinition: true, align: 32768)
!5468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1655, size: 32768, elements: !5469)
!5469 = !{!5470}
!5470 = !DISubrange(count: 512)
!5471 = !DIGlobalVariableExpression(var: !5472, expr: !DIExpression())
!5472 = distinct !DIGlobalVariable(scope: null, file: !3, line: 204, type: !5473, isLocal: true, isDefinition: true)
!5473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 336, elements: !5474)
!5474 = !{!5475}
!5475 = !DISubrange(count: 42)
!5476 = !DIGlobalVariableExpression(var: !5477, expr: !DIExpression())
!5477 = distinct !DIGlobalVariable(name: "__already_done", scope: !5478, file: !3, line: 216, type: !937, isLocal: true, isDefinition: true)
!5478 = distinct !DISubprogram(name: "__ioremap_caller", scope: !3, file: !3, line: 184, type: !5479, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5481)
!5479 = !DISubroutineType(types: !5480)
!5480 = !{!45, !369, !64, !5, !45, !937}
!5481 = !{!5482, !5483, !5484, !5485, !5486, !5487, !5488, !5489, !5490, !5492, !5493, !5497, !5498, !5499, !5500, !5501, !5502, !5506, !5509, !5513, !5516, !5517, !5519, !5523, !5524}
!5482 = !DILocalVariable(name: "phys_addr", arg: 1, scope: !5478, file: !3, line: 184, type: !369)
!5483 = !DILocalVariable(name: "size", arg: 2, scope: !5478, file: !3, line: 184, type: !64)
!5484 = !DILocalVariable(name: "pcm", arg: 3, scope: !5478, file: !3, line: 185, type: !5)
!5485 = !DILocalVariable(name: "caller", arg: 4, scope: !5478, file: !3, line: 185, type: !45)
!5486 = !DILocalVariable(name: "encrypted", arg: 5, scope: !5478, file: !3, line: 185, type: !937)
!5487 = !DILocalVariable(name: "offset", scope: !5478, file: !3, line: 187, type: !64)
!5488 = !DILocalVariable(name: "vaddr", scope: !5478, file: !3, line: 187, type: !64)
!5489 = !DILocalVariable(name: "last_addr", scope: !5478, file: !3, line: 188, type: !369)
!5490 = !DILocalVariable(name: "unaligned_phys_addr", scope: !5478, file: !3, line: 189, type: !5491)
!5491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !369)
!5492 = !DILocalVariable(name: "unaligned_size", scope: !5478, file: !3, line: 190, type: !5351)
!5493 = !DILocalVariable(name: "io_desc", scope: !5478, file: !3, line: 191, type: !5494)
!5494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ioremap_desc", file: !3, line: 36, size: 32, elements: !5495)
!5495 = !{!5496}
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5494, file: !3, line: 37, baseType: !7, size: 32)
!5497 = !DILocalVariable(name: "area", scope: !5478, file: !3, line: 192, type: !4594)
!5498 = !DILocalVariable(name: "new_pcm", scope: !5478, file: !3, line: 193, type: !5)
!5499 = !DILocalVariable(name: "prot", scope: !5478, file: !3, line: 194, type: !1568)
!5500 = !DILocalVariable(name: "retval", scope: !5478, file: !3, line: 195, type: !47)
!5501 = !DILocalVariable(name: "ret_addr", scope: !5478, file: !3, line: 196, type: !45)
!5502 = !DILocalVariable(name: "__ret_warn_on", scope: !5503, file: !3, line: 206, type: !47)
!5503 = distinct !DILexicalBlock(scope: !5504, file: !3, line: 206, column: 3)
!5504 = distinct !DILexicalBlock(scope: !5505, file: !3, line: 203, column: 35)
!5505 = distinct !DILexicalBlock(scope: !5478, file: !3, line: 203, column: 6)
!5506 = !DILocalVariable(name: "__flags", scope: !5507, file: !3, line: 206, type: !47)
!5507 = distinct !DILexicalBlock(scope: !5508, file: !3, line: 206, column: 3)
!5508 = distinct !DILexicalBlock(scope: !5503, file: !3, line: 206, column: 3)
!5509 = !DILocalVariable(name: "__ret_do_once", scope: !5510, file: !3, line: 216, type: !937)
!5510 = distinct !DILexicalBlock(scope: !5511, file: !3, line: 216, column: 3)
!5511 = distinct !DILexicalBlock(scope: !5512, file: !3, line: 215, column: 44)
!5512 = distinct !DILexicalBlock(scope: !5478, file: !3, line: 215, column: 6)
!5513 = !DILocalVariable(name: "__ret_cond", scope: !5514, file: !3, line: 216, type: !937)
!5514 = distinct !DILexicalBlock(scope: !5515, file: !3, line: 216, column: 3)
!5515 = distinct !DILexicalBlock(scope: !5510, file: !3, line: 216, column: 3)
!5516 = !DILocalVariable(name: "__ret_once", scope: !5514, file: !3, line: 216, type: !937)
!5517 = !DILocalVariable(name: "__ret_warn_on", scope: !5518, file: !3, line: 216, type: !47)
!5518 = distinct !DILexicalBlock(scope: !5515, file: !3, line: 216, column: 3)
!5519 = !DILocalVariable(name: "__flags", scope: !5520, file: !3, line: 216, type: !47)
!5520 = distinct !DILexicalBlock(scope: !5521, file: !3, line: 216, column: 3)
!5521 = distinct !DILexicalBlock(scope: !5522, file: !3, line: 216, column: 3)
!5522 = distinct !DILexicalBlock(scope: !5518, file: !3, line: 216, column: 3)
!5523 = !DILabel(scope: !5478, name: "err_free_area", file: !3, line: 315)
!5524 = !DILabel(scope: !5478, name: "err_free_memtype", file: !3, line: 317)
!5525 = !DIGlobalVariableExpression(var: !5526, expr: !DIExpression())
!5526 = distinct !DIGlobalVariable(scope: null, file: !3, line: 216, type: !5527, isLocal: true, isDefinition: true)
!5527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 232, elements: !5528)
!5528 = !{!5529}
!5529 = !DISubrange(count: 29)
!5530 = !DIGlobalVariableExpression(var: !5531, expr: !DIExpression())
!5531 = distinct !DIGlobalVariable(scope: null, file: !3, line: 237, type: !5532, isLocal: true, isDefinition: true)
!5532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 296, elements: !5533)
!5533 = !{!5534}
!5534 = !DISubrange(count: 37)
!5535 = !DIGlobalVariableExpression(var: !5536, expr: !DIExpression())
!5536 = distinct !DIGlobalVariable(scope: null, file: !3, line: 243, type: !5438, isLocal: true, isDefinition: true)
!5537 = !DIGlobalVariableExpression(var: !5538, expr: !DIExpression())
!5538 = distinct !DIGlobalVariable(scope: null, file: !3, line: 312, type: !5539, isLocal: true, isDefinition: true)
!5539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 288, elements: !5540)
!5540 = !{!5541}
!5541 = !DISubrange(count: 36)
!5542 = !DIGlobalVariableExpression(var: !5543, expr: !DIExpression())
!5543 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule89", scope: !5544, file: !5545, line: 901, type: !45, isLocal: true, isDefinition: true)
!5544 = distinct !DISubprogram(name: "rcu_read_unlock_sched", scope: !5545, file: !5545, line: 895, type: !2339, scopeLine: 896, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5545 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!5546 = !{!"rsp"}
!5547 = !{i32 7, !"Dwarf Version", i32 5}
!5548 = !{i32 2, !"Debug Info Version", i32 3}
!5549 = !{i32 1, !"wchar_size", i32 2}
!5550 = !{i32 8, !"cf-protection-branch", i32 1}
!5551 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5552 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5553 = !{i32 1, !"Code Model", i32 2}
!5554 = !{i32 1, !"override-stack-alignment", i32 8}
!5555 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5556 = distinct !DISubprogram(name: "ioremap_change_attr", scope: !3, file: !3, line: 44, type: !5557, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5559)
!5557 = !DISubroutineType(types: !5558)
!5558 = !{!47, !64, !64, !5}
!5559 = !{!5560, !5561, !5562, !5563, !5564}
!5560 = !DILocalVariable(name: "vaddr", arg: 1, scope: !5556, file: !3, line: 44, type: !64)
!5561 = !DILocalVariable(name: "size", arg: 2, scope: !5556, file: !3, line: 44, type: !64)
!5562 = !DILocalVariable(name: "pcm", arg: 3, scope: !5556, file: !3, line: 45, type: !5)
!5563 = !DILocalVariable(name: "nrpages", scope: !5556, file: !3, line: 47, type: !64)
!5564 = !DILocalVariable(name: "err", scope: !5556, file: !3, line: 48, type: !47)
!5565 = !DILocation(line: 44, column: 39, scope: !5556)
!5566 = !DILocation(line: 44, column: 60, scope: !5556)
!5567 = !DILocation(line: 45, column: 25, scope: !5556)
!5568 = !DILocation(line: 47, column: 2, scope: !5556)
!5569 = !DILocation(line: 47, column: 16, scope: !5556)
!5570 = !DILocation(line: 47, column: 26, scope: !5556)
!5571 = !DILocation(line: 47, column: 31, scope: !5556)
!5572 = !DILocation(line: 48, column: 2, scope: !5556)
!5573 = !DILocation(line: 48, column: 6, scope: !5556)
!5574 = !DILocation(line: 50, column: 10, scope: !5556)
!5575 = !DILocation(line: 50, column: 2, scope: !5556)
!5576 = !DILocation(line: 51, column: 2, scope: !5577)
!5577 = distinct !DILexicalBlock(scope: !5556, file: !3, line: 50, column: 15)
!5578 = !DILocation(line: 53, column: 24, scope: !5577)
!5579 = !DILocation(line: 53, column: 31, scope: !5577)
!5580 = !DILocation(line: 53, column: 9, scope: !5577)
!5581 = !DILocation(line: 53, column: 7, scope: !5577)
!5582 = !DILocation(line: 54, column: 3, scope: !5577)
!5583 = !DILocation(line: 56, column: 24, scope: !5577)
!5584 = !DILocation(line: 56, column: 31, scope: !5577)
!5585 = !DILocation(line: 56, column: 9, scope: !5577)
!5586 = !DILocation(line: 56, column: 7, scope: !5577)
!5587 = !DILocation(line: 57, column: 3, scope: !5577)
!5588 = !DILocation(line: 59, column: 24, scope: !5577)
!5589 = !DILocation(line: 59, column: 31, scope: !5577)
!5590 = !DILocation(line: 59, column: 9, scope: !5577)
!5591 = !DILocation(line: 59, column: 7, scope: !5577)
!5592 = !DILocation(line: 60, column: 3, scope: !5577)
!5593 = !DILocation(line: 62, column: 24, scope: !5577)
!5594 = !DILocation(line: 62, column: 31, scope: !5577)
!5595 = !DILocation(line: 62, column: 9, scope: !5577)
!5596 = !DILocation(line: 62, column: 7, scope: !5577)
!5597 = !DILocation(line: 63, column: 3, scope: !5577)
!5598 = !DILocation(line: 66, column: 9, scope: !5556)
!5599 = !DILocation(line: 67, column: 1, scope: !5556)
!5600 = !DILocation(line: 66, column: 2, scope: !5556)
!5601 = !DISubprogram(name: "_set_memory_uc", scope: !5602, file: !5602, line: 42, type: !5603, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5602 = !DIFile(filename: "./arch/x86/include/asm/set_memory.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5ed4c9c9f9b5c1359158a637c4326a39")
!5603 = !DISubroutineType(types: !5604)
!5604 = !{!47, !64, !47}
!5605 = !DISubprogram(name: "_set_memory_wc", scope: !5602, file: !5602, line: 43, type: !5603, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5606 = !DISubprogram(name: "_set_memory_wt", scope: !5602, file: !5602, line: 44, type: !5603, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5607 = !DISubprogram(name: "_set_memory_wb", scope: !5602, file: !5602, line: 45, type: !5603, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5608 = distinct !DISubprogram(name: "ioremap", scope: !3, file: !3, line: 343, type: !5609, scopeLine: 344, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5611)
!5609 = !DISubroutineType(types: !5610)
!5610 = !{!45, !369, !64}
!5611 = !{!5612, !5613, !5614}
!5612 = !DILocalVariable(name: "phys_addr", arg: 1, scope: !5608, file: !3, line: 343, type: !369)
!5613 = !DILocalVariable(name: "size", arg: 2, scope: !5608, file: !3, line: 343, type: !64)
!5614 = !DILocalVariable(name: "pcm", scope: !5608, file: !3, line: 353, type: !5)
!5615 = !DILocation(line: 343, column: 39, scope: !5608)
!5616 = !DILocation(line: 343, column: 64, scope: !5608)
!5617 = !DILocation(line: 353, column: 2, scope: !5608)
!5618 = !DILocation(line: 353, column: 23, scope: !5608)
!5619 = !DILocation(line: 355, column: 26, scope: !5608)
!5620 = !DILocation(line: 355, column: 37, scope: !5608)
!5621 = !DILocation(line: 355, column: 43, scope: !5608)
!5622 = !DILocation(line: 356, column: 5, scope: !5608)
!5623 = !DILocation(line: 355, column: 9, scope: !5608)
!5624 = !DILocation(line: 357, column: 1, scope: !5608)
!5625 = !DILocation(line: 355, column: 2, scope: !5608)
!5626 = !DILocation(line: 184, column: 34, scope: !5478)
!5627 = !DILocation(line: 184, column: 59, scope: !5478)
!5628 = !DILocation(line: 185, column: 25, scope: !5478)
!5629 = !DILocation(line: 185, column: 36, scope: !5478)
!5630 = !DILocation(line: 185, column: 49, scope: !5478)
!5631 = !DILocation(line: 187, column: 2, scope: !5478)
!5632 = !DILocation(line: 187, column: 16, scope: !5478)
!5633 = !DILocation(line: 187, column: 24, scope: !5478)
!5634 = !DILocation(line: 188, column: 2, scope: !5478)
!5635 = !DILocation(line: 188, column: 18, scope: !5478)
!5636 = !DILocation(line: 189, column: 2, scope: !5478)
!5637 = !DILocation(line: 189, column: 24, scope: !5478)
!5638 = !DILocation(line: 189, column: 46, scope: !5478)
!5639 = !DILocation(line: 190, column: 2, scope: !5478)
!5640 = !DILocation(line: 190, column: 22, scope: !5478)
!5641 = !DILocation(line: 190, column: 39, scope: !5478)
!5642 = !DILocation(line: 191, column: 2, scope: !5478)
!5643 = !DILocation(line: 191, column: 22, scope: !5478)
!5644 = !DILocation(line: 192, column: 2, scope: !5478)
!5645 = !DILocation(line: 192, column: 20, scope: !5478)
!5646 = !DILocation(line: 193, column: 2, scope: !5478)
!5647 = !DILocation(line: 193, column: 23, scope: !5478)
!5648 = !DILocation(line: 194, column: 2, scope: !5478)
!5649 = !DILocation(line: 194, column: 11, scope: !5478)
!5650 = !DILocation(line: 195, column: 2, scope: !5478)
!5651 = !DILocation(line: 195, column: 6, scope: !5478)
!5652 = !DILocation(line: 196, column: 2, scope: !5478)
!5653 = !DILocation(line: 196, column: 16, scope: !5478)
!5654 = !DILocation(line: 199, column: 14, scope: !5478)
!5655 = !DILocation(line: 199, column: 26, scope: !5478)
!5656 = !DILocation(line: 199, column: 24, scope: !5478)
!5657 = !DILocation(line: 199, column: 31, scope: !5478)
!5658 = !DILocation(line: 199, column: 12, scope: !5478)
!5659 = !DILocation(line: 200, column: 7, scope: !5660)
!5660 = distinct !DILexicalBlock(scope: !5478, file: !3, line: 200, column: 6)
!5661 = !DILocation(line: 200, column: 12, scope: !5660)
!5662 = !DILocation(line: 200, column: 15, scope: !5660)
!5663 = !DILocation(line: 200, column: 27, scope: !5660)
!5664 = !DILocation(line: 200, column: 25, scope: !5660)
!5665 = !DILocation(line: 200, column: 6, scope: !5478)
!5666 = !DILocation(line: 201, column: 3, scope: !5660)
!5667 = !DILocation(line: 203, column: 23, scope: !5505)
!5668 = !DILocation(line: 203, column: 7, scope: !5505)
!5669 = !DILocation(line: 203, column: 6, scope: !5478)
!5670 = !DILocation(line: 204, column: 3, scope: !5671)
!5671 = distinct !DILexicalBlock(scope: !5504, file: !3, line: 204, column: 3)
!5672 = !DILocation(line: 204, column: 3, scope: !5673)
!5673 = distinct !DILexicalBlock(scope: !5671, file: !3, line: 204, column: 3)
!5674 = !DILocation(line: 206, column: 3, scope: !5503)
!5675 = !DILocation(line: 206, column: 3, scope: !5508)
!5676 = !DILocation(line: 206, column: 3, scope: !5507)
!5677 = !DILocation(line: 206, column: 3, scope: !5678)
!5678 = distinct !DILexicalBlock(scope: !5507, file: !3, line: 206, column: 3)
!5679 = !DILocation(line: 206, column: 3, scope: !5680)
!5680 = distinct !DILexicalBlock(scope: !5507, file: !3, line: 206, column: 3)
!5681 = !{i64 2156052943, i64 2156052972, i64 2156053018, i64 2156053076, i64 2156053130, i64 2156053184, i64 2156053239, i64 2156053270, i64 2156053578, i64 2156053584, i64 2156053631, i64 2156053654, i64 2156053680}
!5682 = !DILocation(line: 206, column: 3, scope: !5683)
!5683 = distinct !DILexicalBlock(scope: !5507, file: !3, line: 206, column: 3)
!5684 = !DILocation(line: 206, column: 3, scope: !5504)
!5685 = !DILocation(line: 207, column: 3, scope: !5504)
!5686 = !DILocation(line: 210, column: 22, scope: !5478)
!5687 = !DILocation(line: 210, column: 33, scope: !5478)
!5688 = !DILocation(line: 210, column: 2, scope: !5478)
!5689 = !DILocation(line: 215, column: 14, scope: !5512)
!5690 = !DILocation(line: 215, column: 20, scope: !5512)
!5691 = !DILocation(line: 215, column: 6, scope: !5478)
!5692 = !DILocation(line: 216, column: 3, scope: !5510)
!5693 = !DILocation(line: 216, column: 3, scope: !5514)
!5694 = !{i8 0, i8 2}
!5695 = !DILocation(line: 216, column: 3, scope: !5696)
!5696 = distinct !DILexicalBlock(scope: !5514, file: !3, line: 216, column: 3)
!5697 = !DILocation(line: 0, scope: !5696)
!5698 = !DILocation(line: 216, column: 3, scope: !5699)
!5699 = distinct !DILexicalBlock(scope: !5696, file: !3, line: 216, column: 3)
!5700 = !DILocation(line: 216, column: 3, scope: !5515)
!5701 = !DILocation(line: 216, column: 3, scope: !5518)
!5702 = !DILocation(line: 216, column: 3, scope: !5522)
!5703 = !DILocation(line: 216, column: 3, scope: !5521)
!5704 = !DILocation(line: 216, column: 3, scope: !5705)
!5705 = distinct !DILexicalBlock(scope: !5521, file: !3, line: 216, column: 3)
!5706 = !DILocation(line: 216, column: 3, scope: !5520)
!5707 = !DILocation(line: 216, column: 3, scope: !5708)
!5708 = distinct !DILexicalBlock(scope: !5520, file: !3, line: 216, column: 3)
!5709 = !DILocation(line: 216, column: 3, scope: !5710)
!5710 = distinct !DILexicalBlock(scope: !5520, file: !3, line: 216, column: 3)
!5711 = !{i64 2156055583, i64 2156055612, i64 2156055658, i64 2156055716, i64 2156055770, i64 2156055824, i64 2156055879, i64 2156055910, i64 2156056218, i64 2156056224, i64 2156056271, i64 2156056294, i64 2156056320}
!5712 = !DILocation(line: 216, column: 3, scope: !5713)
!5713 = distinct !DILexicalBlock(scope: !5520, file: !3, line: 216, column: 3)
!5714 = !DILocation(line: 216, column: 3, scope: !5715)
!5715 = distinct !DILexicalBlock(scope: !5521, file: !3, line: 216, column: 3)
!5716 = !DILocation(line: 216, column: 3, scope: !5511)
!5717 = !DILocation(line: 218, column: 3, scope: !5511)
!5718 = !DILocation(line: 224, column: 11, scope: !5478)
!5719 = !DILocation(line: 224, column: 21, scope: !5478)
!5720 = !DILocation(line: 224, column: 9, scope: !5478)
!5721 = !DILocation(line: 225, column: 12, scope: !5478)
!5722 = !DILocation(line: 226, column: 9, scope: !5478)
!5723 = !DILocation(line: 226, column: 35, scope: !5478)
!5724 = !DILocation(line: 226, column: 33, scope: !5478)
!5725 = !DILocation(line: 226, column: 7, scope: !5478)
!5726 = !DILocation(line: 232, column: 12, scope: !5478)
!5727 = !DILocation(line: 234, column: 27, scope: !5478)
!5728 = !DILocation(line: 234, column: 43, scope: !5478)
!5729 = !DILocation(line: 234, column: 55, scope: !5478)
!5730 = !DILocation(line: 234, column: 53, scope: !5478)
!5731 = !DILocation(line: 235, column: 7, scope: !5478)
!5732 = !DILocation(line: 234, column: 11, scope: !5478)
!5733 = !DILocation(line: 234, column: 9, scope: !5478)
!5734 = !DILocation(line: 236, column: 6, scope: !5735)
!5735 = distinct !DILexicalBlock(scope: !5478, file: !3, line: 236, column: 6)
!5736 = !DILocation(line: 236, column: 6, scope: !5478)
!5737 = !DILocation(line: 237, column: 3, scope: !5738)
!5738 = distinct !DILexicalBlock(scope: !5739, file: !3, line: 237, column: 3)
!5739 = distinct !DILexicalBlock(scope: !5735, file: !3, line: 236, column: 14)
!5740 = !DILocation(line: 237, column: 3, scope: !5741)
!5741 = distinct !DILexicalBlock(scope: !5738, file: !3, line: 237, column: 3)
!5742 = !DILocation(line: 238, column: 3, scope: !5739)
!5743 = !DILocation(line: 241, column: 6, scope: !5744)
!5744 = distinct !DILexicalBlock(scope: !5478, file: !3, line: 241, column: 6)
!5745 = !DILocation(line: 241, column: 13, scope: !5744)
!5746 = !DILocation(line: 241, column: 10, scope: !5744)
!5747 = !DILocation(line: 241, column: 6, scope: !5478)
!5748 = !DILocation(line: 242, column: 31, scope: !5749)
!5749 = distinct !DILexicalBlock(scope: !5750, file: !3, line: 242, column: 7)
!5750 = distinct !DILexicalBlock(scope: !5744, file: !3, line: 241, column: 22)
!5751 = !DILocation(line: 242, column: 42, scope: !5749)
!5752 = !DILocation(line: 242, column: 48, scope: !5749)
!5753 = !DILocation(line: 242, column: 53, scope: !5749)
!5754 = !DILocation(line: 242, column: 8, scope: !5749)
!5755 = !DILocation(line: 242, column: 7, scope: !5750)
!5756 = !DILocation(line: 243, column: 4, scope: !5757)
!5757 = distinct !DILexicalBlock(scope: !5758, file: !3, line: 243, column: 4)
!5758 = distinct !DILexicalBlock(scope: !5749, file: !3, line: 242, column: 63)
!5759 = !DILocation(line: 243, column: 4, scope: !5760)
!5760 = distinct !DILexicalBlock(scope: !5757, file: !3, line: 243, column: 4)
!5761 = !DILocation(line: 248, column: 4, scope: !5758)
!5762 = !DILocation(line: 250, column: 9, scope: !5750)
!5763 = !DILocation(line: 250, column: 7, scope: !5750)
!5764 = !DILocation(line: 251, column: 2, scope: !5750)
!5765 = !DILocation(line: 261, column: 9, scope: !5478)
!5766 = !DILocation(line: 262, column: 15, scope: !5767)
!5767 = distinct !DILexicalBlock(scope: !5478, file: !3, line: 262, column: 6)
!5768 = !DILocation(line: 262, column: 21, scope: !5767)
!5769 = !DILocation(line: 262, column: 44, scope: !5767)
!5770 = !DILocation(line: 262, column: 47, scope: !5767)
!5771 = !DILocation(line: 262, column: 6, scope: !5478)
!5772 = !DILocation(line: 263, column: 10, scope: !5767)
!5773 = !DILocation(line: 263, column: 3, scope: !5767)
!5774 = !DILocation(line: 265, column: 10, scope: !5767)
!5775 = !DILocation(line: 267, column: 10, scope: !5478)
!5776 = !DILocation(line: 267, column: 2, scope: !5478)
!5777 = !DILocation(line: 268, column: 2, scope: !5778)
!5778 = distinct !DILexicalBlock(scope: !5478, file: !3, line: 267, column: 15)
!5779 = !DILocation(line: 270, column: 10, scope: !5778)
!5780 = !DILocation(line: 272, column: 3, scope: !5778)
!5781 = !DILocation(line: 274, column: 10, scope: !5778)
!5782 = !DILocation(line: 276, column: 3, scope: !5778)
!5783 = !DILocation(line: 278, column: 10, scope: !5778)
!5784 = !DILocation(line: 280, column: 3, scope: !5778)
!5785 = !DILocation(line: 282, column: 10, scope: !5778)
!5786 = !DILocation(line: 284, column: 3, scope: !5778)
!5787 = !DILocation(line: 292, column: 28, scope: !5478)
!5788 = !DILocation(line: 292, column: 46, scope: !5478)
!5789 = !DILocation(line: 292, column: 9, scope: !5478)
!5790 = !DILocation(line: 292, column: 7, scope: !5478)
!5791 = !DILocation(line: 293, column: 7, scope: !5792)
!5792 = distinct !DILexicalBlock(scope: !5478, file: !3, line: 293, column: 6)
!5793 = !DILocation(line: 293, column: 6, scope: !5478)
!5794 = !DILocation(line: 294, column: 3, scope: !5792)
!5795 = !DILocation(line: 295, column: 20, scope: !5478)
!5796 = !DILocation(line: 295, column: 2, scope: !5478)
!5797 = !DILocation(line: 295, column: 8, scope: !5478)
!5798 = !DILocation(line: 295, column: 18, scope: !5478)
!5799 = !DILocation(line: 296, column: 26, scope: !5478)
!5800 = !DILocation(line: 296, column: 32, scope: !5478)
!5801 = !DILocation(line: 296, column: 10, scope: !5478)
!5802 = !DILocation(line: 296, column: 8, scope: !5478)
!5803 = !DILocation(line: 298, column: 30, scope: !5804)
!5804 = distinct !DILexicalBlock(scope: !5478, file: !3, line: 298, column: 6)
!5805 = !DILocation(line: 298, column: 41, scope: !5804)
!5806 = !DILocation(line: 298, column: 47, scope: !5804)
!5807 = !DILocation(line: 298, column: 6, scope: !5804)
!5808 = !DILocation(line: 298, column: 6, scope: !5478)
!5809 = !DILocation(line: 299, column: 3, scope: !5804)
!5810 = !DILocation(line: 301, column: 25, scope: !5811)
!5811 = distinct !DILexicalBlock(scope: !5478, file: !3, line: 301, column: 6)
!5812 = !DILocation(line: 301, column: 32, scope: !5811)
!5813 = !DILocation(line: 301, column: 40, scope: !5811)
!5814 = !DILocation(line: 301, column: 38, scope: !5811)
!5815 = !DILocation(line: 301, column: 46, scope: !5811)
!5816 = !DILocation(line: 301, column: 6, scope: !5811)
!5817 = !DILocation(line: 301, column: 6, scope: !5478)
!5818 = !DILocation(line: 302, column: 3, scope: !5811)
!5819 = !DILocation(line: 304, column: 31, scope: !5478)
!5820 = !DILocation(line: 304, column: 39, scope: !5478)
!5821 = !DILocation(line: 304, column: 37, scope: !5478)
!5822 = !DILocation(line: 304, column: 13, scope: !5478)
!5823 = !DILocation(line: 304, column: 11, scope: !5478)
!5824 = !DILocation(line: 305, column: 20, scope: !5478)
!5825 = !DILocation(line: 305, column: 41, scope: !5478)
!5826 = !DILocation(line: 305, column: 57, scope: !5478)
!5827 = !DILocation(line: 305, column: 2, scope: !5478)
!5828 = !DILocation(line: 311, column: 29, scope: !5829)
!5829 = distinct !DILexicalBlock(scope: !5478, file: !3, line: 311, column: 6)
!5830 = !DILocation(line: 311, column: 50, scope: !5829)
!5831 = !DILocation(line: 311, column: 6, scope: !5829)
!5832 = !DILocation(line: 311, column: 6, scope: !5478)
!5833 = !DILocation(line: 312, column: 3, scope: !5834)
!5834 = distinct !DILexicalBlock(scope: !5829, file: !3, line: 312, column: 3)
!5835 = !DILocation(line: 312, column: 3, scope: !5836)
!5836 = distinct !DILexicalBlock(scope: !5834, file: !3, line: 312, column: 3)
!5837 = !DILocation(line: 312, column: 3, scope: !5829)
!5838 = !DILocation(line: 314, column: 9, scope: !5478)
!5839 = !DILocation(line: 314, column: 2, scope: !5478)
!5840 = !DILocation(line: 315, column: 1, scope: !5478)
!5841 = !DILocation(line: 316, column: 15, scope: !5478)
!5842 = !DILocation(line: 316, column: 2, scope: !5478)
!5843 = !DILocation(line: 317, column: 1, scope: !5478)
!5844 = !DILocation(line: 318, column: 15, scope: !5478)
!5845 = !DILocation(line: 318, column: 26, scope: !5478)
!5846 = !DILocation(line: 318, column: 38, scope: !5478)
!5847 = !DILocation(line: 318, column: 36, scope: !5478)
!5848 = !DILocation(line: 318, column: 2, scope: !5478)
!5849 = !DILocation(line: 319, column: 2, scope: !5478)
!5850 = !DILocation(line: 320, column: 1, scope: !5478)
!5851 = distinct !DISubprogram(name: "ioremap_uc", scope: !3, file: !3, line: 384, type: !5609, scopeLine: 385, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5852)
!5852 = !{!5853, !5854, !5855}
!5853 = !DILocalVariable(name: "phys_addr", arg: 1, scope: !5851, file: !3, line: 384, type: !369)
!5854 = !DILocalVariable(name: "size", arg: 2, scope: !5851, file: !3, line: 384, type: !64)
!5855 = !DILocalVariable(name: "pcm", scope: !5851, file: !3, line: 386, type: !5)
!5856 = !DILocation(line: 384, column: 42, scope: !5851)
!5857 = !DILocation(line: 384, column: 67, scope: !5851)
!5858 = !DILocation(line: 386, column: 2, scope: !5851)
!5859 = !DILocation(line: 386, column: 23, scope: !5851)
!5860 = !DILocation(line: 388, column: 26, scope: !5851)
!5861 = !DILocation(line: 388, column: 37, scope: !5851)
!5862 = !DILocation(line: 388, column: 43, scope: !5851)
!5863 = !DILocation(line: 389, column: 5, scope: !5851)
!5864 = !DILocation(line: 388, column: 9, scope: !5851)
!5865 = !DILocation(line: 390, column: 1, scope: !5851)
!5866 = !DILocation(line: 388, column: 2, scope: !5851)
!5867 = distinct !DISubprogram(name: "ioremap_wc", scope: !3, file: !3, line: 403, type: !5609, scopeLine: 404, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5868)
!5868 = !{!5869, !5870}
!5869 = !DILocalVariable(name: "phys_addr", arg: 1, scope: !5867, file: !3, line: 403, type: !369)
!5870 = !DILocalVariable(name: "size", arg: 2, scope: !5867, file: !3, line: 403, type: !64)
!5871 = !DILocation(line: 403, column: 42, scope: !5867)
!5872 = !DILocation(line: 403, column: 67, scope: !5867)
!5873 = !DILocation(line: 405, column: 26, scope: !5867)
!5874 = !DILocation(line: 405, column: 37, scope: !5867)
!5875 = !DILocation(line: 406, column: 6, scope: !5867)
!5876 = !DILocation(line: 405, column: 9, scope: !5867)
!5877 = !DILocation(line: 405, column: 2, scope: !5867)
!5878 = distinct !DISubprogram(name: "ioremap_wt", scope: !3, file: !3, line: 420, type: !5609, scopeLine: 421, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5879)
!5879 = !{!5880, !5881}
!5880 = !DILocalVariable(name: "phys_addr", arg: 1, scope: !5878, file: !3, line: 420, type: !369)
!5881 = !DILocalVariable(name: "size", arg: 2, scope: !5878, file: !3, line: 420, type: !64)
!5882 = !DILocation(line: 420, column: 42, scope: !5878)
!5883 = !DILocation(line: 420, column: 67, scope: !5878)
!5884 = !DILocation(line: 422, column: 26, scope: !5878)
!5885 = !DILocation(line: 422, column: 37, scope: !5878)
!5886 = !DILocation(line: 423, column: 6, scope: !5878)
!5887 = !DILocation(line: 422, column: 9, scope: !5878)
!5888 = !DILocation(line: 422, column: 2, scope: !5878)
!5889 = distinct !DISubprogram(name: "ioremap_encrypted", scope: !3, file: !3, line: 427, type: !5609, scopeLine: 428, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5890)
!5890 = !{!5891, !5892}
!5891 = !DILocalVariable(name: "phys_addr", arg: 1, scope: !5889, file: !3, line: 427, type: !369)
!5892 = !DILocalVariable(name: "size", arg: 2, scope: !5889, file: !3, line: 427, type: !64)
!5893 = !DILocation(line: 427, column: 49, scope: !5889)
!5894 = !DILocation(line: 427, column: 74, scope: !5889)
!5895 = !DILocation(line: 429, column: 26, scope: !5889)
!5896 = !DILocation(line: 429, column: 37, scope: !5889)
!5897 = !DILocation(line: 430, column: 5, scope: !5889)
!5898 = !DILocation(line: 429, column: 9, scope: !5889)
!5899 = !DILocation(line: 429, column: 2, scope: !5889)
!5900 = distinct !DISubprogram(name: "ioremap_cache", scope: !3, file: !3, line: 434, type: !5609, scopeLine: 435, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5901)
!5901 = !{!5902, !5903}
!5902 = !DILocalVariable(name: "phys_addr", arg: 1, scope: !5900, file: !3, line: 434, type: !369)
!5903 = !DILocalVariable(name: "size", arg: 2, scope: !5900, file: !3, line: 434, type: !64)
!5904 = !DILocation(line: 434, column: 45, scope: !5900)
!5905 = !DILocation(line: 434, column: 70, scope: !5900)
!5906 = !DILocation(line: 436, column: 26, scope: !5900)
!5907 = !DILocation(line: 436, column: 37, scope: !5900)
!5908 = !DILocation(line: 437, column: 5, scope: !5900)
!5909 = !DILocation(line: 436, column: 9, scope: !5900)
!5910 = !DILocation(line: 436, column: 2, scope: !5900)
!5911 = distinct !DISubprogram(name: "ioremap_prot", scope: !3, file: !3, line: 441, type: !5912, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5914)
!5912 = !DISubroutineType(types: !5913)
!5913 = !{!45, !369, !64, !64}
!5914 = !{!5915, !5916, !5917}
!5915 = !DILocalVariable(name: "phys_addr", arg: 1, scope: !5911, file: !3, line: 441, type: !369)
!5916 = !DILocalVariable(name: "size", arg: 2, scope: !5911, file: !3, line: 441, type: !64)
!5917 = !DILocalVariable(name: "prot_val", arg: 3, scope: !5911, file: !3, line: 442, type: !64)
!5918 = !DILocation(line: 441, column: 44, scope: !5911)
!5919 = !DILocation(line: 441, column: 69, scope: !5911)
!5920 = !DILocation(line: 442, column: 19, scope: !5911)
!5921 = !DILocation(line: 444, column: 26, scope: !5911)
!5922 = !DILocation(line: 444, column: 37, scope: !5911)
!5923 = !DILocation(line: 445, column: 22, scope: !5911)
!5924 = !DILocation(line: 445, column: 5, scope: !5911)
!5925 = !DILocation(line: 446, column: 5, scope: !5911)
!5926 = !DILocation(line: 444, column: 9, scope: !5911)
!5927 = !DILocation(line: 444, column: 2, scope: !5911)
!5928 = !DISubprogram(name: "pgprot2cachemode", scope: !5929, file: !5929, line: 27, type: !5930, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5929 = !DIFile(filename: "./arch/x86/include/asm/memtype.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "83be40d1830a400be9fbb1fd435851b8")
!5930 = !DISubroutineType(types: !5931)
!5931 = !{!5, !1568}
!5932 = distinct !DISubprogram(name: "iounmap", scope: !3, file: !3, line: 456, type: !5933, scopeLine: 457, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5935)
!5933 = !DISubroutineType(types: !5934)
!5934 = !{null, !366}
!5935 = !{!5936, !5937, !5938, !5939, !5943}
!5936 = !DILocalVariable(name: "addr", arg: 1, scope: !5932, file: !3, line: 456, type: !366)
!5937 = !DILocalVariable(name: "p", scope: !5932, file: !3, line: 458, type: !4594)
!5938 = !DILocalVariable(name: "o", scope: !5932, file: !3, line: 458, type: !4594)
!5939 = !DILocalVariable(name: "__ret_warn_on", scope: !5940, file: !3, line: 472, type: !47)
!5940 = distinct !DILexicalBlock(scope: !5941, file: !3, line: 472, column: 3)
!5941 = distinct !DILexicalBlock(scope: !5942, file: !3, line: 471, column: 60)
!5942 = distinct !DILexicalBlock(scope: !5932, file: !3, line: 470, column: 6)
!5943 = !DILocalVariable(name: "__flags", scope: !5944, file: !3, line: 472, type: !47)
!5944 = distinct !DILexicalBlock(scope: !5945, file: !3, line: 472, column: 3)
!5945 = distinct !DILexicalBlock(scope: !5946, file: !3, line: 472, column: 3)
!5946 = distinct !DILexicalBlock(scope: !5940, file: !3, line: 472, column: 3)
!5947 = !DILocation(line: 456, column: 37, scope: !5932)
!5948 = !DILocation(line: 458, column: 2, scope: !5932)
!5949 = !DILocation(line: 458, column: 20, scope: !5932)
!5950 = !DILocation(line: 458, column: 24, scope: !5932)
!5951 = !DILocation(line: 460, column: 22, scope: !5952)
!5952 = distinct !DILexicalBlock(scope: !5932, file: !3, line: 460, column: 6)
!5953 = !DILocation(line: 460, column: 30, scope: !5952)
!5954 = !DILocation(line: 460, column: 27, scope: !5952)
!5955 = !DILocation(line: 460, column: 6, scope: !5932)
!5956 = !DILocation(line: 461, column: 3, scope: !5952)
!5957 = !DILocation(line: 470, column: 22, scope: !5942)
!5958 = !DILocation(line: 470, column: 30, scope: !5942)
!5959 = !DILocation(line: 470, column: 27, scope: !5942)
!5960 = !DILocation(line: 470, column: 62, scope: !5942)
!5961 = !DILocation(line: 471, column: 22, scope: !5942)
!5962 = !DILocation(line: 471, column: 29, scope: !5942)
!5963 = !DILocation(line: 471, column: 27, scope: !5942)
!5964 = !DILocation(line: 470, column: 6, scope: !5932)
!5965 = !DILocation(line: 472, column: 3, scope: !5940)
!5966 = !DILocation(line: 472, column: 3, scope: !5946)
!5967 = !DILocation(line: 472, column: 3, scope: !5945)
!5968 = !DILocation(line: 472, column: 3, scope: !5969)
!5969 = distinct !DILexicalBlock(scope: !5945, file: !3, line: 472, column: 3)
!5970 = !DILocation(line: 472, column: 3, scope: !5944)
!5971 = !DILocation(line: 472, column: 3, scope: !5972)
!5972 = distinct !DILexicalBlock(scope: !5944, file: !3, line: 472, column: 3)
!5973 = !DILocation(line: 472, column: 3, scope: !5974)
!5974 = distinct !DILexicalBlock(scope: !5944, file: !3, line: 472, column: 3)
!5975 = !{i64 2156077012, i64 2156077041, i64 2156077087, i64 2156077145, i64 2156077199, i64 2156077253, i64 2156077308, i64 2156077339, i64 2156077647, i64 2156077653, i64 2156077700, i64 2156077723, i64 2156077749}
!5976 = !DILocation(line: 472, column: 3, scope: !5977)
!5977 = distinct !DILexicalBlock(scope: !5944, file: !3, line: 472, column: 3)
!5978 = !DILocation(line: 472, column: 3, scope: !5979)
!5979 = distinct !DILexicalBlock(scope: !5945, file: !3, line: 472, column: 3)
!5980 = !DILocation(line: 472, column: 3, scope: !5941)
!5981 = !DILocation(line: 473, column: 3, scope: !5941)
!5982 = !DILocation(line: 476, column: 20, scope: !5932)
!5983 = !DILocation(line: 476, column: 2, scope: !5932)
!5984 = !DILocation(line: 479, column: 39, scope: !5932)
!5985 = !DILocation(line: 479, column: 16, scope: !5932)
!5986 = !DILocation(line: 479, column: 14, scope: !5932)
!5987 = !DILocation(line: 478, column: 9, scope: !5932)
!5988 = !DILocation(line: 478, column: 7, scope: !5932)
!5989 = !DILocation(line: 486, column: 35, scope: !5932)
!5990 = !DILocation(line: 486, column: 6, scope: !5932)
!5991 = !DILocation(line: 486, column: 4, scope: !5932)
!5992 = !DILocation(line: 488, column: 7, scope: !5993)
!5993 = distinct !DILexicalBlock(scope: !5932, file: !3, line: 488, column: 6)
!5994 = !DILocation(line: 488, column: 6, scope: !5932)
!5995 = !DILocation(line: 489, column: 3, scope: !5996)
!5996 = distinct !DILexicalBlock(scope: !5997, file: !3, line: 489, column: 3)
!5997 = distinct !DILexicalBlock(scope: !5993, file: !3, line: 488, column: 10)
!5998 = !DILocation(line: 489, column: 3, scope: !5999)
!5999 = distinct !DILexicalBlock(scope: !5996, file: !3, line: 489, column: 3)
!6000 = !DILocation(line: 490, column: 3, scope: !5997)
!6001 = !DILocation(line: 491, column: 3, scope: !5997)
!6002 = !DILocation(line: 494, column: 42, scope: !5932)
!6003 = !DILocation(line: 494, column: 27, scope: !5932)
!6004 = !DILocation(line: 495, column: 18, scope: !5932)
!6005 = !DILocation(line: 495, column: 3, scope: !5932)
!6006 = !DILocation(line: 495, column: 42, scope: !5932)
!6007 = !DILocation(line: 495, column: 25, scope: !5932)
!6008 = !DILocation(line: 495, column: 23, scope: !5932)
!6009 = !DILocation(line: 494, column: 2, scope: !5932)
!6010 = !DILocation(line: 496, column: 15, scope: !5932)
!6011 = !DILocation(line: 496, column: 18, scope: !5932)
!6012 = !DILocation(line: 496, column: 29, scope: !5932)
!6013 = !DILocation(line: 496, column: 32, scope: !5932)
!6014 = !DILocation(line: 496, column: 61, scope: !5932)
!6015 = !DILocation(line: 496, column: 44, scope: !5932)
!6016 = !DILocation(line: 496, column: 42, scope: !5932)
!6017 = !DILocation(line: 496, column: 2, scope: !5932)
!6018 = !DILocation(line: 499, column: 37, scope: !5932)
!6019 = !DILocation(line: 499, column: 6, scope: !5932)
!6020 = !DILocation(line: 499, column: 4, scope: !5932)
!6021 = !DILocation(line: 500, column: 2, scope: !5932)
!6022 = !DILocation(line: 500, column: 2, scope: !6023)
!6023 = distinct !DILexicalBlock(scope: !6024, file: !3, line: 500, column: 2)
!6024 = distinct !DILexicalBlock(scope: !5932, file: !3, line: 500, column: 2)
!6025 = !DILocation(line: 500, column: 2, scope: !6024)
!6026 = !DILocation(line: 500, column: 2, scope: !6027)
!6027 = distinct !DILexicalBlock(scope: !6023, file: !3, line: 500, column: 2)
!6028 = !DILocation(line: 500, column: 2, scope: !6029)
!6029 = distinct !DILexicalBlock(scope: !6027, file: !3, line: 500, column: 2)
!6030 = !DILocation(line: 500, column: 2, scope: !6031)
!6031 = distinct !DILexicalBlock(scope: !6027, file: !3, line: 500, column: 2)
!6032 = !{i64 2156078719, i64 2156078748, i64 2156078794, i64 2156078852, i64 2156078906, i64 2156078960, i64 2156079015, i64 2156079046}
!6033 = !DILocation(line: 501, column: 8, scope: !5932)
!6034 = !DILocation(line: 501, column: 2, scope: !5932)
!6035 = !DILocation(line: 502, column: 1, scope: !5932)
!6036 = distinct !DISubprogram(name: "phys_to_virt", scope: !6037, file: !6037, line: 147, type: !6038, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6040)
!6037 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61486da85b514d445321f8c21ee9eef4")
!6038 = !DISubroutineType(types: !6039)
!6039 = !{!45, !370}
!6040 = !{!6041}
!6041 = !DILocalVariable(name: "address", arg: 1, scope: !6036, file: !6037, line: 147, type: !370)
!6042 = !DILocation(line: 147, column: 46, scope: !6036)
!6043 = !DILocation(line: 149, column: 9, scope: !6036)
!6044 = !DILocation(line: 149, column: 2, scope: !6036)
!6045 = !DISubprogram(name: "__warn_printk", scope: !2148, file: !2148, line: 93, type: !6046, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6046 = !DISubroutineType(types: !6047)
!6047 = !{null, !41, null}
!6048 = distinct !DISubprogram(name: "mmiotrace_iounmap", scope: !6049, file: !6049, line: 70, type: !5933, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6050)
!6049 = !DIFile(filename: "./include/linux/mmiotrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8598c80261179e4e3388eec78a4ded78")
!6050 = !{!6051}
!6051 = !DILocalVariable(name: "addr", arg: 1, scope: !6048, file: !6049, line: 70, type: !366)
!6052 = !DILocation(line: 70, column: 61, scope: !6048)
!6053 = !DILocation(line: 72, column: 1, scope: !6048)
!6054 = !DISubprogram(name: "find_vm_area", scope: !4596, file: !4596, line: 215, type: !6055, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6055 = !DISubroutineType(types: !6056)
!6056 = !{!4594, !1526}
!6057 = !DISubprogram(name: "_printk", scope: !6058, file: !6058, line: 153, type: !6059, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6058 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!6059 = !DISubroutineType(types: !6060)
!6060 = !{!47, !41, null}
!6061 = !DISubprogram(name: "dump_stack", scope: !6058, file: !6058, line: 193, type: !2339, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6062 = distinct !DISubprogram(name: "kmsan_iounmap_page_range", scope: !6063, file: !6063, line: 309, type: !6064, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6066)
!6063 = !DIFile(filename: "./include/linux/kmsan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5e7e99912c58fb827bb0f1d51128cd81")
!6064 = !DISubroutineType(types: !6065)
!6065 = !{null, !64, !64}
!6066 = !{!6067, !6068}
!6067 = !DILocalVariable(name: "start", arg: 1, scope: !6062, file: !6063, line: 309, type: !64)
!6068 = !DILocalVariable(name: "end", arg: 2, scope: !6062, file: !6063, line: 310, type: !64)
!6069 = !DILocation(line: 309, column: 59, scope: !6062)
!6070 = !DILocation(line: 310, column: 24, scope: !6062)
!6071 = !DILocation(line: 312, column: 1, scope: !6062)
!6072 = distinct !DISubprogram(name: "get_vm_area_size", scope: !4596, file: !4596, line: 196, type: !6073, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6077)
!6073 = !DISubroutineType(types: !6074)
!6074 = !{!60, !6075}
!6075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6076, size: 64)
!6076 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4595)
!6077 = !{!6078}
!6078 = !DILocalVariable(name: "area", arg: 1, scope: !6072, file: !4596, line: 196, type: !6075)
!6079 = !DILocation(line: 196, column: 63, scope: !6072)
!6080 = !DILocation(line: 198, column: 8, scope: !6081)
!6081 = distinct !DILexicalBlock(scope: !6072, file: !4596, line: 198, column: 6)
!6082 = !DILocation(line: 198, column: 14, scope: !6081)
!6083 = !DILocation(line: 198, column: 20, scope: !6081)
!6084 = !DILocation(line: 198, column: 6, scope: !6072)
!6085 = !DILocation(line: 200, column: 10, scope: !6081)
!6086 = !DILocation(line: 200, column: 16, scope: !6081)
!6087 = !DILocation(line: 200, column: 21, scope: !6081)
!6088 = !DILocation(line: 200, column: 3, scope: !6081)
!6089 = !DILocation(line: 202, column: 10, scope: !6081)
!6090 = !DILocation(line: 202, column: 16, scope: !6081)
!6091 = !DILocation(line: 202, column: 3, scope: !6081)
!6092 = !DILocation(line: 204, column: 1, scope: !6072)
!6093 = !DISubprogram(name: "memtype_free", scope: !5929, file: !5929, line: 14, type: !6094, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6094 = !DISubroutineType(types: !6095)
!6095 = !{!47, !371, !371}
!6096 = !DISubprogram(name: "remove_vm_area", scope: !4596, file: !4596, line: 214, type: !6055, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6097 = !DISubprogram(name: "kfree", scope: !6098, file: !6098, line: 227, type: !6099, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6098 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!6099 = !DISubroutineType(types: !6100)
!6100 = !{null, !1526}
!6101 = distinct !DISubprogram(name: "xlate_dev_mem_ptr", scope: !3, file: !3, line: 509, type: !6038, scopeLine: 510, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6102)
!6102 = !{!6103, !6104, !6105, !6106}
!6103 = !DILocalVariable(name: "phys", arg: 1, scope: !6101, file: !3, line: 509, type: !370)
!6104 = !DILocalVariable(name: "start", scope: !6101, file: !3, line: 511, type: !64)
!6105 = !DILocalVariable(name: "offset", scope: !6101, file: !3, line: 512, type: !64)
!6106 = !DILocalVariable(name: "vaddr", scope: !6101, file: !3, line: 513, type: !45)
!6107 = !DILocation(line: 509, column: 37, scope: !6101)
!6108 = !DILocation(line: 511, column: 2, scope: !6101)
!6109 = !DILocation(line: 511, column: 16, scope: !6101)
!6110 = !DILocation(line: 511, column: 25, scope: !6101)
!6111 = !DILocation(line: 511, column: 30, scope: !6101)
!6112 = !DILocation(line: 512, column: 2, scope: !6101)
!6113 = !DILocation(line: 512, column: 16, scope: !6101)
!6114 = !DILocation(line: 512, column: 25, scope: !6101)
!6115 = !DILocation(line: 512, column: 30, scope: !6101)
!6116 = !DILocation(line: 513, column: 2, scope: !6101)
!6117 = !DILocation(line: 513, column: 8, scope: !6101)
!6118 = !DILocation(line: 516, column: 19, scope: !6101)
!6119 = !DILocation(line: 516, column: 10, scope: !6101)
!6120 = !DILocation(line: 516, column: 8, scope: !6101)
!6121 = !DILocation(line: 519, column: 6, scope: !6122)
!6122 = distinct !DILexicalBlock(scope: !6101, file: !3, line: 519, column: 6)
!6123 = !DILocation(line: 519, column: 6, scope: !6101)
!6124 = !DILocation(line: 520, column: 12, scope: !6122)
!6125 = !DILocation(line: 520, column: 9, scope: !6122)
!6126 = !DILocation(line: 520, column: 3, scope: !6122)
!6127 = !DILocation(line: 522, column: 9, scope: !6101)
!6128 = !DILocation(line: 523, column: 1, scope: !6101)
!6129 = !DILocation(line: 522, column: 2, scope: !6101)
!6130 = !DISubprogram(name: "memremap", scope: !269, file: !269, line: 149, type: !6131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6131 = !DISubroutineType(types: !6132)
!6132 = !{!45, !369, !60, !64}
!6133 = distinct !DISubprogram(name: "unxlate_dev_mem_ptr", scope: !3, file: !3, line: 525, type: !6134, scopeLine: 526, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6136)
!6134 = !DISubroutineType(types: !6135)
!6135 = !{null, !370, !45}
!6136 = !{!6137, !6138}
!6137 = !DILocalVariable(name: "phys", arg: 1, scope: !6133, file: !3, line: 525, type: !370)
!6138 = !DILocalVariable(name: "addr", arg: 2, scope: !6133, file: !3, line: 525, type: !45)
!6139 = !DILocation(line: 525, column: 38, scope: !6133)
!6140 = !DILocation(line: 525, column: 50, scope: !6133)
!6141 = !DILocation(line: 527, column: 35, scope: !6133)
!6142 = !DILocation(line: 527, column: 20, scope: !6133)
!6143 = !DILocation(line: 527, column: 40, scope: !6133)
!6144 = !DILocation(line: 527, column: 11, scope: !6133)
!6145 = !DILocation(line: 527, column: 2, scope: !6133)
!6146 = !DILocation(line: 528, column: 1, scope: !6133)
!6147 = !DISubprogram(name: "memunmap", scope: !269, file: !269, line: 150, type: !1876, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6148 = distinct !DISubprogram(name: "is_early_ioremap_ptep", scope: !3, file: !3, line: 874, type: !6149, scopeLine: 875, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6151)
!6149 = !DISubroutineType(types: !6150)
!6150 = !{!937, !1663}
!6151 = !{!6152}
!6152 = !DILocalVariable(name: "ptep", arg: 1, scope: !6148, file: !3, line: 874, type: !1663)
!6153 = !DILocation(line: 874, column: 42, scope: !6148)
!6154 = !DILocation(line: 876, column: 9, scope: !6148)
!6155 = !DILocation(line: 876, column: 14, scope: !6148)
!6156 = !DILocation(line: 876, column: 28, scope: !6148)
!6157 = !DILocation(line: 876, column: 31, scope: !6148)
!6158 = !DILocation(line: 876, column: 36, scope: !6148)
!6159 = !DILocation(line: 0, scope: !6148)
!6160 = !DILocation(line: 876, column: 2, scope: !6148)
!6161 = distinct !DISubprogram(name: "early_ioremap_init", scope: !3, file: !3, line: 879, type: !2339, scopeLine: 880, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6162)
!6162 = !{!6163, !6164, !6168}
!6163 = !DILocalVariable(name: "pmd", scope: !6161, file: !3, line: 881, type: !1638)
!6164 = !DILocalVariable(name: "__ret_warn_on", scope: !6165, file: !3, line: 904, type: !47)
!6165 = distinct !DILexicalBlock(scope: !6166, file: !3, line: 904, column: 3)
!6166 = distinct !DILexicalBlock(scope: !6167, file: !3, line: 903, column: 60)
!6167 = distinct !DILexicalBlock(scope: !6161, file: !3, line: 903, column: 6)
!6168 = !DILocalVariable(name: "__flags", scope: !6169, file: !3, line: 904, type: !47)
!6169 = distinct !DILexicalBlock(scope: !6170, file: !3, line: 904, column: 3)
!6170 = distinct !DILexicalBlock(scope: !6165, file: !3, line: 904, column: 3)
!6171 = !DILocation(line: 881, column: 2, scope: !6161)
!6172 = !DILocation(line: 881, column: 9, scope: !6161)
!6173 = !DILocation(line: 884, column: 2, scope: !6161)
!6174 = !DILocation(line: 884, column: 2, scope: !6175)
!6175 = distinct !DILexicalBlock(scope: !6176, file: !3, line: 884, column: 2)
!6176 = distinct !DILexicalBlock(scope: !6161, file: !3, line: 884, column: 2)
!6177 = !DILocation(line: 884, column: 2, scope: !6176)
!6178 = !{i32 -2138883021}
!6179 = !DILocation(line: 889, column: 2, scope: !6161)
!6180 = !DILocation(line: 891, column: 26, scope: !6161)
!6181 = !DILocation(line: 891, column: 8, scope: !6161)
!6182 = !DILocation(line: 891, column: 6, scope: !6161)
!6183 = !DILocation(line: 892, column: 2, scope: !6161)
!6184 = !DILocation(line: 893, column: 32, scope: !6161)
!6185 = !DILocation(line: 893, column: 2, scope: !6161)
!6186 = !DILocation(line: 900, column: 2, scope: !6161)
!6187 = !DILocation(line: 900, column: 2, scope: !6188)
!6188 = distinct !DILexicalBlock(scope: !6161, file: !3, line: 900, column: 2)
!6189 = !DILocation(line: 903, column: 6, scope: !6167)
!6190 = !DILocation(line: 903, column: 31, scope: !6167)
!6191 = !DILocation(line: 903, column: 13, scope: !6167)
!6192 = !DILocation(line: 903, column: 10, scope: !6167)
!6193 = !DILocation(line: 903, column: 6, scope: !6161)
!6194 = !DILocation(line: 904, column: 3, scope: !6165)
!6195 = !DILocation(line: 904, column: 3, scope: !6170)
!6196 = !DILocation(line: 904, column: 3, scope: !6169)
!6197 = !DILocation(line: 904, column: 3, scope: !6198)
!6198 = distinct !DILexicalBlock(scope: !6169, file: !3, line: 904, column: 3)
!6199 = !DILocation(line: 904, column: 3, scope: !6200)
!6200 = distinct !DILexicalBlock(scope: !6169, file: !3, line: 904, column: 3)
!6201 = !{i64 2156089058, i64 2156089087, i64 2156089133, i64 2156089191, i64 2156089245, i64 2156089299, i64 2156089354, i64 2156089385, i64 2156089693, i64 2156089699, i64 2156089746, i64 2156089769, i64 2156089795}
!6202 = !DILocation(line: 904, column: 3, scope: !6203)
!6203 = distinct !DILexicalBlock(scope: !6169, file: !3, line: 904, column: 3)
!6204 = !DILocation(line: 904, column: 3, scope: !6166)
!6205 = !DILocation(line: 905, column: 3, scope: !6206)
!6206 = distinct !DILexicalBlock(scope: !6166, file: !3, line: 905, column: 3)
!6207 = !DILocation(line: 905, column: 3, scope: !6208)
!6208 = distinct !DILexicalBlock(scope: !6206, file: !3, line: 905, column: 3)
!6209 = !DILocation(line: 907, column: 3, scope: !6210)
!6210 = distinct !DILexicalBlock(scope: !6166, file: !3, line: 907, column: 3)
!6211 = !DILocation(line: 907, column: 3, scope: !6212)
!6212 = distinct !DILexicalBlock(scope: !6210, file: !3, line: 907, column: 3)
!6213 = !DILocation(line: 909, column: 3, scope: !6214)
!6214 = distinct !DILexicalBlock(scope: !6166, file: !3, line: 909, column: 3)
!6215 = !DILocation(line: 909, column: 3, scope: !6216)
!6216 = distinct !DILexicalBlock(scope: !6214, file: !3, line: 909, column: 3)
!6217 = !DILocation(line: 912, column: 3, scope: !6218)
!6218 = distinct !DILexicalBlock(scope: !6166, file: !3, line: 912, column: 3)
!6219 = !DILocation(line: 912, column: 3, scope: !6220)
!6220 = distinct !DILexicalBlock(scope: !6218, file: !3, line: 912, column: 3)
!6221 = !DILocation(line: 913, column: 3, scope: !6222)
!6222 = distinct !DILexicalBlock(scope: !6166, file: !3, line: 913, column: 3)
!6223 = !DILocation(line: 913, column: 3, scope: !6224)
!6224 = distinct !DILexicalBlock(scope: !6222, file: !3, line: 913, column: 3)
!6225 = !DILocation(line: 915, column: 2, scope: !6166)
!6226 = !DILocation(line: 916, column: 1, scope: !6161)
!6227 = distinct !DISubprogram(name: "fix_to_virt", scope: !6228, file: !6228, line: 30, type: !6229, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6231)
!6228 = !DIFile(filename: "./include/asm-generic/fixmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dd8c6683336efdf1b0dfbdd9b73a00ed")
!6229 = !DISubroutineType(types: !6230)
!6230 = !{!64, !5100}
!6231 = !{!6232}
!6232 = !DILocalVariable(name: "idx", arg: 1, scope: !6227, file: !6228, line: 30, type: !5100)
!6233 = !DILocation(line: 30, column: 69, scope: !6227)
!6234 = !DILocation(line: 32, column: 2, scope: !6227)
!6235 = !DILocation(line: 32, column: 2, scope: !6236)
!6236 = distinct !DILexicalBlock(scope: !6237, file: !6228, line: 32, column: 2)
!6237 = distinct !DILexicalBlock(scope: !6227, file: !6228, line: 32, column: 2)
!6238 = !DILocation(line: 32, column: 2, scope: !6237)
!6239 = !{i32 -2142638378}
!6240 = !DILocation(line: 33, column: 9, scope: !6227)
!6241 = !DILocation(line: 33, column: 2, scope: !6227)
!6242 = !DISubprogram(name: "__compiletime_assert_353", scope: !3, file: !3, line: 884, type: !2339, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6243 = !DISubprogram(name: "early_ioremap_setup", scope: !6244, file: !6244, line: 27, type: !2339, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6244 = !DIFile(filename: "./include/asm-generic/early_ioremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f963a4865cd884f109103123c55bb3b2")
!6245 = distinct !DISubprogram(name: "early_ioremap_pmd", scope: !3, file: !3, line: 857, type: !6246, scopeLine: 858, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6248)
!6246 = !DISubroutineType(types: !6247)
!6247 = !{!1638, !64}
!6248 = !{!6249, !6250, !6251, !6252, !6253, !6254}
!6249 = !DILocalVariable(name: "addr", arg: 1, scope: !6245, file: !3, line: 857, type: !64)
!6250 = !DILocalVariable(name: "base", scope: !6245, file: !3, line: 860, type: !1424)
!6251 = !DILocalVariable(name: "pgd", scope: !6245, file: !3, line: 861, type: !1424)
!6252 = !DILocalVariable(name: "p4d", scope: !6245, file: !3, line: 862, type: !5413)
!6253 = !DILocalVariable(name: "pud", scope: !6245, file: !3, line: 863, type: !1645)
!6254 = !DILocalVariable(name: "pmd", scope: !6245, file: !3, line: 864, type: !1638)
!6255 = !DILocation(line: 857, column: 62, scope: !6245)
!6256 = !DILocation(line: 860, column: 2, scope: !6245)
!6257 = !DILocation(line: 860, column: 9, scope: !6245)
!6258 = !DILocation(line: 860, column: 16, scope: !6245)
!6259 = !DILocation(line: 861, column: 2, scope: !6245)
!6260 = !DILocation(line: 861, column: 9, scope: !6245)
!6261 = !DILocation(line: 861, column: 16, scope: !6245)
!6262 = !DILocation(line: 861, column: 21, scope: !6245)
!6263 = !DILocation(line: 862, column: 2, scope: !6245)
!6264 = !DILocation(line: 862, column: 9, scope: !6245)
!6265 = !DILocation(line: 862, column: 26, scope: !6245)
!6266 = !DILocation(line: 862, column: 31, scope: !6245)
!6267 = !DILocation(line: 862, column: 15, scope: !6245)
!6268 = !DILocation(line: 863, column: 2, scope: !6245)
!6269 = !DILocation(line: 863, column: 9, scope: !6245)
!6270 = !DILocation(line: 863, column: 26, scope: !6245)
!6271 = !DILocation(line: 863, column: 31, scope: !6245)
!6272 = !DILocation(line: 863, column: 15, scope: !6245)
!6273 = !DILocation(line: 864, column: 2, scope: !6245)
!6274 = !DILocation(line: 864, column: 9, scope: !6245)
!6275 = !DILocation(line: 864, column: 26, scope: !6245)
!6276 = !DILocation(line: 864, column: 31, scope: !6245)
!6277 = !DILocation(line: 864, column: 15, scope: !6245)
!6278 = !DILocation(line: 866, column: 9, scope: !6245)
!6279 = !DILocation(line: 867, column: 1, scope: !6245)
!6280 = !DILocation(line: 866, column: 2, scope: !6245)
!6281 = distinct !DISubprogram(name: "pmd_populate_kernel", scope: !6282, file: !6282, line: 64, type: !6283, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6285)
!6282 = !DIFile(filename: "./arch/x86/include/asm/pgalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "93a43353e04f697ff6ff74bd20375be3")
!6283 = !DISubroutineType(types: !6284)
!6284 = !{null, !1390, !1638, !1663}
!6285 = !{!6286, !6287, !6288}
!6286 = !DILocalVariable(name: "mm", arg: 1, scope: !6281, file: !6282, line: 64, type: !1390)
!6287 = !DILocalVariable(name: "pmd", arg: 2, scope: !6281, file: !6282, line: 65, type: !1638)
!6288 = !DILocalVariable(name: "pte", arg: 3, scope: !6281, file: !6282, line: 65, type: !1663)
!6289 = !DILocation(line: 64, column: 58, scope: !6281)
!6290 = !DILocation(line: 65, column: 19, scope: !6281)
!6291 = !DILocation(line: 65, column: 31, scope: !6281)
!6292 = !DILocation(line: 67, column: 21, scope: !6281)
!6293 = !DILocation(line: 67, column: 25, scope: !6281)
!6294 = !DILocation(line: 67, column: 35, scope: !6281)
!6295 = !DILocation(line: 67, column: 2, scope: !6281)
!6296 = !DILocation(line: 68, column: 2, scope: !6281)
!6297 = !DILocation(line: 69, column: 1, scope: !6281)
!6298 = distinct !DISubprogram(name: "__early_set_fixmap", scope: !3, file: !3, line: 918, type: !6299, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6301)
!6299 = !DISubroutineType(types: !6300)
!6300 = !{null, !276, !370, !1568}
!6301 = !{!6302, !6303, !6304, !6305, !6306}
!6302 = !DILocalVariable(name: "idx", arg: 1, scope: !6298, file: !3, line: 918, type: !276)
!6303 = !DILocalVariable(name: "phys", arg: 2, scope: !6298, file: !3, line: 919, type: !370)
!6304 = !DILocalVariable(name: "flags", arg: 3, scope: !6298, file: !3, line: 919, type: !1568)
!6305 = !DILocalVariable(name: "addr", scope: !6298, file: !3, line: 921, type: !64)
!6306 = !DILocalVariable(name: "pte", scope: !6298, file: !3, line: 922, type: !1663)
!6307 = !DILocation(line: 918, column: 53, scope: !6298)
!6308 = !DILocation(line: 919, column: 23, scope: !6298)
!6309 = !DILocation(line: 919, column: 38, scope: !6298)
!6310 = !DILocation(line: 921, column: 2, scope: !6298)
!6311 = !DILocation(line: 921, column: 16, scope: !6298)
!6312 = !DILocation(line: 921, column: 23, scope: !6298)
!6313 = !DILocation(line: 922, column: 2, scope: !6298)
!6314 = !DILocation(line: 922, column: 9, scope: !6298)
!6315 = !DILocation(line: 924, column: 6, scope: !6316)
!6316 = distinct !DILexicalBlock(scope: !6298, file: !3, line: 924, column: 6)
!6317 = !DILocation(line: 924, column: 10, scope: !6316)
!6318 = !DILocation(line: 924, column: 6, scope: !6298)
!6319 = !DILocation(line: 925, column: 3, scope: !6320)
!6320 = distinct !DILexicalBlock(scope: !6316, file: !3, line: 924, column: 39)
!6321 = !DILocation(line: 925, column: 3, scope: !6322)
!6322 = distinct !DILexicalBlock(scope: !6320, file: !3, line: 925, column: 3)
!6323 = !DILocation(line: 925, column: 3, scope: !6324)
!6324 = distinct !DILexicalBlock(scope: !6322, file: !3, line: 925, column: 3)
!6325 = !DILocation(line: 925, column: 3, scope: !6326)
!6326 = distinct !DILexicalBlock(scope: !6322, file: !3, line: 925, column: 3)
!6327 = !{i64 2156092627, i64 2156092656, i64 2156092702, i64 2156092760, i64 2156092814, i64 2156092868, i64 2156092923, i64 2156092954}
!6328 = !DILocation(line: 926, column: 3, scope: !6320)
!6329 = !DILocation(line: 928, column: 26, scope: !6298)
!6330 = !DILocation(line: 928, column: 8, scope: !6298)
!6331 = !DILocation(line: 928, column: 6, scope: !6298)
!6332 = !DILocation(line: 931, column: 23, scope: !6298)
!6333 = !DILocation(line: 931, column: 2, scope: !6298)
!6334 = !DILocation(line: 931, column: 20, scope: !6298)
!6335 = !DILocation(line: 933, column: 6, scope: !6336)
!6336 = distinct !DILexicalBlock(scope: !6298, file: !3, line: 933, column: 6)
!6337 = !DILocation(line: 933, column: 6, scope: !6298)
!6338 = !DILocation(line: 934, column: 3, scope: !6336)
!6339 = !DILocation(line: 936, column: 3, scope: !6336)
!6340 = !DILocation(line: 937, column: 23, scope: !6298)
!6341 = !DILocation(line: 937, column: 2, scope: !6298)
!6342 = !DILocation(line: 938, column: 1, scope: !6298)
!6343 = distinct !DISubprogram(name: "early_ioremap_pte", scope: !3, file: !3, line: 869, type: !6344, scopeLine: 870, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6346)
!6344 = !DISubroutineType(types: !6345)
!6345 = !{!1663, !64}
!6346 = !{!6347}
!6347 = !DILocalVariable(name: "addr", arg: 1, scope: !6343, file: !3, line: 869, type: !64)
!6348 = !DILocation(line: 869, column: 62, scope: !6343)
!6349 = !DILocation(line: 871, column: 27, scope: !6343)
!6350 = !DILocation(line: 871, column: 17, scope: !6343)
!6351 = !DILocation(line: 871, column: 10, scope: !6343)
!6352 = !DILocation(line: 871, column: 2, scope: !6343)
!6353 = distinct !DISubprogram(name: "native_set_pte", scope: !6354, file: !6354, line: 65, type: !6355, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6357)
!6354 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2362587396c42a8ad932bab8fed5cb38")
!6355 = !DISubroutineType(types: !6356)
!6356 = !{null, !1663, !1655}
!6357 = !{!6358, !6359}
!6358 = !DILocalVariable(name: "ptep", arg: 1, scope: !6353, file: !6354, line: 65, type: !1663)
!6359 = !DILocalVariable(name: "pte", arg: 2, scope: !6353, file: !6354, line: 65, type: !1655)
!6360 = !DILocation(line: 65, column: 42, scope: !6353)
!6361 = !DILocation(line: 65, column: 54, scope: !6353)
!6362 = !DILocation(line: 67, column: 2, scope: !6353)
!6363 = !DILocation(line: 67, column: 2, scope: !6364)
!6364 = distinct !DILexicalBlock(scope: !6353, file: !6354, line: 67, column: 2)
!6365 = !DILocation(line: 67, column: 2, scope: !6366)
!6366 = distinct !DILexicalBlock(scope: !6364, file: !6354, line: 67, column: 2)
!6367 = !DILocation(line: 67, column: 2, scope: !6368)
!6368 = distinct !DILexicalBlock(scope: !6364, file: !6354, line: 67, column: 2)
!6369 = !DILocation(line: 68, column: 1, scope: !6353)
!6370 = distinct !DISubprogram(name: "pfn_pte", scope: !6371, file: !6371, line: 747, type: !6372, scopeLine: 748, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6374)
!6371 = !DIFile(filename: "./arch/x86/include/asm/pgtable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "40a9f4cb2b1b2fff495e3ab16a522abc")
!6372 = !DISubroutineType(types: !6373)
!6373 = !{!1655, !64, !1568}
!6374 = !{!6375, !6376, !6377}
!6375 = !DILocalVariable(name: "page_nr", arg: 1, scope: !6370, file: !6371, line: 747, type: !64)
!6376 = !DILocalVariable(name: "pgprot", arg: 2, scope: !6370, file: !6371, line: 747, type: !1568)
!6377 = !DILocalVariable(name: "pfn", scope: !6370, file: !6371, line: 749, type: !370)
!6378 = !DILocation(line: 747, column: 43, scope: !6370)
!6379 = !DILocation(line: 747, column: 61, scope: !6370)
!6380 = !DILocation(line: 749, column: 2, scope: !6370)
!6381 = !DILocation(line: 749, column: 14, scope: !6370)
!6382 = !DILocation(line: 749, column: 33, scope: !6370)
!6383 = !DILocation(line: 749, column: 41, scope: !6370)
!6384 = !DILocation(line: 750, column: 23, scope: !6370)
!6385 = !DILocation(line: 750, column: 9, scope: !6370)
!6386 = !DILocation(line: 750, column: 6, scope: !6370)
!6387 = !DILocation(line: 751, column: 6, scope: !6370)
!6388 = !DILocation(line: 752, column: 9, scope: !6370)
!6389 = !DILocation(line: 753, column: 1, scope: !6370)
!6390 = distinct !DISubprogram(name: "native_pte_clear", scope: !6354, file: !6354, line: 70, type: !6391, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6393)
!6391 = !DISubroutineType(types: !6392)
!6392 = !{null, !1390, !64, !1663}
!6393 = !{!6394, !6395, !6396}
!6394 = !DILocalVariable(name: "mm", arg: 1, scope: !6390, file: !6354, line: 70, type: !1390)
!6395 = !DILocalVariable(name: "addr", arg: 2, scope: !6390, file: !6354, line: 70, type: !64)
!6396 = !DILocalVariable(name: "ptep", arg: 3, scope: !6390, file: !6354, line: 71, type: !1663)
!6397 = !DILocation(line: 70, column: 55, scope: !6390)
!6398 = !DILocation(line: 70, column: 73, scope: !6390)
!6399 = !DILocation(line: 71, column: 16, scope: !6390)
!6400 = !DILocation(line: 73, column: 17, scope: !6390)
!6401 = !DILocation(line: 73, column: 23, scope: !6390)
!6402 = !DILocation(line: 73, column: 2, scope: !6390)
!6403 = !DILocation(line: 74, column: 1, scope: !6390)
!6404 = !DISubprogram(name: "flush_tlb_one_kernel", scope: !6405, file: !6405, line: 230, type: !6406, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6405 = !DIFile(filename: "./arch/x86/include/asm/tlbflush.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "855d4064bc03d0e3d0f10fca91c7b33f")
!6406 = !DISubroutineType(types: !6407)
!6407 = !{null, !64}
!6408 = distinct !DISubprogram(name: "phys_addr_valid", scope: !6409, file: !6409, line: 4, type: !6410, scopeLine: 5, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6412)
!6409 = !DIFile(filename: "arch/x86/mm/physaddr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8b03bcaca6c93b05d26996685e3d7103")
!6410 = !DISubroutineType(types: !6411)
!6411 = !{!47, !369}
!6412 = !{!6413}
!6413 = !DILocalVariable(name: "addr", arg: 1, scope: !6408, file: !6409, line: 4, type: !369)
!6414 = !DILocation(line: 4, column: 51, scope: !6408)
!6415 = !DILocation(line: 7, column: 11, scope: !6408)
!6416 = !DILocation(line: 7, column: 33, scope: !6408)
!6417 = !DILocation(line: 7, column: 19, scope: !6408)
!6418 = !DILocation(line: 7, column: 16, scope: !6408)
!6419 = !DILocation(line: 7, column: 9, scope: !6408)
!6420 = !DILocation(line: 7, column: 2, scope: !6408)
!6421 = distinct !DISubprogram(name: "__ioremap_check_mem", scope: !3, file: !3, line: 155, type: !6422, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6425)
!6422 = !DISubroutineType(types: !6423)
!6423 = !{null, !369, !64, !6424}
!6424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5494, size: 64)
!6425 = !{!6426, !6427, !6428, !6429, !6430}
!6426 = !DILocalVariable(name: "addr", arg: 1, scope: !6421, file: !3, line: 155, type: !369)
!6427 = !DILocalVariable(name: "size", arg: 2, scope: !6421, file: !3, line: 155, type: !64)
!6428 = !DILocalVariable(name: "desc", arg: 3, scope: !6421, file: !3, line: 156, type: !6424)
!6429 = !DILocalVariable(name: "start", scope: !6421, file: !3, line: 158, type: !371)
!6430 = !DILocalVariable(name: "end", scope: !6421, file: !3, line: 158, type: !371)
!6431 = !DILocation(line: 155, column: 49, scope: !6421)
!6432 = !DILocation(line: 155, column: 69, scope: !6421)
!6433 = !DILocation(line: 156, column: 26, scope: !6421)
!6434 = !DILocation(line: 158, column: 2, scope: !6421)
!6435 = !DILocation(line: 158, column: 6, scope: !6421)
!6436 = !DILocation(line: 158, column: 13, scope: !6421)
!6437 = !DILocation(line: 160, column: 15, scope: !6421)
!6438 = !DILocation(line: 160, column: 8, scope: !6421)
!6439 = !DILocation(line: 161, column: 8, scope: !6421)
!6440 = !DILocation(line: 161, column: 16, scope: !6421)
!6441 = !DILocation(line: 161, column: 14, scope: !6421)
!6442 = !DILocation(line: 161, column: 21, scope: !6421)
!6443 = !DILocation(line: 161, column: 6, scope: !6421)
!6444 = !DILocation(line: 162, column: 9, scope: !6421)
!6445 = !DILocation(line: 162, column: 2, scope: !6421)
!6446 = !DILocation(line: 164, column: 15, scope: !6421)
!6447 = !DILocation(line: 164, column: 22, scope: !6421)
!6448 = !DILocation(line: 164, column: 27, scope: !6421)
!6449 = !DILocation(line: 164, column: 2, scope: !6421)
!6450 = !DILocation(line: 166, column: 24, scope: !6421)
!6451 = !DILocation(line: 166, column: 30, scope: !6421)
!6452 = !DILocation(line: 166, column: 2, scope: !6421)
!6453 = !DILocation(line: 167, column: 1, scope: !6421)
!6454 = !DISubprogram(name: "memtype_reserve", scope: !5929, file: !5929, line: 12, type: !6455, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6455 = !DISubroutineType(types: !6456)
!6456 = !{!47, !371, !371, !5, !6457}
!6457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!6458 = distinct !DISubprogram(name: "is_new_memtype_allowed", scope: !6371, file: !6371, line: 860, type: !6459, scopeLine: 863, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6461)
!6459 = !DISubroutineType(types: !6460)
!6460 = !{!47, !371, !64, !5, !5}
!6461 = !{!6462, !6463, !6464, !6465}
!6462 = !DILocalVariable(name: "paddr", arg: 1, scope: !6458, file: !6371, line: 860, type: !371)
!6463 = !DILocalVariable(name: "size", arg: 2, scope: !6458, file: !6371, line: 860, type: !64)
!6464 = !DILocalVariable(name: "pcm", arg: 3, scope: !6458, file: !6371, line: 861, type: !5)
!6465 = !DILocalVariable(name: "new_pcm", arg: 4, scope: !6458, file: !6371, line: 862, type: !5)
!6466 = !DILocation(line: 860, column: 46, scope: !6458)
!6467 = !DILocation(line: 860, column: 67, scope: !6458)
!6468 = !DILocation(line: 861, column: 28, scope: !6458)
!6469 = !DILocation(line: 862, column: 28, scope: !6458)
!6470 = !DILocation(line: 867, column: 19, scope: !6471)
!6471 = distinct !DILexicalBlock(scope: !6458, file: !6371, line: 867, column: 6)
!6472 = !DILocation(line: 867, column: 42, scope: !6471)
!6473 = !DILocation(line: 867, column: 49, scope: !6471)
!6474 = !DILocation(line: 867, column: 57, scope: !6471)
!6475 = !DILocation(line: 867, column: 55, scope: !6471)
!6476 = !DILocation(line: 867, column: 6, scope: !6471)
!6477 = !DILocation(line: 867, column: 6, scope: !6458)
!6478 = !DILocation(line: 868, column: 3, scope: !6471)
!6479 = !DILocation(line: 878, column: 7, scope: !6480)
!6480 = distinct !DILexicalBlock(scope: !6458, file: !6371, line: 878, column: 6)
!6481 = !DILocation(line: 878, column: 11, scope: !6480)
!6482 = !DILocation(line: 878, column: 40, scope: !6480)
!6483 = !DILocation(line: 879, column: 7, scope: !6480)
!6484 = !DILocation(line: 879, column: 15, scope: !6480)
!6485 = !DILocation(line: 879, column: 39, scope: !6480)
!6486 = !DILocation(line: 880, column: 7, scope: !6480)
!6487 = !DILocation(line: 880, column: 11, scope: !6480)
!6488 = !DILocation(line: 880, column: 34, scope: !6480)
!6489 = !DILocation(line: 881, column: 7, scope: !6480)
!6490 = !DILocation(line: 881, column: 15, scope: !6480)
!6491 = !DILocation(line: 881, column: 39, scope: !6480)
!6492 = !DILocation(line: 882, column: 7, scope: !6480)
!6493 = !DILocation(line: 882, column: 11, scope: !6480)
!6494 = !DILocation(line: 882, column: 34, scope: !6480)
!6495 = !DILocation(line: 883, column: 7, scope: !6480)
!6496 = !DILocation(line: 883, column: 15, scope: !6480)
!6497 = !DILocation(line: 883, column: 39, scope: !6480)
!6498 = !DILocation(line: 884, column: 7, scope: !6480)
!6499 = !DILocation(line: 884, column: 11, scope: !6480)
!6500 = !DILocation(line: 884, column: 34, scope: !6480)
!6501 = !DILocation(line: 885, column: 7, scope: !6480)
!6502 = !DILocation(line: 885, column: 15, scope: !6480)
!6503 = !DILocation(line: 878, column: 6, scope: !6458)
!6504 = !DILocation(line: 886, column: 3, scope: !6505)
!6505 = distinct !DILexicalBlock(scope: !6480, file: !6371, line: 885, column: 40)
!6506 = !DILocation(line: 889, column: 2, scope: !6458)
!6507 = !DILocation(line: 890, column: 1, scope: !6458)
!6508 = distinct !DISubprogram(name: "cc_mkenc", scope: !6509, file: !6509, line: 30, type: !6510, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6512)
!6509 = !DIFile(filename: "./arch/x86/include/asm/coco.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "86b21b242eb5d608419a067ab7dfc6d8")
!6510 = !DISubroutineType(types: !6511)
!6511 = !{!371, !371}
!6512 = !{!6513}
!6513 = !DILocalVariable(name: "val", arg: 1, scope: !6508, file: !6509, line: 30, type: !371)
!6514 = !DILocation(line: 30, column: 32, scope: !6508)
!6515 = !DILocation(line: 32, column: 9, scope: !6508)
!6516 = !DILocation(line: 32, column: 2, scope: !6508)
!6517 = distinct !DISubprogram(name: "cc_mkdec", scope: !6509, file: !6509, line: 35, type: !6510, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6518)
!6518 = !{!6519}
!6519 = !DILocalVariable(name: "val", arg: 1, scope: !6517, file: !6509, line: 35, type: !371)
!6520 = !DILocation(line: 35, column: 32, scope: !6517)
!6521 = !DILocation(line: 37, column: 9, scope: !6517)
!6522 = !DILocation(line: 37, column: 2, scope: !6517)
!6523 = !DISubprogram(name: "cachemode2protval", scope: !6, file: !6, line: 497, type: !6524, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6524 = !DISubroutineType(types: !6525)
!6525 = !{!64, !5}
!6526 = !DISubprogram(name: "get_vm_area_caller", scope: !4596, file: !4596, line: 207, type: !6527, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6527 = !DISubroutineType(types: !6528)
!6528 = !{!4594, !64, !64, !1526}
!6529 = !DISubprogram(name: "memtype_kernel_map_sync", scope: !5929, file: !5929, line: 16, type: !6530, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6530 = !DISubroutineType(types: !6531)
!6531 = !{!47, !371, !64, !5}
!6532 = !DISubprogram(name: "ioremap_page_range", scope: !269, file: !269, line: 24, type: !6533, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6533 = !DISubroutineType(types: !6534)
!6534 = !{!47, !64, !64, !370, !1568}
!6535 = distinct !DISubprogram(name: "mmiotrace_ioremap", scope: !6049, file: !6049, line: 65, type: !6536, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6538)
!6536 = !DISubroutineType(types: !6537)
!6537 = !{null, !369, !64, !45}
!6538 = !{!6539, !6540, !6541}
!6539 = !DILocalVariable(name: "offset", arg: 1, scope: !6535, file: !6049, line: 65, type: !369)
!6540 = !DILocalVariable(name: "size", arg: 2, scope: !6535, file: !6049, line: 66, type: !64)
!6541 = !DILocalVariable(name: "addr", arg: 3, scope: !6535, file: !6049, line: 66, type: !45)
!6542 = !DILocation(line: 65, column: 54, scope: !6535)
!6543 = !DILocation(line: 66, column: 20, scope: !6535)
!6544 = !DILocation(line: 66, column: 40, scope: !6535)
!6545 = !DILocation(line: 68, column: 1, scope: !6535)
!6546 = !DISubprogram(name: "iomem_map_sanity_check", scope: !291, file: !291, line: 319, type: !6547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6547 = !DISubroutineType(types: !6548)
!6548 = !{!47, !369, !64}
!6549 = !DISubprogram(name: "free_vm_area", scope: !4596, file: !4596, line: 213, type: !6550, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6550 = !DISubroutineType(types: !6551)
!6551 = !{null, !4594}
!6552 = !DISubprogram(name: "walk_mem_res", scope: !291, file: !291, line: 328, type: !6553, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6553 = !DISubroutineType(types: !6554)
!6554 = !{!47, !371, !371, !45, !6555}
!6555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6556, size: 64)
!6556 = !DISubroutineType(types: !6557)
!6557 = !{!47, !6558, !45}
!6558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6559, size: 64)
!6559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !291, line: 21, size: 512, elements: !6560)
!6560 = !{!6561, !6562, !6563, !6564, !6565, !6566, !6567, !6568}
!6561 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !6559, file: !291, line: 22, baseType: !369, size: 64)
!6562 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !6559, file: !291, line: 23, baseType: !369, size: 64, offset: 64)
!6563 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !6559, file: !291, line: 24, baseType: !41, size: 64, offset: 128)
!6564 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6559, file: !291, line: 25, baseType: !64, size: 64, offset: 192)
!6565 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !6559, file: !291, line: 26, baseType: !64, size: 64, offset: 256)
!6566 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !6559, file: !291, line: 27, baseType: !6558, size: 64, offset: 320)
!6567 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !6559, file: !291, line: 27, baseType: !6558, size: 64, offset: 384)
!6568 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !6559, file: !291, line: 27, baseType: !6558, size: 64, offset: 448)
!6569 = distinct !DISubprogram(name: "__ioremap_collect_map_flags", scope: !3, file: !3, line: 133, type: !6556, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6570)
!6570 = !{!6571, !6572, !6573}
!6571 = !DILocalVariable(name: "res", arg: 1, scope: !6569, file: !3, line: 133, type: !6558)
!6572 = !DILocalVariable(name: "arg", arg: 2, scope: !6569, file: !3, line: 133, type: !45)
!6573 = !DILocalVariable(name: "desc", scope: !6569, file: !3, line: 135, type: !6424)
!6574 = !DILocation(line: 133, column: 57, scope: !6569)
!6575 = !DILocation(line: 133, column: 68, scope: !6569)
!6576 = !DILocation(line: 135, column: 2, scope: !6569)
!6577 = !DILocation(line: 135, column: 23, scope: !6569)
!6578 = !DILocation(line: 135, column: 30, scope: !6569)
!6579 = !DILocation(line: 137, column: 8, scope: !6580)
!6580 = distinct !DILexicalBlock(scope: !6569, file: !3, line: 137, column: 6)
!6581 = !DILocation(line: 137, column: 14, scope: !6580)
!6582 = !DILocation(line: 137, column: 20, scope: !6580)
!6583 = !DILocation(line: 137, column: 6, scope: !6569)
!6584 = !DILocation(line: 138, column: 38, scope: !6580)
!6585 = !DILocation(line: 138, column: 18, scope: !6580)
!6586 = !DILocation(line: 138, column: 3, scope: !6580)
!6587 = !DILocation(line: 138, column: 9, scope: !6580)
!6588 = !DILocation(line: 138, column: 15, scope: !6580)
!6589 = !DILocation(line: 140, column: 8, scope: !6590)
!6590 = distinct !DILexicalBlock(scope: !6569, file: !3, line: 140, column: 6)
!6591 = !DILocation(line: 140, column: 14, scope: !6590)
!6592 = !DILocation(line: 140, column: 20, scope: !6590)
!6593 = !DILocation(line: 140, column: 6, scope: !6569)
!6594 = !DILocation(line: 141, column: 44, scope: !6590)
!6595 = !DILocation(line: 141, column: 18, scope: !6590)
!6596 = !DILocation(line: 141, column: 3, scope: !6590)
!6597 = !DILocation(line: 141, column: 9, scope: !6590)
!6598 = !DILocation(line: 141, column: 15, scope: !6590)
!6599 = !DILocation(line: 143, column: 11, scope: !6569)
!6600 = !DILocation(line: 143, column: 17, scope: !6569)
!6601 = !DILocation(line: 143, column: 23, scope: !6569)
!6602 = !DILocation(line: 143, column: 71, scope: !6569)
!6603 = !DILocation(line: 145, column: 1, scope: !6569)
!6604 = !DILocation(line: 143, column: 2, scope: !6569)
!6605 = distinct !DISubprogram(name: "__ioremap_check_other", scope: !3, file: !3, line: 114, type: !6606, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6608)
!6606 = !DISubroutineType(types: !6607)
!6607 = !{null, !369, !6424}
!6608 = !{!6609, !6610}
!6609 = !DILocalVariable(name: "addr", arg: 1, scope: !6605, file: !3, line: 114, type: !369)
!6610 = !DILocalVariable(name: "desc", arg: 2, scope: !6605, file: !3, line: 114, type: !6424)
!6611 = !DILocation(line: 114, column: 51, scope: !6605)
!6612 = !DILocation(line: 114, column: 78, scope: !6605)
!6613 = !DILocation(line: 116, column: 7, scope: !6614)
!6614 = distinct !DILexicalBlock(scope: !6605, file: !3, line: 116, column: 6)
!6615 = !DILocation(line: 116, column: 6, scope: !6605)
!6616 = !DILocation(line: 117, column: 3, scope: !6614)
!6617 = !DILocation(line: 119, column: 25, scope: !6618)
!6618 = distinct !DILexicalBlock(scope: !6605, file: !3, line: 119, column: 6)
!6619 = !DILocation(line: 119, column: 41, scope: !6618)
!6620 = !DILocation(line: 119, column: 6, scope: !6618)
!6621 = !DILocation(line: 119, column: 6, scope: !6605)
!6622 = !DILocation(line: 120, column: 3, scope: !6623)
!6623 = distinct !DILexicalBlock(scope: !6618, file: !3, line: 119, column: 48)
!6624 = !DILocation(line: 120, column: 9, scope: !6623)
!6625 = !DILocation(line: 120, column: 15, scope: !6623)
!6626 = !DILocation(line: 121, column: 3, scope: !6623)
!6627 = !DILocation(line: 127, column: 19, scope: !6628)
!6628 = distinct !DILexicalBlock(scope: !6605, file: !3, line: 127, column: 6)
!6629 = !DILocation(line: 127, column: 6, scope: !6628)
!6630 = !DILocation(line: 127, column: 25, scope: !6628)
!6631 = !DILocation(line: 127, column: 54, scope: !6628)
!6632 = !DILocation(line: 128, column: 20, scope: !6628)
!6633 = !DILocation(line: 128, column: 7, scope: !6628)
!6634 = !DILocation(line: 128, column: 26, scope: !6628)
!6635 = !DILocation(line: 128, column: 52, scope: !6628)
!6636 = !DILocation(line: 129, column: 26, scope: !6628)
!6637 = !DILocation(line: 129, column: 7, scope: !6628)
!6638 = !DILocation(line: 129, column: 32, scope: !6628)
!6639 = !DILocation(line: 127, column: 6, scope: !6605)
!6640 = !DILocation(line: 130, column: 3, scope: !6628)
!6641 = !DILocation(line: 130, column: 9, scope: !6628)
!6642 = !DILocation(line: 130, column: 15, scope: !6628)
!6643 = !DILocation(line: 131, column: 1, scope: !6605)
!6644 = distinct !DISubprogram(name: "__ioremap_check_ram", scope: !3, file: !3, line: 70, type: !6645, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6647)
!6645 = !DISubroutineType(types: !6646)
!6646 = !{!7, !6558}
!6647 = !{!6648, !6649, !6650, !6651}
!6648 = !DILocalVariable(name: "res", arg: 1, scope: !6644, file: !3, line: 70, type: !6558)
!6649 = !DILocalVariable(name: "start_pfn", scope: !6644, file: !3, line: 72, type: !64)
!6650 = !DILocalVariable(name: "stop_pfn", scope: !6644, file: !3, line: 72, type: !64)
!6651 = !DILocalVariable(name: "i", scope: !6644, file: !3, line: 73, type: !64)
!6652 = !DILocation(line: 70, column: 58, scope: !6644)
!6653 = !DILocation(line: 72, column: 2, scope: !6644)
!6654 = !DILocation(line: 72, column: 16, scope: !6644)
!6655 = !DILocation(line: 72, column: 27, scope: !6644)
!6656 = !DILocation(line: 73, column: 2, scope: !6644)
!6657 = !DILocation(line: 73, column: 16, scope: !6644)
!6658 = !DILocation(line: 75, column: 7, scope: !6659)
!6659 = distinct !DILexicalBlock(scope: !6644, file: !3, line: 75, column: 6)
!6660 = !DILocation(line: 75, column: 12, scope: !6659)
!6661 = !DILocation(line: 75, column: 18, scope: !6659)
!6662 = !DILocation(line: 75, column: 43, scope: !6659)
!6663 = !DILocation(line: 75, column: 6, scope: !6644)
!6664 = !DILocation(line: 76, column: 3, scope: !6659)
!6665 = !DILocation(line: 78, column: 15, scope: !6644)
!6666 = !DILocation(line: 78, column: 20, scope: !6644)
!6667 = !DILocation(line: 78, column: 26, scope: !6644)
!6668 = !DILocation(line: 78, column: 38, scope: !6644)
!6669 = !DILocation(line: 78, column: 43, scope: !6644)
!6670 = !DILocation(line: 78, column: 12, scope: !6644)
!6671 = !DILocation(line: 79, column: 14, scope: !6644)
!6672 = !DILocation(line: 79, column: 19, scope: !6644)
!6673 = !DILocation(line: 79, column: 23, scope: !6644)
!6674 = !DILocation(line: 79, column: 28, scope: !6644)
!6675 = !DILocation(line: 79, column: 11, scope: !6644)
!6676 = !DILocation(line: 80, column: 6, scope: !6677)
!6677 = distinct !DILexicalBlock(scope: !6644, file: !3, line: 80, column: 6)
!6678 = !DILocation(line: 80, column: 17, scope: !6677)
!6679 = !DILocation(line: 80, column: 15, scope: !6677)
!6680 = !DILocation(line: 80, column: 6, scope: !6644)
!6681 = !DILocation(line: 81, column: 10, scope: !6682)
!6682 = distinct !DILexicalBlock(scope: !6683, file: !3, line: 81, column: 3)
!6683 = distinct !DILexicalBlock(scope: !6677, file: !3, line: 80, column: 28)
!6684 = !DILocation(line: 81, column: 8, scope: !6682)
!6685 = !DILocation(line: 81, column: 15, scope: !6686)
!6686 = distinct !DILexicalBlock(scope: !6682, file: !3, line: 81, column: 3)
!6687 = !DILocation(line: 81, column: 20, scope: !6686)
!6688 = !DILocation(line: 81, column: 31, scope: !6686)
!6689 = !DILocation(line: 81, column: 29, scope: !6686)
!6690 = !DILocation(line: 81, column: 17, scope: !6686)
!6691 = !DILocation(line: 81, column: 3, scope: !6682)
!6692 = !DILocation(line: 82, column: 18, scope: !6693)
!6693 = distinct !DILexicalBlock(scope: !6686, file: !3, line: 82, column: 8)
!6694 = !DILocation(line: 82, column: 30, scope: !6693)
!6695 = !DILocation(line: 82, column: 28, scope: !6693)
!6696 = !DILocation(line: 82, column: 8, scope: !6693)
!6697 = !DILocation(line: 82, column: 33, scope: !6693)
!6698 = !DILocation(line: 83, column: 22, scope: !6693)
!6699 = !DILocation(line: 83, column: 9, scope: !6693)
!6700 = !DILocation(line: 82, column: 8, scope: !6686)
!6701 = !DILocation(line: 84, column: 5, scope: !6693)
!6702 = !DILocation(line: 83, column: 48, scope: !6693)
!6703 = !DILocation(line: 81, column: 43, scope: !6686)
!6704 = !DILocation(line: 81, column: 3, scope: !6686)
!6705 = distinct !{!6705, !6691, !6706, !6707, !6708}
!6706 = !DILocation(line: 84, column: 12, scope: !6682)
!6707 = !{!"llvm.loop.mustprogress"}
!6708 = !{!"llvm.loop.unroll.disable"}
!6709 = !DILocation(line: 85, column: 2, scope: !6683)
!6710 = !DILocation(line: 87, column: 2, scope: !6644)
!6711 = !DILocation(line: 88, column: 1, scope: !6644)
!6712 = distinct !DISubprogram(name: "__ioremap_check_encrypted", scope: !3, file: !3, line: 94, type: !6645, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6713)
!6713 = !{!6714}
!6714 = !DILocalVariable(name: "res", arg: 1, scope: !6712, file: !3, line: 94, type: !6558)
!6715 = !DILocation(line: 94, column: 64, scope: !6712)
!6716 = !DILocation(line: 96, column: 7, scope: !6717)
!6717 = distinct !DILexicalBlock(scope: !6712, file: !3, line: 96, column: 6)
!6718 = !DILocation(line: 96, column: 6, scope: !6712)
!6719 = !DILocation(line: 97, column: 3, scope: !6717)
!6720 = !DILocation(line: 99, column: 10, scope: !6712)
!6721 = !DILocation(line: 99, column: 15, scope: !6712)
!6722 = !DILocation(line: 99, column: 2, scope: !6712)
!6723 = !DILocation(line: 102, column: 3, scope: !6724)
!6724 = distinct !DILexicalBlock(scope: !6712, file: !3, line: 99, column: 21)
!6725 = !DILocation(line: 104, column: 3, scope: !6724)
!6726 = !DILocation(line: 107, column: 2, scope: !6712)
!6727 = !DILocation(line: 108, column: 1, scope: !6712)
!6728 = distinct !DISubprogram(name: "pfn_valid", scope: !296, file: !296, line: 1994, type: !6729, scopeLine: 1995, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6731)
!6729 = !DISubroutineType(types: !6730)
!6730 = !{!47, !64}
!6731 = !{!6732, !6733, !6739}
!6732 = !DILocalVariable(name: "pfn", arg: 1, scope: !6728, file: !296, line: 1994, type: !64)
!6733 = !DILocalVariable(name: "ms", scope: !6728, file: !296, line: 1996, type: !6734)
!6734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6735, size: 64)
!6735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_section", file: !296, line: 1790, size: 128, elements: !6736)
!6736 = !{!6737, !6738}
!6737 = !DIDerivedType(tag: DW_TAG_member, name: "section_mem_map", scope: !6735, file: !296, line: 1803, baseType: !64, size: 64)
!6738 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !6735, file: !296, line: 1805, baseType: !5404, size: 64, offset: 64)
!6739 = !DILocalVariable(name: "ret", scope: !6728, file: !296, line: 1997, type: !47)
!6740 = !DILocation(line: 1994, column: 43, scope: !6728)
!6741 = !DILocation(line: 1996, column: 2, scope: !6728)
!6742 = !DILocation(line: 1996, column: 22, scope: !6728)
!6743 = !DILocation(line: 1997, column: 2, scope: !6728)
!6744 = !DILocation(line: 1997, column: 6, scope: !6728)
!6745 = !DILocation(line: 2005, column: 6, scope: !6746)
!6746 = distinct !DILexicalBlock(scope: !6728, file: !296, line: 2005, column: 6)
!6747 = !DILocation(line: 2005, column: 33, scope: !6746)
!6748 = !DILocation(line: 2005, column: 30, scope: !6746)
!6749 = !DILocation(line: 2005, column: 6, scope: !6728)
!6750 = !DILocation(line: 2006, column: 3, scope: !6746)
!6751 = !DILocation(line: 2008, column: 24, scope: !6752)
!6752 = distinct !DILexicalBlock(scope: !6728, file: !296, line: 2008, column: 6)
!6753 = !DILocation(line: 2008, column: 6, scope: !6752)
!6754 = !DILocation(line: 2008, column: 32, scope: !6752)
!6755 = !DILocation(line: 2008, column: 29, scope: !6752)
!6756 = !DILocation(line: 2008, column: 6, scope: !6728)
!6757 = !DILocation(line: 2009, column: 3, scope: !6752)
!6758 = !DILocation(line: 2010, column: 24, scope: !6728)
!6759 = !DILocation(line: 2010, column: 7, scope: !6728)
!6760 = !DILocation(line: 2010, column: 5, scope: !6728)
!6761 = !DILocation(line: 2011, column: 2, scope: !6728)
!6762 = !DILocation(line: 2012, column: 21, scope: !6763)
!6763 = distinct !DILexicalBlock(scope: !6728, file: !296, line: 2012, column: 6)
!6764 = !DILocation(line: 2012, column: 7, scope: !6763)
!6765 = !DILocation(line: 2012, column: 6, scope: !6728)
!6766 = !DILocation(line: 2013, column: 3, scope: !6767)
!6767 = distinct !DILexicalBlock(scope: !6763, file: !296, line: 2012, column: 26)
!6768 = !DILocation(line: 2014, column: 3, scope: !6767)
!6769 = !DILocation(line: 2020, column: 22, scope: !6728)
!6770 = !DILocation(line: 2020, column: 8, scope: !6728)
!6771 = !DILocation(line: 2020, column: 26, scope: !6728)
!6772 = !DILocation(line: 2020, column: 47, scope: !6728)
!6773 = !DILocation(line: 2020, column: 51, scope: !6728)
!6774 = !DILocation(line: 2020, column: 29, scope: !6728)
!6775 = !DILocation(line: 2020, column: 6, scope: !6728)
!6776 = !DILocation(line: 2021, column: 2, scope: !6728)
!6777 = !DILocation(line: 2023, column: 9, scope: !6728)
!6778 = !DILocation(line: 2023, column: 2, scope: !6728)
!6779 = !DILocation(line: 2024, column: 1, scope: !6728)
!6780 = distinct !DISubprogram(name: "PageReserved", scope: !304, file: !304, line: 512, type: !6781, scopeLine: 512, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6783)
!6781 = !DISubroutineType(types: !6782)
!6782 = !{!47, !376}
!6783 = !{!6784}
!6784 = !DILocalVariable(name: "page", arg: 1, scope: !6780, file: !304, line: 512, type: !376)
!6785 = !DILocation(line: 512, column: 1, scope: !6780)
!6786 = !DILocation(line: 512, column: 1, scope: !6787)
!6787 = distinct !DILexicalBlock(scope: !6788, file: !304, line: 512, column: 1)
!6788 = distinct !DILexicalBlock(scope: !6780, file: !304, line: 512, column: 1)
!6789 = !DILocation(line: 512, column: 1, scope: !6788)
!6790 = !DILocation(line: 512, column: 1, scope: !6791)
!6791 = distinct !DILexicalBlock(scope: !6792, file: !304, line: 512, column: 1)
!6792 = distinct !DILexicalBlock(scope: !6780, file: !304, line: 512, column: 1)
!6793 = !DILocation(line: 512, column: 1, scope: !6792)
!6794 = !DILocation(line: 512, column: 1, scope: !6795)
!6795 = distinct !DILexicalBlock(scope: !6796, file: !304, line: 512, column: 1)
!6796 = distinct !DILexicalBlock(scope: !6780, file: !304, line: 512, column: 1)
!6797 = !DILocation(line: 512, column: 1, scope: !6796)
!6798 = !DILocation(line: 512, column: 1, scope: !6799)
!6799 = distinct !DILexicalBlock(scope: !6800, file: !304, line: 512, column: 1)
!6800 = distinct !DILexicalBlock(scope: !6780, file: !304, line: 512, column: 1)
!6801 = !DILocation(line: 512, column: 1, scope: !6800)
!6802 = !DILocation(line: 512, column: 1, scope: !6803)
!6803 = distinct !DILexicalBlock(scope: !6804, file: !304, line: 512, column: 1)
!6804 = distinct !DILexicalBlock(scope: !6780, file: !304, line: 512, column: 1)
!6805 = !DILocation(line: 512, column: 1, scope: !6804)
!6806 = distinct !DISubprogram(name: "pfn_to_section_nr", scope: !296, file: !296, line: 1749, type: !6807, scopeLine: 1750, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6809)
!6807 = !DISubroutineType(types: !6808)
!6808 = !{!64, !64}
!6809 = !{!6810}
!6810 = !DILocalVariable(name: "pfn", arg: 1, scope: !6806, file: !296, line: 1749, type: !64)
!6811 = !DILocation(line: 1749, column: 61, scope: !6806)
!6812 = !DILocation(line: 1751, column: 9, scope: !6806)
!6813 = !DILocation(line: 1751, column: 13, scope: !6806)
!6814 = !DILocation(line: 1751, column: 2, scope: !6806)
!6815 = distinct !DISubprogram(name: "_static_cpu_has", scope: !6816, file: !6816, line: 173, type: !6817, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6819)
!6816 = !DIFile(filename: "./arch/x86/include/asm/cpufeature.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90439827e3f106d11a8d96ab90603ff3")
!6817 = !DISubroutineType(types: !6818)
!6818 = !{!937, !118}
!6819 = !{!6820, !6821, !6822}
!6820 = !DILocalVariable(name: "bit", arg: 1, scope: !6815, file: !6816, line: 173, type: !118)
!6821 = !DILabel(scope: !6815, name: "t_yes", file: !6816, line: 187)
!6822 = !DILabel(scope: !6815, name: "t_no", file: !6816, line: 189)
!6823 = !DILocation(line: 173, column: 49, scope: !6815)
!6824 = !DILocation(line: 183, column: 24, scope: !6815)
!6825 = !DILocation(line: 184, column: 30, scope: !6815)
!6826 = !DILocation(line: 184, column: 34, scope: !6815)
!6827 = !DILocation(line: 184, column: 26, scope: !6815)
!6828 = !DILocation(line: 185, column: 70, scope: !6815)
!6829 = !DILocation(line: 185, column: 74, scope: !6815)
!6830 = !DILocation(line: 185, column: 25, scope: !6815)
!6831 = !DILocation(line: 175, column: 2, scope: !6815)
!6832 = !{i64 2149680574, i64 2149680607, i64 2149680613, i64 2149680629, i64 2149680648, i64 2149680679, i64 2149681632, i64 2149680221, i64 2149681638, i64 2149681686, i64 2149681750, i64 2149681814, i64 2149681871, i64 2149682078, i64 2149682126, i64 2149682190, i64 2149682254, i64 2149682311, i64 2149680339, i64 2149680364, i64 2149682521, i64 2149682649, i64 2149682582, i64 2149682663, i64 2149682677, i64 2149682793, i64 2149682738, i64 2149682807, i64 2149680498, i64 1159411, i64 1159451, i64 1159460, i64 1159510, i64 1159531, i64 1159551}
!6833 = !DILocation(line: 187, column: 1, scope: !6815)
!6834 = !DILocation(line: 188, column: 2, scope: !6815)
!6835 = !DILocation(line: 189, column: 1, scope: !6815)
!6836 = !DILocation(line: 190, column: 2, scope: !6815)
!6837 = !DILocation(line: 191, column: 1, scope: !6815)
!6838 = distinct !DISubprogram(name: "__pfn_to_section", scope: !296, file: !296, line: 1955, type: !6839, scopeLine: 1956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6841)
!6839 = !DISubroutineType(types: !6840)
!6840 = !{!6734, !64}
!6841 = !{!6842}
!6842 = !DILocalVariable(name: "pfn", arg: 1, scope: !6838, file: !296, line: 1955, type: !64)
!6843 = !DILocation(line: 1955, column: 66, scope: !6838)
!6844 = !DILocation(line: 1957, column: 43, scope: !6838)
!6845 = !DILocation(line: 1957, column: 25, scope: !6838)
!6846 = !DILocation(line: 1957, column: 9, scope: !6838)
!6847 = !DILocation(line: 1957, column: 2, scope: !6838)
!6848 = distinct !DISubprogram(name: "rcu_read_lock_sched", scope: !5545, file: !5545, line: 874, type: !2339, scopeLine: 875, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6849 = !DILocation(line: 876, column: 2, scope: !6848)
!6850 = !DILocation(line: 876, column: 2, scope: !6851)
!6851 = distinct !DILexicalBlock(scope: !6848, file: !5545, line: 876, column: 2)
!6852 = !{i64 2150431379}
!6853 = !DILocation(line: 878, column: 2, scope: !6848)
!6854 = !DILocation(line: 878, column: 2, scope: !6855)
!6855 = distinct !DILexicalBlock(scope: !6848, file: !5545, line: 878, column: 2)
!6856 = !DILocation(line: 879, column: 2, scope: !6848)
!6857 = !DILocation(line: 879, column: 2, scope: !6858)
!6858 = distinct !DILexicalBlock(scope: !6848, file: !5545, line: 879, column: 2)
!6859 = !DILocation(line: 881, column: 1, scope: !6848)
!6860 = distinct !DISubprogram(name: "valid_section", scope: !296, file: !296, line: 1911, type: !6861, scopeLine: 1912, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6863)
!6861 = !DISubroutineType(types: !6862)
!6862 = !{!47, !6734}
!6863 = !{!6864}
!6864 = !DILocalVariable(name: "section", arg: 1, scope: !6860, file: !296, line: 1911, type: !6734)
!6865 = !DILocation(line: 1911, column: 53, scope: !6860)
!6866 = !DILocation(line: 1913, column: 10, scope: !6860)
!6867 = !DILocation(line: 1913, column: 18, scope: !6860)
!6868 = !DILocation(line: 1913, column: 22, scope: !6860)
!6869 = !DILocation(line: 1913, column: 31, scope: !6860)
!6870 = !DILocation(line: 1913, column: 47, scope: !6860)
!6871 = !DILocation(line: 0, scope: !6860)
!6872 = !DILocation(line: 1913, column: 2, scope: !6860)
!6873 = !DILocation(line: 897, column: 2, scope: !5544)
!6874 = !DILocation(line: 897, column: 2, scope: !6875)
!6875 = distinct !DILexicalBlock(scope: !5544, file: !5545, line: 897, column: 2)
!6876 = !DILocation(line: 899, column: 2, scope: !5544)
!6877 = !DILocation(line: 899, column: 2, scope: !6878)
!6878 = distinct !DILexicalBlock(scope: !5544, file: !5545, line: 899, column: 2)
!6879 = !DILocation(line: 901, column: 2, scope: !5544)
!6880 = !DILocation(line: 901, column: 2, scope: !6881)
!6881 = distinct !DILexicalBlock(scope: !5544, file: !5545, line: 901, column: 2)
!6882 = !{i64 2150432161}
!6883 = !DILocation(line: 901, column: 2, scope: !6884)
!6884 = distinct !DILexicalBlock(scope: !6881, file: !5545, line: 901, column: 2)
!6885 = !DILocation(line: 901, column: 2, scope: !6886)
!6886 = distinct !DILexicalBlock(scope: !6884, file: !5545, line: 901, column: 2)
!6887 = !{i64 2150432343}
!6888 = !DILocation(line: 902, column: 1, scope: !5544)
!6889 = distinct !DISubprogram(name: "early_section", scope: !296, file: !296, line: 1916, type: !6861, scopeLine: 1917, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6890)
!6890 = !{!6891}
!6891 = !DILocalVariable(name: "section", arg: 1, scope: !6889, file: !296, line: 1916, type: !6734)
!6892 = !DILocation(line: 1916, column: 53, scope: !6889)
!6893 = !DILocation(line: 1918, column: 10, scope: !6889)
!6894 = !DILocation(line: 1918, column: 18, scope: !6889)
!6895 = !DILocation(line: 1918, column: 22, scope: !6889)
!6896 = !DILocation(line: 1918, column: 31, scope: !6889)
!6897 = !DILocation(line: 1918, column: 47, scope: !6889)
!6898 = !DILocation(line: 0, scope: !6889)
!6899 = !DILocation(line: 1918, column: 2, scope: !6889)
!6900 = distinct !DISubprogram(name: "pfn_section_valid", scope: !296, file: !296, line: 1968, type: !6901, scopeLine: 1969, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6903)
!6901 = !DISubroutineType(types: !6902)
!6902 = !{!47, !6734, !64}
!6903 = !{!6904, !6905, !6906, !6907}
!6904 = !DILocalVariable(name: "ms", arg: 1, scope: !6900, file: !296, line: 1968, type: !6734)
!6905 = !DILocalVariable(name: "pfn", arg: 2, scope: !6900, file: !296, line: 1968, type: !64)
!6906 = !DILocalVariable(name: "idx", scope: !6900, file: !296, line: 1970, type: !47)
!6907 = !DILocalVariable(name: "usage", scope: !6900, file: !296, line: 1971, type: !5404)
!6908 = !DILocation(line: 1968, column: 57, scope: !6900)
!6909 = !DILocation(line: 1968, column: 75, scope: !6900)
!6910 = !DILocation(line: 1970, column: 2, scope: !6900)
!6911 = !DILocation(line: 1970, column: 6, scope: !6900)
!6912 = !DILocation(line: 1970, column: 33, scope: !6900)
!6913 = !DILocation(line: 1970, column: 12, scope: !6900)
!6914 = !DILocation(line: 1971, column: 2, scope: !6900)
!6915 = !DILocation(line: 1971, column: 28, scope: !6900)
!6916 = !DILocation(line: 1971, column: 36, scope: !6917)
!6917 = distinct !DILexicalBlock(scope: !6900, file: !296, line: 1971, column: 36)
!6918 = !DILocation(line: 1971, column: 36, scope: !6919)
!6919 = distinct !DILexicalBlock(scope: !6917, file: !296, line: 1971, column: 36)
!6920 = !DILocation(line: 1973, column: 9, scope: !6900)
!6921 = !DILocation(line: 1973, column: 17, scope: !6900)
!6922 = !DILocation(line: 1974, column: 1, scope: !6900)
!6923 = !DILocation(line: 1973, column: 2, scope: !6900)
!6924 = distinct !DISubprogram(name: "__nr_to_section", scope: !296, file: !296, line: 1841, type: !6839, scopeLine: 1842, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6925)
!6925 = !{!6926, !6927}
!6926 = !DILocalVariable(name: "nr", arg: 1, scope: !6924, file: !296, line: 1841, type: !64)
!6927 = !DILocalVariable(name: "root", scope: !6924, file: !296, line: 1843, type: !64)
!6928 = !DILocation(line: 1841, column: 65, scope: !6924)
!6929 = !DILocation(line: 1843, column: 2, scope: !6924)
!6930 = !DILocation(line: 1843, column: 16, scope: !6924)
!6931 = !DILocation(line: 1843, column: 23, scope: !6924)
!6932 = !DILocation(line: 1845, column: 6, scope: !6933)
!6933 = distinct !DILexicalBlock(scope: !6924, file: !296, line: 1845, column: 6)
!6934 = !DILocation(line: 1845, column: 6, scope: !6924)
!6935 = !DILocation(line: 1846, column: 3, scope: !6933)
!6936 = !DILocation(line: 1849, column: 7, scope: !6937)
!6937 = distinct !DILexicalBlock(scope: !6924, file: !296, line: 1849, column: 6)
!6938 = !DILocation(line: 1849, column: 19, scope: !6937)
!6939 = !DILocation(line: 1849, column: 23, scope: !6937)
!6940 = !DILocation(line: 1849, column: 35, scope: !6937)
!6941 = !DILocation(line: 1849, column: 6, scope: !6924)
!6942 = !DILocation(line: 1850, column: 3, scope: !6937)
!6943 = !DILocation(line: 1852, column: 10, scope: !6924)
!6944 = !DILocation(line: 1852, column: 22, scope: !6924)
!6945 = !DILocation(line: 1852, column: 28, scope: !6924)
!6946 = !DILocation(line: 1852, column: 31, scope: !6924)
!6947 = !DILocation(line: 1852, column: 2, scope: !6924)
!6948 = !DILocation(line: 1853, column: 1, scope: !6924)
!6949 = distinct !DISubprogram(name: "__preempt_count_add", scope: !6950, file: !6950, line: 78, type: !4268, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6951)
!6950 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!6951 = !{!6952, !6953, !6955}
!6952 = !DILocalVariable(name: "val", arg: 1, scope: !6949, file: !6950, line: 78, type: !47)
!6953 = !DILocalVariable(name: "pao_ID__", scope: !6954, file: !6950, line: 80, type: !2194)
!6954 = distinct !DILexicalBlock(scope: !6949, file: !6950, line: 80, column: 2)
!6955 = !DILocalVariable(name: "pto_val__", scope: !6956, file: !6950, line: 80, type: !471)
!6956 = distinct !DILexicalBlock(scope: !6957, file: !6950, line: 80, column: 2)
!6957 = distinct !DILexicalBlock(scope: !6958, file: !6950, line: 80, column: 2)
!6958 = distinct !DILexicalBlock(scope: !6954, file: !6950, line: 80, column: 2)
!6959 = !DILocation(line: 78, column: 53, scope: !6949)
!6960 = !DILocation(line: 80, column: 2, scope: !6949)
!6961 = !DILocation(line: 80, column: 2, scope: !6954)
!6962 = !DILocation(line: 80, column: 2, scope: !6958)
!6963 = !DILocation(line: 80, column: 2, scope: !6964)
!6964 = distinct !DILexicalBlock(scope: !6958, file: !6950, line: 80, column: 2)
!6965 = !{i64 2149701663}
!6966 = !DILocation(line: 80, column: 2, scope: !6957)
!6967 = !DILocation(line: 80, column: 2, scope: !6968)
!6968 = distinct !DILexicalBlock(scope: !6957, file: !6950, line: 80, column: 2)
!6969 = !{i64 2149701958}
!6970 = !DILocation(line: 80, column: 2, scope: !6956)
!6971 = !{i64 2149702663}
!6972 = !DILocation(line: 81, column: 1, scope: !6949)
!6973 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !6950, file: !6950, line: 93, type: !1858, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6974)
!6974 = !{!6975}
!6975 = !DILocalVariable(name: "c", scope: !6976, file: !6950, line: 95, type: !937)
!6976 = distinct !DILexicalBlock(scope: !6973, file: !6950, line: 95, column: 9)
!6977 = !DILocation(line: 95, column: 9, scope: !6976)
!6978 = !{i64 2149706019, i64 2149706112}
!6979 = !DILocation(line: 95, column: 9, scope: !6973)
!6980 = !DILocation(line: 95, column: 2, scope: !6973)
!6981 = distinct !DISubprogram(name: "subsection_map_index", scope: !296, file: !296, line: 1962, type: !6729, scopeLine: 1963, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6982)
!6982 = !{!6983}
!6983 = !DILocalVariable(name: "pfn", arg: 1, scope: !6981, file: !296, line: 1962, type: !64)
!6984 = !DILocation(line: 1962, column: 54, scope: !6981)
!6985 = !DILocation(line: 1964, column: 10, scope: !6981)
!6986 = !DILocation(line: 1964, column: 14, scope: !6981)
!6987 = !DILocation(line: 1964, column: 38, scope: !6981)
!6988 = !DILocation(line: 1964, column: 9, scope: !6981)
!6989 = !DILocation(line: 1964, column: 2, scope: !6981)
!6990 = distinct !DISubprogram(name: "const_test_bit", scope: !6991, file: !6991, line: 166, type: !6992, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6997)
!6991 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!6992 = !DISubroutineType(types: !6993)
!6993 = !{!937, !64, !6994}
!6994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6995, size: 64)
!6995 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6996)
!6996 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !64)
!6997 = !{!6998, !6999, !7000, !7001, !7002}
!6998 = !DILocalVariable(name: "nr", arg: 1, scope: !6990, file: !6991, line: 166, type: !64)
!6999 = !DILocalVariable(name: "addr", arg: 2, scope: !6990, file: !6991, line: 166, type: !6994)
!7000 = !DILocalVariable(name: "p", scope: !6990, file: !6991, line: 168, type: !5412)
!7001 = !DILocalVariable(name: "mask", scope: !6990, file: !6991, line: 169, type: !64)
!7002 = !DILocalVariable(name: "val", scope: !6990, file: !6991, line: 170, type: !64)
!7003 = !DILocation(line: 166, column: 30, scope: !6990)
!7004 = !DILocation(line: 166, column: 64, scope: !6990)
!7005 = !DILocation(line: 168, column: 2, scope: !6990)
!7006 = !DILocation(line: 168, column: 23, scope: !6990)
!7007 = !DILocation(line: 168, column: 50, scope: !6990)
!7008 = !DILocation(line: 168, column: 57, scope: !6990)
!7009 = !DILocation(line: 168, column: 55, scope: !6990)
!7010 = !DILocation(line: 169, column: 2, scope: !6990)
!7011 = !DILocation(line: 169, column: 16, scope: !6990)
!7012 = !DILocation(line: 169, column: 23, scope: !6990)
!7013 = !DILocation(line: 170, column: 2, scope: !6990)
!7014 = !DILocation(line: 170, column: 16, scope: !6990)
!7015 = !DILocation(line: 170, column: 23, scope: !6990)
!7016 = !DILocation(line: 170, column: 22, scope: !6990)
!7017 = !DILocation(line: 172, column: 12, scope: !6990)
!7018 = !DILocation(line: 172, column: 18, scope: !6990)
!7019 = !DILocation(line: 172, column: 16, scope: !6990)
!7020 = !DILocation(line: 172, column: 10, scope: !6990)
!7021 = !DILocation(line: 172, column: 9, scope: !6990)
!7022 = !DILocation(line: 173, column: 1, scope: !6990)
!7023 = !DILocation(line: 172, column: 2, scope: !6990)
!7024 = distinct !DISubprogram(name: "_test_bit", scope: !7025, file: !7025, line: 139, type: !6992, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7026)
!7025 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!7026 = !{!7027, !7028}
!7027 = !DILocalVariable(name: "nr", arg: 1, scope: !7024, file: !7025, line: 139, type: !64)
!7028 = !DILocalVariable(name: "addr", arg: 2, scope: !7024, file: !7025, line: 139, type: !6994)
!7029 = !DILocation(line: 139, column: 25, scope: !7024)
!7030 = !DILocation(line: 139, column: 59, scope: !7024)
!7031 = !DILocation(line: 141, column: 25, scope: !7024)
!7032 = !DILocation(line: 141, column: 32, scope: !7024)
!7033 = !DILocation(line: 141, column: 30, scope: !7024)
!7034 = !DILocation(line: 141, column: 2, scope: !7024)
!7035 = !DILocation(line: 142, column: 23, scope: !7024)
!7036 = !DILocation(line: 142, column: 27, scope: !7024)
!7037 = !DILocation(line: 142, column: 9, scope: !7024)
!7038 = !DILocation(line: 142, column: 2, scope: !7024)
!7039 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !7040, file: !7040, line: 66, type: !7041, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7045)
!7040 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!7041 = !DISubroutineType(types: !7042)
!7042 = !{null, !7043, !60}
!7043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7044, size: 64)
!7044 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !367)
!7045 = !{!7046, !7047}
!7046 = !DILocalVariable(name: "v", arg: 1, scope: !7039, file: !7040, line: 66, type: !7043)
!7047 = !DILocalVariable(name: "size", arg: 2, scope: !7039, file: !7040, line: 66, type: !60)
!7048 = !DILocation(line: 66, column: 73, scope: !7039)
!7049 = !DILocation(line: 66, column: 83, scope: !7039)
!7050 = !DILocation(line: 68, column: 19, scope: !7039)
!7051 = !DILocation(line: 68, column: 22, scope: !7039)
!7052 = !DILocation(line: 68, column: 2, scope: !7039)
!7053 = !DILocation(line: 69, column: 2, scope: !7039)
!7054 = !DILocation(line: 70, column: 1, scope: !7039)
!7055 = distinct !DISubprogram(name: "arch_test_bit", scope: !7056, file: !7056, line: 237, type: !6992, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7057)
!7056 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!7057 = !{!7058, !7059}
!7058 = !DILocalVariable(name: "nr", arg: 1, scope: !7055, file: !7056, line: 237, type: !64)
!7059 = !DILocalVariable(name: "addr", arg: 2, scope: !7055, file: !7056, line: 237, type: !6994)
!7060 = !DILocation(line: 237, column: 29, scope: !7055)
!7061 = !DILocation(line: 237, column: 63, scope: !7055)
!7062 = !DILocation(line: 239, column: 30, scope: !7055)
!7063 = !DILocation(line: 239, column: 9, scope: !7055)
!7064 = !DILocation(line: 239, column: 54, scope: !7055)
!7065 = !DILocation(line: 239, column: 58, scope: !7055)
!7066 = !DILocation(line: 239, column: 36, scope: !7055)
!7067 = !DILocation(line: 240, column: 26, scope: !7055)
!7068 = !DILocation(line: 240, column: 30, scope: !7055)
!7069 = !DILocation(line: 240, column: 8, scope: !7055)
!7070 = !DILocation(line: 239, column: 2, scope: !7055)
!7071 = distinct !DISubprogram(name: "kasan_check_read", scope: !7072, file: !7072, line: 40, type: !7073, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7075)
!7072 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!7073 = !DISubroutineType(types: !7074)
!7074 = !{!937, !7043, !7}
!7075 = !{!7076, !7077}
!7076 = !DILocalVariable(name: "p", arg: 1, scope: !7071, file: !7072, line: 40, type: !7043)
!7077 = !DILocalVariable(name: "size", arg: 2, scope: !7071, file: !7072, line: 40, type: !7)
!7078 = !DILocation(line: 40, column: 58, scope: !7071)
!7079 = !DILocation(line: 40, column: 74, scope: !7071)
!7080 = !DILocation(line: 42, column: 2, scope: !7071)
!7081 = distinct !DISubprogram(name: "kcsan_check_access", scope: !7082, file: !7082, line: 229, type: !7083, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7085)
!7082 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!7083 = !DISubroutineType(types: !7084)
!7084 = !{null, !7043, !60, !47}
!7085 = !{!7086, !7087, !7088}
!7086 = !DILocalVariable(name: "ptr", arg: 1, scope: !7081, file: !7082, line: 229, type: !7043)
!7087 = !DILocalVariable(name: "size", arg: 2, scope: !7081, file: !7082, line: 229, type: !60)
!7088 = !DILocalVariable(name: "type", arg: 3, scope: !7081, file: !7082, line: 230, type: !47)
!7089 = !DILocation(line: 229, column: 60, scope: !7081)
!7090 = !DILocation(line: 229, column: 72, scope: !7081)
!7091 = !DILocation(line: 230, column: 15, scope: !7081)
!7092 = !DILocation(line: 230, column: 23, scope: !7081)
!7093 = distinct !DISubprogram(name: "constant_test_bit", scope: !7056, file: !7056, line: 204, type: !7094, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7096)
!7094 = !DISubroutineType(types: !7095)
!7095 = !{!937, !373, !6994}
!7096 = !{!7097, !7098}
!7097 = !DILocalVariable(name: "nr", arg: 1, scope: !7093, file: !7056, line: 204, type: !373)
!7098 = !DILocalVariable(name: "addr", arg: 2, scope: !7093, file: !7056, line: 204, type: !6994)
!7099 = !DILocation(line: 204, column: 52, scope: !7093)
!7100 = !DILocation(line: 204, column: 86, scope: !7093)
!7101 = !DILocation(line: 206, column: 19, scope: !7093)
!7102 = !DILocation(line: 206, column: 22, scope: !7093)
!7103 = !DILocation(line: 206, column: 15, scope: !7093)
!7104 = !DILocation(line: 207, column: 4, scope: !7093)
!7105 = !DILocation(line: 207, column: 9, scope: !7093)
!7106 = !DILocation(line: 207, column: 12, scope: !7093)
!7107 = !DILocation(line: 206, column: 44, scope: !7093)
!7108 = !DILocation(line: 207, column: 37, scope: !7093)
!7109 = !DILocation(line: 206, column: 2, scope: !7093)
!7110 = distinct !DISubprogram(name: "variable_test_bit", scope: !7056, file: !7056, line: 224, type: !7094, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7111)
!7111 = !{!7112, !7113, !7114}
!7112 = !DILocalVariable(name: "nr", arg: 1, scope: !7110, file: !7056, line: 224, type: !373)
!7113 = !DILocalVariable(name: "addr", arg: 2, scope: !7110, file: !7056, line: 224, type: !6994)
!7114 = !DILocalVariable(name: "oldbit", scope: !7110, file: !7056, line: 226, type: !937)
!7115 = !DILocation(line: 224, column: 52, scope: !7110)
!7116 = !DILocation(line: 224, column: 86, scope: !7110)
!7117 = !DILocation(line: 226, column: 2, scope: !7110)
!7118 = !DILocation(line: 226, column: 7, scope: !7110)
!7119 = !DILocation(line: 231, column: 33, scope: !7110)
!7120 = !DILocation(line: 231, column: 46, scope: !7110)
!7121 = !DILocation(line: 228, column: 2, scope: !7110)
!7122 = !{i64 2148348258, i64 2148348332}
!7123 = !DILocation(line: 233, column: 9, scope: !7110)
!7124 = !DILocation(line: 234, column: 1, scope: !7110)
!7125 = !DILocation(line: 233, column: 2, scope: !7110)
!7126 = distinct !DISubprogram(name: "cc_platform_has", scope: !344, file: !344, line: 113, type: !7127, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7129)
!7127 = !DISubroutineType(types: !7128)
!7128 = !{!937, !343}
!7129 = !{!7130}
!7130 = !DILocalVariable(name: "attr", arg: 1, scope: !7126, file: !344, line: 113, type: !343)
!7131 = !DILocation(line: 113, column: 49, scope: !7126)
!7132 = !DILocation(line: 113, column: 57, scope: !7126)
!7133 = !DISubprogram(name: "efi_mem_type", scope: !7134, file: !7134, line: 749, type: !6729, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7134 = !DIFile(filename: "./include/linux/efi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2323d214b32d787c50a5d65c12a21824")
!7135 = !DISubprogram(name: "efi_mem_attributes", scope: !7134, file: !7134, line: 750, type: !7136, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7136 = !DISubroutineType(types: !7137)
!7137 = !{!371, !64}
!7138 = !DISubprogram(name: "__compiletime_assert_181", scope: !6228, file: !6228, line: 32, type: !2339, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!7139 = distinct !DISubprogram(name: "read_cr3_pa", scope: !4626, file: !4626, line: 217, type: !7140, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!7140 = !DISubroutineType(types: !7141)
!7141 = !{!64}
!7142 = !DILocation(line: 219, column: 9, scope: !7139)
!7143 = !DILocation(line: 219, column: 22, scope: !7139)
!7144 = !DILocation(line: 219, column: 2, scope: !7139)
!7145 = distinct !DISubprogram(name: "p4d_offset", scope: !6371, file: !6371, line: 1149, type: !7146, scopeLine: 1150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7148)
!7146 = !DISubroutineType(types: !7147)
!7147 = !{!5413, !1424, !64}
!7148 = !{!7149, !7150}
!7149 = !DILocalVariable(name: "pgd", arg: 1, scope: !7145, file: !6371, line: 1149, type: !1424)
!7150 = !DILocalVariable(name: "address", arg: 2, scope: !7145, file: !6371, line: 1149, type: !64)
!7151 = !DILocation(line: 1149, column: 40, scope: !7145)
!7152 = !DILocation(line: 1149, column: 59, scope: !7145)
!7153 = !DILocation(line: 1151, column: 6, scope: !7145)
!7154 = !DILocation(line: 1151, column: 7, scope: !7155)
!7155 = distinct !DILexicalBlock(scope: !7145, file: !6371, line: 1151, column: 6)
!7156 = !DILocation(line: 1152, column: 19, scope: !7155)
!7157 = !DILocation(line: 1152, column: 3, scope: !7155)
!7158 = !DILocation(line: 1153, column: 34, scope: !7145)
!7159 = !DILocation(line: 1153, column: 18, scope: !7145)
!7160 = !DILocation(line: 1153, column: 9, scope: !7145)
!7161 = !DILocation(line: 1153, column: 51, scope: !7145)
!7162 = !DILocation(line: 1153, column: 41, scope: !7145)
!7163 = !DILocation(line: 1153, column: 39, scope: !7145)
!7164 = !DILocation(line: 1153, column: 2, scope: !7145)
!7165 = !DILocation(line: 1154, column: 1, scope: !7145)
!7166 = distinct !DISubprogram(name: "pud_offset", scope: !7167, file: !7167, line: 129, type: !7168, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7170)
!7167 = !DIFile(filename: "./include/linux/pgtable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "42556a9f65ab908dd6bd67424d19f5be")
!7168 = !DISubroutineType(types: !7169)
!7169 = !{!1645, !5413, !64}
!7170 = !{!7171, !7172}
!7171 = !DILocalVariable(name: "p4d", arg: 1, scope: !7166, file: !7167, line: 129, type: !5413)
!7172 = !DILocalVariable(name: "address", arg: 2, scope: !7166, file: !7167, line: 129, type: !64)
!7173 = !DILocation(line: 129, column: 40, scope: !7166)
!7174 = !DILocation(line: 129, column: 59, scope: !7166)
!7175 = !DILocation(line: 131, column: 22, scope: !7166)
!7176 = !DILocation(line: 131, column: 9, scope: !7166)
!7177 = !DILocation(line: 131, column: 39, scope: !7166)
!7178 = !DILocation(line: 131, column: 29, scope: !7166)
!7179 = !DILocation(line: 131, column: 27, scope: !7166)
!7180 = !DILocation(line: 131, column: 2, scope: !7166)
!7181 = distinct !DISubprogram(name: "pmd_offset", scope: !7167, file: !7167, line: 121, type: !7182, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7184)
!7182 = !DISubroutineType(types: !7183)
!7183 = !{!1638, !1645, !64}
!7184 = !{!7185, !7186}
!7185 = !DILocalVariable(name: "pud", arg: 1, scope: !7181, file: !7167, line: 121, type: !1645)
!7186 = !DILocalVariable(name: "address", arg: 2, scope: !7181, file: !7167, line: 121, type: !64)
!7187 = !DILocation(line: 121, column: 40, scope: !7181)
!7188 = !DILocation(line: 121, column: 59, scope: !7181)
!7189 = !DILocation(line: 123, column: 22, scope: !7181)
!7190 = !DILocation(line: 123, column: 9, scope: !7181)
!7191 = !DILocation(line: 123, column: 39, scope: !7181)
!7192 = !DILocation(line: 123, column: 29, scope: !7181)
!7193 = !DILocation(line: 123, column: 27, scope: !7181)
!7194 = !DILocation(line: 123, column: 2, scope: !7181)
!7195 = distinct !DISubprogram(name: "__read_cr3", scope: !7196, file: !7196, line: 156, type: !7140, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!7196 = !DIFile(filename: "./arch/x86/include/asm/special_insns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5112175c4157449df0ef45eea72943c3")
!7197 = !DILocation(line: 158, column: 9, scope: !7195)
!7198 = !DILocation(line: 158, column: 2, scope: !7195)
!7199 = distinct !DISubprogram(name: "__native_read_cr3", scope: !7196, file: !7196, line: 45, type: !7140, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7200)
!7200 = !{!7201}
!7201 = !DILocalVariable(name: "val", scope: !7199, file: !7196, line: 47, type: !64)
!7202 = !DILocation(line: 47, column: 2, scope: !7199)
!7203 = !DILocation(line: 47, column: 16, scope: !7199)
!7204 = !DILocation(line: 48, column: 2, scope: !7199)
!7205 = !{i64 2113642, i64 2113657}
!7206 = !DILocation(line: 49, column: 9, scope: !7199)
!7207 = !DILocation(line: 50, column: 1, scope: !7199)
!7208 = !DILocation(line: 49, column: 2, scope: !7199)
!7209 = distinct !DISubprogram(name: "pgd_page_vaddr", scope: !6371, file: !6371, line: 1137, type: !7210, scopeLine: 1138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7212)
!7210 = !DISubroutineType(types: !7211)
!7211 = !{!64, !1425}
!7212 = !{!7213}
!7213 = !DILocalVariable(name: "pgd", arg: 1, scope: !7209, file: !6371, line: 1137, type: !1425)
!7214 = !DILocation(line: 1137, column: 50, scope: !7209)
!7215 = !DILocation(line: 1139, column: 24, scope: !7209)
!7216 = !DILocation(line: 1139, column: 9, scope: !7209)
!7217 = !DILocation(line: 1139, column: 2, scope: !7209)
!7218 = distinct !DISubprogram(name: "p4d_index", scope: !6371, file: !6371, line: 1124, type: !6807, scopeLine: 1125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7219)
!7219 = !{!7220}
!7220 = !DILocalVariable(name: "address", arg: 1, scope: !7218, file: !6371, line: 1124, type: !64)
!7221 = !DILocation(line: 1124, column: 53, scope: !7218)
!7222 = !DILocation(line: 1126, column: 10, scope: !7218)
!7223 = !DILocation(line: 1126, column: 18, scope: !7218)
!7224 = !DILocation(line: 1126, column: 35, scope: !7218)
!7225 = !DILocation(line: 1126, column: 48, scope: !7218)
!7226 = !DILocation(line: 1126, column: 34, scope: !7218)
!7227 = !DILocation(line: 1126, column: 32, scope: !7218)
!7228 = !DILocation(line: 1126, column: 2, scope: !7218)
!7229 = distinct !DISubprogram(name: "native_pgd_val", scope: !6, file: !6, line: 335, type: !7230, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7232)
!7230 = !DISubroutineType(types: !7231)
!7231 = !{!1429, !1425}
!7232 = !{!7233}
!7233 = !DILocalVariable(name: "pgd", arg: 1, scope: !7229, file: !6, line: 335, type: !1425)
!7234 = !DILocation(line: 335, column: 45, scope: !7229)
!7235 = !DILocation(line: 337, column: 13, scope: !7229)
!7236 = !DILocation(line: 337, column: 17, scope: !7229)
!7237 = !DILocation(line: 337, column: 2, scope: !7229)
!7238 = distinct !DISubprogram(name: "p4d_pgtable", scope: !6371, file: !6371, line: 1102, type: !7239, scopeLine: 1103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7241)
!7239 = !DISubroutineType(types: !7240)
!7240 = !{!1645, !5414}
!7241 = !{!7242}
!7242 = !DILocalVariable(name: "p4d", arg: 1, scope: !7238, file: !6371, line: 1102, type: !5414)
!7243 = !DILocation(line: 1102, column: 40, scope: !7238)
!7244 = !DILocation(line: 1104, column: 18, scope: !7238)
!7245 = !DILocation(line: 1104, column: 2, scope: !7238)
!7246 = distinct !DISubprogram(name: "pud_index", scope: !7167, file: !7167, line: 79, type: !6807, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7247)
!7247 = !{!7248}
!7248 = !DILocalVariable(name: "address", arg: 1, scope: !7246, file: !7167, line: 79, type: !64)
!7249 = !DILocation(line: 79, column: 53, scope: !7246)
!7250 = !DILocation(line: 81, column: 10, scope: !7246)
!7251 = !DILocation(line: 81, column: 18, scope: !7246)
!7252 = !DILocation(line: 81, column: 32, scope: !7246)
!7253 = !DILocation(line: 81, column: 2, scope: !7246)
!7254 = distinct !DISubprogram(name: "native_p4d_val", scope: !6, file: !6, line: 353, type: !7255, scopeLine: 354, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7257)
!7255 = !DISubroutineType(types: !7256)
!7256 = !{!5418, !5414}
!7257 = !{!7258}
!7258 = !DILocalVariable(name: "p4d", arg: 1, scope: !7254, file: !6, line: 353, type: !5414)
!7259 = !DILocation(line: 353, column: 45, scope: !7254)
!7260 = !DILocation(line: 355, column: 13, scope: !7254)
!7261 = !DILocation(line: 355, column: 2, scope: !7254)
!7262 = distinct !DISubprogram(name: "p4d_pfn_mask", scope: !6, file: !6, line: 421, type: !7255, scopeLine: 422, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7263)
!7263 = !{!7264}
!7264 = !DILocalVariable(name: "p4d", arg: 1, scope: !7262, file: !6, line: 421, type: !5414)
!7265 = !DILocation(line: 421, column: 43, scope: !7262)
!7266 = !DILocation(line: 424, column: 2, scope: !7262)
!7267 = distinct !DISubprogram(name: "pud_pgtable", scope: !6371, file: !6371, line: 1061, type: !7268, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7270)
!7268 = !DISubroutineType(types: !7269)
!7269 = !{!1638, !1646}
!7270 = !{!7271}
!7271 = !DILocalVariable(name: "pud", arg: 1, scope: !7267, file: !6371, line: 1061, type: !1646)
!7272 = !DILocation(line: 1061, column: 40, scope: !7267)
!7273 = !DILocation(line: 1063, column: 18, scope: !7267)
!7274 = !DILocation(line: 1063, column: 2, scope: !7267)
!7275 = distinct !DISubprogram(name: "pmd_index", scope: !7167, file: !7167, line: 71, type: !6807, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7276)
!7276 = !{!7277}
!7277 = !DILocalVariable(name: "address", arg: 1, scope: !7275, file: !7167, line: 71, type: !64)
!7278 = !DILocation(line: 71, column: 53, scope: !7275)
!7279 = !DILocation(line: 73, column: 10, scope: !7275)
!7280 = !DILocation(line: 73, column: 18, scope: !7275)
!7281 = !DILocation(line: 73, column: 32, scope: !7275)
!7282 = !DILocation(line: 73, column: 2, scope: !7275)
!7283 = distinct !DISubprogram(name: "native_pud_val", scope: !6, file: !6, line: 379, type: !7284, scopeLine: 380, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7286)
!7284 = !DISubroutineType(types: !7285)
!7285 = !{!1650, !1646}
!7286 = !{!7287}
!7287 = !DILocalVariable(name: "pud", arg: 1, scope: !7283, file: !6, line: 379, type: !1646)
!7288 = !DILocation(line: 379, column: 45, scope: !7283)
!7289 = !DILocation(line: 381, column: 13, scope: !7283)
!7290 = !DILocation(line: 381, column: 2, scope: !7283)
!7291 = distinct !DISubprogram(name: "pud_pfn_mask", scope: !6, file: !6, line: 437, type: !7284, scopeLine: 438, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7292)
!7292 = !{!7293}
!7293 = !DILocalVariable(name: "pud", arg: 1, scope: !7291, file: !6, line: 437, type: !1646)
!7294 = !DILocation(line: 437, column: 43, scope: !7291)
!7295 = !DILocation(line: 439, column: 6, scope: !7296)
!7296 = distinct !DILexicalBlock(scope: !7291, file: !6, line: 439, column: 6)
!7297 = !DILocation(line: 439, column: 26, scope: !7296)
!7298 = !DILocation(line: 439, column: 6, scope: !7291)
!7299 = !DILocation(line: 440, column: 3, scope: !7296)
!7300 = !DILocation(line: 442, column: 3, scope: !7296)
!7301 = !DILocation(line: 443, column: 1, scope: !7291)
!7302 = distinct !DISubprogram(name: "paravirt_alloc_pte", scope: !6282, file: !6282, line: 20, type: !7303, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7305)
!7303 = !DISubroutineType(types: !7304)
!7304 = !{null, !1390, !64}
!7305 = !{!7306, !7307}
!7306 = !DILocalVariable(name: "mm", arg: 1, scope: !7302, file: !6282, line: 20, type: !1390)
!7307 = !DILocalVariable(name: "pfn", arg: 2, scope: !7302, file: !6282, line: 20, type: !64)
!7308 = !DILocation(line: 20, column: 57, scope: !7302)
!7309 = !DILocation(line: 20, column: 75, scope: !7302)
!7310 = !DILocation(line: 20, column: 81, scope: !7302)
!7311 = distinct !DISubprogram(name: "__phys_addr_nodebug", scope: !7312, file: !7312, line: 22, type: !6807, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7313)
!7312 = !DIFile(filename: "./arch/x86/include/asm/page_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e8642b887a42f979954681cc5f73dc7c")
!7313 = !{!7314, !7315}
!7314 = !DILocalVariable(name: "x", arg: 1, scope: !7311, file: !7312, line: 22, type: !64)
!7315 = !DILocalVariable(name: "y", scope: !7311, file: !7312, line: 24, type: !64)
!7316 = !DILocation(line: 22, column: 72, scope: !7311)
!7317 = !DILocation(line: 24, column: 2, scope: !7311)
!7318 = !DILocation(line: 24, column: 16, scope: !7311)
!7319 = !DILocation(line: 24, column: 20, scope: !7311)
!7320 = !DILocation(line: 24, column: 22, scope: !7311)
!7321 = !DILocation(line: 27, column: 6, scope: !7311)
!7322 = !DILocation(line: 27, column: 12, scope: !7311)
!7323 = !DILocation(line: 27, column: 16, scope: !7311)
!7324 = !DILocation(line: 27, column: 14, scope: !7311)
!7325 = !DILocation(line: 27, column: 11, scope: !7311)
!7326 = !DILocation(line: 27, column: 21, scope: !7311)
!7327 = !DILocation(line: 27, column: 55, scope: !7311)
!7328 = !DILocation(line: 27, column: 53, scope: !7311)
!7329 = !DILocation(line: 27, column: 8, scope: !7311)
!7330 = !DILocation(line: 27, column: 4, scope: !7311)
!7331 = !DILocation(line: 29, column: 9, scope: !7311)
!7332 = !DILocation(line: 30, column: 1, scope: !7311)
!7333 = !DILocation(line: 29, column: 2, scope: !7311)
!7334 = distinct !DISubprogram(name: "native_set_pmd", scope: !6354, file: !6354, line: 81, type: !7335, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7337)
!7335 = !DISubroutineType(types: !7336)
!7336 = !{null, !1638, !1639}
!7337 = !{!7338, !7339}
!7338 = !DILocalVariable(name: "pmdp", arg: 1, scope: !7334, file: !6354, line: 81, type: !1638)
!7339 = !DILocalVariable(name: "pmd", arg: 2, scope: !7334, file: !6354, line: 81, type: !1639)
!7340 = !DILocation(line: 81, column: 42, scope: !7334)
!7341 = !DILocation(line: 81, column: 54, scope: !7334)
!7342 = !DILocation(line: 83, column: 2, scope: !7334)
!7343 = !DILocation(line: 83, column: 2, scope: !7344)
!7344 = distinct !DILexicalBlock(scope: !7334, file: !6354, line: 83, column: 2)
!7345 = !DILocation(line: 83, column: 2, scope: !7346)
!7346 = distinct !DILexicalBlock(scope: !7344, file: !6354, line: 83, column: 2)
!7347 = !DILocation(line: 83, column: 2, scope: !7348)
!7348 = distinct !DILexicalBlock(scope: !7344, file: !6354, line: 83, column: 2)
!7349 = !DILocation(line: 84, column: 1, scope: !7334)
!7350 = distinct !DISubprogram(name: "native_make_pmd", scope: !6, file: !6, line: 398, type: !7351, scopeLine: 399, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7353)
!7351 = !DISubroutineType(types: !7352)
!7352 = !{!1639, !1643}
!7353 = !{!7354}
!7354 = !DILocalVariable(name: "val", arg: 1, scope: !7350, file: !6, line: 398, type: !1643)
!7355 = !DILocation(line: 398, column: 46, scope: !7350)
!7356 = !DILocation(line: 400, column: 17, scope: !7350)
!7357 = !DILocation(line: 400, column: 26, scope: !7350)
!7358 = !DILocation(line: 400, column: 2, scope: !7350)
!7359 = distinct !DISubprogram(name: "pte_index", scope: !7167, file: !7167, line: 65, type: !6807, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7360)
!7360 = !{!7361}
!7361 = !DILocalVariable(name: "address", arg: 1, scope: !7359, file: !7167, line: 65, type: !64)
!7362 = !DILocation(line: 65, column: 53, scope: !7359)
!7363 = !DILocation(line: 67, column: 10, scope: !7359)
!7364 = !DILocation(line: 67, column: 18, scope: !7359)
!7365 = !DILocation(line: 67, column: 33, scope: !7359)
!7366 = !DILocation(line: 67, column: 2, scope: !7359)
!7367 = distinct !DISubprogram(name: "protnone_mask", scope: !7368, file: !7368, line: 22, type: !6510, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7369)
!7368 = !DIFile(filename: "./arch/x86/include/asm/pgtable-invert.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ef882e7cb6c7c8e916706b4e150780ec")
!7369 = !{!7370}
!7370 = !DILocalVariable(name: "val", arg: 1, scope: !7367, file: !7368, line: 22, type: !371)
!7371 = !DILocation(line: 22, column: 37, scope: !7367)
!7372 = !DILocation(line: 24, column: 28, scope: !7367)
!7373 = !DILocation(line: 24, column: 9, scope: !7367)
!7374 = !DILocation(line: 24, column: 2, scope: !7367)
!7375 = distinct !DISubprogram(name: "native_make_pte", scope: !6, file: !6, line: 473, type: !7376, scopeLine: 474, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7378)
!7376 = !DISubroutineType(types: !7377)
!7377 = !{!1655, !374}
!7378 = !{!7379}
!7379 = !DILocalVariable(name: "val", arg: 1, scope: !7375, file: !6, line: 473, type: !374)
!7380 = !DILocation(line: 473, column: 46, scope: !7375)
!7381 = !DILocation(line: 475, column: 17, scope: !7375)
!7382 = !DILocation(line: 475, column: 26, scope: !7375)
!7383 = !DILocation(line: 475, column: 2, scope: !7375)
!7384 = distinct !DISubprogram(name: "check_pgprot", scope: !6371, file: !6371, line: 730, type: !7385, scopeLine: 731, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7387)
!7385 = !DISubroutineType(types: !7386)
!7386 = !{!1572, !1568}
!7387 = !{!7388, !7389}
!7388 = !DILocalVariable(name: "pgprot", arg: 1, scope: !7384, file: !6371, line: 730, type: !1568)
!7389 = !DILocalVariable(name: "massaged_val", scope: !7384, file: !6371, line: 732, type: !1572)
!7390 = !DILocation(line: 730, column: 49, scope: !7384)
!7391 = !DILocation(line: 732, column: 2, scope: !7384)
!7392 = !DILocation(line: 732, column: 14, scope: !7384)
!7393 = !DILocation(line: 732, column: 29, scope: !7384)
!7394 = !DILocation(line: 744, column: 9, scope: !7384)
!7395 = !DILocation(line: 745, column: 1, scope: !7384)
!7396 = !DILocation(line: 744, column: 2, scope: !7384)
!7397 = distinct !DISubprogram(name: "__pte_needs_invert", scope: !7368, file: !7368, line: 16, type: !7398, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7400)
!7398 = !DISubroutineType(types: !7399)
!7399 = !{!937, !371}
!7400 = !{!7401}
!7401 = !DILocalVariable(name: "val", arg: 1, scope: !7397, file: !7368, line: 16, type: !371)
!7402 = !DILocation(line: 16, column: 43, scope: !7397)
!7403 = !DILocation(line: 18, column: 9, scope: !7397)
!7404 = !DILocation(line: 18, column: 13, scope: !7397)
!7405 = !DILocation(line: 18, column: 18, scope: !7397)
!7406 = !DILocation(line: 18, column: 22, scope: !7397)
!7407 = !DILocation(line: 18, column: 16, scope: !7397)
!7408 = !DILocation(line: 0, scope: !7397)
!7409 = !DILocation(line: 18, column: 2, scope: !7397)
!7410 = distinct !DISubprogram(name: "massage_pgprot", scope: !6371, file: !6371, line: 720, type: !7385, scopeLine: 721, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7411)
!7411 = !{!7412, !7413}
!7412 = !DILocalVariable(name: "pgprot", arg: 1, scope: !7410, file: !6371, line: 720, type: !1568)
!7413 = !DILocalVariable(name: "protval", scope: !7410, file: !6371, line: 722, type: !1572)
!7414 = !DILocation(line: 720, column: 51, scope: !7410)
!7415 = !DILocation(line: 722, column: 2, scope: !7410)
!7416 = !DILocation(line: 722, column: 14, scope: !7410)
!7417 = !DILocation(line: 722, column: 24, scope: !7410)
!7418 = !DILocation(line: 724, column: 6, scope: !7419)
!7419 = distinct !DILexicalBlock(scope: !7410, file: !6371, line: 724, column: 6)
!7420 = !DILocation(line: 724, column: 14, scope: !7419)
!7421 = !DILocation(line: 724, column: 6, scope: !7410)
!7422 = !DILocation(line: 725, column: 14, scope: !7419)
!7423 = !DILocation(line: 725, column: 11, scope: !7419)
!7424 = !DILocation(line: 725, column: 3, scope: !7419)
!7425 = !DILocation(line: 727, column: 9, scope: !7410)
!7426 = !DILocation(line: 728, column: 1, scope: !7410)
!7427 = !DILocation(line: 727, column: 2, scope: !7410)
