; ModuleID = 'kernel/crash_core.c'
source_filename = "kernel/crash_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_paddr_vmcoreinfo_note: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad paddr_vmcoreinfo_note ; .previous"
module asm ".section\09\22.initcall4.init..kmod_crash_core__324_702_crash_save_vmcoreinfo_init\22, \22a\22\09\09"
module asm "__initcall__kmod_crash_core__324_702_crash_save_vmcoreinfo_init4:\09\09\09"
module asm ".long\09__initstub__kmod_crash_core__324_702_crash_save_vmcoreinfo_init4 - .\09"
module asm ".previous\09\09\09\09\09"
module asm ".section\09\22.initcall4.init..kmod_crash_core__329_735_crash_notes_memory_init\22, \22a\22\09\09"
module asm "__initcall__kmod_crash_core__329_735_crash_notes_memory_init4:\09\09\09"
module asm ".long\09__initstub__kmod_crash_core__329_735_crash_notes_memory_init4 - .\09"
module asm ".previous\09\09\09\09\09"
module asm ".section\09\22.initcall4.init..kmod_crash_core__332_921_crash_hotplug_init\22, \22a\22\09\09"
module asm "__initcall__kmod_crash_core__332_921_crash_hotplug_init4:\09\09\09"
module asm ".long\09__initstub__kmod_crash_core__332_921_crash_hotplug_init4 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.cpumask = type { [1 x i64] }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.uts_namespace = type { %struct.new_utsname, ptr, ptr, %struct.ns_common }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.ns_common = type { %struct.atomic64_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nodemask_t = type { [1 x i64] }
%struct.pgd_t = type { i64 }
%struct.cpuinfo_x86 = type { %union.anon.2, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.4, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon.2 = type { i32 }
%union.anon.4 = type { i64, [88 x i8] }
%struct.crash_mem = type { i32, i32, [0 x %struct.range] }
%struct.range = type { i64, i64 }
%struct.elf64_hdr = type { [16 x i8], i16, i16, i32, i64, i64, i64, i32, i16, i16, i16, i16, i16, i16 }
%struct.elf64_phdr = type { i32, i32, i64, i64, i64, i64, i64, i64 }
%struct.elf64_note = type { i32, i32, i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.kimage = type { i64, ptr, ptr, i64, ptr, ptr, ptr, i64, [16 x %struct.kexec_segment], %struct.list_head, %struct.list_head, %struct.list_head, i64, i8, %struct.kimage_arch, i32, i32, i8, ptr, i64, i64 }
%struct.kexec_segment = type { %union.anon.1, i64, i64, i64 }
%union.anon.1 = type { ptr }
%struct.kimage_arch = type { ptr, ptr, ptr, ptr, ptr }
%struct.page = type { i64, %union.anon.17, %union.anon.26, %struct.atomic_t, [8 x i8] }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { %union.anon.19, ptr, %union.anon.21, i64 }
%union.anon.19 = type { %struct.list_head }
%union.anon.21 = type { i64 }
%union.anon.26 = type { %struct.atomic_t }

@.str = private unnamed_addr constant [13 x i8] c"crashkernel=\00", align 1, !dbg !0
@suffix_tbl = internal global [3 x ptr] [ptr @.str.16, ptr @.str.17, ptr null], section ".init.data", align 16, !dbg !7
@__setup_str_parse_crashkernel_dummy = internal constant [12 x i8] c"crashkernel\00", section ".init.rodata", align 1, !dbg !4631
@__setup_parse_crashkernel_dummy = internal global %struct.obs_kernel_param { ptr @__setup_str_parse_crashkernel_dummy, ptr @parse_crashkernel_dummy, i32 1 }, section ".init.setup", align 8, !dbg !4503
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"\7FELF\00", align 1, !dbg !4514
@crash_notes = hidden global ptr null, align 8, !dbg !4582
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@_text = external dso_local global [0 x i8], align 1
@_end = external dso_local global [0 x i8], align 1
@phys_base = external dso_local global i64, align 8
@page_offset_base = external dso_local global i64, align 8
@vmcoreinfo_data = hidden global ptr null, align 8, !dbg !4584
@vmcoreinfo_size = hidden global i64 0, align 8, !dbg !4586
@vmcoreinfo_data_safecopy = internal global ptr null, align 8, !dbg !4590
@vmcoreinfo_note = hidden global ptr null, align 8, !dbg !4588
@.str.2 = private unnamed_addr constant [16 x i8] c"CRASHTIME=%lld\0A\00", align 1, !dbg !4519
@vmcoreinfo_append_str.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !4521
@.str.3 = private unnamed_addr constant [51 x i8] c"vmcoreinfo data exceeds allocated size, truncating\00", align 1, !dbg !4559
@.str.4 = private unnamed_addr constant [20 x i8] c"kernel/crash_core.c\00", align 1, !dbg !4564
@__UNIQUE_ID___addressable_paddr_vmcoreinfo_note323 = internal global ptr @paddr_vmcoreinfo_note, section ".discard.addressable", align 8, !dbg !4567
@__UNIQUE_ID___addressable___initstub__kmod_crash_core__324_702_crash_save_vmcoreinfo_init4325 = internal global ptr @__initstub__kmod_crash_core__324_702_crash_save_vmcoreinfo_init4, section ".discard.addressable", align 8, !dbg !4569
@__UNIQUE_ID___addressable___initstub__kmod_crash_core__329_735_crash_notes_memory_init4330 = internal global ptr @__initstub__kmod_crash_core__329_735_crash_notes_memory_init4, section ".discard.addressable", align 8, !dbg !4571
@__crash_hotplug_lock = hidden global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @__crash_hotplug_lock, i64 16), ptr getelementptr (i8, ptr @__crash_hotplug_lock, i64 16) } }, align 8, !dbg !4573
@.str.5 = private unnamed_addr constant [66 x i8] c"\016crash hp: kexec_trylock() failed, elfcorehdr may be inaccurate\0A\00", align 1, !dbg !4575
@kexec_crash_image = external dso_local global ptr, align 8
@__UNIQUE_ID___addressable___initstub__kmod_crash_core__332_921_crash_hotplug_init4333 = internal global ptr @__initstub__kmod_crash_core__332_921_crash_hotplug_init4, section ".discard.addressable", align 8, !dbg !4580
@.str.6 = private unnamed_addr constant [38 x i8] c"\014crashkernel: memory value expected\0A\00", align 1, !dbg !4592
@.str.7 = private unnamed_addr constant [38 x i8] c"\014crashkernel: unrecognized char: %c\0A\00", align 1, !dbg !4597
@.str.8 = private unnamed_addr constant [38 x i8] c"\014crashkernel: Memory value expected\0A\00", align 1, !dbg !4599
@.str.9 = private unnamed_addr constant [29 x i8] c"\014crashkernel: '-' expected\0A\00", align 1, !dbg !4601
@.str.10 = private unnamed_addr constant [29 x i8] c"\014crashkernel: end <= start\0A\00", align 1, !dbg !4606
@.str.11 = private unnamed_addr constant [29 x i8] c"\014crashkernel: ':' expected\0A\00", align 1, !dbg !4608
@.str.12 = private unnamed_addr constant [25 x i8] c"\014Memory value expected\0A\00", align 1, !dbg !4610
@.str.13 = private unnamed_addr constant [29 x i8] c"\014crashkernel: invalid size\0A\00", align 1, !dbg !4615
@.str.14 = private unnamed_addr constant [35 x i8] c"\014Memory value expected after '@'\0A\00", align 1, !dbg !4617
@.str.15 = private unnamed_addr constant [43 x i8] c"\016crashkernel size resulted in zero bytes\0A\00", align 1, !dbg !4622
@.str.16 = private unnamed_addr constant [6 x i8] c",high\00", align 1, !dbg !4627
@.str.17 = private unnamed_addr constant [5 x i8] c",low\00", align 1, !dbg !4629
@.str.18 = private unnamed_addr constant [11 x i8] c"VMCOREINFO\00", align 1, !dbg !4634
@.str.19 = private unnamed_addr constant [48 x i8] c"\014Memory allocation for vmcoreinfo_data failed\0A\00", align 1, !dbg !4639
@.str.20 = private unnamed_addr constant [48 x i8] c"\014Memory allocation for vmcoreinfo_note failed\0A\00", align 1, !dbg !4644
@.str.21 = private unnamed_addr constant [14 x i8] c"OSRELEASE=%s\0A\00", align 1, !dbg !4646
@init_uts_ns = external dso_local global %struct.uts_namespace, align 8
@.str.22 = private unnamed_addr constant [17 x i8] c"BUILD-ID=%20phN\0A\00", align 1, !dbg !4651
@vmlinux_build_id = external dso_local global [20 x i8], align 16
@.str.23 = private unnamed_addr constant [14 x i8] c"PAGESIZE=%ld\0A\00", align 1, !dbg !4656
@.str.24 = private unnamed_addr constant [16 x i8] c"SYMBOL(%s)=%lx\0A\00", align 1, !dbg !4658
@.str.25 = private unnamed_addr constant [12 x i8] c"init_uts_ns\00", align 1, !dbg !4660
@.str.26 = private unnamed_addr constant [19 x i8] c"OFFSET(%s.%s)=%lu\0A\00", align 1, !dbg !4663
@.str.27 = private unnamed_addr constant [14 x i8] c"uts_namespace\00", align 1, !dbg !4668
@.str.28 = private unnamed_addr constant [5 x i8] c"name\00", align 1, !dbg !4670
@.str.29 = private unnamed_addr constant [16 x i8] c"node_online_map\00", align 1, !dbg !4672
@node_states = external dso_local global [6 x %struct.nodemask_t], align 16
@.str.30 = private unnamed_addr constant [15 x i8] c"swapper_pg_dir\00", align 1, !dbg !4674
@init_top_pgt = external dso_local global [0 x %struct.pgd_t], align 8
@.str.31 = private unnamed_addr constant [7 x i8] c"_stext\00", align 1, !dbg !4679
@_stext = external dso_local global [0 x i8], align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"vmap_area_list\00", align 1, !dbg !4682
@vmap_area_list = external dso_local global %struct.list_head, align 8
@.str.33 = private unnamed_addr constant [12 x i8] c"mem_section\00", align 1, !dbg !4684
@mem_section = external dso_local global ptr, align 8
@.str.34 = private unnamed_addr constant [16 x i8] c"LENGTH(%s)=%lu\0A\00", align 1, !dbg !4686
@.str.35 = private unnamed_addr constant [14 x i8] c"SIZE(%s)=%lu\0A\00", align 1, !dbg !4688
@.str.36 = private unnamed_addr constant [16 x i8] c"section_mem_map\00", align 1, !dbg !4690
@.str.37 = private unnamed_addr constant [16 x i8] c"NUMBER(%s)=%ld\0A\00", align 1, !dbg !4692
@.str.38 = private unnamed_addr constant [18 x i8] c"SECTION_SIZE_BITS\00", align 1, !dbg !4694
@.str.39 = private unnamed_addr constant [17 x i8] c"MAX_PHYSMEM_BITS\00", align 1, !dbg !4699
@.str.40 = private unnamed_addr constant [5 x i8] c"page\00", align 1, !dbg !4701
@.str.41 = private unnamed_addr constant [12 x i8] c"pglist_data\00", align 1, !dbg !4703
@.str.42 = private unnamed_addr constant [5 x i8] c"zone\00", align 1, !dbg !4705
@.str.43 = private unnamed_addr constant [10 x i8] c"free_area\00", align 1, !dbg !4707
@.str.44 = private unnamed_addr constant [10 x i8] c"list_head\00", align 1, !dbg !4712
@.str.45 = private unnamed_addr constant [11 x i8] c"nodemask_t\00", align 1, !dbg !4714
@.str.46 = private unnamed_addr constant [6 x i8] c"flags\00", align 1, !dbg !4716
@.str.47 = private unnamed_addr constant [10 x i8] c"_refcount\00", align 1, !dbg !4718
@.str.48 = private unnamed_addr constant [8 x i8] c"mapping\00", align 1, !dbg !4720
@.str.49 = private unnamed_addr constant [4 x i8] c"lru\00", align 1, !dbg !4722
@.str.50 = private unnamed_addr constant [10 x i8] c"_mapcount\00", align 1, !dbg !4725
@.str.51 = private unnamed_addr constant [8 x i8] c"private\00", align 1, !dbg !4727
@.str.52 = private unnamed_addr constant [14 x i8] c"compound_head\00", align 1, !dbg !4729
@.str.53 = private unnamed_addr constant [11 x i8] c"node_zones\00", align 1, !dbg !4731
@.str.54 = private unnamed_addr constant [9 x i8] c"nr_zones\00", align 1, !dbg !4733
@.str.55 = private unnamed_addr constant [15 x i8] c"node_start_pfn\00", align 1, !dbg !4738
@.str.56 = private unnamed_addr constant [19 x i8] c"node_spanned_pages\00", align 1, !dbg !4740
@.str.57 = private unnamed_addr constant [8 x i8] c"node_id\00", align 1, !dbg !4742
@.str.58 = private unnamed_addr constant [8 x i8] c"vm_stat\00", align 1, !dbg !4744
@.str.59 = private unnamed_addr constant [14 x i8] c"spanned_pages\00", align 1, !dbg !4746
@.str.60 = private unnamed_addr constant [10 x i8] c"free_list\00", align 1, !dbg !4748
@.str.61 = private unnamed_addr constant [5 x i8] c"next\00", align 1, !dbg !4750
@.str.62 = private unnamed_addr constant [5 x i8] c"prev\00", align 1, !dbg !4752
@.str.63 = private unnamed_addr constant [10 x i8] c"vmap_area\00", align 1, !dbg !4754
@.str.64 = private unnamed_addr constant [9 x i8] c"va_start\00", align 1, !dbg !4756
@.str.65 = private unnamed_addr constant [5 x i8] c"list\00", align 1, !dbg !4758
@.str.66 = private unnamed_addr constant [15 x i8] c"zone.free_area\00", align 1, !dbg !4760
@.str.67 = private unnamed_addr constant [20 x i8] c"free_area.free_list\00", align 1, !dbg !4762
@.str.68 = private unnamed_addr constant [14 x i8] c"NR_FREE_PAGES\00", align 1, !dbg !4764
@.str.69 = private unnamed_addr constant [7 x i8] c"PG_lru\00", align 1, !dbg !4766
@.str.70 = private unnamed_addr constant [11 x i8] c"PG_private\00", align 1, !dbg !4768
@.str.71 = private unnamed_addr constant [13 x i8] c"PG_swapcache\00", align 1, !dbg !4770
@.str.72 = private unnamed_addr constant [14 x i8] c"PG_swapbacked\00", align 1, !dbg !4772
@.str.73 = private unnamed_addr constant [8 x i8] c"PG_slab\00", align 1, !dbg !4774
@.str.74 = private unnamed_addr constant [13 x i8] c"PG_head_mask\00", align 1, !dbg !4776
@.str.75 = private unnamed_addr constant [26 x i8] c"PAGE_BUDDY_MAPCOUNT_VALUE\00", align 1, !dbg !4778
@.str.76 = private unnamed_addr constant [28 x i8] c"PAGE_HUGETLB_MAPCOUNT_VALUE\00", align 1, !dbg !4783
@.str.77 = private unnamed_addr constant [28 x i8] c"PAGE_OFFLINE_MAPCOUNT_VALUE\00", align 1, !dbg !4788
@.str.78 = private unnamed_addr constant [15 x i8] c"kallsyms_names\00", align 1, !dbg !4790
@kallsyms_names = extern_weak dso_local constant [0 x i8], align 1
@.str.79 = private unnamed_addr constant [18 x i8] c"kallsyms_num_syms\00", align 1, !dbg !4792
@kallsyms_num_syms = extern_weak dso_local constant i32, section ".rodata", align 4
@.str.80 = private unnamed_addr constant [21 x i8] c"kallsyms_token_table\00", align 1, !dbg !4794
@kallsyms_token_table = extern_weak dso_local constant [0 x i8], align 1
@.str.81 = private unnamed_addr constant [21 x i8] c"kallsyms_token_index\00", align 1, !dbg !4799
@kallsyms_token_index = extern_weak dso_local constant [0 x i16], align 2
@.str.82 = private unnamed_addr constant [17 x i8] c"kallsyms_offsets\00", align 1, !dbg !4801
@kallsyms_offsets = extern_weak dso_local constant [0 x i32], align 4
@.str.83 = private unnamed_addr constant [23 x i8] c"kallsyms_relative_base\00", align 1, !dbg !4803
@kallsyms_relative_base = extern_weak dso_local constant i64, section ".rodata", align 8
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@.str.84 = private unnamed_addr constant [59 x i8] c"\014Memory allocation for saving cpu register states failed\0A\00", align 1, !dbg !4808
@__kexec_lock = external dso_local global %struct.atomic_t, align 4
@.str.85 = private unnamed_addr constant [12 x i8] c"crash/cpuhp\00", align 1, !dbg !4813
@vmemmap_base = external dso_local global i64, align 8
@.str.86 = private unnamed_addr constant [48 x i8] c"\013crash hp: unable to locate elfcorehdr segment\00", align 1, !dbg !4815
@llvm.compiler.used = appending global [5 x ptr] [ptr @__setup_parse_crashkernel_dummy, ptr @__UNIQUE_ID___addressable_paddr_vmcoreinfo_note323, ptr @__UNIQUE_ID___addressable___initstub__kmod_crash_core__324_702_crash_save_vmcoreinfo_init4325, ptr @__UNIQUE_ID___addressable___initstub__kmod_crash_core__329_735_crash_notes_memory_init4330, ptr @__UNIQUE_ID___addressable___initstub__kmod_crash_core__332_921_crash_hotplug_init4333], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @parse_crashkernel(ptr noundef %cmdline, i64 noundef %system_ram, ptr noundef %crash_size, ptr noundef %crash_base) #0 section ".init.text" align 16 !dbg !4826 {
entry:
  %cmdline.addr = alloca ptr, align 8
  %system_ram.addr = alloca i64, align 8
  %crash_size.addr = alloca ptr, align 8
  %crash_base.addr = alloca ptr, align 8
  store ptr %cmdline, ptr %cmdline.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cmdline.addr, metadata !4831, metadata !DIExpression()), !dbg !4835
  store i64 %system_ram, ptr %system_ram.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %system_ram.addr, metadata !4832, metadata !DIExpression()), !dbg !4836
  store ptr %crash_size, ptr %crash_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %crash_size.addr, metadata !4833, metadata !DIExpression()), !dbg !4837
  store ptr %crash_base, ptr %crash_base.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %crash_base.addr, metadata !4834, metadata !DIExpression()), !dbg !4838
  %0 = load ptr, ptr %cmdline.addr, align 8, !dbg !4839
  %1 = load i64, ptr %system_ram.addr, align 8, !dbg !4840
  %2 = load ptr, ptr %crash_size.addr, align 8, !dbg !4841
  %3 = load ptr, ptr %crash_base.addr, align 8, !dbg !4842
  %call = call i32 @__parse_crashkernel(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef @.str, ptr noundef null) #15, !dbg !4843
  ret i32 %call, !dbg !4844
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @__parse_crashkernel(ptr noundef %cmdline, i64 noundef %system_ram, ptr noundef %crash_size, ptr noundef %crash_base, ptr noundef %name, ptr noundef %suffix) #0 section ".init.text" align 16 !dbg !4845 {
entry:
  %retval = alloca i32, align 4
  %cmdline.addr = alloca ptr, align 8
  %system_ram.addr = alloca i64, align 8
  %crash_size.addr = alloca ptr, align 8
  %crash_base.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %suffix.addr = alloca ptr, align 8
  %first_colon = alloca ptr, align 8
  %first_space = alloca ptr, align 8
  %ck_cmdline = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cmdline, ptr %cmdline.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cmdline.addr, metadata !4849, metadata !DIExpression()), !dbg !4858
  store i64 %system_ram, ptr %system_ram.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %system_ram.addr, metadata !4850, metadata !DIExpression()), !dbg !4859
  store ptr %crash_size, ptr %crash_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %crash_size.addr, metadata !4851, metadata !DIExpression()), !dbg !4860
  store ptr %crash_base, ptr %crash_base.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %crash_base.addr, metadata !4852, metadata !DIExpression()), !dbg !4861
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !4853, metadata !DIExpression()), !dbg !4862
  store ptr %suffix, ptr %suffix.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %suffix.addr, metadata !4854, metadata !DIExpression()), !dbg !4863
  call void @llvm.lifetime.start.p0(i64 8, ptr %first_colon) #16, !dbg !4864
  call void @llvm.dbg.declare(metadata ptr %first_colon, metadata !4855, metadata !DIExpression()), !dbg !4865
  call void @llvm.lifetime.start.p0(i64 8, ptr %first_space) #16, !dbg !4864
  call void @llvm.dbg.declare(metadata ptr %first_space, metadata !4856, metadata !DIExpression()), !dbg !4866
  call void @llvm.lifetime.start.p0(i64 8, ptr %ck_cmdline) #16, !dbg !4867
  call void @llvm.dbg.declare(metadata ptr %ck_cmdline, metadata !4857, metadata !DIExpression()), !dbg !4868
  br label %do.body, !dbg !4869

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %crash_size.addr, align 8, !dbg !4870
  %tobool = icmp ne ptr %0, null, !dbg !4870
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !4870

lor.rhs:                                          ; preds = %do.body
  %1 = load ptr, ptr %crash_base.addr, align 8, !dbg !4870
  %tobool1 = icmp ne ptr %1, null, !dbg !4870
  %lnot = xor i1 %tobool1, true, !dbg !4870
  br label %lor.end, !dbg !4870

lor.end:                                          ; preds = %lor.rhs, %do.body
  %2 = phi i1 [ true, %do.body ], [ %lnot, %lor.rhs ]
  %lnot2 = xor i1 %2, true, !dbg !4870
  %lnot3 = xor i1 %lnot2, true, !dbg !4870
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !4870
  %conv = sext i32 %lnot.ext to i64, !dbg !4870
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4870
  %tobool4 = icmp ne i64 %expval, 0, !dbg !4870
  br i1 %tobool4, label %if.then, label %if.end, !dbg !4873

if.then:                                          ; preds = %lor.end
  br label %do.body5, !dbg !4870

do.body5:                                         ; preds = %if.then
  br label %do.body6, !dbg !4874

do.body6:                                         ; preds = %do.body5
  br label %do.cond, !dbg !4876

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !4876

do.end:                                           ; preds = %do.cond
  br label %do.body7, !dbg !4874

do.body7:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, i32 257, i32 0, i64 12) #16, !dbg !4878, !srcloc !4880
  br label %do.cond8, !dbg !4878

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !4878

do.end9:                                          ; preds = %do.cond8
  unreachable, !dbg !4874

do.cond10:                                        ; No predecessors!
  br label %do.end11, !dbg !4874

do.end11:                                         ; preds = %do.cond10
  br label %if.end, !dbg !4874

if.end:                                           ; preds = %do.end11, %lor.end
  br label %do.cond12, !dbg !4873

do.cond12:                                        ; preds = %if.end
  br label %do.end13, !dbg !4873

do.end13:                                         ; preds = %do.cond12
  %3 = load ptr, ptr %crash_size.addr, align 8, !dbg !4881
  store i64 0, ptr %3, align 8, !dbg !4882
  %4 = load ptr, ptr %crash_base.addr, align 8, !dbg !4883
  store i64 0, ptr %4, align 8, !dbg !4884
  %5 = load ptr, ptr %cmdline.addr, align 8, !dbg !4885
  %6 = load ptr, ptr %name.addr, align 8, !dbg !4886
  %7 = load ptr, ptr %suffix.addr, align 8, !dbg !4887
  %call = call ptr @get_last_crashkernel(ptr noundef %5, ptr noundef %6, ptr noundef %7) #15, !dbg !4888
  store ptr %call, ptr %ck_cmdline, align 8, !dbg !4889
  %8 = load ptr, ptr %ck_cmdline, align 8, !dbg !4890
  %tobool14 = icmp ne ptr %8, null, !dbg !4890
  br i1 %tobool14, label %if.end16, label %if.then15, !dbg !4892

if.then15:                                        ; preds = %do.end13
  store i32 -2, ptr %retval, align 4, !dbg !4893
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4893

if.end16:                                         ; preds = %do.end13
  %9 = load ptr, ptr %name.addr, align 8, !dbg !4894
  %call17 = call i64 @strlen(ptr noundef %9) #17, !dbg !4895
  %10 = load ptr, ptr %ck_cmdline, align 8, !dbg !4896
  %add.ptr = getelementptr i8, ptr %10, i64 %call17, !dbg !4896
  store ptr %add.ptr, ptr %ck_cmdline, align 8, !dbg !4896
  %11 = load ptr, ptr %suffix.addr, align 8, !dbg !4897
  %tobool18 = icmp ne ptr %11, null, !dbg !4897
  br i1 %tobool18, label %if.then19, label %if.end21, !dbg !4899

if.then19:                                        ; preds = %if.end16
  %12 = load ptr, ptr %ck_cmdline, align 8, !dbg !4900
  %13 = load ptr, ptr %crash_size.addr, align 8, !dbg !4901
  %14 = load ptr, ptr %suffix.addr, align 8, !dbg !4902
  %call20 = call i32 @parse_crashkernel_suffix(ptr noundef %12, ptr noundef %13, ptr noundef %14) #15, !dbg !4903
  store i32 %call20, ptr %retval, align 4, !dbg !4904
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4904

if.end21:                                         ; preds = %if.end16
  %15 = load ptr, ptr %ck_cmdline, align 8, !dbg !4905
  %call22 = call ptr @strchr(ptr noundef %15, i32 noundef 58) #17, !dbg !4906
  store ptr %call22, ptr %first_colon, align 8, !dbg !4907
  %16 = load ptr, ptr %ck_cmdline, align 8, !dbg !4908
  %call23 = call ptr @strchr(ptr noundef %16, i32 noundef 32) #17, !dbg !4909
  store ptr %call23, ptr %first_space, align 8, !dbg !4910
  %17 = load ptr, ptr %first_colon, align 8, !dbg !4911
  %tobool24 = icmp ne ptr %17, null, !dbg !4911
  br i1 %tobool24, label %land.lhs.true, label %if.end29, !dbg !4913

land.lhs.true:                                    ; preds = %if.end21
  %18 = load ptr, ptr %first_space, align 8, !dbg !4914
  %tobool25 = icmp ne ptr %18, null, !dbg !4914
  br i1 %tobool25, label %lor.lhs.false, label %if.then27, !dbg !4915

lor.lhs.false:                                    ; preds = %land.lhs.true
  %19 = load ptr, ptr %first_colon, align 8, !dbg !4916
  %20 = load ptr, ptr %first_space, align 8, !dbg !4917
  %cmp = icmp ult ptr %19, %20, !dbg !4918
  br i1 %cmp, label %if.then27, label %if.end29, !dbg !4919

if.then27:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %21 = load ptr, ptr %ck_cmdline, align 8, !dbg !4920
  %22 = load i64, ptr %system_ram.addr, align 8, !dbg !4921
  %23 = load ptr, ptr %crash_size.addr, align 8, !dbg !4922
  %24 = load ptr, ptr %crash_base.addr, align 8, !dbg !4923
  %call28 = call i32 @parse_crashkernel_mem(ptr noundef %21, i64 noundef %22, ptr noundef %23, ptr noundef %24) #15, !dbg !4924
  store i32 %call28, ptr %retval, align 4, !dbg !4925
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4925

if.end29:                                         ; preds = %lor.lhs.false, %if.end21
  %25 = load ptr, ptr %ck_cmdline, align 8, !dbg !4926
  %26 = load ptr, ptr %crash_size.addr, align 8, !dbg !4927
  %27 = load ptr, ptr %crash_base.addr, align 8, !dbg !4928
  %call30 = call i32 @parse_crashkernel_simple(ptr noundef %25, ptr noundef %26, ptr noundef %27) #15, !dbg !4929
  store i32 %call30, ptr %retval, align 4, !dbg !4930
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4930

cleanup:                                          ; preds = %if.end29, %if.then27, %if.then19, %if.then15
  call void @llvm.lifetime.end.p0(i64 8, ptr %ck_cmdline) #16, !dbg !4931
  call void @llvm.lifetime.end.p0(i64 8, ptr %first_space) #16, !dbg !4931
  call void @llvm.lifetime.end.p0(i64 8, ptr %first_colon) #16, !dbg !4931
  %28 = load i32, ptr %retval, align 4, !dbg !4931
  ret i32 %28, !dbg !4931
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @parse_crashkernel_high(ptr noundef %cmdline, i64 noundef %system_ram, ptr noundef %crash_size, ptr noundef %crash_base) #0 section ".init.text" align 16 !dbg !4932 {
entry:
  %cmdline.addr = alloca ptr, align 8
  %system_ram.addr = alloca i64, align 8
  %crash_size.addr = alloca ptr, align 8
  %crash_base.addr = alloca ptr, align 8
  store ptr %cmdline, ptr %cmdline.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cmdline.addr, metadata !4934, metadata !DIExpression()), !dbg !4938
  store i64 %system_ram, ptr %system_ram.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %system_ram.addr, metadata !4935, metadata !DIExpression()), !dbg !4939
  store ptr %crash_size, ptr %crash_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %crash_size.addr, metadata !4936, metadata !DIExpression()), !dbg !4940
  store ptr %crash_base, ptr %crash_base.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %crash_base.addr, metadata !4937, metadata !DIExpression()), !dbg !4941
  %0 = load ptr, ptr %cmdline.addr, align 8, !dbg !4942
  %1 = load i64, ptr %system_ram.addr, align 8, !dbg !4943
  %2 = load ptr, ptr %crash_size.addr, align 8, !dbg !4944
  %3 = load ptr, ptr %crash_base.addr, align 8, !dbg !4945
  %4 = load ptr, ptr @suffix_tbl, align 16, !dbg !4946
  %call = call i32 @__parse_crashkernel(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef @.str, ptr noundef %4) #15, !dbg !4947
  ret i32 %call, !dbg !4948
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @parse_crashkernel_low(ptr noundef %cmdline, i64 noundef %system_ram, ptr noundef %crash_size, ptr noundef %crash_base) #0 section ".init.text" align 16 !dbg !4949 {
entry:
  %cmdline.addr = alloca ptr, align 8
  %system_ram.addr = alloca i64, align 8
  %crash_size.addr = alloca ptr, align 8
  %crash_base.addr = alloca ptr, align 8
  store ptr %cmdline, ptr %cmdline.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cmdline.addr, metadata !4951, metadata !DIExpression()), !dbg !4955
  store i64 %system_ram, ptr %system_ram.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %system_ram.addr, metadata !4952, metadata !DIExpression()), !dbg !4956
  store ptr %crash_size, ptr %crash_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %crash_size.addr, metadata !4953, metadata !DIExpression()), !dbg !4957
  store ptr %crash_base, ptr %crash_base.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %crash_base.addr, metadata !4954, metadata !DIExpression()), !dbg !4958
  %0 = load ptr, ptr %cmdline.addr, align 8, !dbg !4959
  %1 = load i64, ptr %system_ram.addr, align 8, !dbg !4960
  %2 = load ptr, ptr %crash_size.addr, align 8, !dbg !4961
  %3 = load ptr, ptr %crash_base.addr, align 8, !dbg !4962
  %4 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @suffix_tbl, i64 0, i64 1), align 8, !dbg !4963
  %call = call i32 @__parse_crashkernel(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef @.str, ptr noundef %4) #15, !dbg !4964
  ret i32 %call, !dbg !4965
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @parse_crashkernel_dummy(ptr noundef %arg) #0 section ".init.text" align 16 !dbg !4966 {
entry:
  %arg.addr = alloca ptr, align 8
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !4968, metadata !DIExpression()), !dbg !4969
  ret i32 0, !dbg !4970
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @crash_prepare_elf64_headers(ptr noundef %mem, i32 noundef %need_kernel_map, ptr noundef %addr, ptr noundef %sz) #2 align 16 !dbg !4971 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca ptr, align 8
  %need_kernel_map.addr = alloca i32, align 4
  %addr.addr = alloca ptr, align 8
  %sz.addr = alloca ptr, align 8
  %ehdr = alloca ptr, align 8
  %phdr = alloca ptr, align 8
  %nr_cpus = alloca i64, align 8
  %nr_phdr = alloca i64, align 8
  %elf_sz = alloca i64, align 8
  %buf = alloca ptr, align 8
  %cpu = alloca i32, align 4
  %i = alloca i32, align 4
  %notes_addr = alloca i64, align 8
  %mstart = alloca i64, align 8
  %mend = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp20 = alloca ptr, align 8
  %tmp68 = alloca i32, align 4
  store ptr %mem, ptr %mem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mem.addr, metadata !4981, metadata !DIExpression()), !dbg !5004
  store i32 %need_kernel_map, ptr %need_kernel_map.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %need_kernel_map.addr, metadata !4982, metadata !DIExpression()), !dbg !5005
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4983, metadata !DIExpression()), !dbg !5006
  store ptr %sz, ptr %sz.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sz.addr, metadata !4984, metadata !DIExpression()), !dbg !5007
  call void @llvm.lifetime.start.p0(i64 8, ptr %ehdr) #16, !dbg !5008
  call void @llvm.dbg.declare(metadata ptr %ehdr, metadata !4985, metadata !DIExpression()), !dbg !5009
  call void @llvm.lifetime.start.p0(i64 8, ptr %phdr) #16, !dbg !5010
  call void @llvm.dbg.declare(metadata ptr %phdr, metadata !4986, metadata !DIExpression()), !dbg !5011
  call void @llvm.lifetime.start.p0(i64 8, ptr %nr_cpus) #16, !dbg !5012
  call void @llvm.dbg.declare(metadata ptr %nr_cpus, metadata !4987, metadata !DIExpression()), !dbg !5013
  %call = call i32 @cpumask_weight(ptr noundef @__cpu_possible_mask) #17, !dbg !5014
  %conv = zext i32 %call to i64, !dbg !5014
  store i64 %conv, ptr %nr_cpus, align 8, !dbg !5013
  call void @llvm.lifetime.start.p0(i64 8, ptr %nr_phdr) #16, !dbg !5012
  call void @llvm.dbg.declare(metadata ptr %nr_phdr, metadata !4988, metadata !DIExpression()), !dbg !5015
  call void @llvm.lifetime.start.p0(i64 8, ptr %elf_sz) #16, !dbg !5012
  call void @llvm.dbg.declare(metadata ptr %elf_sz, metadata !4989, metadata !DIExpression()), !dbg !5016
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #16, !dbg !5017
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !4990, metadata !DIExpression()), !dbg !5018
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #16, !dbg !5019
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !4991, metadata !DIExpression()), !dbg !5020
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !5019
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4992, metadata !DIExpression()), !dbg !5021
  call void @llvm.lifetime.start.p0(i64 8, ptr %notes_addr) #16, !dbg !5022
  call void @llvm.dbg.declare(metadata ptr %notes_addr, metadata !4993, metadata !DIExpression()), !dbg !5023
  call void @llvm.lifetime.start.p0(i64 8, ptr %mstart) #16, !dbg !5024
  call void @llvm.dbg.declare(metadata ptr %mstart, metadata !4994, metadata !DIExpression()), !dbg !5025
  call void @llvm.lifetime.start.p0(i64 8, ptr %mend) #16, !dbg !5024
  call void @llvm.dbg.declare(metadata ptr %mend, metadata !4995, metadata !DIExpression()), !dbg !5026
  %0 = load i64, ptr %nr_cpus, align 8, !dbg !5027
  %add = add i64 %0, 1, !dbg !5028
  store i64 %add, ptr %nr_phdr, align 8, !dbg !5029
  %1 = load ptr, ptr %mem.addr, align 8, !dbg !5030
  %nr_ranges = getelementptr inbounds %struct.crash_mem, ptr %1, i32 0, i32 1, !dbg !5031
  %2 = load i32, ptr %nr_ranges, align 4, !dbg !5031
  %conv1 = zext i32 %2 to i64, !dbg !5030
  %3 = load i64, ptr %nr_phdr, align 8, !dbg !5032
  %add2 = add i64 %3, %conv1, !dbg !5032
  store i64 %add2, ptr %nr_phdr, align 8, !dbg !5032
  %4 = load i64, ptr %nr_phdr, align 8, !dbg !5033
  %inc = add i64 %4, 1, !dbg !5033
  store i64 %inc, ptr %nr_phdr, align 8, !dbg !5033
  %5 = load i64, ptr %nr_phdr, align 8, !dbg !5034
  %mul = mul i64 %5, 56, !dbg !5035
  %add3 = add i64 64, %mul, !dbg !5036
  store i64 %add3, ptr %elf_sz, align 8, !dbg !5037
  %6 = load i64, ptr %elf_sz, align 8, !dbg !5038
  %add4 = add i64 %6, 4095, !dbg !5038
  %and = and i64 %add4, -4096, !dbg !5038
  store i64 %and, ptr %elf_sz, align 8, !dbg !5039
  %7 = load i64, ptr %elf_sz, align 8, !dbg !5040
  %call5 = call noalias ptr @vzalloc(i64 noundef %7) #18, !dbg !5041
  store ptr %call5, ptr %buf, align 8, !dbg !5042
  %8 = load ptr, ptr %buf, align 8, !dbg !5043
  %tobool = icmp ne ptr %8, null, !dbg !5043
  br i1 %tobool, label %if.end, label %if.then, !dbg !5045

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !5046
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5046

if.end:                                           ; preds = %entry
  %9 = load ptr, ptr %buf, align 8, !dbg !5047
  store ptr %9, ptr %ehdr, align 8, !dbg !5048
  %10 = load ptr, ptr %ehdr, align 8, !dbg !5049
  %add.ptr = getelementptr %struct.elf64_hdr, ptr %10, i64 1, !dbg !5050
  store ptr %add.ptr, ptr %phdr, align 8, !dbg !5051
  %11 = load ptr, ptr %ehdr, align 8, !dbg !5052
  %e_ident = getelementptr inbounds %struct.elf64_hdr, ptr %11, i32 0, i32 0, !dbg !5053
  %arraydecay = getelementptr inbounds [16 x i8], ptr %e_ident, i64 0, i64 0, !dbg !5054
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arraydecay, ptr align 1 @.str.1, i64 4, i1 false), !dbg !5054
  %12 = load ptr, ptr %ehdr, align 8, !dbg !5055
  %e_ident6 = getelementptr inbounds %struct.elf64_hdr, ptr %12, i32 0, i32 0, !dbg !5056
  %arrayidx = getelementptr [16 x i8], ptr %e_ident6, i64 0, i64 4, !dbg !5055
  store i8 2, ptr %arrayidx, align 4, !dbg !5057
  %13 = load ptr, ptr %ehdr, align 8, !dbg !5058
  %e_ident7 = getelementptr inbounds %struct.elf64_hdr, ptr %13, i32 0, i32 0, !dbg !5059
  %arrayidx8 = getelementptr [16 x i8], ptr %e_ident7, i64 0, i64 5, !dbg !5058
  store i8 1, ptr %arrayidx8, align 1, !dbg !5060
  %14 = load ptr, ptr %ehdr, align 8, !dbg !5061
  %e_ident9 = getelementptr inbounds %struct.elf64_hdr, ptr %14, i32 0, i32 0, !dbg !5062
  %arrayidx10 = getelementptr [16 x i8], ptr %e_ident9, i64 0, i64 6, !dbg !5061
  store i8 1, ptr %arrayidx10, align 2, !dbg !5063
  %15 = load ptr, ptr %ehdr, align 8, !dbg !5064
  %e_ident11 = getelementptr inbounds %struct.elf64_hdr, ptr %15, i32 0, i32 0, !dbg !5065
  %arrayidx12 = getelementptr [16 x i8], ptr %e_ident11, i64 0, i64 7, !dbg !5064
  store i8 0, ptr %arrayidx12, align 1, !dbg !5066
  %16 = load ptr, ptr %ehdr, align 8, !dbg !5067
  %e_ident13 = getelementptr inbounds %struct.elf64_hdr, ptr %16, i32 0, i32 0, !dbg !5068
  %arraydecay14 = getelementptr inbounds [16 x i8], ptr %e_ident13, i64 0, i64 0, !dbg !5067
  %add.ptr15 = getelementptr i8, ptr %arraydecay14, i64 8, !dbg !5069
  call void @llvm.memset.p0.i64(ptr align 1 %add.ptr15, i8 0, i64 8, i1 false), !dbg !5070
  %17 = load ptr, ptr %ehdr, align 8, !dbg !5071
  %e_type = getelementptr inbounds %struct.elf64_hdr, ptr %17, i32 0, i32 1, !dbg !5072
  store i16 4, ptr %e_type, align 8, !dbg !5073
  %18 = load ptr, ptr %ehdr, align 8, !dbg !5074
  %e_machine = getelementptr inbounds %struct.elf64_hdr, ptr %18, i32 0, i32 2, !dbg !5075
  store i16 62, ptr %e_machine, align 2, !dbg !5076
  %19 = load ptr, ptr %ehdr, align 8, !dbg !5077
  %e_version = getelementptr inbounds %struct.elf64_hdr, ptr %19, i32 0, i32 3, !dbg !5078
  store i32 1, ptr %e_version, align 4, !dbg !5079
  %20 = load ptr, ptr %ehdr, align 8, !dbg !5080
  %e_phoff = getelementptr inbounds %struct.elf64_hdr, ptr %20, i32 0, i32 5, !dbg !5081
  store i64 64, ptr %e_phoff, align 8, !dbg !5082
  %21 = load ptr, ptr %ehdr, align 8, !dbg !5083
  %e_ehsize = getelementptr inbounds %struct.elf64_hdr, ptr %21, i32 0, i32 8, !dbg !5084
  store i16 64, ptr %e_ehsize, align 4, !dbg !5085
  %22 = load ptr, ptr %ehdr, align 8, !dbg !5086
  %e_phentsize = getelementptr inbounds %struct.elf64_hdr, ptr %22, i32 0, i32 9, !dbg !5087
  store i16 56, ptr %e_phentsize, align 2, !dbg !5088
  store i32 0, ptr %cpu, align 4, !dbg !5089
  br label %for.cond, !dbg !5089

for.cond:                                         ; preds = %for.inc, %if.end
  %23 = load i32, ptr %cpu, align 4, !dbg !5090
  %conv16 = zext i32 %23 to i64, !dbg !5090
  %call17 = call i64 @find_next_bit(ptr noundef @__cpu_possible_mask, i64 noundef 64, i64 noundef %conv16) #17, !dbg !5090
  %conv18 = trunc i64 %call17 to i32, !dbg !5090
  store i32 %conv18, ptr %cpu, align 4, !dbg !5090
  %24 = load i32, ptr %cpu, align 4, !dbg !5090
  %cmp = icmp ult i32 %24, 64, !dbg !5090
  br i1 %cmp, label %for.body, label %for.end, !dbg !5089

for.body:                                         ; preds = %for.cond
  %25 = load ptr, ptr %phdr, align 8, !dbg !5091
  %p_type = getelementptr inbounds %struct.elf64_phdr, ptr %25, i32 0, i32 0, !dbg !5092
  store i32 4, ptr %p_type, align 8, !dbg !5093
  br label %do.body, !dbg !5094

do.body:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #16, !dbg !5095
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4996, metadata !DIExpression()), !dbg !5095
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5095
  %26 = load ptr, ptr %__vpp_verify, align 8, !dbg !5095
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #16, !dbg !5094
  br label %do.cond, !dbg !5095

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5095

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #16, !dbg !5096
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !5002, metadata !DIExpression()), !dbg !5096
  %27 = load ptr, ptr @crash_notes, align 8, !dbg !5096
  %28 = ptrtoint ptr %27 to i64, !dbg !5096
  store i64 %28, ptr %__ptr, align 8, !dbg !5096
  %29 = load i64, ptr %__ptr, align 8, !dbg !5096
  %30 = load i32, ptr %cpu, align 4, !dbg !5096
  %idxprom = zext i32 %30 to i64, !dbg !5096
  %arrayidx21 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !5096
  %31 = load i64, ptr %arrayidx21, align 8, !dbg !5096
  %add22 = add i64 %29, %31, !dbg !5096
  %32 = inttoptr i64 %add22 to ptr, !dbg !5096
  store ptr %32, ptr %tmp20, align 8, !dbg !5096
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #16, !dbg !5094
  %33 = load ptr, ptr %tmp20, align 8, !dbg !5096
  store ptr %33, ptr %tmp, align 8, !dbg !5095
  %34 = load ptr, ptr %tmp, align 8, !dbg !5094
  %call23 = call i64 @per_cpu_ptr_to_phys(ptr noundef %34) #17, !dbg !5097
  store i64 %call23, ptr %notes_addr, align 8, !dbg !5098
  %35 = load i64, ptr %notes_addr, align 8, !dbg !5099
  %36 = load ptr, ptr %phdr, align 8, !dbg !5100
  %p_paddr = getelementptr inbounds %struct.elf64_phdr, ptr %36, i32 0, i32 4, !dbg !5101
  store i64 %35, ptr %p_paddr, align 8, !dbg !5102
  %37 = load ptr, ptr %phdr, align 8, !dbg !5103
  %p_offset = getelementptr inbounds %struct.elf64_phdr, ptr %37, i32 0, i32 2, !dbg !5104
  store i64 %35, ptr %p_offset, align 8, !dbg !5105
  %38 = load ptr, ptr %phdr, align 8, !dbg !5106
  %p_memsz = getelementptr inbounds %struct.elf64_phdr, ptr %38, i32 0, i32 6, !dbg !5107
  store i64 368, ptr %p_memsz, align 8, !dbg !5108
  %39 = load ptr, ptr %phdr, align 8, !dbg !5109
  %p_filesz = getelementptr inbounds %struct.elf64_phdr, ptr %39, i32 0, i32 5, !dbg !5110
  store i64 368, ptr %p_filesz, align 8, !dbg !5111
  %40 = load ptr, ptr %ehdr, align 8, !dbg !5112
  %e_phnum = getelementptr inbounds %struct.elf64_hdr, ptr %40, i32 0, i32 10, !dbg !5113
  %41 = load i16, ptr %e_phnum, align 8, !dbg !5114
  %inc24 = add i16 %41, 1, !dbg !5114
  store i16 %inc24, ptr %e_phnum, align 8, !dbg !5114
  %42 = load ptr, ptr %phdr, align 8, !dbg !5115
  %incdec.ptr = getelementptr %struct.elf64_phdr, ptr %42, i32 1, !dbg !5115
  store ptr %incdec.ptr, ptr %phdr, align 8, !dbg !5115
  br label %for.inc, !dbg !5116

for.inc:                                          ; preds = %do.end
  %43 = load i32, ptr %cpu, align 4, !dbg !5090
  %inc25 = add i32 %43, 1, !dbg !5090
  store i32 %inc25, ptr %cpu, align 4, !dbg !5090
  br label %for.cond, !dbg !5090, !llvm.loop !5117

for.end:                                          ; preds = %for.cond
  %44 = load ptr, ptr %phdr, align 8, !dbg !5121
  %p_type26 = getelementptr inbounds %struct.elf64_phdr, ptr %44, i32 0, i32 0, !dbg !5122
  store i32 4, ptr %p_type26, align 8, !dbg !5123
  %call27 = call i64 @paddr_vmcoreinfo_note() #17, !dbg !5124
  %45 = load ptr, ptr %phdr, align 8, !dbg !5125
  %p_paddr28 = getelementptr inbounds %struct.elf64_phdr, ptr %45, i32 0, i32 4, !dbg !5126
  store i64 %call27, ptr %p_paddr28, align 8, !dbg !5127
  %46 = load ptr, ptr %phdr, align 8, !dbg !5128
  %p_offset29 = getelementptr inbounds %struct.elf64_phdr, ptr %46, i32 0, i32 2, !dbg !5129
  store i64 %call27, ptr %p_offset29, align 8, !dbg !5130
  %47 = load ptr, ptr %phdr, align 8, !dbg !5131
  %p_memsz30 = getelementptr inbounds %struct.elf64_phdr, ptr %47, i32 0, i32 6, !dbg !5132
  store i64 4132, ptr %p_memsz30, align 8, !dbg !5133
  %48 = load ptr, ptr %phdr, align 8, !dbg !5134
  %p_filesz31 = getelementptr inbounds %struct.elf64_phdr, ptr %48, i32 0, i32 5, !dbg !5135
  store i64 4132, ptr %p_filesz31, align 8, !dbg !5136
  %49 = load ptr, ptr %ehdr, align 8, !dbg !5137
  %e_phnum32 = getelementptr inbounds %struct.elf64_hdr, ptr %49, i32 0, i32 10, !dbg !5138
  %50 = load i16, ptr %e_phnum32, align 8, !dbg !5139
  %inc33 = add i16 %50, 1, !dbg !5139
  store i16 %inc33, ptr %e_phnum32, align 8, !dbg !5139
  %51 = load ptr, ptr %phdr, align 8, !dbg !5140
  %incdec.ptr34 = getelementptr %struct.elf64_phdr, ptr %51, i32 1, !dbg !5140
  store ptr %incdec.ptr34, ptr %phdr, align 8, !dbg !5140
  %52 = load i32, ptr %need_kernel_map.addr, align 4, !dbg !5141
  %tobool35 = icmp ne i32 %52, 0, !dbg !5141
  br i1 %tobool35, label %if.then36, label %if.end46, !dbg !5143

if.then36:                                        ; preds = %for.end
  %53 = load ptr, ptr %phdr, align 8, !dbg !5144
  %p_type37 = getelementptr inbounds %struct.elf64_phdr, ptr %53, i32 0, i32 0, !dbg !5146
  store i32 1, ptr %p_type37, align 8, !dbg !5147
  %54 = load ptr, ptr %phdr, align 8, !dbg !5148
  %p_flags = getelementptr inbounds %struct.elf64_phdr, ptr %54, i32 0, i32 1, !dbg !5149
  store i32 7, ptr %p_flags, align 4, !dbg !5150
  %55 = load ptr, ptr %phdr, align 8, !dbg !5151
  %p_vaddr = getelementptr inbounds %struct.elf64_phdr, ptr %55, i32 0, i32 3, !dbg !5152
  store i64 ptrtoint (ptr @_text to i64), ptr %p_vaddr, align 8, !dbg !5153
  %56 = load ptr, ptr %phdr, align 8, !dbg !5154
  %p_memsz38 = getelementptr inbounds %struct.elf64_phdr, ptr %56, i32 0, i32 6, !dbg !5155
  store i64 sub (i64 ptrtoint (ptr @_end to i64), i64 ptrtoint (ptr @_text to i64)), ptr %p_memsz38, align 8, !dbg !5156
  %57 = load ptr, ptr %phdr, align 8, !dbg !5157
  %p_filesz39 = getelementptr inbounds %struct.elf64_phdr, ptr %57, i32 0, i32 5, !dbg !5158
  store i64 sub (i64 ptrtoint (ptr @_end to i64), i64 ptrtoint (ptr @_text to i64)), ptr %p_filesz39, align 8, !dbg !5159
  %58 = load i64, ptr @phys_base, align 8, !dbg !5160
  %add40 = add i64 sub (i64 ptrtoint (ptr @_text to i64), i64 -2147483648), %58, !dbg !5160
  %59 = load ptr, ptr %phdr, align 8, !dbg !5161
  %p_paddr41 = getelementptr inbounds %struct.elf64_phdr, ptr %59, i32 0, i32 4, !dbg !5162
  store i64 %add40, ptr %p_paddr41, align 8, !dbg !5163
  %60 = load ptr, ptr %phdr, align 8, !dbg !5164
  %p_offset42 = getelementptr inbounds %struct.elf64_phdr, ptr %60, i32 0, i32 2, !dbg !5165
  store i64 %add40, ptr %p_offset42, align 8, !dbg !5166
  %61 = load ptr, ptr %ehdr, align 8, !dbg !5167
  %e_phnum43 = getelementptr inbounds %struct.elf64_hdr, ptr %61, i32 0, i32 10, !dbg !5168
  %62 = load i16, ptr %e_phnum43, align 8, !dbg !5169
  %inc44 = add i16 %62, 1, !dbg !5169
  store i16 %inc44, ptr %e_phnum43, align 8, !dbg !5169
  %63 = load ptr, ptr %phdr, align 8, !dbg !5170
  %incdec.ptr45 = getelementptr %struct.elf64_phdr, ptr %63, i32 1, !dbg !5170
  store ptr %incdec.ptr45, ptr %phdr, align 8, !dbg !5170
  br label %if.end46, !dbg !5171

if.end46:                                         ; preds = %if.then36, %for.end
  store i32 0, ptr %i, align 4, !dbg !5172
  br label %for.cond47, !dbg !5174

for.cond47:                                       ; preds = %for.inc70, %if.end46
  %64 = load i32, ptr %i, align 4, !dbg !5175
  %65 = load ptr, ptr %mem.addr, align 8, !dbg !5177
  %nr_ranges48 = getelementptr inbounds %struct.crash_mem, ptr %65, i32 0, i32 1, !dbg !5178
  %66 = load i32, ptr %nr_ranges48, align 4, !dbg !5178
  %cmp49 = icmp ult i32 %64, %66, !dbg !5179
  br i1 %cmp49, label %for.body51, label %for.end72, !dbg !5180

for.body51:                                       ; preds = %for.cond47
  %67 = load ptr, ptr %mem.addr, align 8, !dbg !5181
  %ranges = getelementptr inbounds %struct.crash_mem, ptr %67, i32 0, i32 2, !dbg !5183
  %68 = load i32, ptr %i, align 4, !dbg !5184
  %idxprom52 = zext i32 %68 to i64, !dbg !5181
  %arrayidx53 = getelementptr [0 x %struct.range], ptr %ranges, i64 0, i64 %idxprom52, !dbg !5181
  %start = getelementptr inbounds %struct.range, ptr %arrayidx53, i32 0, i32 0, !dbg !5185
  %69 = load i64, ptr %start, align 8, !dbg !5185
  store i64 %69, ptr %mstart, align 8, !dbg !5186
  %70 = load ptr, ptr %mem.addr, align 8, !dbg !5187
  %ranges54 = getelementptr inbounds %struct.crash_mem, ptr %70, i32 0, i32 2, !dbg !5188
  %71 = load i32, ptr %i, align 4, !dbg !5189
  %idxprom55 = zext i32 %71 to i64, !dbg !5187
  %arrayidx56 = getelementptr [0 x %struct.range], ptr %ranges54, i64 0, i64 %idxprom55, !dbg !5187
  %end = getelementptr inbounds %struct.range, ptr %arrayidx56, i32 0, i32 1, !dbg !5190
  %72 = load i64, ptr %end, align 8, !dbg !5190
  store i64 %72, ptr %mend, align 8, !dbg !5191
  %73 = load ptr, ptr %phdr, align 8, !dbg !5192
  %p_type57 = getelementptr inbounds %struct.elf64_phdr, ptr %73, i32 0, i32 0, !dbg !5193
  store i32 1, ptr %p_type57, align 8, !dbg !5194
  %74 = load ptr, ptr %phdr, align 8, !dbg !5195
  %p_flags58 = getelementptr inbounds %struct.elf64_phdr, ptr %74, i32 0, i32 1, !dbg !5196
  store i32 7, ptr %p_flags58, align 4, !dbg !5197
  %75 = load i64, ptr %mstart, align 8, !dbg !5198
  %76 = load ptr, ptr %phdr, align 8, !dbg !5199
  %p_offset59 = getelementptr inbounds %struct.elf64_phdr, ptr %76, i32 0, i32 2, !dbg !5200
  store i64 %75, ptr %p_offset59, align 8, !dbg !5201
  %77 = load i64, ptr %mstart, align 8, !dbg !5202
  %78 = load ptr, ptr %phdr, align 8, !dbg !5203
  %p_paddr60 = getelementptr inbounds %struct.elf64_phdr, ptr %78, i32 0, i32 4, !dbg !5204
  store i64 %77, ptr %p_paddr60, align 8, !dbg !5205
  %79 = load i64, ptr %mstart, align 8, !dbg !5206
  %80 = load i64, ptr @page_offset_base, align 8, !dbg !5206
  %add61 = add i64 %79, %80, !dbg !5206
  %81 = inttoptr i64 %add61 to ptr, !dbg !5206
  %82 = ptrtoint ptr %81 to i64, !dbg !5207
  %83 = load ptr, ptr %phdr, align 8, !dbg !5208
  %p_vaddr62 = getelementptr inbounds %struct.elf64_phdr, ptr %83, i32 0, i32 3, !dbg !5209
  store i64 %82, ptr %p_vaddr62, align 8, !dbg !5210
  %84 = load i64, ptr %mend, align 8, !dbg !5211
  %85 = load i64, ptr %mstart, align 8, !dbg !5212
  %sub = sub i64 %84, %85, !dbg !5213
  %add63 = add i64 %sub, 1, !dbg !5214
  %86 = load ptr, ptr %phdr, align 8, !dbg !5215
  %p_memsz64 = getelementptr inbounds %struct.elf64_phdr, ptr %86, i32 0, i32 6, !dbg !5216
  store i64 %add63, ptr %p_memsz64, align 8, !dbg !5217
  %87 = load ptr, ptr %phdr, align 8, !dbg !5218
  %p_filesz65 = getelementptr inbounds %struct.elf64_phdr, ptr %87, i32 0, i32 5, !dbg !5219
  store i64 %add63, ptr %p_filesz65, align 8, !dbg !5220
  %88 = load ptr, ptr %phdr, align 8, !dbg !5221
  %p_align = getelementptr inbounds %struct.elf64_phdr, ptr %88, i32 0, i32 7, !dbg !5222
  store i64 0, ptr %p_align, align 8, !dbg !5223
  %89 = load ptr, ptr %ehdr, align 8, !dbg !5224
  %e_phnum66 = getelementptr inbounds %struct.elf64_hdr, ptr %89, i32 0, i32 10, !dbg !5225
  %90 = load i16, ptr %e_phnum66, align 8, !dbg !5226
  %inc67 = add i16 %90, 1, !dbg !5226
  store i16 %inc67, ptr %e_phnum66, align 8, !dbg !5226
  store i32 0, ptr %tmp68, align 4, !dbg !5227
  %91 = load i32, ptr %tmp68, align 4, !dbg !5230
  %92 = load ptr, ptr %phdr, align 8, !dbg !5231
  %incdec.ptr69 = getelementptr %struct.elf64_phdr, ptr %92, i32 1, !dbg !5231
  store ptr %incdec.ptr69, ptr %phdr, align 8, !dbg !5231
  br label %for.inc70, !dbg !5232

for.inc70:                                        ; preds = %for.body51
  %93 = load i32, ptr %i, align 4, !dbg !5233
  %inc71 = add i32 %93, 1, !dbg !5233
  store i32 %inc71, ptr %i, align 4, !dbg !5233
  br label %for.cond47, !dbg !5234, !llvm.loop !5235

for.end72:                                        ; preds = %for.cond47
  %94 = load ptr, ptr %buf, align 8, !dbg !5237
  %95 = load ptr, ptr %addr.addr, align 8, !dbg !5238
  store ptr %94, ptr %95, align 8, !dbg !5239
  %96 = load i64, ptr %elf_sz, align 8, !dbg !5240
  %97 = load ptr, ptr %sz.addr, align 8, !dbg !5241
  store i64 %96, ptr %97, align 8, !dbg !5242
  store i32 0, ptr %retval, align 4, !dbg !5243
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5243

cleanup:                                          ; preds = %for.end72, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %mend) #16, !dbg !5244
  call void @llvm.lifetime.end.p0(i64 8, ptr %mstart) #16, !dbg !5244
  call void @llvm.lifetime.end.p0(i64 8, ptr %notes_addr) #16, !dbg !5244
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !5244
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #16, !dbg !5244
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #16, !dbg !5244
  call void @llvm.lifetime.end.p0(i64 8, ptr %elf_sz) #16, !dbg !5244
  call void @llvm.lifetime.end.p0(i64 8, ptr %nr_phdr) #16, !dbg !5244
  call void @llvm.lifetime.end.p0(i64 8, ptr %nr_cpus) #16, !dbg !5244
  call void @llvm.lifetime.end.p0(i64 8, ptr %phdr) #16, !dbg !5244
  call void @llvm.lifetime.end.p0(i64 8, ptr %ehdr) #16, !dbg !5244
  %98 = load i32, ptr %retval, align 4, !dbg !5244
  ret i32 %98, !dbg !5244
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_weight(ptr noundef %srcp) #4 align 16 !dbg !5245 {
entry:
  %srcp.addr = alloca ptr, align 8
  store ptr %srcp, ptr %srcp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcp.addr, metadata !5249, metadata !DIExpression()), !dbg !5250
  %0 = load ptr, ptr %srcp.addr, align 8, !dbg !5251
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !5251
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !5251
  %call = call i32 @bitmap_weight(ptr noundef %arraydecay, i32 noundef 64) #17, !dbg !5252
  ret i32 %call, !dbg !5253
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5254 dso_local noalias ptr @vzalloc(i64 noundef) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_bit(ptr noundef %addr, i64 noundef %size, i64 noundef %offset) #4 align 16 !dbg !5257 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5263, metadata !DIExpression()), !dbg !5269
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5264, metadata !DIExpression()), !dbg !5270
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !5265, metadata !DIExpression()), !dbg !5271
  %0 = load i64, ptr %size.addr, align 8, !dbg !5272
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5272
  br i1 %1, label %land.lhs.true, label %if.end16, !dbg !5272

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5272
  %cmp = icmp ule i64 %2, 64, !dbg !5272
  br i1 %cmp, label %land.lhs.true1, label %if.end16, !dbg !5272

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !5272
  %cmp2 = icmp ugt i64 %3, 0, !dbg !5272
  br i1 %cmp2, label %if.then, label %if.end16, !dbg !5273

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #16, !dbg !5274
  call void @llvm.dbg.declare(metadata ptr %val, metadata !5266, metadata !DIExpression()), !dbg !5275
  %4 = load i64, ptr %offset.addr, align 8, !dbg !5276
  %5 = load i64, ptr %size.addr, align 8, !dbg !5276
  %cmp3 = icmp uge i64 %4, %5, !dbg !5276
  %lnot = xor i1 %cmp3, true, !dbg !5276
  %lnot4 = xor i1 %lnot, true, !dbg !5276
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !5276
  %conv = sext i32 %lnot.ext to i64, !dbg !5276
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5276
  %tobool = icmp ne i64 %expval, 0, !dbg !5276
  br i1 %tobool, label %if.then5, label %if.end, !dbg !5278

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5279
  store i64 %6, ptr %retval, align 8, !dbg !5280
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5280

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !5281
  %8 = load i64, ptr %7, align 8, !dbg !5282
  %9 = load i64, ptr %offset.addr, align 8, !dbg !5283
  %shl = shl i64 1, %9, !dbg !5283
  %sub = sub i64 -1, %shl, !dbg !5283
  %add = add i64 %sub, 1, !dbg !5283
  %10 = load i64, ptr %size.addr, align 8, !dbg !5283
  %sub6 = sub i64 %10, 1, !dbg !5283
  %sub7 = sub i64 63, %sub6, !dbg !5283
  %shr = lshr i64 -1, %sub7, !dbg !5283
  %and = and i64 %add, %shr, !dbg !5283
  %add8 = add i64 0, %and, !dbg !5283
  %and9 = and i64 %8, %add8, !dbg !5284
  store i64 %and9, ptr %val, align 8, !dbg !5285
  %11 = load i64, ptr %val, align 8, !dbg !5286
  %tobool10 = icmp ne i64 %11, 0, !dbg !5286
  br i1 %tobool10, label %cond.true, label %cond.false13, !dbg !5286

cond.true:                                        ; preds = %if.end
  %12 = load i64, ptr %val, align 8, !dbg !5287
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !5287
  br i1 %13, label %cond.true11, label %cond.false, !dbg !5287

cond.true11:                                      ; preds = %cond.true
  %14 = load i64, ptr %val, align 8, !dbg !5287
  %15 = call i64 @llvm.cttz.i64(i64 %14, i1 true), !dbg !5287
  %cast = trunc i64 %15 to i32, !dbg !5287
  %conv12 = sext i32 %cast to i64, !dbg !5287
  br label %cond.end, !dbg !5287

cond.false:                                       ; preds = %cond.true
  %16 = load i64, ptr %val, align 8, !dbg !5287
  %call = call i64 @variable__ffs(i64 noundef %16) #17, !dbg !5287
  br label %cond.end, !dbg !5287

cond.end:                                         ; preds = %cond.false, %cond.true11
  %cond = phi i64 [ %conv12, %cond.true11 ], [ %call, %cond.false ], !dbg !5287
  br label %cond.end14, !dbg !5286

cond.false13:                                     ; preds = %if.end
  %17 = load i64, ptr %size.addr, align 8, !dbg !5288
  br label %cond.end14, !dbg !5286

cond.end14:                                       ; preds = %cond.false13, %cond.end
  %cond15 = phi i64 [ %cond, %cond.end ], [ %17, %cond.false13 ], !dbg !5286
  store i64 %cond15, ptr %retval, align 8, !dbg !5289
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5289

cleanup:                                          ; preds = %cond.end14, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #16, !dbg !5290
  br label %return

if.end16:                                         ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %18 = load ptr, ptr %addr.addr, align 8, !dbg !5291
  %19 = load i64, ptr %size.addr, align 8, !dbg !5292
  %20 = load i64, ptr %offset.addr, align 8, !dbg !5293
  %call17 = call i64 @_find_next_bit(ptr noundef %18, i64 noundef %19, i64 noundef %20) #17, !dbg !5294
  store i64 %call17, ptr %retval, align 8, !dbg !5295
  br label %return, !dbg !5295

return:                                           ; preds = %if.end16, %cleanup
  %21 = load i64, ptr %retval, align 8, !dbg !5296
  ret i64 %21, !dbg !5296
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5297 dso_local i64 @per_cpu_ptr_to_phys(ptr noundef) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @paddr_vmcoreinfo_note() #2 align 16 !dbg !5301 {
entry:
  %0 = load ptr, ptr @vmcoreinfo_note, align 8, !dbg !5304
  %1 = ptrtoint ptr %0 to i64, !dbg !5304
  %call = call i64 @__phys_addr_nodebug(i64 noundef %1) #17, !dbg !5304
  ret i64 %call, !dbg !5305
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @crash_exclude_mem_range(ptr noundef %mem, i64 noundef %mstart, i64 noundef %mend) #2 align 16 !dbg !5306 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca ptr, align 8
  %mstart.addr = alloca i64, align 8
  %mend.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %p_start = alloca i64, align 8
  %p_end = alloca i64, align 8
  %temp_range = alloca %struct.range, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mem, ptr %mem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mem.addr, metadata !5310, metadata !DIExpression()), !dbg !5320
  store i64 %mstart, ptr %mstart.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mstart.addr, metadata !5311, metadata !DIExpression()), !dbg !5321
  store i64 %mend, ptr %mend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mend.addr, metadata !5312, metadata !DIExpression()), !dbg !5322
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !5323
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5313, metadata !DIExpression()), !dbg !5324
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #16, !dbg !5323
  call void @llvm.dbg.declare(metadata ptr %j, metadata !5314, metadata !DIExpression()), !dbg !5325
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #16, !dbg !5326
  call void @llvm.dbg.declare(metadata ptr %start, metadata !5315, metadata !DIExpression()), !dbg !5327
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #16, !dbg !5326
  call void @llvm.dbg.declare(metadata ptr %end, metadata !5316, metadata !DIExpression()), !dbg !5328
  call void @llvm.lifetime.start.p0(i64 8, ptr %p_start) #16, !dbg !5326
  call void @llvm.dbg.declare(metadata ptr %p_start, metadata !5317, metadata !DIExpression()), !dbg !5329
  call void @llvm.lifetime.start.p0(i64 8, ptr %p_end) #16, !dbg !5326
  call void @llvm.dbg.declare(metadata ptr %p_end, metadata !5318, metadata !DIExpression()), !dbg !5330
  call void @llvm.lifetime.start.p0(i64 16, ptr %temp_range) #16, !dbg !5331
  call void @llvm.dbg.declare(metadata ptr %temp_range, metadata !5319, metadata !DIExpression()), !dbg !5332
  call void @llvm.memset.p0.i64(ptr align 8 %temp_range, i8 0, i64 16, i1 false), !dbg !5332
  store i32 0, ptr %i, align 4, !dbg !5333
  br label %for.cond, !dbg !5335

for.cond:                                         ; preds = %for.inc83, %entry
  %0 = load i32, ptr %i, align 4, !dbg !5336
  %1 = load ptr, ptr %mem.addr, align 8, !dbg !5338
  %nr_ranges = getelementptr inbounds %struct.crash_mem, ptr %1, i32 0, i32 1, !dbg !5339
  %2 = load i32, ptr %nr_ranges, align 4, !dbg !5339
  %cmp = icmp ult i32 %0, %2, !dbg !5340
  br i1 %cmp, label %for.body, label %for.end85, !dbg !5341

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %mem.addr, align 8, !dbg !5342
  %ranges = getelementptr inbounds %struct.crash_mem, ptr %3, i32 0, i32 2, !dbg !5344
  %4 = load i32, ptr %i, align 4, !dbg !5345
  %idxprom = sext i32 %4 to i64, !dbg !5342
  %arrayidx = getelementptr [0 x %struct.range], ptr %ranges, i64 0, i64 %idxprom, !dbg !5342
  %start1 = getelementptr inbounds %struct.range, ptr %arrayidx, i32 0, i32 0, !dbg !5346
  %5 = load i64, ptr %start1, align 8, !dbg !5346
  store i64 %5, ptr %start, align 8, !dbg !5347
  %6 = load ptr, ptr %mem.addr, align 8, !dbg !5348
  %ranges2 = getelementptr inbounds %struct.crash_mem, ptr %6, i32 0, i32 2, !dbg !5349
  %7 = load i32, ptr %i, align 4, !dbg !5350
  %idxprom3 = sext i32 %7 to i64, !dbg !5348
  %arrayidx4 = getelementptr [0 x %struct.range], ptr %ranges2, i64 0, i64 %idxprom3, !dbg !5348
  %end5 = getelementptr inbounds %struct.range, ptr %arrayidx4, i32 0, i32 1, !dbg !5351
  %8 = load i64, ptr %end5, align 8, !dbg !5351
  store i64 %8, ptr %end, align 8, !dbg !5352
  %9 = load i64, ptr %mstart.addr, align 8, !dbg !5353
  store i64 %9, ptr %p_start, align 8, !dbg !5354
  %10 = load i64, ptr %mend.addr, align 8, !dbg !5355
  store i64 %10, ptr %p_end, align 8, !dbg !5356
  %11 = load i64, ptr %mstart.addr, align 8, !dbg !5357
  %12 = load i64, ptr %end, align 8, !dbg !5359
  %cmp6 = icmp ugt i64 %11, %12, !dbg !5360
  br i1 %cmp6, label %if.then, label %lor.lhs.false, !dbg !5361

lor.lhs.false:                                    ; preds = %for.body
  %13 = load i64, ptr %mend.addr, align 8, !dbg !5362
  %14 = load i64, ptr %start, align 8, !dbg !5363
  %cmp7 = icmp ult i64 %13, %14, !dbg !5364
  br i1 %cmp7, label %if.then, label %if.end, !dbg !5365

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %for.inc83, !dbg !5366

if.end:                                           ; preds = %lor.lhs.false
  %15 = load i64, ptr %mstart.addr, align 8, !dbg !5367
  %16 = load i64, ptr %start, align 8, !dbg !5369
  %cmp8 = icmp ult i64 %15, %16, !dbg !5370
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !5371

if.then9:                                         ; preds = %if.end
  %17 = load i64, ptr %start, align 8, !dbg !5372
  store i64 %17, ptr %p_start, align 8, !dbg !5373
  br label %if.end10, !dbg !5374

if.end10:                                         ; preds = %if.then9, %if.end
  %18 = load i64, ptr %mend.addr, align 8, !dbg !5375
  %19 = load i64, ptr %end, align 8, !dbg !5377
  %cmp11 = icmp ugt i64 %18, %19, !dbg !5378
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !5379

if.then12:                                        ; preds = %if.end10
  %20 = load i64, ptr %end, align 8, !dbg !5380
  store i64 %20, ptr %p_end, align 8, !dbg !5381
  br label %if.end13, !dbg !5382

if.end13:                                         ; preds = %if.then12, %if.end10
  %21 = load i64, ptr %p_start, align 8, !dbg !5383
  %22 = load i64, ptr %start, align 8, !dbg !5385
  %cmp14 = icmp eq i64 %21, %22, !dbg !5386
  br i1 %cmp14, label %land.lhs.true, label %if.end55, !dbg !5387

land.lhs.true:                                    ; preds = %if.end13
  %23 = load i64, ptr %p_end, align 8, !dbg !5388
  %24 = load i64, ptr %end, align 8, !dbg !5389
  %cmp15 = icmp eq i64 %23, %24, !dbg !5390
  br i1 %cmp15, label %if.then16, label %if.end55, !dbg !5391

if.then16:                                        ; preds = %land.lhs.true
  %25 = load ptr, ptr %mem.addr, align 8, !dbg !5392
  %ranges17 = getelementptr inbounds %struct.crash_mem, ptr %25, i32 0, i32 2, !dbg !5394
  %26 = load i32, ptr %i, align 4, !dbg !5395
  %idxprom18 = sext i32 %26 to i64, !dbg !5392
  %arrayidx19 = getelementptr [0 x %struct.range], ptr %ranges17, i64 0, i64 %idxprom18, !dbg !5392
  %start20 = getelementptr inbounds %struct.range, ptr %arrayidx19, i32 0, i32 0, !dbg !5396
  store i64 0, ptr %start20, align 8, !dbg !5397
  %27 = load ptr, ptr %mem.addr, align 8, !dbg !5398
  %ranges21 = getelementptr inbounds %struct.crash_mem, ptr %27, i32 0, i32 2, !dbg !5399
  %28 = load i32, ptr %i, align 4, !dbg !5400
  %idxprom22 = sext i32 %28 to i64, !dbg !5398
  %arrayidx23 = getelementptr [0 x %struct.range], ptr %ranges21, i64 0, i64 %idxprom22, !dbg !5398
  %end24 = getelementptr inbounds %struct.range, ptr %arrayidx23, i32 0, i32 1, !dbg !5401
  store i64 0, ptr %end24, align 8, !dbg !5402
  %29 = load i32, ptr %i, align 4, !dbg !5403
  %30 = load ptr, ptr %mem.addr, align 8, !dbg !5405
  %nr_ranges25 = getelementptr inbounds %struct.crash_mem, ptr %30, i32 0, i32 1, !dbg !5406
  %31 = load i32, ptr %nr_ranges25, align 4, !dbg !5406
  %sub = sub i32 %31, 1, !dbg !5407
  %cmp26 = icmp ult i32 %29, %sub, !dbg !5408
  br i1 %cmp26, label %if.then27, label %if.end52, !dbg !5409

if.then27:                                        ; preds = %if.then16
  %32 = load i32, ptr %i, align 4, !dbg !5410
  store i32 %32, ptr %j, align 4, !dbg !5413
  br label %for.cond28, !dbg !5414

for.cond28:                                       ; preds = %for.inc, %if.then27
  %33 = load i32, ptr %j, align 4, !dbg !5415
  %34 = load ptr, ptr %mem.addr, align 8, !dbg !5417
  %nr_ranges29 = getelementptr inbounds %struct.crash_mem, ptr %34, i32 0, i32 1, !dbg !5418
  %35 = load i32, ptr %nr_ranges29, align 4, !dbg !5418
  %sub30 = sub i32 %35, 1, !dbg !5419
  %cmp31 = icmp ult i32 %33, %sub30, !dbg !5420
  br i1 %cmp31, label %for.body32, label %for.end, !dbg !5421

for.body32:                                       ; preds = %for.cond28
  %36 = load ptr, ptr %mem.addr, align 8, !dbg !5422
  %ranges33 = getelementptr inbounds %struct.crash_mem, ptr %36, i32 0, i32 2, !dbg !5424
  %37 = load i32, ptr %j, align 4, !dbg !5425
  %add = add i32 %37, 1, !dbg !5426
  %idxprom34 = sext i32 %add to i64, !dbg !5422
  %arrayidx35 = getelementptr [0 x %struct.range], ptr %ranges33, i64 0, i64 %idxprom34, !dbg !5422
  %start36 = getelementptr inbounds %struct.range, ptr %arrayidx35, i32 0, i32 0, !dbg !5427
  %38 = load i64, ptr %start36, align 8, !dbg !5427
  %39 = load ptr, ptr %mem.addr, align 8, !dbg !5428
  %ranges37 = getelementptr inbounds %struct.crash_mem, ptr %39, i32 0, i32 2, !dbg !5429
  %40 = load i32, ptr %j, align 4, !dbg !5430
  %idxprom38 = sext i32 %40 to i64, !dbg !5428
  %arrayidx39 = getelementptr [0 x %struct.range], ptr %ranges37, i64 0, i64 %idxprom38, !dbg !5428
  %start40 = getelementptr inbounds %struct.range, ptr %arrayidx39, i32 0, i32 0, !dbg !5431
  store i64 %38, ptr %start40, align 8, !dbg !5432
  %41 = load ptr, ptr %mem.addr, align 8, !dbg !5433
  %ranges41 = getelementptr inbounds %struct.crash_mem, ptr %41, i32 0, i32 2, !dbg !5434
  %42 = load i32, ptr %j, align 4, !dbg !5435
  %add42 = add i32 %42, 1, !dbg !5436
  %idxprom43 = sext i32 %add42 to i64, !dbg !5433
  %arrayidx44 = getelementptr [0 x %struct.range], ptr %ranges41, i64 0, i64 %idxprom43, !dbg !5433
  %end45 = getelementptr inbounds %struct.range, ptr %arrayidx44, i32 0, i32 1, !dbg !5437
  %43 = load i64, ptr %end45, align 8, !dbg !5437
  %44 = load ptr, ptr %mem.addr, align 8, !dbg !5438
  %ranges46 = getelementptr inbounds %struct.crash_mem, ptr %44, i32 0, i32 2, !dbg !5439
  %45 = load i32, ptr %j, align 4, !dbg !5440
  %idxprom47 = sext i32 %45 to i64, !dbg !5438
  %arrayidx48 = getelementptr [0 x %struct.range], ptr %ranges46, i64 0, i64 %idxprom47, !dbg !5438
  %end49 = getelementptr inbounds %struct.range, ptr %arrayidx48, i32 0, i32 1, !dbg !5441
  store i64 %43, ptr %end49, align 8, !dbg !5442
  br label %for.inc, !dbg !5443

for.inc:                                          ; preds = %for.body32
  %46 = load i32, ptr %j, align 4, !dbg !5444
  %inc = add i32 %46, 1, !dbg !5444
  store i32 %inc, ptr %j, align 4, !dbg !5444
  br label %for.cond28, !dbg !5445, !llvm.loop !5446

for.end:                                          ; preds = %for.cond28
  %47 = load i32, ptr %i, align 4, !dbg !5448
  %dec = add i32 %47, -1, !dbg !5448
  store i32 %dec, ptr %i, align 4, !dbg !5448
  %48 = load ptr, ptr %mem.addr, align 8, !dbg !5449
  %nr_ranges50 = getelementptr inbounds %struct.crash_mem, ptr %48, i32 0, i32 1, !dbg !5450
  %49 = load i32, ptr %nr_ranges50, align 4, !dbg !5451
  %dec51 = add i32 %49, -1, !dbg !5451
  store i32 %dec51, ptr %nr_ranges50, align 4, !dbg !5451
  br label %for.inc83, !dbg !5452

if.end52:                                         ; preds = %if.then16
  %50 = load ptr, ptr %mem.addr, align 8, !dbg !5453
  %nr_ranges53 = getelementptr inbounds %struct.crash_mem, ptr %50, i32 0, i32 1, !dbg !5454
  %51 = load i32, ptr %nr_ranges53, align 4, !dbg !5455
  %dec54 = add i32 %51, -1, !dbg !5455
  store i32 %dec54, ptr %nr_ranges53, align 4, !dbg !5455
  store i32 0, ptr %retval, align 4, !dbg !5456
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5456

if.end55:                                         ; preds = %land.lhs.true, %if.end13
  %52 = load i64, ptr %p_start, align 8, !dbg !5457
  %53 = load i64, ptr %start, align 8, !dbg !5459
  %cmp56 = icmp ugt i64 %52, %53, !dbg !5460
  br i1 %cmp56, label %land.lhs.true57, label %if.else, !dbg !5461

land.lhs.true57:                                  ; preds = %if.end55
  %54 = load i64, ptr %p_end, align 8, !dbg !5462
  %55 = load i64, ptr %end, align 8, !dbg !5463
  %cmp58 = icmp ult i64 %54, %55, !dbg !5464
  br i1 %cmp58, label %if.then59, label %if.else, !dbg !5465

if.then59:                                        ; preds = %land.lhs.true57
  %56 = load i64, ptr %p_start, align 8, !dbg !5466
  %sub60 = sub i64 %56, 1, !dbg !5468
  %57 = load ptr, ptr %mem.addr, align 8, !dbg !5469
  %ranges61 = getelementptr inbounds %struct.crash_mem, ptr %57, i32 0, i32 2, !dbg !5470
  %58 = load i32, ptr %i, align 4, !dbg !5471
  %idxprom62 = sext i32 %58 to i64, !dbg !5469
  %arrayidx63 = getelementptr [0 x %struct.range], ptr %ranges61, i64 0, i64 %idxprom62, !dbg !5469
  %end64 = getelementptr inbounds %struct.range, ptr %arrayidx63, i32 0, i32 1, !dbg !5472
  store i64 %sub60, ptr %end64, align 8, !dbg !5473
  %59 = load i64, ptr %p_end, align 8, !dbg !5474
  %add65 = add i64 %59, 1, !dbg !5475
  %start66 = getelementptr inbounds %struct.range, ptr %temp_range, i32 0, i32 0, !dbg !5476
  store i64 %add65, ptr %start66, align 8, !dbg !5477
  %60 = load i64, ptr %end, align 8, !dbg !5478
  %end67 = getelementptr inbounds %struct.range, ptr %temp_range, i32 0, i32 1, !dbg !5479
  store i64 %60, ptr %end67, align 8, !dbg !5480
  br label %if.end82, !dbg !5481

if.else:                                          ; preds = %land.lhs.true57, %if.end55
  %61 = load i64, ptr %p_start, align 8, !dbg !5482
  %62 = load i64, ptr %start, align 8, !dbg !5484
  %cmp68 = icmp ne i64 %61, %62, !dbg !5485
  br i1 %cmp68, label %if.then69, label %if.else75, !dbg !5486

if.then69:                                        ; preds = %if.else
  %63 = load i64, ptr %p_start, align 8, !dbg !5487
  %sub70 = sub i64 %63, 1, !dbg !5488
  %64 = load ptr, ptr %mem.addr, align 8, !dbg !5489
  %ranges71 = getelementptr inbounds %struct.crash_mem, ptr %64, i32 0, i32 2, !dbg !5490
  %65 = load i32, ptr %i, align 4, !dbg !5491
  %idxprom72 = sext i32 %65 to i64, !dbg !5489
  %arrayidx73 = getelementptr [0 x %struct.range], ptr %ranges71, i64 0, i64 %idxprom72, !dbg !5489
  %end74 = getelementptr inbounds %struct.range, ptr %arrayidx73, i32 0, i32 1, !dbg !5492
  store i64 %sub70, ptr %end74, align 8, !dbg !5493
  br label %if.end81, !dbg !5489

if.else75:                                        ; preds = %if.else
  %66 = load i64, ptr %p_end, align 8, !dbg !5494
  %add76 = add i64 %66, 1, !dbg !5495
  %67 = load ptr, ptr %mem.addr, align 8, !dbg !5496
  %ranges77 = getelementptr inbounds %struct.crash_mem, ptr %67, i32 0, i32 2, !dbg !5497
  %68 = load i32, ptr %i, align 4, !dbg !5498
  %idxprom78 = sext i32 %68 to i64, !dbg !5496
  %arrayidx79 = getelementptr [0 x %struct.range], ptr %ranges77, i64 0, i64 %idxprom78, !dbg !5496
  %start80 = getelementptr inbounds %struct.range, ptr %arrayidx79, i32 0, i32 0, !dbg !5499
  store i64 %add76, ptr %start80, align 8, !dbg !5500
  br label %if.end81

if.end81:                                         ; preds = %if.else75, %if.then69
  br label %if.end82

if.end82:                                         ; preds = %if.end81, %if.then59
  br label %for.end85, !dbg !5501

for.inc83:                                        ; preds = %for.end, %if.then
  %69 = load i32, ptr %i, align 4, !dbg !5502
  %inc84 = add i32 %69, 1, !dbg !5502
  store i32 %inc84, ptr %i, align 4, !dbg !5502
  br label %for.cond, !dbg !5503, !llvm.loop !5504

for.end85:                                        ; preds = %if.end82, %for.cond
  %end86 = getelementptr inbounds %struct.range, ptr %temp_range, i32 0, i32 1, !dbg !5506
  %70 = load i64, ptr %end86, align 8, !dbg !5506
  %tobool = icmp ne i64 %70, 0, !dbg !5508
  br i1 %tobool, label %if.end88, label %if.then87, !dbg !5509

if.then87:                                        ; preds = %for.end85
  store i32 0, ptr %retval, align 4, !dbg !5510
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5510

if.end88:                                         ; preds = %for.end85
  %71 = load i32, ptr %i, align 4, !dbg !5511
  %72 = load ptr, ptr %mem.addr, align 8, !dbg !5513
  %max_nr_ranges = getelementptr inbounds %struct.crash_mem, ptr %72, i32 0, i32 0, !dbg !5514
  %73 = load i32, ptr %max_nr_ranges, align 8, !dbg !5514
  %sub89 = sub i32 %73, 1, !dbg !5515
  %cmp90 = icmp eq i32 %71, %sub89, !dbg !5516
  br i1 %cmp90, label %if.then91, label %if.end92, !dbg !5517

if.then91:                                        ; preds = %if.end88
  store i32 -12, ptr %retval, align 4, !dbg !5518
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5518

if.end92:                                         ; preds = %if.end88
  %74 = load i32, ptr %i, align 4, !dbg !5519
  %add93 = add i32 %74, 1, !dbg !5520
  store i32 %add93, ptr %j, align 4, !dbg !5521
  %75 = load i32, ptr %j, align 4, !dbg !5522
  %76 = load ptr, ptr %mem.addr, align 8, !dbg !5524
  %nr_ranges94 = getelementptr inbounds %struct.crash_mem, ptr %76, i32 0, i32 1, !dbg !5525
  %77 = load i32, ptr %nr_ranges94, align 4, !dbg !5525
  %cmp95 = icmp ult i32 %75, %77, !dbg !5526
  br i1 %cmp95, label %if.then96, label %if.end112, !dbg !5527

if.then96:                                        ; preds = %if.end92
  %78 = load ptr, ptr %mem.addr, align 8, !dbg !5528
  %nr_ranges97 = getelementptr inbounds %struct.crash_mem, ptr %78, i32 0, i32 1, !dbg !5531
  %79 = load i32, ptr %nr_ranges97, align 4, !dbg !5531
  %sub98 = sub i32 %79, 1, !dbg !5532
  store i32 %sub98, ptr %i, align 4, !dbg !5533
  br label %for.cond99, !dbg !5534

for.cond99:                                       ; preds = %for.inc109, %if.then96
  %80 = load i32, ptr %i, align 4, !dbg !5535
  %81 = load i32, ptr %j, align 4, !dbg !5537
  %cmp100 = icmp sge i32 %80, %81, !dbg !5538
  br i1 %cmp100, label %for.body101, label %for.end111, !dbg !5539

for.body101:                                      ; preds = %for.cond99
  %82 = load ptr, ptr %mem.addr, align 8, !dbg !5540
  %ranges102 = getelementptr inbounds %struct.crash_mem, ptr %82, i32 0, i32 2, !dbg !5541
  %83 = load i32, ptr %i, align 4, !dbg !5542
  %add103 = add i32 %83, 1, !dbg !5543
  %idxprom104 = sext i32 %add103 to i64, !dbg !5540
  %arrayidx105 = getelementptr [0 x %struct.range], ptr %ranges102, i64 0, i64 %idxprom104, !dbg !5540
  %84 = load ptr, ptr %mem.addr, align 8, !dbg !5544
  %ranges106 = getelementptr inbounds %struct.crash_mem, ptr %84, i32 0, i32 2, !dbg !5545
  %85 = load i32, ptr %i, align 4, !dbg !5546
  %idxprom107 = sext i32 %85 to i64, !dbg !5544
  %arrayidx108 = getelementptr [0 x %struct.range], ptr %ranges106, i64 0, i64 %idxprom107, !dbg !5544
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx105, ptr align 8 %arrayidx108, i64 16, i1 false), !dbg !5544
  br label %for.inc109, !dbg !5540

for.inc109:                                       ; preds = %for.body101
  %86 = load i32, ptr %i, align 4, !dbg !5547
  %dec110 = add i32 %86, -1, !dbg !5547
  store i32 %dec110, ptr %i, align 4, !dbg !5547
  br label %for.cond99, !dbg !5548, !llvm.loop !5549

for.end111:                                       ; preds = %for.cond99
  br label %if.end112, !dbg !5551

if.end112:                                        ; preds = %for.end111, %if.end92
  %start113 = getelementptr inbounds %struct.range, ptr %temp_range, i32 0, i32 0, !dbg !5552
  %87 = load i64, ptr %start113, align 8, !dbg !5552
  %88 = load ptr, ptr %mem.addr, align 8, !dbg !5553
  %ranges114 = getelementptr inbounds %struct.crash_mem, ptr %88, i32 0, i32 2, !dbg !5554
  %89 = load i32, ptr %j, align 4, !dbg !5555
  %idxprom115 = sext i32 %89 to i64, !dbg !5553
  %arrayidx116 = getelementptr [0 x %struct.range], ptr %ranges114, i64 0, i64 %idxprom115, !dbg !5553
  %start117 = getelementptr inbounds %struct.range, ptr %arrayidx116, i32 0, i32 0, !dbg !5556
  store i64 %87, ptr %start117, align 8, !dbg !5557
  %end118 = getelementptr inbounds %struct.range, ptr %temp_range, i32 0, i32 1, !dbg !5558
  %90 = load i64, ptr %end118, align 8, !dbg !5558
  %91 = load ptr, ptr %mem.addr, align 8, !dbg !5559
  %ranges119 = getelementptr inbounds %struct.crash_mem, ptr %91, i32 0, i32 2, !dbg !5560
  %92 = load i32, ptr %j, align 4, !dbg !5561
  %idxprom120 = sext i32 %92 to i64, !dbg !5559
  %arrayidx121 = getelementptr [0 x %struct.range], ptr %ranges119, i64 0, i64 %idxprom120, !dbg !5559
  %end122 = getelementptr inbounds %struct.range, ptr %arrayidx121, i32 0, i32 1, !dbg !5562
  store i64 %90, ptr %end122, align 8, !dbg !5563
  %93 = load ptr, ptr %mem.addr, align 8, !dbg !5564
  %nr_ranges123 = getelementptr inbounds %struct.crash_mem, ptr %93, i32 0, i32 1, !dbg !5565
  %94 = load i32, ptr %nr_ranges123, align 4, !dbg !5566
  %inc124 = add i32 %94, 1, !dbg !5566
  store i32 %inc124, ptr %nr_ranges123, align 4, !dbg !5566
  store i32 0, ptr %retval, align 4, !dbg !5567
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5567

cleanup:                                          ; preds = %if.end112, %if.then91, %if.then87, %if.end52
  call void @llvm.lifetime.end.p0(i64 16, ptr %temp_range) #16, !dbg !5568
  call void @llvm.lifetime.end.p0(i64 8, ptr %p_end) #16, !dbg !5568
  call void @llvm.lifetime.end.p0(i64 8, ptr %p_start) #16, !dbg !5568
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #16, !dbg !5568
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #16, !dbg !5568
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #16, !dbg !5568
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !5568
  %95 = load i32, ptr %retval, align 4, !dbg !5568
  ret i32 %95, !dbg !5568
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @append_elf_note(ptr noundef %buf, ptr noundef %name, i32 noundef %type, ptr noundef %data, i64 noundef %data_len) #2 align 16 !dbg !5569 {
entry:
  %buf.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %data_len.addr = alloca i64, align 8
  %note = alloca ptr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5574, metadata !DIExpression()), !dbg !5580
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5575, metadata !DIExpression()), !dbg !5581
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5576, metadata !DIExpression()), !dbg !5582
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5577, metadata !DIExpression()), !dbg !5583
  store i64 %data_len, ptr %data_len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data_len.addr, metadata !5578, metadata !DIExpression()), !dbg !5584
  call void @llvm.lifetime.start.p0(i64 8, ptr %note) #16, !dbg !5585
  call void @llvm.dbg.declare(metadata ptr %note, metadata !5579, metadata !DIExpression()), !dbg !5586
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !5587
  store ptr %0, ptr %note, align 8, !dbg !5586
  %1 = load ptr, ptr %name.addr, align 8, !dbg !5588
  %call = call i64 @strlen(ptr noundef %1) #17, !dbg !5589
  %add = add i64 %call, 1, !dbg !5590
  %conv = trunc i64 %add to i32, !dbg !5589
  %2 = load ptr, ptr %note, align 8, !dbg !5591
  %n_namesz = getelementptr inbounds %struct.elf64_note, ptr %2, i32 0, i32 0, !dbg !5592
  store i32 %conv, ptr %n_namesz, align 4, !dbg !5593
  %3 = load i64, ptr %data_len.addr, align 8, !dbg !5594
  %conv1 = trunc i64 %3 to i32, !dbg !5594
  %4 = load ptr, ptr %note, align 8, !dbg !5595
  %n_descsz = getelementptr inbounds %struct.elf64_note, ptr %4, i32 0, i32 1, !dbg !5596
  store i32 %conv1, ptr %n_descsz, align 4, !dbg !5597
  %5 = load i32, ptr %type.addr, align 4, !dbg !5598
  %6 = load ptr, ptr %note, align 8, !dbg !5599
  %n_type = getelementptr inbounds %struct.elf64_note, ptr %6, i32 0, i32 2, !dbg !5600
  store i32 %5, ptr %n_type, align 4, !dbg !5601
  %7 = load ptr, ptr %buf.addr, align 8, !dbg !5602
  %add.ptr = getelementptr i32, ptr %7, i64 3, !dbg !5602
  store ptr %add.ptr, ptr %buf.addr, align 8, !dbg !5602
  %8 = load ptr, ptr %buf.addr, align 8, !dbg !5603
  %9 = load ptr, ptr %name.addr, align 8, !dbg !5604
  %10 = load ptr, ptr %note, align 8, !dbg !5605
  %n_namesz2 = getelementptr inbounds %struct.elf64_note, ptr %10, i32 0, i32 0, !dbg !5606
  %11 = load i32, ptr %n_namesz2, align 4, !dbg !5606
  %conv3 = zext i32 %11 to i64, !dbg !5605
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %8, ptr align 1 %9, i64 %conv3, i1 false), !dbg !5607
  %12 = load ptr, ptr %note, align 8, !dbg !5608
  %n_namesz4 = getelementptr inbounds %struct.elf64_note, ptr %12, i32 0, i32 0, !dbg !5608
  %13 = load i32, ptr %n_namesz4, align 4, !dbg !5608
  %conv5 = zext i32 %13 to i64, !dbg !5608
  %add6 = add i64 %conv5, 4, !dbg !5608
  %sub = sub i64 %add6, 1, !dbg !5608
  %div = udiv i64 %sub, 4, !dbg !5608
  %14 = load ptr, ptr %buf.addr, align 8, !dbg !5609
  %add.ptr7 = getelementptr i32, ptr %14, i64 %div, !dbg !5609
  store ptr %add.ptr7, ptr %buf.addr, align 8, !dbg !5609
  %15 = load ptr, ptr %buf.addr, align 8, !dbg !5610
  %16 = load ptr, ptr %data.addr, align 8, !dbg !5611
  %17 = load i64, ptr %data_len.addr, align 8, !dbg !5612
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %15, ptr align 1 %16, i64 %17, i1 false), !dbg !5613
  %18 = load i64, ptr %data_len.addr, align 8, !dbg !5614
  %add8 = add i64 %18, 4, !dbg !5614
  %sub9 = sub i64 %add8, 1, !dbg !5614
  %div10 = udiv i64 %sub9, 4, !dbg !5614
  %19 = load ptr, ptr %buf.addr, align 8, !dbg !5615
  %add.ptr11 = getelementptr i32, ptr %19, i64 %div10, !dbg !5615
  store ptr %add.ptr11, ptr %buf.addr, align 8, !dbg !5615
  %20 = load ptr, ptr %buf.addr, align 8, !dbg !5616
  call void @llvm.lifetime.end.p0(i64 8, ptr %note) #16, !dbg !5617
  ret ptr %20, !dbg !5618
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5619 dso_local i64 @strlen(ptr noundef) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @final_note(ptr noundef %buf) #2 align 16 !dbg !5623 {
entry:
  %buf.addr = alloca ptr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5627, metadata !DIExpression()), !dbg !5628
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !5629
  call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 12, i1 false), !dbg !5630
  ret void, !dbg !5631
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @crash_update_vmcoreinfo_safecopy(ptr noundef %ptr) #2 align 16 !dbg !5632 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5634, metadata !DIExpression()), !dbg !5635
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5636
  %tobool = icmp ne ptr %0, null, !dbg !5636
  br i1 %tobool, label %if.then, label %if.end, !dbg !5638

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %ptr.addr, align 8, !dbg !5639
  %2 = load ptr, ptr @vmcoreinfo_data, align 8, !dbg !5640
  %3 = load i64, ptr @vmcoreinfo_size, align 8, !dbg !5641
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %3, i1 false), !dbg !5642
  br label %if.end, !dbg !5642

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %ptr.addr, align 8, !dbg !5643
  store ptr %4, ptr @vmcoreinfo_data_safecopy, align 8, !dbg !5644
  ret void, !dbg !5645
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @crash_save_vmcoreinfo() #2 align 16 !dbg !5646 {
entry:
  %0 = load ptr, ptr @vmcoreinfo_note, align 8, !dbg !5647
  %tobool = icmp ne ptr %0, null, !dbg !5647
  br i1 %tobool, label %if.end, label %if.then, !dbg !5649

if.then:                                          ; preds = %entry
  br label %return, !dbg !5650

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @vmcoreinfo_data_safecopy, align 8, !dbg !5651
  %tobool1 = icmp ne ptr %1, null, !dbg !5651
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !5653

if.then2:                                         ; preds = %if.end
  %2 = load ptr, ptr @vmcoreinfo_data_safecopy, align 8, !dbg !5654
  store ptr %2, ptr @vmcoreinfo_data, align 8, !dbg !5655
  br label %if.end3, !dbg !5656

if.end3:                                          ; preds = %if.then2, %if.end
  %call = call i64 @ktime_get_real_seconds() #17, !dbg !5657
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str.2, i64 noundef %call) #17, !dbg !5658
  call void @update_vmcoreinfo_note() #17, !dbg !5659
  br label %return, !dbg !5660

return:                                           ; preds = %if.end3, %if.then
  ret void, !dbg !5660
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @vmcoreinfo_append_str(ptr noundef %fmt, ...) #2 align 16 !dbg !4523 {
entry:
  %fmt.addr = alloca ptr, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %buf = alloca [80 x i8], align 16
  %r = alloca i64, align 8
  %__UNIQUE_ID___x321 = alloca i64, align 8
  %__UNIQUE_ID___y322 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp20 = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp58 = alloca i64, align 8
  %tmp67 = alloca i64, align 8
  store ptr %fmt, ptr %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fmt.addr, metadata !4527, metadata !DIExpression()), !dbg !5661
  call void @llvm.lifetime.start.p0(i64 24, ptr %args) #16, !dbg !5662
  call void @llvm.dbg.declare(metadata ptr %args, metadata !4528, metadata !DIExpression()), !dbg !5663
  call void @llvm.lifetime.start.p0(i64 80, ptr %buf) #16, !dbg !5664
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !4539, metadata !DIExpression()), !dbg !5665
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #16, !dbg !5666
  call void @llvm.dbg.declare(metadata ptr %r, metadata !4543, metadata !DIExpression()), !dbg !5667
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !5668
  call void @llvm.va_start(ptr %arraydecay), !dbg !5668
  %arraydecay1 = getelementptr inbounds [80 x i8], ptr %buf, i64 0, i64 0, !dbg !5669
  %0 = load ptr, ptr %fmt.addr, align 8, !dbg !5670
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !5671
  %call = call i32 @vscnprintf(ptr noundef %arraydecay1, i64 noundef 80, ptr noundef %0, ptr noundef %arraydecay2) #17, !dbg !5672
  %conv = sext i32 %call to i64, !dbg !5672
  store i64 %conv, ptr %r, align 8, !dbg !5673
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !5674
  call void @llvm.va_end(ptr %arraydecay3), !dbg !5674
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x321) #16, !dbg !5675
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x321, metadata !4544, metadata !DIExpression()), !dbg !5675
  %1 = load i64, ptr %r, align 8, !dbg !5675
  store i64 %1, ptr %__UNIQUE_ID___x321, align 8, !dbg !5675
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y322) #16, !dbg !5675
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y322, metadata !4546, metadata !DIExpression()), !dbg !5675
  %2 = load i64, ptr @vmcoreinfo_size, align 8, !dbg !5675
  %sub = sub i64 4096, %2, !dbg !5675
  store i64 %sub, ptr %__UNIQUE_ID___y322, align 8, !dbg !5675
  %3 = load i64, ptr %__UNIQUE_ID___x321, align 8, !dbg !5675
  %4 = load i64, ptr %__UNIQUE_ID___y322, align 8, !dbg !5675
  %cmp = icmp ult i64 %3, %4, !dbg !5675
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5675

cond.true:                                        ; preds = %entry
  %5 = load i64, ptr %__UNIQUE_ID___x321, align 8, !dbg !5675
  br label %cond.end, !dbg !5675

cond.false:                                       ; preds = %entry
  %6 = load i64, ptr %__UNIQUE_ID___y322, align 8, !dbg !5675
  br label %cond.end, !dbg !5675

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %5, %cond.true ], [ %6, %cond.false ], !dbg !5675
  store i64 %cond, ptr %tmp, align 8, !dbg !5675
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y322) #16, !dbg !5676
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x321) #16, !dbg !5676
  %7 = load i64, ptr %tmp, align 8, !dbg !5675
  store i64 %7, ptr %r, align 8, !dbg !5677
  %8 = load ptr, ptr @vmcoreinfo_data, align 8, !dbg !5678
  %9 = load i64, ptr @vmcoreinfo_size, align 8, !dbg !5679
  %arrayidx = getelementptr i8, ptr %8, i64 %9, !dbg !5678
  %arraydecay5 = getelementptr inbounds [80 x i8], ptr %buf, i64 0, i64 0, !dbg !5680
  %10 = load i64, ptr %r, align 8, !dbg !5681
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arrayidx, ptr align 16 %arraydecay5, i64 %10, i1 false), !dbg !5680
  %11 = load i64, ptr %r, align 8, !dbg !5682
  %12 = load i64, ptr @vmcoreinfo_size, align 8, !dbg !5683
  %add = add i64 %12, %11, !dbg !5683
  store i64 %add, ptr @vmcoreinfo_size, align 8, !dbg !5683
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #16, !dbg !5684
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !4547, metadata !DIExpression()), !dbg !5684
  %13 = load i64, ptr @vmcoreinfo_size, align 8, !dbg !5684
  %cmp6 = icmp eq i64 %13, 4096, !dbg !5684
  %lnot = xor i1 %cmp6, true, !dbg !5684
  %lnot8 = xor i1 %lnot, true, !dbg !5684
  %frombool = zext i1 %lnot8 to i8, !dbg !5684
  store i8 %frombool, ptr %__ret_do_once, align 1, !dbg !5684
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #16, !dbg !5685
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !4549, metadata !DIExpression()), !dbg !5685
  %14 = load i8, ptr %__ret_do_once, align 1, !dbg !5685, !range !5686, !noundef !1276
  %tobool = trunc i8 %14 to i1, !dbg !5685
  %lnot9 = xor i1 %tobool, true, !dbg !5685
  %lnot10 = xor i1 %lnot9, true, !dbg !5685
  %frombool11 = zext i1 %lnot10 to i8, !dbg !5685
  store i8 %frombool11, ptr %__ret_cond, align 1, !dbg !5685
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #16, !dbg !5685
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !4552, metadata !DIExpression()), !dbg !5685
  store i8 0, ptr %__ret_once, align 1, !dbg !5685
  %15 = load i8, ptr %__ret_cond, align 1, !dbg !5687, !range !5686, !noundef !1276
  %tobool12 = trunc i8 %15 to i1, !dbg !5687
  br i1 %tobool12, label %land.rhs, label %land.end, !dbg !5687

land.rhs:                                         ; preds = %cond.end
  %16 = load i8, ptr @vmcoreinfo_append_str.__already_done, align 1, !dbg !5687, !range !5686, !noundef !1276
  %tobool14 = trunc i8 %16 to i1, !dbg !5687
  %lnot15 = xor i1 %tobool14, true, !dbg !5687
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.end
  %17 = phi i1 [ false, %cond.end ], [ %lnot15, %land.rhs ], !dbg !5689
  %lnot16 = xor i1 %17, true, !dbg !5687
  %lnot17 = xor i1 %lnot16, true, !dbg !5687
  %lnot.ext = zext i1 %lnot17 to i32, !dbg !5687
  %conv18 = sext i32 %lnot.ext to i64, !dbg !5687
  %expval = call i64 @llvm.expect.i64(i64 %conv18, i64 0), !dbg !5687
  %tobool19 = icmp ne i64 %expval, 0, !dbg !5687
  br i1 %tobool19, label %if.then, label %if.end, !dbg !5685

if.then:                                          ; preds = %land.end
  store i8 1, ptr @vmcoreinfo_append_str.__already_done, align 1, !dbg !5690
  store i8 1, ptr %__ret_once, align 1, !dbg !5690
  br label %if.end, !dbg !5690

if.end:                                           ; preds = %if.then, %land.end
  %18 = load i8, ptr %__ret_once, align 1, !dbg !5685, !range !5686, !noundef !1276
  %tobool21 = trunc i8 %18 to i1, !dbg !5685
  %lnot22 = xor i1 %tobool21, true, !dbg !5685
  %lnot24 = xor i1 %lnot22, true, !dbg !5685
  %lnot.ext25 = zext i1 %lnot24 to i32, !dbg !5685
  %conv26 = sext i32 %lnot.ext25 to i64, !dbg !5685
  %expval27 = call i64 @llvm.expect.i64(i64 %conv26, i64 0), !dbg !5685
  store i64 %expval27, ptr %tmp20, align 8, !dbg !5687
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #16, !dbg !5692
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #16, !dbg !5692
  %19 = load i64, ptr %tmp20, align 8, !dbg !5685
  %tobool28 = icmp ne i64 %19, 0, !dbg !5692
  br i1 %tobool28, label %if.then29, label %if.end66, !dbg !5684

if.then29:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !5693
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4553, metadata !DIExpression()), !dbg !5693
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !5693
  %20 = load i32, ptr %__ret_warn_on, align 4, !dbg !5694
  %tobool30 = icmp ne i32 %20, 0, !dbg !5694
  %lnot31 = xor i1 %tobool30, true, !dbg !5694
  %lnot33 = xor i1 %lnot31, true, !dbg !5694
  %lnot.ext34 = zext i1 %lnot33 to i32, !dbg !5694
  %conv35 = sext i32 %lnot.ext34 to i64, !dbg !5694
  %expval36 = call i64 @llvm.expect.i64(i64 %conv35, i64 0), !dbg !5694
  %tobool37 = icmp ne i64 %expval36, 0, !dbg !5694
  br i1 %tobool37, label %if.then38, label %if.end57, !dbg !5693

if.then38:                                        ; preds = %if.then29
  br label %do.body, !dbg !5694

do.body:                                          ; preds = %if.then38
  br label %do.body39, !dbg !5695

do.body39:                                        ; preds = %do.body
  br label %do.cond, !dbg !5696

do.cond:                                          ; preds = %do.body39
  br label %do.end, !dbg !5696

do.end:                                           ; preds = %do.cond
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.3) #17, !dbg !5695
  br label %do.body40, !dbg !5695

do.body40:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !5698
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4555, metadata !DIExpression()), !dbg !5698
  store i32 2313, ptr %__flags, align 4, !dbg !5698
  br label %do.body41, !dbg !5698

do.body41:                                        ; preds = %do.body40
  br label %do.cond42, !dbg !5699

do.cond42:                                        ; preds = %do.body41
  br label %do.end43, !dbg !5699

do.end43:                                         ; preds = %do.cond42
  br label %do.body44, !dbg !5698

do.body44:                                        ; preds = %do.end43
  %21 = load i32, ptr %__flags, align 4, !dbg !5701
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, i32 576, i32 %21, i64 12) #16, !dbg !5701, !srcloc !5703
  br label %do.cond45, !dbg !5701

do.cond45:                                        ; preds = %do.body44
  br label %do.end46, !dbg !5701

do.end46:                                         ; preds = %do.cond45
  br label %do.body47, !dbg !5698

do.body47:                                        ; preds = %do.end46
  br label %do.cond48, !dbg !5704

do.cond48:                                        ; preds = %do.body47
  br label %do.end49, !dbg !5704

do.end49:                                         ; preds = %do.cond48
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !5695
  br label %do.cond50, !dbg !5698

do.cond50:                                        ; preds = %do.end49
  br label %do.end51, !dbg !5698

do.end51:                                         ; preds = %do.cond50
  br label %do.body52, !dbg !5695

do.body52:                                        ; preds = %do.end51
  br label %do.cond53, !dbg !5706

do.cond53:                                        ; preds = %do.body52
  br label %do.end54, !dbg !5706

do.end54:                                         ; preds = %do.cond53
  br label %do.cond55, !dbg !5695

do.cond55:                                        ; preds = %do.end54
  br label %do.end56, !dbg !5695

do.end56:                                         ; preds = %do.cond55
  br label %if.end57, !dbg !5695

if.end57:                                         ; preds = %do.end56, %if.then29
  %22 = load i32, ptr %__ret_warn_on, align 4, !dbg !5693
  %tobool59 = icmp ne i32 %22, 0, !dbg !5693
  %lnot60 = xor i1 %tobool59, true, !dbg !5693
  %lnot62 = xor i1 %lnot60, true, !dbg !5693
  %lnot.ext63 = zext i1 %lnot62 to i32, !dbg !5693
  %conv64 = sext i32 %lnot.ext63 to i64, !dbg !5693
  %expval65 = call i64 @llvm.expect.i64(i64 %conv64, i64 0), !dbg !5693
  store i64 %expval65, ptr %tmp58, align 8, !dbg !5694
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !5692
  %23 = load i64, ptr %tmp58, align 8, !dbg !5693
  br label %if.end66, !dbg !5692

if.end66:                                         ; preds = %if.end57, %if.end
  %24 = load i8, ptr %__ret_do_once, align 1, !dbg !5684, !range !5686, !noundef !1276
  %tobool68 = trunc i8 %24 to i1, !dbg !5684
  %lnot69 = xor i1 %tobool68, true, !dbg !5684
  %lnot71 = xor i1 %lnot69, true, !dbg !5684
  %lnot.ext72 = zext i1 %lnot71 to i32, !dbg !5684
  %conv73 = sext i32 %lnot.ext72 to i64, !dbg !5684
  %expval74 = call i64 @llvm.expect.i64(i64 %conv73, i64 0), !dbg !5684
  store i64 %expval74, ptr %tmp67, align 8, !dbg !5692
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #16, !dbg !5708
  %25 = load i64, ptr %tmp67, align 8, !dbg !5684
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #16, !dbg !5709
  call void @llvm.lifetime.end.p0(i64 80, ptr %buf) #16, !dbg !5709
  call void @llvm.lifetime.end.p0(i64 24, ptr %args) #16, !dbg !5709
  ret void, !dbg !5709
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5710 dso_local i64 @ktime_get_real_seconds() #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @update_vmcoreinfo_note() #2 align 16 !dbg !5714 {
entry:
  %buf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #16, !dbg !5717
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !5716, metadata !DIExpression()), !dbg !5718
  %0 = load ptr, ptr @vmcoreinfo_note, align 8, !dbg !5719
  store ptr %0, ptr %buf, align 8, !dbg !5718
  %1 = load i64, ptr @vmcoreinfo_size, align 8, !dbg !5720
  %tobool = icmp ne i64 %1, 0, !dbg !5720
  br i1 %tobool, label %if.end, label %if.then, !dbg !5722

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5723

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %buf, align 8, !dbg !5724
  %3 = load ptr, ptr @vmcoreinfo_data, align 8, !dbg !5725
  %4 = load i64, ptr @vmcoreinfo_size, align 8, !dbg !5726
  %call = call ptr @append_elf_note(ptr noundef %2, ptr noundef @.str.18, i32 noundef 0, ptr noundef %3, i64 noundef %4) #17, !dbg !5727
  store ptr %call, ptr %buf, align 8, !dbg !5728
  %5 = load ptr, ptr %buf, align 8, !dbg !5729
  call void @final_note(ptr noundef %5) #17, !dbg !5730
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5731
  br label %cleanup, !dbg !5731

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #16, !dbg !5731
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5731

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5732 dso_local i32 @vscnprintf(ptr noundef, i64 noundef, ptr noundef, ptr noundef) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #10

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5737 dso_local void @__warn_printk(ptr noundef, ...) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden void @arch_crash_save_vmcoreinfo() #2 align 16 !dbg !5738 {
entry:
  ret void, !dbg !5739
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__phys_addr_nodebug(i64 noundef %x) #11 align 16 !dbg !5740 {
entry:
  %x.addr = alloca i64, align 8
  %y = alloca i64, align 8
  store i64 %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !5745, metadata !DIExpression()), !dbg !5747
  call void @llvm.lifetime.start.p0(i64 8, ptr %y) #16, !dbg !5748
  call void @llvm.dbg.declare(metadata ptr %y, metadata !5746, metadata !DIExpression()), !dbg !5749
  %0 = load i64, ptr %x.addr, align 8, !dbg !5750
  %sub = sub i64 %0, -2147483648, !dbg !5751
  store i64 %sub, ptr %y, align 8, !dbg !5749
  %1 = load i64, ptr %y, align 8, !dbg !5752
  %2 = load i64, ptr %x.addr, align 8, !dbg !5753
  %3 = load i64, ptr %y, align 8, !dbg !5754
  %cmp = icmp ugt i64 %2, %3, !dbg !5755
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5756

cond.true:                                        ; preds = %entry
  %4 = load i64, ptr @phys_base, align 8, !dbg !5757
  br label %cond.end, !dbg !5756

cond.false:                                       ; preds = %entry
  %5 = load i64, ptr @page_offset_base, align 8, !dbg !5758
  %sub1 = sub i64 -2147483648, %5, !dbg !5759
  br label %cond.end, !dbg !5756

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ %sub1, %cond.false ], !dbg !5756
  %add = add i64 %1, %cond, !dbg !5760
  store i64 %add, ptr %x.addr, align 8, !dbg !5761
  %6 = load i64, ptr %x.addr, align 8, !dbg !5762
  call void @llvm.lifetime.end.p0(i64 8, ptr %y) #16, !dbg !5763
  ret i64 %6, !dbg !5764
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_crash_core__324_702_crash_save_vmcoreinfo_init4() #0 section ".init.text" align 16 !dbg !5765 {
entry:
  %call = call i32 @crash_save_vmcoreinfo_init() #15, !dbg !5766
  ret i32 %call, !dbg !5766
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @crash_save_vmcoreinfo_init() #0 section ".init.text" align 16 !dbg !5767 {
entry:
  %retval = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp7 = alloca i32, align 4
  %call = call i64 @get_zeroed_page(i32 noundef 3264) #17, !dbg !5768
  %0 = inttoptr i64 %call to ptr, !dbg !5769
  store ptr %0, ptr @vmcoreinfo_data, align 8, !dbg !5770
  %1 = load ptr, ptr @vmcoreinfo_data, align 8, !dbg !5771
  %tobool = icmp ne ptr %1, null, !dbg !5771
  br i1 %tobool, label %if.end, label %if.then, !dbg !5773

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5774

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !5777

do.end:                                           ; preds = %do.body
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef @.str.19) #15, !dbg !5774
  store i32 %call1, ptr %tmp, align 4, !dbg !5777
  %2 = load i32, ptr %tmp, align 4, !dbg !5774
  store i32 -12, ptr %retval, align 4, !dbg !5779
  br label %return, !dbg !5779

if.end:                                           ; preds = %entry
  %call2 = call noalias ptr @alloc_pages_exact(i64 noundef 4132, i32 noundef 3520) #18, !dbg !5780
  store ptr %call2, ptr @vmcoreinfo_note, align 8, !dbg !5781
  %3 = load ptr, ptr @vmcoreinfo_note, align 8, !dbg !5782
  %tobool3 = icmp ne ptr %3, null, !dbg !5782
  br i1 %tobool3, label %if.end9, label %if.then4, !dbg !5784

if.then4:                                         ; preds = %if.end
  %4 = load ptr, ptr @vmcoreinfo_data, align 8, !dbg !5785
  %5 = ptrtoint ptr %4 to i64, !dbg !5785
  call void @free_pages(i64 noundef %5, i32 noundef 0) #17, !dbg !5785
  store ptr null, ptr @vmcoreinfo_data, align 8, !dbg !5787
  br label %do.body5, !dbg !5788

do.body5:                                         ; preds = %if.then4
  br label %do.end6, !dbg !5790

do.end6:                                          ; preds = %do.body5
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef @.str.20) #15, !dbg !5788
  store i32 %call8, ptr %tmp7, align 4, !dbg !5790
  %6 = load i32, ptr %tmp7, align 4, !dbg !5788
  store i32 -12, ptr %retval, align 4, !dbg !5792
  br label %return, !dbg !5792

if.end9:                                          ; preds = %if.end
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str.21, ptr noundef getelementptr inbounds (%struct.new_utsname, ptr @init_uts_ns, i32 0, i32 2)) #17, !dbg !5793
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str.22, ptr noundef @vmlinux_build_id) #17, !dbg !5794
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str.23, i64 noundef 4096) #17, !dbg !5796
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str.24, ptr noundef @.str.25, i64 noundef ptrtoint (ptr @init_uts_ns to i64)) #17, !dbg !5797
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str.26, ptr noundef @.str.27, ptr noundef @.str.28, i64 noundef 0) #17, !dbg !5798
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str.24, ptr noundef @.str.29, i64 noundef ptrtoint (ptr getelementptr inbounds ([6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 1) to i64)) #17, !dbg !5799
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str.24, ptr noundef @.str.30, i64 noundef ptrtoint (ptr @init_top_pgt to i64)) #17, !dbg !5800
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str.24, ptr noundef @.str.31, i64 noundef ptrtoint (ptr @_stext to i64)) #17, !dbg !5801
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str.24, ptr noundef @.str.32, i64 noundef ptrtoint (ptr @vmap_area_list to i64)) #17, !dbg !5802
  %7 = load ptr, ptr @mem_section, align 8, !dbg !5803
  %8 = ptrtoint ptr %7 to i64, !dbg !5803
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str.24, ptr noundef @.str.33, i64 noundef %8) #17, !dbg !5803
  %call10 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 528) #17, !dbg !5804
  %9 = zext i1 %call10 to i64, !dbg !5804
  %cond = select i1 %call10, i32 52, i32 46, !dbg !5804
  %sub = sub i32 %cond, 27, !dbg !5804
  %sh_prom = zext i32 %sub to i64, !dbg !5804
  %shl = shl i64 1, %sh_prom, !dbg !5804
  %add = add i64 %shl, 256, !dbg !5804
  %sub11 = sub i64 %add, 1, !dbg !5804
  %div = udiv i64 %sub11, 256, !dbg !5804
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str.34, ptr noundef @.str.33, i64 noundef %div) #17, !dbg !5804
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str.35, ptr noundef @.str.33, i64 noundef 16) #17, !dbg !5805
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str.26, ptr noundef @.str.33, ptr noundef @.str.36, i64 noundef 0) #17, !dbg !5806
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str.37, ptr noundef @.str.38, i64 noundef 27) #17, !dbg !5807
  %call12 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 528) #17, !dbg !5808
  %10 = zext i1 %call12 to i64, !dbg !5808
  %cond13 = select i1 %call12, i32 52, i32 46, !dbg !5808
  %conv = sext i32 %cond13 to i64, !dbg !5808
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str.37, ptr noundef @.str.39, i64 noundef %conv) #17, !dbg !5808
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str.35, ptr noundef @.str.40, i64 noundef 64) #17, !dbg !5809
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str.35, ptr noundef @.str.41, i64 noundef 14016) #17, !dbg !5810
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str.35, ptr noundef @.str.42, i64 noundef 1216) #17, !dbg !5811
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str.35, ptr noundef @.str.43, i64 noundef 72) #17, !dbg !5812
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str.35, ptr noundef @.str.44, i64 noundef 16) #17, !dbg !5813
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str.35, ptr noundef @.str.45, i64 noundef 8) #17, !dbg !5814
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str.26, ptr noundef @.str.40, ptr noundef @.str.46, i64 noundef 0) #17, !dbg !5815
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str.26, ptr noundef @.str.40, ptr noundef @.str.47, i64 noundef 52) #17, !dbg !5816
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str.26, ptr noundef @.str.40, ptr noundef @.str.48, i64 noundef 24) #17, !dbg !5817
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str.26, ptr noundef @.str.40, ptr noundef @.str.49, i64 noundef 8) #17, !dbg !5818
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str.26, ptr noundef @.str.40, ptr noundef @.str.50, i64 noundef 48) #17, !dbg !5819
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str.26, ptr noundef @.str.40, ptr noundef @.str.51, i64 noundef 40) #17, !dbg !5820
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str.26, ptr noundef @.str.40, ptr noundef @.str.52, i64 noundef 8) #17, !dbg !5821
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str.26, ptr noundef @.str.41, ptr noundef @.str.53, i64 noundef 0) #17, !dbg !5822
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str.26, ptr noundef @.str.41, ptr noundef @.str.54, i64 noundef 13088) #17, !dbg !5823
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str.26, ptr noundef @.str.41, ptr noundef @.str.55, i64 noundef 13096) #17, !dbg !5824
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str.26, ptr noundef @.str.41, ptr noundef @.str.56, i64 noundef 13112) #17, !dbg !5825
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str.26, ptr noundef @.str.41, ptr noundef @.str.57, i64 noundef 13120) #17, !dbg !5826
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str.26, ptr noundef @.str.42, ptr noundef @.str.43, i64 noundef 192) #17, !dbg !5827
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str.26, ptr noundef @.str.42, ptr noundef @.str.58, i64 noundef 1088) #17, !dbg !5828
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str.26, ptr noundef @.str.42, ptr noundef @.str.59, i64 noundef 136) #17, !dbg !5829
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str.26, ptr noundef @.str.43, ptr noundef @.str.60, i64 noundef 0) #17, !dbg !5830
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str.26, ptr noundef @.str.44, ptr noundef @.str.61, i64 noundef 0) #17, !dbg !5831
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str.26, ptr noundef @.str.44, ptr noundef @.str.62, i64 noundef 8) #17, !dbg !5832
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str.26, ptr noundef @.str.63, ptr noundef @.str.64, i64 noundef 0) #17, !dbg !5833
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str.26, ptr noundef @.str.63, ptr noundef @.str.65, i64 noundef 40) #17, !dbg !5834
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str.34, ptr noundef @.str.66, i64 noundef 11) #17, !dbg !5835
  call void @log_buf_vmcoreinfo_setup() #17, !dbg !5836
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str.34, ptr noundef @.str.67, i64 noundef 4) #17, !dbg !5837
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str.37, ptr noundef @.str.68, i64 noundef 0) #17, !dbg !5838
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str.37, ptr noundef @.str.69, i64 noundef 5) #17, !dbg !5839
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str.37, ptr noundef @.str.70, i64 noundef 15) #17, !dbg !5840
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str.37, ptr noundef @.str.71, i64 noundef 12) #17, !dbg !5841
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str.37, ptr noundef @.str.72, i64 noundef 19) #17, !dbg !5842
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str.37, ptr noundef @.str.73, i64 noundef 11) #17, !dbg !5843
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str.37, ptr noundef @.str.74, i64 noundef 64) #17, !dbg !5844
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str.37, ptr noundef @.str.75, i64 noundef -129) #17, !dbg !5845
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str.37, ptr noundef @.str.76, i64 noundef -2049) #17, !dbg !5846
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str.37, ptr noundef @.str.77, i64 noundef -257) #17, !dbg !5847
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str.24, ptr noundef @.str.78, i64 noundef ptrtoint (ptr @kallsyms_names to i64)) #17, !dbg !5848
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str.24, ptr noundef @.str.79, i64 noundef ptrtoint (ptr @kallsyms_num_syms to i64)) #17, !dbg !5849
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str.24, ptr noundef @.str.80, i64 noundef ptrtoint (ptr @kallsyms_token_table to i64)) #17, !dbg !5850
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str.24, ptr noundef @.str.81, i64 noundef ptrtoint (ptr @kallsyms_token_index to i64)) #17, !dbg !5851
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str.24, ptr noundef @.str.82, i64 noundef ptrtoint (ptr @kallsyms_offsets to i64)) #17, !dbg !5852
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str.24, ptr noundef @.str.83, i64 noundef ptrtoint (ptr @kallsyms_relative_base to i64)) #17, !dbg !5853
  call void @arch_crash_save_vmcoreinfo() #17, !dbg !5854
  call void @update_vmcoreinfo_note() #17, !dbg !5855
  store i32 0, ptr %retval, align 4, !dbg !5856
  br label %return, !dbg !5856

return:                                           ; preds = %if.end9, %do.end6, %do.end
  %11 = load i32, ptr %retval, align 4, !dbg !5857
  ret i32 %11, !dbg !5857
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_crash_core__329_735_crash_notes_memory_init4() #0 section ".init.text" align 16 !dbg !5858 {
entry:
  %call = call i32 @crash_notes_memory_init() #15, !dbg !5859
  ret i32 %call, !dbg !5859
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @crash_notes_memory_init() #0 section ".init.text" align 16 !dbg !5860 {
entry:
  %retval = alloca i32, align 4
  %size = alloca i64, align 8
  %align = alloca i64, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #16, !dbg !5864
  call void @llvm.dbg.declare(metadata ptr %size, metadata !5862, metadata !DIExpression()), !dbg !5865
  call void @llvm.lifetime.start.p0(i64 8, ptr %align) #16, !dbg !5864
  call void @llvm.dbg.declare(metadata ptr %align, metadata !5863, metadata !DIExpression()), !dbg !5866
  store i64 368, ptr %size, align 8, !dbg !5867
  store i64 512, ptr %align, align 8, !dbg !5868
  br label %do.body, !dbg !5869

do.body:                                          ; preds = %entry
  %0 = load i64, ptr %size, align 8, !dbg !5870
  %cmp = icmp ugt i64 %0, 4096, !dbg !5870
  br i1 %cmp, label %if.then, label %if.end, !dbg !5873

if.then:                                          ; preds = %do.body
  call void @__compiletime_assert_328() #19, !dbg !5870, !srcloc !5874
  unreachable, !dbg !5870

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !5873

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !5873

do.end:                                           ; preds = %do.cond
  %1 = load i64, ptr %size, align 8, !dbg !5875
  %2 = load i64, ptr %align, align 8, !dbg !5876
  %call = call noalias ptr @__alloc_percpu(i64 noundef %1, i64 noundef %2) #18, !dbg !5877
  store ptr %call, ptr @crash_notes, align 8, !dbg !5878
  %3 = load ptr, ptr @crash_notes, align 8, !dbg !5879
  %tobool = icmp ne ptr %3, null, !dbg !5879
  br i1 %tobool, label %if.end6, label %if.then1, !dbg !5881

if.then1:                                         ; preds = %do.end
  br label %do.body2, !dbg !5882

do.body2:                                         ; preds = %if.then1
  br label %do.cond3, !dbg !5885

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !5885

do.end4:                                          ; preds = %do.cond3
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef @.str.84) #15, !dbg !5882
  store i32 %call5, ptr %tmp, align 4, !dbg !5885
  %4 = load i32, ptr %tmp, align 4, !dbg !5882
  store i32 -12, ptr %retval, align 4, !dbg !5887
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5887

if.end6:                                          ; preds = %do.end
  store i32 0, ptr %retval, align 4, !dbg !5888
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5888

cleanup:                                          ; preds = %if.end6, %do.end4
  call void @llvm.lifetime.end.p0(i64 8, ptr %align) #16, !dbg !5889
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #16, !dbg !5889
  %5 = load i32, ptr %retval, align 4, !dbg !5889
  ret i32 %5, !dbg !5889
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @crash_check_update_elfcorehdr() #2 align 16 !dbg !5890 {
entry:
  %retval = alloca i32, align 4
  %rc = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #16, !dbg !5893
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !5892, metadata !DIExpression()), !dbg !5894
  store i32 0, ptr %rc, align 4, !dbg !5894
  call void @mutex_lock(ptr noundef @__crash_hotplug_lock) #17, !dbg !5895
  %call = call zeroext i1 @kexec_trylock() #17, !dbg !5896
  br i1 %call, label %if.end, label %if.then, !dbg !5898

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5899

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !5902

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5902

do.end:                                           ; preds = %do.cond
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5) #15, !dbg !5899
  store i32 %call1, ptr %tmp, align 4, !dbg !5902
  %0 = load i32, ptr %tmp, align 4, !dbg !5899
  call void @mutex_unlock(ptr noundef @__crash_hotplug_lock) #17, !dbg !5904
  store i32 0, ptr %retval, align 4, !dbg !5905
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5905

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @kexec_crash_image, align 8, !dbg !5906
  %tobool = icmp ne ptr %1, null, !dbg !5906
  br i1 %tobool, label %if.then2, label %if.end10, !dbg !5908

if.then2:                                         ; preds = %if.end
  %2 = load ptr, ptr @kexec_crash_image, align 8, !dbg !5909
  %file_mode = getelementptr inbounds %struct.kimage, ptr %2, i32 0, i32 13, !dbg !5912
  %bf.load = load i8, ptr %file_mode, align 8, !dbg !5912
  %bf.lshr = lshr i8 %bf.load, 2, !dbg !5912
  %bf.clear = and i8 %bf.lshr, 1, !dbg !5912
  %bf.cast = zext i8 %bf.clear to i32, !dbg !5912
  %tobool3 = icmp ne i32 %bf.cast, 0, !dbg !5909
  br i1 %tobool3, label %if.then4, label %if.else, !dbg !5913

if.then4:                                         ; preds = %if.then2
  store i32 1, ptr %rc, align 4, !dbg !5914
  br label %if.end9, !dbg !5915

if.else:                                          ; preds = %if.then2
  %3 = load ptr, ptr @kexec_crash_image, align 8, !dbg !5916
  %update_elfcorehdr = getelementptr inbounds %struct.kimage, ptr %3, i32 0, i32 13, !dbg !5917
  %bf.load5 = load i8, ptr %update_elfcorehdr, align 8, !dbg !5917
  %bf.lshr6 = lshr i8 %bf.load5, 3, !dbg !5917
  %bf.clear7 = and i8 %bf.lshr6, 1, !dbg !5917
  %bf.cast8 = zext i8 %bf.clear7 to i32, !dbg !5917
  store i32 %bf.cast8, ptr %rc, align 4, !dbg !5918
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then4
  br label %if.end10, !dbg !5919

if.end10:                                         ; preds = %if.end9, %if.end
  call void @kexec_unlock() #17, !dbg !5920
  call void @mutex_unlock(ptr noundef @__crash_hotplug_lock) #17, !dbg !5921
  %4 = load i32, ptr %rc, align 4, !dbg !5922
  store i32 %4, ptr %retval, align 4, !dbg !5923
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5923

cleanup:                                          ; preds = %if.end10, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #16, !dbg !5924
  %5 = load i32, ptr %retval, align 4, !dbg !5924
  ret i32 %5, !dbg !5924
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5925 dso_local void @mutex_lock(ptr noundef) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kexec_trylock() #4 align 16 !dbg !5929 {
entry:
  %call = call i32 @atomic_cmpxchg_acquire(ptr noundef @__kexec_lock, i32 noundef 0, i32 noundef 1) #17, !dbg !5931
  %cmp = icmp eq i32 %call, 0, !dbg !5932
  ret i1 %cmp, !dbg !5933
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5934 dso_local i32 @_printk(ptr noundef, ...) #12

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5938 dso_local void @mutex_unlock(ptr noundef) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kexec_unlock() #4 align 16 !dbg !5939 {
entry:
  call void @atomic_set_release(ptr noundef @__kexec_lock, i32 noundef 0) #17, !dbg !5940
  ret void, !dbg !5941
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_crash_core__332_921_crash_hotplug_init4() #0 section ".init.text" align 16 !dbg !5942 {
entry:
  %call = call i32 @crash_hotplug_init() #15, !dbg !5943
  ret i32 %call, !dbg !5943
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @crash_hotplug_init() #0 section ".init.text" align 16 !dbg !5944 {
entry:
  %result = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #16, !dbg !5947
  call void @llvm.dbg.declare(metadata ptr %result, metadata !5946, metadata !DIExpression()), !dbg !5948
  store i32 0, ptr %result, align 4, !dbg !5948
  %call = call i32 @cpuhp_setup_state_nocalls(i32 noundef 71, ptr noundef @.str.85, ptr noundef @crash_cpuhp_online, ptr noundef @crash_cpuhp_offline) #17, !dbg !5949
  store i32 %call, ptr %result, align 4, !dbg !5952
  %0 = load i32, ptr %result, align 4, !dbg !5953
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #16, !dbg !5954
  ret i32 %0, !dbg !5955
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal ptr @get_last_crashkernel(ptr noundef %cmdline, ptr noundef %name, ptr noundef %suffix) #0 section ".init.text" align 16 !dbg !5956 {
entry:
  %cmdline.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %suffix.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %ck_cmdline = alloca ptr, align 8
  %end_p = alloca ptr, align 8
  %q = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cmdline, ptr %cmdline.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cmdline.addr, metadata !5960, metadata !DIExpression()), !dbg !5972
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5961, metadata !DIExpression()), !dbg !5973
  store ptr %suffix, ptr %suffix.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %suffix.addr, metadata !5962, metadata !DIExpression()), !dbg !5974
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !5975
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5963, metadata !DIExpression()), !dbg !5976
  %0 = load ptr, ptr %cmdline.addr, align 8, !dbg !5977
  store ptr %0, ptr %p, align 8, !dbg !5976
  call void @llvm.lifetime.start.p0(i64 8, ptr %ck_cmdline) #16, !dbg !5975
  call void @llvm.dbg.declare(metadata ptr %ck_cmdline, metadata !5964, metadata !DIExpression()), !dbg !5978
  store ptr null, ptr %ck_cmdline, align 8, !dbg !5978
  %1 = load ptr, ptr %p, align 8, !dbg !5979
  %2 = load ptr, ptr %name.addr, align 8, !dbg !5980
  %call = call ptr @strstr(ptr noundef %1, ptr noundef %2) #17, !dbg !5981
  store ptr %call, ptr %p, align 8, !dbg !5982
  br label %while.cond, !dbg !5983

while.cond:                                       ; preds = %next, %entry
  %3 = load ptr, ptr %p, align 8, !dbg !5984
  %tobool = icmp ne ptr %3, null, !dbg !5983
  br i1 %tobool, label %while.body, label %while.end, !dbg !5983

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %end_p) #16, !dbg !5985
  call void @llvm.dbg.declare(metadata ptr %end_p, metadata !5965, metadata !DIExpression()), !dbg !5986
  %4 = load ptr, ptr %p, align 8, !dbg !5987
  %call1 = call ptr @strchr(ptr noundef %4, i32 noundef 32) #17, !dbg !5988
  store ptr %call1, ptr %end_p, align 8, !dbg !5986
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #16, !dbg !5989
  call void @llvm.dbg.declare(metadata ptr %q, metadata !5967, metadata !DIExpression()), !dbg !5990
  %5 = load ptr, ptr %end_p, align 8, !dbg !5991
  %tobool2 = icmp ne ptr %5, null, !dbg !5991
  br i1 %tobool2, label %if.end, label %if.then, !dbg !5993

if.then:                                          ; preds = %while.body
  %6 = load ptr, ptr %p, align 8, !dbg !5994
  %7 = load ptr, ptr %p, align 8, !dbg !5995
  %call3 = call i64 @strlen(ptr noundef %7) #17, !dbg !5996
  %add.ptr = getelementptr i8, ptr %6, i64 %call3, !dbg !5997
  store ptr %add.ptr, ptr %end_p, align 8, !dbg !5998
  br label %if.end, !dbg !5999

if.end:                                           ; preds = %if.then, %while.body
  %8 = load ptr, ptr %suffix.addr, align 8, !dbg !6000
  %tobool4 = icmp ne ptr %8, null, !dbg !6000
  br i1 %tobool4, label %if.else, label %if.then5, !dbg !6001

if.then5:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !6002
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5968, metadata !DIExpression()), !dbg !6003
  store i32 0, ptr %i, align 4, !dbg !6004
  br label %for.cond, !dbg !6006

for.cond:                                         ; preds = %for.inc, %if.then5
  %9 = load i32, ptr %i, align 4, !dbg !6007
  %idxprom = sext i32 %9 to i64, !dbg !6009
  %arrayidx = getelementptr [3 x ptr], ptr @suffix_tbl, i64 0, i64 %idxprom, !dbg !6009
  %10 = load ptr, ptr %arrayidx, align 8, !dbg !6009
  %tobool6 = icmp ne ptr %10, null, !dbg !6010
  br i1 %tobool6, label %for.body, label %for.end, !dbg !6010

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %end_p, align 8, !dbg !6011
  %12 = load i32, ptr %i, align 4, !dbg !6013
  %idxprom7 = sext i32 %12 to i64, !dbg !6014
  %arrayidx8 = getelementptr [3 x ptr], ptr @suffix_tbl, i64 0, i64 %idxprom7, !dbg !6014
  %13 = load ptr, ptr %arrayidx8, align 8, !dbg !6014
  %call9 = call i64 @strlen(ptr noundef %13) #17, !dbg !6015
  %idx.neg = sub i64 0, %call9, !dbg !6016
  %add.ptr10 = getelementptr i8, ptr %11, i64 %idx.neg, !dbg !6016
  store ptr %add.ptr10, ptr %q, align 8, !dbg !6017
  %14 = load ptr, ptr %q, align 8, !dbg !6018
  %15 = load i32, ptr %i, align 4, !dbg !6020
  %idxprom11 = sext i32 %15 to i64, !dbg !6021
  %arrayidx12 = getelementptr [3 x ptr], ptr @suffix_tbl, i64 0, i64 %idxprom11, !dbg !6021
  %16 = load ptr, ptr %arrayidx12, align 8, !dbg !6021
  %17 = load i32, ptr %i, align 4, !dbg !6022
  %idxprom13 = sext i32 %17 to i64, !dbg !6023
  %arrayidx14 = getelementptr [3 x ptr], ptr @suffix_tbl, i64 0, i64 %idxprom13, !dbg !6023
  %18 = load ptr, ptr %arrayidx14, align 8, !dbg !6023
  %call15 = call i64 @strlen(ptr noundef %18) #17, !dbg !6024
  %call16 = call i32 @strncmp(ptr noundef %14, ptr noundef %16, i64 noundef %call15) #17, !dbg !6025
  %tobool17 = icmp ne i32 %call16, 0, !dbg !6025
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !6026

if.then18:                                        ; preds = %for.body
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6027

if.end19:                                         ; preds = %for.body
  br label %for.inc, !dbg !6028

for.inc:                                          ; preds = %if.end19
  %19 = load i32, ptr %i, align 4, !dbg !6029
  %inc = add i32 %19, 1, !dbg !6029
  store i32 %inc, ptr %i, align 4, !dbg !6029
  br label %for.cond, !dbg !6030, !llvm.loop !6031

for.end:                                          ; preds = %for.cond
  %20 = load ptr, ptr %p, align 8, !dbg !6033
  store ptr %20, ptr %ck_cmdline, align 8, !dbg !6034
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6035
  br label %cleanup, !dbg !6035

cleanup:                                          ; preds = %if.then18, %for.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !6035
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 7, label %next
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end28, !dbg !6036

if.else:                                          ; preds = %if.end
  %21 = load ptr, ptr %end_p, align 8, !dbg !6037
  %22 = load ptr, ptr %suffix.addr, align 8, !dbg !6039
  %call20 = call i64 @strlen(ptr noundef %22) #17, !dbg !6040
  %idx.neg21 = sub i64 0, %call20, !dbg !6041
  %add.ptr22 = getelementptr i8, ptr %21, i64 %idx.neg21, !dbg !6041
  store ptr %add.ptr22, ptr %q, align 8, !dbg !6042
  %23 = load ptr, ptr %q, align 8, !dbg !6043
  %24 = load ptr, ptr %suffix.addr, align 8, !dbg !6045
  %25 = load ptr, ptr %suffix.addr, align 8, !dbg !6046
  %call23 = call i64 @strlen(ptr noundef %25) #17, !dbg !6047
  %call24 = call i32 @strncmp(ptr noundef %23, ptr noundef %24, i64 noundef %call23) #17, !dbg !6048
  %tobool25 = icmp ne i32 %call24, 0, !dbg !6048
  br i1 %tobool25, label %if.end27, label %if.then26, !dbg !6049

if.then26:                                        ; preds = %if.else
  %26 = load ptr, ptr %p, align 8, !dbg !6050
  store ptr %26, ptr %ck_cmdline, align 8, !dbg !6051
  br label %if.end27, !dbg !6052

if.end27:                                         ; preds = %if.then26, %if.else
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %cleanup.cont
  br label %next, !dbg !6000

next:                                             ; preds = %if.end28, %cleanup
  call void @llvm.dbg.label(metadata !5971), !dbg !6053
  %27 = load ptr, ptr %p, align 8, !dbg !6054
  %add.ptr29 = getelementptr i8, ptr %27, i64 1, !dbg !6055
  %28 = load ptr, ptr %name.addr, align 8, !dbg !6056
  %call30 = call ptr @strstr(ptr noundef %add.ptr29, ptr noundef %28) #17, !dbg !6057
  store ptr %call30, ptr %p, align 8, !dbg !6058
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #16, !dbg !6059
  call void @llvm.lifetime.end.p0(i64 8, ptr %end_p) #16, !dbg !6059
  br label %while.cond, !dbg !5983, !llvm.loop !6060

while.end:                                        ; preds = %while.cond
  %29 = load ptr, ptr %ck_cmdline, align 8, !dbg !6061
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ck_cmdline) #16, !dbg !6062
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !6062
  ret ptr %29, !dbg !6063

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @parse_crashkernel_suffix(ptr noundef %cmdline, ptr noundef %crash_size, ptr noundef %suffix) #0 section ".init.text" align 16 !dbg !6064 {
entry:
  %retval = alloca i32, align 4
  %cmdline.addr = alloca ptr, align 8
  %crash_size.addr = alloca ptr, align 8
  %suffix.addr = alloca ptr, align 8
  %cur = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  %tmp22 = alloca i32, align 4
  store ptr %cmdline, ptr %cmdline.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cmdline.addr, metadata !6068, metadata !DIExpression()), !dbg !6072
  store ptr %crash_size, ptr %crash_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %crash_size.addr, metadata !6069, metadata !DIExpression()), !dbg !6073
  store ptr %suffix, ptr %suffix.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %suffix.addr, metadata !6070, metadata !DIExpression()), !dbg !6074
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur) #16, !dbg !6075
  call void @llvm.dbg.declare(metadata ptr %cur, metadata !6071, metadata !DIExpression()), !dbg !6076
  %0 = load ptr, ptr %cmdline.addr, align 8, !dbg !6077
  store ptr %0, ptr %cur, align 8, !dbg !6076
  %1 = load ptr, ptr %cmdline.addr, align 8, !dbg !6078
  %call = call i64 @memparse(ptr noundef %1, ptr noundef %cur) #17, !dbg !6079
  %2 = load ptr, ptr %crash_size.addr, align 8, !dbg !6080
  store i64 %call, ptr %2, align 8, !dbg !6081
  %3 = load ptr, ptr %cmdline.addr, align 8, !dbg !6082
  %4 = load ptr, ptr %cur, align 8, !dbg !6084
  %cmp = icmp eq ptr %3, %4, !dbg !6085
  br i1 %cmp, label %if.then, label %if.end, !dbg !6086

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6087

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !6090

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6090

do.end:                                           ; preds = %do.cond
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef @.str.6) #15, !dbg !6087
  store i32 %call1, ptr %tmp, align 4, !dbg !6090
  %5 = load i32, ptr %tmp, align 4, !dbg !6087
  store i32 -22, ptr %retval, align 4, !dbg !6092
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6092

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %cur, align 8, !dbg !6093
  %7 = load ptr, ptr %suffix.addr, align 8, !dbg !6095
  %8 = load ptr, ptr %suffix.addr, align 8, !dbg !6096
  %call2 = call i64 @strlen(ptr noundef %8) #17, !dbg !6097
  %call3 = call i32 @strncmp(ptr noundef %6, ptr noundef %7, i64 noundef %call2) #17, !dbg !6098
  %tobool = icmp ne i32 %call3, 0, !dbg !6098
  br i1 %tobool, label %if.then4, label %if.end10, !dbg !6099

if.then4:                                         ; preds = %if.end
  br label %do.body5, !dbg !6100

do.body5:                                         ; preds = %if.then4
  br label %do.cond6, !dbg !6103

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !6103

do.end7:                                          ; preds = %do.cond6
  %9 = load ptr, ptr %cur, align 8, !dbg !6100
  %10 = load i8, ptr %9, align 1, !dbg !6100
  %conv = zext i8 %10 to i32, !dbg !6100
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef @.str.7, i32 noundef %conv) #15, !dbg !6100
  store i32 %call9, ptr %tmp8, align 4, !dbg !6103
  %11 = load i32, ptr %tmp8, align 4, !dbg !6100
  store i32 -22, ptr %retval, align 4, !dbg !6105
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6105

if.end10:                                         ; preds = %if.end
  %12 = load ptr, ptr %suffix.addr, align 8, !dbg !6106
  %call11 = call i64 @strlen(ptr noundef %12) #17, !dbg !6107
  %13 = load ptr, ptr %cur, align 8, !dbg !6108
  %add.ptr = getelementptr i8, ptr %13, i64 %call11, !dbg !6108
  store ptr %add.ptr, ptr %cur, align 8, !dbg !6108
  %14 = load ptr, ptr %cur, align 8, !dbg !6109
  %15 = load i8, ptr %14, align 1, !dbg !6111
  %conv12 = zext i8 %15 to i32, !dbg !6111
  %cmp13 = icmp ne i32 %conv12, 32, !dbg !6112
  br i1 %cmp13, label %land.lhs.true, label %if.end25, !dbg !6113

land.lhs.true:                                    ; preds = %if.end10
  %16 = load ptr, ptr %cur, align 8, !dbg !6114
  %17 = load i8, ptr %16, align 1, !dbg !6115
  %conv15 = zext i8 %17 to i32, !dbg !6115
  %cmp16 = icmp ne i32 %conv15, 0, !dbg !6116
  br i1 %cmp16, label %if.then18, label %if.end25, !dbg !6117

if.then18:                                        ; preds = %land.lhs.true
  br label %do.body19, !dbg !6118

do.body19:                                        ; preds = %if.then18
  br label %do.cond20, !dbg !6121

do.cond20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !6121

do.end21:                                         ; preds = %do.cond20
  %18 = load ptr, ptr %cur, align 8, !dbg !6118
  %19 = load i8, ptr %18, align 1, !dbg !6118
  %conv23 = zext i8 %19 to i32, !dbg !6118
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef @.str.7, i32 noundef %conv23) #15, !dbg !6118
  store i32 %call24, ptr %tmp22, align 4, !dbg !6121
  %20 = load i32, ptr %tmp22, align 4, !dbg !6118
  store i32 -22, ptr %retval, align 4, !dbg !6123
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6123

if.end25:                                         ; preds = %land.lhs.true, %if.end10
  store i32 0, ptr %retval, align 4, !dbg !6124
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6124

cleanup:                                          ; preds = %if.end25, %do.end21, %do.end7, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur) #16, !dbg !6125
  %21 = load i32, ptr %retval, align 4, !dbg !6125
  ret i32 %21, !dbg !6125
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6126 dso_local ptr @strchr(ptr noundef, i32 noundef) #8

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @parse_crashkernel_mem(ptr noundef %cmdline, i64 noundef %system_ram, ptr noundef %crash_size, ptr noundef %crash_base) #0 section ".init.text" align 16 !dbg !6129 {
entry:
  %retval = alloca i32, align 4
  %cmdline.addr = alloca ptr, align 8
  %system_ram.addr = alloca i64, align 8
  %crash_size.addr = alloca ptr, align 8
  %crash_base.addr = alloca ptr, align 8
  %cur = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %total_mem = alloca i64, align 8
  %__y = alloca i32, align 4
  %tmp1 = alloca i64, align 8
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %size = alloca i64, align 8
  %tmp6 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp15 = alloca i32, align 4
  %tmp29 = alloca i32, align 4
  %tmp38 = alloca i32, align 4
  %tmp49 = alloca i32, align 4
  %tmp60 = alloca i32, align 4
  %tmp69 = alloca i32, align 4
  %tmp110 = alloca i32, align 4
  %tmp117 = alloca i32, align 4
  store ptr %cmdline, ptr %cmdline.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cmdline.addr, metadata !6131, metadata !DIExpression()), !dbg !6144
  store i64 %system_ram, ptr %system_ram.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %system_ram.addr, metadata !6132, metadata !DIExpression()), !dbg !6145
  store ptr %crash_size, ptr %crash_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %crash_size.addr, metadata !6133, metadata !DIExpression()), !dbg !6146
  store ptr %crash_base, ptr %crash_base.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %crash_base.addr, metadata !6134, metadata !DIExpression()), !dbg !6147
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur) #16, !dbg !6148
  call void @llvm.dbg.declare(metadata ptr %cur, metadata !6135, metadata !DIExpression()), !dbg !6149
  %0 = load ptr, ptr %cmdline.addr, align 8, !dbg !6150
  store ptr %0, ptr %cur, align 8, !dbg !6149
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #16, !dbg !6148
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !6136, metadata !DIExpression()), !dbg !6151
  call void @llvm.lifetime.start.p0(i64 8, ptr %total_mem) #16, !dbg !6152
  call void @llvm.dbg.declare(metadata ptr %total_mem, metadata !6137, metadata !DIExpression()), !dbg !6153
  %1 = load i64, ptr %system_ram.addr, align 8, !dbg !6154
  store i64 %1, ptr %total_mem, align 8, !dbg !6153
  call void @llvm.lifetime.start.p0(i64 4, ptr %__y) #16, !dbg !6155
  call void @llvm.dbg.declare(metadata ptr %__y, metadata !6138, metadata !DIExpression()), !dbg !6155
  store i32 134217728, ptr %__y, align 4, !dbg !6155
  %2 = load i64, ptr %total_mem, align 8, !dbg !6155
  %3 = load i32, ptr %__y, align 4, !dbg !6155
  %sub = sub i32 %3, 1, !dbg !6155
  %conv = sext i32 %sub to i64, !dbg !6155
  %add = add i64 %2, %conv, !dbg !6155
  %4 = load i32, ptr %__y, align 4, !dbg !6155
  %conv2 = sext i32 %4 to i64, !dbg !6155
  %div = udiv i64 %add, %conv2, !dbg !6155
  %5 = load i32, ptr %__y, align 4, !dbg !6155
  %conv3 = sext i32 %5 to i64, !dbg !6155
  %mul = mul i64 %div, %conv3, !dbg !6155
  store i64 %mul, ptr %tmp1, align 8, !dbg !6155
  call void @llvm.lifetime.end.p0(i64 4, ptr %__y) #16, !dbg !6156
  %6 = load i64, ptr %tmp1, align 8, !dbg !6155
  store i64 %6, ptr %total_mem, align 8, !dbg !6157
  br label %do.body, !dbg !6158

do.body:                                          ; preds = %do.cond80, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #16, !dbg !6159
  call void @llvm.dbg.declare(metadata ptr %start, metadata !6140, metadata !DIExpression()), !dbg !6160
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #16, !dbg !6159
  call void @llvm.dbg.declare(metadata ptr %end, metadata !6142, metadata !DIExpression()), !dbg !6161
  store i64 -1, ptr %end, align 8, !dbg !6161
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #16, !dbg !6159
  call void @llvm.dbg.declare(metadata ptr %size, metadata !6143, metadata !DIExpression()), !dbg !6162
  %7 = load ptr, ptr %cur, align 8, !dbg !6163
  %call = call i64 @memparse(ptr noundef %7, ptr noundef %tmp) #17, !dbg !6164
  store i64 %call, ptr %start, align 8, !dbg !6165
  %8 = load ptr, ptr %cur, align 8, !dbg !6166
  %9 = load ptr, ptr %tmp, align 8, !dbg !6168
  %cmp = icmp eq ptr %8, %9, !dbg !6169
  br i1 %cmp, label %if.then, label %if.end, !dbg !6170

if.then:                                          ; preds = %do.body
  br label %do.body5, !dbg !6171

do.body5:                                         ; preds = %if.then
  br label %do.cond, !dbg !6174

do.cond:                                          ; preds = %do.body5
  br label %do.end, !dbg !6174

do.end:                                           ; preds = %do.cond
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef @.str.8) #15, !dbg !6171
  store i32 %call7, ptr %tmp6, align 4, !dbg !6174
  %10 = load i32, ptr %tmp6, align 4, !dbg !6171
  store i32 -22, ptr %retval, align 4, !dbg !6176
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6176

if.end:                                           ; preds = %do.body
  %11 = load ptr, ptr %tmp, align 8, !dbg !6177
  store ptr %11, ptr %cur, align 8, !dbg !6178
  %12 = load ptr, ptr %cur, align 8, !dbg !6179
  %13 = load i8, ptr %12, align 1, !dbg !6181
  %conv8 = zext i8 %13 to i32, !dbg !6181
  %cmp9 = icmp ne i32 %conv8, 45, !dbg !6182
  br i1 %cmp9, label %if.then11, label %if.end17, !dbg !6183

if.then11:                                        ; preds = %if.end
  br label %do.body12, !dbg !6184

do.body12:                                        ; preds = %if.then11
  br label %do.cond13, !dbg !6187

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !6187

do.end14:                                         ; preds = %do.cond13
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef @.str.9) #15, !dbg !6184
  store i32 %call16, ptr %tmp15, align 4, !dbg !6187
  %14 = load i32, ptr %tmp15, align 4, !dbg !6184
  store i32 -22, ptr %retval, align 4, !dbg !6189
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6189

if.end17:                                         ; preds = %if.end
  %15 = load ptr, ptr %cur, align 8, !dbg !6190
  %incdec.ptr = getelementptr i8, ptr %15, i32 1, !dbg !6190
  store ptr %incdec.ptr, ptr %cur, align 8, !dbg !6190
  %16 = load ptr, ptr %cur, align 8, !dbg !6191
  %17 = load i8, ptr %16, align 1, !dbg !6193
  %conv18 = zext i8 %17 to i32, !dbg !6193
  %cmp19 = icmp ne i32 %conv18, 58, !dbg !6194
  br i1 %cmp19, label %if.then21, label %if.end41, !dbg !6195

if.then21:                                        ; preds = %if.end17
  %18 = load ptr, ptr %cur, align 8, !dbg !6196
  %call22 = call i64 @memparse(ptr noundef %18, ptr noundef %tmp) #17, !dbg !6198
  store i64 %call22, ptr %end, align 8, !dbg !6199
  %19 = load ptr, ptr %cur, align 8, !dbg !6200
  %20 = load ptr, ptr %tmp, align 8, !dbg !6202
  %cmp23 = icmp eq ptr %19, %20, !dbg !6203
  br i1 %cmp23, label %if.then25, label %if.end31, !dbg !6204

if.then25:                                        ; preds = %if.then21
  br label %do.body26, !dbg !6205

do.body26:                                        ; preds = %if.then25
  br label %do.cond27, !dbg !6208

do.cond27:                                        ; preds = %do.body26
  br label %do.end28, !dbg !6208

do.end28:                                         ; preds = %do.cond27
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef @.str.8) #15, !dbg !6205
  store i32 %call30, ptr %tmp29, align 4, !dbg !6208
  %21 = load i32, ptr %tmp29, align 4, !dbg !6205
  store i32 -22, ptr %retval, align 4, !dbg !6210
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6210

if.end31:                                         ; preds = %if.then21
  %22 = load ptr, ptr %tmp, align 8, !dbg !6211
  store ptr %22, ptr %cur, align 8, !dbg !6212
  %23 = load i64, ptr %end, align 8, !dbg !6213
  %24 = load i64, ptr %start, align 8, !dbg !6215
  %cmp32 = icmp ule i64 %23, %24, !dbg !6216
  br i1 %cmp32, label %if.then34, label %if.end40, !dbg !6217

if.then34:                                        ; preds = %if.end31
  br label %do.body35, !dbg !6218

do.body35:                                        ; preds = %if.then34
  br label %do.cond36, !dbg !6221

do.cond36:                                        ; preds = %do.body35
  br label %do.end37, !dbg !6221

do.end37:                                         ; preds = %do.cond36
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef @.str.10) #15, !dbg !6218
  store i32 %call39, ptr %tmp38, align 4, !dbg !6221
  %25 = load i32, ptr %tmp38, align 4, !dbg !6218
  store i32 -22, ptr %retval, align 4, !dbg !6223
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6223

if.end40:                                         ; preds = %if.end31
  br label %if.end41, !dbg !6224

if.end41:                                         ; preds = %if.end40, %if.end17
  %26 = load ptr, ptr %cur, align 8, !dbg !6225
  %27 = load i8, ptr %26, align 1, !dbg !6227
  %conv42 = zext i8 %27 to i32, !dbg !6227
  %cmp43 = icmp ne i32 %conv42, 58, !dbg !6228
  br i1 %cmp43, label %if.then45, label %if.end51, !dbg !6229

if.then45:                                        ; preds = %if.end41
  br label %do.body46, !dbg !6230

do.body46:                                        ; preds = %if.then45
  br label %do.cond47, !dbg !6233

do.cond47:                                        ; preds = %do.body46
  br label %do.end48, !dbg !6233

do.end48:                                         ; preds = %do.cond47
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef @.str.11) #15, !dbg !6230
  store i32 %call50, ptr %tmp49, align 4, !dbg !6233
  %28 = load i32, ptr %tmp49, align 4, !dbg !6230
  store i32 -22, ptr %retval, align 4, !dbg !6235
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6235

if.end51:                                         ; preds = %if.end41
  %29 = load ptr, ptr %cur, align 8, !dbg !6236
  %incdec.ptr52 = getelementptr i8, ptr %29, i32 1, !dbg !6236
  store ptr %incdec.ptr52, ptr %cur, align 8, !dbg !6236
  %30 = load ptr, ptr %cur, align 8, !dbg !6237
  %call53 = call i64 @memparse(ptr noundef %30, ptr noundef %tmp) #17, !dbg !6238
  store i64 %call53, ptr %size, align 8, !dbg !6239
  %31 = load ptr, ptr %cur, align 8, !dbg !6240
  %32 = load ptr, ptr %tmp, align 8, !dbg !6242
  %cmp54 = icmp eq ptr %31, %32, !dbg !6243
  br i1 %cmp54, label %if.then56, label %if.end62, !dbg !6244

if.then56:                                        ; preds = %if.end51
  br label %do.body57, !dbg !6245

do.body57:                                        ; preds = %if.then56
  br label %do.cond58, !dbg !6248

do.cond58:                                        ; preds = %do.body57
  br label %do.end59, !dbg !6248

do.end59:                                         ; preds = %do.cond58
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef @.str.12) #15, !dbg !6245
  store i32 %call61, ptr %tmp60, align 4, !dbg !6248
  %33 = load i32, ptr %tmp60, align 4, !dbg !6245
  store i32 -22, ptr %retval, align 4, !dbg !6250
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6250

if.end62:                                         ; preds = %if.end51
  %34 = load ptr, ptr %tmp, align 8, !dbg !6251
  store ptr %34, ptr %cur, align 8, !dbg !6252
  %35 = load i64, ptr %size, align 8, !dbg !6253
  %36 = load i64, ptr %total_mem, align 8, !dbg !6255
  %cmp63 = icmp uge i64 %35, %36, !dbg !6256
  br i1 %cmp63, label %if.then65, label %if.end71, !dbg !6257

if.then65:                                        ; preds = %if.end62
  br label %do.body66, !dbg !6258

do.body66:                                        ; preds = %if.then65
  br label %do.cond67, !dbg !6261

do.cond67:                                        ; preds = %do.body66
  br label %do.end68, !dbg !6261

do.end68:                                         ; preds = %do.cond67
  %call70 = call i32 (ptr, ...) @_printk(ptr noundef @.str.13) #15, !dbg !6258
  store i32 %call70, ptr %tmp69, align 4, !dbg !6261
  %37 = load i32, ptr %tmp69, align 4, !dbg !6258
  store i32 -22, ptr %retval, align 4, !dbg !6263
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6263

if.end71:                                         ; preds = %if.end62
  %38 = load i64, ptr %total_mem, align 8, !dbg !6264
  %39 = load i64, ptr %start, align 8, !dbg !6266
  %cmp72 = icmp uge i64 %38, %39, !dbg !6267
  br i1 %cmp72, label %land.lhs.true, label %if.end77, !dbg !6268

land.lhs.true:                                    ; preds = %if.end71
  %40 = load i64, ptr %total_mem, align 8, !dbg !6269
  %41 = load i64, ptr %end, align 8, !dbg !6270
  %cmp74 = icmp ult i64 %40, %41, !dbg !6271
  br i1 %cmp74, label %if.then76, label %if.end77, !dbg !6272

if.then76:                                        ; preds = %land.lhs.true
  %42 = load i64, ptr %size, align 8, !dbg !6273
  %43 = load ptr, ptr %crash_size.addr, align 8, !dbg !6275
  store i64 %42, ptr %43, align 8, !dbg !6276
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6277

if.end77:                                         ; preds = %land.lhs.true, %if.end71
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6278
  br label %cleanup, !dbg !6278

cleanup:                                          ; preds = %if.end77, %if.then76, %do.end68, %do.end59, %do.end48, %do.end37, %do.end28, %do.end14, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #16, !dbg !6278
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #16, !dbg !6278
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #16, !dbg !6278
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup120 [
    i32 0, label %cleanup.cont
    i32 2, label %do.end85
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond80, !dbg !6279

do.cond80:                                        ; preds = %cleanup.cont
  %44 = load ptr, ptr %cur, align 8, !dbg !6280
  %incdec.ptr81 = getelementptr i8, ptr %44, i32 1, !dbg !6280
  store ptr %incdec.ptr81, ptr %cur, align 8, !dbg !6280
  %45 = load i8, ptr %44, align 1, !dbg !6281
  %conv82 = zext i8 %45 to i32, !dbg !6281
  %cmp83 = icmp eq i32 %conv82, 44, !dbg !6282
  br i1 %cmp83, label %do.body, label %do.end85, !dbg !6279, !llvm.loop !6283

do.end85:                                         ; preds = %do.cond80, %cleanup
  %46 = load ptr, ptr %crash_size.addr, align 8, !dbg !6285
  %47 = load i64, ptr %46, align 8, !dbg !6287
  %cmp86 = icmp ugt i64 %47, 0, !dbg !6288
  br i1 %cmp86, label %if.then88, label %if.else, !dbg !6289

if.then88:                                        ; preds = %do.end85
  br label %while.cond, !dbg !6290

while.cond:                                       ; preds = %while.body, %if.then88
  %48 = load ptr, ptr %cur, align 8, !dbg !6292
  %49 = load i8, ptr %48, align 1, !dbg !6293
  %conv89 = zext i8 %49 to i32, !dbg !6293
  %tobool = icmp ne i32 %conv89, 0, !dbg !6293
  br i1 %tobool, label %land.lhs.true90, label %land.end, !dbg !6294

land.lhs.true90:                                  ; preds = %while.cond
  %50 = load ptr, ptr %cur, align 8, !dbg !6295
  %51 = load i8, ptr %50, align 1, !dbg !6296
  %conv91 = zext i8 %51 to i32, !dbg !6296
  %cmp92 = icmp ne i32 %conv91, 32, !dbg !6297
  br i1 %cmp92, label %land.rhs, label %land.end, !dbg !6298

land.rhs:                                         ; preds = %land.lhs.true90
  %52 = load ptr, ptr %cur, align 8, !dbg !6299
  %53 = load i8, ptr %52, align 1, !dbg !6300
  %conv94 = zext i8 %53 to i32, !dbg !6300
  %cmp95 = icmp ne i32 %conv94, 64, !dbg !6301
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true90, %while.cond
  %54 = phi i1 [ false, %land.lhs.true90 ], [ false, %while.cond ], [ %cmp95, %land.rhs ], !dbg !6302
  br i1 %54, label %while.body, label %while.end, !dbg !6290

while.body:                                       ; preds = %land.end
  %55 = load ptr, ptr %cur, align 8, !dbg !6303
  %incdec.ptr97 = getelementptr i8, ptr %55, i32 1, !dbg !6303
  store ptr %incdec.ptr97, ptr %cur, align 8, !dbg !6303
  br label %while.cond, !dbg !6290, !llvm.loop !6304

while.end:                                        ; preds = %land.end
  %56 = load ptr, ptr %cur, align 8, !dbg !6305
  %57 = load i8, ptr %56, align 1, !dbg !6307
  %conv98 = zext i8 %57 to i32, !dbg !6307
  %cmp99 = icmp eq i32 %conv98, 64, !dbg !6308
  br i1 %cmp99, label %if.then101, label %if.end113, !dbg !6309

if.then101:                                       ; preds = %while.end
  %58 = load ptr, ptr %cur, align 8, !dbg !6310
  %incdec.ptr102 = getelementptr i8, ptr %58, i32 1, !dbg !6310
  store ptr %incdec.ptr102, ptr %cur, align 8, !dbg !6310
  %59 = load ptr, ptr %cur, align 8, !dbg !6312
  %call103 = call i64 @memparse(ptr noundef %59, ptr noundef %tmp) #17, !dbg !6313
  %60 = load ptr, ptr %crash_base.addr, align 8, !dbg !6314
  store i64 %call103, ptr %60, align 8, !dbg !6315
  %61 = load ptr, ptr %cur, align 8, !dbg !6316
  %62 = load ptr, ptr %tmp, align 8, !dbg !6318
  %cmp104 = icmp eq ptr %61, %62, !dbg !6319
  br i1 %cmp104, label %if.then106, label %if.end112, !dbg !6320

if.then106:                                       ; preds = %if.then101
  br label %do.body107, !dbg !6321

do.body107:                                       ; preds = %if.then106
  br label %do.cond108, !dbg !6324

do.cond108:                                       ; preds = %do.body107
  br label %do.end109, !dbg !6324

do.end109:                                        ; preds = %do.cond108
  %call111 = call i32 (ptr, ...) @_printk(ptr noundef @.str.14) #15, !dbg !6321
  store i32 %call111, ptr %tmp110, align 4, !dbg !6324
  %63 = load i32, ptr %tmp110, align 4, !dbg !6321
  store i32 -22, ptr %retval, align 4, !dbg !6326
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup120, !dbg !6326

if.end112:                                        ; preds = %if.then101
  br label %if.end113, !dbg !6327

if.end113:                                        ; preds = %if.end112, %while.end
  br label %if.end119, !dbg !6328

if.else:                                          ; preds = %do.end85
  br label %do.body114, !dbg !6329

do.body114:                                       ; preds = %if.else
  br label %do.cond115, !dbg !6331

do.cond115:                                       ; preds = %do.body114
  br label %do.end116, !dbg !6331

do.end116:                                        ; preds = %do.cond115
  %call118 = call i32 (ptr, ...) @_printk(ptr noundef @.str.15) #15, !dbg !6329
  store i32 %call118, ptr %tmp117, align 4, !dbg !6331
  %64 = load i32, ptr %tmp117, align 4, !dbg !6329
  br label %if.end119

if.end119:                                        ; preds = %do.end116, %if.end113
  store i32 0, ptr %retval, align 4, !dbg !6333
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup120, !dbg !6333

cleanup120:                                       ; preds = %if.end119, %do.end109, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %total_mem) #16, !dbg !6334
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #16, !dbg !6334
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur) #16, !dbg !6334
  %65 = load i32, ptr %retval, align 4, !dbg !6334
  ret i32 %65, !dbg !6334
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @parse_crashkernel_simple(ptr noundef %cmdline, ptr noundef %crash_size, ptr noundef %crash_base) #0 section ".init.text" align 16 !dbg !6335 {
entry:
  %retval = alloca i32, align 4
  %cmdline.addr = alloca ptr, align 8
  %crash_size.addr = alloca ptr, align 8
  %crash_base.addr = alloca ptr, align 8
  %cur = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp16 = alloca i32, align 4
  store ptr %cmdline, ptr %cmdline.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cmdline.addr, metadata !6339, metadata !DIExpression()), !dbg !6343
  store ptr %crash_size, ptr %crash_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %crash_size.addr, metadata !6340, metadata !DIExpression()), !dbg !6344
  store ptr %crash_base, ptr %crash_base.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %crash_base.addr, metadata !6341, metadata !DIExpression()), !dbg !6345
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur) #16, !dbg !6346
  call void @llvm.dbg.declare(metadata ptr %cur, metadata !6342, metadata !DIExpression()), !dbg !6347
  %0 = load ptr, ptr %cmdline.addr, align 8, !dbg !6348
  store ptr %0, ptr %cur, align 8, !dbg !6347
  %1 = load ptr, ptr %cmdline.addr, align 8, !dbg !6349
  %call = call i64 @memparse(ptr noundef %1, ptr noundef %cur) #17, !dbg !6350
  %2 = load ptr, ptr %crash_size.addr, align 8, !dbg !6351
  store i64 %call, ptr %2, align 8, !dbg !6352
  %3 = load ptr, ptr %cmdline.addr, align 8, !dbg !6353
  %4 = load ptr, ptr %cur, align 8, !dbg !6355
  %cmp = icmp eq ptr %3, %4, !dbg !6356
  br i1 %cmp, label %if.then, label %if.end, !dbg !6357

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6358

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !6361

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6361

do.end:                                           ; preds = %do.cond
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef @.str.6) #15, !dbg !6358
  store i32 %call1, ptr %tmp, align 4, !dbg !6361
  %5 = load i32, ptr %tmp, align 4, !dbg !6358
  store i32 -22, ptr %retval, align 4, !dbg !6363
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6363

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %cur, align 8, !dbg !6364
  %7 = load i8, ptr %6, align 1, !dbg !6366
  %conv = zext i8 %7 to i32, !dbg !6366
  %cmp2 = icmp eq i32 %conv, 64, !dbg !6367
  br i1 %cmp2, label %if.then4, label %if.else, !dbg !6368

if.then4:                                         ; preds = %if.end
  %8 = load ptr, ptr %cur, align 8, !dbg !6369
  %add.ptr = getelementptr i8, ptr %8, i64 1, !dbg !6370
  %call5 = call i64 @memparse(ptr noundef %add.ptr, ptr noundef %cur) #17, !dbg !6371
  %9 = load ptr, ptr %crash_base.addr, align 8, !dbg !6372
  store i64 %call5, ptr %9, align 8, !dbg !6373
  br label %if.end20, !dbg !6374

if.else:                                          ; preds = %if.end
  %10 = load ptr, ptr %cur, align 8, !dbg !6375
  %11 = load i8, ptr %10, align 1, !dbg !6377
  %conv6 = zext i8 %11 to i32, !dbg !6377
  %cmp7 = icmp ne i32 %conv6, 32, !dbg !6378
  br i1 %cmp7, label %land.lhs.true, label %if.end19, !dbg !6379

land.lhs.true:                                    ; preds = %if.else
  %12 = load ptr, ptr %cur, align 8, !dbg !6380
  %13 = load i8, ptr %12, align 1, !dbg !6381
  %conv9 = zext i8 %13 to i32, !dbg !6381
  %cmp10 = icmp ne i32 %conv9, 0, !dbg !6382
  br i1 %cmp10, label %if.then12, label %if.end19, !dbg !6383

if.then12:                                        ; preds = %land.lhs.true
  br label %do.body13, !dbg !6384

do.body13:                                        ; preds = %if.then12
  br label %do.cond14, !dbg !6387

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !6387

do.end15:                                         ; preds = %do.cond14
  %14 = load ptr, ptr %cur, align 8, !dbg !6384
  %15 = load i8, ptr %14, align 1, !dbg !6384
  %conv17 = zext i8 %15 to i32, !dbg !6384
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef @.str.7, i32 noundef %conv17) #15, !dbg !6384
  store i32 %call18, ptr %tmp16, align 4, !dbg !6387
  %16 = load i32, ptr %tmp16, align 4, !dbg !6384
  store i32 -22, ptr %retval, align 4, !dbg !6389
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6389

if.end19:                                         ; preds = %land.lhs.true, %if.else
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then4
  store i32 0, ptr %retval, align 4, !dbg !6390
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6390

cleanup:                                          ; preds = %if.end20, %do.end15, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur) #16, !dbg !6391
  %17 = load i32, ptr %retval, align 4, !dbg !6391
  ret i32 %17, !dbg !6391
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6392 dso_local ptr @strstr(ptr noundef, ptr noundef) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6395 dso_local i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6398 dso_local i64 @memparse(ptr noundef, ptr noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @bitmap_weight(ptr noundef %src, i32 noundef %nbits) #11 align 16 !dbg !6403 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !6408, metadata !DIExpression()), !dbg !6410
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !6409, metadata !DIExpression()), !dbg !6411
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !6412
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !6412
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !6412

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %nbits.addr, align 4, !dbg !6412
  %cmp = icmp ule i32 %2, 64, !dbg !6412
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !6412

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !6412
  %cmp2 = icmp ugt i32 %3, 0, !dbg !6412
  br i1 %cmp2, label %if.then, label %if.end, !dbg !6414

if.then:                                          ; preds = %land.lhs.true1
  %4 = load ptr, ptr %src.addr, align 8, !dbg !6415
  %5 = load i64, ptr %4, align 8, !dbg !6416
  %6 = load i32, ptr %nbits.addr, align 4, !dbg !6417
  %sub = sub i32 0, %6, !dbg !6417
  %and = and i32 %sub, 63, !dbg !6417
  %sh_prom = zext i32 %and to i64, !dbg !6417
  %shr = lshr i64 -1, %sh_prom, !dbg !6417
  %and3 = and i64 %5, %shr, !dbg !6418
  %call = call i64 @hweight_long(i64 noundef %and3) #17, !dbg !6419
  %conv = trunc i64 %call to i32, !dbg !6419
  store i32 %conv, ptr %retval, align 4, !dbg !6420
  br label %return, !dbg !6420

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %7 = load ptr, ptr %src.addr, align 8, !dbg !6421
  %8 = load i32, ptr %nbits.addr, align 4, !dbg !6422
  %call4 = call i32 @__bitmap_weight(ptr noundef %7, i32 noundef %8) #17, !dbg !6423
  store i32 %call4, ptr %retval, align 4, !dbg !6424
  br label %return, !dbg !6424

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, ptr %retval, align 4, !dbg !6425
  ret i32 %9, !dbg !6425
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @hweight_long(i64 noundef %w) #11 align 16 !dbg !6426 {
entry:
  %w.addr = alloca i64, align 8
  store i64 %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !6429, metadata !DIExpression()), !dbg !6430
  %0 = load i64, ptr %w.addr, align 8, !dbg !6431
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6431
  br i1 %1, label %cond.true, label %cond.false, !dbg !6431

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %w.addr, align 8, !dbg !6431
  %and = and i64 %2, 1, !dbg !6431
  %tobool = icmp ne i64 %and, 0, !dbg !6431
  %lnot = xor i1 %tobool, true, !dbg !6431
  %lnot1 = xor i1 %lnot, true, !dbg !6431
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6431
  %3 = load i64, ptr %w.addr, align 8, !dbg !6431
  %and2 = and i64 %3, 2, !dbg !6431
  %tobool3 = icmp ne i64 %and2, 0, !dbg !6431
  %lnot4 = xor i1 %tobool3, true, !dbg !6431
  %lnot6 = xor i1 %lnot4, true, !dbg !6431
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !6431
  %add = add i32 %lnot.ext, %lnot.ext7, !dbg !6431
  %4 = load i64, ptr %w.addr, align 8, !dbg !6431
  %and8 = and i64 %4, 4, !dbg !6431
  %tobool9 = icmp ne i64 %and8, 0, !dbg !6431
  %lnot10 = xor i1 %tobool9, true, !dbg !6431
  %lnot12 = xor i1 %lnot10, true, !dbg !6431
  %lnot.ext13 = zext i1 %lnot12 to i32, !dbg !6431
  %add14 = add i32 %add, %lnot.ext13, !dbg !6431
  %5 = load i64, ptr %w.addr, align 8, !dbg !6431
  %and15 = and i64 %5, 8, !dbg !6431
  %tobool16 = icmp ne i64 %and15, 0, !dbg !6431
  %lnot17 = xor i1 %tobool16, true, !dbg !6431
  %lnot19 = xor i1 %lnot17, true, !dbg !6431
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !6431
  %add21 = add i32 %add14, %lnot.ext20, !dbg !6431
  %6 = load i64, ptr %w.addr, align 8, !dbg !6431
  %and22 = and i64 %6, 16, !dbg !6431
  %tobool23 = icmp ne i64 %and22, 0, !dbg !6431
  %lnot24 = xor i1 %tobool23, true, !dbg !6431
  %lnot26 = xor i1 %lnot24, true, !dbg !6431
  %lnot.ext27 = zext i1 %lnot26 to i32, !dbg !6431
  %add28 = add i32 %add21, %lnot.ext27, !dbg !6431
  %7 = load i64, ptr %w.addr, align 8, !dbg !6431
  %and29 = and i64 %7, 32, !dbg !6431
  %tobool30 = icmp ne i64 %and29, 0, !dbg !6431
  %lnot31 = xor i1 %tobool30, true, !dbg !6431
  %lnot33 = xor i1 %lnot31, true, !dbg !6431
  %lnot.ext34 = zext i1 %lnot33 to i32, !dbg !6431
  %add35 = add i32 %add28, %lnot.ext34, !dbg !6431
  %8 = load i64, ptr %w.addr, align 8, !dbg !6431
  %and36 = and i64 %8, 64, !dbg !6431
  %tobool37 = icmp ne i64 %and36, 0, !dbg !6431
  %lnot38 = xor i1 %tobool37, true, !dbg !6431
  %lnot40 = xor i1 %lnot38, true, !dbg !6431
  %lnot.ext41 = zext i1 %lnot40 to i32, !dbg !6431
  %add42 = add i32 %add35, %lnot.ext41, !dbg !6431
  %9 = load i64, ptr %w.addr, align 8, !dbg !6431
  %and43 = and i64 %9, 128, !dbg !6431
  %tobool44 = icmp ne i64 %and43, 0, !dbg !6431
  %lnot45 = xor i1 %tobool44, true, !dbg !6431
  %lnot47 = xor i1 %lnot45, true, !dbg !6431
  %lnot.ext48 = zext i1 %lnot47 to i32, !dbg !6431
  %add49 = add i32 %add42, %lnot.ext48, !dbg !6431
  %10 = load i64, ptr %w.addr, align 8, !dbg !6431
  %shr = lshr i64 %10, 8, !dbg !6431
  %and50 = and i64 %shr, 1, !dbg !6431
  %tobool51 = icmp ne i64 %and50, 0, !dbg !6431
  %lnot52 = xor i1 %tobool51, true, !dbg !6431
  %lnot54 = xor i1 %lnot52, true, !dbg !6431
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !6431
  %11 = load i64, ptr %w.addr, align 8, !dbg !6431
  %shr56 = lshr i64 %11, 8, !dbg !6431
  %and57 = and i64 %shr56, 2, !dbg !6431
  %tobool58 = icmp ne i64 %and57, 0, !dbg !6431
  %lnot59 = xor i1 %tobool58, true, !dbg !6431
  %lnot61 = xor i1 %lnot59, true, !dbg !6431
  %lnot.ext62 = zext i1 %lnot61 to i32, !dbg !6431
  %add63 = add i32 %lnot.ext55, %lnot.ext62, !dbg !6431
  %12 = load i64, ptr %w.addr, align 8, !dbg !6431
  %shr64 = lshr i64 %12, 8, !dbg !6431
  %and65 = and i64 %shr64, 4, !dbg !6431
  %tobool66 = icmp ne i64 %and65, 0, !dbg !6431
  %lnot67 = xor i1 %tobool66, true, !dbg !6431
  %lnot69 = xor i1 %lnot67, true, !dbg !6431
  %lnot.ext70 = zext i1 %lnot69 to i32, !dbg !6431
  %add71 = add i32 %add63, %lnot.ext70, !dbg !6431
  %13 = load i64, ptr %w.addr, align 8, !dbg !6431
  %shr72 = lshr i64 %13, 8, !dbg !6431
  %and73 = and i64 %shr72, 8, !dbg !6431
  %tobool74 = icmp ne i64 %and73, 0, !dbg !6431
  %lnot75 = xor i1 %tobool74, true, !dbg !6431
  %lnot77 = xor i1 %lnot75, true, !dbg !6431
  %lnot.ext78 = zext i1 %lnot77 to i32, !dbg !6431
  %add79 = add i32 %add71, %lnot.ext78, !dbg !6431
  %14 = load i64, ptr %w.addr, align 8, !dbg !6431
  %shr80 = lshr i64 %14, 8, !dbg !6431
  %and81 = and i64 %shr80, 16, !dbg !6431
  %tobool82 = icmp ne i64 %and81, 0, !dbg !6431
  %lnot83 = xor i1 %tobool82, true, !dbg !6431
  %lnot85 = xor i1 %lnot83, true, !dbg !6431
  %lnot.ext86 = zext i1 %lnot85 to i32, !dbg !6431
  %add87 = add i32 %add79, %lnot.ext86, !dbg !6431
  %15 = load i64, ptr %w.addr, align 8, !dbg !6431
  %shr88 = lshr i64 %15, 8, !dbg !6431
  %and89 = and i64 %shr88, 32, !dbg !6431
  %tobool90 = icmp ne i64 %and89, 0, !dbg !6431
  %lnot91 = xor i1 %tobool90, true, !dbg !6431
  %lnot93 = xor i1 %lnot91, true, !dbg !6431
  %lnot.ext94 = zext i1 %lnot93 to i32, !dbg !6431
  %add95 = add i32 %add87, %lnot.ext94, !dbg !6431
  %16 = load i64, ptr %w.addr, align 8, !dbg !6431
  %shr96 = lshr i64 %16, 8, !dbg !6431
  %and97 = and i64 %shr96, 64, !dbg !6431
  %tobool98 = icmp ne i64 %and97, 0, !dbg !6431
  %lnot99 = xor i1 %tobool98, true, !dbg !6431
  %lnot101 = xor i1 %lnot99, true, !dbg !6431
  %lnot.ext102 = zext i1 %lnot101 to i32, !dbg !6431
  %add103 = add i32 %add95, %lnot.ext102, !dbg !6431
  %17 = load i64, ptr %w.addr, align 8, !dbg !6431
  %shr104 = lshr i64 %17, 8, !dbg !6431
  %and105 = and i64 %shr104, 128, !dbg !6431
  %tobool106 = icmp ne i64 %and105, 0, !dbg !6431
  %lnot107 = xor i1 %tobool106, true, !dbg !6431
  %lnot109 = xor i1 %lnot107, true, !dbg !6431
  %lnot.ext110 = zext i1 %lnot109 to i32, !dbg !6431
  %add111 = add i32 %add103, %lnot.ext110, !dbg !6431
  %add112 = add i32 %add49, %add111, !dbg !6431
  %18 = load i64, ptr %w.addr, align 8, !dbg !6431
  %shr113 = lshr i64 %18, 16, !dbg !6431
  %and114 = and i64 %shr113, 1, !dbg !6431
  %tobool115 = icmp ne i64 %and114, 0, !dbg !6431
  %lnot116 = xor i1 %tobool115, true, !dbg !6431
  %lnot118 = xor i1 %lnot116, true, !dbg !6431
  %lnot.ext119 = zext i1 %lnot118 to i32, !dbg !6431
  %19 = load i64, ptr %w.addr, align 8, !dbg !6431
  %shr120 = lshr i64 %19, 16, !dbg !6431
  %and121 = and i64 %shr120, 2, !dbg !6431
  %tobool122 = icmp ne i64 %and121, 0, !dbg !6431
  %lnot123 = xor i1 %tobool122, true, !dbg !6431
  %lnot125 = xor i1 %lnot123, true, !dbg !6431
  %lnot.ext126 = zext i1 %lnot125 to i32, !dbg !6431
  %add127 = add i32 %lnot.ext119, %lnot.ext126, !dbg !6431
  %20 = load i64, ptr %w.addr, align 8, !dbg !6431
  %shr128 = lshr i64 %20, 16, !dbg !6431
  %and129 = and i64 %shr128, 4, !dbg !6431
  %tobool130 = icmp ne i64 %and129, 0, !dbg !6431
  %lnot131 = xor i1 %tobool130, true, !dbg !6431
  %lnot133 = xor i1 %lnot131, true, !dbg !6431
  %lnot.ext134 = zext i1 %lnot133 to i32, !dbg !6431
  %add135 = add i32 %add127, %lnot.ext134, !dbg !6431
  %21 = load i64, ptr %w.addr, align 8, !dbg !6431
  %shr136 = lshr i64 %21, 16, !dbg !6431
  %and137 = and i64 %shr136, 8, !dbg !6431
  %tobool138 = icmp ne i64 %and137, 0, !dbg !6431
  %lnot139 = xor i1 %tobool138, true, !dbg !6431
  %lnot141 = xor i1 %lnot139, true, !dbg !6431
  %lnot.ext142 = zext i1 %lnot141 to i32, !dbg !6431
  %add143 = add i32 %add135, %lnot.ext142, !dbg !6431
  %22 = load i64, ptr %w.addr, align 8, !dbg !6431
  %shr144 = lshr i64 %22, 16, !dbg !6431
  %and145 = and i64 %shr144, 16, !dbg !6431
  %tobool146 = icmp ne i64 %and145, 0, !dbg !6431
  %lnot147 = xor i1 %tobool146, true, !dbg !6431
  %lnot149 = xor i1 %lnot147, true, !dbg !6431
  %lnot.ext150 = zext i1 %lnot149 to i32, !dbg !6431
  %add151 = add i32 %add143, %lnot.ext150, !dbg !6431
  %23 = load i64, ptr %w.addr, align 8, !dbg !6431
  %shr152 = lshr i64 %23, 16, !dbg !6431
  %and153 = and i64 %shr152, 32, !dbg !6431
  %tobool154 = icmp ne i64 %and153, 0, !dbg !6431
  %lnot155 = xor i1 %tobool154, true, !dbg !6431
  %lnot157 = xor i1 %lnot155, true, !dbg !6431
  %lnot.ext158 = zext i1 %lnot157 to i32, !dbg !6431
  %add159 = add i32 %add151, %lnot.ext158, !dbg !6431
  %24 = load i64, ptr %w.addr, align 8, !dbg !6431
  %shr160 = lshr i64 %24, 16, !dbg !6431
  %and161 = and i64 %shr160, 64, !dbg !6431
  %tobool162 = icmp ne i64 %and161, 0, !dbg !6431
  %lnot163 = xor i1 %tobool162, true, !dbg !6431
  %lnot165 = xor i1 %lnot163, true, !dbg !6431
  %lnot.ext166 = zext i1 %lnot165 to i32, !dbg !6431
  %add167 = add i32 %add159, %lnot.ext166, !dbg !6431
  %25 = load i64, ptr %w.addr, align 8, !dbg !6431
  %shr168 = lshr i64 %25, 16, !dbg !6431
  %and169 = and i64 %shr168, 128, !dbg !6431
  %tobool170 = icmp ne i64 %and169, 0, !dbg !6431
  %lnot171 = xor i1 %tobool170, true, !dbg !6431
  %lnot173 = xor i1 %lnot171, true, !dbg !6431
  %lnot.ext174 = zext i1 %lnot173 to i32, !dbg !6431
  %add175 = add i32 %add167, %lnot.ext174, !dbg !6431
  %26 = load i64, ptr %w.addr, align 8, !dbg !6431
  %shr176 = lshr i64 %26, 16, !dbg !6431
  %shr177 = lshr i64 %shr176, 8, !dbg !6431
  %and178 = and i64 %shr177, 1, !dbg !6431
  %tobool179 = icmp ne i64 %and178, 0, !dbg !6431
  %lnot180 = xor i1 %tobool179, true, !dbg !6431
  %lnot182 = xor i1 %lnot180, true, !dbg !6431
  %lnot.ext183 = zext i1 %lnot182 to i32, !dbg !6431
  %27 = load i64, ptr %w.addr, align 8, !dbg !6431
  %shr184 = lshr i64 %27, 16, !dbg !6431
  %shr185 = lshr i64 %shr184, 8, !dbg !6431
  %and186 = and i64 %shr185, 2, !dbg !6431
  %tobool187 = icmp ne i64 %and186, 0, !dbg !6431
  %lnot188 = xor i1 %tobool187, true, !dbg !6431
  %lnot190 = xor i1 %lnot188, true, !dbg !6431
  %lnot.ext191 = zext i1 %lnot190 to i32, !dbg !6431
  %add192 = add i32 %lnot.ext183, %lnot.ext191, !dbg !6431
  %28 = load i64, ptr %w.addr, align 8, !dbg !6431
  %shr193 = lshr i64 %28, 16, !dbg !6431
  %shr194 = lshr i64 %shr193, 8, !dbg !6431
  %and195 = and i64 %shr194, 4, !dbg !6431
  %tobool196 = icmp ne i64 %and195, 0, !dbg !6431
  %lnot197 = xor i1 %tobool196, true, !dbg !6431
  %lnot199 = xor i1 %lnot197, true, !dbg !6431
  %lnot.ext200 = zext i1 %lnot199 to i32, !dbg !6431
  %add201 = add i32 %add192, %lnot.ext200, !dbg !6431
  %29 = load i64, ptr %w.addr, align 8, !dbg !6431
  %shr202 = lshr i64 %29, 16, !dbg !6431
  %shr203 = lshr i64 %shr202, 8, !dbg !6431
  %and204 = and i64 %shr203, 8, !dbg !6431
  %tobool205 = icmp ne i64 %and204, 0, !dbg !6431
  %lnot206 = xor i1 %tobool205, true, !dbg !6431
  %lnot208 = xor i1 %lnot206, true, !dbg !6431
  %lnot.ext209 = zext i1 %lnot208 to i32, !dbg !6431
  %add210 = add i32 %add201, %lnot.ext209, !dbg !6431
  %30 = load i64, ptr %w.addr, align 8, !dbg !6431
  %shr211 = lshr i64 %30, 16, !dbg !6431
  %shr212 = lshr i64 %shr211, 8, !dbg !6431
  %and213 = and i64 %shr212, 16, !dbg !6431
  %tobool214 = icmp ne i64 %and213, 0, !dbg !6431
  %lnot215 = xor i1 %tobool214, true, !dbg !6431
  %lnot217 = xor i1 %lnot215, true, !dbg !6431
  %lnot.ext218 = zext i1 %lnot217 to i32, !dbg !6431
  %add219 = add i32 %add210, %lnot.ext218, !dbg !6431
  %31 = load i64, ptr %w.addr, align 8, !dbg !6431
  %shr220 = lshr i64 %31, 16, !dbg !6431
  %shr221 = lshr i64 %shr220, 8, !dbg !6431
  %and222 = and i64 %shr221, 32, !dbg !6431
  %tobool223 = icmp ne i64 %and222, 0, !dbg !6431
  %lnot224 = xor i1 %tobool223, true, !dbg !6431
  %lnot226 = xor i1 %lnot224, true, !dbg !6431
  %lnot.ext227 = zext i1 %lnot226 to i32, !dbg !6431
  %add228 = add i32 %add219, %lnot.ext227, !dbg !6431
  %32 = load i64, ptr %w.addr, align 8, !dbg !6431
  %shr229 = lshr i64 %32, 16, !dbg !6431
  %shr230 = lshr i64 %shr229, 8, !dbg !6431
  %and231 = and i64 %shr230, 64, !dbg !6431
  %tobool232 = icmp ne i64 %and231, 0, !dbg !6431
  %lnot233 = xor i1 %tobool232, true, !dbg !6431
  %lnot235 = xor i1 %lnot233, true, !dbg !6431
  %lnot.ext236 = zext i1 %lnot235 to i32, !dbg !6431
  %add237 = add i32 %add228, %lnot.ext236, !dbg !6431
  %33 = load i64, ptr %w.addr, align 8, !dbg !6431
  %shr238 = lshr i64 %33, 16, !dbg !6431
  %shr239 = lshr i64 %shr238, 8, !dbg !6431
  %and240 = and i64 %shr239, 128, !dbg !6431
  %tobool241 = icmp ne i64 %and240, 0, !dbg !6431
  %lnot242 = xor i1 %tobool241, true, !dbg !6431
  %lnot244 = xor i1 %lnot242, true, !dbg !6431
  %lnot.ext245 = zext i1 %lnot244 to i32, !dbg !6431
  %add246 = add i32 %add237, %lnot.ext245, !dbg !6431
  %add247 = add i32 %add175, %add246, !dbg !6431
  %add248 = add i32 %add112, %add247, !dbg !6431
  %34 = load i64, ptr %w.addr, align 8, !dbg !6431
  %shr249 = lshr i64 %34, 32, !dbg !6431
  %and250 = and i64 %shr249, 1, !dbg !6431
  %tobool251 = icmp ne i64 %and250, 0, !dbg !6431
  %lnot252 = xor i1 %tobool251, true, !dbg !6431
  %lnot254 = xor i1 %lnot252, true, !dbg !6431
  %lnot.ext255 = zext i1 %lnot254 to i32, !dbg !6431
  %35 = load i64, ptr %w.addr, align 8, !dbg !6431
  %shr256 = lshr i64 %35, 32, !dbg !6431
  %and257 = and i64 %shr256, 2, !dbg !6431
  %tobool258 = icmp ne i64 %and257, 0, !dbg !6431
  %lnot259 = xor i1 %tobool258, true, !dbg !6431
  %lnot261 = xor i1 %lnot259, true, !dbg !6431
  %lnot.ext262 = zext i1 %lnot261 to i32, !dbg !6431
  %add263 = add i32 %lnot.ext255, %lnot.ext262, !dbg !6431
  %36 = load i64, ptr %w.addr, align 8, !dbg !6431
  %shr264 = lshr i64 %36, 32, !dbg !6431
  %and265 = and i64 %shr264, 4, !dbg !6431
  %tobool266 = icmp ne i64 %and265, 0, !dbg !6431
  %lnot267 = xor i1 %tobool266, true, !dbg !6431
  %lnot269 = xor i1 %lnot267, true, !dbg !6431
  %lnot.ext270 = zext i1 %lnot269 to i32, !dbg !6431
  %add271 = add i32 %add263, %lnot.ext270, !dbg !6431
  %37 = load i64, ptr %w.addr, align 8, !dbg !6431
  %shr272 = lshr i64 %37, 32, !dbg !6431
  %and273 = and i64 %shr272, 8, !dbg !6431
  %tobool274 = icmp ne i64 %and273, 0, !dbg !6431
  %lnot275 = xor i1 %tobool274, true, !dbg !6431
  %lnot277 = xor i1 %lnot275, true, !dbg !6431
  %lnot.ext278 = zext i1 %lnot277 to i32, !dbg !6431
  %add279 = add i32 %add271, %lnot.ext278, !dbg !6431
  %38 = load i64, ptr %w.addr, align 8, !dbg !6431
  %shr280 = lshr i64 %38, 32, !dbg !6431
  %and281 = and i64 %shr280, 16, !dbg !6431
  %tobool282 = icmp ne i64 %and281, 0, !dbg !6431
  %lnot283 = xor i1 %tobool282, true, !dbg !6431
  %lnot285 = xor i1 %lnot283, true, !dbg !6431
  %lnot.ext286 = zext i1 %lnot285 to i32, !dbg !6431
  %add287 = add i32 %add279, %lnot.ext286, !dbg !6431
  %39 = load i64, ptr %w.addr, align 8, !dbg !6431
  %shr288 = lshr i64 %39, 32, !dbg !6431
  %and289 = and i64 %shr288, 32, !dbg !6431
  %tobool290 = icmp ne i64 %and289, 0, !dbg !6431
  %lnot291 = xor i1 %tobool290, true, !dbg !6431
  %lnot293 = xor i1 %lnot291, true, !dbg !6431
  %lnot.ext294 = zext i1 %lnot293 to i32, !dbg !6431
  %add295 = add i32 %add287, %lnot.ext294, !dbg !6431
  %40 = load i64, ptr %w.addr, align 8, !dbg !6431
  %shr296 = lshr i64 %40, 32, !dbg !6431
  %and297 = and i64 %shr296, 64, !dbg !6431
  %tobool298 = icmp ne i64 %and297, 0, !dbg !6431
  %lnot299 = xor i1 %tobool298, true, !dbg !6431
  %lnot301 = xor i1 %lnot299, true, !dbg !6431
  %lnot.ext302 = zext i1 %lnot301 to i32, !dbg !6431
  %add303 = add i32 %add295, %lnot.ext302, !dbg !6431
  %41 = load i64, ptr %w.addr, align 8, !dbg !6431
  %shr304 = lshr i64 %41, 32, !dbg !6431
  %and305 = and i64 %shr304, 128, !dbg !6431
  %tobool306 = icmp ne i64 %and305, 0, !dbg !6431
  %lnot307 = xor i1 %tobool306, true, !dbg !6431
  %lnot309 = xor i1 %lnot307, true, !dbg !6431
  %lnot.ext310 = zext i1 %lnot309 to i32, !dbg !6431
  %add311 = add i32 %add303, %lnot.ext310, !dbg !6431
  %42 = load i64, ptr %w.addr, align 8, !dbg !6431
  %shr312 = lshr i64 %42, 32, !dbg !6431
  %shr313 = lshr i64 %shr312, 8, !dbg !6431
  %and314 = and i64 %shr313, 1, !dbg !6431
  %tobool315 = icmp ne i64 %and314, 0, !dbg !6431
  %lnot316 = xor i1 %tobool315, true, !dbg !6431
  %lnot318 = xor i1 %lnot316, true, !dbg !6431
  %lnot.ext319 = zext i1 %lnot318 to i32, !dbg !6431
  %43 = load i64, ptr %w.addr, align 8, !dbg !6431
  %shr320 = lshr i64 %43, 32, !dbg !6431
  %shr321 = lshr i64 %shr320, 8, !dbg !6431
  %and322 = and i64 %shr321, 2, !dbg !6431
  %tobool323 = icmp ne i64 %and322, 0, !dbg !6431
  %lnot324 = xor i1 %tobool323, true, !dbg !6431
  %lnot326 = xor i1 %lnot324, true, !dbg !6431
  %lnot.ext327 = zext i1 %lnot326 to i32, !dbg !6431
  %add328 = add i32 %lnot.ext319, %lnot.ext327, !dbg !6431
  %44 = load i64, ptr %w.addr, align 8, !dbg !6431
  %shr329 = lshr i64 %44, 32, !dbg !6431
  %shr330 = lshr i64 %shr329, 8, !dbg !6431
  %and331 = and i64 %shr330, 4, !dbg !6431
  %tobool332 = icmp ne i64 %and331, 0, !dbg !6431
  %lnot333 = xor i1 %tobool332, true, !dbg !6431
  %lnot335 = xor i1 %lnot333, true, !dbg !6431
  %lnot.ext336 = zext i1 %lnot335 to i32, !dbg !6431
  %add337 = add i32 %add328, %lnot.ext336, !dbg !6431
  %45 = load i64, ptr %w.addr, align 8, !dbg !6431
  %shr338 = lshr i64 %45, 32, !dbg !6431
  %shr339 = lshr i64 %shr338, 8, !dbg !6431
  %and340 = and i64 %shr339, 8, !dbg !6431
  %tobool341 = icmp ne i64 %and340, 0, !dbg !6431
  %lnot342 = xor i1 %tobool341, true, !dbg !6431
  %lnot344 = xor i1 %lnot342, true, !dbg !6431
  %lnot.ext345 = zext i1 %lnot344 to i32, !dbg !6431
  %add346 = add i32 %add337, %lnot.ext345, !dbg !6431
  %46 = load i64, ptr %w.addr, align 8, !dbg !6431
  %shr347 = lshr i64 %46, 32, !dbg !6431
  %shr348 = lshr i64 %shr347, 8, !dbg !6431
  %and349 = and i64 %shr348, 16, !dbg !6431
  %tobool350 = icmp ne i64 %and349, 0, !dbg !6431
  %lnot351 = xor i1 %tobool350, true, !dbg !6431
  %lnot353 = xor i1 %lnot351, true, !dbg !6431
  %lnot.ext354 = zext i1 %lnot353 to i32, !dbg !6431
  %add355 = add i32 %add346, %lnot.ext354, !dbg !6431
  %47 = load i64, ptr %w.addr, align 8, !dbg !6431
  %shr356 = lshr i64 %47, 32, !dbg !6431
  %shr357 = lshr i64 %shr356, 8, !dbg !6431
  %and358 = and i64 %shr357, 32, !dbg !6431
  %tobool359 = icmp ne i64 %and358, 0, !dbg !6431
  %lnot360 = xor i1 %tobool359, true, !dbg !6431
  %lnot362 = xor i1 %lnot360, true, !dbg !6431
  %lnot.ext363 = zext i1 %lnot362 to i32, !dbg !6431
  %add364 = add i32 %add355, %lnot.ext363, !dbg !6431
  %48 = load i64, ptr %w.addr, align 8, !dbg !6431
  %shr365 = lshr i64 %48, 32, !dbg !6431
  %shr366 = lshr i64 %shr365, 8, !dbg !6431
  %and367 = and i64 %shr366, 64, !dbg !6431
  %tobool368 = icmp ne i64 %and367, 0, !dbg !6431
  %lnot369 = xor i1 %tobool368, true, !dbg !6431
  %lnot371 = xor i1 %lnot369, true, !dbg !6431
  %lnot.ext372 = zext i1 %lnot371 to i32, !dbg !6431
  %add373 = add i32 %add364, %lnot.ext372, !dbg !6431
  %49 = load i64, ptr %w.addr, align 8, !dbg !6431
  %shr374 = lshr i64 %49, 32, !dbg !6431
  %shr375 = lshr i64 %shr374, 8, !dbg !6431
  %and376 = and i64 %shr375, 128, !dbg !6431
  %tobool377 = icmp ne i64 %and376, 0, !dbg !6431
  %lnot378 = xor i1 %tobool377, true, !dbg !6431
  %lnot380 = xor i1 %lnot378, true, !dbg !6431
  %lnot.ext381 = zext i1 %lnot380 to i32, !dbg !6431
  %add382 = add i32 %add373, %lnot.ext381, !dbg !6431
  %add383 = add i32 %add311, %add382, !dbg !6431
  %50 = load i64, ptr %w.addr, align 8, !dbg !6431
  %shr384 = lshr i64 %50, 32, !dbg !6431
  %shr385 = lshr i64 %shr384, 16, !dbg !6431
  %and386 = and i64 %shr385, 1, !dbg !6431
  %tobool387 = icmp ne i64 %and386, 0, !dbg !6431
  %lnot388 = xor i1 %tobool387, true, !dbg !6431
  %lnot390 = xor i1 %lnot388, true, !dbg !6431
  %lnot.ext391 = zext i1 %lnot390 to i32, !dbg !6431
  %51 = load i64, ptr %w.addr, align 8, !dbg !6431
  %shr392 = lshr i64 %51, 32, !dbg !6431
  %shr393 = lshr i64 %shr392, 16, !dbg !6431
  %and394 = and i64 %shr393, 2, !dbg !6431
  %tobool395 = icmp ne i64 %and394, 0, !dbg !6431
  %lnot396 = xor i1 %tobool395, true, !dbg !6431
  %lnot398 = xor i1 %lnot396, true, !dbg !6431
  %lnot.ext399 = zext i1 %lnot398 to i32, !dbg !6431
  %add400 = add i32 %lnot.ext391, %lnot.ext399, !dbg !6431
  %52 = load i64, ptr %w.addr, align 8, !dbg !6431
  %shr401 = lshr i64 %52, 32, !dbg !6431
  %shr402 = lshr i64 %shr401, 16, !dbg !6431
  %and403 = and i64 %shr402, 4, !dbg !6431
  %tobool404 = icmp ne i64 %and403, 0, !dbg !6431
  %lnot405 = xor i1 %tobool404, true, !dbg !6431
  %lnot407 = xor i1 %lnot405, true, !dbg !6431
  %lnot.ext408 = zext i1 %lnot407 to i32, !dbg !6431
  %add409 = add i32 %add400, %lnot.ext408, !dbg !6431
  %53 = load i64, ptr %w.addr, align 8, !dbg !6431
  %shr410 = lshr i64 %53, 32, !dbg !6431
  %shr411 = lshr i64 %shr410, 16, !dbg !6431
  %and412 = and i64 %shr411, 8, !dbg !6431
  %tobool413 = icmp ne i64 %and412, 0, !dbg !6431
  %lnot414 = xor i1 %tobool413, true, !dbg !6431
  %lnot416 = xor i1 %lnot414, true, !dbg !6431
  %lnot.ext417 = zext i1 %lnot416 to i32, !dbg !6431
  %add418 = add i32 %add409, %lnot.ext417, !dbg !6431
  %54 = load i64, ptr %w.addr, align 8, !dbg !6431
  %shr419 = lshr i64 %54, 32, !dbg !6431
  %shr420 = lshr i64 %shr419, 16, !dbg !6431
  %and421 = and i64 %shr420, 16, !dbg !6431
  %tobool422 = icmp ne i64 %and421, 0, !dbg !6431
  %lnot423 = xor i1 %tobool422, true, !dbg !6431
  %lnot425 = xor i1 %lnot423, true, !dbg !6431
  %lnot.ext426 = zext i1 %lnot425 to i32, !dbg !6431
  %add427 = add i32 %add418, %lnot.ext426, !dbg !6431
  %55 = load i64, ptr %w.addr, align 8, !dbg !6431
  %shr428 = lshr i64 %55, 32, !dbg !6431
  %shr429 = lshr i64 %shr428, 16, !dbg !6431
  %and430 = and i64 %shr429, 32, !dbg !6431
  %tobool431 = icmp ne i64 %and430, 0, !dbg !6431
  %lnot432 = xor i1 %tobool431, true, !dbg !6431
  %lnot434 = xor i1 %lnot432, true, !dbg !6431
  %lnot.ext435 = zext i1 %lnot434 to i32, !dbg !6431
  %add436 = add i32 %add427, %lnot.ext435, !dbg !6431
  %56 = load i64, ptr %w.addr, align 8, !dbg !6431
  %shr437 = lshr i64 %56, 32, !dbg !6431
  %shr438 = lshr i64 %shr437, 16, !dbg !6431
  %and439 = and i64 %shr438, 64, !dbg !6431
  %tobool440 = icmp ne i64 %and439, 0, !dbg !6431
  %lnot441 = xor i1 %tobool440, true, !dbg !6431
  %lnot443 = xor i1 %lnot441, true, !dbg !6431
  %lnot.ext444 = zext i1 %lnot443 to i32, !dbg !6431
  %add445 = add i32 %add436, %lnot.ext444, !dbg !6431
  %57 = load i64, ptr %w.addr, align 8, !dbg !6431
  %shr446 = lshr i64 %57, 32, !dbg !6431
  %shr447 = lshr i64 %shr446, 16, !dbg !6431
  %and448 = and i64 %shr447, 128, !dbg !6431
  %tobool449 = icmp ne i64 %and448, 0, !dbg !6431
  %lnot450 = xor i1 %tobool449, true, !dbg !6431
  %lnot452 = xor i1 %lnot450, true, !dbg !6431
  %lnot.ext453 = zext i1 %lnot452 to i32, !dbg !6431
  %add454 = add i32 %add445, %lnot.ext453, !dbg !6431
  %58 = load i64, ptr %w.addr, align 8, !dbg !6431
  %shr455 = lshr i64 %58, 32, !dbg !6431
  %shr456 = lshr i64 %shr455, 16, !dbg !6431
  %shr457 = lshr i64 %shr456, 8, !dbg !6431
  %and458 = and i64 %shr457, 1, !dbg !6431
  %tobool459 = icmp ne i64 %and458, 0, !dbg !6431
  %lnot460 = xor i1 %tobool459, true, !dbg !6431
  %lnot462 = xor i1 %lnot460, true, !dbg !6431
  %lnot.ext463 = zext i1 %lnot462 to i32, !dbg !6431
  %59 = load i64, ptr %w.addr, align 8, !dbg !6431
  %shr464 = lshr i64 %59, 32, !dbg !6431
  %shr465 = lshr i64 %shr464, 16, !dbg !6431
  %shr466 = lshr i64 %shr465, 8, !dbg !6431
  %and467 = and i64 %shr466, 2, !dbg !6431
  %tobool468 = icmp ne i64 %and467, 0, !dbg !6431
  %lnot469 = xor i1 %tobool468, true, !dbg !6431
  %lnot471 = xor i1 %lnot469, true, !dbg !6431
  %lnot.ext472 = zext i1 %lnot471 to i32, !dbg !6431
  %add473 = add i32 %lnot.ext463, %lnot.ext472, !dbg !6431
  %60 = load i64, ptr %w.addr, align 8, !dbg !6431
  %shr474 = lshr i64 %60, 32, !dbg !6431
  %shr475 = lshr i64 %shr474, 16, !dbg !6431
  %shr476 = lshr i64 %shr475, 8, !dbg !6431
  %and477 = and i64 %shr476, 4, !dbg !6431
  %tobool478 = icmp ne i64 %and477, 0, !dbg !6431
  %lnot479 = xor i1 %tobool478, true, !dbg !6431
  %lnot481 = xor i1 %lnot479, true, !dbg !6431
  %lnot.ext482 = zext i1 %lnot481 to i32, !dbg !6431
  %add483 = add i32 %add473, %lnot.ext482, !dbg !6431
  %61 = load i64, ptr %w.addr, align 8, !dbg !6431
  %shr484 = lshr i64 %61, 32, !dbg !6431
  %shr485 = lshr i64 %shr484, 16, !dbg !6431
  %shr486 = lshr i64 %shr485, 8, !dbg !6431
  %and487 = and i64 %shr486, 8, !dbg !6431
  %tobool488 = icmp ne i64 %and487, 0, !dbg !6431
  %lnot489 = xor i1 %tobool488, true, !dbg !6431
  %lnot491 = xor i1 %lnot489, true, !dbg !6431
  %lnot.ext492 = zext i1 %lnot491 to i32, !dbg !6431
  %add493 = add i32 %add483, %lnot.ext492, !dbg !6431
  %62 = load i64, ptr %w.addr, align 8, !dbg !6431
  %shr494 = lshr i64 %62, 32, !dbg !6431
  %shr495 = lshr i64 %shr494, 16, !dbg !6431
  %shr496 = lshr i64 %shr495, 8, !dbg !6431
  %and497 = and i64 %shr496, 16, !dbg !6431
  %tobool498 = icmp ne i64 %and497, 0, !dbg !6431
  %lnot499 = xor i1 %tobool498, true, !dbg !6431
  %lnot501 = xor i1 %lnot499, true, !dbg !6431
  %lnot.ext502 = zext i1 %lnot501 to i32, !dbg !6431
  %add503 = add i32 %add493, %lnot.ext502, !dbg !6431
  %63 = load i64, ptr %w.addr, align 8, !dbg !6431
  %shr504 = lshr i64 %63, 32, !dbg !6431
  %shr505 = lshr i64 %shr504, 16, !dbg !6431
  %shr506 = lshr i64 %shr505, 8, !dbg !6431
  %and507 = and i64 %shr506, 32, !dbg !6431
  %tobool508 = icmp ne i64 %and507, 0, !dbg !6431
  %lnot509 = xor i1 %tobool508, true, !dbg !6431
  %lnot511 = xor i1 %lnot509, true, !dbg !6431
  %lnot.ext512 = zext i1 %lnot511 to i32, !dbg !6431
  %add513 = add i32 %add503, %lnot.ext512, !dbg !6431
  %64 = load i64, ptr %w.addr, align 8, !dbg !6431
  %shr514 = lshr i64 %64, 32, !dbg !6431
  %shr515 = lshr i64 %shr514, 16, !dbg !6431
  %shr516 = lshr i64 %shr515, 8, !dbg !6431
  %and517 = and i64 %shr516, 64, !dbg !6431
  %tobool518 = icmp ne i64 %and517, 0, !dbg !6431
  %lnot519 = xor i1 %tobool518, true, !dbg !6431
  %lnot521 = xor i1 %lnot519, true, !dbg !6431
  %lnot.ext522 = zext i1 %lnot521 to i32, !dbg !6431
  %add523 = add i32 %add513, %lnot.ext522, !dbg !6431
  %65 = load i64, ptr %w.addr, align 8, !dbg !6431
  %shr524 = lshr i64 %65, 32, !dbg !6431
  %shr525 = lshr i64 %shr524, 16, !dbg !6431
  %shr526 = lshr i64 %shr525, 8, !dbg !6431
  %and527 = and i64 %shr526, 128, !dbg !6431
  %tobool528 = icmp ne i64 %and527, 0, !dbg !6431
  %lnot529 = xor i1 %tobool528, true, !dbg !6431
  %lnot531 = xor i1 %lnot529, true, !dbg !6431
  %lnot.ext532 = zext i1 %lnot531 to i32, !dbg !6431
  %add533 = add i32 %add523, %lnot.ext532, !dbg !6431
  %add534 = add i32 %add454, %add533, !dbg !6431
  %add535 = add i32 %add383, %add534, !dbg !6431
  %add536 = add i32 %add248, %add535, !dbg !6431
  %conv = zext i32 %add536 to i64, !dbg !6431
  br label %cond.end, !dbg !6431

cond.false:                                       ; preds = %entry
  %66 = load i64, ptr %w.addr, align 8, !dbg !6431
  %call = call i64 @__arch_hweight64(i64 noundef %66) #17, !dbg !6431
  br label %cond.end, !dbg !6431

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %call, %cond.false ], !dbg !6431
  ret i64 %cond, !dbg !6432
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6433 dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) #8

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__arch_hweight64(i64 noundef %w) #11 align 16 !dbg !6434 {
entry:
  %w.addr = alloca i64, align 8
  %res = alloca i64, align 8
  store i64 %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !6439, metadata !DIExpression()), !dbg !6441
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #16, !dbg !6442
  call void @llvm.dbg.declare(metadata ptr %res, metadata !6440, metadata !DIExpression()), !dbg !6443
  %0 = load i64, ptr %w.addr, align 8, !dbg !6444
  %1 = call i64 asm "# ALT: oldnstr\0A661:\0A\09call __sw_hweight64\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 4*32+23)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09popcntq $1, $0\0A6651:\0A.popsection\0A", "={ax},{di},~{dirflag},~{fpsr},~{flags}"(i64 %0) #20, !dbg !6445, !srcloc !6446
  store i64 %1, ptr %res, align 8, !dbg !6445
  %2 = load i64, ptr %res, align 8, !dbg !6447
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #16, !dbg !6448
  ret i64 %2, !dbg !6449
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #11 align 16 !dbg !6450 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !6453, metadata !DIExpression()), !dbg !6454
  %0 = load i64, ptr %word.addr, align 8, !dbg !6455
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #21, !dbg !6456, !srcloc !6457
  store i64 %1, ptr %word.addr, align 8, !dbg !6456
  %2 = load i64, ptr %word.addr, align 8, !dbg !6458
  ret i64 %2, !dbg !6459
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6460 dso_local i64 @_find_next_bit(ptr noundef, i64 noundef, i64 noundef) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6461 dso_local i64 @get_zeroed_page(i32 noundef) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6465 dso_local noalias ptr @alloc_pages_exact(i64 noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6468 dso_local void @free_pages(i64 noundef, i32 noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_static_cpu_has(i16 noundef zeroext %bit) #11 align 16 !dbg !6471 {
entry:
  %retval = alloca i1, align 1
  %bit.addr = alloca i16, align 2
  store i16 %bit, ptr %bit.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !6476, metadata !DIExpression()), !dbg !6479
  %0 = load i16, ptr %bit.addr, align 2, !dbg !6480
  %1 = load i16, ptr %bit.addr, align 2, !dbg !6481
  %conv = zext i16 %1 to i32, !dbg !6481
  %and = and i32 %conv, 7, !dbg !6482
  %shl = shl i32 1, %and, !dbg !6483
  %2 = load i16, ptr %bit.addr, align 2, !dbg !6484
  %conv1 = zext i16 %2 to i32, !dbg !6484
  %shr = ashr i32 %conv1, 3, !dbg !6485
  %idxprom = sext i32 %shr to i64, !dbg !6486
  %arrayidx = getelementptr i8, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10), i64 %idxprom, !dbg !6486
  callbr void asm sideeffect "# ALT: oldinstr2\0A661:\0A\09jmp 6f\0A662:\0A# ALT: padding2\0A.skip -((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)) > 0) * (((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)), 0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 3*32+21)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .long 661b - .\0A .long 6642f - .\0A .4byte ${0:c}\0A .byte 663b-661b\0A .byte 6652f-6642f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09jmp ${4:l}\0A6651:\0A# ALT: replacement 2\0A6642:\0A\09\0A6652:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A testb $1,${2:P} (% rip)\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 %0, i32 %shl, ptr %arrayidx) #16
          to label %asm.fallthrough [label %t_yes, label %t_no], !dbg !6487, !srcloc !6488

asm.fallthrough:                                  ; preds = %entry
  br label %t_yes, !dbg !6487

t_yes:                                            ; preds = %asm.fallthrough, %entry
  call void @llvm.dbg.label(metadata !6477), !dbg !6489
  store i1 true, ptr %retval, align 1, !dbg !6490
  br label %return, !dbg !6490

t_no:                                             ; preds = %entry
  call void @llvm.dbg.label(metadata !6478), !dbg !6491
  store i1 false, ptr %retval, align 1, !dbg !6492
  br label %return, !dbg !6492

return:                                           ; preds = %t_no, %t_yes
  %3 = load i1, ptr %retval, align 1, !dbg !6493
  ret i1 %3, !dbg !6493
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6494 dso_local void @log_buf_vmcoreinfo_setup() #8

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6495 dso_local void @__compiletime_assert_328() #14

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6496 dso_local noalias ptr @__alloc_percpu(i64 noundef, i64 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_cmpxchg_acquire(ptr noundef %v, i32 noundef %old, i32 noundef %new) #11 align 16 !dbg !6499 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca i32, align 4
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6505, metadata !DIExpression()), !dbg !6508
  store i32 %old, ptr %old.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !6506, metadata !DIExpression()), !dbg !6509
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6507, metadata !DIExpression()), !dbg !6510
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6511
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #17, !dbg !6512
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6513
  %2 = load i32, ptr %old.addr, align 4, !dbg !6514
  %3 = load i32, ptr %new.addr, align 4, !dbg !6515
  %call = call i32 @raw_atomic_cmpxchg_acquire(ptr noundef %1, i32 noundef %2, i32 noundef %3) #17, !dbg !6516
  ret i32 %call, !dbg !6517
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #11 align 16 !dbg !6518 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6526, metadata !DIExpression()), !dbg !6528
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6527, metadata !DIExpression()), !dbg !6529
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6530
  %1 = load i64, ptr %size.addr, align 8, !dbg !6531
  %conv = trunc i64 %1 to i32, !dbg !6531
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #17, !dbg !6532
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6533
  %3 = load i64, ptr %size.addr, align 8, !dbg !6533
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #17, !dbg !6533
  ret void, !dbg !6534
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_cmpxchg_acquire(ptr noundef %v, i32 noundef %old, i32 noundef %new) #11 align 16 !dbg !6535 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca i32, align 4
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6538, metadata !DIExpression()), !dbg !6541
  store i32 %old, ptr %old.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !6539, metadata !DIExpression()), !dbg !6542
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6540, metadata !DIExpression()), !dbg !6543
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6544
  %1 = load i32, ptr %old.addr, align 4, !dbg !6545
  %2 = load i32, ptr %new.addr, align 4, !dbg !6546
  %call = call i32 @arch_atomic_cmpxchg(ptr noundef %0, i32 noundef %1, i32 noundef %2) #17, !dbg !6547
  ret i32 %call, !dbg !6548
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !6549 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6554, metadata !DIExpression()), !dbg !6556
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6555, metadata !DIExpression()), !dbg !6557
  ret i1 true, !dbg !6558
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !6559 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6564, metadata !DIExpression()), !dbg !6567
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6565, metadata !DIExpression()), !dbg !6568
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6566, metadata !DIExpression()), !dbg !6569
  ret void, !dbg !6570
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_cmpxchg(ptr noundef %v, i32 noundef %old, i32 noundef %new) #11 align 16 !dbg !6571 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca i32, align 4
  %new.addr = alloca i32, align 4
  %__ret = alloca i32, align 4
  %__old = alloca i32, align 4
  %__new = alloca i32, align 4
  %__ptr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6574, metadata !DIExpression()), !dbg !6582
  store i32 %old, ptr %old.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !6575, metadata !DIExpression()), !dbg !6583
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6576, metadata !DIExpression()), !dbg !6584
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #16, !dbg !6585
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !6577, metadata !DIExpression()), !dbg !6585
  call void @llvm.lifetime.start.p0(i64 4, ptr %__old) #16, !dbg !6585
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !6579, metadata !DIExpression()), !dbg !6585
  %0 = load i32, ptr %old.addr, align 4, !dbg !6585
  store i32 %0, ptr %__old, align 4, !dbg !6585
  call void @llvm.lifetime.start.p0(i64 4, ptr %__new) #16, !dbg !6585
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !6580, metadata !DIExpression()), !dbg !6585
  %1 = load i32, ptr %new.addr, align 4, !dbg !6585
  store i32 %1, ptr %__new, align 4, !dbg !6585
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #16, !dbg !6585
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !6581, metadata !DIExpression()), !dbg !6585
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6585
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !6585
  store ptr %counter, ptr %__ptr, align 8, !dbg !6585
  %3 = load ptr, ptr %__ptr, align 8, !dbg !6585
  %4 = load i32, ptr %__new, align 4, !dbg !6585
  %5 = load i32, ptr %__old, align 4, !dbg !6585
  %6 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgl $2,$1", "={ax},=*m,r,0,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %3, i32 %4, i32 %5, ptr elementtype(i32) %3) #16, !dbg !6585, !srcloc !6586
  store i32 %6, ptr %__ret, align 4, !dbg !6585
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #16, !dbg !6585
  %7 = load i32, ptr %__ret, align 4, !dbg !6585
  store i32 %7, ptr %tmp, align 4, !dbg !6585
  call void @llvm.lifetime.end.p0(i64 4, ptr %__new) #16, !dbg !6587
  call void @llvm.lifetime.end.p0(i64 4, ptr %__old) #16, !dbg !6587
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #16, !dbg !6587
  %8 = load i32, ptr %tmp, align 4, !dbg !6585
  ret i32 %8, !dbg !6588
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_set_release(ptr noundef %v, i32 noundef %i) #11 align 16 !dbg !6589 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6593, metadata !DIExpression()), !dbg !6595
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6594, metadata !DIExpression()), !dbg !6596
  br label %do.body, !dbg !6597

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6598

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6600
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 4) #17, !dbg !6601
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6602
  %2 = load i32, ptr %i.addr, align 4, !dbg !6603
  call void @raw_atomic_set_release(ptr noundef %1, i32 noundef %2) #17, !dbg !6604
  ret void, !dbg !6605
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #11 align 16 !dbg !6606 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6608, metadata !DIExpression()), !dbg !6610
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6609, metadata !DIExpression()), !dbg !6611
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6612
  %1 = load i64, ptr %size.addr, align 8, !dbg !6613
  %conv = trunc i64 %1 to i32, !dbg !6613
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #17, !dbg !6614
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6615
  %3 = load i64, ptr %size.addr, align 8, !dbg !6615
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #17, !dbg !6615
  ret void, !dbg !6616
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_set_release(ptr noundef %v, i32 noundef %i) #11 align 16 !dbg !6617 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6619, metadata !DIExpression()), !dbg !6621
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6620, metadata !DIExpression()), !dbg !6622
  br label %do.body, !dbg !6623

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6626

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !6628

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !6626

do.body2:                                         ; preds = %do.end
  br label %do.body3, !dbg !6630

do.body3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !6632

do.end4:                                          ; preds = %do.body3
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !6630, !srcloc !6634
  br label %do.body5, !dbg !6630

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !6635

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !6637

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !6635

do.body8:                                         ; preds = %do.end7
  %0 = load i32, ptr %i.addr, align 4, !dbg !6639
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6639
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !6639
  store volatile i32 %0, ptr %counter, align 4, !dbg !6639
  br label %do.end9, !dbg !6639

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !6635

do.end10:                                         ; preds = %do.end9
  br label %do.end11, !dbg !6630

do.end11:                                         ; preds = %do.end10
  br label %do.end12, !dbg !6626

do.end12:                                         ; preds = %do.end11
  ret void, !dbg !6641
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpuhp_setup_state_nocalls(i32 noundef %state, ptr noundef %name, ptr noundef %startup, ptr noundef %teardown) #4 align 16 !dbg !6642 {
entry:
  %state.addr = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %startup.addr = alloca ptr, align 8
  %teardown.addr = alloca ptr, align 8
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !6649, metadata !DIExpression()), !dbg !6653
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !6650, metadata !DIExpression()), !dbg !6654
  store ptr %startup, ptr %startup.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %startup.addr, metadata !6651, metadata !DIExpression()), !dbg !6655
  store ptr %teardown, ptr %teardown.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %teardown.addr, metadata !6652, metadata !DIExpression()), !dbg !6656
  %0 = load i32, ptr %state.addr, align 4, !dbg !6657
  %1 = load ptr, ptr %name.addr, align 8, !dbg !6658
  %2 = load ptr, ptr %startup.addr, align 8, !dbg !6659
  %3 = load ptr, ptr %teardown.addr, align 8, !dbg !6660
  %call = call i32 @__cpuhp_setup_state(i32 noundef %0, ptr noundef %1, i1 noundef zeroext false, ptr noundef %2, ptr noundef %3, i1 noundef zeroext false) #17, !dbg !6661
  ret i32 %call, !dbg !6662
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crash_cpuhp_online(i32 noundef %cpu) #2 align 16 !dbg !6663 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !6665, metadata !DIExpression()), !dbg !6666
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !6667
  call void @crash_handle_hotplug_event(i32 noundef 1, i32 noundef %0) #17, !dbg !6668
  ret i32 0, !dbg !6669
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crash_cpuhp_offline(i32 noundef %cpu) #2 align 16 !dbg !6670 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !6672, metadata !DIExpression()), !dbg !6673
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !6674
  call void @crash_handle_hotplug_event(i32 noundef 2, i32 noundef %0) #17, !dbg !6675
  ret i32 0, !dbg !6676
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6677 dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @crash_handle_hotplug_event(i32 noundef %hp_action, i32 noundef %cpu) #2 align 16 !dbg !6680 {
entry:
  %hp_action.addr = alloca i32, align 4
  %cpu.addr = alloca i32, align 4
  %image = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp15 = alloca i32, align 4
  %tmp16 = alloca i32, align 4
  %mem = alloca i64, align 8
  %ptr = alloca ptr, align 8
  %n = alloca i32, align 4
  %tmp47 = alloca i32, align 4
  store i32 %hp_action, ptr %hp_action.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %hp_action.addr, metadata !6684, metadata !DIExpression()), !dbg !6748
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !6685, metadata !DIExpression()), !dbg !6749
  call void @llvm.lifetime.start.p0(i64 8, ptr %image) #16, !dbg !6750
  call void @llvm.dbg.declare(metadata ptr %image, metadata !6686, metadata !DIExpression()), !dbg !6751
  call void @mutex_lock(ptr noundef @__crash_hotplug_lock) #17, !dbg !6752
  %call = call zeroext i1 @kexec_trylock() #17, !dbg !6753
  br i1 %call, label %if.end, label %if.then, !dbg !6755

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6756

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !6759

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6759

do.end:                                           ; preds = %do.cond
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5) #15, !dbg !6756
  store i32 %call1, ptr %tmp, align 4, !dbg !6759
  %0 = load i32, ptr %tmp, align 4, !dbg !6756
  call void @mutex_unlock(ptr noundef @__crash_hotplug_lock) #17, !dbg !6761
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6762

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @kexec_crash_image, align 8, !dbg !6763
  %tobool = icmp ne ptr %1, null, !dbg !6763
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !6765

if.then2:                                         ; preds = %if.end
  br label %out, !dbg !6766

if.end3:                                          ; preds = %if.end
  %2 = load ptr, ptr @kexec_crash_image, align 8, !dbg !6767
  store ptr %2, ptr %image, align 8, !dbg !6768
  %3 = load ptr, ptr %image, align 8, !dbg !6769
  %file_mode = getelementptr inbounds %struct.kimage, ptr %3, i32 0, i32 13, !dbg !6771
  %bf.load = load i8, ptr %file_mode, align 8, !dbg !6771
  %bf.lshr = lshr i8 %bf.load, 2, !dbg !6771
  %bf.clear = and i8 %bf.lshr, 1, !dbg !6771
  %bf.cast = zext i8 %bf.clear to i32, !dbg !6771
  %tobool4 = icmp ne i32 %bf.cast, 0, !dbg !6769
  br i1 %tobool4, label %if.end11, label %lor.lhs.false, !dbg !6772

lor.lhs.false:                                    ; preds = %if.end3
  %4 = load ptr, ptr %image, align 8, !dbg !6773
  %update_elfcorehdr = getelementptr inbounds %struct.kimage, ptr %4, i32 0, i32 13, !dbg !6774
  %bf.load5 = load i8, ptr %update_elfcorehdr, align 8, !dbg !6774
  %bf.lshr6 = lshr i8 %bf.load5, 3, !dbg !6774
  %bf.clear7 = and i8 %bf.lshr6, 1, !dbg !6774
  %bf.cast8 = zext i8 %bf.clear7 to i32, !dbg !6774
  %tobool9 = icmp ne i32 %bf.cast8, 0, !dbg !6773
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !6775

if.then10:                                        ; preds = %lor.lhs.false
  br label %out, !dbg !6776

if.end11:                                         ; preds = %lor.lhs.false, %if.end3
  %5 = load i32, ptr %hp_action.addr, align 4, !dbg !6777
  %cmp = icmp eq i32 %5, 1, !dbg !6779
  br i1 %cmp, label %if.then14, label %lor.lhs.false12, !dbg !6780

lor.lhs.false12:                                  ; preds = %if.end11
  %6 = load i32, ptr %hp_action.addr, align 4, !dbg !6781
  %cmp13 = icmp eq i32 %6, 2, !dbg !6782
  br i1 %cmp13, label %if.then14, label %if.else, !dbg !6783

if.then14:                                        ; preds = %lor.lhs.false12, %if.end11
  store i32 0, ptr %tmp15, align 4, !dbg !6784
  %7 = load i32, ptr %tmp15, align 4, !dbg !6787
  br label %if.end17, !dbg !6788

if.else:                                          ; preds = %lor.lhs.false12
  store i32 0, ptr %tmp16, align 4, !dbg !6789
  %8 = load i32, ptr %tmp16, align 4, !dbg !6792
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then14
  %9 = load ptr, ptr %image, align 8, !dbg !6793
  %elfcorehdr_index = getelementptr inbounds %struct.kimage, ptr %9, i32 0, i32 16, !dbg !6794
  %10 = load i32, ptr %elfcorehdr_index, align 4, !dbg !6794
  %cmp18 = icmp slt i32 %10, 0, !dbg !6795
  br i1 %cmp18, label %if.then19, label %if.end39, !dbg !6796

if.then19:                                        ; preds = %if.end17
  call void @llvm.lifetime.start.p0(i64 8, ptr %mem) #16, !dbg !6797
  call void @llvm.dbg.declare(metadata ptr %mem, metadata !6742, metadata !DIExpression()), !dbg !6798
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #16, !dbg !6799
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !6745, metadata !DIExpression()), !dbg !6800
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #16, !dbg !6801
  call void @llvm.dbg.declare(metadata ptr %n, metadata !6746, metadata !DIExpression()), !dbg !6802
  store i32 0, ptr %n, align 4, !dbg !6803
  br label %for.cond, !dbg !6805

for.cond:                                         ; preds = %for.inc, %if.then19
  %11 = load i32, ptr %n, align 4, !dbg !6806
  %conv = zext i32 %11 to i64, !dbg !6806
  %12 = load ptr, ptr %image, align 8, !dbg !6808
  %nr_segments = getelementptr inbounds %struct.kimage, ptr %12, i32 0, i32 7, !dbg !6809
  %13 = load i64, ptr %nr_segments, align 8, !dbg !6809
  %cmp20 = icmp ult i64 %conv, %13, !dbg !6810
  br i1 %cmp20, label %for.body, label %for.end, !dbg !6811

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %image, align 8, !dbg !6812
  %segment = getelementptr inbounds %struct.kimage, ptr %14, i32 0, i32 8, !dbg !6814
  %15 = load i32, ptr %n, align 4, !dbg !6815
  %idxprom = zext i32 %15 to i64, !dbg !6812
  %arrayidx = getelementptr [16 x %struct.kexec_segment], ptr %segment, i64 0, i64 %idxprom, !dbg !6812
  %mem22 = getelementptr inbounds %struct.kexec_segment, ptr %arrayidx, i32 0, i32 2, !dbg !6816
  %16 = load i64, ptr %mem22, align 8, !dbg !6816
  store i64 %16, ptr %mem, align 8, !dbg !6817
  %17 = load i64, ptr @vmemmap_base, align 8, !dbg !6818
  %18 = inttoptr i64 %17 to ptr, !dbg !6818
  %19 = load i64, ptr %mem, align 8, !dbg !6818
  %shr = lshr i64 %19, 12, !dbg !6818
  %add.ptr = getelementptr %struct.page, ptr %18, i64 %shr, !dbg !6818
  %call23 = call ptr @kmap_local_page(ptr noundef %add.ptr) #17, !dbg !6819
  store ptr %call23, ptr %ptr, align 8, !dbg !6820
  %20 = load ptr, ptr %ptr, align 8, !dbg !6821
  %tobool24 = icmp ne ptr %20, null, !dbg !6821
  br i1 %tobool24, label %if.then25, label %if.end38, !dbg !6823

if.then25:                                        ; preds = %for.body
  %21 = load ptr, ptr %ptr, align 8, !dbg !6824
  %call26 = call i32 @memcmp(ptr noundef %21, ptr noundef @.str.1, i64 noundef 4) #17, !dbg !6827
  %cmp27 = icmp eq i32 %call26, 0, !dbg !6828
  br i1 %cmp27, label %if.then29, label %if.end31, !dbg !6829

if.then29:                                        ; preds = %if.then25
  %22 = load i32, ptr %n, align 4, !dbg !6830
  %23 = load ptr, ptr %image, align 8, !dbg !6831
  %elfcorehdr_index30 = getelementptr inbounds %struct.kimage, ptr %23, i32 0, i32 16, !dbg !6832
  store i32 %22, ptr %elfcorehdr_index30, align 4, !dbg !6833
  br label %if.end31, !dbg !6831

if.end31:                                         ; preds = %if.then29, %if.then25
  br label %do.body32, !dbg !6834

do.body32:                                        ; preds = %if.end31
  br label %do.body33, !dbg !6835

do.body33:                                        ; preds = %do.body32
  br label %do.cond34, !dbg !6837

do.cond34:                                        ; preds = %do.body33
  br label %do.end35, !dbg !6837

do.end35:                                         ; preds = %do.cond34
  %24 = load ptr, ptr %ptr, align 8, !dbg !6835
  call void @__kunmap_local(ptr noundef %24) #17, !dbg !6835
  br label %do.cond36, !dbg !6835

do.cond36:                                        ; preds = %do.end35
  br label %do.end37, !dbg !6835

do.end37:                                         ; preds = %do.cond36
  br label %if.end38, !dbg !6839

if.end38:                                         ; preds = %do.end37, %for.body
  br label %for.inc, !dbg !6840

for.inc:                                          ; preds = %if.end38
  %25 = load i32, ptr %n, align 4, !dbg !6841
  %inc = add i32 %25, 1, !dbg !6841
  store i32 %inc, ptr %n, align 4, !dbg !6841
  br label %for.cond, !dbg !6842, !llvm.loop !6843

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #16, !dbg !6845
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #16, !dbg !6845
  call void @llvm.lifetime.end.p0(i64 8, ptr %mem) #16, !dbg !6845
  br label %if.end39, !dbg !6846

if.end39:                                         ; preds = %for.end, %if.end17
  %26 = load ptr, ptr %image, align 8, !dbg !6847
  %elfcorehdr_index40 = getelementptr inbounds %struct.kimage, ptr %26, i32 0, i32 16, !dbg !6849
  %27 = load i32, ptr %elfcorehdr_index40, align 4, !dbg !6849
  %cmp41 = icmp slt i32 %27, 0, !dbg !6850
  br i1 %cmp41, label %if.then43, label %if.end49, !dbg !6851

if.then43:                                        ; preds = %if.end39
  br label %do.body44, !dbg !6852

do.body44:                                        ; preds = %if.then43
  br label %do.cond45, !dbg !6855

do.cond45:                                        ; preds = %do.body44
  br label %do.end46, !dbg !6855

do.end46:                                         ; preds = %do.cond45
  %call48 = call i32 (ptr, ...) @_printk(ptr noundef @.str.86) #15, !dbg !6852
  store i32 %call48, ptr %tmp47, align 4, !dbg !6855
  %28 = load i32, ptr %tmp47, align 4, !dbg !6852
  br label %out, !dbg !6857

if.end49:                                         ; preds = %if.end39
  call void @arch_kexec_unprotect_crashkres() #17, !dbg !6858
  %29 = load i32, ptr %hp_action.addr, align 4, !dbg !6859
  %30 = load ptr, ptr %image, align 8, !dbg !6860
  %hp_action50 = getelementptr inbounds %struct.kimage, ptr %30, i32 0, i32 15, !dbg !6861
  store i32 %29, ptr %hp_action50, align 8, !dbg !6862
  %31 = load ptr, ptr %image, align 8, !dbg !6863
  call void @arch_crash_handle_hotplug_event(ptr noundef %31) #17, !dbg !6864
  %32 = load ptr, ptr %image, align 8, !dbg !6865
  %hp_action51 = getelementptr inbounds %struct.kimage, ptr %32, i32 0, i32 15, !dbg !6866
  store i32 0, ptr %hp_action51, align 8, !dbg !6867
  %33 = load ptr, ptr %image, align 8, !dbg !6868
  %elfcorehdr_updated = getelementptr inbounds %struct.kimage, ptr %33, i32 0, i32 17, !dbg !6869
  store i8 1, ptr %elfcorehdr_updated, align 8, !dbg !6870
  call void @arch_kexec_protect_crashkres() #17, !dbg !6871
  br label %out, !dbg !6871

out:                                              ; preds = %if.end49, %do.end46, %if.then10, %if.then2
  call void @llvm.dbg.label(metadata !6747), !dbg !6872
  call void @kexec_unlock() #17, !dbg !6873
  call void @mutex_unlock(ptr noundef @__crash_hotplug_lock) #17, !dbg !6874
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6875
  br label %cleanup, !dbg !6875

cleanup:                                          ; preds = %out, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %image) #16, !dbg !6875
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6875

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kmap_local_page(ptr noundef %page) #4 align 16 !dbg !6876 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6881, metadata !DIExpression()), !dbg !6882
  %0 = load ptr, ptr %page.addr, align 8, !dbg !6883
  %call = call ptr @lowmem_page_address(ptr noundef %0) #17, !dbg !6883
  ret ptr %call, !dbg !6884
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6885 dso_local i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__kunmap_local(ptr noundef %addr) #4 align 16 !dbg !6888 {
entry:
  %addr.addr = alloca ptr, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6892, metadata !DIExpression()), !dbg !6893
  ret void, !dbg !6894
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6895 dso_local void @arch_kexec_unprotect_crashkres() #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6896 dso_local void @arch_crash_handle_hotplug_event(ptr noundef) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6899 dso_local void @arch_kexec_protect_crashkres() #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @lowmem_page_address(ptr noundef %page) #11 align 16 !dbg !6900 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6906, metadata !DIExpression()), !dbg !6907
  %0 = load ptr, ptr %page.addr, align 8, !dbg !6908
  %1 = load i64, ptr @vmemmap_base, align 8, !dbg !6908
  %2 = inttoptr i64 %1 to ptr, !dbg !6908
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !6908
  %sub.ptr.rhs.cast = ptrtoint ptr %2 to i64, !dbg !6908
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !6908
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 64, !dbg !6908
  %shl = shl i64 %sub.ptr.div, 12, !dbg !6908
  %3 = load i64, ptr @page_offset_base, align 8, !dbg !6908
  %add = add i64 %shl, %3, !dbg !6908
  %4 = inttoptr i64 %add to ptr, !dbg !6908
  ret ptr %4, !dbg !6909
}

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="BUILD_BUG_ON failed: size > PAGE_SIZE" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { cold noredzone }
attributes #16 = { nounwind }
attributes #17 = { noredzone }
attributes #18 = { noredzone allocsize(0) }
attributes #19 = { noredzone noreturn }
attributes #20 = { nounwind memory(none) }
attributes #21 = { nounwind memory(read) }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!4817, !4818, !4819, !4820, !4821, !4822, !4823, !4824}
!llvm.ident = !{!4825}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 293, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "kernel/crash_core.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b017c8ac89148e260585ae903ea9b00d")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "suffix_tbl", scope: !9, file: !2, line: 170, type: !761, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/.crash_core.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/crash_core\22 -D KBUILD_BASENAME=\22crash_core\22 -D KBUILD_MODNAME=\22crash_core\22 -D __KBUILD_MODNAME=kmod_crash_core -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/crash_core.ll kernel/crash_core.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !367, globals: !4502, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !17, !28, !37, !51, !91, !286, !293, !298, !304, !311, !319, !335, !341, !346, !352, !359}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 10, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16}
!15 = !DIEnumerator(name: "false", value: 0)
!16 = !DIEnumerator(name: "true", value: 1)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "node_states", file: !18, line: 398, baseType: !13, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!19 = !{!20, !21, !22, !23, !24, !25, !26, !27}
!20 = !DIEnumerator(name: "N_POSSIBLE", value: 0)
!21 = !DIEnumerator(name: "N_ONLINE", value: 1)
!22 = !DIEnumerator(name: "N_NORMAL_MEMORY", value: 2)
!23 = !DIEnumerator(name: "N_HIGH_MEMORY", value: 2)
!24 = !DIEnumerator(name: "N_MEMORY", value: 3)
!25 = !DIEnumerator(name: "N_CPU", value: 4)
!26 = !DIEnumerator(name: "N_GENERIC_INITIATOR", value: 5)
!27 = !DIEnumerator(name: "NR_NODE_STATES", value: 6)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migratetype", file: !29, line: 47, baseType: !13, size: 32, elements: !30)
!29 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e018db7b4c78b2d835997a33e792065c")
!30 = !{!31, !32, !33, !34, !35, !36}
!31 = !DIEnumerator(name: "MIGRATE_UNMOVABLE", value: 0)
!32 = !DIEnumerator(name: "MIGRATE_MOVABLE", value: 1)
!33 = !DIEnumerator(name: "MIGRATE_RECLAIMABLE", value: 2)
!34 = !DIEnumerator(name: "MIGRATE_PCPTYPES", value: 3)
!35 = !DIEnumerator(name: "MIGRATE_HIGHATOMIC", value: 3)
!36 = !DIEnumerator(name: "MIGRATE_TYPES", value: 4)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "zone_stat_item", file: !29, line: 134, baseType: !13, size: 32, elements: !38)
!38 = !{!39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50}
!39 = !DIEnumerator(name: "NR_FREE_PAGES", value: 0)
!40 = !DIEnumerator(name: "NR_ZONE_LRU_BASE", value: 1)
!41 = !DIEnumerator(name: "NR_ZONE_INACTIVE_ANON", value: 1)
!42 = !DIEnumerator(name: "NR_ZONE_ACTIVE_ANON", value: 2)
!43 = !DIEnumerator(name: "NR_ZONE_INACTIVE_FILE", value: 3)
!44 = !DIEnumerator(name: "NR_ZONE_ACTIVE_FILE", value: 4)
!45 = !DIEnumerator(name: "NR_ZONE_UNEVICTABLE", value: 5)
!46 = !DIEnumerator(name: "NR_ZONE_WRITE_PENDING", value: 6)
!47 = !DIEnumerator(name: "NR_MLOCK", value: 7)
!48 = !DIEnumerator(name: "NR_BOUNCE", value: 8)
!49 = !DIEnumerator(name: "NR_FREE_CMA_PAGES", value: 9)
!50 = !DIEnumerator(name: "NR_VM_ZONE_STAT_ITEMS", value: 10)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pageflags", file: !52, line: 100, baseType: !13, size: 32, elements: !53)
!52 = !DIFile(filename: "./include/linux/page-flags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "303e043415a1e5da18ffd489677b4d01")
!53 = !{!54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90}
!54 = !DIEnumerator(name: "PG_locked", value: 0)
!55 = !DIEnumerator(name: "PG_writeback", value: 1)
!56 = !DIEnumerator(name: "PG_referenced", value: 2)
!57 = !DIEnumerator(name: "PG_uptodate", value: 3)
!58 = !DIEnumerator(name: "PG_dirty", value: 4)
!59 = !DIEnumerator(name: "PG_lru", value: 5)
!60 = !DIEnumerator(name: "PG_head", value: 6)
!61 = !DIEnumerator(name: "PG_waiters", value: 7)
!62 = !DIEnumerator(name: "PG_active", value: 8)
!63 = !DIEnumerator(name: "PG_workingset", value: 9)
!64 = !DIEnumerator(name: "PG_error", value: 10)
!65 = !DIEnumerator(name: "PG_slab", value: 11)
!66 = !DIEnumerator(name: "PG_owner_priv_1", value: 12)
!67 = !DIEnumerator(name: "PG_arch_1", value: 13)
!68 = !DIEnumerator(name: "PG_reserved", value: 14)
!69 = !DIEnumerator(name: "PG_private", value: 15)
!70 = !DIEnumerator(name: "PG_private_2", value: 16)
!71 = !DIEnumerator(name: "PG_mappedtodisk", value: 17)
!72 = !DIEnumerator(name: "PG_reclaim", value: 18)
!73 = !DIEnumerator(name: "PG_swapbacked", value: 19)
!74 = !DIEnumerator(name: "PG_unevictable", value: 20)
!75 = !DIEnumerator(name: "PG_mlocked", value: 21)
!76 = !DIEnumerator(name: "PG_uncached", value: 22)
!77 = !DIEnumerator(name: "__NR_PAGEFLAGS", value: 23)
!78 = !DIEnumerator(name: "PG_readahead", value: 18)
!79 = !DIEnumerator(name: "PG_anon_exclusive", value: 17)
!80 = !DIEnumerator(name: "PG_checked", value: 12)
!81 = !DIEnumerator(name: "PG_swapcache", value: 12)
!82 = !DIEnumerator(name: "PG_fscache", value: 16)
!83 = !DIEnumerator(name: "PG_pinned", value: 12)
!84 = !DIEnumerator(name: "PG_savepinned", value: 4)
!85 = !DIEnumerator(name: "PG_foreign", value: 12)
!86 = !DIEnumerator(name: "PG_xen_remapped", value: 12)
!87 = !DIEnumerator(name: "PG_isolated", value: 18)
!88 = !DIEnumerator(name: "PG_reported", value: 3)
!89 = !DIEnumerator(name: "PG_has_hwpoisoned", value: 10)
!90 = !DIEnumerator(name: "PG_large_rmappable", value: 9)
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cpuhp_state", file: !92, line: 57, baseType: !93, size: 32, elements: !94)
!92 = !DIFile(filename: "./include/linux/cpuhotplug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c163170cdc0ca5f55decccd45901b0e")
!93 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!94 = !{!95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285}
!95 = !DIEnumerator(name: "CPUHP_INVALID", value: -1)
!96 = !DIEnumerator(name: "CPUHP_OFFLINE", value: 0)
!97 = !DIEnumerator(name: "CPUHP_CREATE_THREADS", value: 1)
!98 = !DIEnumerator(name: "CPUHP_PERF_PREPARE", value: 2)
!99 = !DIEnumerator(name: "CPUHP_PERF_X86_PREPARE", value: 3)
!100 = !DIEnumerator(name: "CPUHP_PERF_X86_AMD_UNCORE_PREP", value: 4)
!101 = !DIEnumerator(name: "CPUHP_PERF_POWER", value: 5)
!102 = !DIEnumerator(name: "CPUHP_PERF_SUPERH", value: 6)
!103 = !DIEnumerator(name: "CPUHP_X86_HPET_DEAD", value: 7)
!104 = !DIEnumerator(name: "CPUHP_X86_APB_DEAD", value: 8)
!105 = !DIEnumerator(name: "CPUHP_X86_MCE_DEAD", value: 9)
!106 = !DIEnumerator(name: "CPUHP_VIRT_NET_DEAD", value: 10)
!107 = !DIEnumerator(name: "CPUHP_IBMVNIC_DEAD", value: 11)
!108 = !DIEnumerator(name: "CPUHP_SLUB_DEAD", value: 12)
!109 = !DIEnumerator(name: "CPUHP_DEBUG_OBJ_DEAD", value: 13)
!110 = !DIEnumerator(name: "CPUHP_MM_WRITEBACK_DEAD", value: 14)
!111 = !DIEnumerator(name: "CPUHP_MM_DEMOTION_DEAD", value: 15)
!112 = !DIEnumerator(name: "CPUHP_MM_VMSTAT_DEAD", value: 16)
!113 = !DIEnumerator(name: "CPUHP_SOFTIRQ_DEAD", value: 17)
!114 = !DIEnumerator(name: "CPUHP_NET_MVNETA_DEAD", value: 18)
!115 = !DIEnumerator(name: "CPUHP_CPUIDLE_DEAD", value: 19)
!116 = !DIEnumerator(name: "CPUHP_ARM64_FPSIMD_DEAD", value: 20)
!117 = !DIEnumerator(name: "CPUHP_ARM_OMAP_WAKE_DEAD", value: 21)
!118 = !DIEnumerator(name: "CPUHP_IRQ_POLL_DEAD", value: 22)
!119 = !DIEnumerator(name: "CPUHP_BLOCK_SOFTIRQ_DEAD", value: 23)
!120 = !DIEnumerator(name: "CPUHP_BIO_DEAD", value: 24)
!121 = !DIEnumerator(name: "CPUHP_ACPI_CPUDRV_DEAD", value: 25)
!122 = !DIEnumerator(name: "CPUHP_S390_PFAULT_DEAD", value: 26)
!123 = !DIEnumerator(name: "CPUHP_BLK_MQ_DEAD", value: 27)
!124 = !DIEnumerator(name: "CPUHP_FS_BUFF_DEAD", value: 28)
!125 = !DIEnumerator(name: "CPUHP_PRINTK_DEAD", value: 29)
!126 = !DIEnumerator(name: "CPUHP_MM_MEMCQ_DEAD", value: 30)
!127 = !DIEnumerator(name: "CPUHP_PERCPU_CNT_DEAD", value: 31)
!128 = !DIEnumerator(name: "CPUHP_RADIX_DEAD", value: 32)
!129 = !DIEnumerator(name: "CPUHP_PAGE_ALLOC", value: 33)
!130 = !DIEnumerator(name: "CPUHP_NET_DEV_DEAD", value: 34)
!131 = !DIEnumerator(name: "CPUHP_PCI_XGENE_DEAD", value: 35)
!132 = !DIEnumerator(name: "CPUHP_IOMMU_IOVA_DEAD", value: 36)
!133 = !DIEnumerator(name: "CPUHP_LUSTRE_CFS_DEAD", value: 37)
!134 = !DIEnumerator(name: "CPUHP_AP_ARM_CACHE_B15_RAC_DEAD", value: 38)
!135 = !DIEnumerator(name: "CPUHP_PADATA_DEAD", value: 39)
!136 = !DIEnumerator(name: "CPUHP_AP_DTPM_CPU_DEAD", value: 40)
!137 = !DIEnumerator(name: "CPUHP_RANDOM_PREPARE", value: 41)
!138 = !DIEnumerator(name: "CPUHP_WORKQUEUE_PREP", value: 42)
!139 = !DIEnumerator(name: "CPUHP_POWER_NUMA_PREPARE", value: 43)
!140 = !DIEnumerator(name: "CPUHP_HRTIMERS_PREPARE", value: 44)
!141 = !DIEnumerator(name: "CPUHP_PROFILE_PREPARE", value: 45)
!142 = !DIEnumerator(name: "CPUHP_X2APIC_PREPARE", value: 46)
!143 = !DIEnumerator(name: "CPUHP_SMPCFD_PREPARE", value: 47)
!144 = !DIEnumerator(name: "CPUHP_RELAY_PREPARE", value: 48)
!145 = !DIEnumerator(name: "CPUHP_SLAB_PREPARE", value: 49)
!146 = !DIEnumerator(name: "CPUHP_MD_RAID5_PREPARE", value: 50)
!147 = !DIEnumerator(name: "CPUHP_RCUTREE_PREP", value: 51)
!148 = !DIEnumerator(name: "CPUHP_CPUIDLE_COUPLED_PREPARE", value: 52)
!149 = !DIEnumerator(name: "CPUHP_POWERPC_PMAC_PREPARE", value: 53)
!150 = !DIEnumerator(name: "CPUHP_POWERPC_MMU_CTX_PREPARE", value: 54)
!151 = !DIEnumerator(name: "CPUHP_XEN_PREPARE", value: 55)
!152 = !DIEnumerator(name: "CPUHP_XEN_EVTCHN_PREPARE", value: 56)
!153 = !DIEnumerator(name: "CPUHP_ARM_SHMOBILE_SCU_PREPARE", value: 57)
!154 = !DIEnumerator(name: "CPUHP_SH_SH3X_PREPARE", value: 58)
!155 = !DIEnumerator(name: "CPUHP_NET_FLOW_PREPARE", value: 59)
!156 = !DIEnumerator(name: "CPUHP_TOPOLOGY_PREPARE", value: 60)
!157 = !DIEnumerator(name: "CPUHP_NET_IUCV_PREPARE", value: 61)
!158 = !DIEnumerator(name: "CPUHP_ARM_BL_PREPARE", value: 62)
!159 = !DIEnumerator(name: "CPUHP_TRACE_RB_PREPARE", value: 63)
!160 = !DIEnumerator(name: "CPUHP_MM_ZS_PREPARE", value: 64)
!161 = !DIEnumerator(name: "CPUHP_MM_ZSWP_MEM_PREPARE", value: 65)
!162 = !DIEnumerator(name: "CPUHP_MM_ZSWP_POOL_PREPARE", value: 66)
!163 = !DIEnumerator(name: "CPUHP_KVM_PPC_BOOK3S_PREPARE", value: 67)
!164 = !DIEnumerator(name: "CPUHP_ZCOMP_PREPARE", value: 68)
!165 = !DIEnumerator(name: "CPUHP_TIMERS_PREPARE", value: 69)
!166 = !DIEnumerator(name: "CPUHP_MIPS_SOC_PREPARE", value: 70)
!167 = !DIEnumerator(name: "CPUHP_BP_PREPARE_DYN", value: 71)
!168 = !DIEnumerator(name: "CPUHP_BP_PREPARE_DYN_END", value: 91)
!169 = !DIEnumerator(name: "CPUHP_BP_KICK_AP", value: 92)
!170 = !DIEnumerator(name: "CPUHP_BRINGUP_CPU", value: 93)
!171 = !DIEnumerator(name: "CPUHP_AP_IDLE_DEAD", value: 94)
!172 = !DIEnumerator(name: "CPUHP_AP_OFFLINE", value: 95)
!173 = !DIEnumerator(name: "CPUHP_AP_CACHECTRL_STARTING", value: 96)
!174 = !DIEnumerator(name: "CPUHP_AP_SCHED_STARTING", value: 97)
!175 = !DIEnumerator(name: "CPUHP_AP_RCUTREE_DYING", value: 98)
!176 = !DIEnumerator(name: "CPUHP_AP_CPU_PM_STARTING", value: 99)
!177 = !DIEnumerator(name: "CPUHP_AP_IRQ_GIC_STARTING", value: 100)
!178 = !DIEnumerator(name: "CPUHP_AP_IRQ_HIP04_STARTING", value: 101)
!179 = !DIEnumerator(name: "CPUHP_AP_IRQ_APPLE_AIC_STARTING", value: 102)
!180 = !DIEnumerator(name: "CPUHP_AP_IRQ_ARMADA_XP_STARTING", value: 103)
!181 = !DIEnumerator(name: "CPUHP_AP_IRQ_BCM2836_STARTING", value: 104)
!182 = !DIEnumerator(name: "CPUHP_AP_IRQ_MIPS_GIC_STARTING", value: 105)
!183 = !DIEnumerator(name: "CPUHP_AP_IRQ_RISCV_STARTING", value: 106)
!184 = !DIEnumerator(name: "CPUHP_AP_IRQ_LOONGARCH_STARTING", value: 107)
!185 = !DIEnumerator(name: "CPUHP_AP_IRQ_SIFIVE_PLIC_STARTING", value: 108)
!186 = !DIEnumerator(name: "CPUHP_AP_ARM_MVEBU_COHERENCY", value: 109)
!187 = !DIEnumerator(name: "CPUHP_AP_MICROCODE_LOADER", value: 110)
!188 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_UNCORE_STARTING", value: 111)
!189 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_STARTING", value: 112)
!190 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_IBS_STARTING", value: 113)
!191 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CQM_STARTING", value: 114)
!192 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CSTATE_STARTING", value: 115)
!193 = !DIEnumerator(name: "CPUHP_AP_PERF_XTENSA_STARTING", value: 116)
!194 = !DIEnumerator(name: "CPUHP_AP_MIPS_OP_LOONGSON3_STARTING", value: 117)
!195 = !DIEnumerator(name: "CPUHP_AP_ARM_VFP_STARTING", value: 118)
!196 = !DIEnumerator(name: "CPUHP_AP_ARM64_DEBUG_MONITORS_STARTING", value: 119)
!197 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HW_BREAKPOINT_STARTING", value: 120)
!198 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_ACPI_STARTING", value: 121)
!199 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_STARTING", value: 122)
!200 = !DIEnumerator(name: "CPUHP_AP_PERF_RISCV_STARTING", value: 123)
!201 = !DIEnumerator(name: "CPUHP_AP_ARM_L2X0_STARTING", value: 124)
!202 = !DIEnumerator(name: "CPUHP_AP_EXYNOS4_MCT_TIMER_STARTING", value: 125)
!203 = !DIEnumerator(name: "CPUHP_AP_ARM_ARCH_TIMER_STARTING", value: 126)
!204 = !DIEnumerator(name: "CPUHP_AP_ARM_GLOBAL_TIMER_STARTING", value: 127)
!205 = !DIEnumerator(name: "CPUHP_AP_JCORE_TIMER_STARTING", value: 128)
!206 = !DIEnumerator(name: "CPUHP_AP_ARM_TWD_STARTING", value: 129)
!207 = !DIEnumerator(name: "CPUHP_AP_QCOM_TIMER_STARTING", value: 130)
!208 = !DIEnumerator(name: "CPUHP_AP_TEGRA_TIMER_STARTING", value: 131)
!209 = !DIEnumerator(name: "CPUHP_AP_ARMADA_TIMER_STARTING", value: 132)
!210 = !DIEnumerator(name: "CPUHP_AP_MARCO_TIMER_STARTING", value: 133)
!211 = !DIEnumerator(name: "CPUHP_AP_MIPS_GIC_TIMER_STARTING", value: 134)
!212 = !DIEnumerator(name: "CPUHP_AP_ARC_TIMER_STARTING", value: 135)
!213 = !DIEnumerator(name: "CPUHP_AP_RISCV_TIMER_STARTING", value: 136)
!214 = !DIEnumerator(name: "CPUHP_AP_CLINT_TIMER_STARTING", value: 137)
!215 = !DIEnumerator(name: "CPUHP_AP_CSKY_TIMER_STARTING", value: 138)
!216 = !DIEnumerator(name: "CPUHP_AP_TI_GP_TIMER_STARTING", value: 139)
!217 = !DIEnumerator(name: "CPUHP_AP_HYPERV_TIMER_STARTING", value: 140)
!218 = !DIEnumerator(name: "CPUHP_AP_DUMMY_TIMER_STARTING", value: 141)
!219 = !DIEnumerator(name: "CPUHP_AP_ARM_XEN_STARTING", value: 142)
!220 = !DIEnumerator(name: "CPUHP_AP_ARM_XEN_RUNSTATE_STARTING", value: 143)
!221 = !DIEnumerator(name: "CPUHP_AP_ARM_CORESIGHT_STARTING", value: 144)
!222 = !DIEnumerator(name: "CPUHP_AP_ARM_CORESIGHT_CTI_STARTING", value: 145)
!223 = !DIEnumerator(name: "CPUHP_AP_ARM64_ISNDEP_STARTING", value: 146)
!224 = !DIEnumerator(name: "CPUHP_AP_SMPCFD_DYING", value: 147)
!225 = !DIEnumerator(name: "CPUHP_AP_HRTIMERS_DYING", value: 148)
!226 = !DIEnumerator(name: "CPUHP_AP_X86_TBOOT_DYING", value: 149)
!227 = !DIEnumerator(name: "CPUHP_AP_ARM_CACHE_B15_RAC_DYING", value: 150)
!228 = !DIEnumerator(name: "CPUHP_AP_ONLINE", value: 151)
!229 = !DIEnumerator(name: "CPUHP_TEARDOWN_CPU", value: 152)
!230 = !DIEnumerator(name: "CPUHP_AP_ONLINE_IDLE", value: 153)
!231 = !DIEnumerator(name: "CPUHP_AP_HYPERV_ONLINE", value: 154)
!232 = !DIEnumerator(name: "CPUHP_AP_KVM_ONLINE", value: 155)
!233 = !DIEnumerator(name: "CPUHP_AP_SCHED_WAIT_EMPTY", value: 156)
!234 = !DIEnumerator(name: "CPUHP_AP_SMPBOOT_THREADS", value: 157)
!235 = !DIEnumerator(name: "CPUHP_AP_X86_VDSO_VMA_ONLINE", value: 158)
!236 = !DIEnumerator(name: "CPUHP_AP_IRQ_AFFINITY_ONLINE", value: 159)
!237 = !DIEnumerator(name: "CPUHP_AP_BLK_MQ_ONLINE", value: 160)
!238 = !DIEnumerator(name: "CPUHP_AP_ARM_MVEBU_SYNC_CLOCKS", value: 161)
!239 = !DIEnumerator(name: "CPUHP_AP_X86_INTEL_EPB_ONLINE", value: 162)
!240 = !DIEnumerator(name: "CPUHP_AP_PERF_ONLINE", value: 163)
!241 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_ONLINE", value: 164)
!242 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_UNCORE_ONLINE", value: 165)
!243 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_UNCORE_ONLINE", value: 166)
!244 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_POWER_ONLINE", value: 167)
!245 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_RAPL_ONLINE", value: 168)
!246 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CQM_ONLINE", value: 169)
!247 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CSTATE_ONLINE", value: 170)
!248 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_IDXD_ONLINE", value: 171)
!249 = !DIEnumerator(name: "CPUHP_AP_PERF_S390_CF_ONLINE", value: 172)
!250 = !DIEnumerator(name: "CPUHP_AP_PERF_S390_SF_ONLINE", value: 173)
!251 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_CCI_ONLINE", value: 174)
!252 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_CCN_ONLINE", value: 175)
!253 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_CPA_ONLINE", value: 176)
!254 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_DDRC_ONLINE", value: 177)
!255 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_HHA_ONLINE", value: 178)
!256 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_L3_ONLINE", value: 179)
!257 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_PA_ONLINE", value: 180)
!258 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_SLLC_ONLINE", value: 181)
!259 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_PCIE_PMU_ONLINE", value: 182)
!260 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HNS3_PMU_ONLINE", value: 183)
!261 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_L2X0_ONLINE", value: 184)
!262 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_QCOM_L2_ONLINE", value: 185)
!263 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_QCOM_L3_ONLINE", value: 186)
!264 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_APM_XGENE_ONLINE", value: 187)
!265 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_CAVIUM_TX2_UNCORE_ONLINE", value: 188)
!266 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_MARVELL_CN10K_DDR_ONLINE", value: 189)
!267 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_NEST_IMC_ONLINE", value: 190)
!268 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_CORE_IMC_ONLINE", value: 191)
!269 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_THREAD_IMC_ONLINE", value: 192)
!270 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_TRACE_IMC_ONLINE", value: 193)
!271 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_HV_24x7_ONLINE", value: 194)
!272 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_HV_GPCI_ONLINE", value: 195)
!273 = !DIEnumerator(name: "CPUHP_AP_PERF_CSKY_ONLINE", value: 196)
!274 = !DIEnumerator(name: "CPUHP_AP_WATCHDOG_ONLINE", value: 197)
!275 = !DIEnumerator(name: "CPUHP_AP_WORKQUEUE_ONLINE", value: 198)
!276 = !DIEnumerator(name: "CPUHP_AP_RANDOM_ONLINE", value: 199)
!277 = !DIEnumerator(name: "CPUHP_AP_RCUTREE_ONLINE", value: 200)
!278 = !DIEnumerator(name: "CPUHP_AP_BASE_CACHEINFO_ONLINE", value: 201)
!279 = !DIEnumerator(name: "CPUHP_AP_ONLINE_DYN", value: 202)
!280 = !DIEnumerator(name: "CPUHP_AP_ONLINE_DYN_END", value: 232)
!281 = !DIEnumerator(name: "CPUHP_AP_MM_DEMOTION_ONLINE", value: 233)
!282 = !DIEnumerator(name: "CPUHP_AP_X86_HPET_ONLINE", value: 234)
!283 = !DIEnumerator(name: "CPUHP_AP_X86_KVM_CLK_ONLINE", value: 235)
!284 = !DIEnumerator(name: "CPUHP_AP_ACTIVE", value: 236)
!285 = !DIEnumerator(name: "CPUHP_ONLINE", value: 237)
!286 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !287, line: 312, baseType: !13, size: 32, elements: !288)
!287 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!288 = !{!289, !290, !291, !292}
!289 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!290 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!291 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!292 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!293 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !294, line: 65, baseType: !13, size: 32, elements: !295)
!294 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!295 = !{!296, !297}
!296 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!297 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!298 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !299, line: 16, baseType: !13, size: 32, elements: !300)
!299 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!300 = !{!301, !302, !303}
!301 = !DIEnumerator(name: "TT_NONE", value: 0)
!302 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!303 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!304 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !305, line: 51, baseType: !13, size: 32, elements: !306)
!305 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!306 = !{!307, !308, !309, !310}
!307 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!308 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!309 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!310 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!311 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !312, line: 9, baseType: !13, size: 32, elements: !313)
!312 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!313 = !{!314, !315, !316, !317, !318}
!314 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!315 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!316 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!317 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!318 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!319 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !320, line: 1325, baseType: !13, size: 32, elements: !321)
!320 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!321 = !{!322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334}
!322 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!323 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!324 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!325 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!326 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!327 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!328 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!329 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!330 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!331 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!332 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!333 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!334 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!335 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !336, line: 26, baseType: !13, size: 32, elements: !337)
!336 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!337 = !{!338, !339, !340}
!338 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!339 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!340 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!341 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !342, line: 2052, baseType: !13, size: 32, elements: !343)
!342 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!343 = !{!344, !345}
!344 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!345 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!346 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !347, line: 54, baseType: !13, size: 32, elements: !348)
!347 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!348 = !{!349, !350, !351}
!349 = !DIEnumerator(name: "USRQUOTA", value: 0)
!350 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!351 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!352 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !353, line: 15, baseType: !13, size: 32, elements: !354)
!353 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!354 = !{!355, !356, !357, !358}
!355 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!356 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!357 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!358 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!359 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !360, line: 68, baseType: !13, size: 32, elements: !361)
!360 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!361 = !{!362, !363, !364, !365, !366}
!362 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!363 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!364 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!365 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!366 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!367 = !{!368, !375, !378, !411, !13, !424, !432, !433, !439, !399, !93, !444, !445, !446, !447, !449, !451, !453, !2385}
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !370)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !371, line: 19, size: 64, elements: !372)
!371 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!372 = !{!373}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !370, file: !371, line: 19, baseType: !374, size: 64)
!374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !375, size: 64, elements: !376)
!375 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!376 = !{!377}
!377 = !DISubrange(count: 1)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Ehdr", file: !380, line: 241, baseType: !381)
!380 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_hdr", file: !380, line: 226, size: 512, elements: !382)
!382 = !{!383, !388, !393, !394, !397, !401, !403, !404, !405, !406, !407, !408, !409, !410}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "e_ident", scope: !381, file: !380, line: 227, baseType: !384, size: 128)
!384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, size: 128, elements: !386)
!385 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!386 = !{!387}
!387 = !DISubrange(count: 16)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "e_type", scope: !381, file: !380, line: 228, baseType: !389, size: 16, offset: 128)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !380, line: 17, baseType: !390)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !391, line: 24, baseType: !392)
!391 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!392 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "e_machine", scope: !381, file: !380, line: 229, baseType: !389, size: 16, offset: 144)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "e_version", scope: !381, file: !380, line: 230, baseType: !395, size: 32, offset: 160)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !380, line: 21, baseType: !396)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !391, line: 27, baseType: !13)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "e_entry", scope: !381, file: !380, line: 231, baseType: !398, size: 64, offset: 192)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !380, line: 16, baseType: !399)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !391, line: 31, baseType: !400)
!400 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "e_phoff", scope: !381, file: !380, line: 232, baseType: !402, size: 64, offset: 256)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Off", file: !380, line: 19, baseType: !399)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "e_shoff", scope: !381, file: !380, line: 233, baseType: !402, size: 64, offset: 320)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "e_flags", scope: !381, file: !380, line: 234, baseType: !395, size: 32, offset: 384)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "e_ehsize", scope: !381, file: !380, line: 235, baseType: !389, size: 16, offset: 416)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "e_phentsize", scope: !381, file: !380, line: 236, baseType: !389, size: 16, offset: 432)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "e_phnum", scope: !381, file: !380, line: 237, baseType: !389, size: 16, offset: 448)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "e_shentsize", scope: !381, file: !380, line: 238, baseType: !389, size: 16, offset: 464)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "e_shnum", scope: !381, file: !380, line: 239, baseType: !389, size: 16, offset: 480)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "e_shstrndx", scope: !381, file: !380, line: 240, baseType: !389, size: 16, offset: 496)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Phdr", file: !380, line: 269, baseType: !413)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_phdr", file: !380, line: 260, size: 448, elements: !414)
!414 = !{!415, !416, !417, !418, !419, !420, !422, !423}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "p_type", scope: !413, file: !380, line: 261, baseType: !395, size: 32)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "p_flags", scope: !413, file: !380, line: 262, baseType: !395, size: 32, offset: 32)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "p_offset", scope: !413, file: !380, line: 263, baseType: !402, size: 64, offset: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "p_vaddr", scope: !413, file: !380, line: 264, baseType: !398, size: 64, offset: 128)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "p_paddr", scope: !413, file: !380, line: 265, baseType: !398, size: 64, offset: 192)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "p_filesz", scope: !413, file: !380, line: 266, baseType: !421, size: 64, offset: 256)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !380, line: 22, baseType: !399)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "p_memsz", scope: !413, file: !380, line: 267, baseType: !421, size: 64, offset: 320)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "p_align", scope: !413, file: !380, line: 268, baseType: !421, size: 64, offset: 384)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "note_buf_t", file: !426, line: 30, baseType: !427)
!426 = !DIFile(filename: "./include/linux/crash_core.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bd649c63340ff894fc599265eb4c65d6")
!427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !428, size: 2944, elements: !430)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !429, line: 21, baseType: !396)
!429 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!430 = !{!431}
!431 = !DISubrange(count: 92)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_note", file: !380, line: 469, size: 96, elements: !435)
!435 = !{!436, !437, !438}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "n_namesz", scope: !434, file: !380, line: 470, baseType: !395, size: 32)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "n_descsz", scope: !434, file: !380, line: 471, baseType: !395, size: 32, offset: 32)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "n_type", scope: !434, file: !380, line: 472, baseType: !395, size: 32, offset: 64)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !440, line: 61, baseType: !441)
!440 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !442, line: 72, baseType: !443)
!442 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !442, line: 16, baseType: !375)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !440, line: 154, baseType: !13)
!446 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !428)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !93)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !320, line: 74, size: 512, align: 128, elements: !455)
!455 = !{!456, !457, !4496, !4501}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !454, file: !320, line: 75, baseType: !375, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, scope: !454, file: !320, line: 83, baseType: !458, size: 320, offset: 64)
!458 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !454, file: !320, line: 83, size: 320, elements: !459)
!459 = !{!460, !4402, !4416, !4420, !4495}
!460 = !DIDerivedType(tag: DW_TAG_member, scope: !458, file: !320, line: 84, baseType: !461, size: 320)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !458, file: !320, line: 84, size: 320, elements: !462)
!462 = !{!463, !479, !4396, !4401}
!463 = !DIDerivedType(tag: DW_TAG_member, scope: !461, file: !320, line: 90, baseType: !464, size: 128)
!464 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !461, file: !320, line: 90, size: 128, elements: !465)
!465 = !{!466, !472, !477, !478}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !464, file: !320, line: 91, baseType: !467, size: 128)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !440, line: 190, size: 128, elements: !468)
!468 = !{!469, !471}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !467, file: !440, line: 191, baseType: !470, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !467, file: !440, line: 191, baseType: !470, size: 64, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, scope: !464, file: !320, line: 94, baseType: !473, size: 128)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !464, file: !320, line: 94, size: 128, elements: !474)
!474 = !{!475, !476}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !473, file: !320, line: 96, baseType: !432, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !473, file: !320, line: 98, baseType: !13, size: 32, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !464, file: !320, line: 102, baseType: !467, size: 128)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !464, file: !320, line: 103, baseType: !467, size: 128)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !461, file: !320, line: 106, baseType: !480, size: 64, offset: 128)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !342, line: 472, size: 1536, align: 64, elements: !482)
!482 = !{!483, !4231, !4232, !4233, !4234, !4235, !4236, !4237, !4238, !4390, !4391, !4392, !4393, !4394, !4395}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !481, file: !342, line: 473, baseType: !484, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !342, line: 641, size: 4800, elements: !486)
!486 = !{!487, !489, !490, !498, !499, !506, !507, !510, !511, !4169, !4170, !4171, !4172, !4173, !4179, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4189, !4190, !4191, !4192, !4193, !4194, !4195, !4196, !4197, !4202, !4203, !4204, !4205, !4206, !4207, !4208, !4213, !4216, !4217, !4218, !4227, !4228, !4229, !4230}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !485, file: !342, line: 642, baseType: !488, size: 16)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !440, line: 24, baseType: !392)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !485, file: !342, line: 643, baseType: !392, size: 16, offset: 16)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !485, file: !342, line: 644, baseType: !491, size: 32, offset: 32)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !492, line: 23, baseType: !493)
!492 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !492, line: 21, size: 32, elements: !494)
!494 = !{!495}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !493, file: !492, line: 22, baseType: !496, size: 32)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !440, line: 37, baseType: !497)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !442, line: 49, baseType: !13)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !485, file: !342, line: 645, baseType: !467, size: 128, offset: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !485, file: !342, line: 646, baseType: !500, size: 32, offset: 192)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !492, line: 28, baseType: !501)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !492, line: 26, size: 32, elements: !502)
!502 = !{!503}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !501, file: !492, line: 27, baseType: !504, size: 32)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !440, line: 38, baseType: !505)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !442, line: 50, baseType: !13)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !485, file: !342, line: 647, baseType: !13, size: 32, offset: 224)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !485, file: !342, line: 650, baseType: !508, size: 64, offset: 256)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !342, line: 607, flags: DIFlagFwdDecl)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !485, file: !342, line: 651, baseType: !508, size: 64, offset: 320)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !485, file: !342, line: 654, baseType: !512, size: 64, offset: 384)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !514)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !342, line: 1966, size: 2048, align: 512, elements: !515)
!515 = !{!516, !4003, !4013, !4017, !4021, !4025, !4029, !4033, !4037, !4041, !4045, !4046, !4050, !4054, !4091, !4120, !4124, !4130, !4134, !4138, !4142, !4146, !4150, !4156, !4160}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !514, file: !342, line: 1967, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DISubroutineType(types: !519)
!519 = !{!520, !484, !520, !13}
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !522, line: 82, size: 1536, elements: !523)
!522 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!523 = !{!524, !525, !535, !543, !544, !560, !561, !565, !615, !3986, !3987, !3988, !3989, !3995, !3996, !3997}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !521, file: !522, line: 84, baseType: !13, size: 32)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !521, file: !522, line: 85, baseType: !526, size: 32, offset: 32)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !527, line: 275, baseType: !528)
!527 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !527, line: 275, size: 32, elements: !529)
!529 = !{!530}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !528, file: !527, line: 275, baseType: !531, size: 32)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !527, line: 69, baseType: !532)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !527, line: 64, size: 32, elements: !533)
!533 = !{!534}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !532, file: !527, line: 65, baseType: !13, size: 32)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !521, file: !522, line: 86, baseType: !536, size: 128, offset: 64)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !537, line: 38, size: 128, elements: !538)
!537 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!538 = !{!539, !541}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !536, file: !537, line: 39, baseType: !540, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !536, file: !537, line: 39, baseType: !542, size: 64, offset: 64)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !521, file: !522, line: 87, baseType: !520, size: 64, offset: 192)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !521, file: !522, line: 88, baseType: !545, size: 128, offset: 256)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !522, line: 49, size: 128, elements: !546)
!546 = !{!547, !557}
!547 = !DIDerivedType(tag: DW_TAG_member, scope: !545, file: !522, line: 50, baseType: !548, size: 64)
!548 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !545, file: !522, line: 50, size: 64, elements: !549)
!549 = !{!550, !555}
!550 = !DIDerivedType(tag: DW_TAG_member, scope: !548, file: !522, line: 51, baseType: !551, size: 64)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !548, file: !522, line: 51, size: 64, elements: !552)
!552 = !{!553, !554}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !551, file: !522, line: 52, baseType: !428, size: 32)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !551, file: !522, line: 52, baseType: !428, size: 32, offset: 32)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !548, file: !522, line: 54, baseType: !556, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !429, line: 23, baseType: !399)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !545, file: !522, line: 56, baseType: !558, size: 64, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !385)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !521, file: !522, line: 89, baseType: !484, size: 64, offset: 384)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !521, file: !522, line: 91, baseType: !562, size: 256, offset: 448)
!562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, size: 256, elements: !563)
!563 = !{!564}
!564 = !DISubrange(count: 32)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !521, file: !522, line: 94, baseType: !566, size: 64, offset: 704)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !567, line: 25, size: 64, elements: !568)
!567 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!568 = !{!569}
!569 = !DIDerivedType(tag: DW_TAG_member, scope: !566, file: !567, line: 26, baseType: !570, size: 64)
!570 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !566, file: !567, line: 26, size: 64, elements: !571)
!571 = !{!572, !573}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !570, file: !567, line: 28, baseType: !399, size: 64, align: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, scope: !570, file: !567, line: 30, baseType: !574, size: 64)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !570, file: !567, line: 30, size: 64, elements: !575)
!575 = !{!576, !614}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !574, file: !567, line: 31, baseType: !577, size: 32)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !578, line: 29, baseType: !579)
!578 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !578, line: 17, size: 32, elements: !580)
!580 = !{!581}
!581 = !DIDerivedType(tag: DW_TAG_member, scope: !579, file: !578, line: 18, baseType: !582, size: 32)
!582 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !579, file: !578, line: 18, size: 32, elements: !583)
!583 = !{!584}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !582, file: !578, line: 19, baseType: !585, size: 32)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !586, line: 14, size: 32, elements: !587)
!586 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!587 = !{!588}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !585, file: !586, line: 15, baseType: !589, size: 32)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !590, line: 44, baseType: !591)
!590 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !590, line: 14, size: 32, elements: !592)
!592 = !{!593}
!593 = !DIDerivedType(tag: DW_TAG_member, scope: !591, file: !590, line: 15, baseType: !594, size: 32)
!594 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !591, file: !590, line: 15, size: 32, elements: !595)
!595 = !{!596, !601, !608}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !594, file: !590, line: 16, baseType: !597, size: 32)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !440, line: 174, baseType: !598)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !440, line: 172, size: 32, elements: !599)
!599 = !{!600}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !598, file: !440, line: 173, baseType: !93, size: 32)
!601 = !DIDerivedType(tag: DW_TAG_member, scope: !594, file: !590, line: 24, baseType: !602, size: 16)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !594, file: !590, line: 24, size: 16, elements: !603)
!603 = !{!604, !607}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !602, file: !590, line: 25, baseType: !605, size: 8)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !429, line: 17, baseType: !606)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !391, line: 21, baseType: !385)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !602, file: !590, line: 26, baseType: !605, size: 8, offset: 8)
!608 = !DIDerivedType(tag: DW_TAG_member, scope: !594, file: !590, line: 28, baseType: !609, size: 32)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !594, file: !590, line: 28, size: 32, elements: !610)
!610 = !{!611, !613}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !609, file: !590, line: 29, baseType: !612, size: 16)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !429, line: 19, baseType: !390)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !609, file: !590, line: 30, baseType: !612, size: 16, offset: 16)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !574, file: !567, line: 32, baseType: !93, size: 32, offset: 32)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !521, file: !522, line: 95, baseType: !616, size: 64, offset: 768)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !618)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !522, line: 128, size: 1024, align: 512, elements: !619)
!619 = !{!620, !624, !625, !632, !638, !642, !646, !650, !651, !655, !660, !3976, !3980}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !618, file: !522, line: 129, baseType: !621, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DISubroutineType(types: !623)
!623 = !{!93, !520, !13}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !618, file: !522, line: 130, baseType: !621, size: 64, offset: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !618, file: !522, line: 131, baseType: !626, size: 64, offset: 128)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DISubroutineType(types: !628)
!628 = !{!93, !629, !631}
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !521)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !618, file: !522, line: 132, baseType: !633, size: 64, offset: 192)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DISubroutineType(types: !635)
!635 = !{!93, !629, !13, !447, !636}
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !545)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !618, file: !522, line: 134, baseType: !639, size: 64, offset: 256)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{!93, !629}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !618, file: !522, line: 135, baseType: !643, size: 64, offset: 320)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DISubroutineType(types: !645)
!645 = !{!93, !520}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !618, file: !522, line: 136, baseType: !647, size: 64, offset: 384)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DISubroutineType(types: !649)
!649 = !{null, !520}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !618, file: !522, line: 137, baseType: !647, size: 64, offset: 448)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !618, file: !522, line: 138, baseType: !652, size: 64, offset: 512)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DISubroutineType(types: !654)
!654 = !{null, !520, !484}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !618, file: !522, line: 139, baseType: !656, size: 64, offset: 576)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DISubroutineType(types: !658)
!658 = !{!659, !520, !659, !93}
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !618, file: !522, line: 140, baseType: !661, size: 64, offset: 640)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DISubroutineType(types: !663)
!663 = !{!664, !3975}
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !666, line: 70, size: 256, elements: !667)
!666 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!667 = !{!668, !669, !3971, !3972}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !665, file: !666, line: 71, baseType: !520, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !665, file: !666, line: 72, baseType: !670, size: 64, offset: 64)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !342, line: 1190, size: 10752, elements: !672)
!672 = !{!673, !674, !677, !678, !679, !683, !3542, !3676, !3716, !3801, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3818, !3822, !3823, !3826, !3829, !3832, !3835, !3836, !3837, !3878, !3904, !3905, !3906, !3907, !3908, !3909, !3912, !3914, !3921, !3922, !3923, !3924, !3925, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3962, !3963, !3964, !3965, !3966, !3967, !3968, !3969, !3970}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !671, file: !342, line: 1191, baseType: !467, size: 128)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !671, file: !342, line: 1192, baseType: !675, size: 32, offset: 128)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !440, line: 21, baseType: !676)
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !440, line: 18, baseType: !428)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !671, file: !342, line: 1193, baseType: !385, size: 8, offset: 160)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !671, file: !342, line: 1194, baseType: !375, size: 64, offset: 192)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !671, file: !342, line: 1195, baseType: !680, size: 64, offset: 256)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !440, line: 52, baseType: !681)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !442, line: 88, baseType: !682)
!682 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !671, file: !342, line: 1196, baseType: !684, size: 64, offset: 320)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !342, line: 2366, size: 576, elements: !686)
!686 = !{!687, !688, !689, !695, !699, !703, !707, !3530, !3531, !3532, !3534, !3535, !3536, !3538, !3539, !3540, !3541}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !685, file: !342, line: 2367, baseType: !447, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !685, file: !342, line: 2368, baseType: !93, size: 32, offset: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !685, file: !342, line: 2376, baseType: !690, size: 64, offset: 128)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DISubroutineType(types: !692)
!692 = !{!93, !693}
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !666, line: 21, flags: DIFlagFwdDecl)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !685, file: !342, line: 2377, baseType: !696, size: 64, offset: 192)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !698)
!698 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !342, line: 75, flags: DIFlagFwdDecl)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !685, file: !342, line: 2378, baseType: !700, size: 64, offset: 256)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DISubroutineType(types: !702)
!702 = !{!520, !684, !93, !447, !432}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !685, file: !342, line: 2380, baseType: !704, size: 64, offset: 320)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DISubroutineType(types: !706)
!706 = !{null, !670}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !685, file: !342, line: 2381, baseType: !708, size: 64, offset: 384)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !287, line: 402, size: 9216, align: 512, elements: !710)
!710 = !{!711, !712, !713, !717, !3207, !3233, !3234, !3235, !3236, !3240, !3243, !3244, !3245, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3313, !3317, !3335, !3352, !3353, !3354, !3355, !3364, !3382, !3383, !3386, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3400, !3401, !3490, !3498, !3499, !3500, !3502, !3506, !3507, !3511, !3512, !3513, !3514, !3516, !3517, !3518, !3525, !3526, !3527, !3529}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !709, file: !287, line: 403, baseType: !286, size: 32)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !709, file: !287, line: 406, baseType: !467, size: 128, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !709, file: !287, line: 409, baseType: !714, size: 448, offset: 192)
!714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !715)
!715 = !{!716}
!716 = !DISubrange(count: 56)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !709, file: !287, line: 417, baseType: !718, size: 768, offset: 640)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !287, line: 45, size: 768, elements: !719)
!719 = !{!720, !3201, !3202, !3203, !3206}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !718, file: !287, line: 46, baseType: !721, size: 512)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !722, line: 64, size: 512, elements: !723)
!722 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!723 = !{!724, !725, !726, !728, !774, !3087, !3191, !3196, !3197, !3198, !3199, !3200}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !721, file: !722, line: 65, baseType: !447, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !721, file: !722, line: 66, baseType: !467, size: 128, offset: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !721, file: !722, line: 67, baseType: !727, size: 64, offset: 192)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !721, file: !722, line: 68, baseType: !729, size: 64, offset: 256)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !722, line: 168, size: 768, elements: !731)
!731 = !{!732, !733, !734, !735}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !730, file: !722, line: 169, baseType: !467, size: 128)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !730, file: !722, line: 170, baseType: !577, size: 32, offset: 128)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !730, file: !722, line: 171, baseType: !721, size: 512, offset: 192)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !730, file: !722, line: 172, baseType: !736, size: 64, offset: 704)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !738)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !722, line: 133, size: 192, elements: !739)
!739 = !{!740, !747, !752}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !738, file: !722, line: 134, baseType: !741, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !742)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{!93, !745}
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !721)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !738, file: !722, line: 135, baseType: !748, size: 64, offset: 64)
!748 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !749)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DISubroutineType(types: !751)
!751 = !{!447, !745}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !738, file: !722, line: 136, baseType: !753, size: 64, offset: 128)
!753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !754)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DISubroutineType(types: !756)
!756 = !{!93, !745, !757}
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !722, line: 125, size: 20736, elements: !759)
!759 = !{!760, !764, !768, !769, !773}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !758, file: !722, line: 126, baseType: !761, size: 192)
!761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !659, size: 192, elements: !762)
!762 = !{!763}
!763 = !DISubrange(count: 3)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !758, file: !722, line: 127, baseType: !765, size: 4096, offset: 192)
!765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !659, size: 4096, elements: !766)
!766 = !{!767}
!767 = !DISubrange(count: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !758, file: !722, line: 128, baseType: !93, size: 32, offset: 4288)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !758, file: !722, line: 129, baseType: !770, size: 16384, offset: 4320)
!770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !771)
!771 = !{!772}
!772 = !DISubrange(count: 2048)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !758, file: !722, line: 130, baseType: !93, size: 32, offset: 20704)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !721, file: !722, line: 69, baseType: !775, size: 64, offset: 320)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !777)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !722, line: 116, size: 384, elements: !778)
!778 = !{!779, !783, !805, !3045, !3077, !3081}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !777, file: !722, line: 117, baseType: !780, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DISubroutineType(types: !782)
!782 = !{null, !727}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !777, file: !722, line: 118, baseType: !784, size: 64, offset: 64)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !786)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !787, line: 254, size: 128, elements: !788)
!787 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!788 = !{!789, !801}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !786, file: !787, line: 255, baseType: !790, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DISubroutineType(types: !792)
!792 = !{!793, !727, !796, !659}
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !440, line: 66, baseType: !794)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !442, line: 73, baseType: !795)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !442, line: 15, baseType: !446)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !787, line: 30, size: 128, elements: !798)
!798 = !{!799, !800}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !797, file: !787, line: 31, baseType: !447, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !797, file: !787, line: 32, baseType: !488, size: 16, offset: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !786, file: !787, line: 256, baseType: !802, size: 64, offset: 64)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DISubroutineType(types: !804)
!804 = !{!793, !727, !796, !447, !439}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !777, file: !722, line: 119, baseType: !806, size: 64, offset: 128)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !809)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !787, line: 84, size: 320, elements: !810)
!810 = !{!811, !812, !816, !3041, !3043}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !809, file: !787, line: 85, baseType: !447, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !809, file: !787, line: 86, baseType: !813, size: 64, offset: 64)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DISubroutineType(types: !815)
!815 = !{!488, !727, !796, !93}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !809, file: !787, line: 88, baseType: !817, size: 64, offset: 128)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DISubroutineType(types: !819)
!819 = !{!488, !727, !820, !93}
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !787, line: 175, size: 512, elements: !822)
!822 = !{!823, !824, !825, !826, !830, !3036, !3037}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !821, file: !787, line: 176, baseType: !797, size: 128)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !821, file: !787, line: 177, baseType: !439, size: 64, offset: 128)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !821, file: !787, line: 178, baseType: !432, size: 64, offset: 192)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !821, file: !787, line: 179, baseType: !827, size: 64, offset: 256)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DISubroutineType(types: !829)
!829 = !{!480}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !821, file: !787, line: 180, baseType: !831, size: 64, offset: 320)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DISubroutineType(types: !833)
!833 = !{!793, !834, !727, !820, !659, !680, !439}
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !342, line: 994, size: 1856, align: 64, elements: !836)
!836 = !{!837, !856, !857, !859, !868, !881, !882, !883, !2642, !2643, !2652, !2658, !2659, !3026, !3027, !3028, !3029, !3031, !3032, !3035}
!837 = !DIDerivedType(tag: DW_TAG_member, scope: !835, file: !342, line: 995, baseType: !838, size: 128)
!838 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !835, file: !342, line: 995, size: 128, elements: !839)
!839 = !{!840, !846, !855}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !838, file: !342, line: 996, baseType: !841, size: 64)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !842, line: 60, size: 64, elements: !843)
!842 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!843 = !{!844}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !841, file: !842, line: 61, baseType: !845, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !838, file: !342, line: 997, baseType: !847, size: 128, align: 64)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !440, line: 232, size: 128, align: 64, elements: !848)
!848 = !{!849, !851}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !847, file: !440, line: 233, baseType: !850, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !847, file: !440, line: 234, baseType: !852, size: 64, offset: 64)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DISubroutineType(types: !854)
!854 = !{null, !850}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !838, file: !342, line: 998, baseType: !13, size: 32)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !835, file: !342, line: 1005, baseType: !577, size: 32, offset: 128)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !835, file: !342, line: 1006, baseType: !858, size: 32, offset: 160)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !440, line: 156, baseType: !13)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !835, file: !342, line: 1007, baseType: !860, size: 64, offset: 192)
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !861, line: 13, baseType: !862)
!861 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !440, line: 181, baseType: !863)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !440, line: 179, size: 64, elements: !864)
!864 = !{!865}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !863, file: !440, line: 180, baseType: !866, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !429, line: 22, baseType: !867)
!867 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !391, line: 30, baseType: !682)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !835, file: !342, line: 1008, baseType: !869, size: 256, offset: 256)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !870, line: 66, size: 256, elements: !871)
!870 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!871 = !{!872, !873, !875, !880}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !869, file: !870, line: 67, baseType: !860, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !869, file: !870, line: 68, baseType: !874, size: 32, offset: 64)
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !586, line: 23, baseType: !585)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !869, file: !870, line: 70, baseType: !876, size: 32, offset: 96)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !877, line: 15, size: 32, elements: !878)
!877 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!878 = !{!879}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !876, file: !877, line: 20, baseType: !597, size: 32)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !869, file: !870, line: 72, baseType: !467, size: 128, offset: 128)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !835, file: !342, line: 1009, baseType: !680, size: 64, offset: 512)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !835, file: !342, line: 1010, baseType: !13, size: 32, offset: 576)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !835, file: !342, line: 1011, baseType: !884, size: 256, offset: 640)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !342, line: 948, size: 256, elements: !885)
!885 = !{!886, !907, !2638, !2639, !2640, !2641}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !884, file: !342, line: 949, baseType: !887, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !888, line: 34, baseType: !889)
!888 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !888, line: 25, size: 64, elements: !890)
!890 = !{!891}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !889, file: !888, line: 26, baseType: !892, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !893, line: 27, baseType: !894)
!893 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !893, line: 13, size: 64, elements: !895)
!895 = !{!896, !906}
!896 = !DIDerivedType(tag: DW_TAG_member, scope: !894, file: !893, line: 14, baseType: !897, size: 32)
!897 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !894, file: !893, line: 14, size: 32, elements: !898)
!898 = !{!899, !900}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !897, file: !893, line: 15, baseType: !597, size: 32)
!900 = !DIDerivedType(tag: DW_TAG_member, scope: !897, file: !893, line: 16, baseType: !901, size: 32)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !897, file: !893, line: 16, size: 32, elements: !902)
!902 = !{!903, !904}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !901, file: !893, line: 18, baseType: !605, size: 8)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !901, file: !893, line: 19, baseType: !905, size: 24, offset: 8)
!905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !605, size: 24, elements: !762)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !894, file: !893, line: 26, baseType: !589, size: 32, offset: 32)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !884, file: !342, line: 950, baseType: !908, size: 64, offset: 64)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !312, line: 59, size: 768, elements: !910)
!910 = !{!911, !917, !918, !919, !932, !933, !940, !941}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !909, file: !312, line: 61, baseType: !912, size: 32)
!912 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !913, line: 113, baseType: !914)
!913 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !913, line: 111, size: 32, elements: !915)
!915 = !{!916}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !914, file: !913, line: 112, baseType: !597, size: 32)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !909, file: !312, line: 62, baseType: !13, size: 32, offset: 32)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !909, file: !312, line: 63, baseType: !577, size: 32, offset: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !909, file: !312, line: 65, baseType: !920, size: 256, offset: 128)
!920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !921, size: 256, elements: !930)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !440, line: 194, size: 64, elements: !922)
!922 = !{!923}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !921, file: !440, line: 195, baseType: !924, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !440, line: 198, size: 128, elements: !926)
!926 = !{!927, !928}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !925, file: !440, line: 199, baseType: !924, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !925, file: !440, line: 199, baseType: !929, size: 64, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!930 = !{!931}
!931 = !DISubrange(count: 4)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !909, file: !312, line: 66, baseType: !921, size: 64, offset: 384)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !909, file: !312, line: 68, baseType: !934, size: 192, offset: 448)
!934 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !935, line: 41, baseType: !936)
!935 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !935, line: 37, size: 192, elements: !937)
!937 = !{!938, !939}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !936, file: !935, line: 38, baseType: !577, size: 32)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !936, file: !935, line: 39, baseType: !467, size: 128, offset: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !909, file: !312, line: 69, baseType: !847, size: 128, align: 64, offset: 640)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !909, file: !312, line: 70, baseType: !942, offset: 768)
!942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !943, elements: !1444)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !312, line: 54, size: 128, elements: !944)
!944 = !{!945, !946}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !943, file: !312, line: 55, baseType: !93, size: 32)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !943, file: !312, line: 56, baseType: !947, size: 64, offset: 64)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !949, line: 26, size: 1152, elements: !950)
!949 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!950 = !{!951, !964, !965, !966, !2624, !2628, !2629, !2630, !2633, !2634, !2635, !2636, !2637}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !948, file: !949, line: 27, baseType: !952, size: 192)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !953, line: 19, size: 192, elements: !954)
!953 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!954 = !{!955, !962, !963}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !952, file: !953, line: 20, baseType: !956, size: 128)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !957, line: 296, size: 128, elements: !958)
!957 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!958 = !{!959, !960, !961}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !956, file: !957, line: 297, baseType: !577, size: 32)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !956, file: !957, line: 299, baseType: !445, size: 32, offset: 32)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !956, file: !957, line: 300, baseType: !432, size: 64, offset: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !952, file: !953, line: 21, baseType: !13, size: 32, offset: 128)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !952, file: !953, line: 22, baseType: !13, size: 32, offset: 160)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !948, file: !949, line: 28, baseType: !847, size: 128, align: 64, offset: 192)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !948, file: !949, line: 29, baseType: !13, size: 32, offset: 320)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !948, file: !949, line: 30, baseType: !967, size: 64, offset: 384)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !969, line: 746, size: 58368, elements: !970)
!969 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!970 = !{!971, !979, !980, !981, !982, !983, !984, !985, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1058, !1069, !1164, !1168, !1171, !1202, !1203, !1204, !1205, !1209, !1211, !1212, !1213, !1214, !1215, !1216, !1227, !1228, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1245, !1246, !1253, !1254, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1525, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1540, !1541, !1542, !1554, !1556, !1557, !1558, !1559, !1560, !1561, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1585, !1591, !1775, !1776, !1777, !1778, !1780, !1783, !1790, !1795, !1798, !1801, !1804, !1858, !1998, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2038, !2039, !2040, !2049, !2057, !2058, !2059, !2060, !2061, !2066, !2067, !2068, !2071, !2072, !2075, !2078, !2081, !2089, !2092, !2093, !2179, !2180, !2181, !2182, !2183, !2188, !2189, !2190, !2191, !2194, !2195, !2198, !2212, !2213, !2216, !2217, !2218, !2221, !2222, !2223, !2226, !2227, !2228, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2260, !2263, !2269, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2281, !2353, !2355, !2356, !2357, !2358, !2359, !2371, !2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2401, !2402, !2403}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !968, file: !969, line: 752, baseType: !972, size: 192)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !973, line: 56, size: 192, elements: !974)
!973 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!974 = !{!975, !976, !977, !978}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !972, file: !973, line: 57, baseType: !375, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !972, file: !973, line: 58, baseType: !375, size: 64, offset: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !972, file: !973, line: 59, baseType: !428, size: 32, offset: 128)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !972, file: !973, line: 61, baseType: !428, size: 32, offset: 160)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !968, file: !969, line: 754, baseType: !13, size: 32, offset: 192)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !968, file: !969, line: 767, baseType: !432, size: 64, offset: 256)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !968, file: !969, line: 768, baseType: !912, size: 32, offset: 320)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !968, file: !969, line: 770, baseType: !13, size: 32, offset: 352)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !968, file: !969, line: 771, baseType: !13, size: 32, offset: 384)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !968, file: !969, line: 774, baseType: !93, size: 32, offset: 416)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !968, file: !969, line: 775, baseType: !986, size: 128, offset: 448)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !987, line: 58, size: 128, elements: !988)
!987 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!988 = !{!989, !990, !995, !996}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !986, file: !987, line: 59, baseType: !841, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, scope: !986, file: !987, line: 60, baseType: !991, size: 32, offset: 64)
!991 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !986, file: !987, line: 60, size: 32, elements: !992)
!992 = !{!993, !994}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !991, file: !987, line: 61, baseType: !13, size: 32)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !991, file: !987, line: 62, baseType: !597, size: 32)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !986, file: !987, line: 65, baseType: !612, size: 16, offset: 96)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !986, file: !987, line: 65, baseType: !612, size: 16, offset: 112)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !968, file: !969, line: 776, baseType: !13, size: 32, offset: 576)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !968, file: !969, line: 777, baseType: !375, size: 64, offset: 640)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !968, file: !969, line: 778, baseType: !967, size: 64, offset: 704)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !968, file: !969, line: 787, baseType: !93, size: 32, offset: 768)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !968, file: !969, line: 788, baseType: !93, size: 32, offset: 800)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !968, file: !969, line: 790, baseType: !93, size: 32, offset: 832)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !968, file: !969, line: 792, baseType: !93, size: 32, offset: 864)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !968, file: !969, line: 793, baseType: !93, size: 32, offset: 896)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !968, file: !969, line: 794, baseType: !93, size: 32, offset: 928)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !968, file: !969, line: 795, baseType: !13, size: 32, offset: 960)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !968, file: !969, line: 797, baseType: !1008, size: 2048, offset: 1024)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !969, line: 551, size: 2048, elements: !1009)
!1009 = !{!1010, !1015, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1037, !1040, !1041, !1042}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1008, file: !969, line: 553, baseType: !1011, size: 128)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !969, line: 411, size: 128, elements: !1012)
!1012 = !{!1013, !1014}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1011, file: !969, line: 412, baseType: !375, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1011, file: !969, line: 413, baseType: !428, size: 32, offset: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1008, file: !969, line: 554, baseType: !1016, size: 192, align: 64, offset: 128)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !1017, line: 5, size: 192, align: 64, elements: !1018)
!1017 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!1018 = !{!1019, !1020, !1022}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !1016, file: !1017, line: 6, baseType: !375, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1016, file: !1017, line: 7, baseType: !1021, size: 64, offset: 64)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1016, file: !1017, line: 8, baseType: !1021, size: 64, offset: 128)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1008, file: !969, line: 555, baseType: !556, size: 64, offset: 320)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1008, file: !969, line: 556, baseType: !556, size: 64, offset: 384)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1008, file: !969, line: 558, baseType: !467, size: 128, offset: 448)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1008, file: !969, line: 559, baseType: !13, size: 32, offset: 576)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1008, file: !969, line: 561, baseType: !556, size: 64, offset: 640)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1008, file: !969, line: 562, baseType: !556, size: 64, offset: 704)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1008, file: !969, line: 563, baseType: !556, size: 64, offset: 768)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1008, file: !969, line: 564, baseType: !556, size: 64, offset: 832)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1008, file: !969, line: 565, baseType: !866, size: 64, offset: 896)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1008, file: !969, line: 566, baseType: !556, size: 64, offset: 960)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1008, file: !969, line: 568, baseType: !556, size: 64, offset: 1024)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1008, file: !969, line: 571, baseType: !93, size: 32, offset: 1088)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1008, file: !969, line: 572, baseType: !1036, size: 64, offset: 1152)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1008, file: !969, line: 574, baseType: !1038, size: 64, offset: 1216)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !969, line: 49, flags: DIFlagFwdDecl)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1008, file: !969, line: 576, baseType: !1038, size: 64, offset: 1280)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1008, file: !969, line: 578, baseType: !375, size: 64, offset: 1344)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1008, file: !969, line: 588, baseType: !1043, size: 512, align: 512, offset: 1536)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !969, line: 497, size: 512, align: 512, elements: !1044)
!1044 = !{!1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1043, file: !969, line: 498, baseType: !556, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1043, file: !969, line: 499, baseType: !556, size: 64, offset: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1043, file: !969, line: 500, baseType: !556, size: 64, offset: 128)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1043, file: !969, line: 501, baseType: !428, size: 32, offset: 192)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1043, file: !969, line: 502, baseType: !428, size: 32, offset: 224)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1043, file: !969, line: 503, baseType: !375, size: 64, offset: 256)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1043, file: !969, line: 504, baseType: !375, size: 64, offset: 320)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1043, file: !969, line: 505, baseType: !375, size: 64, offset: 384)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1043, file: !969, line: 506, baseType: !1054, size: 64, align: 64, offset: 448)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !969, line: 445, size: 64, align: 64, elements: !1055)
!1055 = !{!1056, !1057}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1054, file: !969, line: 446, baseType: !13, size: 32)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1054, file: !969, line: 447, baseType: !13, size: 32, offset: 32)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !968, file: !969, line: 798, baseType: !1059, size: 384, offset: 3072)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !969, line: 592, size: 384, elements: !1060)
!1060 = !{!1061, !1062, !1063, !1064, !1065, !1066, !1067}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1059, file: !969, line: 593, baseType: !467, size: 128)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1059, file: !969, line: 594, baseType: !375, size: 64, offset: 128)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1059, file: !969, line: 595, baseType: !375, size: 64, offset: 192)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1059, file: !969, line: 596, baseType: !13, size: 32, offset: 256)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1059, file: !969, line: 597, baseType: !392, size: 16, offset: 288)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1059, file: !969, line: 598, baseType: !392, size: 16, offset: 304)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1059, file: !969, line: 600, baseType: !1068, size: 64, offset: 320)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !968, file: !969, line: 799, baseType: !1070, size: 1792, offset: 3456)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !969, line: 610, size: 1792, elements: !1071)
!1071 = !{!1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1161, !1162}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1070, file: !969, line: 611, baseType: !1016, size: 192, align: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1070, file: !969, line: 618, baseType: !556, size: 64, offset: 192)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1070, file: !969, line: 619, baseType: !556, size: 64, offset: 256)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1070, file: !969, line: 620, baseType: !556, size: 64, offset: 320)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1070, file: !969, line: 621, baseType: !556, size: 64, offset: 384)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1070, file: !969, line: 622, baseType: !556, size: 64, offset: 448)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1070, file: !969, line: 629, baseType: !866, size: 64, offset: 512)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1070, file: !969, line: 630, baseType: !556, size: 64, offset: 576)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1070, file: !969, line: 631, baseType: !13, size: 32, offset: 640)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1070, file: !969, line: 653, baseType: !13, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1070, file: !969, line: 654, baseType: !13, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1070, file: !969, line: 655, baseType: !13, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1070, file: !969, line: 656, baseType: !13, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1070, file: !969, line: 662, baseType: !1086, size: 512, offset: 704)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !294, line: 118, size: 512, elements: !1087)
!1087 = !{!1088, !1096, !1097, !1102, !1157, !1158, !1159, !1160}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1086, file: !294, line: 119, baseType: !1089, size: 256)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1090, line: 9, size: 256, elements: !1091)
!1090 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1091 = !{!1092, !1093}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1089, file: !1090, line: 10, baseType: !1016, size: 192, align: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1089, file: !1090, line: 11, baseType: !1094, size: 64, offset: 192)
!1094 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1095, line: 29, baseType: !866)
!1095 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1086, file: !294, line: 120, baseType: !1094, size: 64, offset: 256)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1086, file: !294, line: 121, baseType: !1098, size: 64, offset: 320)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!293, !1101}
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1086, file: !294, line: 122, baseType: !1103, size: 64, offset: 384)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !294, line: 159, size: 512, align: 512, elements: !1105)
!1105 = !{!1106, !1131, !1132, !1135, !1140, !1141, !1152, !1156}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1104, file: !294, line: 160, baseType: !1107, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !294, line: 215, size: 4608, align: 512, elements: !1109)
!1109 = !{!1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1108, file: !294, line: 216, baseType: !874, size: 32)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1108, file: !294, line: 217, baseType: !13, size: 32, offset: 32)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1108, file: !294, line: 218, baseType: !13, size: 32, offset: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1108, file: !294, line: 219, baseType: !13, size: 32, offset: 96)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1108, file: !294, line: 220, baseType: !13, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1108, file: !294, line: 221, baseType: !13, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1108, file: !294, line: 222, baseType: !13, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1108, file: !294, line: 223, baseType: !13, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1108, file: !294, line: 224, baseType: !13, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1108, file: !294, line: 226, baseType: !13, size: 32, offset: 160)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1108, file: !294, line: 227, baseType: !392, size: 16, offset: 192)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1108, file: !294, line: 228, baseType: !392, size: 16, offset: 208)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1108, file: !294, line: 229, baseType: !13, size: 32, offset: 224)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1108, file: !294, line: 235, baseType: !1094, size: 64, offset: 256)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1108, file: !294, line: 236, baseType: !1101, size: 64, offset: 320)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1108, file: !294, line: 237, baseType: !1094, size: 64, offset: 384)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1108, file: !294, line: 238, baseType: !1101, size: 64, offset: 448)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1108, file: !294, line: 239, baseType: !1128, size: 4096, align: 512, offset: 512)
!1128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1104, size: 4096, align: 512, elements: !1129)
!1129 = !{!1130}
!1130 = !DISubrange(count: 8)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1104, file: !294, line: 161, baseType: !13, size: 32, offset: 64)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1104, file: !294, line: 162, baseType: !1133, size: 32, offset: 96)
!1133 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !440, line: 32, baseType: !1134)
!1134 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !442, line: 96, baseType: !93)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1104, file: !294, line: 163, baseType: !1136, size: 32, offset: 128)
!1136 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !527, line: 274, baseType: !1137)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !527, line: 274, size: 32, elements: !1138)
!1138 = !{!1139}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1137, file: !527, line: 274, baseType: !531, size: 32)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1104, file: !294, line: 164, baseType: !1101, size: 64, offset: 192)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1104, file: !294, line: 165, baseType: !1142, size: 128, offset: 256)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1090, line: 14, size: 128, elements: !1143)
!1143 = !{!1144}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1142, file: !1090, line: 15, baseType: !1145, size: 128)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !1017, line: 26, size: 128, elements: !1146)
!1146 = !{!1147, !1151}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1145, file: !1017, line: 27, baseType: !1148, size: 64)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !1017, line: 12, size: 64, elements: !1149)
!1149 = !{!1150}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1148, file: !1017, line: 13, baseType: !1021, size: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1145, file: !1017, line: 28, baseType: !1021, size: 64, offset: 64)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1104, file: !294, line: 166, baseType: !1153, size: 64, offset: 384)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{!1094}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1104, file: !294, line: 167, baseType: !1094, size: 64, offset: 448)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1086, file: !294, line: 123, baseType: !605, size: 8, offset: 448)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1086, file: !294, line: 124, baseType: !605, size: 8, offset: 456)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1086, file: !294, line: 125, baseType: !605, size: 8, offset: 464)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1086, file: !294, line: 126, baseType: !605, size: 8, offset: 472)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1070, file: !969, line: 671, baseType: !1086, size: 512, offset: 1216)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1070, file: !969, line: 679, baseType: !1163, size: 64, offset: 1728)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !968, file: !969, line: 800, baseType: !1165, size: 64, offset: 5248)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1167)
!1167 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !969, line: 800, flags: DIFlagFwdDecl)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !968, file: !969, line: 809, baseType: !1169, size: 64, offset: 5312)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !969, line: 70, flags: DIFlagFwdDecl)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !968, file: !969, line: 825, baseType: !1172, size: 2048, align: 512, offset: 5632)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !969, line: 509, size: 2048, align: 512, elements: !1173)
!1173 = !{!1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1172, file: !969, line: 511, baseType: !556, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1172, file: !969, line: 512, baseType: !556, size: 64, offset: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1172, file: !969, line: 513, baseType: !556, size: 64, offset: 128)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1172, file: !969, line: 514, baseType: !556, size: 64, offset: 192)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1172, file: !969, line: 515, baseType: !556, size: 64, offset: 256)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1172, file: !969, line: 516, baseType: !556, size: 64, offset: 320)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1172, file: !969, line: 518, baseType: !556, size: 64, offset: 384)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1172, file: !969, line: 519, baseType: !556, size: 64, offset: 448)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1172, file: !969, line: 520, baseType: !866, size: 64, offset: 512)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1172, file: !969, line: 522, baseType: !556, size: 64, offset: 576)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1172, file: !969, line: 523, baseType: !556, size: 64, offset: 640)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1172, file: !969, line: 524, baseType: !866, size: 64, offset: 704)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1172, file: !969, line: 526, baseType: !866, size: 64, offset: 768)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1172, file: !969, line: 527, baseType: !556, size: 64, offset: 832)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1172, file: !969, line: 529, baseType: !556, size: 64, offset: 896)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1172, file: !969, line: 530, baseType: !556, size: 64, offset: 960)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1172, file: !969, line: 531, baseType: !556, size: 64, offset: 1024)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1172, file: !969, line: 532, baseType: !556, size: 64, offset: 1088)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1172, file: !969, line: 533, baseType: !556, size: 64, offset: 1152)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1172, file: !969, line: 535, baseType: !556, size: 64, offset: 1216)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1172, file: !969, line: 536, baseType: !556, size: 64, offset: 1280)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1172, file: !969, line: 537, baseType: !556, size: 64, offset: 1344)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1172, file: !969, line: 538, baseType: !556, size: 64, offset: 1408)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1172, file: !969, line: 539, baseType: !556, size: 64, offset: 1472)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1172, file: !969, line: 540, baseType: !556, size: 64, offset: 1536)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1172, file: !969, line: 541, baseType: !556, size: 64, offset: 1600)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1172, file: !969, line: 542, baseType: !556, size: 64, offset: 1664)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1172, file: !969, line: 543, baseType: !556, size: 64, offset: 1728)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !968, file: !969, line: 833, baseType: !13, size: 32, offset: 7680)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !968, file: !969, line: 836, baseType: !13, size: 32, offset: 7712)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !968, file: !969, line: 837, baseType: !93, size: 32, offset: 7744)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !968, file: !969, line: 838, baseType: !1206, size: 64, offset: 7808)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1208)
!1208 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !371, line: 19, baseType: !370)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !968, file: !969, line: 839, baseType: !1210, size: 64, offset: 7872)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !968, file: !969, line: 840, baseType: !1208, size: 64, offset: 7936)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !968, file: !969, line: 841, baseType: !432, size: 64, offset: 8000)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !968, file: !969, line: 843, baseType: !392, size: 16, offset: 8064)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !968, file: !969, line: 845, baseType: !392, size: 16, offset: 8080)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !968, file: !969, line: 848, baseType: !93, size: 32, offset: 8096)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !968, file: !969, line: 849, baseType: !1217, size: 32, offset: 8128)
!1217 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !969, line: 718, size: 32, elements: !1218)
!1218 = !{!1219, !1226}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1217, file: !969, line: 724, baseType: !1220, size: 32)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1217, file: !969, line: 719, size: 32, elements: !1221)
!1221 = !{!1222, !1223, !1224, !1225}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1220, file: !969, line: 720, baseType: !605, size: 8)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1220, file: !969, line: 721, baseType: !605, size: 8, offset: 8)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1220, file: !969, line: 722, baseType: !605, size: 8, offset: 16)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1220, file: !969, line: 723, baseType: !605, size: 8, offset: 24)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1217, file: !969, line: 725, baseType: !428, size: 32)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !968, file: !969, line: 850, baseType: !467, size: 128, offset: 8192)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !968, file: !969, line: 851, baseType: !1229, size: 64, offset: 8320)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !969, line: 60, flags: DIFlagFwdDecl)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !968, file: !969, line: 855, baseType: !375, size: 64, offset: 8384)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !968, file: !969, line: 856, baseType: !605, size: 8, offset: 8448)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !968, file: !969, line: 857, baseType: !605, size: 8, offset: 8456)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !968, file: !969, line: 858, baseType: !93, size: 32, offset: 8480)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !968, file: !969, line: 859, baseType: !467, size: 128, offset: 8512)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !968, file: !969, line: 860, baseType: !93, size: 32, offset: 8640)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !968, file: !969, line: 861, baseType: !467, size: 128, offset: 8704)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !968, file: !969, line: 873, baseType: !1239, size: 256, offset: 8832)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !969, line: 376, size: 256, elements: !1240)
!1240 = !{!1241, !1242, !1243, !1244}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1239, file: !969, line: 381, baseType: !375, size: 64)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1239, file: !969, line: 384, baseType: !400, size: 64, offset: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1239, file: !969, line: 389, baseType: !400, size: 64, offset: 128)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1239, file: !969, line: 392, baseType: !400, size: 64, offset: 192)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !968, file: !969, line: 875, baseType: !467, size: 128, offset: 9088)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !968, file: !969, line: 877, baseType: !1247, size: 320, offset: 9216)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1248, line: 86, size: 320, elements: !1249)
!1248 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1249 = !{!1250, !1251, !1252}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1247, file: !1248, line: 87, baseType: !93, size: 32)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1247, file: !1248, line: 88, baseType: !467, size: 128, offset: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1247, file: !1248, line: 89, baseType: !467, size: 128, offset: 192)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !968, file: !969, line: 878, baseType: !1016, size: 192, align: 64, offset: 9536)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !968, file: !969, line: 881, baseType: !1255, size: 64, offset: 9728)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !320, line: 733, size: 10240, elements: !1257)
!1257 = !{!1258, !1442}
!1258 = !DIDerivedType(tag: DW_TAG_member, scope: !1256, file: !320, line: 734, baseType: !1259, size: 10240)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1256, file: !320, line: 734, size: 10240, elements: !1260)
!1260 = !{!1261, !1265, !1279, !1283, !1284, !1285, !1286, !1287, !1288, !1297, !1298, !1299, !1305, !1306, !1307, !1308, !1309, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1346, !1358, !1361, !1409, !1410, !1411, !1414, !1417, !1418, !1421, !1422, !1423, !1429, !1430}
!1261 = !DIDerivedType(tag: DW_TAG_member, scope: !1259, file: !320, line: 739, baseType: !1262, size: 512, align: 512)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1259, file: !320, line: 739, size: 512, align: 512, elements: !1263)
!1263 = !{!1264}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1262, file: !320, line: 747, baseType: !597, size: 32)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1259, file: !320, line: 750, baseType: !1266, size: 128, offset: 512)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1267, line: 218, size: 128, elements: !1268)
!1267 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1268 = !{!1269, !1277, !1278}
!1269 = !DIDerivedType(tag: DW_TAG_member, scope: !1266, file: !1267, line: 219, baseType: !1270, size: 32)
!1270 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1266, file: !1267, line: 219, size: 32, elements: !1271)
!1271 = !{!1272, !1273}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1270, file: !1267, line: 220, baseType: !577, size: 32)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1270, file: !1267, line: 221, baseType: !1274)
!1274 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1267, line: 197, baseType: !1275)
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1267, line: 197, elements: !1276)
!1276 = !{}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1266, file: !1267, line: 223, baseType: !13, size: 32, offset: 32)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1266, file: !1267, line: 224, baseType: !432, size: 64, offset: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1259, file: !320, line: 752, baseType: !1280, size: 64, offset: 640)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{!375, !834, !375, !375, !375, !375}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1259, file: !320, line: 756, baseType: !375, size: 64, offset: 704)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1259, file: !320, line: 757, baseType: !375, size: 64, offset: 768)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1259, file: !320, line: 760, baseType: !375, size: 64, offset: 832)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1259, file: !320, line: 761, baseType: !375, size: 64, offset: 896)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1259, file: !320, line: 763, baseType: !375, size: 64, offset: 960)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1259, file: !320, line: 764, baseType: !1289, size: 64, offset: 1024)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1291, line: 299, baseType: !1292)
!1291 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1291, line: 299, size: 64, elements: !1293)
!1293 = !{!1294}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1292, file: !1291, line: 299, baseType: !1295, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1296, line: 18, baseType: !375)
!1296 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1259, file: !320, line: 773, baseType: !597, size: 32, offset: 1088)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1259, file: !320, line: 785, baseType: !597, size: 32, offset: 1120)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1259, file: !320, line: 795, baseType: !1300, size: 64, offset: 1152)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !320, line: 726, size: 128, elements: !1302)
!1302 = !{!1303, !1304}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1301, file: !320, line: 727, baseType: !556, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1301, file: !320, line: 728, baseType: !93, size: 32, offset: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1259, file: !320, line: 801, baseType: !375, size: 64, offset: 1216)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1259, file: !320, line: 804, baseType: !860, size: 64, offset: 1280)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1259, file: !320, line: 806, baseType: !93, size: 32, offset: 1344)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1259, file: !320, line: 808, baseType: !577, size: 32, offset: 1376)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1259, file: !320, line: 823, baseType: !1310, size: 320, offset: 1408)
!1310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1311, line: 48, size: 320, elements: !1312)
!1311 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1312 = !{!1313, !1314, !1315, !1316, !1317}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1310, file: !1311, line: 49, baseType: !860, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1310, file: !1311, line: 55, baseType: !860, size: 64, offset: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1310, file: !1311, line: 57, baseType: !876, size: 32, offset: 128)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1310, file: !1311, line: 59, baseType: !874, size: 32, offset: 160)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1310, file: !1311, line: 60, baseType: !467, size: 128, offset: 192)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1259, file: !320, line: 825, baseType: !467, size: 128, offset: 1728)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1259, file: !320, line: 845, baseType: !93, size: 32, offset: 1856)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1259, file: !320, line: 849, baseType: !375, size: 64, offset: 1920)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1259, file: !320, line: 850, baseType: !375, size: 64, offset: 1984)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1259, file: !320, line: 852, baseType: !375, size: 64, offset: 2048)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1259, file: !320, line: 853, baseType: !375, size: 64, offset: 2112)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1259, file: !320, line: 854, baseType: !862, size: 64, offset: 2176)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1259, file: !320, line: 855, baseType: !375, size: 64, offset: 2240)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1259, file: !320, line: 856, baseType: !375, size: 64, offset: 2304)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1259, file: !320, line: 857, baseType: !375, size: 64, offset: 2368)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1259, file: !320, line: 858, baseType: !375, size: 64, offset: 2432)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1259, file: !320, line: 865, baseType: !531, size: 32, offset: 2496)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1259, file: !320, line: 867, baseType: !577, size: 32, offset: 2528)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1259, file: !320, line: 869, baseType: !375, size: 64, offset: 2560)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1259, file: !320, line: 869, baseType: !375, size: 64, offset: 2624)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1259, file: !320, line: 869, baseType: !375, size: 64, offset: 2688)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1259, file: !320, line: 869, baseType: !375, size: 64, offset: 2752)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1259, file: !320, line: 870, baseType: !375, size: 64, offset: 2816)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1259, file: !320, line: 870, baseType: !375, size: 64, offset: 2880)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1259, file: !320, line: 870, baseType: !375, size: 64, offset: 2944)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1259, file: !320, line: 871, baseType: !375, size: 64, offset: 3008)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1259, file: !320, line: 871, baseType: !375, size: 64, offset: 3072)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1259, file: !320, line: 871, baseType: !375, size: 64, offset: 3136)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1259, file: !320, line: 871, baseType: !375, size: 64, offset: 3200)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1259, file: !320, line: 873, baseType: !1343, size: 3328, offset: 3264)
!1343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !375, size: 3328, elements: !1344)
!1344 = !{!1345}
!1345 = !DISubrange(count: 52)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1259, file: !320, line: 875, baseType: !1347, size: 1280, offset: 6592)
!1347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1348, size: 1280, elements: !930)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1349, line: 22, size: 320, elements: !1350)
!1349 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1350 = !{!1351, !1352, !1353, !1354}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1348, file: !1349, line: 23, baseType: !874, size: 32)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1348, file: !1349, line: 24, baseType: !866, size: 64, offset: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1348, file: !1349, line: 26, baseType: !467, size: 128, offset: 128)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1348, file: !1349, line: 28, baseType: !1355, size: 64, offset: 256)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !429, line: 20, baseType: !1357)
!1357 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !391, line: 26, baseType: !93)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1259, file: !320, line: 877, baseType: !1359, size: 64, offset: 7872)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !320, line: 877, flags: DIFlagFwdDecl)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1259, file: !320, line: 880, baseType: !1362, size: 1088, offset: 7936)
!1362 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1363, line: 72, baseType: !1364)
!1363 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1363, line: 23, size: 1088, elements: !1365)
!1365 = !{!1366, !1367, !1368, !1369, !1370, !1373, !1374, !1375, !1376, !1403, !1404, !1405}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1364, file: !1363, line: 28, baseType: !556, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1364, file: !1363, line: 38, baseType: !862, size: 64, offset: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1364, file: !1363, line: 40, baseType: !375, size: 64, offset: 128)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1364, file: !1363, line: 43, baseType: !1310, size: 320, offset: 192)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1364, file: !1363, line: 44, baseType: !1371, size: 64, offset: 512)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1363, line: 44, flags: DIFlagFwdDecl)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1364, file: !1363, line: 48, baseType: !375, size: 64, offset: 576)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1364, file: !1363, line: 59, baseType: !869, size: 256, offset: 640)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1364, file: !1363, line: 60, baseType: !432, size: 64, offset: 896)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1364, file: !1363, line: 61, baseType: !1377, size: 64, offset: 960)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1379)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1380, line: 13, size: 1216, elements: !1381)
!1380 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1381 = !{!1382, !1383, !1384, !1385, !1386, !1387, !1388, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1379, file: !1380, line: 14, baseType: !432, size: 64)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1379, file: !1380, line: 15, baseType: !375, size: 64, offset: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1379, file: !1380, line: 17, baseType: !375, size: 64, offset: 128)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1379, file: !1380, line: 17, baseType: !375, size: 64, offset: 192)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1379, file: !1380, line: 18, baseType: !375, size: 64, offset: 256)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1379, file: !1380, line: 18, baseType: !375, size: 64, offset: 320)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1379, file: !1380, line: 19, baseType: !1389, size: 64, offset: 384)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1379, file: !1380, line: 21, baseType: !446, size: 64, offset: 448)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1379, file: !1380, line: 23, baseType: !446, size: 64, offset: 512)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1379, file: !1380, line: 24, baseType: !446, size: 64, offset: 576)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1379, file: !1380, line: 25, baseType: !446, size: 64, offset: 640)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1379, file: !1380, line: 26, baseType: !446, size: 64, offset: 704)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1379, file: !1380, line: 27, baseType: !446, size: 64, offset: 768)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1379, file: !1380, line: 28, baseType: !446, size: 64, offset: 832)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1379, file: !1380, line: 29, baseType: !446, size: 64, offset: 896)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1379, file: !1380, line: 30, baseType: !446, size: 64, offset: 960)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1379, file: !1380, line: 31, baseType: !446, size: 64, offset: 1024)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1379, file: !1380, line: 32, baseType: !446, size: 64, offset: 1088)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1379, file: !1380, line: 33, baseType: !446, size: 64, offset: 1152)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1364, file: !1363, line: 63, baseType: !597, size: 32, offset: 1024)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1364, file: !1363, line: 69, baseType: !612, size: 16, offset: 1056)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1364, file: !1363, line: 70, baseType: !1406, size: 16, offset: 1072)
!1406 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !429, line: 18, baseType: !1407)
!1407 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !391, line: 23, baseType: !1408)
!1408 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1259, file: !320, line: 882, baseType: !375, size: 64, offset: 9024)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1259, file: !320, line: 885, baseType: !577, size: 32, offset: 9088)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1259, file: !320, line: 886, baseType: !1412, size: 64, offset: 9152)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !320, line: 732, flags: DIFlagFwdDecl)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1259, file: !320, line: 901, baseType: !1415, size: 64, offset: 9216)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !320, line: 901, flags: DIFlagFwdDecl)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1259, file: !320, line: 904, baseType: !834, size: 64, offset: 9280)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1259, file: !320, line: 906, baseType: !1419, size: 64, offset: 9344)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !320, line: 906, flags: DIFlagFwdDecl)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1259, file: !320, line: 930, baseType: !597, size: 32, offset: 9408)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1259, file: !320, line: 933, baseType: !597, size: 32, offset: 9440)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1259, file: !320, line: 935, baseType: !1424, size: 64, offset: 9472)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !305, line: 103, size: 64, elements: !1425)
!1425 = !{!1426}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1424, file: !305, line: 104, baseType: !1427, size: 64)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !305, line: 101, flags: DIFlagFwdDecl)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1259, file: !320, line: 940, baseType: !860, size: 64, offset: 9536)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1259, file: !320, line: 942, baseType: !1431, size: 256, offset: 9600)
!1431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1432, line: 98, size: 256, elements: !1433)
!1432 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1433 = !{!1434, !1435, !1436}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1431, file: !1432, line: 99, baseType: !860, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1431, file: !1432, line: 100, baseType: !467, size: 128, offset: 64)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1431, file: !1432, line: 101, baseType: !1437, size: 64, offset: 192)
!1437 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1432, line: 21, baseType: !1438)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DISubroutineType(types: !1440)
!1440 = !{null, !1441}
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1256, file: !320, line: 986, baseType: !1443, offset: 10240)
!1443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !375, elements: !1444)
!1444 = !{!1445}
!1445 = !DISubrange(count: -1)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !968, file: !969, line: 882, baseType: !1255, size: 64, offset: 9792)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !968, file: !969, line: 884, baseType: !93, size: 32, offset: 9856)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !968, file: !969, line: 885, baseType: !93, size: 32, offset: 9888)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !968, file: !969, line: 886, baseType: !93, size: 32, offset: 9920)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !968, file: !969, line: 888, baseType: !93, size: 32, offset: 9952)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !968, file: !969, line: 890, baseType: !375, size: 64, offset: 9984)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !968, file: !969, line: 893, baseType: !13, size: 32, offset: 10048)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !968, file: !969, line: 896, baseType: !13, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !968, file: !969, line: 897, baseType: !13, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !968, file: !969, line: 898, baseType: !13, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !968, file: !969, line: 899, baseType: !13, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !968, file: !969, line: 919, baseType: !13, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !968, file: !969, line: 922, baseType: !13, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !968, file: !969, line: 923, baseType: !13, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !968, file: !969, line: 925, baseType: !13, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !968, file: !969, line: 939, baseType: !13, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !968, file: !969, line: 941, baseType: !13, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !968, file: !969, line: 944, baseType: !13, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !968, file: !969, line: 956, baseType: !13, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !968, file: !969, line: 962, baseType: !13, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !968, file: !969, line: 966, baseType: !13, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !968, file: !969, line: 969, baseType: !375, size: 64, offset: 10176)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !968, file: !969, line: 971, baseType: !1469, size: 448, offset: 10240)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !299, line: 25, size: 448, elements: !1470)
!1470 = !{!1471, !1472, !1477}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1469, file: !299, line: 26, baseType: !375, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1469, file: !299, line: 27, baseType: !1473, size: 64, offset: 64)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = !DISubroutineType(types: !1475)
!1475 = !{!446, !1476}
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, scope: !1469, file: !299, line: 28, baseType: !1478, size: 320, offset: 128)
!1478 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1469, file: !299, line: 28, size: 320, elements: !1479)
!1479 = !{!1480, !1490, !1515}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1478, file: !299, line: 37, baseType: !1481, size: 320)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1478, file: !299, line: 30, size: 320, elements: !1482)
!1482 = !{!1483, !1485, !1486, !1487, !1488, !1489}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1481, file: !299, line: 31, baseType: !1484, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1481, file: !299, line: 32, baseType: !428, size: 32, offset: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1481, file: !299, line: 33, baseType: !428, size: 32, offset: 96)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1481, file: !299, line: 34, baseType: !428, size: 32, offset: 128)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1481, file: !299, line: 35, baseType: !556, size: 64, offset: 192)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1481, file: !299, line: 36, baseType: !1484, size: 64, offset: 256)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1478, file: !299, line: 47, baseType: !1491, size: 192)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1478, file: !299, line: 39, size: 192, elements: !1492)
!1492 = !{!1493, !1494, !1495, !1514}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1491, file: !299, line: 40, baseType: !1133, size: 32)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1491, file: !299, line: 41, baseType: !298, size: 32, offset: 32)
!1495 = !DIDerivedType(tag: DW_TAG_member, scope: !1491, file: !299, line: 42, baseType: !1496, size: 64, offset: 64)
!1496 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1491, file: !299, line: 42, size: 64, elements: !1497)
!1497 = !{!1498, !1506}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1496, file: !299, line: 43, baseType: !1499, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1501, line: 7, size: 128, elements: !1502)
!1501 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1502 = !{!1503, !1505}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1500, file: !1501, line: 8, baseType: !1504, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !442, line: 93, baseType: !682)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1500, file: !1501, line: 9, baseType: !682, size: 64, offset: 64)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1496, file: !299, line: 44, baseType: !1507, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1509, line: 7, size: 64, elements: !1510)
!1509 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1510 = !{!1511, !1513}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1508, file: !1509, line: 8, baseType: !1512, size: 32)
!1512 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1509, line: 5, baseType: !1356)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1508, file: !1509, line: 9, baseType: !1356, size: 32, offset: 32)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1491, file: !299, line: 46, baseType: !556, size: 64, offset: 128)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1478, file: !299, line: 55, baseType: !1516, size: 256)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1478, file: !299, line: 49, size: 256, elements: !1517)
!1517 = !{!1518, !1521, !1522, !1523, !1524}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1516, file: !299, line: 50, baseType: !1519, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !299, line: 14, flags: DIFlagFwdDecl)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1516, file: !299, line: 51, baseType: !93, size: 32, offset: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1516, file: !299, line: 52, baseType: !93, size: 32, offset: 96)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1516, file: !299, line: 53, baseType: !375, size: 64, offset: 128)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1516, file: !299, line: 54, baseType: !375, size: 64, offset: 192)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !968, file: !969, line: 973, baseType: !1526, size: 32, offset: 10688)
!1526 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !440, line: 27, baseType: !1527)
!1527 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !442, line: 28, baseType: !93)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !968, file: !969, line: 974, baseType: !1526, size: 32, offset: 10720)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !968, file: !969, line: 978, baseType: !375, size: 64, offset: 10752)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !968, file: !969, line: 987, baseType: !967, size: 64, offset: 10816)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !968, file: !969, line: 990, baseType: !967, size: 64, offset: 10880)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !968, file: !969, line: 995, baseType: !467, size: 128, offset: 10944)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !968, file: !969, line: 996, baseType: !467, size: 128, offset: 11072)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !968, file: !969, line: 997, baseType: !967, size: 64, offset: 11200)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !968, file: !969, line: 1005, baseType: !467, size: 128, offset: 11264)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !968, file: !969, line: 1006, baseType: !467, size: 128, offset: 11392)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !968, file: !969, line: 1009, baseType: !908, size: 64, offset: 11520)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !968, file: !969, line: 1010, baseType: !1539, size: 512, offset: 11584)
!1539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !925, size: 512, elements: !930)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !968, file: !969, line: 1011, baseType: !467, size: 128, offset: 12096)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !968, file: !969, line: 1012, baseType: !467, size: 128, offset: 12224)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !968, file: !969, line: 1014, baseType: !1543, size: 64, offset: 12352)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1545, line: 26, size: 256, elements: !1546)
!1545 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1546 = !{!1547, !1548}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1544, file: !1545, line: 27, baseType: !13, size: 32)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1544, file: !1545, line: 28, baseType: !1549, size: 192, offset: 64)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1550, line: 43, size: 192, elements: !1551)
!1550 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1551 = !{!1552, !1553}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1549, file: !1550, line: 44, baseType: !874, size: 32)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1549, file: !1550, line: 45, baseType: !467, size: 128, offset: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !968, file: !969, line: 1017, baseType: !1555, size: 64, offset: 12416)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !968, file: !969, line: 1020, baseType: !1555, size: 64, offset: 12480)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !968, file: !969, line: 1023, baseType: !432, size: 64, offset: 12544)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !968, file: !969, line: 1025, baseType: !556, size: 64, offset: 12608)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !968, file: !969, line: 1026, baseType: !556, size: 64, offset: 12672)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !968, file: !969, line: 1031, baseType: !556, size: 64, offset: 12736)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !968, file: !969, line: 1032, baseType: !1562, size: 192, offset: 12800)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !969, line: 324, size: 192, elements: !1563)
!1563 = !{!1564, !1565, !1566}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1562, file: !969, line: 326, baseType: !556, size: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1562, file: !969, line: 327, baseType: !556, size: 64, offset: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1562, file: !969, line: 328, baseType: !874, size: 32, offset: 128)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !968, file: !969, line: 1041, baseType: !375, size: 64, offset: 12992)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !968, file: !969, line: 1042, baseType: !375, size: 64, offset: 13056)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !968, file: !969, line: 1045, baseType: !556, size: 64, offset: 13120)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !968, file: !969, line: 1048, baseType: !556, size: 64, offset: 13184)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !968, file: !969, line: 1051, baseType: !375, size: 64, offset: 13248)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !968, file: !969, line: 1052, baseType: !375, size: 64, offset: 13312)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !968, file: !969, line: 1055, baseType: !1574, size: 640, offset: 13376)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1575, line: 132, size: 640, elements: !1576)
!1575 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1576 = !{!1577, !1583, !1584}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1574, file: !1575, line: 133, baseType: !1578, size: 576)
!1578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1579, size: 576, elements: !762)
!1579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1575, line: 117, size: 192, elements: !1580)
!1580 = !{!1581, !1582}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1579, file: !1575, line: 118, baseType: !556, size: 64)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1579, file: !1575, line: 119, baseType: !1142, size: 128, offset: 64)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1574, file: !1575, line: 134, baseType: !13, size: 32, offset: 576)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1574, file: !1575, line: 135, baseType: !13, size: 32, offset: 608)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !968, file: !969, line: 1058, baseType: !1586, size: 448, offset: 14016)
!1586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1575, line: 144, size: 448, elements: !1587)
!1587 = !{!1588, !1589, !1590}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1586, file: !1575, line: 145, baseType: !847, size: 128, align: 64)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1586, file: !1575, line: 146, baseType: !869, size: 256, offset: 128)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1586, file: !1575, line: 147, baseType: !13, size: 32, offset: 384)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !968, file: !969, line: 1064, baseType: !1592, size: 64, offset: 14464)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1594)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1595, line: 110, size: 1472, elements: !1596)
!1595 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1596 = !{!1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1613, !1614, !1615, !1616, !1617, !1618, !1730, !1731, !1732, !1733, !1734, !1757, !1758, !1762, !1770}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1594, file: !1595, line: 111, baseType: !860, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1594, file: !1595, line: 112, baseType: !491, size: 32, offset: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1594, file: !1595, line: 113, baseType: !500, size: 32, offset: 96)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1594, file: !1595, line: 114, baseType: !491, size: 32, offset: 128)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1594, file: !1595, line: 115, baseType: !500, size: 32, offset: 160)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1594, file: !1595, line: 116, baseType: !491, size: 32, offset: 192)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1594, file: !1595, line: 117, baseType: !500, size: 32, offset: 224)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1594, file: !1595, line: 118, baseType: !491, size: 32, offset: 256)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1594, file: !1595, line: 119, baseType: !500, size: 32, offset: 288)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1594, file: !1595, line: 120, baseType: !13, size: 32, offset: 320)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1594, file: !1595, line: 121, baseType: !1608, size: 64, offset: 384)
!1608 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1609, line: 24, baseType: !1610)
!1609 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1610 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1609, line: 24, size: 64, elements: !1611)
!1611 = !{!1612}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1610, file: !1609, line: 24, baseType: !556, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1594, file: !1595, line: 122, baseType: !1608, size: 64, offset: 448)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1594, file: !1595, line: 123, baseType: !1608, size: 64, offset: 512)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1594, file: !1595, line: 124, baseType: !1608, size: 64, offset: 576)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1594, file: !1595, line: 125, baseType: !1608, size: 64, offset: 640)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1594, file: !1595, line: 127, baseType: !385, size: 8, offset: 704)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1594, file: !1595, line: 129, baseType: !1619, size: 64, offset: 768)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1621, line: 195, size: 1728, elements: !1622)
!1621 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1622 = !{!1623, !1624, !1627, !1632, !1633, !1636, !1637, !1644, !1645, !1646, !1647, !1650, !1651, !1652, !1653, !1654, !1694, !1715}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1620, file: !1621, line: 196, baseType: !912, size: 32)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1620, file: !1621, line: 197, baseType: !1625, size: 32, offset: 32)
!1625 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1621, line: 28, baseType: !1626)
!1626 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !440, line: 104, baseType: !1356)
!1627 = !DIDerivedType(tag: DW_TAG_member, scope: !1620, file: !1621, line: 198, baseType: !1628, size: 192, offset: 64)
!1628 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1620, file: !1621, line: 198, size: 192, elements: !1629)
!1629 = !{!1630, !1631}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1628, file: !1621, line: 199, baseType: !467, size: 128)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1628, file: !1621, line: 200, baseType: !1016, size: 192, align: 64)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1620, file: !1621, line: 205, baseType: !1310, size: 320, offset: 256)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1620, file: !1621, line: 206, baseType: !1634, size: 64, offset: 576)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1621, line: 206, flags: DIFlagFwdDecl)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1620, file: !1621, line: 207, baseType: !432, size: 64, offset: 640)
!1637 = !DIDerivedType(tag: DW_TAG_member, scope: !1620, file: !1621, line: 208, baseType: !1638, size: 64, offset: 704)
!1638 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1620, file: !1621, line: 208, size: 64, elements: !1639)
!1639 = !{!1640, !1643}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1638, file: !1621, line: 209, baseType: !1641, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1642, line: 8, baseType: !867)
!1642 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1638, file: !1621, line: 210, baseType: !1641, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1620, file: !1621, line: 212, baseType: !1641, size: 64, offset: 768)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1620, file: !1621, line: 213, baseType: !491, size: 32, offset: 832)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1620, file: !1621, line: 214, baseType: !500, size: 32, offset: 864)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1620, file: !1621, line: 215, baseType: !1648, size: 32, offset: 896)
!1648 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1621, line: 31, baseType: !1649)
!1649 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !440, line: 110, baseType: !428)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1620, file: !1621, line: 216, baseType: !392, size: 16, offset: 928)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1620, file: !1621, line: 217, baseType: !392, size: 16, offset: 944)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1620, file: !1621, line: 221, baseType: !1408, size: 16, offset: 960)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1620, file: !1621, line: 228, baseType: !375, size: 64, offset: 1024)
!1654 = !DIDerivedType(tag: DW_TAG_member, scope: !1620, file: !1621, line: 245, baseType: !1655, size: 320, offset: 1088)
!1655 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1620, file: !1621, line: 245, size: 320, elements: !1656)
!1656 = !{!1657, !1686}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1655, file: !1621, line: 246, baseType: !1658, size: 320)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1621, line: 114, size: 320, elements: !1659)
!1659 = !{!1660, !1661, !1673, !1676, !1685}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1658, file: !1621, line: 116, baseType: !375, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_member, scope: !1658, file: !1621, line: 117, baseType: !1662, size: 64, offset: 64)
!1662 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1658, file: !1621, line: 117, size: 64, elements: !1663)
!1663 = !{!1664, !1672}
!1664 = !DIDerivedType(tag: DW_TAG_member, scope: !1662, file: !1621, line: 118, baseType: !1665, size: 64)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1662, file: !1621, line: 118, size: 64, elements: !1666)
!1666 = !{!1667, !1668}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1665, file: !1621, line: 120, baseType: !612, size: 16)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1665, file: !1621, line: 121, baseType: !1669, size: 48, offset: 16)
!1669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !1670)
!1670 = !{!1671}
!1671 = !DISubrange(count: 6)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1662, file: !1621, line: 127, baseType: !375, size: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1658, file: !1621, line: 129, baseType: !1674, size: 64, offset: 128)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1621, line: 102, flags: DIFlagFwdDecl)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1658, file: !1621, line: 130, baseType: !1677, size: 64, offset: 192)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1621, line: 108, size: 192, elements: !1679)
!1679 = !{!1680, !1681, !1682}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1678, file: !1621, line: 109, baseType: !847, size: 128, align: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1678, file: !1621, line: 110, baseType: !912, size: 32, offset: 128)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1678, file: !1621, line: 111, baseType: !1683, size: 8, offset: 160)
!1683 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !440, line: 35, baseType: !1684)
!1684 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1658, file: !1621, line: 131, baseType: !447, size: 64, offset: 256)
!1686 = !DIDerivedType(tag: DW_TAG_member, scope: !1655, file: !1621, line: 247, baseType: !1687, size: 320)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1655, file: !1621, line: 247, size: 320, elements: !1688)
!1688 = !{!1689, !1690, !1691, !1692, !1693}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1687, file: !1621, line: 248, baseType: !375, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1687, file: !1621, line: 249, baseType: !375, size: 64, offset: 64)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1687, file: !1621, line: 250, baseType: !1674, size: 64, offset: 128)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1687, file: !1621, line: 251, baseType: !1677, size: 64, offset: 192)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1687, file: !1621, line: 252, baseType: !659, size: 64, offset: 256)
!1694 = !DIDerivedType(tag: DW_TAG_member, scope: !1620, file: !1621, line: 260, baseType: !1695, size: 256, offset: 1408)
!1695 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1620, file: !1621, line: 260, size: 256, elements: !1696)
!1696 = !{!1697, !1703}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1695, file: !1621, line: 261, baseType: !1698, size: 256)
!1698 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1621, line: 134, size: 256, elements: !1699)
!1699 = !{!1700, !1701}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1698, file: !1621, line: 135, baseType: !432, size: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1698, file: !1621, line: 136, baseType: !1702, size: 256)
!1702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !432, size: 256, elements: !930)
!1703 = !DIDerivedType(tag: DW_TAG_member, scope: !1695, file: !1621, line: 262, baseType: !1704, size: 256)
!1704 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1695, file: !1621, line: 262, size: 256, elements: !1705)
!1705 = !{!1706, !1707}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1704, file: !1621, line: 264, baseType: !467, size: 128)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1704, file: !1621, line: 265, baseType: !1708, size: 128, offset: 128)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1709, line: 22, size: 128, elements: !1710)
!1709 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1710 = !{!1711, !1714}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1708, file: !1709, line: 23, baseType: !1712, size: 64)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1709, line: 23, flags: DIFlagFwdDecl)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1708, file: !1709, line: 24, baseType: !375, size: 64, offset: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1620, file: !1621, line: 280, baseType: !1716, size: 64, offset: 1664)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1621, line: 176, size: 192, elements: !1718)
!1718 = !{!1719, !1728, !1729}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1717, file: !1621, line: 177, baseType: !1720, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1621, line: 171, baseType: !1721)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{!93, !1619, !1724, !1726, !1619}
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1675)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1698)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1717, file: !1621, line: 178, baseType: !1619, size: 64, offset: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1717, file: !1621, line: 179, baseType: !1674, size: 64, offset: 128)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1594, file: !1595, line: 130, baseType: !1619, size: 64, offset: 832)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1594, file: !1595, line: 131, baseType: !1619, size: 64, offset: 896)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1594, file: !1595, line: 132, baseType: !1619, size: 64, offset: 960)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1594, file: !1595, line: 135, baseType: !432, size: 64, offset: 1024)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1594, file: !1595, line: 137, baseType: !1735, size: 64, offset: 1088)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1737, line: 14, size: 1088, elements: !1738)
!1737 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1738 = !{!1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1736, file: !1737, line: 15, baseType: !912, size: 32)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1736, file: !1737, line: 17, baseType: !1348, size: 320, offset: 64)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1736, file: !1737, line: 19, baseType: !375, size: 64, offset: 384)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1736, file: !1737, line: 20, baseType: !860, size: 64, offset: 448)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1736, file: !1737, line: 23, baseType: !925, size: 128, offset: 512)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1736, file: !1737, line: 24, baseType: !491, size: 32, offset: 640)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1736, file: !1737, line: 29, baseType: !860, size: 64, offset: 704)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1736, file: !1737, line: 36, baseType: !1747, size: 320, offset: 768)
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1748, line: 15, size: 320, elements: !1749)
!1748 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1749 = !{!1750, !1751, !1752, !1753, !1754, !1755, !1756}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1747, file: !1748, line: 16, baseType: !874, size: 32)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1747, file: !1748, line: 18, baseType: !93, size: 32, offset: 32)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1747, file: !1748, line: 19, baseType: !93, size: 32, offset: 64)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1747, file: !1748, line: 20, baseType: !93, size: 32, offset: 96)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1747, file: !1748, line: 21, baseType: !93, size: 32, offset: 128)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1747, file: !1748, line: 22, baseType: !375, size: 64, offset: 192)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1747, file: !1748, line: 23, baseType: !375, size: 64, offset: 256)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1594, file: !1595, line: 138, baseType: !1415, size: 64, offset: 1152)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1594, file: !1595, line: 139, baseType: !1759, size: 64, offset: 1216)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1761, line: 16, flags: DIFlagFwdDecl)
!1761 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1594, file: !1595, line: 140, baseType: !1763, size: 64, offset: 1280)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1595, line: 25, size: 64, elements: !1765)
!1765 = !{!1766, !1767, !1768}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1764, file: !1595, line: 26, baseType: !597, size: 32)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1764, file: !1595, line: 27, baseType: !93, size: 32, offset: 32)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1764, file: !1595, line: 28, baseType: !1769, offset: 64)
!1769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !500, elements: !1444)
!1770 = !DIDerivedType(tag: DW_TAG_member, scope: !1594, file: !1595, line: 142, baseType: !1771, size: 128, offset: 1344)
!1771 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1594, file: !1595, line: 142, size: 128, elements: !1772)
!1772 = !{!1773, !1774}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1771, file: !1595, line: 143, baseType: !93, size: 32)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1771, file: !1595, line: 144, baseType: !847, size: 128, align: 64)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !968, file: !969, line: 1067, baseType: !1592, size: 64, offset: 14528)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !968, file: !969, line: 1070, baseType: !1592, size: 64, offset: 14592)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !968, file: !969, line: 1074, baseType: !1619, size: 64, offset: 14656)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !968, file: !969, line: 1084, baseType: !1779, size: 128, offset: 14720)
!1779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !386)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !968, file: !969, line: 1086, baseType: !1781, size: 64, offset: 14848)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !969, line: 55, flags: DIFlagFwdDecl)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !968, file: !969, line: 1089, baseType: !1784, size: 64, offset: 14912)
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1785, line: 12, size: 64, elements: !1786)
!1785 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1786 = !{!1787}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1784, file: !1785, line: 13, baseType: !1788, size: 64)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1785, line: 8, flags: DIFlagFwdDecl)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !968, file: !969, line: 1090, baseType: !1791, size: 128, offset: 14976)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1792, line: 13, size: 128, elements: !1793)
!1792 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1793 = !{!1794}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1791, file: !1792, line: 14, baseType: !467, size: 128)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !968, file: !969, line: 1097, baseType: !1796, size: 64, offset: 15104)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !969, line: 50, flags: DIFlagFwdDecl)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !968, file: !969, line: 1100, baseType: !1799, size: 64, offset: 15168)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !969, line: 1100, flags: DIFlagFwdDecl)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !968, file: !969, line: 1103, baseType: !1802, size: 64, offset: 15232)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !969, line: 53, flags: DIFlagFwdDecl)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !968, file: !969, line: 1107, baseType: !1805, size: 64, offset: 15296)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1807, line: 31, size: 576, elements: !1808)
!1807 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!1808 = !{!1809, !1810, !1841, !1844, !1847, !1848, !1851, !1854, !1855}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1806, file: !1807, line: 32, baseType: !912, size: 32)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !1806, file: !1807, line: 33, baseType: !1811, size: 64, offset: 64)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !1813, line: 24, size: 3456, elements: !1814)
!1813 = !DIFile(filename: "./include/linux/utsname.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d7c7738a60e085c4dfa8b09989fd6dce")
!1814 = !{!1815, !1828, !1829, !1830}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1812, file: !1813, line: 25, baseType: !1816, size: 3120)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "new_utsname", file: !1817, line: 25, size: 3120, elements: !1818)
!1817 = !DIFile(filename: "./include/uapi/linux/utsname.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ce568c2f88d7dce3b32bd7d3c8b00b87")
!1818 = !{!1819, !1823, !1824, !1825, !1826, !1827}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "sysname", scope: !1816, file: !1817, line: 26, baseType: !1820, size: 520)
!1820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 520, elements: !1821)
!1821 = !{!1822}
!1822 = !DISubrange(count: 65)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "nodename", scope: !1816, file: !1817, line: 27, baseType: !1820, size: 520, offset: 520)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1816, file: !1817, line: 28, baseType: !1820, size: 520, offset: 1040)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1816, file: !1817, line: 29, baseType: !1820, size: 520, offset: 1560)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1816, file: !1817, line: 30, baseType: !1820, size: 520, offset: 2080)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "domainname", scope: !1816, file: !1817, line: 31, baseType: !1820, size: 520, offset: 2600)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1812, file: !1813, line: 26, baseType: !1415, size: 64, offset: 3136)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1812, file: !1813, line: 27, baseType: !1759, size: 64, offset: 3200)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1812, file: !1813, line: 28, baseType: !1831, size: 192, offset: 3264)
!1831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1832, line: 9, size: 192, elements: !1833)
!1832 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!1833 = !{!1834, !1835, !1839, !1840}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1831, file: !1832, line: 10, baseType: !860, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1831, file: !1832, line: 11, baseType: !1836, size: 64, offset: 64)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1838)
!1838 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1832, line: 7, flags: DIFlagFwdDecl)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1831, file: !1832, line: 12, baseType: !13, size: 32, offset: 128)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1831, file: !1832, line: 13, baseType: !912, size: 32, offset: 160)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !1806, file: !1807, line: 34, baseType: !1842, size: 64, offset: 128)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !1807, line: 10, flags: DIFlagFwdDecl)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !1806, file: !1807, line: 35, baseType: !1845, size: 64, offset: 192)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !1807, line: 8, flags: DIFlagFwdDecl)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !1806, file: !1807, line: 36, baseType: !947, size: 64, offset: 256)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !1806, file: !1807, line: 37, baseType: !1849, size: 64, offset: 320)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1621, line: 34, flags: DIFlagFwdDecl)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !1806, file: !1807, line: 38, baseType: !1852, size: 64, offset: 384)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !1807, line: 38, flags: DIFlagFwdDecl)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !1806, file: !1807, line: 39, baseType: !1852, size: 64, offset: 448)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !1806, file: !1807, line: 40, baseType: !1856, size: 64, offset: 512)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !1807, line: 12, flags: DIFlagFwdDecl)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !968, file: !969, line: 1110, baseType: !1859, size: 64, offset: 15360)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1861, line: 93, size: 8768, elements: !1862)
!1861 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!1862 = !{!1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1912, !1921, !1922, !1924, !1925, !1926, !1929, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1967, !1968, !1975, !1985, !1988, !1989, !1992, !1993, !1994, !1995, !1996, !1997}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1860, file: !1861, line: 94, baseType: !912, size: 32)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1860, file: !1861, line: 95, baseType: !597, size: 32, offset: 32)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1860, file: !1861, line: 96, baseType: !93, size: 32, offset: 64)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !1860, file: !1861, line: 97, baseType: !93, size: 32, offset: 96)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1860, file: !1861, line: 98, baseType: !467, size: 128, offset: 128)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1860, file: !1861, line: 100, baseType: !934, size: 192, offset: 256)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1860, file: !1861, line: 103, baseType: !967, size: 64, offset: 448)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1860, file: !1861, line: 106, baseType: !1871, size: 192, offset: 512)
!1871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1761, line: 32, size: 192, elements: !1872)
!1872 = !{!1873, !1874}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1871, file: !1761, line: 33, baseType: !467, size: 128)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1871, file: !1761, line: 34, baseType: !1875, size: 64, offset: 128)
!1875 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1876, line: 25, baseType: !1877)
!1876 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!1877 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1876, line: 23, size: 64, elements: !1878)
!1878 = !{!1879}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1877, file: !1876, line: 24, baseType: !374, size: 64)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1860, file: !1861, line: 109, baseType: !921, size: 64, offset: 704)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1860, file: !1861, line: 112, baseType: !93, size: 32, offset: 768)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1860, file: !1861, line: 114, baseType: !93, size: 32, offset: 800)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !1860, file: !1861, line: 115, baseType: !967, size: 64, offset: 832)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1860, file: !1861, line: 118, baseType: !93, size: 32, offset: 896)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1860, file: !1861, line: 119, baseType: !13, size: 32, offset: 928)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1860, file: !1861, line: 121, baseType: !1887, size: 64, offset: 960)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !1861, line: 80, size: 448, elements: !1889)
!1889 = !{!1890, !1891, !1897}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1888, file: !1861, line: 81, baseType: !597, size: 32)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1888, file: !1861, line: 82, baseType: !1892, size: 128, offset: 64)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !1861, line: 75, size: 128, elements: !1893)
!1893 = !{!1894, !1895}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1892, file: !1861, line: 76, baseType: !967, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1892, file: !1861, line: 77, baseType: !1896, size: 64, offset: 64)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1888, file: !1861, line: 83, baseType: !1544, size: 256, offset: 192)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1860, file: !1861, line: 132, baseType: !13, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1860, file: !1861, line: 133, baseType: !13, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !1860, file: !1861, line: 138, baseType: !13, size: 32, offset: 1056)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1860, file: !1861, line: 139, baseType: !467, size: 128, offset: 1088)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1860, file: !1861, line: 142, baseType: !1086, size: 512, offset: 1216)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1860, file: !1861, line: 143, baseType: !1094, size: 64, offset: 1728)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1860, file: !1861, line: 150, baseType: !1905, size: 256, offset: 1792)
!1905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1906, size: 256, elements: !1910)
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1861, line: 38, size: 128, elements: !1907)
!1907 = !{!1908, !1909}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1906, file: !1861, line: 39, baseType: !556, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1906, file: !1861, line: 40, baseType: !556, size: 64, offset: 64)
!1910 = !{!1911}
!1911 = !DISubrange(count: 2)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1860, file: !1861, line: 156, baseType: !1913, size: 192, offset: 2048)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1861, line: 66, size: 192, elements: !1914)
!1914 = !{!1915}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1913, file: !1861, line: 67, baseType: !1916, size: 192)
!1916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1861, line: 47, size: 192, elements: !1917)
!1917 = !{!1918, !1919, !1920}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1916, file: !1861, line: 48, baseType: !862, size: 64)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1916, file: !1861, line: 49, baseType: !862, size: 64, offset: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1916, file: !1861, line: 50, baseType: !862, size: 64, offset: 128)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1860, file: !1861, line: 160, baseType: !1574, size: 640, offset: 2240)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1860, file: !1861, line: 163, baseType: !1923, size: 256, offset: 2880)
!1923 = !DICompositeType(tag: DW_TAG_array_type, baseType: !908, size: 256, elements: !930)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1860, file: !1861, line: 169, baseType: !908, size: 64, offset: 3136)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1860, file: !1861, line: 172, baseType: !93, size: 32, offset: 3200)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1860, file: !1861, line: 174, baseType: !1927, size: 64, offset: 3264)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1861, line: 174, flags: DIFlagFwdDecl)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1860, file: !1861, line: 185, baseType: !1930, size: 64, offset: 3328)
!1930 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !527, line: 860, baseType: !1931)
!1931 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !527, line: 853, size: 64, elements: !1932)
!1932 = !{!1933, !1934}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1931, file: !527, line: 858, baseType: !526, size: 32)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1931, file: !527, line: 859, baseType: !577, size: 32, offset: 32)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1860, file: !1861, line: 186, baseType: !556, size: 64, offset: 3392)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1860, file: !1861, line: 186, baseType: !556, size: 64, offset: 3456)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1860, file: !1861, line: 186, baseType: !556, size: 64, offset: 3520)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1860, file: !1861, line: 186, baseType: !556, size: 64, offset: 3584)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1860, file: !1861, line: 187, baseType: !556, size: 64, offset: 3648)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1860, file: !1861, line: 188, baseType: !556, size: 64, offset: 3712)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1860, file: !1861, line: 189, baseType: !1562, size: 192, offset: 3776)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1860, file: !1861, line: 190, baseType: !375, size: 64, offset: 3968)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1860, file: !1861, line: 190, baseType: !375, size: 64, offset: 4032)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1860, file: !1861, line: 190, baseType: !375, size: 64, offset: 4096)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1860, file: !1861, line: 190, baseType: !375, size: 64, offset: 4160)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1860, file: !1861, line: 191, baseType: !375, size: 64, offset: 4224)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1860, file: !1861, line: 191, baseType: !375, size: 64, offset: 4288)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1860, file: !1861, line: 191, baseType: !375, size: 64, offset: 4352)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1860, file: !1861, line: 191, baseType: !375, size: 64, offset: 4416)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1860, file: !1861, line: 192, baseType: !375, size: 64, offset: 4480)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1860, file: !1861, line: 192, baseType: !375, size: 64, offset: 4544)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1860, file: !1861, line: 192, baseType: !375, size: 64, offset: 4608)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1860, file: !1861, line: 192, baseType: !375, size: 64, offset: 4672)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1860, file: !1861, line: 193, baseType: !375, size: 64, offset: 4736)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1860, file: !1861, line: 193, baseType: !375, size: 64, offset: 4800)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1860, file: !1861, line: 194, baseType: !1957, size: 448, offset: 4864)
!1957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1958, line: 12, size: 448, elements: !1959)
!1958 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!1959 = !{!1960, !1961, !1962, !1963, !1964, !1965, !1966}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !1957, file: !1958, line: 15, baseType: !556, size: 64)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !1957, file: !1958, line: 17, baseType: !556, size: 64, offset: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !1957, file: !1958, line: 19, baseType: !556, size: 64, offset: 128)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !1957, file: !1958, line: 21, baseType: !556, size: 64, offset: 192)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !1957, file: !1958, line: 29, baseType: !556, size: 64, offset: 256)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !1957, file: !1958, line: 35, baseType: !556, size: 64, offset: 320)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !1957, file: !1958, line: 44, baseType: !556, size: 64, offset: 384)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1860, file: !1861, line: 202, baseType: !400, size: 64, offset: 5312)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1860, file: !1861, line: 213, baseType: !1969, size: 2048, offset: 5376)
!1969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1970, size: 2048, elements: !386)
!1970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1971, line: 43, size: 128, elements: !1972)
!1971 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!1972 = !{!1973, !1974}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1970, file: !1971, line: 44, baseType: !443, size: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1970, file: !1971, line: 45, baseType: !443, size: 64, offset: 64)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !1860, file: !1861, line: 216, baseType: !1976, size: 448, offset: 7424)
!1976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !1861, line: 30, size: 448, elements: !1977)
!1977 = !{!1978, !1979, !1980, !1981, !1982, !1983, !1984}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !1976, file: !1861, line: 31, baseType: !93, size: 32)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !1976, file: !1861, line: 32, baseType: !446, size: 64, offset: 64)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !1976, file: !1861, line: 33, baseType: !375, size: 64, offset: 128)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !1976, file: !1861, line: 34, baseType: !556, size: 64, offset: 192)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !1976, file: !1861, line: 34, baseType: !556, size: 64, offset: 256)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !1976, file: !1861, line: 35, baseType: !375, size: 64, offset: 320)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !1976, file: !1861, line: 35, baseType: !375, size: 64, offset: 384)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1860, file: !1861, line: 219, baseType: !1986, size: 64, offset: 7872)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !1861, line: 219, flags: DIFlagFwdDecl)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !1860, file: !1861, line: 222, baseType: !13, size: 32, offset: 7936)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !1860, file: !1861, line: 223, baseType: !1990, size: 64, offset: 8000)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !1861, line: 223, flags: DIFlagFwdDecl)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1860, file: !1861, line: 230, baseType: !1683, size: 8, offset: 8064)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1860, file: !1861, line: 231, baseType: !1408, size: 16, offset: 8080)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1860, file: !1861, line: 232, baseType: !1408, size: 16, offset: 8096)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1860, file: !1861, line: 234, baseType: !1255, size: 64, offset: 8128)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1860, file: !1861, line: 237, baseType: !869, size: 256, offset: 8192)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !1860, file: !1861, line: 243, baseType: !1310, size: 320, offset: 8448)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !968, file: !969, line: 1111, baseType: !1999, size: 64, offset: 15424)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1861, line: 20, size: 16640, elements: !2001)
!2001 = !{!2002, !2003, !2004, !2005}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2000, file: !1861, line: 21, baseType: !577, size: 32)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2000, file: !1861, line: 22, baseType: !912, size: 32, offset: 32)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2000, file: !1861, line: 23, baseType: !934, size: 192, offset: 64)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2000, file: !1861, line: 24, baseType: !2006, size: 16384, offset: 256)
!2006 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2007, size: 16384, elements: !766)
!2007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1761, line: 51, size: 256, elements: !2008)
!2008 = !{!2009}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2007, file: !1761, line: 52, baseType: !2010, size: 256)
!2010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1761, line: 37, size: 256, elements: !2011)
!2011 = !{!2012, !2019, !2020, !2026}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2010, file: !1761, line: 39, baseType: !2013, size: 64)
!2013 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2014, line: 83, baseType: !2015)
!2014 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2014, line: 82, baseType: !2017)
!2017 = !DISubroutineType(types: !2018)
!2018 = !{null, !93}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2010, file: !1761, line: 40, baseType: !375, size: 64, offset: 64)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2010, file: !1761, line: 46, baseType: !2021, size: 64, offset: 128)
!2021 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2014, line: 86, baseType: !2022)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2014, line: 85, baseType: !2024)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{null}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2010, file: !1761, line: 48, baseType: !1875, size: 64, offset: 192)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !968, file: !969, line: 1112, baseType: !1875, size: 64, offset: 15488)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !968, file: !969, line: 1113, baseType: !1875, size: 64, offset: 15552)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !968, file: !969, line: 1115, baseType: !1875, size: 64, offset: 15616)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !968, file: !969, line: 1116, baseType: !1871, size: 192, offset: 15680)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !968, file: !969, line: 1117, baseType: !375, size: 64, offset: 15872)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !968, file: !969, line: 1118, baseType: !439, size: 64, offset: 15936)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !968, file: !969, line: 1119, baseType: !13, size: 32, offset: 16000)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !968, file: !969, line: 1121, baseType: !850, size: 64, offset: 16064)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !968, file: !969, line: 1125, baseType: !2036, size: 64, offset: 16128)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !969, line: 43, flags: DIFlagFwdDecl)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !968, file: !969, line: 1127, baseType: !491, size: 32, offset: 16192)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !968, file: !969, line: 1128, baseType: !13, size: 32, offset: 16224)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !968, file: !969, line: 1130, baseType: !2041, size: 128, offset: 16256)
!2041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2042, line: 37, size: 128, elements: !2043)
!2042 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2043 = !{!2044, !2045, !2046}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2041, file: !2042, line: 38, baseType: !93, size: 32)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2041, file: !2042, line: 39, baseType: !597, size: 32, offset: 32)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2041, file: !2042, line: 40, baseType: !2047, size: 64, offset: 64)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2042, line: 24, flags: DIFlagFwdDecl)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !968, file: !969, line: 1131, baseType: !2050, size: 256, offset: 16384)
!2050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2051, line: 12, size: 256, elements: !2052)
!2051 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2052 = !{!2053, !2054, !2055, !2056}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2050, file: !2051, line: 13, baseType: !659, size: 64)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2050, file: !2051, line: 14, baseType: !375, size: 64, offset: 64)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2050, file: !2051, line: 15, baseType: !375, size: 64, offset: 128)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2050, file: !2051, line: 16, baseType: !1683, size: 8, offset: 192)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !968, file: !969, line: 1134, baseType: !556, size: 64, offset: 16640)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !968, file: !969, line: 1135, baseType: !556, size: 64, offset: 16704)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !968, file: !969, line: 1138, baseType: !577, size: 32, offset: 16768)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !968, file: !969, line: 1141, baseType: !874, size: 32, offset: 16800)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !968, file: !969, line: 1143, baseType: !2062, size: 64, offset: 16832)
!2062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !969, line: 735, size: 64, elements: !2063)
!2063 = !{!2064}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2062, file: !969, line: 736, baseType: !2065, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !968, file: !969, line: 1147, baseType: !1145, size: 128, offset: 16896)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !968, file: !969, line: 1149, baseType: !967, size: 64, offset: 17024)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !968, file: !969, line: 1151, baseType: !2069, size: 64, offset: 17088)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !969, line: 1151, flags: DIFlagFwdDecl)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !968, file: !969, line: 1188, baseType: !432, size: 64, offset: 17152)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !968, file: !969, line: 1191, baseType: !2073, size: 64, offset: 17216)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !969, line: 44, flags: DIFlagFwdDecl)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !968, file: !969, line: 1194, baseType: !2076, size: 64, offset: 17280)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !969, line: 45, flags: DIFlagFwdDecl)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !968, file: !969, line: 1197, baseType: !2079, size: 64, offset: 17344)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !969, line: 61, flags: DIFlagFwdDecl)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !968, file: !969, line: 1199, baseType: !2082, size: 64, offset: 17408)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2084, line: 99, size: 128, elements: !2085)
!2084 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2085 = !{!2086, !2087, !2088}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2083, file: !2084, line: 100, baseType: !860, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2083, file: !2084, line: 101, baseType: !597, size: 32, offset: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2083, file: !2084, line: 103, baseType: !392, size: 16, offset: 96)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !968, file: !969, line: 1202, baseType: !2090, size: 64, offset: 17472)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !969, line: 48, flags: DIFlagFwdDecl)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !968, file: !969, line: 1205, baseType: !375, size: 64, offset: 17536)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !968, file: !969, line: 1206, baseType: !2094, size: 64, offset: 17600)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1761, line: 14, baseType: !2096)
!2096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1761, line: 12, size: 384, elements: !2097)
!2097 = !{!2098}
!2098 = !DIDerivedType(tag: DW_TAG_member, scope: !2096, file: !1761, line: 13, baseType: !2099, size: 384)
!2099 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2096, file: !1761, line: 13, size: 384, elements: !2100)
!2100 = !{!2101, !2102, !2103, !2104}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2099, file: !1761, line: 13, baseType: !93, size: 32)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2099, file: !1761, line: 13, baseType: !93, size: 32, offset: 32)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2099, file: !1761, line: 13, baseType: !93, size: 32, offset: 64)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2099, file: !1761, line: 13, baseType: !2105, size: 256, offset: 128)
!2105 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2106, line: 37, size: 256, elements: !2107)
!2106 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2107 = !{!2108, !2113, !2126, !2132, !2141, !2168, !2173}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2105, file: !2106, line: 42, baseType: !2109, size: 64)
!2109 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2105, file: !2106, line: 39, size: 64, elements: !2110)
!2110 = !{!2111, !2112}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2109, file: !2106, line: 40, baseType: !1527, size: 32)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2109, file: !2106, line: 41, baseType: !497, size: 32, offset: 32)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2105, file: !2106, line: 50, baseType: !2114, size: 192)
!2114 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2105, file: !2106, line: 45, size: 192, elements: !2115)
!2115 = !{!2116, !2118, !2119, !2125}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2114, file: !2106, line: 46, baseType: !2117, size: 32)
!2117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !442, line: 95, baseType: !93)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2114, file: !2106, line: 47, baseType: !93, size: 32, offset: 32)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2114, file: !2106, line: 48, baseType: !2120, size: 64, offset: 64)
!2120 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2106, line: 11, baseType: !2121)
!2121 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2106, line: 8, size: 64, elements: !2122)
!2122 = !{!2123, !2124}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2121, file: !2106, line: 9, baseType: !93, size: 32)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2121, file: !2106, line: 10, baseType: !432, size: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2114, file: !2106, line: 49, baseType: !93, size: 32, offset: 128)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2105, file: !2106, line: 57, baseType: !2127, size: 128)
!2127 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2105, file: !2106, line: 53, size: 128, elements: !2128)
!2128 = !{!2129, !2130, !2131}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2127, file: !2106, line: 54, baseType: !1527, size: 32)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2127, file: !2106, line: 55, baseType: !497, size: 32, offset: 32)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2127, file: !2106, line: 56, baseType: !2120, size: 64, offset: 64)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2105, file: !2106, line: 66, baseType: !2133, size: 256)
!2133 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2105, file: !2106, line: 60, size: 256, elements: !2134)
!2134 = !{!2135, !2136, !2137, !2138, !2140}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2133, file: !2106, line: 61, baseType: !1527, size: 32)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2133, file: !2106, line: 62, baseType: !497, size: 32, offset: 32)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2133, file: !2106, line: 63, baseType: !93, size: 32, offset: 64)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2133, file: !2106, line: 64, baseType: !2139, size: 64, offset: 128)
!2139 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !442, line: 94, baseType: !795)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2133, file: !2106, line: 65, baseType: !2139, size: 64, offset: 192)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2105, file: !2106, line: 105, baseType: !2142, size: 256)
!2142 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2105, file: !2106, line: 69, size: 256, elements: !2143)
!2143 = !{!2144, !2145}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2142, file: !2106, line: 70, baseType: !432, size: 64)
!2145 = !DIDerivedType(tag: DW_TAG_member, scope: !2142, file: !2106, line: 79, baseType: !2146, size: 192, offset: 64)
!2146 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2142, file: !2106, line: 79, size: 192, elements: !2147)
!2147 = !{!2148, !2149, !2150, !2157, !2162}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2146, file: !2106, line: 81, baseType: !93, size: 32)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2146, file: !2106, line: 86, baseType: !1408, size: 16)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2146, file: !2106, line: 92, baseType: !2151, size: 192)
!2151 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2146, file: !2106, line: 88, size: 192, elements: !2152)
!2152 = !{!2153, !2155, !2156}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2151, file: !2106, line: 89, baseType: !2154, size: 64)
!2154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !1129)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2151, file: !2106, line: 90, baseType: !432, size: 64, offset: 64)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2151, file: !2106, line: 91, baseType: !432, size: 64, offset: 128)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2146, file: !2106, line: 97, baseType: !2158, size: 96)
!2158 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2146, file: !2106, line: 94, size: 96, elements: !2159)
!2159 = !{!2160, !2161}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2158, file: !2106, line: 95, baseType: !2154, size: 64)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2158, file: !2106, line: 96, baseType: !396, size: 32, offset: 64)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2146, file: !2106, line: 103, baseType: !2163, size: 128)
!2163 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2146, file: !2106, line: 99, size: 128, elements: !2164)
!2164 = !{!2165, !2166, !2167}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2163, file: !2106, line: 100, baseType: !375, size: 64)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2163, file: !2106, line: 101, baseType: !396, size: 32, offset: 64)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2163, file: !2106, line: 102, baseType: !396, size: 32, offset: 96)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2105, file: !2106, line: 111, baseType: !2169, size: 128)
!2169 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2105, file: !2106, line: 108, size: 128, elements: !2170)
!2170 = !{!2171, !2172}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2169, file: !2106, line: 109, baseType: !446, size: 64)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2169, file: !2106, line: 110, baseType: !93, size: 32, offset: 64)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2105, file: !2106, line: 118, baseType: !2174, size: 128)
!2174 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2105, file: !2106, line: 114, size: 128, elements: !2175)
!2175 = !{!2176, !2177, !2178}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2174, file: !2106, line: 115, baseType: !432, size: 64)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2174, file: !2106, line: 116, baseType: !93, size: 32, offset: 64)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2174, file: !2106, line: 117, baseType: !13, size: 32, offset: 96)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !968, file: !969, line: 1208, baseType: !1957, size: 448, offset: 17664)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !968, file: !969, line: 1215, baseType: !556, size: 64, offset: 18112)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !968, file: !969, line: 1217, baseType: !556, size: 64, offset: 18176)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !968, file: !969, line: 1219, baseType: !556, size: 64, offset: 18240)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !968, file: !969, line: 1223, baseType: !2184, size: 64, offset: 18304)
!2184 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !18, line: 99, baseType: !2185)
!2185 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 99, size: 64, elements: !2186)
!2186 = !{!2187}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2185, file: !18, line: 99, baseType: !374, size: 64)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !968, file: !969, line: 1225, baseType: !526, size: 32, offset: 18368)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !968, file: !969, line: 1226, baseType: !93, size: 32, offset: 18400)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !968, file: !969, line: 1227, baseType: !93, size: 32, offset: 18432)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !968, file: !969, line: 1231, baseType: !2192, size: 64, offset: 18496)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !969, line: 1231, flags: DIFlagFwdDecl)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !968, file: !969, line: 1233, baseType: !467, size: 128, offset: 18560)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !968, file: !969, line: 1240, baseType: !2196, size: 64, offset: 18688)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !969, line: 62, flags: DIFlagFwdDecl)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !968, file: !969, line: 1242, baseType: !2199, size: 64, offset: 18752)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !2201, line: 392, size: 96, elements: !2202)
!2201 = !DIFile(filename: "./include/linux/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb3431a0ca9e11a8015b961c002b640")
!2202 = !{!2203, !2209, !2211}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2200, file: !2201, line: 393, baseType: !2204, size: 32)
!2204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list", file: !2201, line: 388, size: 32, elements: !2205)
!2205 = !{!2206}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2204, file: !2201, line: 389, baseType: !2207, size: 32)
!2207 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_uptr_t", file: !2208, line: 46, baseType: !428)
!2208 = !DIFile(filename: "./include/asm-generic/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "789dd20e6944b4211a8be38fb9d0b245")
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "futex_offset", scope: !2200, file: !2201, line: 394, baseType: !2210, size: 32, offset: 32)
!2210 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_long_t", file: !2208, line: 42, baseType: !1356)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "list_op_pending", scope: !2200, file: !2201, line: 395, baseType: !2207, size: 32, offset: 64)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !968, file: !969, line: 1244, baseType: !467, size: 128, offset: 18816)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !968, file: !969, line: 1245, baseType: !2214, size: 64, offset: 18944)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !969, line: 51, flags: DIFlagFwdDecl)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !968, file: !969, line: 1246, baseType: !869, size: 256, offset: 19008)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !968, file: !969, line: 1247, baseType: !13, size: 32, offset: 19264)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !968, file: !969, line: 1250, baseType: !2219, size: 64, offset: 19328)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !969, line: 57, flags: DIFlagFwdDecl)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !968, file: !969, line: 1251, baseType: !869, size: 256, offset: 19392)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !968, file: !969, line: 1252, baseType: !467, size: 128, offset: 19648)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !968, file: !969, line: 1259, baseType: !2224, size: 64, offset: 19776)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2225 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !320, line: 717, flags: DIFlagFwdDecl)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !968, file: !969, line: 1260, baseType: !1408, size: 16, offset: 19840)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !968, file: !969, line: 1261, baseType: !1408, size: 16, offset: 19856)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !968, file: !969, line: 1314, baseType: !2229, size: 64, offset: 19904)
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2231, line: 62, size: 256, align: 256, elements: !2232)
!2231 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2232 = !{!2233, !2234, !2235, !2236, !2237, !2238, !2239}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2230, file: !2231, line: 75, baseType: !396, size: 32)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2230, file: !2231, line: 90, baseType: !396, size: 32, offset: 32)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2230, file: !2231, line: 112, baseType: !399, size: 64, offset: 64)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2230, file: !2231, line: 132, baseType: !396, size: 32, offset: 128)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2230, file: !2231, line: 140, baseType: !396, size: 32, offset: 160)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2230, file: !2231, line: 149, baseType: !396, size: 32, offset: 192)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2230, file: !2231, line: 154, baseType: !2240, offset: 224)
!2240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !1444)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !968, file: !969, line: 1315, baseType: !428, size: 32, offset: 19968)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !968, file: !969, line: 1316, baseType: !428, size: 32, offset: 20000)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !968, file: !969, line: 1321, baseType: !375, size: 64, offset: 20032)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !968, file: !969, line: 1325, baseType: !93, size: 32, offset: 20096)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !968, file: !969, line: 1326, baseType: !93, size: 32, offset: 20128)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !968, file: !969, line: 1327, baseType: !93, size: 32, offset: 20160)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !968, file: !969, line: 1328, baseType: !93, size: 32, offset: 20192)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !968, file: !969, line: 1329, baseType: !847, size: 128, align: 64, offset: 20224)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !968, file: !969, line: 1332, baseType: !2250, size: 128, offset: 20352)
!2250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2251, line: 51, size: 128, elements: !2252)
!2251 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2252 = !{!2253, !2258, !2259}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2250, file: !2251, line: 60, baseType: !2254, size: 64)
!2254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2255, line: 7, size: 64, elements: !2256)
!2255 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2256 = !{!2257}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2254, file: !2255, line: 12, baseType: !370, size: 64)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2250, file: !2251, line: 63, baseType: !1683, size: 8, offset: 64)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2250, file: !2251, line: 70, baseType: !1683, size: 8, offset: 72)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !968, file: !969, line: 1335, baseType: !2261, size: 64, offset: 20480)
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64)
!2262 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !969, line: 59, flags: DIFlagFwdDecl)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !968, file: !969, line: 1337, baseType: !2264, size: 128, offset: 20544)
!2264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2251, line: 39, size: 128, elements: !2265)
!2265 = !{!2266, !2267, !2268}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2264, file: !2251, line: 40, baseType: !453, size: 64)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2264, file: !2251, line: 42, baseType: !396, size: 32, offset: 64)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2264, file: !2251, line: 43, baseType: !396, size: 32, offset: 96)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !968, file: !969, line: 1340, baseType: !2270, size: 64, offset: 20672)
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2271 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !969, line: 69, flags: DIFlagFwdDecl)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !968, file: !969, line: 1351, baseType: !93, size: 32, offset: 20736)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !968, file: !969, line: 1352, baseType: !93, size: 32, offset: 20768)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !968, file: !969, line: 1354, baseType: !375, size: 64, offset: 20800)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !968, file: !969, line: 1364, baseType: !556, size: 64, offset: 20864)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !968, file: !969, line: 1365, baseType: !556, size: 64, offset: 20928)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !968, file: !969, line: 1412, baseType: !375, size: 64, offset: 20992)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !968, file: !969, line: 1453, baseType: !2279, size: 64, offset: 21056)
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2280 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !969, line: 1453, flags: DIFlagFwdDecl)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !968, file: !969, line: 1457, baseType: !2282, size: 64, offset: 21120)
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2283, size: 64)
!2283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !305, line: 61, size: 576, elements: !2284)
!2284 = !{!2285, !2286, !2305, !2308, !2309, !2342, !2352}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2283, file: !305, line: 62, baseType: !304, size: 32)
!2286 = !DIDerivedType(tag: DW_TAG_member, scope: !2283, file: !305, line: 64, baseType: !2287, size: 192, offset: 64)
!2287 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2283, file: !305, line: 64, size: 192, elements: !2288)
!2288 = !{!2289, !2300}
!2289 = !DIDerivedType(tag: DW_TAG_member, scope: !2287, file: !305, line: 65, baseType: !2290, size: 192)
!2290 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2287, file: !305, line: 65, size: 192, elements: !2291)
!2291 = !{!2292, !2299}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2290, file: !305, line: 66, baseType: !2293, size: 128)
!2293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2294, line: 50, size: 128, elements: !2295)
!2294 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2295 = !{!2296, !2297, !2298}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2293, file: !2294, line: 52, baseType: !375, size: 64)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2293, file: !2294, line: 54, baseType: !13, size: 32, offset: 64)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2293, file: !2294, line: 55, baseType: !13, size: 32, offset: 96)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2290, file: !305, line: 67, baseType: !375, size: 64, offset: 128)
!2300 = !DIDerivedType(tag: DW_TAG_member, scope: !2287, file: !305, line: 70, baseType: !2301, size: 192)
!2301 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2287, file: !305, line: 70, size: 192, elements: !2302)
!2302 = !{!2303, !2304}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2301, file: !305, line: 71, baseType: !847, size: 128, align: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2301, file: !305, line: 72, baseType: !375, size: 64, offset: 128)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2283, file: !305, line: 76, baseType: !2306, size: 64, offset: 256)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !305, line: 76, flags: DIFlagFwdDecl)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2283, file: !305, line: 77, baseType: !375, size: 64, offset: 320)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2283, file: !305, line: 79, baseType: !2310, size: 64, offset: 384)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2294, line: 25, size: 256, elements: !2312)
!2312 = !{!2313, !2319, !2323}
!2313 = !DIDerivedType(tag: DW_TAG_member, scope: !2311, file: !2294, line: 26, baseType: !2314, size: 128)
!2314 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2311, file: !2294, line: 26, size: 128, elements: !2315)
!2315 = !{!2316, !2318}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2314, file: !2294, line: 27, baseType: !2317, size: 128)
!2317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !605, size: 128, elements: !386)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2314, file: !2294, line: 28, baseType: !2317, size: 128)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2311, file: !2294, line: 31, baseType: !2320, size: 64, offset: 128)
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2322)
!2322 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2294, line: 23, flags: DIFlagFwdDecl)
!2323 = !DIDerivedType(tag: DW_TAG_member, scope: !2311, file: !2294, line: 33, baseType: !2324, size: 64, offset: 192)
!2324 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2311, file: !2294, line: 33, size: 64, elements: !2325)
!2325 = !{!2326, !2332, !2337}
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2324, file: !2294, line: 38, baseType: !2327, size: 64)
!2327 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2324, file: !2294, line: 34, size: 64, elements: !2328)
!2328 = !{!2329, !2330, !2331}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2327, file: !2294, line: 35, baseType: !1356, size: 32)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2327, file: !2294, line: 36, baseType: !605, size: 8, offset: 32)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2327, file: !2294, line: 37, baseType: !605, size: 8, offset: 40)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2324, file: !2294, line: 42, baseType: !2333, size: 16)
!2333 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2324, file: !2294, line: 39, size: 16, elements: !2334)
!2334 = !{!2335, !2336}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2333, file: !2294, line: 40, baseType: !605, size: 8)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2333, file: !2294, line: 41, baseType: !605, size: 8, offset: 8)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2324, file: !2294, line: 46, baseType: !2338, size: 16)
!2338 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2324, file: !2294, line: 43, size: 16, elements: !2339)
!2339 = !{!2340, !2341}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2338, file: !2294, line: 44, baseType: !605, size: 8)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2338, file: !2294, line: 45, baseType: !605, size: 8, offset: 8)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2283, file: !305, line: 81, baseType: !2343, size: 64, offset: 448)
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !305, line: 85, size: 384, elements: !2345)
!2345 = !{!2346, !2347, !2348, !2349, !2350, !2351}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2344, file: !305, line: 86, baseType: !2306, size: 64)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2344, file: !305, line: 87, baseType: !375, size: 64, offset: 64)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2344, file: !305, line: 88, baseType: !375, size: 64, offset: 128)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2344, file: !305, line: 89, baseType: !375, size: 64, offset: 192)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2344, file: !305, line: 90, baseType: !1683, size: 8, offset: 256)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2344, file: !305, line: 92, baseType: !2343, size: 64, offset: 320)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2283, file: !305, line: 82, baseType: !13, size: 32, offset: 512)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !968, file: !969, line: 1463, baseType: !2354, offset: 21184)
!2354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !969, line: 739, elements: !1276)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !968, file: !969, line: 1470, baseType: !847, size: 128, align: 64, offset: 21184)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !968, file: !969, line: 1471, baseType: !912, size: 32, offset: 21312)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !968, file: !969, line: 1472, baseType: !93, size: 32, offset: 21344)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !968, file: !969, line: 1474, baseType: !967, size: 64, offset: 21376)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !968, file: !969, line: 1475, baseType: !2360, size: 320, offset: 21440)
!2360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2361, line: 11, size: 320, elements: !2362)
!2361 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2362 = !{!2363, !2364, !2365, !2370}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2360, file: !2361, line: 16, baseType: !925, size: 128)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2360, file: !2361, line: 17, baseType: !375, size: 64, offset: 128)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2360, file: !2361, line: 18, baseType: !2366, size: 64, offset: 192)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = !DISubroutineType(types: !2368)
!2368 = !{null, !2369}
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2360, file: !2361, line: 19, baseType: !428, size: 32, offset: 256)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !968, file: !969, line: 1478, baseType: !2372, size: 64, offset: 21760)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2374, line: 49, size: 512, elements: !2375)
!2374 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!2375 = !{!2376, !2377, !2378, !2379, !2380, !2382, !2383, !2384, !2386}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2373, file: !2374, line: 50, baseType: !2372, size: 64)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2373, file: !2374, line: 51, baseType: !432, size: 64, offset: 64)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2373, file: !2374, line: 52, baseType: !375, size: 64, offset: 128)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2373, file: !2374, line: 53, baseType: !375, size: 64, offset: 192)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2373, file: !2374, line: 54, baseType: !2381, size: 64, offset: 256)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !2373, file: !2374, line: 56, baseType: !13, size: 32, offset: 320)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2373, file: !2374, line: 58, baseType: !13, size: 32, offset: 352)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2373, file: !2374, line: 59, baseType: !2385, size: 64, offset: 384)
!2385 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !440, line: 159, baseType: !556)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2373, file: !2374, line: 60, baseType: !1389, size: 64, offset: 448)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !968, file: !969, line: 1482, baseType: !912, size: 32, offset: 21824)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !968, file: !969, line: 1489, baseType: !432, size: 64, offset: 21888)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !968, file: !969, line: 1504, baseType: !432, size: 64, offset: 21952)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !968, file: !969, line: 1505, baseType: !399, size: 64, offset: 22016)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !968, file: !969, line: 1506, baseType: !556, size: 64, offset: 22080)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !968, file: !969, line: 1507, baseType: !399, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !968, file: !969, line: 1508, baseType: !399, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !968, file: !969, line: 1509, baseType: !399, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !968, file: !969, line: 1510, baseType: !847, size: 128, align: 64, offset: 22208)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !968, file: !969, line: 1511, baseType: !93, size: 32, offset: 22336)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !968, file: !969, line: 1515, baseType: !2398, size: 64, offset: 22400)
!2398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !842, line: 56, size: 64, elements: !2399)
!2399 = !{!2400}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2398, file: !842, line: 57, baseType: !845, size: 64)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !968, file: !969, line: 1518, baseType: !2398, size: 64, offset: 22464)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !968, file: !969, line: 1528, baseType: !847, size: 128, align: 64, offset: 22528)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !968, file: !969, line: 1552, baseType: !2404, size: 35328, offset: 23040)
!2404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2405, line: 430, size: 35328, elements: !2406)
!2405 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2406 = !{!2407, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2436, !2437, !2438, !2439, !2440, !2441, !2444, !2445, !2446, !2447}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2404, file: !2405, line: 432, baseType: !2408, size: 192)
!2408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2409, size: 192, elements: !762)
!2409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2410, line: 16, size: 64, elements: !2411)
!2410 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2411 = !{!2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2420, !2421, !2422, !2423, !2424}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2409, file: !2410, line: 17, baseType: !612, size: 16)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2409, file: !2410, line: 18, baseType: !612, size: 16, offset: 16)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2409, file: !2410, line: 19, baseType: !612, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2409, file: !2410, line: 19, baseType: !612, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2409, file: !2410, line: 19, baseType: !612, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2409, file: !2410, line: 19, baseType: !612, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2409, file: !2410, line: 19, baseType: !612, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2409, file: !2410, line: 20, baseType: !612, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2409, file: !2410, line: 20, baseType: !612, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2409, file: !2410, line: 20, baseType: !612, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2409, file: !2410, line: 20, baseType: !612, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2409, file: !2410, line: 20, baseType: !612, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2409, file: !2410, line: 20, baseType: !612, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2404, file: !2405, line: 436, baseType: !375, size: 64, offset: 192)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2404, file: !2405, line: 440, baseType: !392, size: 16, offset: 256)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2404, file: !2405, line: 441, baseType: !392, size: 16, offset: 272)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2404, file: !2405, line: 442, baseType: !392, size: 16, offset: 288)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2404, file: !2405, line: 443, baseType: !392, size: 16, offset: 304)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2404, file: !2405, line: 447, baseType: !375, size: 64, offset: 320)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2404, file: !2405, line: 448, baseType: !375, size: 64, offset: 384)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2404, file: !2405, line: 459, baseType: !2433, size: 256, offset: 448)
!2433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2434, size: 256, elements: !930)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2405, line: 428, flags: DIFlagFwdDecl)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2404, file: !2405, line: 461, baseType: !375, size: 64, offset: 704)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2404, file: !2405, line: 463, baseType: !375, size: 64, offset: 768)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2404, file: !2405, line: 465, baseType: !375, size: 64, offset: 832)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2404, file: !2405, line: 466, baseType: !375, size: 64, offset: 896)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2404, file: !2405, line: 467, baseType: !375, size: 64, offset: 960)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2404, file: !2405, line: 473, baseType: !2442, size: 64, offset: 1024)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2405, line: 10, flags: DIFlagFwdDecl)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2404, file: !2405, line: 480, baseType: !375, size: 64, offset: 1088)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2404, file: !2405, line: 482, baseType: !13, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2404, file: !2405, line: 491, baseType: !428, size: 32, offset: 1184)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2404, file: !2405, line: 501, baseType: !2448, size: 33792, offset: 1536)
!2448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2449, line: 448, size: 33792, elements: !2450)
!2449 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2450 = !{!2451, !2452, !2453, !2615, !2616, !2622, !2623}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2448, file: !2449, line: 461, baseType: !13, size: 32)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2448, file: !2449, line: 468, baseType: !375, size: 64, offset: 64)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2448, file: !2449, line: 476, baseType: !2454, size: 64, offset: 128)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2449, line: 356, size: 33280, align: 512, elements: !2456)
!2456 = !{!2457, !2458, !2459, !2460, !2461, !2462, !2463, !2464, !2465, !2466}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2455, file: !2449, line: 358, baseType: !13, size: 32)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2455, file: !2449, line: 361, baseType: !13, size: 32, offset: 32)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2455, file: !2449, line: 364, baseType: !556, size: 64, offset: 64)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2455, file: !2449, line: 367, baseType: !556, size: 64, offset: 128)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2455, file: !2449, line: 370, baseType: !556, size: 64, offset: 192)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2455, file: !2449, line: 373, baseType: !13, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2455, file: !2449, line: 376, baseType: !13, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2455, file: !2449, line: 391, baseType: !13, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2455, file: !2449, line: 394, baseType: !13, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2455, file: !2449, line: 397, baseType: !2467, size: 32768, offset: 512)
!2467 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2449, line: 348, size: 32768, elements: !2468)
!2468 = !{!2469, !2484, !2521, !2598, !2611}
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2467, file: !2449, line: 349, baseType: !2470, size: 896)
!2470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2449, line: 12, size: 896, elements: !2471)
!2471 = !{!2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479, !2483}
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2470, file: !2449, line: 13, baseType: !428, size: 32)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2470, file: !2449, line: 14, baseType: !428, size: 32, offset: 32)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2470, file: !2449, line: 15, baseType: !428, size: 32, offset: 64)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2470, file: !2449, line: 16, baseType: !428, size: 32, offset: 96)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2470, file: !2449, line: 17, baseType: !428, size: 32, offset: 128)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2470, file: !2449, line: 18, baseType: !428, size: 32, offset: 160)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2470, file: !2449, line: 19, baseType: !428, size: 32, offset: 192)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2470, file: !2449, line: 22, baseType: !2480, size: 640, offset: 224)
!2480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !428, size: 640, elements: !2481)
!2481 = !{!2482}
!2482 = !DISubrange(count: 20)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2470, file: !2449, line: 25, baseType: !428, size: 32, offset: 864)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2467, file: !2449, line: 350, baseType: !2485, size: 4096, align: 128)
!2485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2449, line: 34, size: 4096, align: 128, elements: !2486)
!2486 = !{!2487, !2488, !2489, !2490, !2491, !2506, !2507, !2508, !2510, !2512, !2516}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2485, file: !2449, line: 35, baseType: !612, size: 16)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2485, file: !2449, line: 36, baseType: !612, size: 16, offset: 16)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2485, file: !2449, line: 37, baseType: !612, size: 16, offset: 32)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2485, file: !2449, line: 38, baseType: !612, size: 16, offset: 48)
!2491 = !DIDerivedType(tag: DW_TAG_member, scope: !2485, file: !2449, line: 39, baseType: !2492, size: 128, offset: 64)
!2492 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2485, file: !2449, line: 39, size: 128, elements: !2493)
!2493 = !{!2494, !2499}
!2494 = !DIDerivedType(tag: DW_TAG_member, scope: !2492, file: !2449, line: 40, baseType: !2495, size: 128)
!2495 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2492, file: !2449, line: 40, size: 128, elements: !2496)
!2496 = !{!2497, !2498}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2495, file: !2449, line: 41, baseType: !556, size: 64)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2495, file: !2449, line: 42, baseType: !556, size: 64, offset: 64)
!2499 = !DIDerivedType(tag: DW_TAG_member, scope: !2492, file: !2449, line: 44, baseType: !2500, size: 128)
!2500 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2492, file: !2449, line: 44, size: 128, elements: !2501)
!2501 = !{!2502, !2503, !2504, !2505}
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2500, file: !2449, line: 45, baseType: !428, size: 32)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2500, file: !2449, line: 46, baseType: !428, size: 32, offset: 32)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2500, file: !2449, line: 47, baseType: !428, size: 32, offset: 64)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2500, file: !2449, line: 48, baseType: !428, size: 32, offset: 96)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2485, file: !2449, line: 51, baseType: !428, size: 32, offset: 192)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2485, file: !2449, line: 52, baseType: !428, size: 32, offset: 224)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2485, file: !2449, line: 55, baseType: !2509, size: 1024, offset: 256)
!2509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !428, size: 1024, elements: !563)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2485, file: !2449, line: 58, baseType: !2511, size: 2048, offset: 1280)
!2511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !428, size: 2048, elements: !766)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2485, file: !2449, line: 60, baseType: !2513, size: 384, offset: 3328)
!2513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !428, size: 384, elements: !2514)
!2514 = !{!2515}
!2515 = !DISubrange(count: 12)
!2516 = !DIDerivedType(tag: DW_TAG_member, scope: !2485, file: !2449, line: 62, baseType: !2517, size: 384, offset: 3712)
!2517 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2485, file: !2449, line: 62, size: 384, elements: !2518)
!2518 = !{!2519, !2520}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2517, file: !2449, line: 63, baseType: !2513, size: 384)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2517, file: !2449, line: 64, baseType: !2513, size: 384)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2467, file: !2449, line: 351, baseType: !2522, size: 1088)
!2522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2449, line: 79, size: 1088, elements: !2523)
!2523 = !{!2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2597}
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2522, file: !2449, line: 80, baseType: !428, size: 32)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2522, file: !2449, line: 81, baseType: !428, size: 32, offset: 32)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2522, file: !2449, line: 82, baseType: !428, size: 32, offset: 64)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2522, file: !2449, line: 83, baseType: !428, size: 32, offset: 96)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2522, file: !2449, line: 84, baseType: !428, size: 32, offset: 128)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2522, file: !2449, line: 85, baseType: !428, size: 32, offset: 160)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2522, file: !2449, line: 86, baseType: !428, size: 32, offset: 192)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2522, file: !2449, line: 88, baseType: !2480, size: 640, offset: 224)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2522, file: !2449, line: 89, baseType: !605, size: 8, offset: 864)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2522, file: !2449, line: 90, baseType: !605, size: 8, offset: 872)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2522, file: !2449, line: 91, baseType: !605, size: 8, offset: 880)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2522, file: !2449, line: 92, baseType: !605, size: 8, offset: 888)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2522, file: !2449, line: 93, baseType: !605, size: 8, offset: 896)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2522, file: !2449, line: 94, baseType: !605, size: 8, offset: 904)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2522, file: !2449, line: 95, baseType: !2539, size: 64, offset: 960)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2541, line: 11, size: 128, elements: !2542)
!2541 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!2542 = !{!2543, !2544}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2540, file: !2541, line: 12, baseType: !446, size: 64)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2540, file: !2541, line: 13, baseType: !2545, size: 64, offset: 64)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2547, line: 103, size: 1344, elements: !2548)
!2547 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!2548 = !{!2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2577, !2578, !2579}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2546, file: !2547, line: 109, baseType: !375, size: 64)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2546, file: !2547, line: 110, baseType: !375, size: 64, offset: 64)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2546, file: !2547, line: 111, baseType: !375, size: 64, offset: 128)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2546, file: !2547, line: 112, baseType: !375, size: 64, offset: 192)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2546, file: !2547, line: 113, baseType: !375, size: 64, offset: 256)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2546, file: !2547, line: 114, baseType: !375, size: 64, offset: 320)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2546, file: !2547, line: 117, baseType: !375, size: 64, offset: 384)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2546, file: !2547, line: 118, baseType: !375, size: 64, offset: 448)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2546, file: !2547, line: 119, baseType: !375, size: 64, offset: 512)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2546, file: !2547, line: 120, baseType: !375, size: 64, offset: 576)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2546, file: !2547, line: 121, baseType: !375, size: 64, offset: 640)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2546, file: !2547, line: 122, baseType: !375, size: 64, offset: 704)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2546, file: !2547, line: 123, baseType: !375, size: 64, offset: 768)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2546, file: !2547, line: 124, baseType: !375, size: 64, offset: 832)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2546, file: !2547, line: 125, baseType: !375, size: 64, offset: 896)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2546, file: !2547, line: 139, baseType: !375, size: 64, offset: 960)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2546, file: !2547, line: 142, baseType: !375, size: 64, offset: 1024)
!2566 = !DIDerivedType(tag: DW_TAG_member, scope: !2546, file: !2547, line: 144, baseType: !2567, size: 64, offset: 1088)
!2567 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2546, file: !2547, line: 144, size: 64, elements: !2568)
!2568 = !{!2569, !2570, !2571}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2567, file: !2547, line: 146, baseType: !612, size: 16)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !2567, file: !2547, line: 148, baseType: !556, size: 64)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !2567, file: !2547, line: 150, baseType: !2572, size: 64)
!2572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !2547, line: 59, size: 64, elements: !2573)
!2573 = !{!2574, !2575, !2576}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2572, file: !2547, line: 61, baseType: !556, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !2572, file: !2547, line: 63, baseType: !556, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !2572, file: !2547, line: 65, baseType: !556, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2546, file: !2547, line: 153, baseType: !375, size: 64, offset: 1152)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2546, file: !2547, line: 154, baseType: !375, size: 64, offset: 1216)
!2579 = !DIDerivedType(tag: DW_TAG_member, scope: !2546, file: !2547, line: 156, baseType: !2580, size: 64, offset: 1280)
!2580 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2546, file: !2547, line: 156, size: 64, elements: !2581)
!2581 = !{!2582, !2583, !2584}
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2580, file: !2547, line: 158, baseType: !612, size: 16)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !2580, file: !2547, line: 160, baseType: !556, size: 64)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !2580, file: !2547, line: 162, baseType: !2585, size: 64)
!2585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !2547, line: 69, size: 64, elements: !2586)
!2586 = !{!2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596}
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2585, file: !2547, line: 71, baseType: !556, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !2585, file: !2547, line: 73, baseType: !556, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !2585, file: !2547, line: 75, baseType: !556, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !2585, file: !2547, line: 77, baseType: !556, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !2585, file: !2547, line: 80, baseType: !556, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2585, file: !2547, line: 83, baseType: !556, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !2585, file: !2547, line: 86, baseType: !556, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !2585, file: !2547, line: 88, baseType: !556, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !2585, file: !2547, line: 93, baseType: !556, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !2585, file: !2547, line: 100, baseType: !556, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2522, file: !2449, line: 96, baseType: !428, size: 32, offset: 1024)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2467, file: !2449, line: 352, baseType: !2599, size: 4608, align: 512)
!2599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2449, line: 333, size: 4608, align: 512, elements: !2600)
!2600 = !{!2601, !2602, !2609}
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2599, file: !2449, line: 334, baseType: !2485, size: 4096, align: 128)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2599, file: !2449, line: 335, baseType: !2603, size: 512, offset: 4096)
!2603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2449, line: 312, size: 512, elements: !2604)
!2604 = !{!2605, !2606, !2607}
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2603, file: !2449, line: 313, baseType: !556, size: 64)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2603, file: !2449, line: 314, baseType: !556, size: 64, offset: 64)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2603, file: !2449, line: 315, baseType: !2608, size: 384, offset: 128)
!2608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !556, size: 384, elements: !1670)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2599, file: !2449, line: 336, baseType: !2610, offset: 4608)
!2610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !605, elements: !1444)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2467, file: !2449, line: 353, baseType: !2612, size: 32768)
!2612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !605, size: 32768, elements: !2613)
!2613 = !{!2614}
!2614 = !DISubrange(count: 4096)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2448, file: !2449, line: 484, baseType: !2454, size: 64, offset: 192)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2448, file: !2449, line: 491, baseType: !2617, size: 128, offset: 256)
!2617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2449, line: 404, size: 128, elements: !2618)
!2618 = !{!2619, !2620, !2621}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !2617, file: !2449, line: 424, baseType: !556, size: 64)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !2617, file: !2449, line: 432, baseType: !13, size: 32, offset: 64)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !2617, file: !2449, line: 440, baseType: !13, size: 32, offset: 96)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2448, file: !2449, line: 498, baseType: !2617, size: 128, offset: 384)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2448, file: !2449, line: 508, baseType: !2455, size: 33280, align: 512, offset: 512)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !948, file: !949, line: 31, baseType: !2625, size: 64, offset: 448)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2627, line: 11, flags: DIFlagFwdDecl)
!2627 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !948, file: !949, line: 32, baseType: !13, size: 32, offset: 512)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !948, file: !949, line: 33, baseType: !947, size: 64, offset: 576)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !948, file: !949, line: 35, baseType: !2631, size: 64, offset: 640)
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2632, size: 64)
!2632 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !949, line: 17, flags: DIFlagFwdDecl)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !948, file: !949, line: 37, baseType: !1415, size: 64, offset: 704)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !948, file: !949, line: 38, baseType: !1759, size: 64, offset: 768)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !948, file: !949, line: 39, baseType: !93, size: 32, offset: 832)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !948, file: !949, line: 40, baseType: !1831, size: 192, offset: 896)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !948, file: !949, line: 42, baseType: !93, size: 32, offset: 1088)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !884, file: !342, line: 951, baseType: !311, size: 32, offset: 128)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !884, file: !342, line: 952, baseType: !491, size: 32, offset: 160)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !884, file: !342, line: 952, baseType: !491, size: 32, offset: 192)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !884, file: !342, line: 953, baseType: !93, size: 32, offset: 224)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !835, file: !342, line: 1012, baseType: !1592, size: 64, offset: 896)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !835, file: !342, line: 1013, baseType: !2644, size: 256, offset: 960)
!2644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !342, line: 970, size: 256, elements: !2645)
!2645 = !{!2646, !2647, !2648, !2649, !2650, !2651}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2644, file: !342, line: 971, baseType: !375, size: 64)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2644, file: !342, line: 972, baseType: !13, size: 32, offset: 64)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2644, file: !342, line: 973, baseType: !13, size: 32, offset: 96)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2644, file: !342, line: 974, baseType: !13, size: 32, offset: 128)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2644, file: !342, line: 975, baseType: !13, size: 32, offset: 160)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2644, file: !342, line: 976, baseType: !680, size: 64, offset: 192)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !835, file: !342, line: 1014, baseType: !2653, size: 128, offset: 1216)
!2653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !2654, line: 8, size: 128, elements: !2655)
!2654 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!2655 = !{!2656, !2657}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !2653, file: !2654, line: 9, baseType: !664, size: 64)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !2653, file: !2654, line: 10, baseType: !520, size: 64, offset: 64)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !835, file: !342, line: 1015, baseType: !484, size: 64, offset: 1344)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !835, file: !342, line: 1016, baseType: !2660, size: 64, offset: 1408)
!2660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2661, size: 64)
!2661 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2662)
!2662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !342, line: 1914, size: 2112, elements: !2663)
!2663 = !{!2664, !2665, !2669, !2674, !2678, !2756, !2757, !2763, !2776, !2784, !2788, !2789, !2948, !2949, !2953, !2958, !2959, !2963, !2967, !2973, !2974, !2978, !2979, !2983, !2987, !2991, !2997, !3001, !3007, !3011, !3015, !3016, !3022}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2662, file: !342, line: 1915, baseType: !708, size: 64)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2662, file: !342, line: 1916, baseType: !2666, size: 64, offset: 64)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = !DISubroutineType(types: !2668)
!2668 = !{!680, !834, !680, !93}
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2662, file: !342, line: 1917, baseType: !2670, size: 64, offset: 128)
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2671, size: 64)
!2671 = !DISubroutineType(types: !2672)
!2672 = !{!793, !834, !659, !439, !2673}
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2662, file: !342, line: 1918, baseType: !2675, size: 64, offset: 192)
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2676 = !DISubroutineType(types: !2677)
!2677 = !{!793, !834, !447, !439, !2673}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2662, file: !342, line: 1919, baseType: !2679, size: 64, offset: 256)
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2680, size: 64)
!2680 = !DISubroutineType(types: !2681)
!2681 = !{!793, !2682, !2704}
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !342, line: 373, size: 384, elements: !2684)
!2684 = !{!2685, !2686, !2687, !2691, !2692, !2693, !2694}
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2683, file: !342, line: 374, baseType: !834, size: 64)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2683, file: !342, line: 375, baseType: !680, size: 64, offset: 64)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2683, file: !342, line: 376, baseType: !2688, size: 64, offset: 128)
!2688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2689, size: 64)
!2689 = !DISubroutineType(types: !2690)
!2690 = !{null, !2682, !446}
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2683, file: !342, line: 377, baseType: !432, size: 64, offset: 192)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2683, file: !342, line: 378, baseType: !93, size: 32, offset: 256)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2683, file: !342, line: 379, baseType: !612, size: 16, offset: 288)
!2694 = !DIDerivedType(tag: DW_TAG_member, scope: !2683, file: !342, line: 380, baseType: !2695, size: 64, offset: 320)
!2695 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2683, file: !342, line: 380, size: 64, elements: !2696)
!2696 = !{!2697, !2700}
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2695, file: !342, line: 386, baseType: !2698, size: 64)
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2699 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !342, line: 386, flags: DIFlagFwdDecl)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2695, file: !342, line: 395, baseType: !2701, size: 64)
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2702, size: 64)
!2702 = !DISubroutineType(types: !2703)
!2703 = !{!793, !432}
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !2706, line: 41, size: 320, elements: !2707)
!2706 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!2707 = !{!2708, !2709, !2710, !2711, !2712, !2713, !2718, !2751}
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !2705, file: !2706, line: 42, baseType: !605, size: 8)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !2705, file: !2706, line: 43, baseType: !1683, size: 8, offset: 8)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !2705, file: !2706, line: 44, baseType: !1683, size: 8, offset: 16)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !2705, file: !2706, line: 45, baseType: !1683, size: 8, offset: 24)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !2705, file: !2706, line: 46, baseType: !1683, size: 8, offset: 32)
!2713 = !DIDerivedType(tag: DW_TAG_member, scope: !2705, file: !2706, line: 47, baseType: !2714, size: 64, offset: 64)
!2714 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2705, file: !2706, line: 47, size: 64, elements: !2715)
!2715 = !{!2716, !2717}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !2714, file: !2706, line: 48, baseType: !439, size: 64)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !2714, file: !2706, line: 49, baseType: !93, size: 32)
!2718 = !DIDerivedType(tag: DW_TAG_member, scope: !2705, file: !2706, line: 61, baseType: !2719, size: 128, offset: 128)
!2719 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2705, file: !2706, line: 61, size: 128, elements: !2720)
!2720 = !{!2721, !2727}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !2719, file: !2706, line: 67, baseType: !2722, size: 128)
!2722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !2723, line: 17, size: 128, elements: !2724)
!2723 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!2724 = !{!2725, !2726}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2722, file: !2723, line: 19, baseType: !432, size: 64)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2722, file: !2723, line: 20, baseType: !441, size: 64, offset: 64)
!2727 = !DIDerivedType(tag: DW_TAG_member, scope: !2719, file: !2706, line: 68, baseType: !2728, size: 128)
!2728 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2719, file: !2706, line: 68, size: 128, elements: !2729)
!2729 = !{!2730, !2750}
!2730 = !DIDerivedType(tag: DW_TAG_member, scope: !2728, file: !2706, line: 69, baseType: !2731, size: 64)
!2731 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2728, file: !2706, line: 69, size: 64, elements: !2732)
!2732 = !{!2733, !2736, !2743, !2747, !2749}
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !2731, file: !2706, line: 71, baseType: !2734, size: 64)
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2735, size: 64)
!2735 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2722)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !2731, file: !2706, line: 72, baseType: !2737, size: 64)
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2738 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2739)
!2739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !2706, line: 17, size: 128, elements: !2740)
!2740 = !{!2741, !2742}
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2739, file: !2706, line: 18, baseType: !432, size: 64)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2739, file: !2706, line: 19, baseType: !439, size: 64, offset: 64)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !2731, file: !2706, line: 73, baseType: !2744, size: 64)
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2745 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2746)
!2746 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !2706, line: 73, flags: DIFlagFwdDecl)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !2731, file: !2706, line: 74, baseType: !2748, size: 64)
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !2731, file: !2706, line: 75, baseType: !432, size: 64)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2728, file: !2706, line: 77, baseType: !439, size: 64, offset: 64)
!2751 = !DIDerivedType(tag: DW_TAG_member, scope: !2705, file: !2706, line: 80, baseType: !2752, size: 64, offset: 256)
!2752 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2705, file: !2706, line: 80, size: 64, elements: !2753)
!2753 = !{!2754, !2755}
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !2752, file: !2706, line: 81, baseType: !375, size: 64)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !2752, file: !2706, line: 82, baseType: !680, size: 64)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2662, file: !342, line: 1920, baseType: !2679, size: 64, offset: 320)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2662, file: !342, line: 1921, baseType: !2758, size: 64, offset: 384)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2759 = !DISubroutineType(types: !2760)
!2760 = !{!93, !2682, !2761, !13}
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !342, line: 53, flags: DIFlagFwdDecl)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2662, file: !342, line: 1923, baseType: !2764, size: 64, offset: 448)
!2764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2765, size: 64)
!2765 = !DISubroutineType(types: !2766)
!2766 = !{!93, !834, !2767}
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2768, size: 64)
!2768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !342, line: 1858, size: 128, elements: !2769)
!2769 = !{!2770, !2775}
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2768, file: !342, line: 1859, baseType: !2771, size: 64)
!2771 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !342, line: 1855, baseType: !2772)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = !DISubroutineType(types: !2774)
!2774 = !{!1683, !2767, !447, !93, !680, !556, !13}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2768, file: !342, line: 1860, baseType: !680, size: 64, offset: 64)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2662, file: !342, line: 1924, baseType: !2777, size: 64, offset: 512)
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!2778 = !DISubroutineType(types: !2779)
!2779 = !{!2780, !834, !2782}
!2780 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2781, line: 59, baseType: !13)
!2781 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2783, size: 64)
!2783 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !342, line: 61, flags: DIFlagFwdDecl)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2662, file: !342, line: 1925, baseType: !2785, size: 64, offset: 576)
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2786 = !DISubroutineType(types: !2787)
!2787 = !{!446, !834, !13, !375}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2662, file: !342, line: 1926, baseType: !2785, size: 64, offset: 640)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2662, file: !342, line: 1927, baseType: !2790, size: 64, offset: 704)
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2791 = !DISubroutineType(types: !2792)
!2792 = !{!93, !834, !2793}
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !320, line: 625, size: 1344, elements: !2795)
!2795 = !{!2796, !2805, !2806, !2812, !2819, !2820, !2825, !2826, !2831, !2832, !2835, !2941, !2942, !2943, !2944, !2945, !2946}
!2796 = !DIDerivedType(tag: DW_TAG_member, scope: !2794, file: !320, line: 628, baseType: !2797, size: 128)
!2797 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2794, file: !320, line: 628, size: 128, elements: !2798)
!2798 = !{!2799, !2804}
!2799 = !DIDerivedType(tag: DW_TAG_member, scope: !2797, file: !320, line: 629, baseType: !2800, size: 128)
!2800 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2797, file: !320, line: 629, size: 128, elements: !2801)
!2801 = !{!2802, !2803}
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2800, file: !320, line: 631, baseType: !375, size: 64)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2800, file: !320, line: 632, baseType: !375, size: 64, offset: 64)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2797, file: !320, line: 635, baseType: !847, size: 128, align: 64)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2794, file: !320, line: 639, baseType: !1255, size: 64, offset: 128)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2794, file: !320, line: 640, baseType: !2807, size: 64, offset: 192)
!2807 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1291, line: 297, baseType: !2808)
!2808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1291, line: 297, size: 64, elements: !2809)
!2809 = !{!2810}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2808, file: !1291, line: 297, baseType: !2811, size: 64)
!2811 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1296, line: 19, baseType: !375)
!2812 = !DIDerivedType(tag: DW_TAG_member, scope: !2794, file: !320, line: 646, baseType: !2813, size: 64, offset: 256)
!2813 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2794, file: !320, line: 646, size: 64, elements: !2814)
!2814 = !{!2815, !2818}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2813, file: !320, line: 647, baseType: !2816, size: 64)
!2816 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2817)
!2817 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !320, line: 542, baseType: !375)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2813, file: !320, line: 648, baseType: !2817, size: 64)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2794, file: !320, line: 666, baseType: !93, size: 32, offset: 320)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2794, file: !320, line: 667, baseType: !2821, size: 64, offset: 384)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !320, line: 579, size: 320, elements: !2823)
!2823 = !{!2824}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2822, file: !320, line: 580, baseType: !1310, size: 320)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2794, file: !320, line: 670, baseType: !1683, size: 8, offset: 448)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2794, file: !320, line: 681, baseType: !2827, size: 256, offset: 512)
!2827 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2794, file: !320, line: 678, size: 256, elements: !2828)
!2828 = !{!2829, !2830}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2827, file: !320, line: 679, baseType: !1016, size: 192, align: 64)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2827, file: !320, line: 680, baseType: !375, size: 64, offset: 192)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2794, file: !320, line: 689, baseType: !467, size: 128, offset: 768)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2794, file: !320, line: 691, baseType: !2833, size: 64, offset: 896)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !320, line: 691, flags: DIFlagFwdDecl)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2794, file: !320, line: 694, baseType: !2836, size: 64, offset: 960)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2838)
!2838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2839, line: 563, size: 1024, elements: !2840)
!2839 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2840 = !{!2841, !2845, !2846, !2850, !2854, !2858, !2907, !2911, !2915, !2919, !2920, !2921, !2925, !2929, !2933, !2937}
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2838, file: !2839, line: 564, baseType: !2842, size: 64)
!2842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2843, size: 64)
!2843 = !DISubroutineType(types: !2844)
!2844 = !{null, !2793}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2838, file: !2839, line: 569, baseType: !2842, size: 64, offset: 64)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2838, file: !2839, line: 571, baseType: !2847, size: 64, offset: 128)
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2848, size: 64)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{!93, !2793, !375}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2838, file: !2839, line: 572, baseType: !2851, size: 64, offset: 192)
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2852, size: 64)
!2852 = !DISubroutineType(types: !2853)
!2853 = !{!93, !2793}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2838, file: !2839, line: 578, baseType: !2855, size: 64, offset: 256)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{!93, !2793, !375, !375, !375}
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2838, file: !2839, line: 580, baseType: !2859, size: 64, offset: 320)
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2860, size: 64)
!2860 = !DISubroutineType(types: !2861)
!2861 = !{!2862, !2863}
!2862 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !320, line: 1184, baseType: !13)
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2839, line: 512, size: 896, elements: !2865)
!2865 = !{!2866, !2874, !2875, !2882, !2889, !2899, !2900, !2901, !2903, !2905}
!2866 = !DIDerivedType(tag: DW_TAG_member, scope: !2864, file: !2839, line: 513, baseType: !2867, size: 320)
!2867 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2864, file: !2839, line: 513, size: 320, elements: !2868)
!2868 = !{!2869, !2870, !2871, !2872, !2873}
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2867, file: !2839, line: 514, baseType: !2793, size: 64)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2867, file: !2839, line: 515, baseType: !445, size: 32, offset: 64)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2867, file: !2839, line: 516, baseType: !375, size: 64, offset: 128)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2867, file: !2839, line: 517, baseType: !375, size: 64, offset: 192)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2867, file: !2839, line: 518, baseType: !375, size: 64, offset: 256)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2864, file: !2839, line: 520, baseType: !319, size: 32, offset: 320)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2864, file: !2839, line: 522, baseType: !2876, size: 64, offset: 384)
!2876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2877, size: 64)
!2877 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1296, line: 22, baseType: !2878)
!2878 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1296, line: 22, size: 64, elements: !2879)
!2879 = !{!2880}
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2878, file: !1296, line: 22, baseType: !2881, size: 64)
!2881 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1296, line: 15, baseType: !375)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2864, file: !2839, line: 524, baseType: !2883, size: 64, offset: 448)
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!2884 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1291, line: 372, baseType: !2885)
!2885 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1291, line: 372, size: 64, elements: !2886)
!2886 = !{!2887}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2885, file: !1291, line: 372, baseType: !2888, size: 64)
!2888 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1296, line: 16, baseType: !375)
!2889 = !DIDerivedType(tag: DW_TAG_member, scope: !2864, file: !2839, line: 527, baseType: !2890, size: 64, offset: 512)
!2890 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2864, file: !2839, line: 527, size: 64, elements: !2891)
!2891 = !{!2892, !2898}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2890, file: !2839, line: 528, baseType: !2893, size: 64)
!2893 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1296, line: 21, baseType: !2894)
!2894 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1296, line: 21, size: 64, elements: !2895)
!2895 = !{!2896}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2894, file: !1296, line: 21, baseType: !2897, size: 64)
!2897 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1296, line: 14, baseType: !375)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2890, file: !2839, line: 529, baseType: !2877, size: 64)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2864, file: !2839, line: 534, baseType: !453, size: 64, offset: 576)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2864, file: !2839, line: 535, baseType: !453, size: 64, offset: 640)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2864, file: !2839, line: 541, baseType: !2902, size: 64, offset: 704)
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2864, file: !2839, line: 545, baseType: !2904, size: 64, offset: 768)
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2864, file: !2839, line: 549, baseType: !2906, size: 64, offset: 832)
!2906 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1291, line: 520, baseType: !453)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2838, file: !2839, line: 581, baseType: !2908, size: 64, offset: 384)
!2908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2909, size: 64)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{!2862, !2863, !13}
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2838, file: !2839, line: 582, baseType: !2912, size: 64, offset: 448)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = !DISubroutineType(types: !2914)
!2914 = !{!2862, !2863, !375, !375}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2838, file: !2839, line: 584, baseType: !2916, size: 64, offset: 512)
!2916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2917, size: 64)
!2917 = !DISubroutineType(types: !2918)
!2918 = !{!375, !2793}
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2838, file: !2839, line: 588, baseType: !2859, size: 64, offset: 576)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2838, file: !2839, line: 591, baseType: !2859, size: 64, offset: 640)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2838, file: !2839, line: 597, baseType: !2922, size: 64, offset: 704)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{!93, !2793, !375, !432, !93, !93}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2838, file: !2839, line: 603, baseType: !2926, size: 64, offset: 768)
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = !DISubroutineType(types: !2928)
!2928 = !{!447, !2793}
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2838, file: !2839, line: 613, baseType: !2930, size: 64, offset: 832)
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = !DISubroutineType(types: !2932)
!2932 = !{!93, !2793, !2224}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2838, file: !2839, line: 625, baseType: !2934, size: 64, offset: 896)
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2935, size: 64)
!2935 = !DISubroutineType(types: !2936)
!2936 = !{!2224, !2793, !375}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2838, file: !2839, line: 633, baseType: !2938, size: 64, offset: 960)
!2938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2939, size: 64)
!2939 = !DISubroutineType(types: !2940)
!2940 = !{!453, !2793, !375}
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2794, file: !320, line: 697, baseType: !375, size: 64, offset: 1024)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2794, file: !320, line: 699, baseType: !834, size: 64, offset: 1088)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2794, file: !320, line: 700, baseType: !432, size: 64, offset: 1152)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2794, file: !320, line: 711, baseType: !860, size: 64, offset: 1216)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2794, file: !320, line: 717, baseType: !2224, size: 64, offset: 1280)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2794, file: !320, line: 722, baseType: !2947, offset: 1344)
!2947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !320, line: 570, elements: !1276)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2662, file: !342, line: 1928, baseType: !375, size: 64, offset: 768)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2662, file: !342, line: 1929, baseType: !2950, size: 64, offset: 832)
!2950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2951, size: 64)
!2951 = !DISubroutineType(types: !2952)
!2952 = !{!93, !484, !834}
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2662, file: !342, line: 1930, baseType: !2954, size: 64, offset: 896)
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = !DISubroutineType(types: !2956)
!2956 = !{!93, !834, !2957}
!2957 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !342, line: 1061, baseType: !432)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2662, file: !342, line: 1931, baseType: !2950, size: 64, offset: 960)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2662, file: !342, line: 1932, baseType: !2960, size: 64, offset: 1024)
!2960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2961, size: 64)
!2961 = !DISubroutineType(types: !2962)
!2962 = !{!93, !834, !680, !680, !93}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2662, file: !342, line: 1933, baseType: !2964, size: 64, offset: 1088)
!2964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2965, size: 64)
!2965 = !DISubroutineType(types: !2966)
!2966 = !{!93, !93, !834, !93}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2662, file: !342, line: 1934, baseType: !2968, size: 64, offset: 1152)
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2969 = !DISubroutineType(types: !2970)
!2970 = !{!93, !834, !93, !2971}
!2971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2972, size: 64)
!2972 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !342, line: 1063, flags: DIFlagFwdDecl)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2662, file: !342, line: 1935, baseType: !1280, size: 64, offset: 1216)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2662, file: !342, line: 1936, baseType: !2975, size: 64, offset: 1280)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = !DISubroutineType(types: !2977)
!2977 = !{!93, !93}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2662, file: !342, line: 1937, baseType: !2968, size: 64, offset: 1344)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2662, file: !342, line: 1938, baseType: !2980, size: 64, offset: 1408)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = !DISubroutineType(types: !2982)
!2982 = !{!793, !2261, !834, !2673, !439, !13}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2662, file: !342, line: 1939, baseType: !2984, size: 64, offset: 1472)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{!793, !834, !2673, !2261, !439, !13}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2662, file: !342, line: 1940, baseType: !2988, size: 64, offset: 1536)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{null, !834}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2662, file: !342, line: 1941, baseType: !2992, size: 64, offset: 1600)
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2993, size: 64)
!2993 = !DISubroutineType(types: !2994)
!2994 = !{!93, !834, !93, !2995, !2996}
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2971, size: 64)
!2996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2662, file: !342, line: 1942, baseType: !2998, size: 64, offset: 1664)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = !DISubroutineType(types: !3000)
!3000 = !{!446, !834, !93, !680, !680}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2662, file: !342, line: 1944, baseType: !3002, size: 64, offset: 1728)
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = !DISubroutineType(types: !3004)
!3004 = !{null, !3005, !834}
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3006, size: 64)
!3006 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !969, line: 66, flags: DIFlagFwdDecl)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2662, file: !342, line: 1948, baseType: !3008, size: 64, offset: 1792)
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = !DISubroutineType(types: !3010)
!3010 = !{!793, !834, !680, !834, !680, !439, !13}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2662, file: !342, line: 1950, baseType: !3012, size: 64, offset: 1856)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = !DISubroutineType(types: !3014)
!3014 = !{!680, !834, !680, !834, !680, !680, !13}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2662, file: !342, line: 1953, baseType: !2960, size: 64, offset: 1920)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2662, file: !342, line: 1954, baseType: !3017, size: 64, offset: 1984)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = !DISubroutineType(types: !3019)
!3019 = !{!93, !3020, !13}
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !342, line: 1911, flags: DIFlagFwdDecl)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2662, file: !342, line: 1955, baseType: !3023, size: 64, offset: 2048)
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3024 = !DISubroutineType(types: !3025)
!3025 = !{!93, !3020, !2761, !13}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !835, file: !342, line: 1018, baseType: !556, size: 64, offset: 1472)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !835, file: !342, line: 1020, baseType: !432, size: 64, offset: 1536)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !835, file: !342, line: 1023, baseType: !432, size: 64, offset: 1600)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !835, file: !342, line: 1027, baseType: !3030, size: 64, offset: 1664)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !835, file: !342, line: 1029, baseType: !480, size: 64, offset: 1728)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !835, file: !342, line: 1030, baseType: !3033, size: 32, offset: 1792)
!3033 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !3034, line: 8, baseType: !428)
!3034 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !835, file: !342, line: 1031, baseType: !3033, size: 32, offset: 1824)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !821, file: !787, line: 182, baseType: !831, size: 64, offset: 384)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !821, file: !787, line: 184, baseType: !3038, size: 64, offset: 448)
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3039, size: 64)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{!93, !834, !727, !820, !2793}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !809, file: !787, line: 90, baseType: !3042, size: 64, offset: 192)
!3042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !809, file: !787, line: 91, baseType: !3044, size: 64, offset: 256)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !777, file: !722, line: 120, baseType: !3046, size: 64, offset: 192)
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3047, size: 64)
!3047 = !DISubroutineType(types: !3048)
!3048 = !{!3049, !745}
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3050, size: 64)
!3050 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3051)
!3051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !336, line: 39, size: 384, elements: !3052)
!3052 = !{!3053, !3054, !3058, !3062, !3069, !3073}
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3051, file: !336, line: 40, baseType: !335, size: 32)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3051, file: !336, line: 41, baseType: !3055, size: 64, offset: 64)
!3055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3056, size: 64)
!3056 = !DISubroutineType(types: !3057)
!3057 = !{!1683}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3051, file: !336, line: 42, baseType: !3059, size: 64, offset: 128)
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3060, size: 64)
!3060 = !DISubroutineType(types: !3061)
!3061 = !{!432}
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3051, file: !336, line: 43, baseType: !3063, size: 64, offset: 192)
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3064, size: 64)
!3064 = !DISubroutineType(types: !3065)
!3065 = !{!1389, !3066}
!3066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3067, size: 64)
!3067 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !3068, line: 17, flags: DIFlagFwdDecl)
!3068 = !DIFile(filename: "./include/linux/socket.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f01d0394047c40639978f4f3c4ad0053")
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3051, file: !336, line: 44, baseType: !3070, size: 64, offset: 256)
!3070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3071, size: 64)
!3071 = !DISubroutineType(types: !3072)
!3072 = !{!1389}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3051, file: !336, line: 45, baseType: !3074, size: 64, offset: 320)
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3075, size: 64)
!3075 = !DISubroutineType(types: !3076)
!3076 = !{null, !432}
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !777, file: !722, line: 121, baseType: !3078, size: 64, offset: 256)
!3078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3079, size: 64)
!3079 = !DISubroutineType(types: !3080)
!3080 = !{!1389, !745}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !777, file: !722, line: 122, baseType: !3082, size: 64, offset: 320)
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = !DISubroutineType(types: !3084)
!3084 = !{null, !745, !3085, !3086}
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!3086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !721, file: !722, line: 70, baseType: !3088, size: 64, offset: 384)
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64)
!3089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !3090, line: 190, size: 1152, elements: !3091)
!3090 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!3091 = !{!3092, !3093, !3094, !3095, !3096, !3097, !3098, !3099, !3183, !3184, !3185, !3186, !3187, !3190}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3089, file: !3090, line: 191, baseType: !597, size: 32)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3089, file: !3090, line: 192, baseType: !597, size: 32, offset: 32)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3089, file: !3090, line: 202, baseType: !3088, size: 64, offset: 64)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3089, file: !3090, line: 203, baseType: !447, size: 64, offset: 128)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3089, file: !3090, line: 205, baseType: !1016, size: 192, align: 64, offset: 192)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3089, file: !3090, line: 207, baseType: !1389, size: 64, offset: 384)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3089, file: !3090, line: 208, baseType: !13, size: 32, offset: 448)
!3099 = !DIDerivedType(tag: DW_TAG_member, scope: !3089, file: !3090, line: 209, baseType: !3100, size: 256, offset: 512)
!3100 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3089, file: !3090, line: 209, size: 256, elements: !3101)
!3101 = !{!3102, !3111, !3115}
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3100, file: !3090, line: 210, baseType: !3103, size: 256)
!3103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !3090, line: 153, size: 256, elements: !3104)
!3104 = !{!3105, !3106, !3107, !3110}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3103, file: !3090, line: 154, baseType: !375, size: 64)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3103, file: !3090, line: 156, baseType: !1148, size: 64, offset: 64)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3103, file: !3090, line: 162, baseType: !3108, size: 64, offset: 128)
!3108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3109, size: 64)
!3109 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !3090, line: 162, flags: DIFlagFwdDecl)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3103, file: !3090, line: 167, baseType: !375, size: 64, offset: 192)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3100, file: !3090, line: 211, baseType: !3112, size: 64)
!3112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !3090, line: 170, size: 64, elements: !3113)
!3113 = !{!3114}
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3112, file: !3090, line: 171, baseType: !3088, size: 64)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3100, file: !3090, line: 212, baseType: !3116, size: 256)
!3116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !3090, line: 174, size: 256, elements: !3117)
!3117 = !{!3118, !3178, !3181, !3182}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3116, file: !3090, line: 175, baseType: !3119, size: 64)
!3119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3120, size: 64)
!3120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3121)
!3121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !3090, line: 271, size: 768, elements: !3122)
!3122 = !{!3123, !3143, !3147, !3151, !3155, !3159, !3163, !3167, !3168, !3169, !3170, !3174}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3121, file: !3090, line: 276, baseType: !3124, size: 64)
!3124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3125, size: 64)
!3125 = !DISubroutineType(types: !3126)
!3126 = !{!93, !3127}
!3127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3128, size: 64)
!3128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !3090, line: 251, size: 1216, elements: !3129)
!3129 = !{!3130, !3131, !3132, !3133, !3134, !3135, !3136, !3137, !3138, !3139, !3140, !3141, !3142}
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3128, file: !3090, line: 253, baseType: !3088, size: 64)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3128, file: !3090, line: 254, baseType: !834, size: 64, offset: 64)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3128, file: !3090, line: 255, baseType: !3005, size: 64, offset: 128)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3128, file: !3090, line: 256, baseType: !432, size: 64, offset: 192)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3128, file: !3090, line: 259, baseType: !869, size: 256, offset: 256)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3128, file: !3090, line: 260, baseType: !869, size: 256, offset: 512)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3128, file: !3090, line: 261, baseType: !93, size: 32, offset: 768)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3128, file: !3090, line: 262, baseType: !467, size: 128, offset: 832)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3128, file: !3090, line: 263, baseType: !659, size: 64, offset: 960)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3128, file: !3090, line: 265, baseType: !439, size: 64, offset: 1024)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3128, file: !3090, line: 266, baseType: !1683, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3128, file: !3090, line: 267, baseType: !1683, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3128, file: !3090, line: 268, baseType: !2836, size: 64, offset: 1152)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3121, file: !3090, line: 277, baseType: !3144, size: 64, offset: 64)
!3144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3145, size: 64)
!3145 = !DISubroutineType(types: !3146)
!3146 = !{null, !3127}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3121, file: !3090, line: 290, baseType: !3148, size: 64, offset: 128)
!3148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3149, size: 64)
!3149 = !DISubroutineType(types: !3150)
!3150 = !{!93, !3005, !432}
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3121, file: !3090, line: 292, baseType: !3152, size: 64, offset: 192)
!3152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3153, size: 64)
!3153 = !DISubroutineType(types: !3154)
!3154 = !{!432, !3005, !2673}
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3121, file: !3090, line: 293, baseType: !3156, size: 64, offset: 256)
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3157 = !DISubroutineType(types: !3158)
!3158 = !{!432, !3005, !432, !2673}
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3121, file: !3090, line: 294, baseType: !3160, size: 64, offset: 320)
!3160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3161, size: 64)
!3161 = !DISubroutineType(types: !3162)
!3162 = !{null, !3005, !432}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3121, file: !3090, line: 296, baseType: !3164, size: 64, offset: 384)
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = !DISubroutineType(types: !3166)
!3166 = !{!793, !3127, !659, !439, !680}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3121, file: !3090, line: 306, baseType: !439, size: 64, offset: 448)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3121, file: !3090, line: 313, baseType: !1683, size: 8, offset: 512)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3121, file: !3090, line: 314, baseType: !3164, size: 64, offset: 576)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3121, file: !3090, line: 317, baseType: !3171, size: 64, offset: 640)
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3172 = !DISubroutineType(types: !3173)
!3173 = !{!2780, !3127, !2782}
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3121, file: !3090, line: 320, baseType: !3175, size: 64, offset: 704)
!3175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3176, size: 64)
!3176 = !DISubroutineType(types: !3177)
!3177 = !{!93, !3127, !2793}
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3116, file: !3090, line: 176, baseType: !3179, size: 64, offset: 64)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !3090, line: 35, flags: DIFlagFwdDecl)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3116, file: !3090, line: 177, baseType: !680, size: 64, offset: 128)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3116, file: !3090, line: 178, baseType: !3088, size: 64, offset: 192)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3089, file: !3090, line: 215, baseType: !432, size: 64, offset: 768)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3089, file: !3090, line: 221, baseType: !556, size: 64, offset: 832)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3089, file: !3090, line: 223, baseType: !392, size: 16, offset: 896)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3089, file: !3090, line: 224, baseType: !488, size: 16, offset: 912)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3089, file: !3090, line: 225, baseType: !3188, size: 64, offset: 960)
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3189 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !3090, line: 36, flags: DIFlagFwdDecl)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3089, file: !3090, line: 227, baseType: !847, size: 128, align: 64, offset: 1024)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !721, file: !722, line: 71, baseType: !3192, size: 32, offset: 448)
!3192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3193, line: 19, size: 32, elements: !3194)
!3193 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!3194 = !{!3195}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3192, file: !3193, line: 20, baseType: !912, size: 32)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !721, file: !722, line: 73, baseType: !13, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !721, file: !722, line: 74, baseType: !13, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !721, file: !722, line: 75, baseType: !13, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !721, file: !722, line: 76, baseType: !13, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !721, file: !722, line: 77, baseType: !13, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !718, file: !287, line: 47, baseType: !708, size: 64, offset: 512)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !718, file: !287, line: 48, baseType: !727, size: 64, offset: 576)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !718, file: !287, line: 49, baseType: !3204, size: 64, offset: 640)
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !287, line: 49, flags: DIFlagFwdDecl)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !718, file: !287, line: 50, baseType: !1543, size: 64, offset: 704)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !709, file: !287, line: 418, baseType: !3208, size: 64, offset: 1408)
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3209, size: 64)
!3209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !287, line: 53, size: 448, elements: !3210)
!3210 = !{!3211, !3212, !3217, !3221, !3225, !3229}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3209, file: !287, line: 54, baseType: !797, size: 128)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3209, file: !287, line: 55, baseType: !3213, size: 64, offset: 128)
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{!793, !3208, !3216, !659}
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3209, file: !287, line: 57, baseType: !3218, size: 64, offset: 192)
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3219, size: 64)
!3219 = !DISubroutineType(types: !3220)
!3220 = !{!793, !3208, !3216, !447, !439}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !3209, file: !287, line: 59, baseType: !3222, size: 64, offset: 256)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64)
!3223 = !DISubroutineType(types: !3224)
!3224 = !{null, !708, !447}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !3209, file: !287, line: 60, baseType: !3226, size: 64, offset: 320)
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3227 = !DISubroutineType(types: !3228)
!3228 = !{!93, !708}
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3209, file: !287, line: 61, baseType: !3230, size: 64, offset: 384)
!3230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3231, size: 64)
!3231 = !DISubroutineType(types: !3232)
!3232 = !{null, !708}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !709, file: !287, line: 419, baseType: !447, size: 64, offset: 1472)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !709, file: !287, line: 420, baseType: !447, size: 64, offset: 1536)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !709, file: !287, line: 421, baseType: !727, size: 64, offset: 1600)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !709, file: !287, line: 424, baseType: !3237, size: 64, offset: 1664)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3239)
!3239 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !287, line: 424, flags: DIFlagFwdDecl)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !709, file: !287, line: 425, baseType: !3241, size: 64, offset: 1728)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1356)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !709, file: !287, line: 426, baseType: !13, size: 32, offset: 1792)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !709, file: !287, line: 435, baseType: !869, size: 256, offset: 1856)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !709, file: !287, line: 437, baseType: !3246, size: 64, offset: 2112)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !3248, line: 69, size: 320, elements: !3249)
!3248 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!3249 = !{!3250, !3251, !3252, !3269, !3271, !3275, !3276}
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3247, file: !3248, line: 70, baseType: !447, size: 64)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3247, file: !3248, line: 71, baseType: !708, size: 64, offset: 64)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3247, file: !3248, line: 72, baseType: !3253, size: 64, offset: 128)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3255)
!3255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !3248, line: 47, size: 256, elements: !3256)
!3256 = !{!3257, !3258, !3264, !3268}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3255, file: !3248, line: 49, baseType: !13, size: 32)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3255, file: !3248, line: 51, baseType: !3259, size: 64, offset: 64)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = !DISubroutineType(types: !3261)
!3261 = !{!93, !447, !3262}
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3247)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3255, file: !3248, line: 53, baseType: !3265, size: 64, offset: 128)
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3266 = !DISubroutineType(types: !3267)
!3267 = !{!93, !659, !3262}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3255, file: !3248, line: 55, baseType: !3074, size: 64, offset: 192)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3247, file: !3248, line: 73, baseType: !3270, size: 16, offset: 192)
!3270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !612)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3247, file: !3248, line: 74, baseType: !3272, size: 8, offset: 208)
!3272 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !429, line: 16, baseType: !3273)
!3273 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !391, line: 20, baseType: !3274)
!3274 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3247, file: !3248, line: 75, baseType: !605, size: 8, offset: 216)
!3276 = !DIDerivedType(tag: DW_TAG_member, scope: !3247, file: !3248, line: 76, baseType: !3277, size: 64, offset: 256)
!3277 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3247, file: !3248, line: 76, size: 64, elements: !3278)
!3278 = !{!3279, !3280, !3287}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3277, file: !3248, line: 77, baseType: !432, size: 64)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3277, file: !3248, line: 78, baseType: !3281, size: 64)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3283)
!3283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !3248, line: 86, size: 128, elements: !3284)
!3284 = !{!3285, !3286}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !3283, file: !3248, line: 87, baseType: !13, size: 32)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3283, file: !3248, line: 88, baseType: !659, size: 64, offset: 64)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !3277, file: !3248, line: 79, baseType: !3288, size: 64)
!3288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3289, size: 64)
!3289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3290)
!3290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !3248, line: 92, size: 256, elements: !3291)
!3291 = !{!3292, !3293, !3294, !3296, !3297}
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3290, file: !3248, line: 94, baseType: !13, size: 32)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !3290, file: !3248, line: 95, baseType: !13, size: 32, offset: 32)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3290, file: !3248, line: 96, baseType: !3295, size: 64, offset: 64)
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3290, file: !3248, line: 97, baseType: !3253, size: 64, offset: 128)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !3290, file: !3248, line: 98, baseType: !432, size: 64, offset: 192)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !709, file: !287, line: 438, baseType: !13, size: 32, offset: 2176)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !709, file: !287, line: 441, baseType: !13, size: 32, offset: 2208)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !709, file: !287, line: 442, baseType: !3237, size: 64, offset: 2240)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !709, file: !287, line: 443, baseType: !3241, size: 64, offset: 2304)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !709, file: !287, line: 444, baseType: !1683, size: 8, offset: 2368)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !709, file: !287, line: 451, baseType: !1683, size: 8, offset: 2376)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !709, file: !287, line: 454, baseType: !13, size: 32, offset: 2400)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !709, file: !287, line: 455, baseType: !3306, size: 64, offset: 2432)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !3308, line: 23, size: 96, elements: !3309)
!3308 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!3309 = !{!3310, !3311, !3312}
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3307, file: !3308, line: 24, baseType: !93, size: 32)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !3307, file: !3308, line: 24, baseType: !93, size: 32, offset: 32)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3307, file: !3308, line: 24, baseType: !93, size: 32, offset: 64)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !709, file: !287, line: 458, baseType: !3314, size: 64, offset: 2496)
!3314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3315, size: 64)
!3315 = !DISubroutineType(types: !3316)
!3316 = !{!93}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !709, file: !287, line: 460, baseType: !3318, size: 4032, align: 512, offset: 2560)
!3318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3319, size: 4032, elements: !3333)
!3319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !287, line: 362, size: 576, elements: !3320)
!3320 = !{!3321, !3322, !3323}
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3319, file: !287, line: 363, baseType: !432, size: 64)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3319, file: !287, line: 364, baseType: !13, size: 32, offset: 64)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !3319, file: !287, line: 367, baseType: !3324, size: 448, offset: 128)
!3324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !287, line: 319, size: 448, elements: !3325)
!3325 = !{!3326, !3327}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3324, file: !287, line: 320, baseType: !708, size: 64)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3324, file: !287, line: 321, baseType: !3328, size: 384, offset: 64)
!3328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !3329, line: 40, size: 384, elements: !3330)
!3329 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!3330 = !{!3331}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3328, file: !3329, line: 41, baseType: !3332, size: 384, align: 64)
!3332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1016, size: 384, align: 64, elements: !1910)
!3333 = !{!3334}
!3334 = !DISubrange(count: 7)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !709, file: !287, line: 463, baseType: !3336, size: 192, offset: 6592)
!3336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !3337, line: 8, size: 192, elements: !3338)
!3337 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!3338 = !{!3339, !3340, !3341}
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !3336, file: !3337, line: 10, baseType: !13, size: 32)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !3336, file: !3337, line: 11, baseType: !1555, size: 64, offset: 64)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !3336, file: !3337, line: 12, baseType: !3342, size: 64, offset: 128)
!3342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3343, size: 64)
!3343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !3344, line: 59, size: 48, elements: !3345)
!3344 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!3345 = !{!3346, !3347, !3348, !3349, !3350, !3351}
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !3343, file: !3344, line: 60, baseType: !1406, size: 16)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !3343, file: !3344, line: 61, baseType: !1406, size: 16, offset: 16)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !3343, file: !3344, line: 63, baseType: !13, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !3343, file: !3344, line: 64, baseType: !13, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3343, file: !3344, line: 65, baseType: !13, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3343, file: !3344, line: 66, baseType: !13, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !709, file: !287, line: 465, baseType: !375, size: 64, offset: 6784)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !709, file: !287, line: 469, baseType: !13, size: 32, offset: 6848)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !709, file: !287, line: 470, baseType: !467, size: 128, offset: 6912)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !709, file: !287, line: 471, baseType: !3356, size: 64, offset: 7040)
!3356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3357, size: 64)
!3357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !3358, line: 33, size: 96, elements: !3359)
!3358 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!3359 = !{!3360, !3361, !3362, !3363}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !3357, file: !3358, line: 37, baseType: !93, size: 32)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !3357, file: !3358, line: 43, baseType: !93, size: 32, offset: 32)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !3357, file: !3358, line: 45, baseType: !392, size: 16, offset: 64)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3357, file: !3358, line: 47, baseType: !392, size: 16, offset: 80)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !709, file: !287, line: 476, baseType: !3365, size: 64, offset: 7104)
!3365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3366, size: 64)
!3366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !287, line: 378, size: 256, elements: !3367)
!3367 = !{!3368, !3379, !3380, !3381}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !3366, file: !287, line: 379, baseType: !3369, size: 64)
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !380, line: 204, baseType: !3371)
!3371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !380, line: 197, size: 192, elements: !3372)
!3372 = !{!3373, !3374, !3375, !3376, !3377, !3378}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !3371, file: !380, line: 198, baseType: !395, size: 32)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !3371, file: !380, line: 199, baseType: !385, size: 8, offset: 32)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !3371, file: !380, line: 200, baseType: !385, size: 8, offset: 40)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !3371, file: !380, line: 201, baseType: !389, size: 16, offset: 48)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !3371, file: !380, line: 202, baseType: !398, size: 64, offset: 64)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3371, file: !380, line: 203, baseType: !421, size: 64, offset: 128)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !3366, file: !287, line: 380, baseType: !13, size: 32, offset: 64)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !3366, file: !287, line: 381, baseType: !659, size: 64, offset: 128)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !3366, file: !287, line: 382, baseType: !659, size: 64, offset: 192)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !709, file: !287, line: 477, baseType: !3366, size: 256, offset: 7168)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !709, file: !287, line: 480, baseType: !3384, size: 64, offset: 7424)
!3384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3385, size: 64)
!3385 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !287, line: 480, flags: DIFlagFwdDecl)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !709, file: !287, line: 483, baseType: !3387, size: 64, offset: 7488)
!3387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3388, size: 64)
!3388 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !287, line: 483, flags: DIFlagFwdDecl)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !709, file: !287, line: 488, baseType: !659, size: 64, offset: 7552)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !709, file: !287, line: 492, baseType: !432, size: 64, offset: 7616)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !709, file: !287, line: 493, baseType: !13, size: 32, offset: 7680)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !709, file: !287, line: 495, baseType: !432, size: 64, offset: 7744)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !709, file: !287, line: 496, baseType: !13, size: 32, offset: 7808)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !709, file: !287, line: 499, baseType: !13, size: 32, offset: 7840)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !709, file: !287, line: 500, baseType: !3396, size: 64, offset: 7872)
!3396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3397, size: 64)
!3397 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !3398, line: 45, baseType: !3399)
!3398 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!3399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !709, file: !287, line: 503, baseType: !13, size: 32, offset: 7936)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !709, file: !287, line: 504, baseType: !3402, size: 64, offset: 8000)
!3402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3403, size: 64)
!3403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3404, size: 64)
!3404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !3405, line: 96, size: 192, elements: !3406)
!3405 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!3406 = !{!3407, !3408, !3451, !3454}
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !3404, file: !3405, line: 97, baseType: !13, size: 32)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !3404, file: !3405, line: 98, baseType: !3409, size: 64, offset: 64)
!3409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3410, size: 64)
!3410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !3405, line: 24, size: 3072, elements: !3411)
!3411 = !{!3412, !3414, !3415, !3416, !3417, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3448, !3449, !3450}
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !3410, file: !3405, line: 26, baseType: !3413, size: 128)
!3413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !860, size: 128, elements: !1910)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !3410, file: !3405, line: 27, baseType: !3413, size: 128, offset: 128)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !3410, file: !3405, line: 28, baseType: !93, size: 32, offset: 256)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3410, file: !3405, line: 31, baseType: !577, size: 32, align: 512, offset: 512)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !3410, file: !3405, line: 32, baseType: !3418, size: 960, offset: 576)
!3418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !3419, line: 206, size: 960, elements: !3420)
!3419 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!3420 = !{!3421, !3422, !3425, !3427, !3428, !3430}
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3418, file: !3419, line: 207, baseType: !850, size: 64)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !3418, file: !3419, line: 208, baseType: !3423, size: 256, offset: 64)
!3423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3424, size: 256, elements: !930)
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !3418, file: !3419, line: 209, baseType: !3426, size: 256, offset: 320)
!3426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !375, size: 256, elements: !930)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3418, file: !3419, line: 213, baseType: !446, size: 64, offset: 576)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !3418, file: !3419, line: 215, baseType: !3429, size: 256, offset: 640)
!3429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !446, size: 256, elements: !930)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3418, file: !3419, line: 216, baseType: !605, size: 8, offset: 896)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3410, file: !3405, line: 33, baseType: !375, size: 64, offset: 1536)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3410, file: !3405, line: 34, baseType: !375, size: 64, offset: 1600)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !3410, file: !3405, line: 35, baseType: !1683, size: 8, offset: 1664)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !3410, file: !3405, line: 36, baseType: !2360, size: 320, offset: 1728)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3410, file: !3405, line: 37, baseType: !1431, size: 256, offset: 2048)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !3410, file: !3405, line: 38, baseType: !847, size: 128, align: 64, offset: 2304)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !3410, file: !3405, line: 39, baseType: !3438, size: 64, offset: 2432)
!3438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3439, size: 64)
!3439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !3405, line: 49, size: 768, elements: !3440)
!3440 = !{!3441, !3442, !3443, !3444, !3445, !3446, !3447}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3439, file: !3405, line: 50, baseType: !577, size: 32)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !3439, file: !3405, line: 51, baseType: !3426, size: 256, offset: 64)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !3439, file: !3405, line: 53, baseType: !3426, size: 256, offset: 320)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3439, file: !3405, line: 54, baseType: !375, size: 64, offset: 576)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !3439, file: !3405, line: 55, baseType: !3438, size: 64, offset: 640)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !3439, file: !3405, line: 56, baseType: !93, size: 32, offset: 704)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !3439, file: !3405, line: 57, baseType: !93, size: 32, offset: 736)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !3410, file: !3405, line: 40, baseType: !375, size: 64, offset: 2496)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3410, file: !3405, line: 42, baseType: !93, size: 32, offset: 2560)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !3410, file: !3405, line: 43, baseType: !3403, size: 64, offset: 2624)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !3404, file: !3405, line: 99, baseType: !3452, offset: 128)
!3452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !3453, line: 211, elements: !1276)
!3453 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !3404, file: !3405, line: 100, baseType: !3455, size: 64, offset: 128)
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !3405, line: 63, size: 3008, elements: !3457)
!3457 = !{!3458, !3459, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3489}
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3456, file: !3405, line: 64, baseType: !3438, size: 64)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3456, file: !3405, line: 65, baseType: !3460, size: 192, offset: 64)
!3460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3438, size: 192, elements: !762)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !3456, file: !3405, line: 67, baseType: !93, size: 32, offset: 256)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !3456, file: !3405, line: 68, baseType: !869, size: 256, offset: 320)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3456, file: !3405, line: 69, baseType: !577, size: 32, offset: 576)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !3456, file: !3405, line: 70, baseType: !869, size: 256, offset: 640)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !3456, file: !3405, line: 71, baseType: !375, size: 64, offset: 896)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3456, file: !3405, line: 72, baseType: !375, size: 64, offset: 960)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3456, file: !3405, line: 73, baseType: !375, size: 64, offset: 1024)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !3456, file: !3405, line: 74, baseType: !375, size: 64, offset: 1088)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !3456, file: !3405, line: 75, baseType: !375, size: 64, offset: 1152)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !3456, file: !3405, line: 76, baseType: !375, size: 64, offset: 1216)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !3456, file: !3405, line: 77, baseType: !375, size: 64, offset: 1280)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !3456, file: !3405, line: 78, baseType: !375, size: 64, offset: 1344)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !3456, file: !3405, line: 79, baseType: !1683, size: 8, offset: 1408)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !3456, file: !3405, line: 80, baseType: !375, size: 64, offset: 1472)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !3456, file: !3405, line: 81, baseType: !869, size: 256, offset: 1536)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !3456, file: !3405, line: 82, baseType: !1544, size: 256, offset: 1792)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !3456, file: !3405, line: 84, baseType: !597, size: 32, offset: 2048)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !3456, file: !3405, line: 87, baseType: !375, size: 64, offset: 2112)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !3456, file: !3405, line: 88, baseType: !375, size: 64, offset: 2176)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3456, file: !3405, line: 89, baseType: !3481, size: 704, offset: 2240)
!3481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1432, line: 111, size: 704, elements: !3482)
!3482 = !{!3483, !3484, !3485, !3488}
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3481, file: !1432, line: 112, baseType: !1431, size: 256)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3481, file: !1432, line: 113, baseType: !2360, size: 320, offset: 256)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3481, file: !1432, line: 116, baseType: !3486, size: 64, offset: 576)
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 64)
!3487 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1432, line: 18, flags: DIFlagFwdDecl)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3481, file: !1432, line: 117, baseType: !93, size: 32, offset: 640)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !3456, file: !3405, line: 90, baseType: !3403, size: 64, offset: 2944)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !709, file: !287, line: 515, baseType: !3491, size: 64, offset: 8064)
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !3493, line: 117, size: 128, elements: !3494)
!3493 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!3494 = !{!3495, !3496, !3497}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !3492, file: !3493, line: 118, baseType: !1356, size: 32)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3492, file: !3493, line: 119, baseType: !1356, size: 32, offset: 32)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3492, file: !3493, line: 120, baseType: !446, size: 64, offset: 64)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !709, file: !287, line: 516, baseType: !13, size: 32, offset: 8128)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !709, file: !287, line: 519, baseType: !13, size: 32, offset: 8160)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !709, file: !287, line: 520, baseType: !3501, size: 64, offset: 8192)
!3501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !709, file: !287, line: 523, baseType: !3503, size: 64, offset: 8256)
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3504, size: 64)
!3504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3505, size: 64)
!3505 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !287, line: 523, flags: DIFlagFwdDecl)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !709, file: !287, line: 524, baseType: !13, size: 32, offset: 8320)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !709, file: !287, line: 525, baseType: !3508, size: 64, offset: 8384)
!3508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3509, size: 64)
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3510 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !287, line: 525, flags: DIFlagFwdDecl)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !709, file: !287, line: 526, baseType: !13, size: 32, offset: 8448)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !709, file: !287, line: 533, baseType: !432, size: 64, offset: 8512)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !709, file: !287, line: 534, baseType: !13, size: 32, offset: 8576)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !709, file: !287, line: 535, baseType: !3515, size: 64, offset: 8640)
!3515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !709, file: !287, line: 536, baseType: !13, size: 32, offset: 8704)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !709, file: !287, line: 539, baseType: !93, size: 32, offset: 8736)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !709, file: !287, line: 540, baseType: !3519, size: 64, offset: 8768)
!3519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3520, size: 64)
!3520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !3521, line: 32, size: 64, elements: !3522)
!3521 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!3522 = !{!3523, !3524}
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3520, file: !3521, line: 33, baseType: !1356, size: 32)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3520, file: !3521, line: 34, baseType: !1356, size: 32, offset: 32)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !709, file: !287, line: 563, baseType: !467, size: 128, offset: 8832)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !709, file: !287, line: 565, baseType: !467, size: 128, offset: 8960)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !709, file: !287, line: 568, baseType: !3528, size: 64, offset: 9088)
!3528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !709, file: !287, line: 570, baseType: !597, size: 32, offset: 9152)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !685, file: !342, line: 2382, baseType: !684, size: 64, offset: 448)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !685, file: !342, line: 2383, baseType: !921, size: 64, offset: 512)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !685, file: !342, line: 2385, baseType: !3533, offset: 576)
!3533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !3453, line: 206, elements: !1276)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !685, file: !342, line: 2386, baseType: !3533, offset: 576)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !685, file: !342, line: 2387, baseType: !3533, offset: 576)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !685, file: !342, line: 2388, baseType: !3537, offset: 576)
!3537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3533, elements: !762)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !685, file: !342, line: 2390, baseType: !3533, offset: 576)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !685, file: !342, line: 2391, baseType: !3533, offset: 576)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !685, file: !342, line: 2392, baseType: !3533, offset: 576)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !685, file: !342, line: 2393, baseType: !3533, offset: 576)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !671, file: !342, line: 1197, baseType: !3543, size: 64, offset: 384)
!3543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3544, size: 64)
!3544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3545)
!3545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !342, line: 2057, size: 1664, elements: !3546)
!3546 = !{!3547, !3551, !3555, !3556, !3560, !3566, !3570, !3571, !3572, !3576, !3580, !3584, !3585, !3586, !3592, !3596, !3597, !3601, !3602, !3603, !3604, !3608, !3612, !3659, !3674, !3675}
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !3545, file: !342, line: 2058, baseType: !3548, size: 64)
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3549 = !DISubroutineType(types: !3550)
!3550 = !{!484, !670}
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !3545, file: !342, line: 2059, baseType: !3552, size: 64, offset: 64)
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3553, size: 64)
!3553 = !DISubroutineType(types: !3554)
!3554 = !{null, !484}
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3545, file: !342, line: 2060, baseType: !3552, size: 64, offset: 128)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !3545, file: !342, line: 2062, baseType: !3557, size: 64, offset: 192)
!3557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3558, size: 64)
!3558 = !DISubroutineType(types: !3559)
!3559 = !{null, !484, !93}
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !3545, file: !342, line: 2063, baseType: !3561, size: 64, offset: 256)
!3561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3562, size: 64)
!3562 = !DISubroutineType(types: !3563)
!3563 = !{!93, !484, !3564}
!3564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3565, size: 64)
!3565 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !342, line: 309, flags: DIFlagFwdDecl)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !3545, file: !342, line: 2064, baseType: !3567, size: 64, offset: 320)
!3567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3568, size: 64)
!3568 = !DISubroutineType(types: !3569)
!3569 = !{!93, !484}
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !3545, file: !342, line: 2065, baseType: !3552, size: 64, offset: 384)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !3545, file: !342, line: 2066, baseType: !704, size: 64, offset: 448)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !3545, file: !342, line: 2067, baseType: !3573, size: 64, offset: 512)
!3573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3574, size: 64)
!3574 = !DISubroutineType(types: !3575)
!3575 = !{!93, !670, !93}
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !3545, file: !342, line: 2068, baseType: !3577, size: 64, offset: 576)
!3577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3578, size: 64)
!3578 = !DISubroutineType(types: !3579)
!3579 = !{!93, !670, !341}
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !3545, file: !342, line: 2069, baseType: !3581, size: 64, offset: 640)
!3581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3582, size: 64)
!3582 = !DISubroutineType(types: !3583)
!3583 = !{!93, !670}
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !3545, file: !342, line: 2070, baseType: !3577, size: 64, offset: 704)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !3545, file: !342, line: 2071, baseType: !3581, size: 64, offset: 768)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !3545, file: !342, line: 2072, baseType: !3587, size: 64, offset: 832)
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3588, size: 64)
!3588 = !DISubroutineType(types: !3589)
!3589 = !{!93, !520, !3590}
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3591, size: 64)
!3591 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !342, line: 62, flags: DIFlagFwdDecl)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !3545, file: !342, line: 2073, baseType: !3593, size: 64, offset: 896)
!3593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3594, size: 64)
!3594 = !DISubroutineType(types: !3595)
!3595 = !{!93, !670, !1555, !659}
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !3545, file: !342, line: 2074, baseType: !704, size: 64, offset: 960)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3545, file: !342, line: 2076, baseType: !3598, size: 64, offset: 1024)
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3599, size: 64)
!3599 = !DISubroutineType(types: !3600)
!3600 = !{!93, !3005, !520}
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !3545, file: !342, line: 2077, baseType: !3598, size: 64, offset: 1088)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3545, file: !342, line: 2078, baseType: !3598, size: 64, offset: 1152)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !3545, file: !342, line: 2079, baseType: !3598, size: 64, offset: 1216)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !3545, file: !342, line: 2081, baseType: !3605, size: 64, offset: 1280)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = !DISubroutineType(types: !3607)
!3607 = !{!793, !670, !93, !659, !439, !680}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !3545, file: !342, line: 2082, baseType: !3609, size: 64, offset: 1344)
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3610, size: 64)
!3610 = !DISubroutineType(types: !3611)
!3611 = !{!793, !670, !93, !447, !439, !680}
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !3545, file: !342, line: 2083, baseType: !3613, size: 64, offset: 1408)
!3613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3614, size: 64)
!3614 = !DISubroutineType(types: !3615)
!3615 = !{!3616, !484}
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 64)
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3618, size: 64)
!3618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !347, line: 296, size: 1664, elements: !3619)
!3619 = !{!3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3644, !3645, !3646}
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !3618, file: !347, line: 297, baseType: !925, size: 128)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !3618, file: !347, line: 298, baseType: !467, size: 128, offset: 128)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !3618, file: !347, line: 299, baseType: !467, size: 128, offset: 256)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !3618, file: !347, line: 300, baseType: !467, size: 128, offset: 384)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !3618, file: !347, line: 301, baseType: !869, size: 256, offset: 512)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !3618, file: !347, line: 302, baseType: !577, size: 32, offset: 768)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !3618, file: !347, line: 303, baseType: !597, size: 32, offset: 800)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !3618, file: !347, line: 304, baseType: !670, size: 64, offset: 832)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !3618, file: !347, line: 305, baseType: !3629, size: 64, offset: 896)
!3629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !347, line: 68, size: 64, elements: !3630)
!3630 = !{!3631, !3643}
!3631 = !DIDerivedType(tag: DW_TAG_member, scope: !3629, file: !347, line: 69, baseType: !3632, size: 32)
!3632 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3629, file: !347, line: 69, size: 32, elements: !3633)
!3633 = !{!3634, !3635, !3636}
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3632, file: !347, line: 70, baseType: !491, size: 32)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3632, file: !347, line: 71, baseType: !500, size: 32)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !3632, file: !347, line: 72, baseType: !3637, size: 32)
!3637 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !3638, line: 24, baseType: !3639)
!3638 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!3639 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3638, line: 22, size: 32, elements: !3640)
!3640 = !{!3641}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3639, file: !3638, line: 23, baseType: !3642, size: 32)
!3642 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !3638, line: 20, baseType: !497)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3629, file: !347, line: 74, baseType: !346, size: 32, offset: 32)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !3618, file: !347, line: 306, baseType: !680, size: 64, offset: 960)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !3618, file: !347, line: 307, baseType: !375, size: 64, offset: 1024)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !3618, file: !347, line: 308, baseType: !3647, size: 576, offset: 1088)
!3647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !347, line: 205, size: 576, elements: !3648)
!3648 = !{!3649, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !3647, file: !347, line: 206, baseType: !3650, size: 64)
!3650 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !347, line: 66, baseType: !682)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !3647, file: !347, line: 207, baseType: !3650, size: 64, offset: 64)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !3647, file: !347, line: 208, baseType: !3650, size: 64, offset: 128)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !3647, file: !347, line: 209, baseType: !3650, size: 64, offset: 192)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !3647, file: !347, line: 210, baseType: !3650, size: 64, offset: 256)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !3647, file: !347, line: 211, baseType: !3650, size: 64, offset: 320)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !3647, file: !347, line: 212, baseType: !3650, size: 64, offset: 384)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !3647, file: !347, line: 213, baseType: !1641, size: 64, offset: 448)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !3647, file: !347, line: 214, baseType: !1641, size: 64, offset: 512)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !3545, file: !342, line: 2085, baseType: !3660, size: 64, offset: 1472)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = !DISubroutineType(types: !3662)
!3662 = !{!446, !670, !3663}
!3663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3664, size: 64)
!3664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !3665, line: 15, size: 256, elements: !3666)
!3665 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!3666 = !{!3667, !3668, !3669, !3670, !3671}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !3664, file: !3665, line: 16, baseType: !445, size: 32)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !3664, file: !3665, line: 19, baseType: !93, size: 32, offset: 32)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !3664, file: !3665, line: 26, baseType: !375, size: 64, offset: 64)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !3664, file: !3665, line: 33, baseType: !375, size: 64, offset: 128)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !3664, file: !3665, line: 36, baseType: !3672, size: 64, offset: 192)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !320, line: 33, flags: DIFlagFwdDecl)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !3545, file: !342, line: 2087, baseType: !3660, size: 64, offset: 1536)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3545, file: !342, line: 2089, baseType: !704, size: 64, offset: 1600)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !671, file: !342, line: 1198, baseType: !3677, size: 64, offset: 448)
!3677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3678, size: 64)
!3678 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3679)
!3679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !347, line: 324, size: 704, elements: !3680)
!3680 = !{!3681, !3685, !3689, !3693, !3694, !3695, !3696, !3697, !3702, !3707, !3711}
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !3679, file: !347, line: 325, baseType: !3682, size: 64)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{!93, !3617}
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !3679, file: !347, line: 326, baseType: !3686, size: 64, offset: 64)
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3687 = !DISubroutineType(types: !3688)
!3688 = !{!3617, !670, !93}
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !3679, file: !347, line: 327, baseType: !3690, size: 64, offset: 128)
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3691, size: 64)
!3691 = !DISubroutineType(types: !3692)
!3692 = !{null, !3617}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !3679, file: !347, line: 328, baseType: !3682, size: 64, offset: 192)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !3679, file: !347, line: 329, baseType: !3682, size: 64, offset: 256)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !3679, file: !347, line: 330, baseType: !3682, size: 64, offset: 320)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !3679, file: !347, line: 331, baseType: !3573, size: 64, offset: 384)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !3679, file: !347, line: 334, baseType: !3698, size: 64, offset: 448)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = !DISubroutineType(types: !3700)
!3700 = !{!3701, !484}
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3650, size: 64)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !3679, file: !347, line: 335, baseType: !3703, size: 64, offset: 512)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DISubroutineType(types: !3705)
!3705 = !{!93, !484, !3706}
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3637, size: 64)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !3679, file: !347, line: 337, baseType: !3708, size: 64, offset: 576)
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3709 = !DISubroutineType(types: !3710)
!3710 = !{!93, !484, !3701}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3679, file: !347, line: 339, baseType: !3712, size: 64, offset: 640)
!3712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3713, size: 64)
!3713 = !DISubroutineType(types: !3714)
!3714 = !{!93, !670, !3715}
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3629, size: 64)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !671, file: !342, line: 1199, baseType: !3717, size: 64, offset: 512)
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3719)
!3719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !347, line: 430, size: 704, elements: !3720)
!3720 = !{!3721, !3727, !3728, !3732, !3733, !3734, !3749, !3772, !3776, !3777, !3800}
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !3719, file: !347, line: 431, baseType: !3722, size: 64)
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = !DISubroutineType(types: !3724)
!3724 = !{!93, !670, !93, !93, !3725}
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2653)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !3719, file: !347, line: 432, baseType: !3573, size: 64, offset: 64)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !3719, file: !347, line: 433, baseType: !3729, size: 64, offset: 128)
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{!93, !670, !13}
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !3719, file: !347, line: 434, baseType: !3729, size: 64, offset: 192)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !3719, file: !347, line: 435, baseType: !3573, size: 64, offset: 256)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !3719, file: !347, line: 436, baseType: !3735, size: 64, offset: 320)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = !DISubroutineType(types: !3737)
!3737 = !{!93, !670, !93, !3738}
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !347, line: 417, size: 256, elements: !3740)
!3740 = !{!3741, !3742, !3743, !3744, !3745, !3746, !3747, !3748}
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !3739, file: !347, line: 418, baseType: !93, size: 32)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !3739, file: !347, line: 419, baseType: !13, size: 32, offset: 32)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !3739, file: !347, line: 420, baseType: !13, size: 32, offset: 64)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !3739, file: !347, line: 422, baseType: !13, size: 32, offset: 96)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !3739, file: !347, line: 423, baseType: !13, size: 32, offset: 128)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !3739, file: !347, line: 424, baseType: !13, size: 32, offset: 160)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !3739, file: !347, line: 425, baseType: !13, size: 32, offset: 192)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !3739, file: !347, line: 426, baseType: !13, size: 32, offset: 224)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !3719, file: !347, line: 437, baseType: !3750, size: 64, offset: 384)
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!3751 = !DISubroutineType(types: !3752)
!3752 = !{!93, !670, !3629, !3753}
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !347, line: 345, size: 960, elements: !3755)
!3755 = !{!3756, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771}
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !3754, file: !347, line: 346, baseType: !93, size: 32)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !3754, file: !347, line: 347, baseType: !556, size: 64, offset: 64)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !3754, file: !347, line: 348, baseType: !556, size: 64, offset: 128)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !3754, file: !347, line: 349, baseType: !556, size: 64, offset: 192)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !3754, file: !347, line: 350, baseType: !556, size: 64, offset: 256)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !3754, file: !347, line: 351, baseType: !556, size: 64, offset: 320)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !3754, file: !347, line: 352, baseType: !556, size: 64, offset: 384)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !3754, file: !347, line: 353, baseType: !866, size: 64, offset: 448)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !3754, file: !347, line: 355, baseType: !866, size: 64, offset: 512)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !3754, file: !347, line: 356, baseType: !93, size: 32, offset: 576)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !3754, file: !347, line: 357, baseType: !93, size: 32, offset: 608)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !3754, file: !347, line: 358, baseType: !556, size: 64, offset: 640)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !3754, file: !347, line: 359, baseType: !556, size: 64, offset: 704)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !3754, file: !347, line: 360, baseType: !556, size: 64, offset: 768)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !3754, file: !347, line: 361, baseType: !866, size: 64, offset: 832)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !3754, file: !347, line: 362, baseType: !93, size: 32, offset: 896)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !3719, file: !347, line: 438, baseType: !3773, size: 64, offset: 448)
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3774 = !DISubroutineType(types: !3775)
!3775 = !{!93, !670, !3715, !3753}
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !3719, file: !347, line: 440, baseType: !3750, size: 64, offset: 512)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !3719, file: !347, line: 441, baseType: !3778, size: 64, offset: 576)
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3779 = !DISubroutineType(types: !3780)
!3780 = !{!93, !670, !3781}
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !347, line: 411, size: 1408, elements: !3783)
!3783 = !{!3784, !3785}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !3782, file: !347, line: 412, baseType: !13, size: 32)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !3782, file: !347, line: 413, baseType: !3786, size: 1344, offset: 64)
!3786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3787, size: 1344, elements: !762)
!3787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !347, line: 397, size: 448, elements: !3788)
!3788 = !{!3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3799}
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3787, file: !347, line: 398, baseType: !13, size: 32)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !3787, file: !347, line: 399, baseType: !13, size: 32, offset: 32)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !3787, file: !347, line: 401, baseType: !13, size: 32, offset: 64)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !3787, file: !347, line: 402, baseType: !13, size: 32, offset: 96)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !3787, file: !347, line: 403, baseType: !13, size: 32, offset: 128)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !3787, file: !347, line: 404, baseType: !13, size: 32, offset: 160)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !3787, file: !347, line: 405, baseType: !13, size: 32, offset: 192)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3787, file: !347, line: 406, baseType: !400, size: 64, offset: 256)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3787, file: !347, line: 407, baseType: !3798, size: 64, offset: 320)
!3798 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !440, line: 132, baseType: !556)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !3787, file: !347, line: 408, baseType: !3798, size: 64, offset: 384)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !3719, file: !347, line: 442, baseType: !3729, size: 64, offset: 640)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !671, file: !342, line: 1200, baseType: !3802, size: 64, offset: 576)
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3804)
!3804 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !342, line: 54, flags: DIFlagFwdDecl)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !671, file: !342, line: 1201, baseType: !375, size: 64, offset: 640)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !671, file: !342, line: 1202, baseType: !375, size: 64, offset: 704)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !671, file: !342, line: 1203, baseType: !375, size: 64, offset: 768)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !671, file: !342, line: 1204, baseType: !520, size: 64, offset: 832)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !671, file: !342, line: 1205, baseType: !1310, size: 320, offset: 896)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !671, file: !342, line: 1206, baseType: !93, size: 32, offset: 1216)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !671, file: !342, line: 1207, baseType: !597, size: 32, offset: 1248)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !671, file: !342, line: 1209, baseType: !432, size: 64, offset: 1280)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !671, file: !342, line: 1211, baseType: !3814, size: 64, offset: 1344)
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3817)
!3817 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !342, line: 1211, flags: DIFlagFwdDecl)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !671, file: !342, line: 1223, baseType: !3819, size: 64, offset: 1408)
!3819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !537, line: 34, size: 64, elements: !3820)
!3820 = !{!3821}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3819, file: !537, line: 35, baseType: !540, size: 64)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !671, file: !342, line: 1224, baseType: !467, size: 128, offset: 1472)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !671, file: !342, line: 1225, baseType: !3824, size: 64, offset: 1600)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !342, line: 1225, flags: DIFlagFwdDecl)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !671, file: !342, line: 1226, baseType: !3827, size: 64, offset: 1664)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !342, line: 1226, flags: DIFlagFwdDecl)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !671, file: !342, line: 1227, baseType: !3830, size: 64, offset: 1728)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !342, line: 50, flags: DIFlagFwdDecl)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !671, file: !342, line: 1228, baseType: !3833, size: 64, offset: 1792)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !342, line: 1228, flags: DIFlagFwdDecl)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !671, file: !342, line: 1229, baseType: !925, size: 128, offset: 1856)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !671, file: !342, line: 1230, baseType: !13, size: 32, offset: 1984)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !671, file: !342, line: 1231, baseType: !3838, size: 2496, offset: 2048)
!3838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !347, line: 521, size: 2496, elements: !3839)
!3839 = !{!3840, !3841, !3842, !3844, !3876}
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3838, file: !347, line: 522, baseType: !13, size: 32)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3838, file: !347, line: 523, baseType: !1310, size: 320, offset: 64)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3838, file: !347, line: 524, baseType: !3843, size: 192, offset: 384)
!3843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !484, size: 192, elements: !762)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3838, file: !347, line: 525, baseType: !3845, size: 1728, offset: 576)
!3845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3846, size: 1728, elements: !762)
!3846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !347, line: 222, size: 576, elements: !3847)
!3847 = !{!3848, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3846, file: !347, line: 223, baseType: !3849, size: 64)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !347, line: 445, size: 256, elements: !3851)
!3851 = !{!3852, !3853, !3866, !3867}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3850, file: !347, line: 446, baseType: !93, size: 32)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3850, file: !347, line: 447, baseType: !3854, size: 64, offset: 64)
!3854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3855, size: 64)
!3855 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3856)
!3856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !347, line: 312, size: 512, elements: !3857)
!3857 = !{!3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865}
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3856, file: !347, line: 313, baseType: !3573, size: 64)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3856, file: !347, line: 314, baseType: !3573, size: 64, offset: 64)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3856, file: !347, line: 315, baseType: !3573, size: 64, offset: 128)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3856, file: !347, line: 316, baseType: !3573, size: 64, offset: 192)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3856, file: !347, line: 317, baseType: !3682, size: 64, offset: 256)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3856, file: !347, line: 318, baseType: !3682, size: 64, offset: 320)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3856, file: !347, line: 319, baseType: !3682, size: 64, offset: 384)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3856, file: !347, line: 320, baseType: !3712, size: 64, offset: 448)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3850, file: !347, line: 448, baseType: !708, size: 64, offset: 128)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3850, file: !347, line: 449, baseType: !3849, size: 64, offset: 192)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3846, file: !347, line: 224, baseType: !93, size: 32, offset: 64)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3846, file: !347, line: 226, baseType: !467, size: 128, offset: 128)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3846, file: !347, line: 227, baseType: !375, size: 64, offset: 256)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3846, file: !347, line: 228, baseType: !13, size: 32, offset: 320)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3846, file: !347, line: 229, baseType: !13, size: 32, offset: 352)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3846, file: !347, line: 230, baseType: !3650, size: 64, offset: 384)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3846, file: !347, line: 231, baseType: !3650, size: 64, offset: 448)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3846, file: !347, line: 232, baseType: !432, size: 64, offset: 512)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3838, file: !347, line: 526, baseType: !3877, size: 192, offset: 2304)
!3877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3854, size: 192, elements: !762)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !671, file: !342, line: 1233, baseType: !3879, size: 2368, offset: 4544)
!3879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !342, line: 1184, size: 2368, elements: !3880)
!3880 = !{!3881, !3882, !3883}
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3879, file: !342, line: 1185, baseType: !392, size: 16)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3879, file: !342, line: 1186, baseType: !392, size: 16, offset: 16)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3879, file: !342, line: 1187, baseType: !3884, size: 2304, offset: 64)
!3884 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3885, size: 2304, elements: !762)
!3885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3886, line: 12, size: 768, elements: !3887)
!3886 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3887 = !{!3888, !3896, !3897, !3902, !3903}
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3885, file: !3886, line: 13, baseType: !3889, size: 384)
!3889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3890, line: 17, size: 384, elements: !3891)
!3890 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3891 = !{!3892, !3893, !3894, !3895}
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3889, file: !3890, line: 18, baseType: !93, size: 32)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3889, file: !3890, line: 19, baseType: !93, size: 32, offset: 32)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3889, file: !3890, line: 20, baseType: !934, size: 192, offset: 64)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3889, file: !3890, line: 22, baseType: !847, size: 128, align: 64, offset: 256)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3885, file: !3886, line: 14, baseType: !3295, size: 64, offset: 384)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3885, file: !3886, line: 15, baseType: !3898, size: 64, offset: 448)
!3898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3899, line: 16, size: 64, elements: !3900)
!3899 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3900 = !{!3901}
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3898, file: !3899, line: 17, baseType: !967, size: 64)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3885, file: !3886, line: 16, baseType: !934, size: 192, offset: 512)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3885, file: !3886, line: 17, baseType: !597, size: 32, offset: 704)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !671, file: !342, line: 1240, baseType: !432, size: 64, offset: 6912)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !671, file: !342, line: 1243, baseType: !428, size: 32, offset: 6976)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !671, file: !342, line: 1245, baseType: !1641, size: 64, offset: 7040)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !671, file: !342, line: 1246, baseType: !1641, size: 64, offset: 7104)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !671, file: !342, line: 1248, baseType: !396, size: 32, offset: 7168)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !671, file: !342, line: 1249, baseType: !3910, size: 64, offset: 7232)
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3911 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !342, line: 634, flags: DIFlagFwdDecl)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !671, file: !342, line: 1252, baseType: !3913, size: 256, offset: 7296)
!3913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !563)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !671, file: !342, line: 1253, baseType: !3915, size: 128, offset: 7552)
!3915 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3916, line: 21, baseType: !3917)
!3916 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3917 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3916, line: 19, size: 128, elements: !3918)
!3918 = !{!3919}
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3917, file: !3916, line: 20, baseType: !3920, size: 128)
!3920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !606, size: 128, elements: !386)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !671, file: !342, line: 1255, baseType: !13, size: 32, offset: 7680)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !671, file: !342, line: 1261, baseType: !869, size: 256, offset: 7744)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !671, file: !342, line: 1267, baseType: !447, size: 64, offset: 8000)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !671, file: !342, line: 1269, baseType: !616, size: 64, offset: 8064)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !671, file: !342, line: 1271, baseType: !3926, size: 448, offset: 8128)
!3926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !3665, line: 63, size: 448, elements: !3927)
!3927 = !{!3928, !3933, !3934, !3935, !3936, !3937, !3938}
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3926, file: !3665, line: 64, baseType: !3929, size: 64)
!3929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3930, size: 64)
!3930 = !DISubroutineType(types: !3931)
!3931 = !{!375, !3932, !3663}
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3926, size: 64)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3926, file: !3665, line: 66, baseType: !3929, size: 64, offset: 64)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3926, file: !3665, line: 69, baseType: !446, size: 64, offset: 128)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3926, file: !3665, line: 70, baseType: !93, size: 32, offset: 192)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3926, file: !3665, line: 71, baseType: !13, size: 32, offset: 224)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3926, file: !3665, line: 74, baseType: !467, size: 128, offset: 256)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3926, file: !3665, line: 85, baseType: !3939, size: 64, offset: 384)
!3939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !671, file: !342, line: 1274, baseType: !860, size: 64, offset: 8576)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !671, file: !342, line: 1280, baseType: !860, size: 64, offset: 8640)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !671, file: !342, line: 1283, baseType: !93, size: 32, offset: 8704)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !671, file: !342, line: 1286, baseType: !3033, size: 32, offset: 8736)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !671, file: !342, line: 1289, baseType: !3486, size: 64, offset: 8768)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !671, file: !342, line: 1290, baseType: !921, size: 64, offset: 8832)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !671, file: !342, line: 1297, baseType: !1415, size: 64, offset: 8896)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !671, file: !342, line: 1304, baseType: !3948, size: 64, offset: 8960)
!3948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3949, line: 49, size: 64, elements: !3950)
!3949 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3950 = !{!3951}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3948, file: !3949, line: 50, baseType: !3952, size: 64)
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3949, line: 41, size: 512, align: 512, elements: !3954)
!3954 = !{!3955, !3956, !3961}
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3953, file: !3949, line: 43, baseType: !577, size: 32)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3953, file: !3949, line: 45, baseType: !3957, size: 192, offset: 64)
!3957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3949, line: 29, size: 192, elements: !3958)
!3958 = !{!3959, !3960}
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3957, file: !3949, line: 30, baseType: !467, size: 128)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3957, file: !3949, line: 32, baseType: !446, size: 64, offset: 128)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3953, file: !3949, line: 46, baseType: !446, size: 64, offset: 256)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !671, file: !342, line: 1305, baseType: !3948, size: 64, offset: 9024)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !671, file: !342, line: 1306, baseType: !847, size: 128, align: 64, offset: 9088)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !671, file: !342, line: 1307, baseType: !1431, size: 256, offset: 9216)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !671, file: !342, line: 1309, baseType: !869, size: 256, offset: 9472)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !671, file: !342, line: 1314, baseType: !93, size: 32, offset: 9728)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !671, file: !342, line: 1317, baseType: !577, size: 32, align: 512, offset: 10240)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !671, file: !342, line: 1318, baseType: !467, size: 128, offset: 10304)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !671, file: !342, line: 1320, baseType: !577, size: 32, offset: 10432)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !671, file: !342, line: 1321, baseType: !467, size: 128, offset: 10496)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !665, file: !666, line: 73, baseType: !93, size: 32, offset: 128)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !665, file: !666, line: 74, baseType: !3973, size: 64, offset: 192)
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3974, size: 64)
!3974 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1609, line: 42, flags: DIFlagFwdDecl)
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !618, file: !522, line: 141, baseType: !3977, size: 64, offset: 704)
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!3978 = !DISubroutineType(types: !3979)
!3979 = !{!93, !3725, !1683}
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !618, file: !522, line: 142, baseType: !3981, size: 64, offset: 768)
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3982, size: 64)
!3982 = !DISubroutineType(types: !3983)
!3983 = !{!520, !520, !3984}
!3984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3985, size: 64)
!3985 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !485)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !521, file: !522, line: 96, baseType: !670, size: 64, offset: 832)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !521, file: !522, line: 97, baseType: !375, size: 64, offset: 896)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !521, file: !522, line: 98, baseType: !432, size: 64, offset: 960)
!3989 = !DIDerivedType(tag: DW_TAG_member, scope: !521, file: !522, line: 100, baseType: !3990, size: 128, offset: 1024)
!3990 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !521, file: !522, line: 100, size: 128, elements: !3991)
!3991 = !{!3992, !3993}
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3990, file: !522, line: 101, baseType: !467, size: 128)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3990, file: !522, line: 102, baseType: !3994, size: 64)
!3994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !521, file: !522, line: 104, baseType: !467, size: 128, offset: 1152)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !521, file: !522, line: 105, baseType: !467, size: 128, offset: 1280)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !521, file: !522, line: 113, baseType: !3998, size: 128, offset: 1408)
!3998 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !521, file: !522, line: 109, size: 128, elements: !3999)
!3999 = !{!4000, !4001, !4002}
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3998, file: !522, line: 110, baseType: !925, size: 128)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3998, file: !522, line: 111, baseType: !536, size: 128)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3998, file: !522, line: 112, baseType: !847, size: 128, align: 64)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !514, file: !342, line: 1968, baseType: !4004, size: 64, offset: 64)
!4004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4005, size: 64)
!4005 = !DISubroutineType(types: !4006)
!4006 = !{!447, !520, !484, !4007}
!4007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4008, size: 64)
!4008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4009, line: 10, size: 128, elements: !4010)
!4009 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4010 = !{!4011, !4012}
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4008, file: !4009, line: 11, baseType: !3074, size: 64)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4008, file: !4009, line: 12, baseType: !432, size: 64, offset: 64)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !514, file: !342, line: 1969, baseType: !4014, size: 64, offset: 128)
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4015, size: 64)
!4015 = !DISubroutineType(types: !4016)
!4016 = !{!93, !3973, !484, !93}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !514, file: !342, line: 1970, baseType: !4018, size: 64, offset: 192)
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4019 = !DISubroutineType(types: !4020)
!4020 = !{!508, !484, !93, !1683}
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !514, file: !342, line: 1972, baseType: !4022, size: 64, offset: 256)
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4023, size: 64)
!4023 = !DISubroutineType(types: !4024)
!4024 = !{!93, !520, !659, !93}
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !514, file: !342, line: 1974, baseType: !4026, size: 64, offset: 320)
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4027 = !DISubroutineType(types: !4028)
!4028 = !{!93, !3973, !484, !520, !488, !1683}
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !514, file: !342, line: 1976, baseType: !4030, size: 64, offset: 384)
!4030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4031, size: 64)
!4031 = !DISubroutineType(types: !4032)
!4032 = !{!93, !520, !484, !520}
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !514, file: !342, line: 1977, baseType: !4034, size: 64, offset: 448)
!4034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4035, size: 64)
!4035 = !DISubroutineType(types: !4036)
!4036 = !{!93, !484, !520}
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !514, file: !342, line: 1978, baseType: !4038, size: 64, offset: 512)
!4038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4039, size: 64)
!4039 = !DISubroutineType(types: !4040)
!4040 = !{!93, !3973, !484, !520, !447}
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !514, file: !342, line: 1980, baseType: !4042, size: 64, offset: 576)
!4042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4043, size: 64)
!4043 = !DISubroutineType(types: !4044)
!4044 = !{!93, !3973, !484, !520, !488}
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !514, file: !342, line: 1982, baseType: !4034, size: 64, offset: 640)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !514, file: !342, line: 1983, baseType: !4047, size: 64, offset: 704)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4048 = !DISubroutineType(types: !4049)
!4049 = !{!93, !3973, !484, !520, !488, !675}
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !514, file: !342, line: 1985, baseType: !4051, size: 64, offset: 768)
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4052, size: 64)
!4052 = !DISubroutineType(types: !4053)
!4053 = !{!93, !3973, !484, !520, !484, !520, !13}
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !514, file: !342, line: 1987, baseType: !4055, size: 64, offset: 832)
!4055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4056, size: 64)
!4056 = !DISubroutineType(types: !4057)
!4057 = !{!93, !3973, !520, !4058}
!4058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4059, size: 64)
!4059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !342, line: 226, size: 640, elements: !4060)
!4060 = !{!4061, !4062, !4063, !4073, !4082, !4083, !4088, !4089, !4090}
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !4059, file: !342, line: 227, baseType: !13, size: 32)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !4059, file: !342, line: 228, baseType: !488, size: 16, offset: 32)
!4063 = !DIDerivedType(tag: DW_TAG_member, scope: !4059, file: !342, line: 241, baseType: !4064, size: 32, offset: 64)
!4064 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4059, file: !342, line: 241, size: 32, elements: !4065)
!4065 = !{!4066, !4067}
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !4064, file: !342, line: 242, baseType: !491, size: 32)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !4064, file: !342, line: 243, baseType: !4068, size: 32)
!4068 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !4069, line: 16, baseType: !4070)
!4069 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!4070 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4069, line: 14, size: 32, elements: !4071)
!4071 = !{!4072}
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4070, file: !4069, line: 15, baseType: !496, size: 32)
!4073 = !DIDerivedType(tag: DW_TAG_member, scope: !4059, file: !342, line: 245, baseType: !4074, size: 32, offset: 96)
!4074 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4059, file: !342, line: 245, size: 32, elements: !4075)
!4075 = !{!4076, !4077}
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !4074, file: !342, line: 246, baseType: !500, size: 32)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !4074, file: !342, line: 247, baseType: !4078, size: 32)
!4078 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !4069, line: 20, baseType: !4079)
!4079 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4069, line: 18, size: 32, elements: !4080)
!4080 = !{!4081}
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4079, file: !4069, line: 19, baseType: !504, size: 32)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !4059, file: !342, line: 249, baseType: !680, size: 64, offset: 128)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !4059, file: !342, line: 250, baseType: !4084, size: 128, offset: 192)
!4084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1642, line: 13, size: 128, elements: !4085)
!4085 = !{!4086, !4087}
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4084, file: !1642, line: 14, baseType: !1641, size: 64)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4084, file: !1642, line: 15, baseType: !446, size: 64, offset: 64)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !4059, file: !342, line: 251, baseType: !4084, size: 128, offset: 320)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !4059, file: !342, line: 252, baseType: !4084, size: 128, offset: 448)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !4059, file: !342, line: 259, baseType: !834, size: 64, offset: 576)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !514, file: !342, line: 1988, baseType: !4092, size: 64, offset: 896)
!4092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4093, size: 64)
!4093 = !DISubroutineType(types: !4094)
!4094 = !{!93, !3973, !3725, !4095, !428, !13}
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4096, size: 64)
!4096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4097, line: 22, size: 1280, elements: !4098)
!4097 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!4098 = !{!4099, !4100, !4101, !4102, !4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4119}
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4096, file: !4097, line: 23, baseType: !428, size: 32)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4096, file: !4097, line: 24, baseType: !488, size: 16, offset: 32)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4096, file: !4097, line: 25, baseType: !13, size: 32, offset: 64)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4096, file: !4097, line: 26, baseType: !1649, size: 32, offset: 96)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4096, file: !4097, line: 27, baseType: !556, size: 64, offset: 128)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4096, file: !4097, line: 28, baseType: !556, size: 64, offset: 192)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4096, file: !4097, line: 41, baseType: !556, size: 64, offset: 256)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4096, file: !4097, line: 42, baseType: !675, size: 32, offset: 320)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4096, file: !4097, line: 43, baseType: !675, size: 32, offset: 352)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4096, file: !4097, line: 44, baseType: !491, size: 32, offset: 384)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4096, file: !4097, line: 45, baseType: !500, size: 32, offset: 416)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4096, file: !4097, line: 46, baseType: !680, size: 64, offset: 448)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4096, file: !4097, line: 47, baseType: !4084, size: 128, offset: 512)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4096, file: !4097, line: 48, baseType: !4084, size: 128, offset: 640)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4096, file: !4097, line: 49, baseType: !4084, size: 128, offset: 768)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4096, file: !4097, line: 50, baseType: !4084, size: 128, offset: 896)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4096, file: !4097, line: 51, baseType: !556, size: 64, offset: 1024)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4096, file: !4097, line: 52, baseType: !556, size: 64, offset: 1088)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !4096, file: !4097, line: 53, baseType: !428, size: 32, offset: 1152)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !4096, file: !4097, line: 54, baseType: !428, size: 32, offset: 1184)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !4096, file: !4097, line: 55, baseType: !556, size: 64, offset: 1216)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !514, file: !342, line: 1990, baseType: !4121, size: 64, offset: 960)
!4121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4122, size: 64)
!4122 = !DISubroutineType(types: !4123)
!4123 = !{!793, !520, !659, !439}
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !514, file: !342, line: 1991, baseType: !4125, size: 64, offset: 1024)
!4125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4126, size: 64)
!4126 = !DISubroutineType(types: !4127)
!4127 = !{!93, !484, !4128, !556, !556}
!4128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4129, size: 64)
!4129 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !342, line: 55, flags: DIFlagFwdDecl)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !514, file: !342, line: 1993, baseType: !4131, size: 64, offset: 1088)
!4131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4132, size: 64)
!4132 = !DISubroutineType(types: !4133)
!4133 = !{!93, !484, !93}
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !514, file: !342, line: 1994, baseType: !4135, size: 64, offset: 1152)
!4135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4136, size: 64)
!4136 = !DISubroutineType(types: !4137)
!4137 = !{!93, !484, !520, !834, !13, !488}
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !514, file: !342, line: 1997, baseType: !4139, size: 64, offset: 1216)
!4139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4140, size: 64)
!4140 = !DISubroutineType(types: !4141)
!4141 = !{!93, !3973, !484, !834, !488}
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !514, file: !342, line: 1999, baseType: !4143, size: 64, offset: 1280)
!4143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4144, size: 64)
!4144 = !DISubroutineType(types: !4145)
!4145 = !{!508, !3973, !520, !93}
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !514, file: !342, line: 2001, baseType: !4147, size: 64, offset: 1344)
!4147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4148, size: 64)
!4148 = !DISubroutineType(types: !4149)
!4149 = !{!93, !3973, !520, !508, !93}
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !514, file: !342, line: 2003, baseType: !4151, size: 64, offset: 1408)
!4151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4152, size: 64)
!4152 = !DISubroutineType(types: !4153)
!4153 = !{!93, !3973, !520, !4154}
!4154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4155, size: 64)
!4155 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !342, line: 76, flags: DIFlagFwdDecl)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !514, file: !342, line: 2005, baseType: !4157, size: 64, offset: 1472)
!4157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4158, size: 64)
!4158 = !DISubroutineType(types: !4159)
!4159 = !{!93, !520, !4154}
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !514, file: !342, line: 2006, baseType: !4161, size: 64, offset: 1536)
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4162, size: 64)
!4162 = !DISubroutineType(types: !4163)
!4163 = !{!4164, !484}
!4164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4165, size: 64)
!4165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !342, line: 3192, size: 192, elements: !4166)
!4166 = !{!4167, !4168}
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4165, file: !342, line: 3193, baseType: !956, size: 128)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4165, file: !342, line: 3194, baseType: !428, size: 32, offset: 128)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !485, file: !342, line: 655, baseType: !670, size: 64, offset: 448)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !485, file: !342, line: 656, baseType: !480, size: 64, offset: 512)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !485, file: !342, line: 659, baseType: !432, size: 64, offset: 576)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !485, file: !342, line: 663, baseType: !375, size: 64, offset: 640)
!4173 = !DIDerivedType(tag: DW_TAG_member, scope: !485, file: !342, line: 671, baseType: !4174, size: 32, offset: 704)
!4174 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !485, file: !342, line: 671, size: 32, elements: !4175)
!4175 = !{!4176, !4178}
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4174, file: !342, line: 672, baseType: !4177, size: 32)
!4177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4174, file: !342, line: 673, baseType: !13, size: 32)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !485, file: !342, line: 675, baseType: !675, size: 32, offset: 736)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !485, file: !342, line: 676, baseType: !680, size: 64, offset: 768)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !485, file: !342, line: 677, baseType: !4084, size: 128, offset: 832)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !485, file: !342, line: 678, baseType: !4084, size: 128, offset: 960)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !485, file: !342, line: 679, baseType: !4084, size: 128, offset: 1088)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !485, file: !342, line: 680, baseType: !577, size: 32, offset: 1216)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !485, file: !342, line: 681, baseType: !392, size: 16, offset: 1248)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !485, file: !342, line: 682, baseType: !605, size: 8, offset: 1264)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !485, file: !342, line: 683, baseType: !605, size: 8, offset: 1272)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !485, file: !342, line: 684, baseType: !3798, size: 64, offset: 1280)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !485, file: !342, line: 691, baseType: !375, size: 64, offset: 1344)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !485, file: !342, line: 692, baseType: !1310, size: 320, offset: 1408)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !485, file: !342, line: 694, baseType: !375, size: 64, offset: 1728)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !485, file: !342, line: 695, baseType: !375, size: 64, offset: 1792)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !485, file: !342, line: 697, baseType: !925, size: 128, offset: 1856)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !485, file: !342, line: 698, baseType: !467, size: 128, offset: 1984)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !485, file: !342, line: 707, baseType: !467, size: 128, offset: 2112)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !485, file: !342, line: 708, baseType: !467, size: 128, offset: 2240)
!4197 = !DIDerivedType(tag: DW_TAG_member, scope: !485, file: !342, line: 709, baseType: !4198, size: 128, offset: 2368)
!4198 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !485, file: !342, line: 709, size: 128, elements: !4199)
!4199 = !{!4200, !4201}
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4198, file: !342, line: 710, baseType: !921, size: 64)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4198, file: !342, line: 711, baseType: !847, size: 128, align: 64)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !485, file: !342, line: 713, baseType: !862, size: 64, offset: 2496)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !485, file: !342, line: 714, baseType: !862, size: 64, offset: 2560)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !485, file: !342, line: 715, baseType: !597, size: 32, offset: 2624)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !485, file: !342, line: 716, baseType: !597, size: 32, offset: 2656)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !485, file: !342, line: 717, baseType: !597, size: 32, offset: 2688)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !485, file: !342, line: 719, baseType: !597, size: 32, offset: 2720)
!4208 = !DIDerivedType(tag: DW_TAG_member, scope: !485, file: !342, line: 721, baseType: !4209, size: 64, offset: 2752)
!4209 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !485, file: !342, line: 721, size: 64, elements: !4210)
!4210 = !{!4211, !4212}
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4209, file: !342, line: 722, baseType: !2660, size: 64)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4209, file: !342, line: 723, baseType: !3552, size: 64)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !485, file: !342, line: 725, baseType: !4214, size: 64, offset: 2816)
!4214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4215, size: 64)
!4215 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !342, line: 725, flags: DIFlagFwdDecl)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !485, file: !342, line: 726, baseType: !481, size: 1536, align: 64, offset: 2880)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !485, file: !342, line: 727, baseType: !467, size: 128, offset: 4416)
!4218 = !DIDerivedType(tag: DW_TAG_member, scope: !485, file: !342, line: 728, baseType: !4219, size: 64, offset: 4544)
!4219 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !485, file: !342, line: 728, size: 64, elements: !4220)
!4220 = !{!4221, !4222, !4225, !4226}
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4219, file: !342, line: 729, baseType: !2261, size: 64)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4219, file: !342, line: 730, baseType: !4223, size: 64)
!4223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4224, size: 64)
!4224 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !342, line: 730, flags: DIFlagFwdDecl)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4219, file: !342, line: 731, baseType: !659, size: 64)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4219, file: !342, line: 732, baseType: !13, size: 32)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !485, file: !342, line: 735, baseType: !396, size: 32, offset: 4608)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !485, file: !342, line: 738, baseType: !396, size: 32, offset: 4640)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !485, file: !342, line: 739, baseType: !3910, size: 64, offset: 4672)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !485, file: !342, line: 750, baseType: !432, size: 64, offset: 4736)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !481, file: !342, line: 474, baseType: !956, size: 128, offset: 64)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !481, file: !342, line: 475, baseType: !1310, size: 320, offset: 192)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !481, file: !342, line: 476, baseType: !445, size: 32, offset: 512)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !481, file: !342, line: 477, baseType: !597, size: 32, offset: 544)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !481, file: !342, line: 482, baseType: !1145, size: 128, offset: 576)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !481, file: !342, line: 483, baseType: !375, size: 64, offset: 704)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !481, file: !342, line: 484, baseType: !375, size: 64, offset: 768)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !481, file: !342, line: 485, baseType: !4239, size: 64, offset: 832)
!4239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4240, size: 64)
!4240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4241)
!4241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !342, line: 404, size: 1280, elements: !4242)
!4242 = !{!4243, !4247, !4317, !4321, !4325, !4331, !4335, !4339, !4344, !4348, !4352, !4356, !4357, !4361, !4365, !4369, !4374, !4378, !4385, !4386}
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !4241, file: !342, line: 405, baseType: !4244, size: 64)
!4244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4245, size: 64)
!4245 = !DISubroutineType(types: !4246)
!4246 = !{!93, !453, !3564}
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !4241, file: !342, line: 406, baseType: !4248, size: 64, offset: 64)
!4248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4249, size: 64)
!4249 = !DISubroutineType(types: !4250)
!4250 = !{!93, !834, !4251}
!4251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4252, size: 64)
!4252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !320, line: 293, size: 1536, elements: !4253)
!4253 = !{!4254, !4284, !4298}
!4254 = !DIDerivedType(tag: DW_TAG_member, scope: !4252, file: !320, line: 295, baseType: !4255, size: 512)
!4255 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4252, file: !320, line: 295, size: 512, elements: !4256)
!4256 = !{!4257, !4283}
!4257 = !DIDerivedType(tag: DW_TAG_member, scope: !4255, file: !320, line: 296, baseType: !4258, size: 448)
!4258 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4255, file: !320, line: 296, size: 448, elements: !4259)
!4259 = !{!4260, !4261, !4270, !4271, !4272, !4281, !4282}
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4258, file: !320, line: 298, baseType: !375, size: 64)
!4261 = !DIDerivedType(tag: DW_TAG_member, scope: !4258, file: !320, line: 299, baseType: !4262, size: 128, offset: 64)
!4262 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4258, file: !320, line: 299, size: 128, elements: !4263)
!4263 = !{!4264, !4265}
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4262, file: !320, line: 300, baseType: !467, size: 128)
!4265 = !DIDerivedType(tag: DW_TAG_member, scope: !4262, file: !320, line: 302, baseType: !4266, size: 128)
!4266 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4262, file: !320, line: 302, size: 128, elements: !4267)
!4267 = !{!4268, !4269}
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !4266, file: !320, line: 303, baseType: !432, size: 64)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !4266, file: !320, line: 305, baseType: !13, size: 32, offset: 64)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4258, file: !320, line: 310, baseType: !480, size: 64, offset: 192)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4258, file: !320, line: 311, baseType: !375, size: 64, offset: 256)
!4272 = !DIDerivedType(tag: DW_TAG_member, scope: !4258, file: !320, line: 312, baseType: !4273, size: 64, offset: 320)
!4273 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4258, file: !320, line: 312, size: 64, elements: !4274)
!4274 = !{!4275, !4276}
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4273, file: !320, line: 313, baseType: !432, size: 64)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !4273, file: !320, line: 314, baseType: !4277, size: 64)
!4277 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !320, line: 257, baseType: !4278)
!4278 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !320, line: 255, size: 64, elements: !4279)
!4279 = !{!4280}
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4278, file: !320, line: 256, baseType: !375, size: 64)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4258, file: !320, line: 316, baseType: !597, size: 32, offset: 384)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !4258, file: !320, line: 317, baseType: !597, size: 32, offset: 416)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4255, file: !320, line: 323, baseType: !454, size: 512, align: 128)
!4284 = !DIDerivedType(tag: DW_TAG_member, scope: !4252, file: !320, line: 325, baseType: !4285, size: 512, offset: 512)
!4285 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4252, file: !320, line: 325, size: 512, elements: !4286)
!4286 = !{!4287, !4297}
!4287 = !DIDerivedType(tag: DW_TAG_member, scope: !4285, file: !320, line: 326, baseType: !4288, size: 320)
!4288 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4285, file: !320, line: 326, size: 320, elements: !4289)
!4289 = !{!4290, !4291, !4292, !4293, !4294, !4295, !4296}
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !4288, file: !320, line: 327, baseType: !375, size: 64)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !4288, file: !320, line: 328, baseType: !375, size: 64, offset: 64)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !4288, file: !320, line: 329, baseType: !375, size: 64, offset: 128)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !4288, file: !320, line: 331, baseType: !597, size: 32, offset: 192)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !4288, file: !320, line: 332, baseType: !597, size: 32, offset: 224)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !4288, file: !320, line: 333, baseType: !597, size: 32, offset: 256)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !4288, file: !320, line: 335, baseType: !13, size: 32, offset: 288)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !4285, file: !320, line: 339, baseType: !454, size: 512, align: 128)
!4298 = !DIDerivedType(tag: DW_TAG_member, scope: !4252, file: !320, line: 341, baseType: !4299, size: 512, offset: 1024)
!4299 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4252, file: !320, line: 341, size: 512, elements: !4300)
!4300 = !{!4301, !4310, !4316}
!4301 = !DIDerivedType(tag: DW_TAG_member, scope: !4299, file: !320, line: 342, baseType: !4302, size: 384)
!4302 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4299, file: !320, line: 342, size: 384, elements: !4303)
!4303 = !{!4304, !4305, !4306, !4307, !4308, !4309}
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !4302, file: !320, line: 343, baseType: !375, size: 64)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !4302, file: !320, line: 344, baseType: !375, size: 64, offset: 64)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !4302, file: !320, line: 346, baseType: !432, size: 64, offset: 128)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !4302, file: !320, line: 347, baseType: !432, size: 64, offset: 192)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !4302, file: !320, line: 348, baseType: !432, size: 64, offset: 256)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !4302, file: !320, line: 349, baseType: !432, size: 64, offset: 320)
!4310 = !DIDerivedType(tag: DW_TAG_member, scope: !4299, file: !320, line: 352, baseType: !4311, size: 256)
!4311 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4299, file: !320, line: 352, size: 256, elements: !4312)
!4312 = !{!4313, !4314, !4315}
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !4311, file: !320, line: 353, baseType: !375, size: 64)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !4311, file: !320, line: 354, baseType: !375, size: 64, offset: 64)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !4311, file: !320, line: 356, baseType: !467, size: 128, offset: 128)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !4299, file: !320, line: 359, baseType: !454, size: 512, align: 128)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !4241, file: !342, line: 409, baseType: !4318, size: 64, offset: 128)
!4318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4319, size: 64)
!4319 = !DISubroutineType(types: !4320)
!4320 = !{!93, !480, !3564}
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !4241, file: !342, line: 412, baseType: !4322, size: 64, offset: 192)
!4322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4323, size: 64)
!4323 = !DISubroutineType(types: !4324)
!4324 = !{!1683, !480, !4251}
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !4241, file: !342, line: 414, baseType: !4326, size: 64, offset: 256)
!4326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4327, size: 64)
!4327 = !DISubroutineType(types: !4328)
!4328 = !{null, !4329}
!4329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4330, size: 64)
!4330 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !342, line: 310, flags: DIFlagFwdDecl)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !4241, file: !342, line: 416, baseType: !4332, size: 64, offset: 320)
!4332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4333, size: 64)
!4333 = !DISubroutineType(types: !4334)
!4334 = !{!93, !834, !480, !680, !13, !2381, !2996}
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !4241, file: !342, line: 419, baseType: !4336, size: 64, offset: 384)
!4336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4337, size: 64)
!4337 = !DISubroutineType(types: !4338)
!4338 = !{!93, !834, !480, !680, !13, !13, !453, !432}
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !4241, file: !342, line: 424, baseType: !4340, size: 64, offset: 448)
!4340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4341, size: 64)
!4341 = !DISubroutineType(types: !4342)
!4342 = !{!4343, !480, !4343}
!4343 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !440, line: 131, baseType: !556)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !4241, file: !342, line: 425, baseType: !4345, size: 64, offset: 512)
!4345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4346, size: 64)
!4346 = !DISubroutineType(types: !4347)
!4347 = !{null, !4251, !439, !439}
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !4241, file: !342, line: 426, baseType: !4349, size: 64, offset: 576)
!4349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4350, size: 64)
!4350 = !DISubroutineType(types: !4351)
!4351 = !{!1683, !4251, !445}
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !4241, file: !342, line: 427, baseType: !4353, size: 64, offset: 640)
!4353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4354, size: 64)
!4354 = !DISubroutineType(types: !4355)
!4355 = !{null, !4251}
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !4241, file: !342, line: 428, baseType: !2679, size: 64, offset: 704)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !4241, file: !342, line: 433, baseType: !4358, size: 64, offset: 768)
!4358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4359, size: 64)
!4359 = !DISubroutineType(types: !4360)
!4360 = !{!93, !480, !4251, !4251, !352}
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !4241, file: !342, line: 435, baseType: !4362, size: 64, offset: 832)
!4362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4363, size: 64)
!4363 = !DISubroutineType(types: !4364)
!4364 = !{!93, !4251}
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !4241, file: !342, line: 436, baseType: !4366, size: 64, offset: 896)
!4366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4367, size: 64)
!4367 = !DISubroutineType(types: !4368)
!4368 = !{!1683, !4251, !439, !439}
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !4241, file: !342, line: 438, baseType: !4370, size: 64, offset: 960)
!4370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4371, size: 64)
!4371 = !DISubroutineType(types: !4372)
!4372 = !{null, !4251, !4373, !4373}
!4373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !4241, file: !342, line: 439, baseType: !4375, size: 64, offset: 1024)
!4375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4376, size: 64)
!4376 = !DISubroutineType(types: !4377)
!4377 = !{!93, !480, !453}
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !4241, file: !342, line: 442, baseType: !4379, size: 64, offset: 1088)
!4379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4380, size: 64)
!4380 = !DISubroutineType(types: !4381)
!4381 = !{!93, !4382, !834, !4384}
!4382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4383, size: 64)
!4383 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !342, line: 66, flags: DIFlagFwdDecl)
!4384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4343, size: 64)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !4241, file: !342, line: 444, baseType: !2988, size: 64, offset: 1152)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !4241, file: !342, line: 445, baseType: !4387, size: 64, offset: 1216)
!4387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4388, size: 64)
!4388 = !DISubroutineType(types: !4389)
!4389 = !{!93, !2682, !2704}
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !481, file: !342, line: 486, baseType: !375, size: 64, offset: 896)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !481, file: !342, line: 487, baseType: !1310, size: 320, offset: 960)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !481, file: !342, line: 488, baseType: !3033, size: 32, offset: 1280)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !481, file: !342, line: 489, baseType: !577, size: 32, offset: 1312)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !481, file: !342, line: 490, baseType: !467, size: 128, offset: 1344)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !481, file: !342, line: 491, baseType: !432, size: 64, offset: 1472)
!4396 = !DIDerivedType(tag: DW_TAG_member, scope: !461, file: !320, line: 107, baseType: !4397, size: 64, offset: 192)
!4397 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !461, file: !320, line: 107, size: 64, elements: !4398)
!4398 = !{!4399, !4400}
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4397, file: !320, line: 108, baseType: !375, size: 64)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !4397, file: !320, line: 109, baseType: !375, size: 64)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !461, file: !320, line: 117, baseType: !375, size: 64, offset: 256)
!4402 = !DIDerivedType(tag: DW_TAG_member, scope: !458, file: !320, line: 119, baseType: !4403, size: 320)
!4403 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !458, file: !320, line: 119, size: 320, elements: !4404)
!4404 = !{!4405, !4406, !4409, !4410, !4411}
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !4403, file: !320, line: 124, baseType: !375, size: 64)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !4403, file: !320, line: 125, baseType: !4407, size: 64, offset: 64)
!4407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4408, size: 64)
!4408 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !320, line: 125, flags: DIFlagFwdDecl)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !4403, file: !320, line: 126, baseType: !375, size: 64, offset: 128)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !4403, file: !320, line: 127, baseType: !375, size: 64, offset: 192)
!4411 = !DIDerivedType(tag: DW_TAG_member, scope: !4403, file: !320, line: 128, baseType: !4412, size: 64, offset: 256)
!4412 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4403, file: !320, line: 128, size: 64, elements: !4413)
!4413 = !{!4414, !4415}
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !4412, file: !320, line: 133, baseType: !375, size: 64)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !4412, file: !320, line: 138, baseType: !860, size: 64)
!4416 = !DIDerivedType(tag: DW_TAG_member, scope: !458, file: !320, line: 141, baseType: !4417, size: 64)
!4417 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !458, file: !320, line: 141, size: 64, elements: !4418)
!4418 = !{!4419}
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !4417, file: !320, line: 142, baseType: !375, size: 64)
!4420 = !DIDerivedType(tag: DW_TAG_member, scope: !458, file: !320, line: 144, baseType: !4421, size: 128)
!4421 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !458, file: !320, line: 144, size: 128, elements: !4422)
!4422 = !{!4423, !4494}
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !4421, file: !320, line: 146, baseType: !4424, size: 64)
!4424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4425, size: 64)
!4425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !360, line: 126, size: 1216, elements: !4426)
!4426 = !{!4427, !4437, !4458, !4459, !4460, !4461, !4462, !4476, !4477, !4478}
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !4425, file: !360, line: 127, baseType: !4428, size: 384)
!4428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !360, line: 21, size: 384, elements: !4429)
!4429 = !{!4430, !4431, !4433, !4434, !4435, !4436}
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !4428, file: !360, line: 22, baseType: !375, size: 64)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !4428, file: !360, line: 23, baseType: !4432, size: 64, offset: 64)
!4432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !375)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !4428, file: !360, line: 24, baseType: !4432, size: 64, offset: 128)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4428, file: !360, line: 25, baseType: !375, size: 64, offset: 192)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !4428, file: !360, line: 26, baseType: !375, size: 64, offset: 256)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !4428, file: !360, line: 27, baseType: !375, size: 64, offset: 320)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4425, file: !360, line: 128, baseType: !4438, size: 128, offset: 384)
!4438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !4439, line: 105, size: 128, elements: !4440)
!4439 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!4440 = !{!4441, !4442}
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !4438, file: !4439, line: 110, baseType: !375, size: 64)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4438, file: !4439, line: 118, baseType: !4443, size: 64, offset: 64)
!4443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4444, size: 64)
!4444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !4439, line: 95, size: 448, elements: !4445)
!4445 = !{!4446, !4447, !4453, !4454, !4455, !4456, !4457}
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4444, file: !4439, line: 96, baseType: !860, size: 64)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4444, file: !4439, line: 97, baseType: !4448, size: 64, offset: 64)
!4448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4449, size: 64)
!4449 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !4439, line: 60, baseType: !4450)
!4450 = !DISubroutineType(types: !4451)
!4451 = !{null, !4452}
!4452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4438, size: 64)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !4444, file: !4439, line: 98, baseType: !4448, size: 64, offset: 128)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !4444, file: !4439, line: 99, baseType: !1683, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !4444, file: !4439, line: 100, baseType: !1683, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4444, file: !4439, line: 101, baseType: !847, size: 128, align: 64, offset: 256)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4444, file: !4439, line: 102, baseType: !4452, size: 64, offset: 384)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !4425, file: !360, line: 129, baseType: !1544, size: 256, offset: 512)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4425, file: !360, line: 130, baseType: !359, size: 32, offset: 768)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4425, file: !360, line: 131, baseType: !13, size: 32, offset: 800)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !4425, file: !360, line: 132, baseType: !375, size: 64, offset: 832)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4425, file: !360, line: 133, baseType: !4463, size: 64, offset: 896)
!4463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4464, size: 64)
!4464 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4465)
!4465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !360, line: 77, size: 192, elements: !4466)
!4466 = !{!4467, !4471, !4472}
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !4465, file: !360, line: 83, baseType: !4468, size: 64)
!4468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4469, size: 64)
!4469 = !DISubroutineType(types: !4470)
!4470 = !{null, !453}
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !4465, file: !360, line: 89, baseType: !2859, size: 64, offset: 64)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !4465, file: !360, line: 100, baseType: !4473, size: 64, offset: 128)
!4473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4474, size: 64)
!4474 = !DISubroutineType(types: !4475)
!4475 = !{!93, !4424, !375, !375, !93}
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4425, file: !360, line: 134, baseType: !432, size: 64, offset: 960)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !4425, file: !360, line: 135, baseType: !93, size: 32, offset: 1024)
!4478 = !DIDerivedType(tag: DW_TAG_member, scope: !4425, file: !360, line: 136, baseType: !4479, size: 128, offset: 1088)
!4479 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4425, file: !360, line: 136, size: 128, elements: !4480)
!4480 = !{!4481, !4487}
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !4479, file: !360, line: 137, baseType: !4482, size: 128)
!4482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !4483, line: 6, size: 128, elements: !4484)
!4483 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!4484 = !{!4485, !4486}
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4482, file: !4483, line: 7, baseType: !556, size: 64)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4482, file: !4483, line: 8, baseType: !556, size: 64, offset: 64)
!4487 = !DIDerivedType(tag: DW_TAG_member, scope: !4479, file: !360, line: 138, baseType: !4488)
!4488 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4479, file: !360, line: 138, elements: !4489)
!4489 = !{!4490, !4492}
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !4488, file: !360, line: 138, baseType: !4491)
!4491 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4488, file: !360, line: 138, elements: !1276)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !4488, file: !360, line: 138, baseType: !4493)
!4493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4482, elements: !1444)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !4421, file: !320, line: 147, baseType: !432, size: 64, offset: 64)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !458, file: !320, line: 161, baseType: !847, size: 128, align: 64)
!4496 = !DIDerivedType(tag: DW_TAG_member, scope: !454, file: !320, line: 164, baseType: !4497, size: 32, offset: 384)
!4497 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !454, file: !320, line: 164, size: 32, elements: !4498)
!4498 = !{!4499, !4500}
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4497, file: !320, line: 169, baseType: !597, size: 32)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !4497, file: !320, line: 177, baseType: !13, size: 32)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !454, file: !320, line: 181, baseType: !597, size: 32, offset: 416)
!4502 = !{!0, !4503, !4514, !4519, !4521, !4559, !4564, !4567, !4569, !4571, !4573, !4575, !4580, !4582, !4584, !4586, !4588, !4590, !4592, !4597, !4599, !4601, !4606, !4608, !4610, !4615, !4617, !4622, !4627, !4629, !7, !4631, !4634, !4639, !4644, !4646, !4651, !4656, !4658, !4660, !4663, !4668, !4670, !4672, !4674, !4679, !4682, !4684, !4686, !4688, !4690, !4692, !4694, !4699, !4701, !4703, !4705, !4707, !4712, !4714, !4716, !4718, !4720, !4722, !4725, !4727, !4729, !4731, !4733, !4738, !4740, !4742, !4744, !4746, !4748, !4750, !4752, !4754, !4756, !4758, !4760, !4762, !4764, !4766, !4768, !4770, !4772, !4774, !4776, !4778, !4783, !4788, !4790, !4792, !4794, !4799, !4801, !4803, !4808, !4813, !4815}
!4503 = !DIGlobalVariableExpression(var: !4504, expr: !DIExpression())
!4504 = distinct !DIGlobalVariable(name: "__setup_parse_crashkernel_dummy", scope: !9, file: !2, line: 322, type: !4505, isLocal: true, isDefinition: true, align: 64)
!4505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obs_kernel_param", file: !4506, line: 324, size: 192, elements: !4507)
!4506 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!4507 = !{!4508, !4509, !4513}
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !4505, file: !4506, line: 325, baseType: !447, size: 64)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "setup_func", scope: !4505, file: !4506, line: 326, baseType: !4510, size: 64, offset: 64)
!4510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4511, size: 64)
!4511 = !DISubroutineType(types: !4512)
!4512 = !{!93, !659}
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "early", scope: !4505, file: !4506, line: 327, baseType: !93, size: 32, offset: 128)
!4514 = !DIGlobalVariableExpression(var: !4515, expr: !DIExpression())
!4515 = distinct !DIGlobalVariable(scope: null, file: !2, line: 357, type: !4516, isLocal: true, isDefinition: true)
!4516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !4517)
!4517 = !{!4518}
!4518 = !DISubrange(count: 5)
!4519 = !DIGlobalVariableExpression(var: !4520, expr: !DIExpression())
!4520 = distinct !DIGlobalVariable(scope: null, file: !2, line: 555, type: !1779, isLocal: true, isDefinition: true)
!4521 = !DIGlobalVariableExpression(var: !4522, expr: !DIExpression())
!4522 = distinct !DIGlobalVariable(name: "__already_done", scope: !4523, file: !2, line: 575, type: !1683, isLocal: true, isDefinition: true)
!4523 = distinct !DISubprogram(name: "vmcoreinfo_append_str", scope: !2, file: !2, line: 559, type: !4524, scopeLine: 560, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4526)
!4524 = !DISubroutineType(types: !4525)
!4525 = !{null, !447, null}
!4526 = !{!4527, !4528, !4539, !4543, !4544, !4546, !4547, !4549, !4552, !4553, !4555}
!4527 = !DILocalVariable(name: "fmt", arg: 1, scope: !4523, file: !2, line: 559, type: !447)
!4528 = !DILocalVariable(name: "args", scope: !4523, file: !2, line: 561, type: !4529)
!4529 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !4530, line: 5, baseType: !4531)
!4530 = !DIFile(filename: "./include/linux/stdarg.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74c88f3ccfca7f499d1744438ad1d5b5")
!4531 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2, baseType: !4532)
!4532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4533, size: 192, elements: !376)
!4533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !4534)
!4534 = !{!4535, !4536, !4537, !4538}
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4533, file: !2, line: 561, baseType: !13, size: 32)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4533, file: !2, line: 561, baseType: !13, size: 32, offset: 32)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4533, file: !2, line: 561, baseType: !432, size: 64, offset: 64)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4533, file: !2, line: 561, baseType: !432, size: 64, offset: 128)
!4539 = !DILocalVariable(name: "buf", scope: !4523, file: !2, line: 562, type: !4540)
!4540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 640, elements: !4541)
!4541 = !{!4542}
!4542 = !DISubrange(count: 80)
!4543 = !DILocalVariable(name: "r", scope: !4523, file: !2, line: 563, type: !439)
!4544 = !DILocalVariable(name: "__UNIQUE_ID___x321", scope: !4545, file: !2, line: 569, type: !439)
!4545 = distinct !DILexicalBlock(scope: !4523, file: !2, line: 569, column: 6)
!4546 = !DILocalVariable(name: "__UNIQUE_ID___y322", scope: !4545, file: !2, line: 569, type: !439)
!4547 = !DILocalVariable(name: "__ret_do_once", scope: !4548, file: !2, line: 575, type: !1683)
!4548 = distinct !DILexicalBlock(scope: !4523, file: !2, line: 575, column: 2)
!4549 = !DILocalVariable(name: "__ret_cond", scope: !4550, file: !2, line: 575, type: !1683)
!4550 = distinct !DILexicalBlock(scope: !4551, file: !2, line: 575, column: 2)
!4551 = distinct !DILexicalBlock(scope: !4548, file: !2, line: 575, column: 2)
!4552 = !DILocalVariable(name: "__ret_once", scope: !4550, file: !2, line: 575, type: !1683)
!4553 = !DILocalVariable(name: "__ret_warn_on", scope: !4554, file: !2, line: 575, type: !93)
!4554 = distinct !DILexicalBlock(scope: !4551, file: !2, line: 575, column: 2)
!4555 = !DILocalVariable(name: "__flags", scope: !4556, file: !2, line: 575, type: !93)
!4556 = distinct !DILexicalBlock(scope: !4557, file: !2, line: 575, column: 2)
!4557 = distinct !DILexicalBlock(scope: !4558, file: !2, line: 575, column: 2)
!4558 = distinct !DILexicalBlock(scope: !4554, file: !2, line: 575, column: 2)
!4559 = !DIGlobalVariableExpression(var: !4560, expr: !DIExpression())
!4560 = distinct !DIGlobalVariable(scope: null, file: !2, line: 575, type: !4561, isLocal: true, isDefinition: true)
!4561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !4562)
!4562 = !{!4563}
!4563 = !DISubrange(count: 51)
!4564 = !DIGlobalVariableExpression(var: !4565, expr: !DIExpression())
!4565 = distinct !DIGlobalVariable(scope: null, file: !2, line: 575, type: !4566, isLocal: true, isDefinition: true)
!4566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !2481)
!4567 = !DIGlobalVariableExpression(var: !4568, expr: !DIExpression())
!4568 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_paddr_vmcoreinfo_note323", scope: !9, file: !2, line: 590, type: !432, isLocal: true, isDefinition: true)
!4569 = !DIGlobalVariableExpression(var: !4570, expr: !DIExpression())
!4570 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_crash_core__324_702_crash_save_vmcoreinfo_init4325", scope: !9, file: !2, line: 702, type: !432, isLocal: true, isDefinition: true)
!4571 = !DIGlobalVariableExpression(var: !4572, expr: !DIExpression())
!4572 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_crash_core__329_735_crash_notes_memory_init4330", scope: !9, file: !2, line: 735, type: !432, isLocal: true, isDefinition: true)
!4573 = !DIGlobalVariableExpression(var: !4574, expr: !DIExpression())
!4574 = distinct !DIGlobalVariable(name: "__crash_hotplug_lock", scope: !9, file: !2, line: 748, type: !869, isLocal: false, isDefinition: true)
!4575 = !DIGlobalVariableExpression(var: !4576, expr: !DIExpression())
!4576 = distinct !DIGlobalVariable(scope: null, file: !2, line: 764, type: !4577, isLocal: true, isDefinition: true)
!4577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 528, elements: !4578)
!4578 = !{!4579}
!4579 = !DISubrange(count: 66)
!4580 = !DIGlobalVariableExpression(var: !4581, expr: !DIExpression())
!4581 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_crash_core__332_921_crash_hotplug_init4333", scope: !9, file: !2, line: 921, type: !432, isLocal: true, isDefinition: true)
!4582 = !DIGlobalVariableExpression(var: !4583, expr: !DIExpression())
!4583 = distinct !DIGlobalVariable(name: "crash_notes", scope: !9, file: !2, line: 26, type: !424, isLocal: false, isDefinition: true)
!4584 = !DIGlobalVariableExpression(var: !4585, expr: !DIExpression())
!4585 = distinct !DIGlobalVariable(name: "vmcoreinfo_data", scope: !9, file: !2, line: 29, type: !444, isLocal: false, isDefinition: true)
!4586 = !DIGlobalVariableExpression(var: !4587, expr: !DIExpression())
!4587 = distinct !DIGlobalVariable(name: "vmcoreinfo_size", scope: !9, file: !2, line: 30, type: !439, isLocal: false, isDefinition: true)
!4588 = !DIGlobalVariableExpression(var: !4589, expr: !DIExpression())
!4589 = distinct !DIGlobalVariable(name: "vmcoreinfo_note", scope: !9, file: !2, line: 31, type: !1484, isLocal: false, isDefinition: true)
!4590 = !DIGlobalVariableExpression(var: !4591, expr: !DIExpression())
!4591 = distinct !DIGlobalVariable(name: "vmcoreinfo_data_safecopy", scope: !9, file: !2, line: 34, type: !444, isLocal: true, isDefinition: true)
!4592 = !DIGlobalVariableExpression(var: !4593, expr: !DIExpression())
!4593 = distinct !DIGlobalVariable(scope: null, file: !2, line: 191, type: !4594, isLocal: true, isDefinition: true)
!4594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !4595)
!4595 = !{!4596}
!4596 = !DISubrange(count: 38)
!4597 = !DIGlobalVariableExpression(var: !4598, expr: !DIExpression())
!4598 = distinct !DIGlobalVariable(scope: null, file: !2, line: 197, type: !4594, isLocal: true, isDefinition: true)
!4599 = !DIGlobalVariableExpression(var: !4600, expr: !DIExpression())
!4600 = distinct !DIGlobalVariable(scope: null, file: !2, line: 73, type: !4594, isLocal: true, isDefinition: true)
!4601 = !DIGlobalVariableExpression(var: !4602, expr: !DIExpression())
!4602 = distinct !DIGlobalVariable(scope: null, file: !2, line: 78, type: !4603, isLocal: true, isDefinition: true)
!4603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !4604)
!4604 = !{!4605}
!4605 = !DISubrange(count: 29)
!4606 = !DIGlobalVariableExpression(var: !4607, expr: !DIExpression())
!4607 = distinct !DIGlobalVariable(scope: null, file: !2, line: 92, type: !4603, isLocal: true, isDefinition: true)
!4608 = !DIGlobalVariableExpression(var: !4609, expr: !DIExpression())
!4609 = distinct !DIGlobalVariable(scope: null, file: !2, line: 98, type: !4603, isLocal: true, isDefinition: true)
!4610 = !DIGlobalVariableExpression(var: !4611, expr: !DIExpression())
!4611 = distinct !DIGlobalVariable(scope: null, file: !2, line: 105, type: !4612, isLocal: true, isDefinition: true)
!4612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !4613)
!4613 = !{!4614}
!4614 = !DISubrange(count: 25)
!4615 = !DIGlobalVariableExpression(var: !4616, expr: !DIExpression())
!4616 = distinct !DIGlobalVariable(scope: null, file: !2, line: 110, type: !4603, isLocal: true, isDefinition: true)
!4617 = !DIGlobalVariableExpression(var: !4618, expr: !DIExpression())
!4618 = distinct !DIGlobalVariable(scope: null, file: !2, line: 128, type: !4619, isLocal: true, isDefinition: true)
!4619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !4620)
!4620 = !{!4621}
!4621 = !DISubrange(count: 35)
!4622 = !DIGlobalVariableExpression(var: !4623, expr: !DIExpression())
!4623 = distinct !DIGlobalVariable(scope: null, file: !2, line: 133, type: !4624, isLocal: true, isDefinition: true)
!4624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !4625)
!4625 = !{!4626}
!4626 = !DISubrange(count: 43)
!4627 = !DIGlobalVariableExpression(var: !4628, expr: !DIExpression())
!4628 = distinct !DIGlobalVariable(scope: null, file: !2, line: 171, type: !1669, isLocal: true, isDefinition: true)
!4629 = !DIGlobalVariableExpression(var: !4630, expr: !DIExpression())
!4630 = distinct !DIGlobalVariable(scope: null, file: !2, line: 172, type: !4516, isLocal: true, isDefinition: true)
!4631 = !DIGlobalVariableExpression(var: !4632, expr: !DIExpression())
!4632 = distinct !DIGlobalVariable(name: "__setup_str_parse_crashkernel_dummy", scope: !9, file: !2, line: 322, type: !4633, isLocal: true, isDefinition: true, align: 8)
!4633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !448, size: 96, elements: !2514)
!4634 = !DIGlobalVariableExpression(var: !4635, expr: !DIExpression())
!4635 = distinct !DIGlobalVariable(scope: null, file: !2, line: 533, type: !4636, isLocal: true, isDefinition: true)
!4636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !4637)
!4637 = !{!4638}
!4638 = !DISubrange(count: 11)
!4639 = !DIGlobalVariableExpression(var: !4640, expr: !DIExpression())
!4640 = distinct !DIGlobalVariable(scope: null, file: !2, line: 596, type: !4641, isLocal: true, isDefinition: true)
!4641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !4642)
!4642 = !{!4643}
!4643 = !DISubrange(count: 48)
!4644 = !DIGlobalVariableExpression(var: !4645, expr: !DIExpression())
!4645 = distinct !DIGlobalVariable(scope: null, file: !2, line: 605, type: !4641, isLocal: true, isDefinition: true)
!4646 = !DIGlobalVariableExpression(var: !4647, expr: !DIExpression())
!4647 = distinct !DIGlobalVariable(scope: null, file: !2, line: 609, type: !4648, isLocal: true, isDefinition: true)
!4648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !4649)
!4649 = !{!4650}
!4650 = !DISubrange(count: 14)
!4651 = !DIGlobalVariableExpression(var: !4652, expr: !DIExpression())
!4652 = distinct !DIGlobalVariable(scope: null, file: !2, line: 610, type: !4653, isLocal: true, isDefinition: true)
!4653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !4654)
!4654 = !{!4655}
!4655 = !DISubrange(count: 17)
!4656 = !DIGlobalVariableExpression(var: !4657, expr: !DIExpression())
!4657 = distinct !DIGlobalVariable(scope: null, file: !2, line: 611, type: !4648, isLocal: true, isDefinition: true)
!4658 = !DIGlobalVariableExpression(var: !4659, expr: !DIExpression())
!4659 = distinct !DIGlobalVariable(scope: null, file: !2, line: 613, type: !1779, isLocal: true, isDefinition: true)
!4660 = !DIGlobalVariableExpression(var: !4661, expr: !DIExpression())
!4661 = distinct !DIGlobalVariable(scope: null, file: !2, line: 613, type: !4662, isLocal: true, isDefinition: true)
!4662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !2514)
!4663 = !DIGlobalVariableExpression(var: !4664, expr: !DIExpression())
!4664 = distinct !DIGlobalVariable(scope: null, file: !2, line: 614, type: !4665, isLocal: true, isDefinition: true)
!4665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !4666)
!4666 = !{!4667}
!4667 = !DISubrange(count: 19)
!4668 = !DIGlobalVariableExpression(var: !4669, expr: !DIExpression())
!4669 = distinct !DIGlobalVariable(scope: null, file: !2, line: 614, type: !4648, isLocal: true, isDefinition: true)
!4670 = !DIGlobalVariableExpression(var: !4671, expr: !DIExpression())
!4671 = distinct !DIGlobalVariable(scope: null, file: !2, line: 614, type: !4516, isLocal: true, isDefinition: true)
!4672 = !DIGlobalVariableExpression(var: !4673, expr: !DIExpression())
!4673 = distinct !DIGlobalVariable(scope: null, file: !2, line: 615, type: !1779, isLocal: true, isDefinition: true)
!4674 = !DIGlobalVariableExpression(var: !4675, expr: !DIExpression())
!4675 = distinct !DIGlobalVariable(scope: null, file: !2, line: 617, type: !4676, isLocal: true, isDefinition: true)
!4676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !4677)
!4677 = !{!4678}
!4678 = !DISubrange(count: 15)
!4679 = !DIGlobalVariableExpression(var: !4680, expr: !DIExpression())
!4680 = distinct !DIGlobalVariable(scope: null, file: !2, line: 619, type: !4681, isLocal: true, isDefinition: true)
!4681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !3333)
!4682 = !DIGlobalVariableExpression(var: !4683, expr: !DIExpression())
!4683 = distinct !DIGlobalVariable(scope: null, file: !2, line: 620, type: !4676, isLocal: true, isDefinition: true)
!4684 = !DIGlobalVariableExpression(var: !4685, expr: !DIExpression())
!4685 = distinct !DIGlobalVariable(scope: null, file: !2, line: 627, type: !4662, isLocal: true, isDefinition: true)
!4686 = !DIGlobalVariableExpression(var: !4687, expr: !DIExpression())
!4687 = distinct !DIGlobalVariable(scope: null, file: !2, line: 628, type: !1779, isLocal: true, isDefinition: true)
!4688 = !DIGlobalVariableExpression(var: !4689, expr: !DIExpression())
!4689 = distinct !DIGlobalVariable(scope: null, file: !2, line: 629, type: !4648, isLocal: true, isDefinition: true)
!4690 = !DIGlobalVariableExpression(var: !4691, expr: !DIExpression())
!4691 = distinct !DIGlobalVariable(scope: null, file: !2, line: 630, type: !1779, isLocal: true, isDefinition: true)
!4692 = !DIGlobalVariableExpression(var: !4693, expr: !DIExpression())
!4693 = distinct !DIGlobalVariable(scope: null, file: !2, line: 631, type: !1779, isLocal: true, isDefinition: true)
!4694 = !DIGlobalVariableExpression(var: !4695, expr: !DIExpression())
!4695 = distinct !DIGlobalVariable(scope: null, file: !2, line: 631, type: !4696, isLocal: true, isDefinition: true)
!4696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !4697)
!4697 = !{!4698}
!4698 = !DISubrange(count: 18)
!4699 = !DIGlobalVariableExpression(var: !4700, expr: !DIExpression())
!4700 = distinct !DIGlobalVariable(scope: null, file: !2, line: 632, type: !4653, isLocal: true, isDefinition: true)
!4701 = !DIGlobalVariableExpression(var: !4702, expr: !DIExpression())
!4702 = distinct !DIGlobalVariable(scope: null, file: !2, line: 634, type: !4516, isLocal: true, isDefinition: true)
!4703 = !DIGlobalVariableExpression(var: !4704, expr: !DIExpression())
!4704 = distinct !DIGlobalVariable(scope: null, file: !2, line: 635, type: !4662, isLocal: true, isDefinition: true)
!4705 = !DIGlobalVariableExpression(var: !4706, expr: !DIExpression())
!4706 = distinct !DIGlobalVariable(scope: null, file: !2, line: 636, type: !4516, isLocal: true, isDefinition: true)
!4707 = !DIGlobalVariableExpression(var: !4708, expr: !DIExpression())
!4708 = distinct !DIGlobalVariable(scope: null, file: !2, line: 637, type: !4709, isLocal: true, isDefinition: true)
!4709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !4710)
!4710 = !{!4711}
!4711 = !DISubrange(count: 10)
!4712 = !DIGlobalVariableExpression(var: !4713, expr: !DIExpression())
!4713 = distinct !DIGlobalVariable(scope: null, file: !2, line: 638, type: !4709, isLocal: true, isDefinition: true)
!4714 = !DIGlobalVariableExpression(var: !4715, expr: !DIExpression())
!4715 = distinct !DIGlobalVariable(scope: null, file: !2, line: 639, type: !4636, isLocal: true, isDefinition: true)
!4716 = !DIGlobalVariableExpression(var: !4717, expr: !DIExpression())
!4717 = distinct !DIGlobalVariable(scope: null, file: !2, line: 640, type: !1669, isLocal: true, isDefinition: true)
!4718 = !DIGlobalVariableExpression(var: !4719, expr: !DIExpression())
!4719 = distinct !DIGlobalVariable(scope: null, file: !2, line: 641, type: !4709, isLocal: true, isDefinition: true)
!4720 = !DIGlobalVariableExpression(var: !4721, expr: !DIExpression())
!4721 = distinct !DIGlobalVariable(scope: null, file: !2, line: 642, type: !2154, isLocal: true, isDefinition: true)
!4722 = !DIGlobalVariableExpression(var: !4723, expr: !DIExpression())
!4723 = distinct !DIGlobalVariable(scope: null, file: !2, line: 643, type: !4724, isLocal: true, isDefinition: true)
!4724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !930)
!4725 = !DIGlobalVariableExpression(var: !4726, expr: !DIExpression())
!4726 = distinct !DIGlobalVariable(scope: null, file: !2, line: 644, type: !4709, isLocal: true, isDefinition: true)
!4727 = !DIGlobalVariableExpression(var: !4728, expr: !DIExpression())
!4728 = distinct !DIGlobalVariable(scope: null, file: !2, line: 645, type: !2154, isLocal: true, isDefinition: true)
!4729 = !DIGlobalVariableExpression(var: !4730, expr: !DIExpression())
!4730 = distinct !DIGlobalVariable(scope: null, file: !2, line: 646, type: !4648, isLocal: true, isDefinition: true)
!4731 = !DIGlobalVariableExpression(var: !4732, expr: !DIExpression())
!4732 = distinct !DIGlobalVariable(scope: null, file: !2, line: 647, type: !4636, isLocal: true, isDefinition: true)
!4733 = !DIGlobalVariableExpression(var: !4734, expr: !DIExpression())
!4734 = distinct !DIGlobalVariable(scope: null, file: !2, line: 648, type: !4735, isLocal: true, isDefinition: true)
!4735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !4736)
!4736 = !{!4737}
!4737 = !DISubrange(count: 9)
!4738 = !DIGlobalVariableExpression(var: !4739, expr: !DIExpression())
!4739 = distinct !DIGlobalVariable(scope: null, file: !2, line: 652, type: !4676, isLocal: true, isDefinition: true)
!4740 = !DIGlobalVariableExpression(var: !4741, expr: !DIExpression())
!4741 = distinct !DIGlobalVariable(scope: null, file: !2, line: 653, type: !4665, isLocal: true, isDefinition: true)
!4742 = !DIGlobalVariableExpression(var: !4743, expr: !DIExpression())
!4743 = distinct !DIGlobalVariable(scope: null, file: !2, line: 654, type: !2154, isLocal: true, isDefinition: true)
!4744 = !DIGlobalVariableExpression(var: !4745, expr: !DIExpression())
!4745 = distinct !DIGlobalVariable(scope: null, file: !2, line: 656, type: !2154, isLocal: true, isDefinition: true)
!4746 = !DIGlobalVariableExpression(var: !4747, expr: !DIExpression())
!4747 = distinct !DIGlobalVariable(scope: null, file: !2, line: 657, type: !4648, isLocal: true, isDefinition: true)
!4748 = !DIGlobalVariableExpression(var: !4749, expr: !DIExpression())
!4749 = distinct !DIGlobalVariable(scope: null, file: !2, line: 658, type: !4709, isLocal: true, isDefinition: true)
!4750 = !DIGlobalVariableExpression(var: !4751, expr: !DIExpression())
!4751 = distinct !DIGlobalVariable(scope: null, file: !2, line: 659, type: !4516, isLocal: true, isDefinition: true)
!4752 = !DIGlobalVariableExpression(var: !4753, expr: !DIExpression())
!4753 = distinct !DIGlobalVariable(scope: null, file: !2, line: 660, type: !4516, isLocal: true, isDefinition: true)
!4754 = !DIGlobalVariableExpression(var: !4755, expr: !DIExpression())
!4755 = distinct !DIGlobalVariable(scope: null, file: !2, line: 661, type: !4709, isLocal: true, isDefinition: true)
!4756 = !DIGlobalVariableExpression(var: !4757, expr: !DIExpression())
!4757 = distinct !DIGlobalVariable(scope: null, file: !2, line: 661, type: !4735, isLocal: true, isDefinition: true)
!4758 = !DIGlobalVariableExpression(var: !4759, expr: !DIExpression())
!4759 = distinct !DIGlobalVariable(scope: null, file: !2, line: 662, type: !4516, isLocal: true, isDefinition: true)
!4760 = !DIGlobalVariableExpression(var: !4761, expr: !DIExpression())
!4761 = distinct !DIGlobalVariable(scope: null, file: !2, line: 663, type: !4676, isLocal: true, isDefinition: true)
!4762 = !DIGlobalVariableExpression(var: !4763, expr: !DIExpression())
!4763 = distinct !DIGlobalVariable(scope: null, file: !2, line: 665, type: !4566, isLocal: true, isDefinition: true)
!4764 = !DIGlobalVariableExpression(var: !4765, expr: !DIExpression())
!4765 = distinct !DIGlobalVariable(scope: null, file: !2, line: 666, type: !4648, isLocal: true, isDefinition: true)
!4766 = !DIGlobalVariableExpression(var: !4767, expr: !DIExpression())
!4767 = distinct !DIGlobalVariable(scope: null, file: !2, line: 667, type: !4681, isLocal: true, isDefinition: true)
!4768 = !DIGlobalVariableExpression(var: !4769, expr: !DIExpression())
!4769 = distinct !DIGlobalVariable(scope: null, file: !2, line: 668, type: !4636, isLocal: true, isDefinition: true)
!4770 = !DIGlobalVariableExpression(var: !4771, expr: !DIExpression())
!4771 = distinct !DIGlobalVariable(scope: null, file: !2, line: 669, type: !3, isLocal: true, isDefinition: true)
!4772 = !DIGlobalVariableExpression(var: !4773, expr: !DIExpression())
!4773 = distinct !DIGlobalVariable(scope: null, file: !2, line: 670, type: !4648, isLocal: true, isDefinition: true)
!4774 = !DIGlobalVariableExpression(var: !4775, expr: !DIExpression())
!4775 = distinct !DIGlobalVariable(scope: null, file: !2, line: 671, type: !2154, isLocal: true, isDefinition: true)
!4776 = !DIGlobalVariableExpression(var: !4777, expr: !DIExpression())
!4777 = distinct !DIGlobalVariable(scope: null, file: !2, line: 675, type: !3, isLocal: true, isDefinition: true)
!4778 = !DIGlobalVariableExpression(var: !4779, expr: !DIExpression())
!4779 = distinct !DIGlobalVariable(scope: null, file: !2, line: 677, type: !4780, isLocal: true, isDefinition: true)
!4780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !4781)
!4781 = !{!4782}
!4782 = !DISubrange(count: 26)
!4783 = !DIGlobalVariableExpression(var: !4784, expr: !DIExpression())
!4784 = distinct !DIGlobalVariable(scope: null, file: !2, line: 679, type: !4785, isLocal: true, isDefinition: true)
!4785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !4786)
!4786 = !{!4787}
!4787 = !DISubrange(count: 28)
!4788 = !DIGlobalVariableExpression(var: !4789, expr: !DIExpression())
!4789 = distinct !DIGlobalVariable(scope: null, file: !2, line: 681, type: !4785, isLocal: true, isDefinition: true)
!4790 = !DIGlobalVariableExpression(var: !4791, expr: !DIExpression())
!4791 = distinct !DIGlobalVariable(scope: null, file: !2, line: 684, type: !4676, isLocal: true, isDefinition: true)
!4792 = !DIGlobalVariableExpression(var: !4793, expr: !DIExpression())
!4793 = distinct !DIGlobalVariable(scope: null, file: !2, line: 685, type: !4696, isLocal: true, isDefinition: true)
!4794 = !DIGlobalVariableExpression(var: !4795, expr: !DIExpression())
!4795 = distinct !DIGlobalVariable(scope: null, file: !2, line: 686, type: !4796, isLocal: true, isDefinition: true)
!4796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !4797)
!4797 = !{!4798}
!4798 = !DISubrange(count: 21)
!4799 = !DIGlobalVariableExpression(var: !4800, expr: !DIExpression())
!4800 = distinct !DIGlobalVariable(scope: null, file: !2, line: 687, type: !4796, isLocal: true, isDefinition: true)
!4801 = !DIGlobalVariableExpression(var: !4802, expr: !DIExpression())
!4802 = distinct !DIGlobalVariable(scope: null, file: !2, line: 689, type: !4653, isLocal: true, isDefinition: true)
!4803 = !DIGlobalVariableExpression(var: !4804, expr: !DIExpression())
!4804 = distinct !DIGlobalVariable(scope: null, file: !2, line: 690, type: !4805, isLocal: true, isDefinition: true)
!4805 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !4806)
!4806 = !{!4807}
!4807 = !DISubrange(count: 23)
!4808 = !DIGlobalVariableExpression(var: !4809, expr: !DIExpression())
!4809 = distinct !DIGlobalVariable(scope: null, file: !2, line: 730, type: !4810, isLocal: true, isDefinition: true)
!4810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 472, elements: !4811)
!4811 = !{!4812}
!4812 = !DISubrange(count: 59)
!4813 = !DIGlobalVariableExpression(var: !4814, expr: !DIExpression())
!4814 = distinct !DIGlobalVariable(scope: null, file: !2, line: 915, type: !4662, isLocal: true, isDefinition: true)
!4815 = !DIGlobalVariableExpression(var: !4816, expr: !DIExpression())
!4816 = distinct !DIGlobalVariable(scope: null, file: !2, line: 846, type: !4641, isLocal: true, isDefinition: true)
!4817 = !{i32 7, !"Dwarf Version", i32 5}
!4818 = !{i32 2, !"Debug Info Version", i32 3}
!4819 = !{i32 1, !"wchar_size", i32 2}
!4820 = !{i32 8, !"cf-protection-branch", i32 1}
!4821 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4822 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4823 = !{i32 1, !"Code Model", i32 2}
!4824 = !{i32 1, !"override-stack-alignment", i32 8}
!4825 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4826 = distinct !DISubprogram(name: "parse_crashkernel", scope: !2, file: !2, line: 287, type: !4827, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4830)
!4827 = !DISubroutineType(types: !4828)
!4828 = !{!93, !659, !400, !4829, !4829}
!4829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!4830 = !{!4831, !4832, !4833, !4834}
!4831 = !DILocalVariable(name: "cmdline", arg: 1, scope: !4826, file: !2, line: 287, type: !659)
!4832 = !DILocalVariable(name: "system_ram", arg: 2, scope: !4826, file: !2, line: 288, type: !400)
!4833 = !DILocalVariable(name: "crash_size", arg: 3, scope: !4826, file: !2, line: 289, type: !4829)
!4834 = !DILocalVariable(name: "crash_base", arg: 4, scope: !4826, file: !2, line: 290, type: !4829)
!4835 = !DILocation(line: 287, column: 36, scope: !4826)
!4836 = !DILocation(line: 288, column: 28, scope: !4826)
!4837 = !DILocation(line: 289, column: 29, scope: !4826)
!4838 = !DILocation(line: 290, column: 29, scope: !4826)
!4839 = !DILocation(line: 292, column: 29, scope: !4826)
!4840 = !DILocation(line: 292, column: 38, scope: !4826)
!4841 = !DILocation(line: 292, column: 50, scope: !4826)
!4842 = !DILocation(line: 292, column: 62, scope: !4826)
!4843 = !DILocation(line: 292, column: 9, scope: !4826)
!4844 = !DILocation(line: 292, column: 2, scope: !4826)
!4845 = distinct !DISubprogram(name: "__parse_crashkernel", scope: !2, file: !2, line: 247, type: !4846, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4848)
!4846 = !DISubroutineType(types: !4847)
!4847 = !{!93, !659, !400, !4829, !4829, !447, !447}
!4848 = !{!4849, !4850, !4851, !4852, !4853, !4854, !4855, !4856, !4857}
!4849 = !DILocalVariable(name: "cmdline", arg: 1, scope: !4845, file: !2, line: 247, type: !659)
!4850 = !DILocalVariable(name: "system_ram", arg: 2, scope: !4845, file: !2, line: 248, type: !400)
!4851 = !DILocalVariable(name: "crash_size", arg: 3, scope: !4845, file: !2, line: 249, type: !4829)
!4852 = !DILocalVariable(name: "crash_base", arg: 4, scope: !4845, file: !2, line: 250, type: !4829)
!4853 = !DILocalVariable(name: "name", arg: 5, scope: !4845, file: !2, line: 251, type: !447)
!4854 = !DILocalVariable(name: "suffix", arg: 6, scope: !4845, file: !2, line: 252, type: !447)
!4855 = !DILocalVariable(name: "first_colon", scope: !4845, file: !2, line: 254, type: !659)
!4856 = !DILocalVariable(name: "first_space", scope: !4845, file: !2, line: 254, type: !659)
!4857 = !DILocalVariable(name: "ck_cmdline", scope: !4845, file: !2, line: 255, type: !659)
!4858 = !DILocation(line: 247, column: 45, scope: !4845)
!4859 = !DILocation(line: 248, column: 28, scope: !4845)
!4860 = !DILocation(line: 249, column: 29, scope: !4845)
!4861 = !DILocation(line: 250, column: 29, scope: !4845)
!4862 = !DILocation(line: 251, column: 21, scope: !4845)
!4863 = !DILocation(line: 252, column: 21, scope: !4845)
!4864 = !DILocation(line: 254, column: 2, scope: !4845)
!4865 = !DILocation(line: 254, column: 8, scope: !4845)
!4866 = !DILocation(line: 254, column: 22, scope: !4845)
!4867 = !DILocation(line: 255, column: 2, scope: !4845)
!4868 = !DILocation(line: 255, column: 8, scope: !4845)
!4869 = !DILocation(line: 257, column: 2, scope: !4845)
!4870 = !DILocation(line: 257, column: 2, scope: !4871)
!4871 = distinct !DILexicalBlock(scope: !4872, file: !2, line: 257, column: 2)
!4872 = distinct !DILexicalBlock(scope: !4845, file: !2, line: 257, column: 2)
!4873 = !DILocation(line: 257, column: 2, scope: !4872)
!4874 = !DILocation(line: 257, column: 2, scope: !4875)
!4875 = distinct !DILexicalBlock(scope: !4871, file: !2, line: 257, column: 2)
!4876 = !DILocation(line: 257, column: 2, scope: !4877)
!4877 = distinct !DILexicalBlock(scope: !4875, file: !2, line: 257, column: 2)
!4878 = !DILocation(line: 257, column: 2, scope: !4879)
!4879 = distinct !DILexicalBlock(scope: !4875, file: !2, line: 257, column: 2)
!4880 = !{i64 2155005134, i64 2155005163, i64 2155005209, i64 2155005267, i64 2155005321, i64 2155005375, i64 2155005430, i64 2155005461}
!4881 = !DILocation(line: 258, column: 3, scope: !4845)
!4882 = !DILocation(line: 258, column: 14, scope: !4845)
!4883 = !DILocation(line: 259, column: 3, scope: !4845)
!4884 = !DILocation(line: 259, column: 14, scope: !4845)
!4885 = !DILocation(line: 261, column: 36, scope: !4845)
!4886 = !DILocation(line: 261, column: 45, scope: !4845)
!4887 = !DILocation(line: 261, column: 51, scope: !4845)
!4888 = !DILocation(line: 261, column: 15, scope: !4845)
!4889 = !DILocation(line: 261, column: 13, scope: !4845)
!4890 = !DILocation(line: 262, column: 7, scope: !4891)
!4891 = distinct !DILexicalBlock(scope: !4845, file: !2, line: 262, column: 6)
!4892 = !DILocation(line: 262, column: 6, scope: !4845)
!4893 = !DILocation(line: 263, column: 3, scope: !4891)
!4894 = !DILocation(line: 265, column: 23, scope: !4845)
!4895 = !DILocation(line: 265, column: 16, scope: !4845)
!4896 = !DILocation(line: 265, column: 13, scope: !4845)
!4897 = !DILocation(line: 267, column: 6, scope: !4898)
!4898 = distinct !DILexicalBlock(scope: !4845, file: !2, line: 267, column: 6)
!4899 = !DILocation(line: 267, column: 6, scope: !4845)
!4900 = !DILocation(line: 268, column: 35, scope: !4898)
!4901 = !DILocation(line: 268, column: 47, scope: !4898)
!4902 = !DILocation(line: 269, column: 5, scope: !4898)
!4903 = !DILocation(line: 268, column: 10, scope: !4898)
!4904 = !DILocation(line: 268, column: 3, scope: !4898)
!4905 = !DILocation(line: 274, column: 23, scope: !4845)
!4906 = !DILocation(line: 274, column: 16, scope: !4845)
!4907 = !DILocation(line: 274, column: 14, scope: !4845)
!4908 = !DILocation(line: 275, column: 23, scope: !4845)
!4909 = !DILocation(line: 275, column: 16, scope: !4845)
!4910 = !DILocation(line: 275, column: 14, scope: !4845)
!4911 = !DILocation(line: 276, column: 6, scope: !4912)
!4912 = distinct !DILexicalBlock(scope: !4845, file: !2, line: 276, column: 6)
!4913 = !DILocation(line: 276, column: 18, scope: !4912)
!4914 = !DILocation(line: 276, column: 23, scope: !4912)
!4915 = !DILocation(line: 276, column: 35, scope: !4912)
!4916 = !DILocation(line: 276, column: 38, scope: !4912)
!4917 = !DILocation(line: 276, column: 52, scope: !4912)
!4918 = !DILocation(line: 276, column: 50, scope: !4912)
!4919 = !DILocation(line: 276, column: 6, scope: !4845)
!4920 = !DILocation(line: 277, column: 32, scope: !4912)
!4921 = !DILocation(line: 277, column: 44, scope: !4912)
!4922 = !DILocation(line: 278, column: 5, scope: !4912)
!4923 = !DILocation(line: 278, column: 17, scope: !4912)
!4924 = !DILocation(line: 277, column: 10, scope: !4912)
!4925 = !DILocation(line: 277, column: 3, scope: !4912)
!4926 = !DILocation(line: 280, column: 34, scope: !4845)
!4927 = !DILocation(line: 280, column: 46, scope: !4845)
!4928 = !DILocation(line: 280, column: 58, scope: !4845)
!4929 = !DILocation(line: 280, column: 9, scope: !4845)
!4930 = !DILocation(line: 280, column: 2, scope: !4845)
!4931 = !DILocation(line: 281, column: 1, scope: !4845)
!4932 = distinct !DISubprogram(name: "parse_crashkernel_high", scope: !2, file: !2, line: 296, type: !4827, scopeLine: 300, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4933)
!4933 = !{!4934, !4935, !4936, !4937}
!4934 = !DILocalVariable(name: "cmdline", arg: 1, scope: !4932, file: !2, line: 296, type: !659)
!4935 = !DILocalVariable(name: "system_ram", arg: 2, scope: !4932, file: !2, line: 297, type: !400)
!4936 = !DILocalVariable(name: "crash_size", arg: 3, scope: !4932, file: !2, line: 298, type: !4829)
!4937 = !DILocalVariable(name: "crash_base", arg: 4, scope: !4932, file: !2, line: 299, type: !4829)
!4938 = !DILocation(line: 296, column: 41, scope: !4932)
!4939 = !DILocation(line: 297, column: 28, scope: !4932)
!4940 = !DILocation(line: 298, column: 29, scope: !4932)
!4941 = !DILocation(line: 299, column: 29, scope: !4932)
!4942 = !DILocation(line: 301, column: 29, scope: !4932)
!4943 = !DILocation(line: 301, column: 38, scope: !4932)
!4944 = !DILocation(line: 301, column: 50, scope: !4932)
!4945 = !DILocation(line: 301, column: 62, scope: !4932)
!4946 = !DILocation(line: 302, column: 21, scope: !4932)
!4947 = !DILocation(line: 301, column: 9, scope: !4932)
!4948 = !DILocation(line: 301, column: 2, scope: !4932)
!4949 = distinct !DISubprogram(name: "parse_crashkernel_low", scope: !2, file: !2, line: 305, type: !4827, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4950)
!4950 = !{!4951, !4952, !4953, !4954}
!4951 = !DILocalVariable(name: "cmdline", arg: 1, scope: !4949, file: !2, line: 305, type: !659)
!4952 = !DILocalVariable(name: "system_ram", arg: 2, scope: !4949, file: !2, line: 306, type: !400)
!4953 = !DILocalVariable(name: "crash_size", arg: 3, scope: !4949, file: !2, line: 307, type: !4829)
!4954 = !DILocalVariable(name: "crash_base", arg: 4, scope: !4949, file: !2, line: 308, type: !4829)
!4955 = !DILocation(line: 305, column: 40, scope: !4949)
!4956 = !DILocation(line: 306, column: 28, scope: !4949)
!4957 = !DILocation(line: 307, column: 29, scope: !4949)
!4958 = !DILocation(line: 308, column: 29, scope: !4949)
!4959 = !DILocation(line: 310, column: 29, scope: !4949)
!4960 = !DILocation(line: 310, column: 38, scope: !4949)
!4961 = !DILocation(line: 310, column: 50, scope: !4949)
!4962 = !DILocation(line: 310, column: 62, scope: !4949)
!4963 = !DILocation(line: 311, column: 21, scope: !4949)
!4964 = !DILocation(line: 310, column: 9, scope: !4949)
!4965 = !DILocation(line: 310, column: 2, scope: !4949)
!4966 = distinct !DISubprogram(name: "parse_crashkernel_dummy", scope: !2, file: !2, line: 318, type: !4511, scopeLine: 319, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4967)
!4967 = !{!4968}
!4968 = !DILocalVariable(name: "arg", arg: 1, scope: !4966, file: !2, line: 318, type: !659)
!4969 = !DILocation(line: 318, column: 49, scope: !4966)
!4970 = !DILocation(line: 320, column: 2, scope: !4966)
!4971 = distinct !DISubprogram(name: "crash_prepare_elf64_headers", scope: !2, file: !2, line: 324, type: !4972, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4980)
!4972 = !DISubroutineType(types: !4973)
!4973 = !{!93, !4974, !93, !2996, !3515}
!4974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4975, size: 64)
!4975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crash_mem", file: !426, line: 92, size: 64, elements: !4976)
!4976 = !{!4977, !4978, !4979}
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "max_nr_ranges", scope: !4975, file: !426, line: 93, baseType: !13, size: 32)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ranges", scope: !4975, file: !426, line: 94, baseType: !13, size: 32, offset: 32)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !4975, file: !426, line: 95, baseType: !4493, offset: 64)
!4980 = !{!4981, !4982, !4983, !4984, !4985, !4986, !4987, !4988, !4989, !4990, !4991, !4992, !4993, !4994, !4995, !4996, !5002}
!4981 = !DILocalVariable(name: "mem", arg: 1, scope: !4971, file: !2, line: 324, type: !4974)
!4982 = !DILocalVariable(name: "need_kernel_map", arg: 2, scope: !4971, file: !2, line: 324, type: !93)
!4983 = !DILocalVariable(name: "addr", arg: 3, scope: !4971, file: !2, line: 325, type: !2996)
!4984 = !DILocalVariable(name: "sz", arg: 4, scope: !4971, file: !2, line: 325, type: !3515)
!4985 = !DILocalVariable(name: "ehdr", scope: !4971, file: !2, line: 327, type: !378)
!4986 = !DILocalVariable(name: "phdr", scope: !4971, file: !2, line: 328, type: !411)
!4987 = !DILocalVariable(name: "nr_cpus", scope: !4971, file: !2, line: 329, type: !375)
!4988 = !DILocalVariable(name: "nr_phdr", scope: !4971, file: !2, line: 329, type: !375)
!4989 = !DILocalVariable(name: "elf_sz", scope: !4971, file: !2, line: 329, type: !375)
!4990 = !DILocalVariable(name: "buf", scope: !4971, file: !2, line: 330, type: !444)
!4991 = !DILocalVariable(name: "cpu", scope: !4971, file: !2, line: 331, type: !13)
!4992 = !DILocalVariable(name: "i", scope: !4971, file: !2, line: 331, type: !13)
!4993 = !DILocalVariable(name: "notes_addr", scope: !4971, file: !2, line: 332, type: !400)
!4994 = !DILocalVariable(name: "mstart", scope: !4971, file: !2, line: 333, type: !375)
!4995 = !DILocalVariable(name: "mend", scope: !4971, file: !2, line: 333, type: !375)
!4996 = !DILocalVariable(name: "__vpp_verify", scope: !4997, file: !2, line: 373, type: !1389)
!4997 = distinct !DILexicalBlock(scope: !4998, file: !2, line: 373, column: 36)
!4998 = distinct !DILexicalBlock(scope: !4999, file: !2, line: 373, column: 36)
!4999 = distinct !DILexicalBlock(scope: !5000, file: !2, line: 371, column: 29)
!5000 = distinct !DILexicalBlock(scope: !5001, file: !2, line: 371, column: 2)
!5001 = distinct !DILexicalBlock(scope: !4971, file: !2, line: 371, column: 2)
!5002 = !DILocalVariable(name: "__ptr", scope: !5003, file: !2, line: 373, type: !375)
!5003 = distinct !DILexicalBlock(scope: !4998, file: !2, line: 373, column: 36)
!5004 = !DILocation(line: 324, column: 51, scope: !4971)
!5005 = !DILocation(line: 324, column: 60, scope: !4971)
!5006 = !DILocation(line: 325, column: 13, scope: !4971)
!5007 = !DILocation(line: 325, column: 34, scope: !4971)
!5008 = !DILocation(line: 327, column: 2, scope: !4971)
!5009 = !DILocation(line: 327, column: 14, scope: !4971)
!5010 = !DILocation(line: 328, column: 2, scope: !4971)
!5011 = !DILocation(line: 328, column: 14, scope: !4971)
!5012 = !DILocation(line: 329, column: 2, scope: !4971)
!5013 = !DILocation(line: 329, column: 16, scope: !4971)
!5014 = !DILocation(line: 329, column: 26, scope: !4971)
!5015 = !DILocation(line: 329, column: 47, scope: !4971)
!5016 = !DILocation(line: 329, column: 56, scope: !4971)
!5017 = !DILocation(line: 330, column: 2, scope: !4971)
!5018 = !DILocation(line: 330, column: 17, scope: !4971)
!5019 = !DILocation(line: 331, column: 2, scope: !4971)
!5020 = !DILocation(line: 331, column: 15, scope: !4971)
!5021 = !DILocation(line: 331, column: 20, scope: !4971)
!5022 = !DILocation(line: 332, column: 2, scope: !4971)
!5023 = !DILocation(line: 332, column: 21, scope: !4971)
!5024 = !DILocation(line: 333, column: 2, scope: !4971)
!5025 = !DILocation(line: 333, column: 16, scope: !4971)
!5026 = !DILocation(line: 333, column: 24, scope: !4971)
!5027 = !DILocation(line: 336, column: 12, scope: !4971)
!5028 = !DILocation(line: 336, column: 20, scope: !4971)
!5029 = !DILocation(line: 336, column: 10, scope: !4971)
!5030 = !DILocation(line: 337, column: 13, scope: !4971)
!5031 = !DILocation(line: 337, column: 18, scope: !4971)
!5032 = !DILocation(line: 337, column: 10, scope: !4971)
!5033 = !DILocation(line: 347, column: 9, scope: !4971)
!5034 = !DILocation(line: 348, column: 32, scope: !4971)
!5035 = !DILocation(line: 348, column: 40, scope: !4971)
!5036 = !DILocation(line: 348, column: 30, scope: !4971)
!5037 = !DILocation(line: 348, column: 9, scope: !4971)
!5038 = !DILocation(line: 349, column: 11, scope: !4971)
!5039 = !DILocation(line: 349, column: 9, scope: !4971)
!5040 = !DILocation(line: 351, column: 16, scope: !4971)
!5041 = !DILocation(line: 351, column: 8, scope: !4971)
!5042 = !DILocation(line: 351, column: 6, scope: !4971)
!5043 = !DILocation(line: 352, column: 7, scope: !5044)
!5044 = distinct !DILexicalBlock(scope: !4971, file: !2, line: 352, column: 6)
!5045 = !DILocation(line: 352, column: 6, scope: !4971)
!5046 = !DILocation(line: 353, column: 3, scope: !5044)
!5047 = !DILocation(line: 355, column: 23, scope: !4971)
!5048 = !DILocation(line: 355, column: 7, scope: !4971)
!5049 = !DILocation(line: 356, column: 24, scope: !4971)
!5050 = !DILocation(line: 356, column: 29, scope: !4971)
!5051 = !DILocation(line: 356, column: 7, scope: !4971)
!5052 = !DILocation(line: 357, column: 9, scope: !4971)
!5053 = !DILocation(line: 357, column: 15, scope: !4971)
!5054 = !DILocation(line: 357, column: 2, scope: !4971)
!5055 = !DILocation(line: 358, column: 2, scope: !4971)
!5056 = !DILocation(line: 358, column: 8, scope: !4971)
!5057 = !DILocation(line: 358, column: 26, scope: !4971)
!5058 = !DILocation(line: 359, column: 2, scope: !4971)
!5059 = !DILocation(line: 359, column: 8, scope: !4971)
!5060 = !DILocation(line: 359, column: 25, scope: !4971)
!5061 = !DILocation(line: 360, column: 2, scope: !4971)
!5062 = !DILocation(line: 360, column: 8, scope: !4971)
!5063 = !DILocation(line: 360, column: 28, scope: !4971)
!5064 = !DILocation(line: 361, column: 2, scope: !4971)
!5065 = !DILocation(line: 361, column: 8, scope: !4971)
!5066 = !DILocation(line: 361, column: 26, scope: !4971)
!5067 = !DILocation(line: 362, column: 9, scope: !4971)
!5068 = !DILocation(line: 362, column: 15, scope: !4971)
!5069 = !DILocation(line: 362, column: 23, scope: !4971)
!5070 = !DILocation(line: 362, column: 2, scope: !4971)
!5071 = !DILocation(line: 363, column: 2, scope: !4971)
!5072 = !DILocation(line: 363, column: 8, scope: !4971)
!5073 = !DILocation(line: 363, column: 15, scope: !4971)
!5074 = !DILocation(line: 364, column: 2, scope: !4971)
!5075 = !DILocation(line: 364, column: 8, scope: !4971)
!5076 = !DILocation(line: 364, column: 18, scope: !4971)
!5077 = !DILocation(line: 365, column: 2, scope: !4971)
!5078 = !DILocation(line: 365, column: 8, scope: !4971)
!5079 = !DILocation(line: 365, column: 18, scope: !4971)
!5080 = !DILocation(line: 366, column: 2, scope: !4971)
!5081 = !DILocation(line: 366, column: 8, scope: !4971)
!5082 = !DILocation(line: 366, column: 16, scope: !4971)
!5083 = !DILocation(line: 367, column: 2, scope: !4971)
!5084 = !DILocation(line: 367, column: 8, scope: !4971)
!5085 = !DILocation(line: 367, column: 17, scope: !4971)
!5086 = !DILocation(line: 368, column: 2, scope: !4971)
!5087 = !DILocation(line: 368, column: 8, scope: !4971)
!5088 = !DILocation(line: 368, column: 20, scope: !4971)
!5089 = !DILocation(line: 371, column: 2, scope: !5001)
!5090 = !DILocation(line: 371, column: 2, scope: !5000)
!5091 = !DILocation(line: 372, column: 3, scope: !4999)
!5092 = !DILocation(line: 372, column: 9, scope: !4999)
!5093 = !DILocation(line: 372, column: 16, scope: !4999)
!5094 = !DILocation(line: 373, column: 36, scope: !4998)
!5095 = !DILocation(line: 373, column: 36, scope: !4997)
!5096 = !DILocation(line: 373, column: 36, scope: !5003)
!5097 = !DILocation(line: 373, column: 16, scope: !4999)
!5098 = !DILocation(line: 373, column: 14, scope: !4999)
!5099 = !DILocation(line: 374, column: 36, scope: !4999)
!5100 = !DILocation(line: 374, column: 20, scope: !4999)
!5101 = !DILocation(line: 374, column: 26, scope: !4999)
!5102 = !DILocation(line: 374, column: 34, scope: !4999)
!5103 = !DILocation(line: 374, column: 3, scope: !4999)
!5104 = !DILocation(line: 374, column: 9, scope: !4999)
!5105 = !DILocation(line: 374, column: 18, scope: !4999)
!5106 = !DILocation(line: 375, column: 20, scope: !4999)
!5107 = !DILocation(line: 375, column: 26, scope: !4999)
!5108 = !DILocation(line: 375, column: 34, scope: !4999)
!5109 = !DILocation(line: 375, column: 3, scope: !4999)
!5110 = !DILocation(line: 375, column: 9, scope: !4999)
!5111 = !DILocation(line: 375, column: 18, scope: !4999)
!5112 = !DILocation(line: 376, column: 4, scope: !4999)
!5113 = !DILocation(line: 376, column: 10, scope: !4999)
!5114 = !DILocation(line: 376, column: 18, scope: !4999)
!5115 = !DILocation(line: 377, column: 7, scope: !4999)
!5116 = !DILocation(line: 378, column: 2, scope: !4999)
!5117 = distinct !{!5117, !5089, !5118, !5119, !5120}
!5118 = !DILocation(line: 378, column: 2, scope: !5001)
!5119 = !{!"llvm.loop.mustprogress"}
!5120 = !{!"llvm.loop.unroll.disable"}
!5121 = !DILocation(line: 381, column: 2, scope: !4971)
!5122 = !DILocation(line: 381, column: 8, scope: !4971)
!5123 = !DILocation(line: 381, column: 15, scope: !4971)
!5124 = !DILocation(line: 382, column: 35, scope: !4971)
!5125 = !DILocation(line: 382, column: 19, scope: !4971)
!5126 = !DILocation(line: 382, column: 25, scope: !4971)
!5127 = !DILocation(line: 382, column: 33, scope: !4971)
!5128 = !DILocation(line: 382, column: 2, scope: !4971)
!5129 = !DILocation(line: 382, column: 8, scope: !4971)
!5130 = !DILocation(line: 382, column: 17, scope: !4971)
!5131 = !DILocation(line: 383, column: 19, scope: !4971)
!5132 = !DILocation(line: 383, column: 25, scope: !4971)
!5133 = !DILocation(line: 383, column: 33, scope: !4971)
!5134 = !DILocation(line: 383, column: 2, scope: !4971)
!5135 = !DILocation(line: 383, column: 8, scope: !4971)
!5136 = !DILocation(line: 383, column: 17, scope: !4971)
!5137 = !DILocation(line: 384, column: 3, scope: !4971)
!5138 = !DILocation(line: 384, column: 9, scope: !4971)
!5139 = !DILocation(line: 384, column: 17, scope: !4971)
!5140 = !DILocation(line: 385, column: 6, scope: !4971)
!5141 = !DILocation(line: 388, column: 6, scope: !5142)
!5142 = distinct !DILexicalBlock(scope: !4971, file: !2, line: 388, column: 6)
!5143 = !DILocation(line: 388, column: 6, scope: !4971)
!5144 = !DILocation(line: 389, column: 3, scope: !5145)
!5145 = distinct !DILexicalBlock(scope: !5142, file: !2, line: 388, column: 23)
!5146 = !DILocation(line: 389, column: 9, scope: !5145)
!5147 = !DILocation(line: 389, column: 16, scope: !5145)
!5148 = !DILocation(line: 390, column: 3, scope: !5145)
!5149 = !DILocation(line: 390, column: 9, scope: !5145)
!5150 = !DILocation(line: 390, column: 17, scope: !5145)
!5151 = !DILocation(line: 391, column: 3, scope: !5145)
!5152 = !DILocation(line: 391, column: 9, scope: !5145)
!5153 = !DILocation(line: 391, column: 17, scope: !5145)
!5154 = !DILocation(line: 392, column: 20, scope: !5145)
!5155 = !DILocation(line: 392, column: 26, scope: !5145)
!5156 = !DILocation(line: 392, column: 34, scope: !5145)
!5157 = !DILocation(line: 392, column: 3, scope: !5145)
!5158 = !DILocation(line: 392, column: 9, scope: !5145)
!5159 = !DILocation(line: 392, column: 18, scope: !5145)
!5160 = !DILocation(line: 393, column: 36, scope: !5145)
!5161 = !DILocation(line: 393, column: 20, scope: !5145)
!5162 = !DILocation(line: 393, column: 26, scope: !5145)
!5163 = !DILocation(line: 393, column: 34, scope: !5145)
!5164 = !DILocation(line: 393, column: 3, scope: !5145)
!5165 = !DILocation(line: 393, column: 9, scope: !5145)
!5166 = !DILocation(line: 393, column: 18, scope: !5145)
!5167 = !DILocation(line: 394, column: 3, scope: !5145)
!5168 = !DILocation(line: 394, column: 9, scope: !5145)
!5169 = !DILocation(line: 394, column: 16, scope: !5145)
!5170 = !DILocation(line: 395, column: 7, scope: !5145)
!5171 = !DILocation(line: 396, column: 2, scope: !5145)
!5172 = !DILocation(line: 399, column: 9, scope: !5173)
!5173 = distinct !DILexicalBlock(scope: !4971, file: !2, line: 399, column: 2)
!5174 = !DILocation(line: 399, column: 7, scope: !5173)
!5175 = !DILocation(line: 399, column: 14, scope: !5176)
!5176 = distinct !DILexicalBlock(scope: !5173, file: !2, line: 399, column: 2)
!5177 = !DILocation(line: 399, column: 18, scope: !5176)
!5178 = !DILocation(line: 399, column: 23, scope: !5176)
!5179 = !DILocation(line: 399, column: 16, scope: !5176)
!5180 = !DILocation(line: 399, column: 2, scope: !5173)
!5181 = !DILocation(line: 400, column: 12, scope: !5182)
!5182 = distinct !DILexicalBlock(scope: !5176, file: !2, line: 399, column: 39)
!5183 = !DILocation(line: 400, column: 17, scope: !5182)
!5184 = !DILocation(line: 400, column: 24, scope: !5182)
!5185 = !DILocation(line: 400, column: 27, scope: !5182)
!5186 = !DILocation(line: 400, column: 10, scope: !5182)
!5187 = !DILocation(line: 401, column: 10, scope: !5182)
!5188 = !DILocation(line: 401, column: 15, scope: !5182)
!5189 = !DILocation(line: 401, column: 22, scope: !5182)
!5190 = !DILocation(line: 401, column: 25, scope: !5182)
!5191 = !DILocation(line: 401, column: 8, scope: !5182)
!5192 = !DILocation(line: 403, column: 3, scope: !5182)
!5193 = !DILocation(line: 403, column: 9, scope: !5182)
!5194 = !DILocation(line: 403, column: 16, scope: !5182)
!5195 = !DILocation(line: 404, column: 3, scope: !5182)
!5196 = !DILocation(line: 404, column: 9, scope: !5182)
!5197 = !DILocation(line: 404, column: 17, scope: !5182)
!5198 = !DILocation(line: 405, column: 21, scope: !5182)
!5199 = !DILocation(line: 405, column: 3, scope: !5182)
!5200 = !DILocation(line: 405, column: 9, scope: !5182)
!5201 = !DILocation(line: 405, column: 19, scope: !5182)
!5202 = !DILocation(line: 407, column: 19, scope: !5182)
!5203 = !DILocation(line: 407, column: 3, scope: !5182)
!5204 = !DILocation(line: 407, column: 9, scope: !5182)
!5205 = !DILocation(line: 407, column: 17, scope: !5182)
!5206 = !DILocation(line: 408, column: 35, scope: !5182)
!5207 = !DILocation(line: 408, column: 19, scope: !5182)
!5208 = !DILocation(line: 408, column: 3, scope: !5182)
!5209 = !DILocation(line: 408, column: 9, scope: !5182)
!5210 = !DILocation(line: 408, column: 17, scope: !5182)
!5211 = !DILocation(line: 409, column: 36, scope: !5182)
!5212 = !DILocation(line: 409, column: 43, scope: !5182)
!5213 = !DILocation(line: 409, column: 41, scope: !5182)
!5214 = !DILocation(line: 409, column: 50, scope: !5182)
!5215 = !DILocation(line: 409, column: 20, scope: !5182)
!5216 = !DILocation(line: 409, column: 26, scope: !5182)
!5217 = !DILocation(line: 409, column: 34, scope: !5182)
!5218 = !DILocation(line: 409, column: 3, scope: !5182)
!5219 = !DILocation(line: 409, column: 9, scope: !5182)
!5220 = !DILocation(line: 409, column: 18, scope: !5182)
!5221 = !DILocation(line: 410, column: 3, scope: !5182)
!5222 = !DILocation(line: 410, column: 9, scope: !5182)
!5223 = !DILocation(line: 410, column: 17, scope: !5182)
!5224 = !DILocation(line: 411, column: 3, scope: !5182)
!5225 = !DILocation(line: 411, column: 9, scope: !5182)
!5226 = !DILocation(line: 411, column: 16, scope: !5182)
!5227 = !DILocation(line: 412, column: 3, scope: !5228)
!5228 = distinct !DILexicalBlock(scope: !5229, file: !2, line: 412, column: 3)
!5229 = distinct !DILexicalBlock(scope: !5182, file: !2, line: 412, column: 3)
!5230 = !DILocation(line: 412, column: 3, scope: !5229)
!5231 = !DILocation(line: 415, column: 7, scope: !5182)
!5232 = !DILocation(line: 416, column: 2, scope: !5182)
!5233 = !DILocation(line: 399, column: 35, scope: !5176)
!5234 = !DILocation(line: 399, column: 2, scope: !5176)
!5235 = distinct !{!5235, !5180, !5236, !5119, !5120}
!5236 = !DILocation(line: 416, column: 2, scope: !5173)
!5237 = !DILocation(line: 418, column: 10, scope: !4971)
!5238 = !DILocation(line: 418, column: 3, scope: !4971)
!5239 = !DILocation(line: 418, column: 8, scope: !4971)
!5240 = !DILocation(line: 419, column: 8, scope: !4971)
!5241 = !DILocation(line: 419, column: 3, scope: !4971)
!5242 = !DILocation(line: 419, column: 6, scope: !4971)
!5243 = !DILocation(line: 420, column: 2, scope: !4971)
!5244 = !DILocation(line: 421, column: 1, scope: !4971)
!5245 = distinct !DISubprogram(name: "cpumask_weight", scope: !371, file: !371, line: 690, type: !5246, scopeLine: 691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5248)
!5246 = !DISubroutineType(types: !5247)
!5247 = !{!13, !368}
!5248 = !{!5249}
!5249 = !DILocalVariable(name: "srcp", arg: 1, scope: !5245, file: !371, line: 690, type: !368)
!5250 = !DILocation(line: 690, column: 65, scope: !5245)
!5251 = !DILocation(line: 692, column: 23, scope: !5245)
!5252 = !DILocation(line: 692, column: 9, scope: !5245)
!5253 = !DILocation(line: 692, column: 2, scope: !5245)
!5254 = !DISubprogram(name: "vzalloc", scope: !2374, file: !2374, line: 141, type: !5255, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5255 = !DISubroutineType(types: !5256)
!5256 = !{!432, !375}
!5257 = distinct !DISubprogram(name: "find_next_bit", scope: !5258, file: !5258, line: 54, type: !5259, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5262)
!5258 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!5259 = !DISubroutineType(types: !5260)
!5260 = !{!375, !5261, !375, !375}
!5261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4432, size: 64)
!5262 = !{!5263, !5264, !5265, !5266}
!5263 = !DILocalVariable(name: "addr", arg: 1, scope: !5257, file: !5258, line: 54, type: !5261)
!5264 = !DILocalVariable(name: "size", arg: 2, scope: !5257, file: !5258, line: 54, type: !375)
!5265 = !DILocalVariable(name: "offset", arg: 3, scope: !5257, file: !5258, line: 55, type: !375)
!5266 = !DILocalVariable(name: "val", scope: !5267, file: !5258, line: 58, type: !375)
!5267 = distinct !DILexicalBlock(scope: !5268, file: !5258, line: 57, column: 31)
!5268 = distinct !DILexicalBlock(scope: !5257, file: !5258, line: 57, column: 6)
!5269 = !DILocation(line: 54, column: 50, scope: !5257)
!5270 = !DILocation(line: 54, column: 70, scope: !5257)
!5271 = !DILocation(line: 55, column: 22, scope: !5257)
!5272 = !DILocation(line: 57, column: 6, scope: !5268)
!5273 = !DILocation(line: 57, column: 6, scope: !5257)
!5274 = !DILocation(line: 58, column: 3, scope: !5267)
!5275 = !DILocation(line: 58, column: 17, scope: !5267)
!5276 = !DILocation(line: 60, column: 7, scope: !5277)
!5277 = distinct !DILexicalBlock(scope: !5267, file: !5258, line: 60, column: 7)
!5278 = !DILocation(line: 60, column: 7, scope: !5267)
!5279 = !DILocation(line: 61, column: 11, scope: !5277)
!5280 = !DILocation(line: 61, column: 4, scope: !5277)
!5281 = !DILocation(line: 63, column: 10, scope: !5267)
!5282 = !DILocation(line: 63, column: 9, scope: !5267)
!5283 = !DILocation(line: 63, column: 17, scope: !5267)
!5284 = !DILocation(line: 63, column: 15, scope: !5267)
!5285 = !DILocation(line: 63, column: 7, scope: !5267)
!5286 = !DILocation(line: 64, column: 10, scope: !5267)
!5287 = !DILocation(line: 64, column: 16, scope: !5267)
!5288 = !DILocation(line: 64, column: 29, scope: !5267)
!5289 = !DILocation(line: 64, column: 3, scope: !5267)
!5290 = !DILocation(line: 65, column: 2, scope: !5268)
!5291 = !DILocation(line: 67, column: 24, scope: !5257)
!5292 = !DILocation(line: 67, column: 30, scope: !5257)
!5293 = !DILocation(line: 67, column: 36, scope: !5257)
!5294 = !DILocation(line: 67, column: 9, scope: !5257)
!5295 = !DILocation(line: 67, column: 2, scope: !5257)
!5296 = !DILocation(line: 68, column: 1, scope: !5257)
!5297 = !DISubprogram(name: "per_cpu_ptr_to_phys", scope: !5298, file: !5298, line: 138, type: !5299, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5298 = !DIFile(filename: "./include/linux/percpu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5b443d1a4673980cdbec5f10c6cbbaa")
!5299 = !DISubroutineType(types: !5300)
!5300 = !{!2385, !432}
!5301 = distinct !DISubprogram(name: "paddr_vmcoreinfo_note", scope: !2, file: !2, line: 586, type: !5302, scopeLine: 587, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!5302 = !DISubroutineType(types: !5303)
!5303 = !{!2385}
!5304 = !DILocation(line: 588, column: 9, scope: !5301)
!5305 = !DILocation(line: 588, column: 2, scope: !5301)
!5306 = distinct !DISubprogram(name: "crash_exclude_mem_range", scope: !2, file: !2, line: 423, type: !5307, scopeLine: 425, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5309)
!5307 = !DISubroutineType(types: !5308)
!5308 = !{!93, !4974, !400, !400}
!5309 = !{!5310, !5311, !5312, !5313, !5314, !5315, !5316, !5317, !5318, !5319}
!5310 = !DILocalVariable(name: "mem", arg: 1, scope: !5306, file: !2, line: 423, type: !4974)
!5311 = !DILocalVariable(name: "mstart", arg: 2, scope: !5306, file: !2, line: 424, type: !400)
!5312 = !DILocalVariable(name: "mend", arg: 3, scope: !5306, file: !2, line: 424, type: !400)
!5313 = !DILocalVariable(name: "i", scope: !5306, file: !2, line: 426, type: !93)
!5314 = !DILocalVariable(name: "j", scope: !5306, file: !2, line: 426, type: !93)
!5315 = !DILocalVariable(name: "start", scope: !5306, file: !2, line: 427, type: !400)
!5316 = !DILocalVariable(name: "end", scope: !5306, file: !2, line: 427, type: !400)
!5317 = !DILocalVariable(name: "p_start", scope: !5306, file: !2, line: 427, type: !400)
!5318 = !DILocalVariable(name: "p_end", scope: !5306, file: !2, line: 427, type: !400)
!5319 = !DILocalVariable(name: "temp_range", scope: !5306, file: !2, line: 428, type: !4482)
!5320 = !DILocation(line: 423, column: 47, scope: !5306)
!5321 = !DILocation(line: 424, column: 27, scope: !5306)
!5322 = !DILocation(line: 424, column: 54, scope: !5306)
!5323 = !DILocation(line: 426, column: 2, scope: !5306)
!5324 = !DILocation(line: 426, column: 6, scope: !5306)
!5325 = !DILocation(line: 426, column: 9, scope: !5306)
!5326 = !DILocation(line: 427, column: 2, scope: !5306)
!5327 = !DILocation(line: 427, column: 21, scope: !5306)
!5328 = !DILocation(line: 427, column: 28, scope: !5306)
!5329 = !DILocation(line: 427, column: 33, scope: !5306)
!5330 = !DILocation(line: 427, column: 42, scope: !5306)
!5331 = !DILocation(line: 428, column: 2, scope: !5306)
!5332 = !DILocation(line: 428, column: 15, scope: !5306)
!5333 = !DILocation(line: 430, column: 9, scope: !5334)
!5334 = distinct !DILexicalBlock(scope: !5306, file: !2, line: 430, column: 2)
!5335 = !DILocation(line: 430, column: 7, scope: !5334)
!5336 = !DILocation(line: 430, column: 14, scope: !5337)
!5337 = distinct !DILexicalBlock(scope: !5334, file: !2, line: 430, column: 2)
!5338 = !DILocation(line: 430, column: 18, scope: !5337)
!5339 = !DILocation(line: 430, column: 23, scope: !5337)
!5340 = !DILocation(line: 430, column: 16, scope: !5337)
!5341 = !DILocation(line: 430, column: 2, scope: !5334)
!5342 = !DILocation(line: 431, column: 11, scope: !5343)
!5343 = distinct !DILexicalBlock(scope: !5337, file: !2, line: 430, column: 39)
!5344 = !DILocation(line: 431, column: 16, scope: !5343)
!5345 = !DILocation(line: 431, column: 23, scope: !5343)
!5346 = !DILocation(line: 431, column: 26, scope: !5343)
!5347 = !DILocation(line: 431, column: 9, scope: !5343)
!5348 = !DILocation(line: 432, column: 9, scope: !5343)
!5349 = !DILocation(line: 432, column: 14, scope: !5343)
!5350 = !DILocation(line: 432, column: 21, scope: !5343)
!5351 = !DILocation(line: 432, column: 24, scope: !5343)
!5352 = !DILocation(line: 432, column: 7, scope: !5343)
!5353 = !DILocation(line: 433, column: 13, scope: !5343)
!5354 = !DILocation(line: 433, column: 11, scope: !5343)
!5355 = !DILocation(line: 434, column: 11, scope: !5343)
!5356 = !DILocation(line: 434, column: 9, scope: !5343)
!5357 = !DILocation(line: 436, column: 7, scope: !5358)
!5358 = distinct !DILexicalBlock(scope: !5343, file: !2, line: 436, column: 7)
!5359 = !DILocation(line: 436, column: 16, scope: !5358)
!5360 = !DILocation(line: 436, column: 14, scope: !5358)
!5361 = !DILocation(line: 436, column: 20, scope: !5358)
!5362 = !DILocation(line: 436, column: 23, scope: !5358)
!5363 = !DILocation(line: 436, column: 30, scope: !5358)
!5364 = !DILocation(line: 436, column: 28, scope: !5358)
!5365 = !DILocation(line: 436, column: 7, scope: !5343)
!5366 = !DILocation(line: 437, column: 4, scope: !5358)
!5367 = !DILocation(line: 440, column: 7, scope: !5368)
!5368 = distinct !DILexicalBlock(scope: !5343, file: !2, line: 440, column: 7)
!5369 = !DILocation(line: 440, column: 16, scope: !5368)
!5370 = !DILocation(line: 440, column: 14, scope: !5368)
!5371 = !DILocation(line: 440, column: 7, scope: !5343)
!5372 = !DILocation(line: 441, column: 14, scope: !5368)
!5373 = !DILocation(line: 441, column: 12, scope: !5368)
!5374 = !DILocation(line: 441, column: 4, scope: !5368)
!5375 = !DILocation(line: 442, column: 7, scope: !5376)
!5376 = distinct !DILexicalBlock(scope: !5343, file: !2, line: 442, column: 7)
!5377 = !DILocation(line: 442, column: 14, scope: !5376)
!5378 = !DILocation(line: 442, column: 12, scope: !5376)
!5379 = !DILocation(line: 442, column: 7, scope: !5343)
!5380 = !DILocation(line: 443, column: 12, scope: !5376)
!5381 = !DILocation(line: 443, column: 10, scope: !5376)
!5382 = !DILocation(line: 443, column: 4, scope: !5376)
!5383 = !DILocation(line: 446, column: 7, scope: !5384)
!5384 = distinct !DILexicalBlock(scope: !5343, file: !2, line: 446, column: 7)
!5385 = !DILocation(line: 446, column: 18, scope: !5384)
!5386 = !DILocation(line: 446, column: 15, scope: !5384)
!5387 = !DILocation(line: 446, column: 24, scope: !5384)
!5388 = !DILocation(line: 446, column: 27, scope: !5384)
!5389 = !DILocation(line: 446, column: 36, scope: !5384)
!5390 = !DILocation(line: 446, column: 33, scope: !5384)
!5391 = !DILocation(line: 446, column: 7, scope: !5343)
!5392 = !DILocation(line: 447, column: 4, scope: !5393)
!5393 = distinct !DILexicalBlock(scope: !5384, file: !2, line: 446, column: 41)
!5394 = !DILocation(line: 447, column: 9, scope: !5393)
!5395 = !DILocation(line: 447, column: 16, scope: !5393)
!5396 = !DILocation(line: 447, column: 19, scope: !5393)
!5397 = !DILocation(line: 447, column: 25, scope: !5393)
!5398 = !DILocation(line: 448, column: 4, scope: !5393)
!5399 = !DILocation(line: 448, column: 9, scope: !5393)
!5400 = !DILocation(line: 448, column: 16, scope: !5393)
!5401 = !DILocation(line: 448, column: 19, scope: !5393)
!5402 = !DILocation(line: 448, column: 23, scope: !5393)
!5403 = !DILocation(line: 449, column: 8, scope: !5404)
!5404 = distinct !DILexicalBlock(scope: !5393, file: !2, line: 449, column: 8)
!5405 = !DILocation(line: 449, column: 12, scope: !5404)
!5406 = !DILocation(line: 449, column: 17, scope: !5404)
!5407 = !DILocation(line: 449, column: 27, scope: !5404)
!5408 = !DILocation(line: 449, column: 10, scope: !5404)
!5409 = !DILocation(line: 449, column: 8, scope: !5393)
!5410 = !DILocation(line: 451, column: 14, scope: !5411)
!5411 = distinct !DILexicalBlock(scope: !5412, file: !2, line: 451, column: 5)
!5412 = distinct !DILexicalBlock(scope: !5404, file: !2, line: 449, column: 32)
!5413 = !DILocation(line: 451, column: 12, scope: !5411)
!5414 = !DILocation(line: 451, column: 10, scope: !5411)
!5415 = !DILocation(line: 451, column: 17, scope: !5416)
!5416 = distinct !DILexicalBlock(scope: !5411, file: !2, line: 451, column: 5)
!5417 = !DILocation(line: 451, column: 21, scope: !5416)
!5418 = !DILocation(line: 451, column: 26, scope: !5416)
!5419 = !DILocation(line: 451, column: 36, scope: !5416)
!5420 = !DILocation(line: 451, column: 19, scope: !5416)
!5421 = !DILocation(line: 451, column: 5, scope: !5411)
!5422 = !DILocation(line: 453, column: 7, scope: !5423)
!5423 = distinct !DILexicalBlock(scope: !5416, file: !2, line: 451, column: 46)
!5424 = !DILocation(line: 453, column: 12, scope: !5423)
!5425 = !DILocation(line: 453, column: 19, scope: !5423)
!5426 = !DILocation(line: 453, column: 20, scope: !5423)
!5427 = !DILocation(line: 453, column: 24, scope: !5423)
!5428 = !DILocation(line: 452, column: 6, scope: !5423)
!5429 = !DILocation(line: 452, column: 11, scope: !5423)
!5430 = !DILocation(line: 452, column: 18, scope: !5423)
!5431 = !DILocation(line: 452, column: 21, scope: !5423)
!5432 = !DILocation(line: 452, column: 27, scope: !5423)
!5433 = !DILocation(line: 455, column: 8, scope: !5423)
!5434 = !DILocation(line: 455, column: 13, scope: !5423)
!5435 = !DILocation(line: 455, column: 20, scope: !5423)
!5436 = !DILocation(line: 455, column: 21, scope: !5423)
!5437 = !DILocation(line: 455, column: 25, scope: !5423)
!5438 = !DILocation(line: 454, column: 6, scope: !5423)
!5439 = !DILocation(line: 454, column: 11, scope: !5423)
!5440 = !DILocation(line: 454, column: 18, scope: !5423)
!5441 = !DILocation(line: 454, column: 21, scope: !5423)
!5442 = !DILocation(line: 454, column: 25, scope: !5423)
!5443 = !DILocation(line: 456, column: 5, scope: !5423)
!5444 = !DILocation(line: 451, column: 42, scope: !5416)
!5445 = !DILocation(line: 451, column: 5, scope: !5416)
!5446 = distinct !{!5446, !5421, !5447, !5119, !5120}
!5447 = !DILocation(line: 456, column: 5, scope: !5411)
!5448 = !DILocation(line: 463, column: 6, scope: !5412)
!5449 = !DILocation(line: 464, column: 5, scope: !5412)
!5450 = !DILocation(line: 464, column: 10, scope: !5412)
!5451 = !DILocation(line: 464, column: 19, scope: !5412)
!5452 = !DILocation(line: 465, column: 5, scope: !5412)
!5453 = !DILocation(line: 467, column: 4, scope: !5393)
!5454 = !DILocation(line: 467, column: 9, scope: !5393)
!5455 = !DILocation(line: 467, column: 18, scope: !5393)
!5456 = !DILocation(line: 468, column: 4, scope: !5393)
!5457 = !DILocation(line: 471, column: 7, scope: !5458)
!5458 = distinct !DILexicalBlock(scope: !5343, file: !2, line: 471, column: 7)
!5459 = !DILocation(line: 471, column: 17, scope: !5458)
!5460 = !DILocation(line: 471, column: 15, scope: !5458)
!5461 = !DILocation(line: 471, column: 23, scope: !5458)
!5462 = !DILocation(line: 471, column: 26, scope: !5458)
!5463 = !DILocation(line: 471, column: 34, scope: !5458)
!5464 = !DILocation(line: 471, column: 32, scope: !5458)
!5465 = !DILocation(line: 471, column: 7, scope: !5343)
!5466 = !DILocation(line: 473, column: 25, scope: !5467)
!5467 = distinct !DILexicalBlock(scope: !5458, file: !2, line: 471, column: 39)
!5468 = !DILocation(line: 473, column: 33, scope: !5467)
!5469 = !DILocation(line: 473, column: 4, scope: !5467)
!5470 = !DILocation(line: 473, column: 9, scope: !5467)
!5471 = !DILocation(line: 473, column: 16, scope: !5467)
!5472 = !DILocation(line: 473, column: 19, scope: !5467)
!5473 = !DILocation(line: 473, column: 23, scope: !5467)
!5474 = !DILocation(line: 474, column: 23, scope: !5467)
!5475 = !DILocation(line: 474, column: 29, scope: !5467)
!5476 = !DILocation(line: 474, column: 15, scope: !5467)
!5477 = !DILocation(line: 474, column: 21, scope: !5467)
!5478 = !DILocation(line: 475, column: 21, scope: !5467)
!5479 = !DILocation(line: 475, column: 15, scope: !5467)
!5480 = !DILocation(line: 475, column: 19, scope: !5467)
!5481 = !DILocation(line: 476, column: 3, scope: !5467)
!5482 = !DILocation(line: 476, column: 14, scope: !5483)
!5483 = distinct !DILexicalBlock(scope: !5458, file: !2, line: 476, column: 14)
!5484 = !DILocation(line: 476, column: 25, scope: !5483)
!5485 = !DILocation(line: 476, column: 22, scope: !5483)
!5486 = !DILocation(line: 476, column: 14, scope: !5458)
!5487 = !DILocation(line: 477, column: 25, scope: !5483)
!5488 = !DILocation(line: 477, column: 33, scope: !5483)
!5489 = !DILocation(line: 477, column: 4, scope: !5483)
!5490 = !DILocation(line: 477, column: 9, scope: !5483)
!5491 = !DILocation(line: 477, column: 16, scope: !5483)
!5492 = !DILocation(line: 477, column: 19, scope: !5483)
!5493 = !DILocation(line: 477, column: 23, scope: !5483)
!5494 = !DILocation(line: 479, column: 27, scope: !5483)
!5495 = !DILocation(line: 479, column: 33, scope: !5483)
!5496 = !DILocation(line: 479, column: 4, scope: !5483)
!5497 = !DILocation(line: 479, column: 9, scope: !5483)
!5498 = !DILocation(line: 479, column: 16, scope: !5483)
!5499 = !DILocation(line: 479, column: 19, scope: !5483)
!5500 = !DILocation(line: 479, column: 25, scope: !5483)
!5501 = !DILocation(line: 480, column: 3, scope: !5343)
!5502 = !DILocation(line: 430, column: 35, scope: !5337)
!5503 = !DILocation(line: 430, column: 2, scope: !5337)
!5504 = distinct !{!5504, !5341, !5505, !5119, !5120}
!5505 = !DILocation(line: 481, column: 2, scope: !5334)
!5506 = !DILocation(line: 484, column: 18, scope: !5507)
!5507 = distinct !DILexicalBlock(scope: !5306, file: !2, line: 484, column: 6)
!5508 = !DILocation(line: 484, column: 7, scope: !5507)
!5509 = !DILocation(line: 484, column: 6, scope: !5306)
!5510 = !DILocation(line: 485, column: 3, scope: !5507)
!5511 = !DILocation(line: 488, column: 6, scope: !5512)
!5512 = distinct !DILexicalBlock(scope: !5306, file: !2, line: 488, column: 6)
!5513 = !DILocation(line: 488, column: 11, scope: !5512)
!5514 = !DILocation(line: 488, column: 16, scope: !5512)
!5515 = !DILocation(line: 488, column: 30, scope: !5512)
!5516 = !DILocation(line: 488, column: 8, scope: !5512)
!5517 = !DILocation(line: 488, column: 6, scope: !5306)
!5518 = !DILocation(line: 489, column: 3, scope: !5512)
!5519 = !DILocation(line: 492, column: 6, scope: !5306)
!5520 = !DILocation(line: 492, column: 8, scope: !5306)
!5521 = !DILocation(line: 492, column: 4, scope: !5306)
!5522 = !DILocation(line: 493, column: 6, scope: !5523)
!5523 = distinct !DILexicalBlock(scope: !5306, file: !2, line: 493, column: 6)
!5524 = !DILocation(line: 493, column: 10, scope: !5523)
!5525 = !DILocation(line: 493, column: 15, scope: !5523)
!5526 = !DILocation(line: 493, column: 8, scope: !5523)
!5527 = !DILocation(line: 493, column: 6, scope: !5306)
!5528 = !DILocation(line: 495, column: 12, scope: !5529)
!5529 = distinct !DILexicalBlock(scope: !5530, file: !2, line: 495, column: 3)
!5530 = distinct !DILexicalBlock(scope: !5523, file: !2, line: 493, column: 26)
!5531 = !DILocation(line: 495, column: 17, scope: !5529)
!5532 = !DILocation(line: 495, column: 27, scope: !5529)
!5533 = !DILocation(line: 495, column: 10, scope: !5529)
!5534 = !DILocation(line: 495, column: 8, scope: !5529)
!5535 = !DILocation(line: 495, column: 32, scope: !5536)
!5536 = distinct !DILexicalBlock(scope: !5529, file: !2, line: 495, column: 3)
!5537 = !DILocation(line: 495, column: 37, scope: !5536)
!5538 = !DILocation(line: 495, column: 34, scope: !5536)
!5539 = !DILocation(line: 495, column: 3, scope: !5529)
!5540 = !DILocation(line: 496, column: 4, scope: !5536)
!5541 = !DILocation(line: 496, column: 9, scope: !5536)
!5542 = !DILocation(line: 496, column: 16, scope: !5536)
!5543 = !DILocation(line: 496, column: 18, scope: !5536)
!5544 = !DILocation(line: 496, column: 25, scope: !5536)
!5545 = !DILocation(line: 496, column: 30, scope: !5536)
!5546 = !DILocation(line: 496, column: 37, scope: !5536)
!5547 = !DILocation(line: 495, column: 41, scope: !5536)
!5548 = !DILocation(line: 495, column: 3, scope: !5536)
!5549 = distinct !{!5549, !5539, !5550, !5119, !5120}
!5550 = !DILocation(line: 496, column: 38, scope: !5529)
!5551 = !DILocation(line: 497, column: 2, scope: !5530)
!5552 = !DILocation(line: 499, column: 36, scope: !5306)
!5553 = !DILocation(line: 499, column: 2, scope: !5306)
!5554 = !DILocation(line: 499, column: 7, scope: !5306)
!5555 = !DILocation(line: 499, column: 14, scope: !5306)
!5556 = !DILocation(line: 499, column: 17, scope: !5306)
!5557 = !DILocation(line: 499, column: 23, scope: !5306)
!5558 = !DILocation(line: 500, column: 34, scope: !5306)
!5559 = !DILocation(line: 500, column: 2, scope: !5306)
!5560 = !DILocation(line: 500, column: 7, scope: !5306)
!5561 = !DILocation(line: 500, column: 14, scope: !5306)
!5562 = !DILocation(line: 500, column: 17, scope: !5306)
!5563 = !DILocation(line: 500, column: 21, scope: !5306)
!5564 = !DILocation(line: 501, column: 2, scope: !5306)
!5565 = !DILocation(line: 501, column: 7, scope: !5306)
!5566 = !DILocation(line: 501, column: 16, scope: !5306)
!5567 = !DILocation(line: 502, column: 2, scope: !5306)
!5568 = !DILocation(line: 503, column: 1, scope: !5306)
!5569 = distinct !DISubprogram(name: "append_elf_note", scope: !2, file: !2, line: 505, type: !5570, scopeLine: 507, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5573)
!5570 = !DISubroutineType(types: !5571)
!5571 = !{!5572, !5572, !659, !13, !432, !439}
!5572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!5573 = !{!5574, !5575, !5576, !5577, !5578, !5579}
!5574 = !DILocalVariable(name: "buf", arg: 1, scope: !5569, file: !2, line: 505, type: !5572)
!5575 = !DILocalVariable(name: "name", arg: 2, scope: !5569, file: !2, line: 505, type: !659)
!5576 = !DILocalVariable(name: "type", arg: 3, scope: !5569, file: !2, line: 505, type: !13)
!5577 = !DILocalVariable(name: "data", arg: 4, scope: !5569, file: !2, line: 506, type: !432)
!5578 = !DILocalVariable(name: "data_len", arg: 5, scope: !5569, file: !2, line: 506, type: !439)
!5579 = !DILocalVariable(name: "note", scope: !5569, file: !2, line: 508, type: !433)
!5580 = !DILocation(line: 505, column: 37, scope: !5569)
!5581 = !DILocation(line: 505, column: 48, scope: !5569)
!5582 = !DILocation(line: 505, column: 67, scope: !5569)
!5583 = !DILocation(line: 506, column: 12, scope: !5569)
!5584 = !DILocation(line: 506, column: 25, scope: !5569)
!5585 = !DILocation(line: 508, column: 2, scope: !5569)
!5586 = !DILocation(line: 508, column: 19, scope: !5569)
!5587 = !DILocation(line: 508, column: 45, scope: !5569)
!5588 = !DILocation(line: 510, column: 26, scope: !5569)
!5589 = !DILocation(line: 510, column: 19, scope: !5569)
!5590 = !DILocation(line: 510, column: 32, scope: !5569)
!5591 = !DILocation(line: 510, column: 2, scope: !5569)
!5592 = !DILocation(line: 510, column: 8, scope: !5569)
!5593 = !DILocation(line: 510, column: 17, scope: !5569)
!5594 = !DILocation(line: 511, column: 19, scope: !5569)
!5595 = !DILocation(line: 511, column: 2, scope: !5569)
!5596 = !DILocation(line: 511, column: 8, scope: !5569)
!5597 = !DILocation(line: 511, column: 17, scope: !5569)
!5598 = !DILocation(line: 512, column: 19, scope: !5569)
!5599 = !DILocation(line: 512, column: 2, scope: !5569)
!5600 = !DILocation(line: 512, column: 8, scope: !5569)
!5601 = !DILocation(line: 512, column: 17, scope: !5569)
!5602 = !DILocation(line: 513, column: 6, scope: !5569)
!5603 = !DILocation(line: 514, column: 9, scope: !5569)
!5604 = !DILocation(line: 514, column: 14, scope: !5569)
!5605 = !DILocation(line: 514, column: 20, scope: !5569)
!5606 = !DILocation(line: 514, column: 26, scope: !5569)
!5607 = !DILocation(line: 514, column: 2, scope: !5569)
!5608 = !DILocation(line: 515, column: 9, scope: !5569)
!5609 = !DILocation(line: 515, column: 6, scope: !5569)
!5610 = !DILocation(line: 516, column: 9, scope: !5569)
!5611 = !DILocation(line: 516, column: 14, scope: !5569)
!5612 = !DILocation(line: 516, column: 20, scope: !5569)
!5613 = !DILocation(line: 516, column: 2, scope: !5569)
!5614 = !DILocation(line: 517, column: 9, scope: !5569)
!5615 = !DILocation(line: 517, column: 6, scope: !5569)
!5616 = !DILocation(line: 519, column: 9, scope: !5569)
!5617 = !DILocation(line: 520, column: 1, scope: !5569)
!5618 = !DILocation(line: 519, column: 2, scope: !5569)
!5619 = !DISubprogram(name: "strlen", scope: !5620, file: !5620, line: 128, type: !5621, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5620 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!5621 = !DISubroutineType(types: !5622)
!5622 = !{!375, !447}
!5623 = distinct !DISubprogram(name: "final_note", scope: !2, file: !2, line: 522, type: !5624, scopeLine: 523, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5626)
!5624 = !DISubroutineType(types: !5625)
!5625 = !{null, !5572}
!5626 = !{!5627}
!5627 = !DILocalVariable(name: "buf", arg: 1, scope: !5623, file: !2, line: 522, type: !5572)
!5628 = !DILocation(line: 522, column: 27, scope: !5623)
!5629 = !DILocation(line: 524, column: 9, scope: !5623)
!5630 = !DILocation(line: 524, column: 2, scope: !5623)
!5631 = !DILocation(line: 525, column: 1, scope: !5623)
!5632 = distinct !DISubprogram(name: "crash_update_vmcoreinfo_safecopy", scope: !2, file: !2, line: 538, type: !3075, scopeLine: 539, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5633)
!5633 = !{!5634}
!5634 = !DILocalVariable(name: "ptr", arg: 1, scope: !5632, file: !2, line: 538, type: !432)
!5635 = !DILocation(line: 538, column: 45, scope: !5632)
!5636 = !DILocation(line: 540, column: 6, scope: !5637)
!5637 = distinct !DILexicalBlock(scope: !5632, file: !2, line: 540, column: 6)
!5638 = !DILocation(line: 540, column: 6, scope: !5632)
!5639 = !DILocation(line: 541, column: 10, scope: !5637)
!5640 = !DILocation(line: 541, column: 15, scope: !5637)
!5641 = !DILocation(line: 541, column: 32, scope: !5637)
!5642 = !DILocation(line: 541, column: 3, scope: !5637)
!5643 = !DILocation(line: 543, column: 29, scope: !5632)
!5644 = !DILocation(line: 543, column: 27, scope: !5632)
!5645 = !DILocation(line: 544, column: 1, scope: !5632)
!5646 = distinct !DISubprogram(name: "crash_save_vmcoreinfo", scope: !2, file: !2, line: 546, type: !2024, scopeLine: 547, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!5647 = !DILocation(line: 548, column: 7, scope: !5648)
!5648 = distinct !DILexicalBlock(scope: !5646, file: !2, line: 548, column: 6)
!5649 = !DILocation(line: 548, column: 6, scope: !5646)
!5650 = !DILocation(line: 549, column: 3, scope: !5648)
!5651 = !DILocation(line: 552, column: 6, scope: !5652)
!5652 = distinct !DILexicalBlock(scope: !5646, file: !2, line: 552, column: 6)
!5653 = !DILocation(line: 552, column: 6, scope: !5646)
!5654 = !DILocation(line: 553, column: 21, scope: !5652)
!5655 = !DILocation(line: 553, column: 19, scope: !5652)
!5656 = !DILocation(line: 553, column: 3, scope: !5652)
!5657 = !DILocation(line: 555, column: 44, scope: !5646)
!5658 = !DILocation(line: 555, column: 2, scope: !5646)
!5659 = !DILocation(line: 556, column: 2, scope: !5646)
!5660 = !DILocation(line: 557, column: 1, scope: !5646)
!5661 = !DILocation(line: 559, column: 40, scope: !4523)
!5662 = !DILocation(line: 561, column: 2, scope: !4523)
!5663 = !DILocation(line: 561, column: 10, scope: !4523)
!5664 = !DILocation(line: 562, column: 2, scope: !4523)
!5665 = !DILocation(line: 562, column: 7, scope: !4523)
!5666 = !DILocation(line: 563, column: 2, scope: !4523)
!5667 = !DILocation(line: 563, column: 9, scope: !4523)
!5668 = !DILocation(line: 565, column: 2, scope: !4523)
!5669 = !DILocation(line: 566, column: 17, scope: !4523)
!5670 = !DILocation(line: 566, column: 35, scope: !4523)
!5671 = !DILocation(line: 566, column: 40, scope: !4523)
!5672 = !DILocation(line: 566, column: 6, scope: !4523)
!5673 = !DILocation(line: 566, column: 4, scope: !4523)
!5674 = !DILocation(line: 567, column: 2, scope: !4523)
!5675 = !DILocation(line: 569, column: 6, scope: !4545)
!5676 = !DILocation(line: 569, column: 6, scope: !4523)
!5677 = !DILocation(line: 569, column: 4, scope: !4523)
!5678 = !DILocation(line: 571, column: 10, scope: !4523)
!5679 = !DILocation(line: 571, column: 26, scope: !4523)
!5680 = !DILocation(line: 571, column: 2, scope: !4523)
!5681 = !DILocation(line: 571, column: 49, scope: !4523)
!5682 = !DILocation(line: 573, column: 21, scope: !4523)
!5683 = !DILocation(line: 573, column: 18, scope: !4523)
!5684 = !DILocation(line: 575, column: 2, scope: !4548)
!5685 = !DILocation(line: 575, column: 2, scope: !4550)
!5686 = !{i8 0, i8 2}
!5687 = !DILocation(line: 575, column: 2, scope: !5688)
!5688 = distinct !DILexicalBlock(scope: !4550, file: !2, line: 575, column: 2)
!5689 = !DILocation(line: 0, scope: !5688)
!5690 = !DILocation(line: 575, column: 2, scope: !5691)
!5691 = distinct !DILexicalBlock(scope: !5688, file: !2, line: 575, column: 2)
!5692 = !DILocation(line: 575, column: 2, scope: !4551)
!5693 = !DILocation(line: 575, column: 2, scope: !4554)
!5694 = !DILocation(line: 575, column: 2, scope: !4558)
!5695 = !DILocation(line: 575, column: 2, scope: !4557)
!5696 = !DILocation(line: 575, column: 2, scope: !5697)
!5697 = distinct !DILexicalBlock(scope: !4557, file: !2, line: 575, column: 2)
!5698 = !DILocation(line: 575, column: 2, scope: !4556)
!5699 = !DILocation(line: 575, column: 2, scope: !5700)
!5700 = distinct !DILexicalBlock(scope: !4556, file: !2, line: 575, column: 2)
!5701 = !DILocation(line: 575, column: 2, scope: !5702)
!5702 = distinct !DILexicalBlock(scope: !4556, file: !2, line: 575, column: 2)
!5703 = !{i64 2155023303, i64 2155023332, i64 2155023378, i64 2155023436, i64 2155023490, i64 2155023544, i64 2155023599, i64 2155023630, i64 2155023938, i64 2155023944, i64 2155023991, i64 2155024014, i64 2155024040}
!5704 = !DILocation(line: 575, column: 2, scope: !5705)
!5705 = distinct !DILexicalBlock(scope: !4556, file: !2, line: 575, column: 2)
!5706 = !DILocation(line: 575, column: 2, scope: !5707)
!5707 = distinct !DILexicalBlock(scope: !4557, file: !2, line: 575, column: 2)
!5708 = !DILocation(line: 575, column: 2, scope: !4523)
!5709 = !DILocation(line: 577, column: 1, scope: !4523)
!5710 = !DISubprogram(name: "ktime_get_real_seconds", scope: !5711, file: !5711, line: 54, type: !5712, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5711 = !DIFile(filename: "./include/linux/timekeeping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f8a5b548f2f61d6d6461a10d2f09afe")
!5712 = !DISubroutineType(types: !5713)
!5713 = !{!1641}
!5714 = distinct !DISubprogram(name: "update_vmcoreinfo_note", scope: !2, file: !2, line: 527, type: !2024, scopeLine: 528, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5715)
!5715 = !{!5716}
!5716 = !DILocalVariable(name: "buf", scope: !5714, file: !2, line: 529, type: !1484)
!5717 = !DILocation(line: 529, column: 2, scope: !5714)
!5718 = !DILocation(line: 529, column: 7, scope: !5714)
!5719 = !DILocation(line: 529, column: 13, scope: !5714)
!5720 = !DILocation(line: 531, column: 7, scope: !5721)
!5721 = distinct !DILexicalBlock(scope: !5714, file: !2, line: 531, column: 6)
!5722 = !DILocation(line: 531, column: 6, scope: !5714)
!5723 = !DILocation(line: 532, column: 3, scope: !5721)
!5724 = !DILocation(line: 533, column: 24, scope: !5714)
!5725 = !DILocation(line: 533, column: 54, scope: !5714)
!5726 = !DILocation(line: 534, column: 10, scope: !5714)
!5727 = !DILocation(line: 533, column: 8, scope: !5714)
!5728 = !DILocation(line: 533, column: 6, scope: !5714)
!5729 = !DILocation(line: 535, column: 13, scope: !5714)
!5730 = !DILocation(line: 535, column: 2, scope: !5714)
!5731 = !DILocation(line: 536, column: 1, scope: !5714)
!5732 = !DISubprogram(name: "vscnprintf", scope: !5733, file: !5733, line: 15, type: !5734, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5733 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!5734 = !DISubroutineType(types: !5735)
!5735 = !{!93, !659, !439, !447, !5736}
!5736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4533, size: 64)
!5737 = !DISubprogram(name: "__warn_printk", scope: !3358, file: !3358, line: 93, type: !4524, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5738 = distinct !DISubprogram(name: "arch_crash_save_vmcoreinfo", scope: !2, file: !2, line: 583, type: !2024, scopeLine: 584, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!5739 = !DILocation(line: 584, column: 2, scope: !5738)
!5740 = distinct !DISubprogram(name: "__phys_addr_nodebug", scope: !5741, file: !5741, line: 22, type: !5742, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5744)
!5741 = !DIFile(filename: "./arch/x86/include/asm/page_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e8642b887a42f979954681cc5f73dc7c")
!5742 = !DISubroutineType(types: !5743)
!5743 = !{!375, !375}
!5744 = !{!5745, !5746}
!5745 = !DILocalVariable(name: "x", arg: 1, scope: !5740, file: !5741, line: 22, type: !375)
!5746 = !DILocalVariable(name: "y", scope: !5740, file: !5741, line: 24, type: !375)
!5747 = !DILocation(line: 22, column: 72, scope: !5740)
!5748 = !DILocation(line: 24, column: 2, scope: !5740)
!5749 = !DILocation(line: 24, column: 16, scope: !5740)
!5750 = !DILocation(line: 24, column: 20, scope: !5740)
!5751 = !DILocation(line: 24, column: 22, scope: !5740)
!5752 = !DILocation(line: 27, column: 6, scope: !5740)
!5753 = !DILocation(line: 27, column: 12, scope: !5740)
!5754 = !DILocation(line: 27, column: 16, scope: !5740)
!5755 = !DILocation(line: 27, column: 14, scope: !5740)
!5756 = !DILocation(line: 27, column: 11, scope: !5740)
!5757 = !DILocation(line: 27, column: 21, scope: !5740)
!5758 = !DILocation(line: 27, column: 55, scope: !5740)
!5759 = !DILocation(line: 27, column: 53, scope: !5740)
!5760 = !DILocation(line: 27, column: 8, scope: !5740)
!5761 = !DILocation(line: 27, column: 4, scope: !5740)
!5762 = !DILocation(line: 29, column: 9, scope: !5740)
!5763 = !DILocation(line: 30, column: 1, scope: !5740)
!5764 = !DILocation(line: 29, column: 2, scope: !5740)
!5765 = distinct !DISubprogram(name: "__initstub__kmod_crash_core__324_702_crash_save_vmcoreinfo_init4", scope: !2, file: !2, line: 702, type: !3315, scopeLine: 702, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!5766 = !DILocation(line: 702, column: 1, scope: !5765)
!5767 = distinct !DISubprogram(name: "crash_save_vmcoreinfo_init", scope: !2, file: !2, line: 592, type: !3315, scopeLine: 593, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!5768 = !DILocation(line: 594, column: 37, scope: !5767)
!5769 = !DILocation(line: 594, column: 20, scope: !5767)
!5770 = !DILocation(line: 594, column: 18, scope: !5767)
!5771 = !DILocation(line: 595, column: 7, scope: !5772)
!5772 = distinct !DILexicalBlock(scope: !5767, file: !2, line: 595, column: 6)
!5773 = !DILocation(line: 595, column: 6, scope: !5767)
!5774 = !DILocation(line: 596, column: 3, scope: !5775)
!5775 = distinct !DILexicalBlock(scope: !5776, file: !2, line: 596, column: 3)
!5776 = distinct !DILexicalBlock(scope: !5772, file: !2, line: 595, column: 24)
!5777 = !DILocation(line: 596, column: 3, scope: !5778)
!5778 = distinct !DILexicalBlock(scope: !5775, file: !2, line: 596, column: 3)
!5779 = !DILocation(line: 597, column: 3, scope: !5776)
!5780 = !DILocation(line: 600, column: 20, scope: !5767)
!5781 = !DILocation(line: 600, column: 18, scope: !5767)
!5782 = !DILocation(line: 602, column: 7, scope: !5783)
!5783 = distinct !DILexicalBlock(scope: !5767, file: !2, line: 602, column: 6)
!5784 = !DILocation(line: 602, column: 6, scope: !5767)
!5785 = !DILocation(line: 603, column: 3, scope: !5786)
!5786 = distinct !DILexicalBlock(scope: !5783, file: !2, line: 602, column: 24)
!5787 = !DILocation(line: 604, column: 19, scope: !5786)
!5788 = !DILocation(line: 605, column: 3, scope: !5789)
!5789 = distinct !DILexicalBlock(scope: !5786, file: !2, line: 605, column: 3)
!5790 = !DILocation(line: 605, column: 3, scope: !5791)
!5791 = distinct !DILexicalBlock(scope: !5789, file: !2, line: 605, column: 3)
!5792 = !DILocation(line: 606, column: 3, scope: !5786)
!5793 = !DILocation(line: 609, column: 2, scope: !5767)
!5794 = !DILocation(line: 610, column: 2, scope: !5795)
!5795 = distinct !DILexicalBlock(scope: !5767, file: !2, line: 610, column: 2)
!5796 = !DILocation(line: 611, column: 2, scope: !5767)
!5797 = !DILocation(line: 613, column: 2, scope: !5767)
!5798 = !DILocation(line: 614, column: 2, scope: !5767)
!5799 = !DILocation(line: 615, column: 2, scope: !5767)
!5800 = !DILocation(line: 617, column: 2, scope: !5767)
!5801 = !DILocation(line: 619, column: 2, scope: !5767)
!5802 = !DILocation(line: 620, column: 2, scope: !5767)
!5803 = !DILocation(line: 627, column: 2, scope: !5767)
!5804 = !DILocation(line: 628, column: 2, scope: !5767)
!5805 = !DILocation(line: 629, column: 2, scope: !5767)
!5806 = !DILocation(line: 630, column: 2, scope: !5767)
!5807 = !DILocation(line: 631, column: 2, scope: !5767)
!5808 = !DILocation(line: 632, column: 2, scope: !5767)
!5809 = !DILocation(line: 634, column: 2, scope: !5767)
!5810 = !DILocation(line: 635, column: 2, scope: !5767)
!5811 = !DILocation(line: 636, column: 2, scope: !5767)
!5812 = !DILocation(line: 637, column: 2, scope: !5767)
!5813 = !DILocation(line: 638, column: 2, scope: !5767)
!5814 = !DILocation(line: 639, column: 2, scope: !5767)
!5815 = !DILocation(line: 640, column: 2, scope: !5767)
!5816 = !DILocation(line: 641, column: 2, scope: !5767)
!5817 = !DILocation(line: 642, column: 2, scope: !5767)
!5818 = !DILocation(line: 643, column: 2, scope: !5767)
!5819 = !DILocation(line: 644, column: 2, scope: !5767)
!5820 = !DILocation(line: 645, column: 2, scope: !5767)
!5821 = !DILocation(line: 646, column: 2, scope: !5767)
!5822 = !DILocation(line: 647, column: 2, scope: !5767)
!5823 = !DILocation(line: 648, column: 2, scope: !5767)
!5824 = !DILocation(line: 652, column: 2, scope: !5767)
!5825 = !DILocation(line: 653, column: 2, scope: !5767)
!5826 = !DILocation(line: 654, column: 2, scope: !5767)
!5827 = !DILocation(line: 655, column: 2, scope: !5767)
!5828 = !DILocation(line: 656, column: 2, scope: !5767)
!5829 = !DILocation(line: 657, column: 2, scope: !5767)
!5830 = !DILocation(line: 658, column: 2, scope: !5767)
!5831 = !DILocation(line: 659, column: 2, scope: !5767)
!5832 = !DILocation(line: 660, column: 2, scope: !5767)
!5833 = !DILocation(line: 661, column: 2, scope: !5767)
!5834 = !DILocation(line: 662, column: 2, scope: !5767)
!5835 = !DILocation(line: 663, column: 2, scope: !5767)
!5836 = !DILocation(line: 664, column: 2, scope: !5767)
!5837 = !DILocation(line: 665, column: 2, scope: !5767)
!5838 = !DILocation(line: 666, column: 2, scope: !5767)
!5839 = !DILocation(line: 667, column: 2, scope: !5767)
!5840 = !DILocation(line: 668, column: 2, scope: !5767)
!5841 = !DILocation(line: 669, column: 2, scope: !5767)
!5842 = !DILocation(line: 670, column: 2, scope: !5767)
!5843 = !DILocation(line: 671, column: 2, scope: !5767)
!5844 = !DILocation(line: 675, column: 2, scope: !5767)
!5845 = !DILocation(line: 677, column: 2, scope: !5767)
!5846 = !DILocation(line: 679, column: 2, scope: !5767)
!5847 = !DILocation(line: 681, column: 2, scope: !5767)
!5848 = !DILocation(line: 684, column: 2, scope: !5767)
!5849 = !DILocation(line: 685, column: 2, scope: !5767)
!5850 = !DILocation(line: 686, column: 2, scope: !5767)
!5851 = !DILocation(line: 687, column: 2, scope: !5767)
!5852 = !DILocation(line: 689, column: 2, scope: !5767)
!5853 = !DILocation(line: 690, column: 2, scope: !5767)
!5854 = !DILocation(line: 696, column: 2, scope: !5767)
!5855 = !DILocation(line: 697, column: 2, scope: !5767)
!5856 = !DILocation(line: 699, column: 2, scope: !5767)
!5857 = !DILocation(line: 700, column: 1, scope: !5767)
!5858 = distinct !DISubprogram(name: "__initstub__kmod_crash_core__329_735_crash_notes_memory_init4", scope: !2, file: !2, line: 735, type: !3315, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!5859 = !DILocation(line: 735, column: 1, scope: !5858)
!5860 = distinct !DISubprogram(name: "crash_notes_memory_init", scope: !2, file: !2, line: 704, type: !3315, scopeLine: 705, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5861)
!5861 = !{!5862, !5863}
!5862 = !DILocalVariable(name: "size", scope: !5860, file: !2, line: 707, type: !439)
!5863 = !DILocalVariable(name: "align", scope: !5860, file: !2, line: 707, type: !439)
!5864 = !DILocation(line: 707, column: 2, scope: !5860)
!5865 = !DILocation(line: 707, column: 9, scope: !5860)
!5866 = !DILocation(line: 707, column: 15, scope: !5860)
!5867 = !DILocation(line: 719, column: 7, scope: !5860)
!5868 = !DILocation(line: 720, column: 8, scope: !5860)
!5869 = !DILocation(line: 726, column: 2, scope: !5860)
!5870 = !DILocation(line: 726, column: 2, scope: !5871)
!5871 = distinct !DILexicalBlock(scope: !5872, file: !2, line: 726, column: 2)
!5872 = distinct !DILexicalBlock(scope: !5860, file: !2, line: 726, column: 2)
!5873 = !DILocation(line: 726, column: 2, scope: !5872)
!5874 = !{i32 -2139820519}
!5875 = !DILocation(line: 728, column: 31, scope: !5860)
!5876 = !DILocation(line: 728, column: 37, scope: !5860)
!5877 = !DILocation(line: 728, column: 16, scope: !5860)
!5878 = !DILocation(line: 728, column: 14, scope: !5860)
!5879 = !DILocation(line: 729, column: 7, scope: !5880)
!5880 = distinct !DILexicalBlock(scope: !5860, file: !2, line: 729, column: 6)
!5881 = !DILocation(line: 729, column: 6, scope: !5860)
!5882 = !DILocation(line: 730, column: 3, scope: !5883)
!5883 = distinct !DILexicalBlock(scope: !5884, file: !2, line: 730, column: 3)
!5884 = distinct !DILexicalBlock(scope: !5880, file: !2, line: 729, column: 20)
!5885 = !DILocation(line: 730, column: 3, scope: !5886)
!5886 = distinct !DILexicalBlock(scope: !5883, file: !2, line: 730, column: 3)
!5887 = !DILocation(line: 731, column: 3, scope: !5884)
!5888 = !DILocation(line: 733, column: 2, scope: !5860)
!5889 = !DILocation(line: 734, column: 1, scope: !5860)
!5890 = distinct !DISubprogram(name: "crash_check_update_elfcorehdr", scope: !2, file: !2, line: 757, type: !3315, scopeLine: 758, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5891)
!5891 = !{!5892}
!5892 = !DILocalVariable(name: "rc", scope: !5890, file: !2, line: 759, type: !93)
!5893 = !DILocation(line: 759, column: 2, scope: !5890)
!5894 = !DILocation(line: 759, column: 6, scope: !5890)
!5895 = !DILocation(line: 761, column: 2, scope: !5890)
!5896 = !DILocation(line: 763, column: 7, scope: !5897)
!5897 = distinct !DILexicalBlock(scope: !5890, file: !2, line: 763, column: 6)
!5898 = !DILocation(line: 763, column: 6, scope: !5890)
!5899 = !DILocation(line: 764, column: 3, scope: !5900)
!5900 = distinct !DILexicalBlock(scope: !5901, file: !2, line: 764, column: 3)
!5901 = distinct !DILexicalBlock(scope: !5897, file: !2, line: 763, column: 24)
!5902 = !DILocation(line: 764, column: 3, scope: !5903)
!5903 = distinct !DILexicalBlock(scope: !5900, file: !2, line: 764, column: 3)
!5904 = !DILocation(line: 765, column: 3, scope: !5901)
!5905 = !DILocation(line: 766, column: 3, scope: !5901)
!5906 = !DILocation(line: 768, column: 6, scope: !5907)
!5907 = distinct !DILexicalBlock(scope: !5890, file: !2, line: 768, column: 6)
!5908 = !DILocation(line: 768, column: 6, scope: !5890)
!5909 = !DILocation(line: 769, column: 7, scope: !5910)
!5910 = distinct !DILexicalBlock(scope: !5911, file: !2, line: 769, column: 7)
!5911 = distinct !DILexicalBlock(scope: !5907, file: !2, line: 768, column: 25)
!5912 = !DILocation(line: 769, column: 26, scope: !5910)
!5913 = !DILocation(line: 769, column: 7, scope: !5911)
!5914 = !DILocation(line: 770, column: 7, scope: !5910)
!5915 = !DILocation(line: 770, column: 4, scope: !5910)
!5916 = !DILocation(line: 772, column: 9, scope: !5910)
!5917 = !DILocation(line: 772, column: 28, scope: !5910)
!5918 = !DILocation(line: 772, column: 7, scope: !5910)
!5919 = !DILocation(line: 773, column: 2, scope: !5911)
!5920 = !DILocation(line: 775, column: 2, scope: !5890)
!5921 = !DILocation(line: 776, column: 2, scope: !5890)
!5922 = !DILocation(line: 778, column: 9, scope: !5890)
!5923 = !DILocation(line: 778, column: 2, scope: !5890)
!5924 = !DILocation(line: 779, column: 1, scope: !5890)
!5925 = !DISubprogram(name: "mutex_lock", scope: !870, file: !870, line: 227, type: !5926, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5926 = !DISubroutineType(types: !5927)
!5927 = !{null, !5928}
!5928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!5929 = distinct !DISubprogram(name: "kexec_trylock", scope: !5930, file: !5930, line: 22, type: !3056, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!5930 = !DIFile(filename: "kernel/kexec_internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "444968a356777549054ff8947fcf3734")
!5931 = !DILocation(line: 24, column: 9, scope: !5929)
!5932 = !DILocation(line: 24, column: 53, scope: !5929)
!5933 = !DILocation(line: 24, column: 2, scope: !5929)
!5934 = !DISubprogram(name: "_printk", scope: !5935, file: !5935, line: 153, type: !5936, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5935 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!5936 = !DISubroutineType(types: !5937)
!5937 = !{!93, !447, null}
!5938 = !DISubprogram(name: "mutex_unlock", scope: !870, file: !870, line: 246, type: !5926, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5939 = distinct !DISubprogram(name: "kexec_unlock", scope: !5930, file: !5930, line: 26, type: !2024, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!5940 = !DILocation(line: 28, column: 2, scope: !5939)
!5941 = !DILocation(line: 29, column: 1, scope: !5939)
!5942 = distinct !DISubprogram(name: "__initstub__kmod_crash_core__332_921_crash_hotplug_init4", scope: !2, file: !2, line: 921, type: !3315, scopeLine: 921, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!5943 = !DILocation(line: 921, column: 1, scope: !5942)
!5944 = distinct !DISubprogram(name: "crash_hotplug_init", scope: !2, file: !2, line: 906, type: !3315, scopeLine: 907, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5945)
!5945 = !{!5946}
!5946 = !DILocalVariable(name: "result", scope: !5944, file: !2, line: 908, type: !93)
!5947 = !DILocation(line: 908, column: 2, scope: !5944)
!5948 = !DILocation(line: 908, column: 6, scope: !5944)
!5949 = !DILocation(line: 914, column: 12, scope: !5950)
!5950 = distinct !DILexicalBlock(scope: !5951, file: !2, line: 913, column: 38)
!5951 = distinct !DILexicalBlock(scope: !5944, file: !2, line: 913, column: 6)
!5952 = !DILocation(line: 914, column: 10, scope: !5950)
!5953 = !DILocation(line: 918, column: 9, scope: !5944)
!5954 = !DILocation(line: 919, column: 1, scope: !5944)
!5955 = !DILocation(line: 918, column: 2, scope: !5944)
!5956 = distinct !DISubprogram(name: "get_last_crashkernel", scope: !2, file: !2, line: 209, type: !5957, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5959)
!5957 = !DISubroutineType(types: !5958)
!5958 = !{!659, !659, !447, !447}
!5959 = !{!5960, !5961, !5962, !5963, !5964, !5965, !5967, !5968, !5971}
!5960 = !DILocalVariable(name: "cmdline", arg: 1, scope: !5956, file: !2, line: 209, type: !659)
!5961 = !DILocalVariable(name: "name", arg: 2, scope: !5956, file: !2, line: 210, type: !447)
!5962 = !DILocalVariable(name: "suffix", arg: 3, scope: !5956, file: !2, line: 211, type: !447)
!5963 = !DILocalVariable(name: "p", scope: !5956, file: !2, line: 213, type: !659)
!5964 = !DILocalVariable(name: "ck_cmdline", scope: !5956, file: !2, line: 213, type: !659)
!5965 = !DILocalVariable(name: "end_p", scope: !5966, file: !2, line: 218, type: !659)
!5966 = distinct !DILexicalBlock(scope: !5956, file: !2, line: 217, column: 12)
!5967 = !DILocalVariable(name: "q", scope: !5966, file: !2, line: 219, type: !659)
!5968 = !DILocalVariable(name: "i", scope: !5969, file: !2, line: 225, type: !93)
!5969 = distinct !DILexicalBlock(scope: !5970, file: !2, line: 224, column: 16)
!5970 = distinct !DILexicalBlock(scope: !5966, file: !2, line: 224, column: 7)
!5971 = !DILabel(scope: !5966, name: "next", file: !2, line: 240)
!5972 = !DILocation(line: 209, column: 48, scope: !5956)
!5973 = !DILocation(line: 210, column: 21, scope: !5956)
!5974 = !DILocation(line: 211, column: 21, scope: !5956)
!5975 = !DILocation(line: 213, column: 2, scope: !5956)
!5976 = !DILocation(line: 213, column: 8, scope: !5956)
!5977 = !DILocation(line: 213, column: 12, scope: !5956)
!5978 = !DILocation(line: 213, column: 22, scope: !5956)
!5979 = !DILocation(line: 216, column: 13, scope: !5956)
!5980 = !DILocation(line: 216, column: 16, scope: !5956)
!5981 = !DILocation(line: 216, column: 6, scope: !5956)
!5982 = !DILocation(line: 216, column: 4, scope: !5956)
!5983 = !DILocation(line: 217, column: 2, scope: !5956)
!5984 = !DILocation(line: 217, column: 9, scope: !5956)
!5985 = !DILocation(line: 218, column: 3, scope: !5966)
!5986 = !DILocation(line: 218, column: 9, scope: !5966)
!5987 = !DILocation(line: 218, column: 24, scope: !5966)
!5988 = !DILocation(line: 218, column: 17, scope: !5966)
!5989 = !DILocation(line: 219, column: 3, scope: !5966)
!5990 = !DILocation(line: 219, column: 9, scope: !5966)
!5991 = !DILocation(line: 221, column: 8, scope: !5992)
!5992 = distinct !DILexicalBlock(scope: !5966, file: !2, line: 221, column: 7)
!5993 = !DILocation(line: 221, column: 7, scope: !5966)
!5994 = !DILocation(line: 222, column: 12, scope: !5992)
!5995 = !DILocation(line: 222, column: 23, scope: !5992)
!5996 = !DILocation(line: 222, column: 16, scope: !5992)
!5997 = !DILocation(line: 222, column: 14, scope: !5992)
!5998 = !DILocation(line: 222, column: 10, scope: !5992)
!5999 = !DILocation(line: 222, column: 4, scope: !5992)
!6000 = !DILocation(line: 224, column: 8, scope: !5970)
!6001 = !DILocation(line: 224, column: 7, scope: !5966)
!6002 = !DILocation(line: 225, column: 4, scope: !5969)
!6003 = !DILocation(line: 225, column: 8, scope: !5969)
!6004 = !DILocation(line: 228, column: 11, scope: !6005)
!6005 = distinct !DILexicalBlock(scope: !5969, file: !2, line: 228, column: 4)
!6006 = !DILocation(line: 228, column: 9, scope: !6005)
!6007 = !DILocation(line: 228, column: 27, scope: !6008)
!6008 = distinct !DILexicalBlock(scope: !6005, file: !2, line: 228, column: 4)
!6009 = !DILocation(line: 228, column: 16, scope: !6008)
!6010 = !DILocation(line: 228, column: 4, scope: !6005)
!6011 = !DILocation(line: 229, column: 9, scope: !6012)
!6012 = distinct !DILexicalBlock(scope: !6008, file: !2, line: 228, column: 36)
!6013 = !DILocation(line: 229, column: 35, scope: !6012)
!6014 = !DILocation(line: 229, column: 24, scope: !6012)
!6015 = !DILocation(line: 229, column: 17, scope: !6012)
!6016 = !DILocation(line: 229, column: 15, scope: !6012)
!6017 = !DILocation(line: 229, column: 7, scope: !6012)
!6018 = !DILocation(line: 230, column: 18, scope: !6019)
!6019 = distinct !DILexicalBlock(scope: !6012, file: !2, line: 230, column: 9)
!6020 = !DILocation(line: 230, column: 32, scope: !6019)
!6021 = !DILocation(line: 230, column: 21, scope: !6019)
!6022 = !DILocation(line: 231, column: 29, scope: !6019)
!6023 = !DILocation(line: 231, column: 18, scope: !6019)
!6024 = !DILocation(line: 231, column: 11, scope: !6019)
!6025 = !DILocation(line: 230, column: 10, scope: !6019)
!6026 = !DILocation(line: 230, column: 9, scope: !6012)
!6027 = !DILocation(line: 232, column: 6, scope: !6019)
!6028 = !DILocation(line: 233, column: 4, scope: !6012)
!6029 = !DILocation(line: 228, column: 32, scope: !6008)
!6030 = !DILocation(line: 228, column: 4, scope: !6008)
!6031 = distinct !{!6031, !6010, !6032, !5119, !5120}
!6032 = !DILocation(line: 233, column: 4, scope: !6005)
!6033 = !DILocation(line: 234, column: 17, scope: !5969)
!6034 = !DILocation(line: 234, column: 15, scope: !5969)
!6035 = !DILocation(line: 235, column: 3, scope: !5970)
!6036 = !DILocation(line: 235, column: 3, scope: !5969)
!6037 = !DILocation(line: 236, column: 8, scope: !6038)
!6038 = distinct !DILexicalBlock(scope: !5970, file: !2, line: 235, column: 10)
!6039 = !DILocation(line: 236, column: 23, scope: !6038)
!6040 = !DILocation(line: 236, column: 16, scope: !6038)
!6041 = !DILocation(line: 236, column: 14, scope: !6038)
!6042 = !DILocation(line: 236, column: 6, scope: !6038)
!6043 = !DILocation(line: 237, column: 17, scope: !6044)
!6044 = distinct !DILexicalBlock(scope: !6038, file: !2, line: 237, column: 8)
!6045 = !DILocation(line: 237, column: 20, scope: !6044)
!6046 = !DILocation(line: 237, column: 35, scope: !6044)
!6047 = !DILocation(line: 237, column: 28, scope: !6044)
!6048 = !DILocation(line: 237, column: 9, scope: !6044)
!6049 = !DILocation(line: 237, column: 8, scope: !6038)
!6050 = !DILocation(line: 238, column: 18, scope: !6044)
!6051 = !DILocation(line: 238, column: 16, scope: !6044)
!6052 = !DILocation(line: 238, column: 5, scope: !6044)
!6053 = !DILocation(line: 240, column: 1, scope: !5966)
!6054 = !DILocation(line: 241, column: 14, scope: !5966)
!6055 = !DILocation(line: 241, column: 15, scope: !5966)
!6056 = !DILocation(line: 241, column: 19, scope: !5966)
!6057 = !DILocation(line: 241, column: 7, scope: !5966)
!6058 = !DILocation(line: 241, column: 5, scope: !5966)
!6059 = !DILocation(line: 242, column: 2, scope: !5956)
!6060 = distinct !{!6060, !5983, !6059, !5119, !5120}
!6061 = !DILocation(line: 244, column: 9, scope: !5956)
!6062 = !DILocation(line: 245, column: 1, scope: !5956)
!6063 = !DILocation(line: 244, column: 2, scope: !5956)
!6064 = distinct !DISubprogram(name: "parse_crashkernel_suffix", scope: !2, file: !2, line: 183, type: !6065, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6067)
!6065 = !DISubroutineType(types: !6066)
!6066 = !{!93, !659, !4829, !447}
!6067 = !{!6068, !6069, !6070, !6071}
!6068 = !DILocalVariable(name: "cmdline", arg: 1, scope: !6064, file: !2, line: 183, type: !659)
!6069 = !DILocalVariable(name: "crash_size", arg: 2, scope: !6064, file: !2, line: 184, type: !4829)
!6070 = !DILocalVariable(name: "suffix", arg: 3, scope: !6064, file: !2, line: 185, type: !447)
!6071 = !DILocalVariable(name: "cur", scope: !6064, file: !2, line: 187, type: !659)
!6072 = !DILocation(line: 183, column: 50, scope: !6064)
!6073 = !DILocation(line: 184, column: 29, scope: !6064)
!6074 = !DILocation(line: 185, column: 21, scope: !6064)
!6075 = !DILocation(line: 187, column: 2, scope: !6064)
!6076 = !DILocation(line: 187, column: 8, scope: !6064)
!6077 = !DILocation(line: 187, column: 14, scope: !6064)
!6078 = !DILocation(line: 189, column: 25, scope: !6064)
!6079 = !DILocation(line: 189, column: 16, scope: !6064)
!6080 = !DILocation(line: 189, column: 3, scope: !6064)
!6081 = !DILocation(line: 189, column: 14, scope: !6064)
!6082 = !DILocation(line: 190, column: 6, scope: !6083)
!6083 = distinct !DILexicalBlock(scope: !6064, file: !2, line: 190, column: 6)
!6084 = !DILocation(line: 190, column: 17, scope: !6083)
!6085 = !DILocation(line: 190, column: 14, scope: !6083)
!6086 = !DILocation(line: 190, column: 6, scope: !6064)
!6087 = !DILocation(line: 191, column: 3, scope: !6088)
!6088 = distinct !DILexicalBlock(scope: !6089, file: !2, line: 191, column: 3)
!6089 = distinct !DILexicalBlock(scope: !6083, file: !2, line: 190, column: 22)
!6090 = !DILocation(line: 191, column: 3, scope: !6091)
!6091 = distinct !DILexicalBlock(scope: !6088, file: !2, line: 191, column: 3)
!6092 = !DILocation(line: 192, column: 3, scope: !6089)
!6093 = !DILocation(line: 196, column: 14, scope: !6094)
!6094 = distinct !DILexicalBlock(scope: !6064, file: !2, line: 196, column: 6)
!6095 = !DILocation(line: 196, column: 19, scope: !6094)
!6096 = !DILocation(line: 196, column: 34, scope: !6094)
!6097 = !DILocation(line: 196, column: 27, scope: !6094)
!6098 = !DILocation(line: 196, column: 6, scope: !6094)
!6099 = !DILocation(line: 196, column: 6, scope: !6064)
!6100 = !DILocation(line: 197, column: 3, scope: !6101)
!6101 = distinct !DILexicalBlock(scope: !6102, file: !2, line: 197, column: 3)
!6102 = distinct !DILexicalBlock(scope: !6094, file: !2, line: 196, column: 44)
!6103 = !DILocation(line: 197, column: 3, scope: !6104)
!6104 = distinct !DILexicalBlock(scope: !6101, file: !2, line: 197, column: 3)
!6105 = !DILocation(line: 198, column: 3, scope: !6102)
!6106 = !DILocation(line: 200, column: 16, scope: !6064)
!6107 = !DILocation(line: 200, column: 9, scope: !6064)
!6108 = !DILocation(line: 200, column: 6, scope: !6064)
!6109 = !DILocation(line: 201, column: 7, scope: !6110)
!6110 = distinct !DILexicalBlock(scope: !6064, file: !2, line: 201, column: 6)
!6111 = !DILocation(line: 201, column: 6, scope: !6110)
!6112 = !DILocation(line: 201, column: 11, scope: !6110)
!6113 = !DILocation(line: 201, column: 18, scope: !6110)
!6114 = !DILocation(line: 201, column: 22, scope: !6110)
!6115 = !DILocation(line: 201, column: 21, scope: !6110)
!6116 = !DILocation(line: 201, column: 26, scope: !6110)
!6117 = !DILocation(line: 201, column: 6, scope: !6064)
!6118 = !DILocation(line: 202, column: 3, scope: !6119)
!6119 = distinct !DILexicalBlock(scope: !6120, file: !2, line: 202, column: 3)
!6120 = distinct !DILexicalBlock(scope: !6110, file: !2, line: 201, column: 35)
!6121 = !DILocation(line: 202, column: 3, scope: !6122)
!6122 = distinct !DILexicalBlock(scope: !6119, file: !2, line: 202, column: 3)
!6123 = !DILocation(line: 203, column: 3, scope: !6120)
!6124 = !DILocation(line: 206, column: 2, scope: !6064)
!6125 = !DILocation(line: 207, column: 1, scope: !6064)
!6126 = !DISubprogram(name: "strchr", scope: !5620, file: !5620, line: 100, type: !6127, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6127 = !DISubroutineType(types: !6128)
!6128 = !{!659, !447, !93}
!6129 = distinct !DISubprogram(name: "parse_crashkernel_mem", scope: !2, file: !2, line: 50, type: !4827, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6130)
!6130 = !{!6131, !6132, !6133, !6134, !6135, !6136, !6137, !6138, !6140, !6142, !6143}
!6131 = !DILocalVariable(name: "cmdline", arg: 1, scope: !6129, file: !2, line: 50, type: !659)
!6132 = !DILocalVariable(name: "system_ram", arg: 2, scope: !6129, file: !2, line: 51, type: !400)
!6133 = !DILocalVariable(name: "crash_size", arg: 3, scope: !6129, file: !2, line: 52, type: !4829)
!6134 = !DILocalVariable(name: "crash_base", arg: 4, scope: !6129, file: !2, line: 53, type: !4829)
!6135 = !DILocalVariable(name: "cur", scope: !6129, file: !2, line: 55, type: !659)
!6136 = !DILocalVariable(name: "tmp", scope: !6129, file: !2, line: 55, type: !659)
!6137 = !DILocalVariable(name: "total_mem", scope: !6129, file: !2, line: 56, type: !400)
!6138 = !DILocalVariable(name: "__y", scope: !6139, file: !2, line: 64, type: !93)
!6139 = distinct !DILexicalBlock(scope: !6129, file: !2, line: 64, column: 14)
!6140 = !DILocalVariable(name: "start", scope: !6141, file: !2, line: 68, type: !400)
!6141 = distinct !DILexicalBlock(scope: !6129, file: !2, line: 67, column: 5)
!6142 = !DILocalVariable(name: "end", scope: !6141, file: !2, line: 68, type: !400)
!6143 = !DILocalVariable(name: "size", scope: !6141, file: !2, line: 68, type: !400)
!6144 = !DILocation(line: 50, column: 47, scope: !6129)
!6145 = !DILocation(line: 51, column: 25, scope: !6129)
!6146 = !DILocation(line: 52, column: 26, scope: !6129)
!6147 = !DILocation(line: 53, column: 26, scope: !6129)
!6148 = !DILocation(line: 55, column: 2, scope: !6129)
!6149 = !DILocation(line: 55, column: 8, scope: !6129)
!6150 = !DILocation(line: 55, column: 14, scope: !6129)
!6151 = !DILocation(line: 55, column: 24, scope: !6129)
!6152 = !DILocation(line: 56, column: 2, scope: !6129)
!6153 = !DILocation(line: 56, column: 21, scope: !6129)
!6154 = !DILocation(line: 56, column: 33, scope: !6129)
!6155 = !DILocation(line: 64, column: 14, scope: !6139)
!6156 = !DILocation(line: 64, column: 14, scope: !6129)
!6157 = !DILocation(line: 64, column: 12, scope: !6129)
!6158 = !DILocation(line: 67, column: 2, scope: !6129)
!6159 = !DILocation(line: 68, column: 3, scope: !6141)
!6160 = !DILocation(line: 68, column: 22, scope: !6141)
!6161 = !DILocation(line: 68, column: 29, scope: !6141)
!6162 = !DILocation(line: 68, column: 47, scope: !6141)
!6163 = !DILocation(line: 71, column: 20, scope: !6141)
!6164 = !DILocation(line: 71, column: 11, scope: !6141)
!6165 = !DILocation(line: 71, column: 9, scope: !6141)
!6166 = !DILocation(line: 72, column: 7, scope: !6167)
!6167 = distinct !DILexicalBlock(scope: !6141, file: !2, line: 72, column: 7)
!6168 = !DILocation(line: 72, column: 14, scope: !6167)
!6169 = !DILocation(line: 72, column: 11, scope: !6167)
!6170 = !DILocation(line: 72, column: 7, scope: !6141)
!6171 = !DILocation(line: 73, column: 4, scope: !6172)
!6172 = distinct !DILexicalBlock(scope: !6173, file: !2, line: 73, column: 4)
!6173 = distinct !DILexicalBlock(scope: !6167, file: !2, line: 72, column: 19)
!6174 = !DILocation(line: 73, column: 4, scope: !6175)
!6175 = distinct !DILexicalBlock(scope: !6172, file: !2, line: 73, column: 4)
!6176 = !DILocation(line: 74, column: 4, scope: !6173)
!6177 = !DILocation(line: 76, column: 9, scope: !6141)
!6178 = !DILocation(line: 76, column: 7, scope: !6141)
!6179 = !DILocation(line: 77, column: 8, scope: !6180)
!6180 = distinct !DILexicalBlock(scope: !6141, file: !2, line: 77, column: 7)
!6181 = !DILocation(line: 77, column: 7, scope: !6180)
!6182 = !DILocation(line: 77, column: 12, scope: !6180)
!6183 = !DILocation(line: 77, column: 7, scope: !6141)
!6184 = !DILocation(line: 78, column: 4, scope: !6185)
!6185 = distinct !DILexicalBlock(scope: !6186, file: !2, line: 78, column: 4)
!6186 = distinct !DILexicalBlock(scope: !6180, file: !2, line: 77, column: 20)
!6187 = !DILocation(line: 78, column: 4, scope: !6188)
!6188 = distinct !DILexicalBlock(scope: !6185, file: !2, line: 78, column: 4)
!6189 = !DILocation(line: 79, column: 4, scope: !6186)
!6190 = !DILocation(line: 81, column: 6, scope: !6141)
!6191 = !DILocation(line: 84, column: 8, scope: !6192)
!6192 = distinct !DILexicalBlock(scope: !6141, file: !2, line: 84, column: 7)
!6193 = !DILocation(line: 84, column: 7, scope: !6192)
!6194 = !DILocation(line: 84, column: 12, scope: !6192)
!6195 = !DILocation(line: 84, column: 7, scope: !6141)
!6196 = !DILocation(line: 85, column: 19, scope: !6197)
!6197 = distinct !DILexicalBlock(scope: !6192, file: !2, line: 84, column: 20)
!6198 = !DILocation(line: 85, column: 10, scope: !6197)
!6199 = !DILocation(line: 85, column: 8, scope: !6197)
!6200 = !DILocation(line: 86, column: 8, scope: !6201)
!6201 = distinct !DILexicalBlock(scope: !6197, file: !2, line: 86, column: 8)
!6202 = !DILocation(line: 86, column: 15, scope: !6201)
!6203 = !DILocation(line: 86, column: 12, scope: !6201)
!6204 = !DILocation(line: 86, column: 8, scope: !6197)
!6205 = !DILocation(line: 87, column: 5, scope: !6206)
!6206 = distinct !DILexicalBlock(scope: !6207, file: !2, line: 87, column: 5)
!6207 = distinct !DILexicalBlock(scope: !6201, file: !2, line: 86, column: 20)
!6208 = !DILocation(line: 87, column: 5, scope: !6209)
!6209 = distinct !DILexicalBlock(scope: !6206, file: !2, line: 87, column: 5)
!6210 = !DILocation(line: 88, column: 5, scope: !6207)
!6211 = !DILocation(line: 90, column: 10, scope: !6197)
!6212 = !DILocation(line: 90, column: 8, scope: !6197)
!6213 = !DILocation(line: 91, column: 8, scope: !6214)
!6214 = distinct !DILexicalBlock(scope: !6197, file: !2, line: 91, column: 8)
!6215 = !DILocation(line: 91, column: 15, scope: !6214)
!6216 = !DILocation(line: 91, column: 12, scope: !6214)
!6217 = !DILocation(line: 91, column: 8, scope: !6197)
!6218 = !DILocation(line: 92, column: 5, scope: !6219)
!6219 = distinct !DILexicalBlock(scope: !6220, file: !2, line: 92, column: 5)
!6220 = distinct !DILexicalBlock(scope: !6214, file: !2, line: 91, column: 22)
!6221 = !DILocation(line: 92, column: 5, scope: !6222)
!6222 = distinct !DILexicalBlock(scope: !6219, file: !2, line: 92, column: 5)
!6223 = !DILocation(line: 93, column: 5, scope: !6220)
!6224 = !DILocation(line: 95, column: 3, scope: !6197)
!6225 = !DILocation(line: 97, column: 8, scope: !6226)
!6226 = distinct !DILexicalBlock(scope: !6141, file: !2, line: 97, column: 7)
!6227 = !DILocation(line: 97, column: 7, scope: !6226)
!6228 = !DILocation(line: 97, column: 12, scope: !6226)
!6229 = !DILocation(line: 97, column: 7, scope: !6141)
!6230 = !DILocation(line: 98, column: 4, scope: !6231)
!6231 = distinct !DILexicalBlock(scope: !6232, file: !2, line: 98, column: 4)
!6232 = distinct !DILexicalBlock(scope: !6226, file: !2, line: 97, column: 20)
!6233 = !DILocation(line: 98, column: 4, scope: !6234)
!6234 = distinct !DILexicalBlock(scope: !6231, file: !2, line: 98, column: 4)
!6235 = !DILocation(line: 99, column: 4, scope: !6232)
!6236 = !DILocation(line: 101, column: 6, scope: !6141)
!6237 = !DILocation(line: 103, column: 19, scope: !6141)
!6238 = !DILocation(line: 103, column: 10, scope: !6141)
!6239 = !DILocation(line: 103, column: 8, scope: !6141)
!6240 = !DILocation(line: 104, column: 7, scope: !6241)
!6241 = distinct !DILexicalBlock(scope: !6141, file: !2, line: 104, column: 7)
!6242 = !DILocation(line: 104, column: 14, scope: !6241)
!6243 = !DILocation(line: 104, column: 11, scope: !6241)
!6244 = !DILocation(line: 104, column: 7, scope: !6141)
!6245 = !DILocation(line: 105, column: 4, scope: !6246)
!6246 = distinct !DILexicalBlock(scope: !6247, file: !2, line: 105, column: 4)
!6247 = distinct !DILexicalBlock(scope: !6241, file: !2, line: 104, column: 19)
!6248 = !DILocation(line: 105, column: 4, scope: !6249)
!6249 = distinct !DILexicalBlock(scope: !6246, file: !2, line: 105, column: 4)
!6250 = !DILocation(line: 106, column: 4, scope: !6247)
!6251 = !DILocation(line: 108, column: 9, scope: !6141)
!6252 = !DILocation(line: 108, column: 7, scope: !6141)
!6253 = !DILocation(line: 109, column: 7, scope: !6254)
!6254 = distinct !DILexicalBlock(scope: !6141, file: !2, line: 109, column: 7)
!6255 = !DILocation(line: 109, column: 15, scope: !6254)
!6256 = !DILocation(line: 109, column: 12, scope: !6254)
!6257 = !DILocation(line: 109, column: 7, scope: !6141)
!6258 = !DILocation(line: 110, column: 4, scope: !6259)
!6259 = distinct !DILexicalBlock(scope: !6260, file: !2, line: 110, column: 4)
!6260 = distinct !DILexicalBlock(scope: !6254, file: !2, line: 109, column: 26)
!6261 = !DILocation(line: 110, column: 4, scope: !6262)
!6262 = distinct !DILexicalBlock(scope: !6259, file: !2, line: 110, column: 4)
!6263 = !DILocation(line: 111, column: 4, scope: !6260)
!6264 = !DILocation(line: 115, column: 7, scope: !6265)
!6265 = distinct !DILexicalBlock(scope: !6141, file: !2, line: 115, column: 7)
!6266 = !DILocation(line: 115, column: 20, scope: !6265)
!6267 = !DILocation(line: 115, column: 17, scope: !6265)
!6268 = !DILocation(line: 115, column: 26, scope: !6265)
!6269 = !DILocation(line: 115, column: 29, scope: !6265)
!6270 = !DILocation(line: 115, column: 41, scope: !6265)
!6271 = !DILocation(line: 115, column: 39, scope: !6265)
!6272 = !DILocation(line: 115, column: 7, scope: !6141)
!6273 = !DILocation(line: 116, column: 18, scope: !6274)
!6274 = distinct !DILexicalBlock(scope: !6265, file: !2, line: 115, column: 46)
!6275 = !DILocation(line: 116, column: 5, scope: !6274)
!6276 = !DILocation(line: 116, column: 16, scope: !6274)
!6277 = !DILocation(line: 117, column: 4, scope: !6274)
!6278 = !DILocation(line: 119, column: 2, scope: !6129)
!6279 = !DILocation(line: 119, column: 2, scope: !6141)
!6280 = !DILocation(line: 119, column: 15, scope: !6129)
!6281 = !DILocation(line: 119, column: 11, scope: !6129)
!6282 = !DILocation(line: 119, column: 18, scope: !6129)
!6283 = distinct !{!6283, !6158, !6284, !5119, !5120}
!6284 = !DILocation(line: 119, column: 24, scope: !6129)
!6285 = !DILocation(line: 121, column: 7, scope: !6286)
!6286 = distinct !DILexicalBlock(scope: !6129, file: !2, line: 121, column: 6)
!6287 = !DILocation(line: 121, column: 6, scope: !6286)
!6288 = !DILocation(line: 121, column: 18, scope: !6286)
!6289 = !DILocation(line: 121, column: 6, scope: !6129)
!6290 = !DILocation(line: 122, column: 3, scope: !6291)
!6291 = distinct !DILexicalBlock(scope: !6286, file: !2, line: 121, column: 23)
!6292 = !DILocation(line: 122, column: 11, scope: !6291)
!6293 = !DILocation(line: 122, column: 10, scope: !6291)
!6294 = !DILocation(line: 122, column: 15, scope: !6291)
!6295 = !DILocation(line: 122, column: 19, scope: !6291)
!6296 = !DILocation(line: 122, column: 18, scope: !6291)
!6297 = !DILocation(line: 122, column: 23, scope: !6291)
!6298 = !DILocation(line: 122, column: 30, scope: !6291)
!6299 = !DILocation(line: 122, column: 34, scope: !6291)
!6300 = !DILocation(line: 122, column: 33, scope: !6291)
!6301 = !DILocation(line: 122, column: 38, scope: !6291)
!6302 = !DILocation(line: 0, scope: !6291)
!6303 = !DILocation(line: 123, column: 7, scope: !6291)
!6304 = distinct !{!6304, !6290, !6303, !5119, !5120}
!6305 = !DILocation(line: 124, column: 8, scope: !6306)
!6306 = distinct !DILexicalBlock(scope: !6291, file: !2, line: 124, column: 7)
!6307 = !DILocation(line: 124, column: 7, scope: !6306)
!6308 = !DILocation(line: 124, column: 12, scope: !6306)
!6309 = !DILocation(line: 124, column: 7, scope: !6291)
!6310 = !DILocation(line: 125, column: 7, scope: !6311)
!6311 = distinct !DILexicalBlock(scope: !6306, file: !2, line: 124, column: 20)
!6312 = !DILocation(line: 126, column: 27, scope: !6311)
!6313 = !DILocation(line: 126, column: 18, scope: !6311)
!6314 = !DILocation(line: 126, column: 5, scope: !6311)
!6315 = !DILocation(line: 126, column: 16, scope: !6311)
!6316 = !DILocation(line: 127, column: 8, scope: !6317)
!6317 = distinct !DILexicalBlock(scope: !6311, file: !2, line: 127, column: 8)
!6318 = !DILocation(line: 127, column: 15, scope: !6317)
!6319 = !DILocation(line: 127, column: 12, scope: !6317)
!6320 = !DILocation(line: 127, column: 8, scope: !6311)
!6321 = !DILocation(line: 128, column: 5, scope: !6322)
!6322 = distinct !DILexicalBlock(scope: !6323, file: !2, line: 128, column: 5)
!6323 = distinct !DILexicalBlock(scope: !6317, file: !2, line: 127, column: 20)
!6324 = !DILocation(line: 128, column: 5, scope: !6325)
!6325 = distinct !DILexicalBlock(scope: !6322, file: !2, line: 128, column: 5)
!6326 = !DILocation(line: 129, column: 5, scope: !6323)
!6327 = !DILocation(line: 131, column: 3, scope: !6311)
!6328 = !DILocation(line: 132, column: 2, scope: !6291)
!6329 = !DILocation(line: 133, column: 3, scope: !6330)
!6330 = distinct !DILexicalBlock(scope: !6286, file: !2, line: 133, column: 3)
!6331 = !DILocation(line: 133, column: 3, scope: !6332)
!6332 = distinct !DILexicalBlock(scope: !6330, file: !2, line: 133, column: 3)
!6333 = !DILocation(line: 135, column: 2, scope: !6129)
!6334 = !DILocation(line: 136, column: 1, scope: !6129)
!6335 = distinct !DISubprogram(name: "parse_crashkernel_simple", scope: !2, file: !2, line: 145, type: !6336, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6338)
!6336 = !DISubroutineType(types: !6337)
!6337 = !{!93, !659, !4829, !4829}
!6338 = !{!6339, !6340, !6341, !6342}
!6339 = !DILocalVariable(name: "cmdline", arg: 1, scope: !6335, file: !2, line: 145, type: !659)
!6340 = !DILocalVariable(name: "crash_size", arg: 2, scope: !6335, file: !2, line: 146, type: !4829)
!6341 = !DILocalVariable(name: "crash_base", arg: 3, scope: !6335, file: !2, line: 147, type: !4829)
!6342 = !DILocalVariable(name: "cur", scope: !6335, file: !2, line: 149, type: !659)
!6343 = !DILocation(line: 145, column: 50, scope: !6335)
!6344 = !DILocation(line: 146, column: 29, scope: !6335)
!6345 = !DILocation(line: 147, column: 29, scope: !6335)
!6346 = !DILocation(line: 149, column: 2, scope: !6335)
!6347 = !DILocation(line: 149, column: 8, scope: !6335)
!6348 = !DILocation(line: 149, column: 14, scope: !6335)
!6349 = !DILocation(line: 151, column: 25, scope: !6335)
!6350 = !DILocation(line: 151, column: 16, scope: !6335)
!6351 = !DILocation(line: 151, column: 3, scope: !6335)
!6352 = !DILocation(line: 151, column: 14, scope: !6335)
!6353 = !DILocation(line: 152, column: 6, scope: !6354)
!6354 = distinct !DILexicalBlock(scope: !6335, file: !2, line: 152, column: 6)
!6355 = !DILocation(line: 152, column: 17, scope: !6354)
!6356 = !DILocation(line: 152, column: 14, scope: !6354)
!6357 = !DILocation(line: 152, column: 6, scope: !6335)
!6358 = !DILocation(line: 153, column: 3, scope: !6359)
!6359 = distinct !DILexicalBlock(scope: !6360, file: !2, line: 153, column: 3)
!6360 = distinct !DILexicalBlock(scope: !6354, file: !2, line: 152, column: 22)
!6361 = !DILocation(line: 153, column: 3, scope: !6362)
!6362 = distinct !DILexicalBlock(scope: !6359, file: !2, line: 153, column: 3)
!6363 = !DILocation(line: 154, column: 3, scope: !6360)
!6364 = !DILocation(line: 157, column: 7, scope: !6365)
!6365 = distinct !DILexicalBlock(scope: !6335, file: !2, line: 157, column: 6)
!6366 = !DILocation(line: 157, column: 6, scope: !6365)
!6367 = !DILocation(line: 157, column: 11, scope: !6365)
!6368 = !DILocation(line: 157, column: 6, scope: !6335)
!6369 = !DILocation(line: 158, column: 26, scope: !6365)
!6370 = !DILocation(line: 158, column: 29, scope: !6365)
!6371 = !DILocation(line: 158, column: 17, scope: !6365)
!6372 = !DILocation(line: 158, column: 4, scope: !6365)
!6373 = !DILocation(line: 158, column: 15, scope: !6365)
!6374 = !DILocation(line: 158, column: 3, scope: !6365)
!6375 = !DILocation(line: 159, column: 12, scope: !6376)
!6376 = distinct !DILexicalBlock(scope: !6365, file: !2, line: 159, column: 11)
!6377 = !DILocation(line: 159, column: 11, scope: !6376)
!6378 = !DILocation(line: 159, column: 16, scope: !6376)
!6379 = !DILocation(line: 159, column: 23, scope: !6376)
!6380 = !DILocation(line: 159, column: 27, scope: !6376)
!6381 = !DILocation(line: 159, column: 26, scope: !6376)
!6382 = !DILocation(line: 159, column: 31, scope: !6376)
!6383 = !DILocation(line: 159, column: 11, scope: !6365)
!6384 = !DILocation(line: 160, column: 3, scope: !6385)
!6385 = distinct !DILexicalBlock(scope: !6386, file: !2, line: 160, column: 3)
!6386 = distinct !DILexicalBlock(scope: !6376, file: !2, line: 159, column: 40)
!6387 = !DILocation(line: 160, column: 3, scope: !6388)
!6388 = distinct !DILexicalBlock(scope: !6385, file: !2, line: 160, column: 3)
!6389 = !DILocation(line: 161, column: 3, scope: !6386)
!6390 = !DILocation(line: 164, column: 2, scope: !6335)
!6391 = !DILocation(line: 165, column: 1, scope: !6335)
!6392 = !DISubprogram(name: "strstr", scope: !5620, file: !5620, line: 122, type: !6393, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6393 = !DISubroutineType(types: !6394)
!6394 = !{!659, !447, !447}
!6395 = !DISubprogram(name: "strncmp", scope: !5620, file: !5620, line: 91, type: !6396, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6396 = !DISubroutineType(types: !6397)
!6397 = !{!93, !447, !447, !441}
!6398 = !DISubprogram(name: "memparse", scope: !6399, file: !6399, line: 209, type: !6400, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6399 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!6400 = !DISubroutineType(types: !6401)
!6401 = !{!400, !447, !6402}
!6402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!6403 = distinct !DISubprogram(name: "bitmap_weight", scope: !6404, file: !6404, line: 453, type: !6405, scopeLine: 454, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6407)
!6404 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e602e35f6e89a2b4274644378845f524")
!6405 = !DISubroutineType(types: !6406)
!6406 = !{!13, !5261, !13}
!6407 = !{!6408, !6409}
!6408 = !DILocalVariable(name: "src", arg: 1, scope: !6403, file: !6404, line: 453, type: !5261)
!6409 = !DILocalVariable(name: "nbits", arg: 2, scope: !6403, file: !6404, line: 453, type: !13)
!6410 = !DILocation(line: 453, column: 49, scope: !6403)
!6411 = !DILocation(line: 453, column: 67, scope: !6403)
!6412 = !DILocation(line: 455, column: 6, scope: !6413)
!6413 = distinct !DILexicalBlock(scope: !6403, file: !6404, line: 455, column: 6)
!6414 = !DILocation(line: 455, column: 6, scope: !6403)
!6415 = !DILocation(line: 456, column: 24, scope: !6413)
!6416 = !DILocation(line: 456, column: 23, scope: !6413)
!6417 = !DILocation(line: 456, column: 30, scope: !6413)
!6418 = !DILocation(line: 456, column: 28, scope: !6413)
!6419 = !DILocation(line: 456, column: 10, scope: !6413)
!6420 = !DILocation(line: 456, column: 3, scope: !6413)
!6421 = !DILocation(line: 457, column: 25, scope: !6403)
!6422 = !DILocation(line: 457, column: 30, scope: !6403)
!6423 = !DILocation(line: 457, column: 9, scope: !6403)
!6424 = !DILocation(line: 457, column: 2, scope: !6403)
!6425 = !DILocation(line: 458, column: 1, scope: !6403)
!6426 = distinct !DISubprogram(name: "hweight_long", scope: !6427, file: !6427, line: 95, type: !5742, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6428)
!6427 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ff773790f4c3b71576b4a48e7797457")
!6428 = !{!6429}
!6429 = !DILocalVariable(name: "w", arg: 1, scope: !6426, file: !6427, line: 95, type: !375)
!6430 = !DILocation(line: 95, column: 65, scope: !6426)
!6431 = !DILocation(line: 97, column: 41, scope: !6426)
!6432 = !DILocation(line: 97, column: 2, scope: !6426)
!6433 = !DISubprogram(name: "__bitmap_weight", scope: !6404, file: !6404, line: 171, type: !6405, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6434 = distinct !DISubprogram(name: "__arch_hweight64", scope: !6435, file: !6435, line: 43, type: !6436, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6438)
!6435 = !DIFile(filename: "./arch/x86/include/asm/arch_hweight.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "49102469a535fe59caa96e0b4cb43e29")
!6436 = !DISubroutineType(types: !6437)
!6437 = !{!375, !399}
!6438 = !{!6439, !6440}
!6439 = !DILocalVariable(name: "w", arg: 1, scope: !6434, file: !6435, line: 43, type: !399)
!6440 = !DILocalVariable(name: "res", scope: !6434, file: !6435, line: 45, type: !375)
!6441 = !DILocation(line: 43, column: 61, scope: !6434)
!6442 = !DILocation(line: 45, column: 2, scope: !6434)
!6443 = !DILocation(line: 45, column: 16, scope: !6434)
!6444 = !DILocation(line: 49, column: 15, scope: !6434)
!6445 = !DILocation(line: 47, column: 2, scope: !6434)
!6446 = !{i64 2148484727, i64 2148484755, i64 2148484761, i64 2148484777, i64 2148484793, i64 2148484820, i64 2148485153, i64 2148484453, i64 2148485159, i64 2148485207, i64 2148485271, i64 2148485335, i64 2148485392, i64 2148484534, i64 2148484559, i64 2148485599, i64 2148485729, i64 2148485660, i64 2148485743, i64 2148484651}
!6447 = !DILocation(line: 51, column: 9, scope: !6434)
!6448 = !DILocation(line: 52, column: 1, scope: !6434)
!6449 = !DILocation(line: 51, column: 2, scope: !6434)
!6450 = distinct !DISubprogram(name: "variable__ffs", scope: !6451, file: !6451, line: 250, type: !5742, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6452)
!6451 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!6452 = !{!6453}
!6453 = !DILocalVariable(name: "word", arg: 1, scope: !6450, file: !6451, line: 250, type: !375)
!6454 = !DILocation(line: 250, column: 66, scope: !6450)
!6455 = !DILocation(line: 254, column: 11, scope: !6450)
!6456 = !DILocation(line: 252, column: 2, scope: !6450)
!6457 = !{i64 976200}
!6458 = !DILocation(line: 255, column: 9, scope: !6450)
!6459 = !DILocation(line: 255, column: 2, scope: !6450)
!6460 = !DISubprogram(name: "_find_next_bit", scope: !5258, file: !5258, line: 11, type: !5259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6461 = !DISubprogram(name: "get_zeroed_page", scope: !6462, file: !6462, line: 290, type: !6463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6462 = !DIFile(filename: "./include/linux/gfp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9839e6e1390b3a0e2df74dd95101fbc5")
!6463 = !DISubroutineType(types: !6464)
!6464 = !{!375, !445}
!6465 = !DISubprogram(name: "alloc_pages_exact", scope: !6462, file: !6462, line: 292, type: !6466, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6466 = !DISubroutineType(types: !6467)
!6467 = !{!432, !439, !445}
!6468 = !DISubprogram(name: "free_pages", scope: !6462, file: !6462, line: 303, type: !6469, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6469 = !DISubroutineType(types: !6470)
!6470 = !{null, !375, !13}
!6471 = distinct !DISubprogram(name: "_static_cpu_has", scope: !6472, file: !6472, line: 173, type: !6473, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6475)
!6472 = !DIFile(filename: "./arch/x86/include/asm/cpufeature.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90439827e3f106d11a8d96ab90603ff3")
!6473 = !DISubroutineType(types: !6474)
!6474 = !{!1683, !612}
!6475 = !{!6476, !6477, !6478}
!6476 = !DILocalVariable(name: "bit", arg: 1, scope: !6471, file: !6472, line: 173, type: !612)
!6477 = !DILabel(scope: !6471, name: "t_yes", file: !6472, line: 187)
!6478 = !DILabel(scope: !6471, name: "t_no", file: !6472, line: 189)
!6479 = !DILocation(line: 173, column: 49, scope: !6471)
!6480 = !DILocation(line: 183, column: 24, scope: !6471)
!6481 = !DILocation(line: 184, column: 30, scope: !6471)
!6482 = !DILocation(line: 184, column: 34, scope: !6471)
!6483 = !DILocation(line: 184, column: 26, scope: !6471)
!6484 = !DILocation(line: 185, column: 70, scope: !6471)
!6485 = !DILocation(line: 185, column: 74, scope: !6471)
!6486 = !DILocation(line: 185, column: 25, scope: !6471)
!6487 = !DILocation(line: 175, column: 2, scope: !6471)
!6488 = !{i64 2149507920, i64 2149507953, i64 2149507959, i64 2149507975, i64 2149507994, i64 2149508025, i64 2149508978, i64 2149507567, i64 2149508984, i64 2149509032, i64 2149509096, i64 2149509160, i64 2149509217, i64 2149509424, i64 2149509472, i64 2149509536, i64 2149509600, i64 2149509657, i64 2149507685, i64 2149507710, i64 2149509867, i64 2149509995, i64 2149509928, i64 2149510009, i64 2149510023, i64 2149510139, i64 2149510084, i64 2149510153, i64 2149507844, i64 1689177, i64 1689217, i64 1689226, i64 1689276, i64 1689297, i64 1689317}
!6489 = !DILocation(line: 187, column: 1, scope: !6471)
!6490 = !DILocation(line: 188, column: 2, scope: !6471)
!6491 = !DILocation(line: 189, column: 1, scope: !6471)
!6492 = !DILocation(line: 190, column: 2, scope: !6471)
!6493 = !DILocation(line: 191, column: 1, scope: !6471)
!6494 = !DISubprogram(name: "log_buf_vmcoreinfo_setup", scope: !5935, file: !5935, line: 187, type: !2024, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6495 = !DISubprogram(name: "__compiletime_assert_328", scope: !2, file: !2, line: 726, type: !2024, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6496 = !DISubprogram(name: "__alloc_percpu", scope: !5298, file: !5298, line: 133, type: !6497, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6497 = !DISubroutineType(types: !6498)
!6498 = !{!432, !439, !439}
!6499 = distinct !DISubprogram(name: "atomic_cmpxchg_acquire", scope: !6500, file: !6500, line: 1211, type: !6501, scopeLine: 1212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6504)
!6500 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!6501 = !DISubroutineType(types: !6502)
!6502 = !{!93, !6503, !93, !93}
!6503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!6504 = !{!6505, !6506, !6507}
!6505 = !DILocalVariable(name: "v", arg: 1, scope: !6499, file: !6500, line: 1211, type: !6503)
!6506 = !DILocalVariable(name: "old", arg: 2, scope: !6499, file: !6500, line: 1211, type: !93)
!6507 = !DILocalVariable(name: "new", arg: 3, scope: !6499, file: !6500, line: 1211, type: !93)
!6508 = !DILocation(line: 1211, column: 34, scope: !6499)
!6509 = !DILocation(line: 1211, column: 41, scope: !6499)
!6510 = !DILocation(line: 1211, column: 50, scope: !6499)
!6511 = !DILocation(line: 1213, column: 31, scope: !6499)
!6512 = !DILocation(line: 1213, column: 2, scope: !6499)
!6513 = !DILocation(line: 1214, column: 36, scope: !6499)
!6514 = !DILocation(line: 1214, column: 39, scope: !6499)
!6515 = !DILocation(line: 1214, column: 44, scope: !6499)
!6516 = !DILocation(line: 1214, column: 9, scope: !6499)
!6517 = !DILocation(line: 1214, column: 2, scope: !6499)
!6518 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !6519, file: !6519, line: 94, type: !6520, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6525)
!6519 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6520 = !DISubroutineType(types: !6521)
!6521 = !{null, !6522, !439}
!6522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6523, size: 64)
!6523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6524)
!6524 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6525 = !{!6526, !6527}
!6526 = !DILocalVariable(name: "v", arg: 1, scope: !6518, file: !6519, line: 94, type: !6522)
!6527 = !DILocalVariable(name: "size", arg: 2, scope: !6518, file: !6519, line: 94, type: !439)
!6528 = !DILocation(line: 94, column: 79, scope: !6518)
!6529 = !DILocation(line: 94, column: 89, scope: !6518)
!6530 = !DILocation(line: 96, column: 20, scope: !6518)
!6531 = !DILocation(line: 96, column: 23, scope: !6518)
!6532 = !DILocation(line: 96, column: 2, scope: !6518)
!6533 = !DILocation(line: 97, column: 2, scope: !6518)
!6534 = !DILocation(line: 98, column: 1, scope: !6518)
!6535 = distinct !DISubprogram(name: "raw_atomic_cmpxchg_acquire", scope: !6536, file: !6536, line: 2029, type: !6501, scopeLine: 2030, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6537)
!6536 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!6537 = !{!6538, !6539, !6540}
!6538 = !DILocalVariable(name: "v", arg: 1, scope: !6535, file: !6536, line: 2029, type: !6503)
!6539 = !DILocalVariable(name: "old", arg: 2, scope: !6535, file: !6536, line: 2029, type: !93)
!6540 = !DILocalVariable(name: "new", arg: 3, scope: !6535, file: !6536, line: 2029, type: !93)
!6541 = !DILocation(line: 2029, column: 38, scope: !6535)
!6542 = !DILocation(line: 2029, column: 45, scope: !6535)
!6543 = !DILocation(line: 2029, column: 54, scope: !6535)
!6544 = !DILocation(line: 2038, column: 29, scope: !6535)
!6545 = !DILocation(line: 2038, column: 32, scope: !6535)
!6546 = !DILocation(line: 2038, column: 37, scope: !6535)
!6547 = !DILocation(line: 2038, column: 9, scope: !6535)
!6548 = !DILocation(line: 2038, column: 2, scope: !6535)
!6549 = distinct !DISubprogram(name: "kasan_check_write", scope: !6550, file: !6550, line: 44, type: !6551, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6553)
!6550 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6551 = !DISubroutineType(types: !6552)
!6552 = !{!1683, !6522, !13}
!6553 = !{!6554, !6555}
!6554 = !DILocalVariable(name: "p", arg: 1, scope: !6549, file: !6550, line: 44, type: !6522)
!6555 = !DILocalVariable(name: "size", arg: 2, scope: !6549, file: !6550, line: 44, type: !13)
!6556 = !DILocation(line: 44, column: 59, scope: !6549)
!6557 = !DILocation(line: 44, column: 75, scope: !6549)
!6558 = !DILocation(line: 46, column: 2, scope: !6549)
!6559 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6560, file: !6560, line: 229, type: !6561, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6563)
!6560 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6561 = !DISubroutineType(types: !6562)
!6562 = !{null, !6522, !439, !93}
!6563 = !{!6564, !6565, !6566}
!6564 = !DILocalVariable(name: "ptr", arg: 1, scope: !6559, file: !6560, line: 229, type: !6522)
!6565 = !DILocalVariable(name: "size", arg: 2, scope: !6559, file: !6560, line: 229, type: !439)
!6566 = !DILocalVariable(name: "type", arg: 3, scope: !6559, file: !6560, line: 230, type: !93)
!6567 = !DILocation(line: 229, column: 60, scope: !6559)
!6568 = !DILocation(line: 229, column: 72, scope: !6559)
!6569 = !DILocation(line: 230, column: 15, scope: !6559)
!6570 = !DILocation(line: 230, column: 23, scope: !6559)
!6571 = distinct !DISubprogram(name: "arch_atomic_cmpxchg", scope: !6572, file: !6572, line: 107, type: !6501, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6573)
!6572 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!6573 = !{!6574, !6575, !6576, !6577, !6579, !6580, !6581}
!6574 = !DILocalVariable(name: "v", arg: 1, scope: !6571, file: !6572, line: 107, type: !6503)
!6575 = !DILocalVariable(name: "old", arg: 2, scope: !6571, file: !6572, line: 107, type: !93)
!6576 = !DILocalVariable(name: "new", arg: 3, scope: !6571, file: !6572, line: 107, type: !93)
!6577 = !DILocalVariable(name: "__ret", scope: !6578, file: !6572, line: 109, type: !93)
!6578 = distinct !DILexicalBlock(scope: !6571, file: !6572, line: 109, column: 9)
!6579 = !DILocalVariable(name: "__old", scope: !6578, file: !6572, line: 109, type: !93)
!6580 = !DILocalVariable(name: "__new", scope: !6578, file: !6572, line: 109, type: !93)
!6581 = !DILocalVariable(name: "__ptr", scope: !6578, file: !6572, line: 109, type: !449)
!6582 = !DILocation(line: 107, column: 58, scope: !6571)
!6583 = !DILocation(line: 107, column: 65, scope: !6571)
!6584 = !DILocation(line: 107, column: 74, scope: !6571)
!6585 = !DILocation(line: 109, column: 9, scope: !6578)
!6586 = !{i64 2147849058, i64 2147849097, i64 2147849118, i64 2147849155, i64 2147849178, i64 2147849187}
!6587 = !DILocation(line: 109, column: 9, scope: !6571)
!6588 = !DILocation(line: 109, column: 2, scope: !6571)
!6589 = distinct !DISubprogram(name: "atomic_set_release", scope: !6500, file: !6500, line: 83, type: !6590, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6592)
!6590 = !DISubroutineType(types: !6591)
!6591 = !{null, !6503, !93}
!6592 = !{!6593, !6594}
!6593 = !DILocalVariable(name: "v", arg: 1, scope: !6589, file: !6500, line: 83, type: !6503)
!6594 = !DILocalVariable(name: "i", arg: 2, scope: !6589, file: !6500, line: 83, type: !93)
!6595 = !DILocation(line: 83, column: 30, scope: !6589)
!6596 = !DILocation(line: 83, column: 37, scope: !6589)
!6597 = !DILocation(line: 85, column: 2, scope: !6589)
!6598 = !DILocation(line: 85, column: 2, scope: !6599)
!6599 = distinct !DILexicalBlock(scope: !6589, file: !6500, line: 85, column: 2)
!6600 = !DILocation(line: 86, column: 26, scope: !6589)
!6601 = !DILocation(line: 86, column: 2, scope: !6589)
!6602 = !DILocation(line: 87, column: 25, scope: !6589)
!6603 = !DILocation(line: 87, column: 28, scope: !6589)
!6604 = !DILocation(line: 87, column: 2, scope: !6589)
!6605 = !DILocation(line: 88, column: 1, scope: !6589)
!6606 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !6519, file: !6519, line: 80, type: !6520, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6607)
!6607 = !{!6608, !6609}
!6608 = !DILocalVariable(name: "v", arg: 1, scope: !6606, file: !6519, line: 80, type: !6522)
!6609 = !DILocalVariable(name: "size", arg: 2, scope: !6606, file: !6519, line: 80, type: !439)
!6610 = !DILocation(line: 80, column: 74, scope: !6606)
!6611 = !DILocation(line: 80, column: 84, scope: !6606)
!6612 = !DILocation(line: 82, column: 20, scope: !6606)
!6613 = !DILocation(line: 82, column: 23, scope: !6606)
!6614 = !DILocation(line: 82, column: 2, scope: !6606)
!6615 = !DILocation(line: 83, column: 2, scope: !6606)
!6616 = !DILocation(line: 84, column: 1, scope: !6606)
!6617 = distinct !DISubprogram(name: "raw_atomic_set_release", scope: !6536, file: !6536, line: 505, type: !6590, scopeLine: 506, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6618)
!6618 = !{!6619, !6620}
!6619 = !DILocalVariable(name: "v", arg: 1, scope: !6617, file: !6536, line: 505, type: !6503)
!6620 = !DILocalVariable(name: "i", arg: 2, scope: !6617, file: !6536, line: 505, type: !93)
!6621 = !DILocation(line: 505, column: 34, scope: !6617)
!6622 = !DILocation(line: 505, column: 41, scope: !6617)
!6623 = !DILocation(line: 511, column: 3, scope: !6624)
!6624 = distinct !DILexicalBlock(scope: !6625, file: !6536, line: 510, column: 31)
!6625 = distinct !DILexicalBlock(scope: !6617, file: !6536, line: 510, column: 6)
!6626 = !DILocation(line: 511, column: 3, scope: !6627)
!6627 = distinct !DILexicalBlock(scope: !6624, file: !6536, line: 511, column: 3)
!6628 = !DILocation(line: 511, column: 3, scope: !6629)
!6629 = distinct !DILexicalBlock(scope: !6627, file: !6536, line: 511, column: 3)
!6630 = !DILocation(line: 511, column: 3, scope: !6631)
!6631 = distinct !DILexicalBlock(scope: !6627, file: !6536, line: 511, column: 3)
!6632 = !DILocation(line: 511, column: 3, scope: !6633)
!6633 = distinct !DILexicalBlock(scope: !6631, file: !6536, line: 511, column: 3)
!6634 = !{i64 2148022148}
!6635 = !DILocation(line: 511, column: 3, scope: !6636)
!6636 = distinct !DILexicalBlock(scope: !6631, file: !6536, line: 511, column: 3)
!6637 = !DILocation(line: 511, column: 3, scope: !6638)
!6638 = distinct !DILexicalBlock(scope: !6636, file: !6536, line: 511, column: 3)
!6639 = !DILocation(line: 511, column: 3, scope: !6640)
!6640 = distinct !DILexicalBlock(scope: !6636, file: !6536, line: 511, column: 3)
!6641 = !DILocation(line: 517, column: 1, scope: !6617)
!6642 = distinct !DISubprogram(name: "cpuhp_setup_state_nocalls", scope: !92, file: !92, line: 323, type: !6643, scopeLine: 327, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6648)
!6643 = !DISubroutineType(types: !6644)
!6644 = !{!93, !91, !447, !6645, !6645}
!6645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6646, size: 64)
!6646 = !DISubroutineType(types: !6647)
!6647 = !{!93, !13}
!6648 = !{!6649, !6650, !6651, !6652}
!6649 = !DILocalVariable(name: "state", arg: 1, scope: !6642, file: !92, line: 323, type: !91)
!6650 = !DILocalVariable(name: "name", arg: 2, scope: !6642, file: !92, line: 324, type: !447)
!6651 = !DILocalVariable(name: "startup", arg: 3, scope: !6642, file: !92, line: 325, type: !6645)
!6652 = !DILocalVariable(name: "teardown", arg: 4, scope: !6642, file: !92, line: 326, type: !6645)
!6653 = !DILocation(line: 323, column: 62, scope: !6642)
!6654 = !DILocation(line: 324, column: 22, scope: !6642)
!6655 = !DILocation(line: 325, column: 16, scope: !6642)
!6656 = !DILocation(line: 326, column: 16, scope: !6642)
!6657 = !DILocation(line: 328, column: 29, scope: !6642)
!6658 = !DILocation(line: 328, column: 36, scope: !6642)
!6659 = !DILocation(line: 328, column: 49, scope: !6642)
!6660 = !DILocation(line: 328, column: 58, scope: !6642)
!6661 = !DILocation(line: 328, column: 9, scope: !6642)
!6662 = !DILocation(line: 328, column: 2, scope: !6642)
!6663 = distinct !DISubprogram(name: "crash_cpuhp_online", scope: !2, file: !2, line: 894, type: !6646, scopeLine: 895, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6664)
!6664 = !{!6665}
!6665 = !DILocalVariable(name: "cpu", arg: 1, scope: !6663, file: !2, line: 894, type: !13)
!6666 = !DILocation(line: 894, column: 44, scope: !6663)
!6667 = !DILocation(line: 896, column: 53, scope: !6663)
!6668 = !DILocation(line: 896, column: 2, scope: !6663)
!6669 = !DILocation(line: 897, column: 2, scope: !6663)
!6670 = distinct !DISubprogram(name: "crash_cpuhp_offline", scope: !2, file: !2, line: 900, type: !6646, scopeLine: 901, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6671)
!6671 = !{!6672}
!6672 = !DILocalVariable(name: "cpu", arg: 1, scope: !6670, file: !2, line: 900, type: !13)
!6673 = !DILocation(line: 900, column: 45, scope: !6670)
!6674 = !DILocation(line: 902, column: 56, scope: !6670)
!6675 = !DILocation(line: 902, column: 2, scope: !6670)
!6676 = !DILocation(line: 903, column: 2, scope: !6670)
!6677 = !DISubprogram(name: "__cpuhp_setup_state", scope: !92, file: !92, line: 263, type: !6678, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6678 = !DISubroutineType(types: !6679)
!6679 = !{!93, !91, !447, !1683, !6645, !6645, !1683}
!6680 = distinct !DISubprogram(name: "crash_handle_hotplug_event", scope: !2, file: !2, line: 795, type: !6681, scopeLine: 796, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6683)
!6681 = !DISubroutineType(types: !6682)
!6682 = !{null, !13, !13}
!6683 = !{!6684, !6685, !6686, !6742, !6745, !6746, !6747}
!6684 = !DILocalVariable(name: "hp_action", arg: 1, scope: !6680, file: !2, line: 795, type: !13)
!6685 = !DILocalVariable(name: "cpu", arg: 2, scope: !6680, file: !2, line: 795, type: !13)
!6686 = !DILocalVariable(name: "image", scope: !6680, file: !2, line: 797, type: !6687)
!6687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6688, size: 64)
!6688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kimage", file: !6689, line: 296, size: 5760, elements: !6690)
!6689 = !DIFile(filename: "./include/linux/kexec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "46c4f8f14212f79d216b15c6b640c492")
!6690 = !{!6691, !6693, !6695, !6696, !6697, !6698, !6699, !6700, !6701, !6713, !6714, !6715, !6716, !6717, !6718, !6719, !6720, !6721, !6736, !6737, !6738, !6739, !6740, !6741}
!6691 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !6688, file: !6689, line: 297, baseType: !6692, size: 64)
!6692 = !DIDerivedType(tag: DW_TAG_typedef, name: "kimage_entry_t", file: !6689, line: 80, baseType: !375)
!6693 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !6688, file: !6689, line: 298, baseType: !6694, size: 64, offset: 64)
!6694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6692, size: 64)
!6695 = !DIDerivedType(tag: DW_TAG_member, name: "last_entry", scope: !6688, file: !6689, line: 299, baseType: !6694, size: 64, offset: 128)
!6696 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !6688, file: !6689, line: 301, baseType: !375, size: 64, offset: 192)
!6697 = !DIDerivedType(tag: DW_TAG_member, name: "control_code_page", scope: !6688, file: !6689, line: 302, baseType: !453, size: 64, offset: 256)
!6698 = !DIDerivedType(tag: DW_TAG_member, name: "swap_page", scope: !6688, file: !6689, line: 303, baseType: !453, size: 64, offset: 320)
!6699 = !DIDerivedType(tag: DW_TAG_member, name: "vmcoreinfo_data_copy", scope: !6688, file: !6689, line: 304, baseType: !432, size: 64, offset: 384)
!6700 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segments", scope: !6688, file: !6689, line: 306, baseType: !375, size: 64, offset: 448)
!6701 = !DIDerivedType(tag: DW_TAG_member, name: "segment", scope: !6688, file: !6689, line: 307, baseType: !6702, size: 4096, offset: 512)
!6702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6703, size: 4096, elements: !386)
!6703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kexec_segment", file: !6689, line: 82, size: 256, elements: !6704)
!6704 = !{!6705, !6710, !6711, !6712}
!6705 = !DIDerivedType(tag: DW_TAG_member, scope: !6703, file: !6689, line: 91, baseType: !6706, size: 64)
!6706 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6703, file: !6689, line: 91, size: 64, elements: !6707)
!6707 = !{!6708, !6709}
!6708 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !6706, file: !6689, line: 92, baseType: !432, size: 64)
!6709 = !DIDerivedType(tag: DW_TAG_member, name: "kbuf", scope: !6706, file: !6689, line: 93, baseType: !432, size: 64)
!6710 = !DIDerivedType(tag: DW_TAG_member, name: "bufsz", scope: !6703, file: !6689, line: 95, baseType: !439, size: 64, offset: 64)
!6711 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !6703, file: !6689, line: 96, baseType: !375, size: 64, offset: 128)
!6712 = !DIDerivedType(tag: DW_TAG_member, name: "memsz", scope: !6703, file: !6689, line: 97, baseType: !439, size: 64, offset: 192)
!6713 = !DIDerivedType(tag: DW_TAG_member, name: "control_pages", scope: !6688, file: !6689, line: 309, baseType: !467, size: 128, offset: 4608)
!6714 = !DIDerivedType(tag: DW_TAG_member, name: "dest_pages", scope: !6688, file: !6689, line: 310, baseType: !467, size: 128, offset: 4736)
!6715 = !DIDerivedType(tag: DW_TAG_member, name: "unusable_pages", scope: !6688, file: !6689, line: 311, baseType: !467, size: 128, offset: 4864)
!6716 = !DIDerivedType(tag: DW_TAG_member, name: "control_page", scope: !6688, file: !6689, line: 314, baseType: !375, size: 64, offset: 4992)
!6717 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6688, file: !6689, line: 317, baseType: !13, size: 1, offset: 5056, flags: DIFlagBitField, extraData: i64 5056)
!6718 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_context", scope: !6688, file: !6689, line: 320, baseType: !13, size: 1, offset: 5057, flags: DIFlagBitField, extraData: i64 5056)
!6719 = !DIDerivedType(tag: DW_TAG_member, name: "file_mode", scope: !6688, file: !6689, line: 322, baseType: !13, size: 1, offset: 5058, flags: DIFlagBitField, extraData: i64 5056)
!6720 = !DIDerivedType(tag: DW_TAG_member, name: "update_elfcorehdr", scope: !6688, file: !6689, line: 325, baseType: !13, size: 1, offset: 5059, flags: DIFlagBitField, extraData: i64 5056)
!6721 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !6688, file: !6689, line: 329, baseType: !6722, size: 320, offset: 5120)
!6722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kimage_arch", file: !6723, line: 145, size: 320, elements: !6724)
!6723 = !DIFile(filename: "./arch/x86/include/asm/kexec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ab2d478aae98767fa69f277d1e3e2976")
!6724 = !{!6725, !6726, !6733, !6734, !6735}
!6725 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !6722, file: !6723, line: 150, baseType: !1289, size: 64)
!6726 = !DIDerivedType(tag: DW_TAG_member, name: "p4d", scope: !6722, file: !6723, line: 159, baseType: !6727, size: 64, offset: 64)
!6727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6728, size: 64)
!6728 = !DIDerivedType(tag: DW_TAG_typedef, name: "p4d_t", file: !1291, line: 346, baseType: !6729)
!6729 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1291, line: 346, size: 64, elements: !6730)
!6730 = !{!6731}
!6731 = !DIDerivedType(tag: DW_TAG_member, name: "p4d", scope: !6729, file: !1291, line: 346, baseType: !6732, size: 64)
!6732 = !DIDerivedType(tag: DW_TAG_typedef, name: "p4dval_t", file: !1296, line: 17, baseType: !375)
!6733 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !6722, file: !6723, line: 160, baseType: !2883, size: 64, offset: 128)
!6734 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !6722, file: !6723, line: 161, baseType: !2876, size: 64, offset: 192)
!6735 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !6722, file: !6723, line: 162, baseType: !2902, size: 64, offset: 256)
!6736 = !DIDerivedType(tag: DW_TAG_member, name: "hp_action", scope: !6688, file: !6689, line: 354, baseType: !93, size: 32, offset: 5440)
!6737 = !DIDerivedType(tag: DW_TAG_member, name: "elfcorehdr_index", scope: !6688, file: !6689, line: 355, baseType: !93, size: 32, offset: 5472)
!6738 = !DIDerivedType(tag: DW_TAG_member, name: "elfcorehdr_updated", scope: !6688, file: !6689, line: 356, baseType: !1683, size: 8, offset: 5504)
!6739 = !DIDerivedType(tag: DW_TAG_member, name: "elf_headers", scope: !6688, file: !6689, line: 368, baseType: !432, size: 64, offset: 5568)
!6740 = !DIDerivedType(tag: DW_TAG_member, name: "elf_headers_sz", scope: !6688, file: !6689, line: 369, baseType: !375, size: 64, offset: 5632)
!6741 = !DIDerivedType(tag: DW_TAG_member, name: "elf_load_addr", scope: !6688, file: !6689, line: 370, baseType: !375, size: 64, offset: 5696)
!6742 = !DILocalVariable(name: "mem", scope: !6743, file: !2, line: 829, type: !375)
!6743 = distinct !DILexicalBlock(scope: !6744, file: !2, line: 828, column: 35)
!6744 = distinct !DILexicalBlock(scope: !6680, file: !2, line: 828, column: 6)
!6745 = !DILocalVariable(name: "ptr", scope: !6743, file: !2, line: 830, type: !444)
!6746 = !DILocalVariable(name: "n", scope: !6743, file: !2, line: 831, type: !13)
!6747 = !DILabel(scope: !6680, name: "out", file: !2, line: 867)
!6748 = !DILocation(line: 795, column: 53, scope: !6680)
!6749 = !DILocation(line: 795, column: 77, scope: !6680)
!6750 = !DILocation(line: 797, column: 2, scope: !6680)
!6751 = !DILocation(line: 797, column: 17, scope: !6680)
!6752 = !DILocation(line: 799, column: 2, scope: !6680)
!6753 = !DILocation(line: 801, column: 7, scope: !6754)
!6754 = distinct !DILexicalBlock(scope: !6680, file: !2, line: 801, column: 6)
!6755 = !DILocation(line: 801, column: 6, scope: !6680)
!6756 = !DILocation(line: 802, column: 3, scope: !6757)
!6757 = distinct !DILexicalBlock(scope: !6758, file: !2, line: 802, column: 3)
!6758 = distinct !DILexicalBlock(scope: !6754, file: !2, line: 801, column: 24)
!6759 = !DILocation(line: 802, column: 3, scope: !6760)
!6760 = distinct !DILexicalBlock(scope: !6757, file: !2, line: 802, column: 3)
!6761 = !DILocation(line: 803, column: 3, scope: !6758)
!6762 = !DILocation(line: 804, column: 3, scope: !6758)
!6763 = !DILocation(line: 808, column: 7, scope: !6764)
!6764 = distinct !DILexicalBlock(scope: !6680, file: !2, line: 808, column: 6)
!6765 = !DILocation(line: 808, column: 6, scope: !6680)
!6766 = !DILocation(line: 809, column: 3, scope: !6764)
!6767 = !DILocation(line: 811, column: 10, scope: !6680)
!6768 = !DILocation(line: 811, column: 8, scope: !6680)
!6769 = !DILocation(line: 814, column: 8, scope: !6770)
!6770 = distinct !DILexicalBlock(scope: !6680, file: !2, line: 814, column: 6)
!6771 = !DILocation(line: 814, column: 15, scope: !6770)
!6772 = !DILocation(line: 814, column: 25, scope: !6770)
!6773 = !DILocation(line: 814, column: 28, scope: !6770)
!6774 = !DILocation(line: 814, column: 35, scope: !6770)
!6775 = !DILocation(line: 814, column: 6, scope: !6680)
!6776 = !DILocation(line: 815, column: 3, scope: !6770)
!6777 = !DILocation(line: 817, column: 6, scope: !6778)
!6778 = distinct !DILexicalBlock(scope: !6680, file: !2, line: 817, column: 6)
!6779 = !DILocation(line: 817, column: 16, scope: !6778)
!6780 = !DILocation(line: 817, column: 42, scope: !6778)
!6781 = !DILocation(line: 818, column: 3, scope: !6778)
!6782 = !DILocation(line: 818, column: 13, scope: !6778)
!6783 = !DILocation(line: 817, column: 6, scope: !6680)
!6784 = !DILocation(line: 819, column: 3, scope: !6785)
!6785 = distinct !DILexicalBlock(scope: !6786, file: !2, line: 819, column: 3)
!6786 = distinct !DILexicalBlock(scope: !6778, file: !2, line: 819, column: 3)
!6787 = !DILocation(line: 819, column: 3, scope: !6786)
!6788 = !DILocation(line: 819, column: 3, scope: !6778)
!6789 = !DILocation(line: 821, column: 3, scope: !6790)
!6790 = distinct !DILexicalBlock(scope: !6791, file: !2, line: 821, column: 3)
!6791 = distinct !DILexicalBlock(scope: !6778, file: !2, line: 821, column: 3)
!6792 = !DILocation(line: 821, column: 3, scope: !6791)
!6793 = !DILocation(line: 828, column: 6, scope: !6744)
!6794 = !DILocation(line: 828, column: 13, scope: !6744)
!6795 = !DILocation(line: 828, column: 30, scope: !6744)
!6796 = !DILocation(line: 828, column: 6, scope: !6680)
!6797 = !DILocation(line: 829, column: 3, scope: !6743)
!6798 = !DILocation(line: 829, column: 17, scope: !6743)
!6799 = !DILocation(line: 830, column: 3, scope: !6743)
!6800 = !DILocation(line: 830, column: 18, scope: !6743)
!6801 = !DILocation(line: 831, column: 3, scope: !6743)
!6802 = !DILocation(line: 831, column: 16, scope: !6743)
!6803 = !DILocation(line: 833, column: 10, scope: !6804)
!6804 = distinct !DILexicalBlock(scope: !6743, file: !2, line: 833, column: 3)
!6805 = !DILocation(line: 833, column: 8, scope: !6804)
!6806 = !DILocation(line: 833, column: 15, scope: !6807)
!6807 = distinct !DILexicalBlock(scope: !6804, file: !2, line: 833, column: 3)
!6808 = !DILocation(line: 833, column: 19, scope: !6807)
!6809 = !DILocation(line: 833, column: 26, scope: !6807)
!6810 = !DILocation(line: 833, column: 17, scope: !6807)
!6811 = !DILocation(line: 833, column: 3, scope: !6804)
!6812 = !DILocation(line: 834, column: 10, scope: !6813)
!6813 = distinct !DILexicalBlock(scope: !6807, file: !2, line: 833, column: 44)
!6814 = !DILocation(line: 834, column: 17, scope: !6813)
!6815 = !DILocation(line: 834, column: 25, scope: !6813)
!6816 = !DILocation(line: 834, column: 28, scope: !6813)
!6817 = !DILocation(line: 834, column: 8, scope: !6813)
!6818 = !DILocation(line: 835, column: 26, scope: !6813)
!6819 = !DILocation(line: 835, column: 10, scope: !6813)
!6820 = !DILocation(line: 835, column: 8, scope: !6813)
!6821 = !DILocation(line: 836, column: 8, scope: !6822)
!6822 = distinct !DILexicalBlock(scope: !6813, file: !2, line: 836, column: 8)
!6823 = !DILocation(line: 836, column: 8, scope: !6813)
!6824 = !DILocation(line: 838, column: 16, scope: !6825)
!6825 = distinct !DILexicalBlock(scope: !6826, file: !2, line: 838, column: 9)
!6826 = distinct !DILexicalBlock(scope: !6822, file: !2, line: 836, column: 13)
!6827 = !DILocation(line: 838, column: 9, scope: !6825)
!6828 = !DILocation(line: 838, column: 38, scope: !6825)
!6829 = !DILocation(line: 838, column: 9, scope: !6826)
!6830 = !DILocation(line: 839, column: 37, scope: !6825)
!6831 = !DILocation(line: 839, column: 6, scope: !6825)
!6832 = !DILocation(line: 839, column: 13, scope: !6825)
!6833 = !DILocation(line: 839, column: 30, scope: !6825)
!6834 = !DILocation(line: 840, column: 5, scope: !6826)
!6835 = !DILocation(line: 840, column: 5, scope: !6836)
!6836 = distinct !DILexicalBlock(scope: !6826, file: !2, line: 840, column: 5)
!6837 = !DILocation(line: 840, column: 5, scope: !6838)
!6838 = distinct !DILexicalBlock(scope: !6836, file: !2, line: 840, column: 5)
!6839 = !DILocation(line: 841, column: 4, scope: !6826)
!6840 = !DILocation(line: 842, column: 3, scope: !6813)
!6841 = !DILocation(line: 833, column: 40, scope: !6807)
!6842 = !DILocation(line: 833, column: 3, scope: !6807)
!6843 = distinct !{!6843, !6811, !6844, !5119, !5120}
!6844 = !DILocation(line: 842, column: 3, scope: !6804)
!6845 = !DILocation(line: 843, column: 2, scope: !6744)
!6846 = !DILocation(line: 843, column: 2, scope: !6743)
!6847 = !DILocation(line: 845, column: 6, scope: !6848)
!6848 = distinct !DILexicalBlock(scope: !6680, file: !2, line: 845, column: 6)
!6849 = !DILocation(line: 845, column: 13, scope: !6848)
!6850 = !DILocation(line: 845, column: 30, scope: !6848)
!6851 = !DILocation(line: 845, column: 6, scope: !6680)
!6852 = !DILocation(line: 846, column: 3, scope: !6853)
!6853 = distinct !DILexicalBlock(scope: !6854, file: !2, line: 846, column: 3)
!6854 = distinct !DILexicalBlock(scope: !6848, file: !2, line: 845, column: 35)
!6855 = !DILocation(line: 846, column: 3, scope: !6856)
!6856 = distinct !DILexicalBlock(scope: !6853, file: !2, line: 846, column: 3)
!6857 = !DILocation(line: 847, column: 3, scope: !6854)
!6858 = !DILocation(line: 851, column: 2, scope: !6680)
!6859 = !DILocation(line: 854, column: 21, scope: !6680)
!6860 = !DILocation(line: 854, column: 2, scope: !6680)
!6861 = !DILocation(line: 854, column: 9, scope: !6680)
!6862 = !DILocation(line: 854, column: 19, scope: !6680)
!6863 = !DILocation(line: 857, column: 34, scope: !6680)
!6864 = !DILocation(line: 857, column: 2, scope: !6680)
!6865 = !DILocation(line: 860, column: 2, scope: !6680)
!6866 = !DILocation(line: 860, column: 9, scope: !6680)
!6867 = !DILocation(line: 860, column: 19, scope: !6680)
!6868 = !DILocation(line: 861, column: 2, scope: !6680)
!6869 = !DILocation(line: 861, column: 9, scope: !6680)
!6870 = !DILocation(line: 861, column: 28, scope: !6680)
!6871 = !DILocation(line: 864, column: 2, scope: !6680)
!6872 = !DILocation(line: 867, column: 1, scope: !6680)
!6873 = !DILocation(line: 869, column: 2, scope: !6680)
!6874 = !DILocation(line: 870, column: 2, scope: !6680)
!6875 = !DILocation(line: 871, column: 1, scope: !6680)
!6876 = distinct !DISubprogram(name: "kmap_local_page", scope: !6877, file: !6877, line: 183, type: !6878, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6880)
!6877 = !DIFile(filename: "./include/linux/highmem-internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ae7838583c7018843a11d0e374eeb3")
!6878 = !DISubroutineType(types: !6879)
!6879 = !{!432, !453}
!6880 = !{!6881}
!6881 = !DILocalVariable(name: "page", arg: 1, scope: !6876, file: !6877, line: 183, type: !453)
!6882 = !DILocation(line: 183, column: 50, scope: !6876)
!6883 = !DILocation(line: 185, column: 9, scope: !6876)
!6884 = !DILocation(line: 185, column: 2, scope: !6876)
!6885 = !DISubprogram(name: "memcmp", scope: !5620, file: !5620, line: 196, type: !6886, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6886 = !DISubroutineType(types: !6887)
!6887 = !{!93, !1389, !1389, !441}
!6888 = distinct !DISubprogram(name: "__kunmap_local", scope: !6877, file: !6877, line: 203, type: !6889, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6891)
!6889 = !DISubroutineType(types: !6890)
!6890 = !{null, !1389}
!6891 = !{!6892}
!6892 = !DILocalVariable(name: "addr", arg: 1, scope: !6888, file: !6877, line: 203, type: !1389)
!6893 = !DILocation(line: 203, column: 47, scope: !6888)
!6894 = !DILocation(line: 208, column: 1, scope: !6888)
!6895 = !DISubprogram(name: "arch_kexec_unprotect_crashkres", scope: !6723, file: !6723, line: 202, type: !2024, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6896 = !DISubprogram(name: "arch_crash_handle_hotplug_event", scope: !6723, file: !6723, line: 221, type: !6897, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6897 = !DISubroutineType(types: !6898)
!6898 = !{null, !6687}
!6899 = !DISubprogram(name: "arch_kexec_protect_crashkres", scope: !6723, file: !6723, line: 199, type: !2024, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6900 = distinct !DISubprogram(name: "lowmem_page_address", scope: !2839, file: !2839, line: 2176, type: !6901, scopeLine: 2177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6905)
!6901 = !DISubroutineType(types: !6902)
!6902 = !{!432, !6903}
!6903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6904, size: 64)
!6904 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !454)
!6905 = !{!6906}
!6906 = !DILocalVariable(name: "page", arg: 1, scope: !6900, file: !2839, line: 2176, type: !6903)
!6907 = !DILocation(line: 2176, column: 69, scope: !6900)
!6908 = !DILocation(line: 2178, column: 9, scope: !6900)
!6909 = !DILocation(line: 2178, column: 2, scope: !6900)
