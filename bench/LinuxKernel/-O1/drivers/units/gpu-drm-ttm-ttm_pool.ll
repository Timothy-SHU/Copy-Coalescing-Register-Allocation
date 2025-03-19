; ModuleID = 'drivers/gpu/drm/ttm/ttm_pool.c'
source_filename = "drivers/gpu/drm/ttm/ttm_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ttm_pool_alloc: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ttm_pool_alloc ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ttm_pool_free: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ttm_pool_free ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ttm_pool_init: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ttm_pool_init ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ttm_pool_fini: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ttm_pool_fini ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ttm_pool_debugfs: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ttm_pool_debugfs ; .previous"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.13 }
%union.anon.13 = type { ptr }
%struct.atomic64_t = type { i64 }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.shrinker = type { ptr, ptr, i64, i32, i32, %struct.list_head, ptr }
%struct.nodemask_t = type { [1 x i64] }
%struct.shrink_control = type { i32, i32, i64, i64, ptr }
%struct.ttm_tt = type { ptr, i32, i32, ptr, ptr, ptr, i32 }
%struct.ttm_pool = type { ptr, i32, i8, i8, [3 x %struct.anon.14] }
%struct.anon.14 = type { [11 x %struct.ttm_pool_type] }
%struct.ttm_operation_ctx = type { i8, i8, i8, i8, i8, ptr, i64 }
%struct.page = type { i64, %union.anon.15, %union.anon.24, %struct.atomic_t, [8 x i8] }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { %union.anon.17, ptr, %union.anon.19, i64 }
%union.anon.17 = type { %struct.list_head }
%union.anon.19 = type { i64 }
%union.anon.24 = type { %struct.atomic_t }
%struct.ttm_pool_dma = type { i64, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.25, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.26, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.27, ptr, %struct.address_space, %struct.list_head, %union.anon.28, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.25 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.26 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.27 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.28 = type { ptr }

@__UNIQUE_ID_page_pool_size329 = internal constant [62 x i8] c"ttm.parm=page_pool_size:Number of pages in the WC/UC/DMA pool\00", section ".modinfo", align 1, !dbg !0
@__param_str_page_pool_size = internal constant [19 x i8] c"ttm.page_pool_size\00", align 16, !dbg !4733
@param_ops_ulong = external dso_local constant %struct.kernel_param_ops, align 8
@page_pool_size = internal global i64 0, align 8, !dbg !4715
@__param_page_pool_size = internal constant %struct.kernel_param { ptr @__param_str_page_pool_size, ptr null, ptr @param_ops_ulong, i16 420, i8 -1, i8 0, %union.anon.13 { ptr @page_pool_size } }, section "__param", align 8, !dbg !4664
@__UNIQUE_ID_page_pool_sizetype330 = internal constant [34 x i8] c"ttm.parmtype=page_pool_size:ulong\00", section ".modinfo", align 1, !dbg !4666
@.str = private unnamed_addr constant [31 x i8] c"drivers/gpu/drm/ttm/ttm_pool.c\00", align 1, !dbg !4671
@__UNIQUE_ID___addressable_ttm_pool_alloc336 = internal global ptr @ttm_pool_alloc, section ".discard.addressable", align 8, !dbg !4676
@allocated_pages = internal global %struct.atomic64_t zeroinitializer, align 8, !dbg !4717
@__UNIQUE_ID___addressable_ttm_pool_free337 = internal global ptr @ttm_pool_free, section ".discard.addressable", align 8, !dbg !4678
@__UNIQUE_ID___addressable_ttm_pool_init338 = internal global ptr @ttm_pool_init, section ".discard.addressable", align 8, !dbg !4680
@__UNIQUE_ID___addressable_ttm_pool_fini339 = internal global ptr @ttm_pool_fini, section ".discard.addressable", align 8, !dbg !4682
@.str.1 = private unnamed_addr constant [8 x i8] c"unused\0A\00", align 1, !dbg !4684
@shrinker_lock = internal global %struct.spinlock zeroinitializer, align 4, !dbg !4727
@.str.2 = private unnamed_addr constant [5 x i8] c"DMA \00", align 1, !dbg !4686
@.str.3 = private unnamed_addr constant [3 x i8] c"\09:\00", align 1, !dbg !4691
@.str.4 = private unnamed_addr constant [5 x i8] c"wc\09:\00", align 1, !dbg !4694
@.str.5 = private unnamed_addr constant [5 x i8] c"uc\09:\00", align 1, !dbg !4696
@__UNIQUE_ID___addressable_ttm_pool_debugfs340 = internal global ptr @ttm_pool_debugfs, section ".discard.addressable", align 8, !dbg !4698
@shrinker_list = internal global %struct.list_head zeroinitializer, align 8, !dbg !4729
@global_write_combined = internal global [11 x %struct.ttm_pool_type] zeroinitializer, align 16, !dbg !4719
@global_uncached = internal global [11 x %struct.ttm_pool_type] zeroinitializer, align 16, !dbg !4721
@global_dma32_write_combined = internal global [11 x %struct.ttm_pool_type] zeroinitializer, align 16, !dbg !4723
@global_dma32_uncached = internal global [11 x %struct.ttm_pool_type] zeroinitializer, align 16, !dbg !4725
@.str.6 = private unnamed_addr constant [10 x i8] c"page_pool\00", align 1, !dbg !4700
@ttm_debugfs_root = external dso_local global ptr, align 8
@ttm_pool_debugfs_globals_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i64 0, ptr @ttm_pool_debugfs_globals_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !4764
@.str.7 = private unnamed_addr constant [17 x i8] c"page_pool_shrink\00", align 1, !dbg !4705
@ttm_pool_debugfs_shrink_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i64 0, ptr @ttm_pool_debugfs_shrink_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !4770
@mm_shrinker = internal global %struct.shrinker zeroinitializer, align 8, !dbg !4731
@.str.8 = private unnamed_addr constant [13 x i8] c"drm-ttm_pool\00", align 1, !dbg !4710
@vmemmap_base = external dso_local global i64, align 8
@numa_node = external dso_local global i32, section ".data..percpu", align 4
@.str.9 = private unnamed_addr constant [40 x i8] c"\014%pGg allocation from offline node %d\0A\00", align 1, !dbg !4738
@node_states = external dso_local global [6 x %struct.nodemask_t], align 16
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.10 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4744
@phys_base = external dso_local global i64, align 8
@page_offset_base = external dso_local global i64, align 8
@.str.11 = private unnamed_addr constant [3 x i8] c"\09 \00", align 1, !dbg !4749
@.str.12 = private unnamed_addr constant [11 x i8] c" ---%2u---\00", align 1, !dbg !4751
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !4754
@.str.14 = private unnamed_addr constant [5 x i8] c" %8u\00", align 1, !dbg !4757
@.str.15 = private unnamed_addr constant [23 x i8] c"\0Atotal\09: %8lu of %8lu\0A\00", align 1, !dbg !4759
@.str.16 = private unnamed_addr constant [8 x i8] c"wc 32\09:\00", align 1, !dbg !4766
@.str.17 = private unnamed_addr constant [8 x i8] c"uc 32\09:\00", align 1, !dbg !4768
@__const.ttm_pool_debugfs_shrink_show.sc = private unnamed_addr constant %struct.shrink_control { i32 3136, i32 0, i64 0, i64 0, ptr null }, align 8
@.str.18 = private unnamed_addr constant [9 x i8] c"%lu/%lu\0A\00", align 1, !dbg !4772
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_page_pool_size329, ptr @__param_page_pool_size, ptr @__UNIQUE_ID_page_pool_sizetype330, ptr @__UNIQUE_ID___addressable_ttm_pool_alloc336, ptr @__UNIQUE_ID___addressable_ttm_pool_free337, ptr @__UNIQUE_ID___addressable_ttm_pool_init338, ptr @__UNIQUE_ID___addressable_ttm_pool_fini339, ptr @__UNIQUE_ID___addressable_ttm_pool_debugfs340], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ttm_pool_alloc(ptr noundef %pool, ptr noundef %tt, ptr noundef %ctx) #0 align 16 !dbg !4790 {
entry:
  %retval = alloca i32, align 4
  %pool.addr = alloca ptr, align 8
  %tt.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %num_pages = alloca i64, align 8
  %dma_addr = alloca ptr, align 8
  %caching = alloca ptr, align 8
  %pages2 = alloca ptr, align 8
  %page_caching = alloca i32, align 4
  %gfp_flags = alloca i32, align 4
  %caching_divide = alloca i64, align 8
  %order = alloca i32, align 4
  %p = alloca ptr, align 8
  %r = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_warn_on29 = alloca i32, align 4
  %__flags48 = alloca i32, align 4
  %tmp61 = alloca i64, align 8
  %__UNIQUE_ID___x332 = alloca i32, align 4
  %__UNIQUE_ID___y333 = alloca i32, align 4
  %tmp84 = alloca i32, align 4
  %pt = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID___x334 = alloca i32, align 4
  %__UNIQUE_ID___y335 = alloca i32, align 4
  %tmp151 = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !4855, metadata !DIExpression()), !dbg !4890
  store ptr %tt, ptr %tt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tt.addr, metadata !4856, metadata !DIExpression()), !dbg !4891
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !4857, metadata !DIExpression()), !dbg !4892
  call void @llvm.lifetime.start.p0(i64 8, ptr %num_pages) #17, !dbg !4893
  call void @llvm.dbg.declare(metadata ptr %num_pages, metadata !4858, metadata !DIExpression()), !dbg !4894
  %0 = load ptr, ptr %tt.addr, align 8, !dbg !4895
  %num_pages1 = getelementptr inbounds %struct.ttm_tt, ptr %0, i32 0, i32 2, !dbg !4896
  %1 = load i32, ptr %num_pages1, align 4, !dbg !4896
  %conv = zext i32 %1 to i64, !dbg !4895
  store i64 %conv, ptr %num_pages, align 8, !dbg !4894
  call void @llvm.lifetime.start.p0(i64 8, ptr %dma_addr) #17, !dbg !4897
  call void @llvm.dbg.declare(metadata ptr %dma_addr, metadata !4859, metadata !DIExpression()), !dbg !4898
  %2 = load ptr, ptr %tt.addr, align 8, !dbg !4899
  %dma_address = getelementptr inbounds %struct.ttm_tt, ptr %2, i32 0, i32 4, !dbg !4900
  %3 = load ptr, ptr %dma_address, align 8, !dbg !4900
  store ptr %3, ptr %dma_addr, align 8, !dbg !4898
  call void @llvm.lifetime.start.p0(i64 8, ptr %caching) #17, !dbg !4901
  call void @llvm.dbg.declare(metadata ptr %caching, metadata !4860, metadata !DIExpression()), !dbg !4902
  %4 = load ptr, ptr %tt.addr, align 8, !dbg !4903
  %pages = getelementptr inbounds %struct.ttm_tt, ptr %4, i32 0, i32 0, !dbg !4904
  %5 = load ptr, ptr %pages, align 8, !dbg !4904
  store ptr %5, ptr %caching, align 8, !dbg !4902
  call void @llvm.lifetime.start.p0(i64 8, ptr %pages2) #17, !dbg !4905
  call void @llvm.dbg.declare(metadata ptr %pages2, metadata !4861, metadata !DIExpression()), !dbg !4906
  %6 = load ptr, ptr %tt.addr, align 8, !dbg !4907
  %pages3 = getelementptr inbounds %struct.ttm_tt, ptr %6, i32 0, i32 0, !dbg !4908
  %7 = load ptr, ptr %pages3, align 8, !dbg !4908
  store ptr %7, ptr %pages2, align 8, !dbg !4906
  call void @llvm.lifetime.start.p0(i64 4, ptr %page_caching) #17, !dbg !4909
  call void @llvm.dbg.declare(metadata ptr %page_caching, metadata !4862, metadata !DIExpression()), !dbg !4910
  call void @llvm.lifetime.start.p0(i64 4, ptr %gfp_flags) #17, !dbg !4911
  call void @llvm.dbg.declare(metadata ptr %gfp_flags, metadata !4863, metadata !DIExpression()), !dbg !4912
  store i32 1051840, ptr %gfp_flags, align 4, !dbg !4912
  call void @llvm.lifetime.start.p0(i64 8, ptr %caching_divide) #17, !dbg !4913
  call void @llvm.dbg.declare(metadata ptr %caching_divide, metadata !4864, metadata !DIExpression()), !dbg !4914
  call void @llvm.lifetime.start.p0(i64 4, ptr %order) #17, !dbg !4915
  call void @llvm.dbg.declare(metadata ptr %order, metadata !4865, metadata !DIExpression()), !dbg !4916
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #17, !dbg !4917
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4866, metadata !DIExpression()), !dbg !4918
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #17, !dbg !4919
  call void @llvm.dbg.declare(metadata ptr %r, metadata !4867, metadata !DIExpression()), !dbg !4920
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !4921
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4868, metadata !DIExpression()), !dbg !4921
  %8 = load i64, ptr %num_pages, align 8, !dbg !4921
  %tobool = icmp ne i64 %8, 0, !dbg !4921
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !4921

lor.rhs:                                          ; preds = %entry
  %9 = load ptr, ptr %tt.addr, align 8, !dbg !4921
  %call = call zeroext i1 @ttm_tt_is_populated(ptr noundef %9) #18, !dbg !4921
  br label %lor.end, !dbg !4921

lor.end:                                          ; preds = %lor.rhs, %entry
  %10 = phi i1 [ true, %entry ], [ %call, %lor.rhs ]
  %lnot = xor i1 %10, true, !dbg !4921
  %lnot5 = xor i1 %lnot, true, !dbg !4921
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !4921
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !4921
  %11 = load i32, ptr %__ret_warn_on, align 4, !dbg !4922
  %tobool6 = icmp ne i32 %11, 0, !dbg !4922
  %lnot7 = xor i1 %tobool6, true, !dbg !4922
  %lnot9 = xor i1 %lnot7, true, !dbg !4922
  %lnot.ext10 = zext i1 %lnot9 to i32, !dbg !4922
  %conv11 = sext i32 %lnot.ext10 to i64, !dbg !4922
  %expval = call i64 @llvm.expect.i64(i64 %conv11, i64 0), !dbg !4922
  %tobool12 = icmp ne i64 %expval, 0, !dbg !4922
  br i1 %tobool12, label %if.then, label %if.end, !dbg !4921

if.then:                                          ; preds = %lor.end
  br label %do.body, !dbg !4922

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #17, !dbg !4923
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4870, metadata !DIExpression()), !dbg !4923
  store i32 2305, ptr %__flags, align 4, !dbg !4923
  br label %do.body13, !dbg !4923

do.body13:                                        ; preds = %do.body
  br label %do.cond, !dbg !4924

do.cond:                                          ; preds = %do.body13
  br label %do.end, !dbg !4924

do.end:                                           ; preds = %do.cond
  br label %do.body14, !dbg !4923

do.body14:                                        ; preds = %do.end
  %12 = load i32, ptr %__flags, align 4, !dbg !4926
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 439, i32 %12, i64 12) #17, !dbg !4926, !srcloc !4928
  br label %do.cond15, !dbg !4926

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !4926

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !4923

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !4929

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !4929

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #17, !dbg !4922
  br label %do.cond20, !dbg !4923

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !4923

do.end21:                                         ; preds = %do.cond20
  br label %if.end, !dbg !4923

if.end:                                           ; preds = %do.end21, %lor.end
  %13 = load i32, ptr %__ret_warn_on, align 4, !dbg !4921
  %tobool22 = icmp ne i32 %13, 0, !dbg !4921
  %lnot23 = xor i1 %tobool22, true, !dbg !4921
  %lnot25 = xor i1 %lnot23, true, !dbg !4921
  %lnot.ext26 = zext i1 %lnot25 to i32, !dbg !4921
  %conv27 = sext i32 %lnot.ext26 to i64, !dbg !4921
  %expval28 = call i64 @llvm.expect.i64(i64 %conv27, i64 0), !dbg !4921
  store i64 %expval28, ptr %tmp, align 8, !dbg !4922
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !4931
  %14 = load i64, ptr %tmp, align 8, !dbg !4921
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on29) #17, !dbg !4932
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on29, metadata !4873, metadata !DIExpression()), !dbg !4932
  %15 = load ptr, ptr %dma_addr, align 8, !dbg !4932
  %tobool30 = icmp ne ptr %15, null, !dbg !4932
  br i1 %tobool30, label %land.rhs, label %land.end, !dbg !4932

land.rhs:                                         ; preds = %if.end
  %16 = load ptr, ptr %pool.addr, align 8, !dbg !4932
  %dev = getelementptr inbounds %struct.ttm_pool, ptr %16, i32 0, i32 0, !dbg !4932
  %17 = load ptr, ptr %dev, align 8, !dbg !4932
  %tobool31 = icmp ne ptr %17, null, !dbg !4932
  %lnot32 = xor i1 %tobool31, true, !dbg !4932
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %18 = phi i1 [ false, %if.end ], [ %lnot32, %land.rhs ], !dbg !4933
  %lnot34 = xor i1 %18, true, !dbg !4932
  %lnot36 = xor i1 %lnot34, true, !dbg !4932
  %lnot.ext37 = zext i1 %lnot36 to i32, !dbg !4932
  store i32 %lnot.ext37, ptr %__ret_warn_on29, align 4, !dbg !4932
  %19 = load i32, ptr %__ret_warn_on29, align 4, !dbg !4934
  %tobool38 = icmp ne i32 %19, 0, !dbg !4934
  %lnot39 = xor i1 %tobool38, true, !dbg !4934
  %lnot41 = xor i1 %lnot39, true, !dbg !4934
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !4934
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !4934
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !4934
  %tobool45 = icmp ne i64 %expval44, 0, !dbg !4934
  br i1 %tobool45, label %if.then46, label %if.end60, !dbg !4932

if.then46:                                        ; preds = %land.end
  br label %do.body47, !dbg !4934

do.body47:                                        ; preds = %if.then46
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags48) #17, !dbg !4935
  call void @llvm.dbg.declare(metadata ptr %__flags48, metadata !4875, metadata !DIExpression()), !dbg !4935
  store i32 2305, ptr %__flags48, align 4, !dbg !4935
  br label %do.body49, !dbg !4935

do.body49:                                        ; preds = %do.body47
  br label %do.cond50, !dbg !4936

do.cond50:                                        ; preds = %do.body49
  br label %do.end51, !dbg !4936

do.end51:                                         ; preds = %do.cond50
  br label %do.body52, !dbg !4935

do.body52:                                        ; preds = %do.end51
  %20 = load i32, ptr %__flags48, align 4, !dbg !4938
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 440, i32 %20, i64 12) #17, !dbg !4938, !srcloc !4940
  br label %do.cond53, !dbg !4938

do.cond53:                                        ; preds = %do.body52
  br label %do.end54, !dbg !4938

do.end54:                                         ; preds = %do.cond53
  br label %do.body55, !dbg !4935

do.body55:                                        ; preds = %do.end54
  br label %do.cond56, !dbg !4941

do.cond56:                                        ; preds = %do.body55
  br label %do.end57, !dbg !4941

do.end57:                                         ; preds = %do.cond56
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags48) #17, !dbg !4934
  br label %do.cond58, !dbg !4935

do.cond58:                                        ; preds = %do.end57
  br label %do.end59, !dbg !4935

do.end59:                                         ; preds = %do.cond58
  br label %if.end60, !dbg !4935

if.end60:                                         ; preds = %do.end59, %land.end
  %21 = load i32, ptr %__ret_warn_on29, align 4, !dbg !4932
  %tobool62 = icmp ne i32 %21, 0, !dbg !4932
  %lnot63 = xor i1 %tobool62, true, !dbg !4932
  %lnot65 = xor i1 %lnot63, true, !dbg !4932
  %lnot.ext66 = zext i1 %lnot65 to i32, !dbg !4932
  %conv67 = sext i32 %lnot.ext66 to i64, !dbg !4932
  %expval68 = call i64 @llvm.expect.i64(i64 %conv67, i64 0), !dbg !4932
  store i64 %expval68, ptr %tmp61, align 8, !dbg !4934
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on29) #17, !dbg !4943
  %22 = load i64, ptr %tmp61, align 8, !dbg !4932
  %23 = load ptr, ptr %tt.addr, align 8, !dbg !4944
  %page_flags = getelementptr inbounds %struct.ttm_tt, ptr %23, i32 0, i32 1, !dbg !4946
  %24 = load i32, ptr %page_flags, align 8, !dbg !4946
  %conv69 = zext i32 %24 to i64, !dbg !4944
  %and = and i64 %conv69, 2, !dbg !4947
  %tobool70 = icmp ne i64 %and, 0, !dbg !4947
  br i1 %tobool70, label %if.then71, label %if.end72, !dbg !4948

if.then71:                                        ; preds = %if.end60
  %25 = load i32, ptr %gfp_flags, align 4, !dbg !4949
  %or = or i32 %25, 256, !dbg !4949
  store i32 %or, ptr %gfp_flags, align 4, !dbg !4949
  br label %if.end72, !dbg !4950

if.end72:                                         ; preds = %if.then71, %if.end60
  %26 = load ptr, ptr %ctx.addr, align 8, !dbg !4951
  %gfp_retry_mayfail = getelementptr inbounds %struct.ttm_operation_ctx, ptr %26, i32 0, i32 2, !dbg !4953
  %27 = load i8, ptr %gfp_retry_mayfail, align 2, !dbg !4953, !range !4954, !noundef !571
  %tobool73 = trunc i8 %27 to i1, !dbg !4953
  br i1 %tobool73, label %if.then74, label %if.end76, !dbg !4955

if.then74:                                        ; preds = %if.end72
  %28 = load i32, ptr %gfp_flags, align 4, !dbg !4956
  %or75 = or i32 %28, 16384, !dbg !4956
  store i32 %or75, ptr %gfp_flags, align 4, !dbg !4956
  br label %if.end76, !dbg !4957

if.end76:                                         ; preds = %if.then74, %if.end72
  %29 = load ptr, ptr %pool.addr, align 8, !dbg !4958
  %use_dma32 = getelementptr inbounds %struct.ttm_pool, ptr %29, i32 0, i32 3, !dbg !4960
  %30 = load i8, ptr %use_dma32, align 1, !dbg !4960, !range !4954, !noundef !571
  %tobool77 = trunc i8 %30 to i1, !dbg !4960
  br i1 %tobool77, label %if.then78, label %if.else, !dbg !4961

if.then78:                                        ; preds = %if.end76
  %31 = load i32, ptr %gfp_flags, align 4, !dbg !4962
  %or79 = or i32 %31, 4, !dbg !4962
  store i32 %or79, ptr %gfp_flags, align 4, !dbg !4962
  br label %if.end81, !dbg !4963

if.else:                                          ; preds = %if.end76
  %32 = load i32, ptr %gfp_flags, align 4, !dbg !4964
  %or80 = or i32 %32, 1051842, !dbg !4964
  store i32 %or80, ptr %gfp_flags, align 4, !dbg !4964
  br label %if.end81

if.end81:                                         ; preds = %if.else, %if.then78
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x332) #17, !dbg !4965
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x332, metadata !4878, metadata !DIExpression()), !dbg !4965
  store i32 10, ptr %__UNIQUE_ID___x332, align 4, !dbg !4965
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y333) #17, !dbg !4965
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y333, metadata !4881, metadata !DIExpression()), !dbg !4965
  %33 = load i64, ptr %num_pages, align 8, !dbg !4965
  %call82 = call i64 @__fls(i64 noundef %33) #18, !dbg !4965
  %conv83 = trunc i64 %call82 to i32, !dbg !4965
  store i32 %conv83, ptr %__UNIQUE_ID___y333, align 4, !dbg !4965
  %34 = load i32, ptr %__UNIQUE_ID___x332, align 4, !dbg !4965
  %35 = load i32, ptr %__UNIQUE_ID___y333, align 4, !dbg !4965
  %cmp = icmp ult i32 %34, %35, !dbg !4965
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !4965

cond.true:                                        ; preds = %if.end81
  %36 = load i32, ptr %__UNIQUE_ID___x332, align 4, !dbg !4965
  br label %cond.end, !dbg !4965

cond.false:                                       ; preds = %if.end81
  %37 = load i32, ptr %__UNIQUE_ID___y333, align 4, !dbg !4965
  br label %cond.end, !dbg !4965

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %36, %cond.true ], [ %37, %cond.false ], !dbg !4965
  store i32 %cond, ptr %tmp84, align 4, !dbg !4965
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y333) #17, !dbg !4966
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x332) #17, !dbg !4966
  %38 = load i32, ptr %tmp84, align 4, !dbg !4965
  store i32 %38, ptr %order, align 4, !dbg !4967
  br label %for.cond, !dbg !4968

for.cond:                                         ; preds = %cond.end156, %cond.end
  %39 = load i64, ptr %num_pages, align 8, !dbg !4969
  %tobool86 = icmp ne i64 %39, 0, !dbg !4970
  br i1 %tobool86, label %for.body, label %for.end, !dbg !4970

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pt) #17, !dbg !4971
  call void @llvm.dbg.declare(metadata ptr %pt, metadata !4882, metadata !DIExpression()), !dbg !4972
  %40 = load ptr, ptr %tt.addr, align 8, !dbg !4973
  %caching87 = getelementptr inbounds %struct.ttm_tt, ptr %40, i32 0, i32 6, !dbg !4974
  %41 = load i32, ptr %caching87, align 8, !dbg !4974
  store i32 %41, ptr %page_caching, align 4, !dbg !4975
  %42 = load ptr, ptr %pool.addr, align 8, !dbg !4976
  %43 = load ptr, ptr %tt.addr, align 8, !dbg !4977
  %caching88 = getelementptr inbounds %struct.ttm_tt, ptr %43, i32 0, i32 6, !dbg !4978
  %44 = load i32, ptr %caching88, align 8, !dbg !4978
  %45 = load i32, ptr %order, align 4, !dbg !4979
  %call89 = call ptr @ttm_pool_select_type(ptr noundef %42, i32 noundef %44, i32 noundef %45) #18, !dbg !4980
  store ptr %call89, ptr %pt, align 8, !dbg !4981
  %46 = load ptr, ptr %pt, align 8, !dbg !4982
  %tobool90 = icmp ne ptr %46, null, !dbg !4982
  br i1 %tobool90, label %cond.true91, label %cond.false93, !dbg !4982

cond.true91:                                      ; preds = %for.body
  %47 = load ptr, ptr %pt, align 8, !dbg !4983
  %call92 = call ptr @ttm_pool_type_take(ptr noundef %47) #18, !dbg !4984
  br label %cond.end94, !dbg !4982

cond.false93:                                     ; preds = %for.body
  br label %cond.end94, !dbg !4982

cond.end94:                                       ; preds = %cond.false93, %cond.true91
  %cond95 = phi ptr [ %call92, %cond.true91 ], [ null, %cond.false93 ], !dbg !4982
  store ptr %cond95, ptr %p, align 8, !dbg !4985
  %48 = load ptr, ptr %p, align 8, !dbg !4986
  %tobool96 = icmp ne ptr %48, null, !dbg !4986
  br i1 %tobool96, label %if.then97, label %if.end117, !dbg !4988

if.then97:                                        ; preds = %cond.end94
  %49 = load ptr, ptr %caching, align 8, !dbg !4989
  %50 = load ptr, ptr %pages2, align 8, !dbg !4991
  %51 = load ptr, ptr %tt.addr, align 8, !dbg !4992
  %caching98 = getelementptr inbounds %struct.ttm_tt, ptr %51, i32 0, i32 6, !dbg !4993
  %52 = load i32, ptr %caching98, align 8, !dbg !4993
  %call99 = call i32 @ttm_pool_apply_caching(ptr noundef %49, ptr noundef %50, i32 noundef %52) #18, !dbg !4994
  store i32 %call99, ptr %r, align 4, !dbg !4995
  %53 = load i32, ptr %r, align 4, !dbg !4996
  %tobool100 = icmp ne i32 %53, 0, !dbg !4996
  br i1 %tobool100, label %if.then101, label %if.end102, !dbg !4998

if.then101:                                       ; preds = %if.then97
  store i32 21, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4999

if.end102:                                        ; preds = %if.then97
  %54 = load ptr, ptr %pages2, align 8, !dbg !5000
  store ptr %54, ptr %caching, align 8, !dbg !5001
  br label %do.body103, !dbg !5002

do.body103:                                       ; preds = %do.cond114, %if.end102
  %55 = load ptr, ptr %pool.addr, align 8, !dbg !5003
  %56 = load i32, ptr %order, align 4, !dbg !5005
  %57 = load ptr, ptr %p, align 8, !dbg !5006
  %call104 = call i32 @ttm_pool_page_allocated(ptr noundef %55, i32 noundef %56, ptr noundef %57, ptr noundef %dma_addr, ptr noundef %num_pages, ptr noundef %pages2) #18, !dbg !5007
  store i32 %call104, ptr %r, align 4, !dbg !5008
  %58 = load i32, ptr %r, align 4, !dbg !5009
  %tobool105 = icmp ne i32 %58, 0, !dbg !5009
  br i1 %tobool105, label %if.then106, label %if.end107, !dbg !5011

if.then106:                                       ; preds = %do.body103
  store i32 21, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5012

if.end107:                                        ; preds = %do.body103
  %59 = load ptr, ptr %pages2, align 8, !dbg !5013
  store ptr %59, ptr %caching, align 8, !dbg !5014
  %60 = load i64, ptr %num_pages, align 8, !dbg !5015
  %61 = load i32, ptr %order, align 4, !dbg !5017
  %shl = shl i32 1, %61, !dbg !5018
  %conv108 = sext i32 %shl to i64, !dbg !5019
  %cmp109 = icmp ult i64 %60, %conv108, !dbg !5020
  br i1 %cmp109, label %if.then111, label %if.end112, !dbg !5021

if.then111:                                       ; preds = %if.end107
  br label %do.end116, !dbg !5022

if.end112:                                        ; preds = %if.end107
  %62 = load ptr, ptr %pt, align 8, !dbg !5023
  %call113 = call ptr @ttm_pool_type_take(ptr noundef %62) #18, !dbg !5024
  store ptr %call113, ptr %p, align 8, !dbg !5025
  br label %do.cond114, !dbg !5026

do.cond114:                                       ; preds = %if.end112
  %63 = load ptr, ptr %p, align 8, !dbg !5027
  %tobool115 = icmp ne ptr %63, null, !dbg !5026
  br i1 %tobool115, label %do.body103, label %do.end116, !dbg !5026, !llvm.loop !5028

do.end116:                                        ; preds = %do.cond114, %if.then111
  br label %if.end117, !dbg !5032

if.end117:                                        ; preds = %do.end116, %cond.end94
  store i32 2, ptr %page_caching, align 4, !dbg !5033
  br label %while.cond, !dbg !5034

while.cond:                                       ; preds = %if.end142, %if.end117
  %64 = load i64, ptr %num_pages, align 8, !dbg !5035
  %65 = load i32, ptr %order, align 4, !dbg !5036
  %shl118 = shl i32 1, %65, !dbg !5037
  %conv119 = sext i32 %shl118 to i64, !dbg !5038
  %cmp120 = icmp uge i64 %64, %conv119, !dbg !5039
  br i1 %cmp120, label %land.rhs122, label %land.end125, !dbg !5040

land.rhs122:                                      ; preds = %while.cond
  %66 = load ptr, ptr %pool.addr, align 8, !dbg !5041
  %67 = load i32, ptr %gfp_flags, align 4, !dbg !5042
  %68 = load i32, ptr %order, align 4, !dbg !5043
  %call123 = call ptr @ttm_pool_alloc_page(ptr noundef %66, i32 noundef %67, i32 noundef %68) #18, !dbg !5044
  store ptr %call123, ptr %p, align 8, !dbg !5045
  %tobool124 = icmp ne ptr %call123, null, !dbg !5040
  br label %land.end125

land.end125:                                      ; preds = %land.rhs122, %while.cond
  %69 = phi i1 [ false, %while.cond ], [ %tobool124, %land.rhs122 ], !dbg !5046
  br i1 %69, label %while.body, label %while.end, !dbg !5034

while.body:                                       ; preds = %land.end125
  %70 = load ptr, ptr %p, align 8, !dbg !5047
  %call126 = call i32 @PageHighMem(ptr noundef %70) #18, !dbg !5050
  %tobool127 = icmp ne i32 %call126, 0, !dbg !5050
  br i1 %tobool127, label %if.then128, label %if.end134, !dbg !5051

if.then128:                                       ; preds = %while.body
  %71 = load ptr, ptr %caching, align 8, !dbg !5052
  %72 = load ptr, ptr %pages2, align 8, !dbg !5054
  %73 = load ptr, ptr %tt.addr, align 8, !dbg !5055
  %caching129 = getelementptr inbounds %struct.ttm_tt, ptr %73, i32 0, i32 6, !dbg !5056
  %74 = load i32, ptr %caching129, align 8, !dbg !5056
  %call130 = call i32 @ttm_pool_apply_caching(ptr noundef %71, ptr noundef %72, i32 noundef %74) #18, !dbg !5057
  store i32 %call130, ptr %r, align 4, !dbg !5058
  %75 = load i32, ptr %r, align 4, !dbg !5059
  %tobool131 = icmp ne i32 %75, 0, !dbg !5059
  br i1 %tobool131, label %if.then132, label %if.end133, !dbg !5061

if.then132:                                       ; preds = %if.then128
  store i32 21, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5062

if.end133:                                        ; preds = %if.then128
  %76 = load ptr, ptr %pages2, align 8, !dbg !5063
  store ptr %76, ptr %caching, align 8, !dbg !5064
  br label %if.end134, !dbg !5065

if.end134:                                        ; preds = %if.end133, %while.body
  %77 = load ptr, ptr %pool.addr, align 8, !dbg !5066
  %78 = load i32, ptr %order, align 4, !dbg !5067
  %79 = load ptr, ptr %p, align 8, !dbg !5068
  %call135 = call i32 @ttm_pool_page_allocated(ptr noundef %77, i32 noundef %78, ptr noundef %79, ptr noundef %dma_addr, ptr noundef %num_pages, ptr noundef %pages2) #18, !dbg !5069
  store i32 %call135, ptr %r, align 4, !dbg !5070
  %80 = load i32, ptr %r, align 4, !dbg !5071
  %tobool136 = icmp ne i32 %80, 0, !dbg !5071
  br i1 %tobool136, label %if.then137, label %if.end138, !dbg !5073

if.then137:                                       ; preds = %if.end134
  store i32 21, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5074

if.end138:                                        ; preds = %if.end134
  %81 = load ptr, ptr %p, align 8, !dbg !5075
  %call139 = call i32 @PageHighMem(ptr noundef %81) #18, !dbg !5077
  %tobool140 = icmp ne i32 %call139, 0, !dbg !5077
  br i1 %tobool140, label %if.then141, label %if.end142, !dbg !5078

if.then141:                                       ; preds = %if.end138
  %82 = load ptr, ptr %pages2, align 8, !dbg !5079
  store ptr %82, ptr %caching, align 8, !dbg !5080
  br label %if.end142, !dbg !5081

if.end142:                                        ; preds = %if.then141, %if.end138
  br label %while.cond, !dbg !5034, !llvm.loop !5082

while.end:                                        ; preds = %land.end125
  %83 = load ptr, ptr %p, align 8, !dbg !5084
  %tobool143 = icmp ne ptr %83, null, !dbg !5084
  br i1 %tobool143, label %if.end148, label %if.then144, !dbg !5086

if.then144:                                       ; preds = %while.end
  %84 = load i32, ptr %order, align 4, !dbg !5087
  %tobool145 = icmp ne i32 %84, 0, !dbg !5087
  br i1 %tobool145, label %if.then146, label %if.end147, !dbg !5090

if.then146:                                       ; preds = %if.then144
  %85 = load i32, ptr %order, align 4, !dbg !5091
  %dec = add i32 %85, -1, !dbg !5091
  store i32 %dec, ptr %order, align 4, !dbg !5091
  store i32 20, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5093

if.end147:                                        ; preds = %if.then144
  store i32 -12, ptr %r, align 4, !dbg !5094
  store i32 26, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5095

if.end148:                                        ; preds = %while.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5096
  br label %cleanup, !dbg !5096

cleanup:                                          ; preds = %if.end147, %if.then137, %if.then132, %if.then106, %if.then101, %if.end148, %if.then146
  call void @llvm.lifetime.end.p0(i64 8, ptr %pt) #17, !dbg !5096
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup167 [
    i32 0, label %cleanup.cont
    i32 20, label %for.inc
    i32 21, label %error_free_page
    i32 26, label %error_free_all
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !5097

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x334) #17, !dbg !5098
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x334, metadata !4885, metadata !DIExpression()), !dbg !5098
  %86 = load i32, ptr %order, align 4, !dbg !5098
  store i32 %86, ptr %__UNIQUE_ID___x334, align 4, !dbg !5098
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y335) #17, !dbg !5098
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y335, metadata !4887, metadata !DIExpression()), !dbg !5098
  %87 = load i64, ptr %num_pages, align 8, !dbg !5098
  %call149 = call i64 @__fls(i64 noundef %87) #18, !dbg !5098
  %conv150 = trunc i64 %call149 to i32, !dbg !5098
  store i32 %conv150, ptr %__UNIQUE_ID___y335, align 4, !dbg !5098
  %88 = load i32, ptr %__UNIQUE_ID___x334, align 4, !dbg !5098
  %89 = load i32, ptr %__UNIQUE_ID___y335, align 4, !dbg !5098
  %cmp152 = icmp ult i32 %88, %89, !dbg !5098
  br i1 %cmp152, label %cond.true154, label %cond.false155, !dbg !5098

cond.true154:                                     ; preds = %for.inc
  %90 = load i32, ptr %__UNIQUE_ID___x334, align 4, !dbg !5098
  br label %cond.end156, !dbg !5098

cond.false155:                                    ; preds = %for.inc
  %91 = load i32, ptr %__UNIQUE_ID___y335, align 4, !dbg !5098
  br label %cond.end156, !dbg !5098

cond.end156:                                      ; preds = %cond.false155, %cond.true154
  %cond157 = phi i32 [ %90, %cond.true154 ], [ %91, %cond.false155 ], !dbg !5098
  store i32 %cond157, ptr %tmp151, align 4, !dbg !5098
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y335) #17, !dbg !5099
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x334) #17, !dbg !5099
  %92 = load i32, ptr %tmp151, align 4, !dbg !5098
  store i32 %92, ptr %order, align 4, !dbg !5100
  br label %for.cond, !dbg !5101, !llvm.loop !5102

for.end:                                          ; preds = %for.cond
  %93 = load ptr, ptr %caching, align 8, !dbg !5104
  %94 = load ptr, ptr %pages2, align 8, !dbg !5105
  %95 = load ptr, ptr %tt.addr, align 8, !dbg !5106
  %caching158 = getelementptr inbounds %struct.ttm_tt, ptr %95, i32 0, i32 6, !dbg !5107
  %96 = load i32, ptr %caching158, align 8, !dbg !5107
  %call159 = call i32 @ttm_pool_apply_caching(ptr noundef %93, ptr noundef %94, i32 noundef %96) #18, !dbg !5108
  store i32 %call159, ptr %r, align 4, !dbg !5109
  %97 = load i32, ptr %r, align 4, !dbg !5110
  %tobool160 = icmp ne i32 %97, 0, !dbg !5110
  br i1 %tobool160, label %if.then161, label %if.end162, !dbg !5112

if.then161:                                       ; preds = %for.end
  br label %error_free_all, !dbg !5113

if.end162:                                        ; preds = %for.end
  store i32 0, ptr %retval, align 4, !dbg !5114
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup167, !dbg !5114

error_free_page:                                  ; preds = %cleanup
  call void @llvm.dbg.label(metadata !4888), !dbg !5115
  %98 = load ptr, ptr %pool.addr, align 8, !dbg !5116
  %99 = load i32, ptr %page_caching, align 4, !dbg !5117
  %100 = load i32, ptr %order, align 4, !dbg !5118
  %101 = load ptr, ptr %p, align 8, !dbg !5119
  call void @ttm_pool_free_page(ptr noundef %98, i32 noundef %99, i32 noundef %100, ptr noundef %101) #18, !dbg !5120
  br label %error_free_all, !dbg !5120

error_free_all:                                   ; preds = %error_free_page, %cleanup, %if.then161
  call void @llvm.dbg.label(metadata !4889), !dbg !5121
  %102 = load ptr, ptr %tt.addr, align 8, !dbg !5122
  %num_pages163 = getelementptr inbounds %struct.ttm_tt, ptr %102, i32 0, i32 2, !dbg !5123
  %103 = load i32, ptr %num_pages163, align 4, !dbg !5123
  %conv164 = zext i32 %103 to i64, !dbg !5122
  %104 = load i64, ptr %num_pages, align 8, !dbg !5124
  %sub = sub i64 %conv164, %104, !dbg !5125
  store i64 %sub, ptr %num_pages, align 8, !dbg !5126
  %105 = load ptr, ptr %caching, align 8, !dbg !5127
  %106 = load ptr, ptr %tt.addr, align 8, !dbg !5128
  %pages165 = getelementptr inbounds %struct.ttm_tt, ptr %106, i32 0, i32 0, !dbg !5129
  %107 = load ptr, ptr %pages165, align 8, !dbg !5129
  %sub.ptr.lhs.cast = ptrtoint ptr %105 to i64, !dbg !5130
  %sub.ptr.rhs.cast = ptrtoint ptr %107 to i64, !dbg !5130
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !5130
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8, !dbg !5130
  store i64 %sub.ptr.div, ptr %caching_divide, align 8, !dbg !5131
  %108 = load ptr, ptr %pool.addr, align 8, !dbg !5132
  %109 = load ptr, ptr %tt.addr, align 8, !dbg !5133
  %110 = load ptr, ptr %tt.addr, align 8, !dbg !5134
  %caching166 = getelementptr inbounds %struct.ttm_tt, ptr %110, i32 0, i32 6, !dbg !5135
  %111 = load i32, ptr %caching166, align 8, !dbg !5135
  %112 = load i64, ptr %caching_divide, align 8, !dbg !5136
  call void @ttm_pool_free_range(ptr noundef %108, ptr noundef %109, i32 noundef %111, i64 noundef 0, i64 noundef %112) #18, !dbg !5137
  %113 = load ptr, ptr %pool.addr, align 8, !dbg !5138
  %114 = load ptr, ptr %tt.addr, align 8, !dbg !5139
  %115 = load i64, ptr %caching_divide, align 8, !dbg !5140
  %116 = load i64, ptr %num_pages, align 8, !dbg !5141
  call void @ttm_pool_free_range(ptr noundef %113, ptr noundef %114, i32 noundef 2, i64 noundef %115, i64 noundef %116) #18, !dbg !5142
  %117 = load i32, ptr %r, align 4, !dbg !5143
  store i32 %117, ptr %retval, align 4, !dbg !5144
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup167, !dbg !5144

cleanup167:                                       ; preds = %error_free_all, %if.end162, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #17, !dbg !5145
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #17, !dbg !5145
  call void @llvm.lifetime.end.p0(i64 4, ptr %order) #17, !dbg !5145
  call void @llvm.lifetime.end.p0(i64 8, ptr %caching_divide) #17, !dbg !5145
  call void @llvm.lifetime.end.p0(i64 4, ptr %gfp_flags) #17, !dbg !5145
  call void @llvm.lifetime.end.p0(i64 4, ptr %page_caching) #17, !dbg !5145
  call void @llvm.lifetime.end.p0(i64 8, ptr %pages2) #17, !dbg !5145
  call void @llvm.lifetime.end.p0(i64 8, ptr %caching) #17, !dbg !5145
  call void @llvm.lifetime.end.p0(i64 8, ptr %dma_addr) #17, !dbg !5145
  call void @llvm.lifetime.end.p0(i64 8, ptr %num_pages) #17, !dbg !5145
  %118 = load i32, ptr %retval, align 4, !dbg !5145
  ret i32 %118, !dbg !5145
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @ttm_tt_is_populated(ptr noundef %tt) #3 align 16 !dbg !5146 {
entry:
  %tt.addr = alloca ptr, align 8
  store ptr %tt, ptr %tt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tt.addr, metadata !5150, metadata !DIExpression()), !dbg !5151
  %0 = load ptr, ptr %tt.addr, align 8, !dbg !5152
  %page_flags = getelementptr inbounds %struct.ttm_tt, ptr %0, i32 0, i32 1, !dbg !5153
  %1 = load i32, ptr %page_flags, align 8, !dbg !5153
  %conv = zext i32 %1 to i64, !dbg !5152
  %and = and i64 %conv, 32, !dbg !5154
  %tobool = icmp ne i64 %and, 0, !dbg !5152
  ret i1 %tobool, !dbg !5155
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__fls(i64 noundef %word) #5 align 16 !dbg !5156 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !5161, metadata !DIExpression()), !dbg !5162
  %0 = load i64, ptr %word.addr, align 8, !dbg !5163
  %1 = call i64 asm "bsr $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #19, !dbg !5164, !srcloc !5165
  store i64 %1, ptr %word.addr, align 8, !dbg !5164
  %2 = load i64, ptr %word.addr, align 8, !dbg !5166
  ret i64 %2, !dbg !5167
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ttm_pool_select_type(ptr noundef %pool, i32 noundef %caching, i32 noundef %order) #0 align 16 !dbg !5168 {
entry:
  %retval = alloca ptr, align 8
  %pool.addr = alloca ptr, align 8
  %caching.addr = alloca i32, align 4
  %order.addr = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !5172, metadata !DIExpression()), !dbg !5175
  store i32 %caching, ptr %caching.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %caching.addr, metadata !5173, metadata !DIExpression()), !dbg !5176
  store i32 %order, ptr %order.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %order.addr, metadata !5174, metadata !DIExpression()), !dbg !5177
  %0 = load ptr, ptr %pool.addr, align 8, !dbg !5178
  %use_dma_alloc = getelementptr inbounds %struct.ttm_pool, ptr %0, i32 0, i32 2, !dbg !5180
  %1 = load i8, ptr %use_dma_alloc, align 4, !dbg !5180, !range !4954, !noundef !571
  %tobool = trunc i8 %1 to i1, !dbg !5180
  br i1 %tobool, label %if.then, label %if.end, !dbg !5181

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pool.addr, align 8, !dbg !5182
  %caching1 = getelementptr inbounds %struct.ttm_pool, ptr %2, i32 0, i32 4, !dbg !5183
  %3 = load i32, ptr %caching.addr, align 4, !dbg !5184
  %idxprom = zext i32 %3 to i64, !dbg !5182
  %arrayidx = getelementptr [3 x %struct.anon.14], ptr %caching1, i64 0, i64 %idxprom, !dbg !5182
  %orders = getelementptr inbounds %struct.anon.14, ptr %arrayidx, i32 0, i32 0, !dbg !5185
  %4 = load i32, ptr %order.addr, align 4, !dbg !5186
  %idxprom2 = zext i32 %4 to i64, !dbg !5182
  %arrayidx3 = getelementptr [11 x %struct.ttm_pool_type], ptr %orders, i64 0, i64 %idxprom2, !dbg !5182
  store ptr %arrayidx3, ptr %retval, align 8, !dbg !5187
  br label %return, !dbg !5187

if.end:                                           ; preds = %entry
  %5 = load i32, ptr %caching.addr, align 4, !dbg !5188
  switch i32 %5, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb19
  ], !dbg !5189

sw.bb:                                            ; preds = %if.end
  %6 = load ptr, ptr %pool.addr, align 8, !dbg !5190
  %nid = getelementptr inbounds %struct.ttm_pool, ptr %6, i32 0, i32 1, !dbg !5193
  %7 = load i32, ptr %nid, align 8, !dbg !5193
  %cmp = icmp ne i32 %7, -1, !dbg !5194
  br i1 %cmp, label %if.then4, label %if.end11, !dbg !5195

if.then4:                                         ; preds = %sw.bb
  %8 = load ptr, ptr %pool.addr, align 8, !dbg !5196
  %caching5 = getelementptr inbounds %struct.ttm_pool, ptr %8, i32 0, i32 4, !dbg !5197
  %9 = load i32, ptr %caching.addr, align 4, !dbg !5198
  %idxprom6 = zext i32 %9 to i64, !dbg !5196
  %arrayidx7 = getelementptr [3 x %struct.anon.14], ptr %caching5, i64 0, i64 %idxprom6, !dbg !5196
  %orders8 = getelementptr inbounds %struct.anon.14, ptr %arrayidx7, i32 0, i32 0, !dbg !5199
  %10 = load i32, ptr %order.addr, align 4, !dbg !5200
  %idxprom9 = zext i32 %10 to i64, !dbg !5196
  %arrayidx10 = getelementptr [11 x %struct.ttm_pool_type], ptr %orders8, i64 0, i64 %idxprom9, !dbg !5196
  store ptr %arrayidx10, ptr %retval, align 8, !dbg !5201
  br label %return, !dbg !5201

if.end11:                                         ; preds = %sw.bb
  %11 = load ptr, ptr %pool.addr, align 8, !dbg !5202
  %use_dma32 = getelementptr inbounds %struct.ttm_pool, ptr %11, i32 0, i32 3, !dbg !5204
  %12 = load i8, ptr %use_dma32, align 1, !dbg !5204, !range !4954, !noundef !571
  %tobool12 = trunc i8 %12 to i1, !dbg !5204
  br i1 %tobool12, label %if.then13, label %if.end16, !dbg !5205

if.then13:                                        ; preds = %if.end11
  %13 = load i32, ptr %order.addr, align 4, !dbg !5206
  %idxprom14 = zext i32 %13 to i64, !dbg !5207
  %arrayidx15 = getelementptr [11 x %struct.ttm_pool_type], ptr @global_dma32_write_combined, i64 0, i64 %idxprom14, !dbg !5207
  store ptr %arrayidx15, ptr %retval, align 8, !dbg !5208
  br label %return, !dbg !5208

if.end16:                                         ; preds = %if.end11
  %14 = load i32, ptr %order.addr, align 4, !dbg !5209
  %idxprom17 = zext i32 %14 to i64, !dbg !5210
  %arrayidx18 = getelementptr [11 x %struct.ttm_pool_type], ptr @global_write_combined, i64 0, i64 %idxprom17, !dbg !5210
  store ptr %arrayidx18, ptr %retval, align 8, !dbg !5211
  br label %return, !dbg !5211

sw.bb19:                                          ; preds = %if.end
  %15 = load ptr, ptr %pool.addr, align 8, !dbg !5212
  %nid20 = getelementptr inbounds %struct.ttm_pool, ptr %15, i32 0, i32 1, !dbg !5214
  %16 = load i32, ptr %nid20, align 8, !dbg !5214
  %cmp21 = icmp ne i32 %16, -1, !dbg !5215
  br i1 %cmp21, label %if.then22, label %if.end29, !dbg !5216

if.then22:                                        ; preds = %sw.bb19
  %17 = load ptr, ptr %pool.addr, align 8, !dbg !5217
  %caching23 = getelementptr inbounds %struct.ttm_pool, ptr %17, i32 0, i32 4, !dbg !5218
  %18 = load i32, ptr %caching.addr, align 4, !dbg !5219
  %idxprom24 = zext i32 %18 to i64, !dbg !5217
  %arrayidx25 = getelementptr [3 x %struct.anon.14], ptr %caching23, i64 0, i64 %idxprom24, !dbg !5217
  %orders26 = getelementptr inbounds %struct.anon.14, ptr %arrayidx25, i32 0, i32 0, !dbg !5220
  %19 = load i32, ptr %order.addr, align 4, !dbg !5221
  %idxprom27 = zext i32 %19 to i64, !dbg !5217
  %arrayidx28 = getelementptr [11 x %struct.ttm_pool_type], ptr %orders26, i64 0, i64 %idxprom27, !dbg !5217
  store ptr %arrayidx28, ptr %retval, align 8, !dbg !5222
  br label %return, !dbg !5222

if.end29:                                         ; preds = %sw.bb19
  %20 = load ptr, ptr %pool.addr, align 8, !dbg !5223
  %use_dma3230 = getelementptr inbounds %struct.ttm_pool, ptr %20, i32 0, i32 3, !dbg !5225
  %21 = load i8, ptr %use_dma3230, align 1, !dbg !5225, !range !4954, !noundef !571
  %tobool31 = trunc i8 %21 to i1, !dbg !5225
  br i1 %tobool31, label %if.then32, label %if.end35, !dbg !5226

if.then32:                                        ; preds = %if.end29
  %22 = load i32, ptr %order.addr, align 4, !dbg !5227
  %idxprom33 = zext i32 %22 to i64, !dbg !5228
  %arrayidx34 = getelementptr [11 x %struct.ttm_pool_type], ptr @global_dma32_uncached, i64 0, i64 %idxprom33, !dbg !5228
  store ptr %arrayidx34, ptr %retval, align 8, !dbg !5229
  br label %return, !dbg !5229

if.end35:                                         ; preds = %if.end29
  %23 = load i32, ptr %order.addr, align 4, !dbg !5230
  %idxprom36 = zext i32 %23 to i64, !dbg !5231
  %arrayidx37 = getelementptr [11 x %struct.ttm_pool_type], ptr @global_uncached, i64 0, i64 %idxprom36, !dbg !5231
  store ptr %arrayidx37, ptr %retval, align 8, !dbg !5232
  br label %return, !dbg !5232

sw.default:                                       ; preds = %if.end
  br label %sw.epilog, !dbg !5233

sw.epilog:                                        ; preds = %sw.default
  store ptr null, ptr %retval, align 8, !dbg !5234
  br label %return, !dbg !5234

return:                                           ; preds = %sw.epilog, %if.end35, %if.then32, %if.then22, %if.end16, %if.then13, %if.then4, %if.then
  %24 = load ptr, ptr %retval, align 8, !dbg !5235
  ret ptr %24, !dbg !5235
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ttm_pool_type_take(ptr noundef %pt) #0 align 16 !dbg !5236 {
entry:
  %pt.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %head__ = alloca ptr, align 8
  %pos__ = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  store ptr %pt, ptr %pt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pt.addr, metadata !5240, metadata !DIExpression()), !dbg !5247
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #17, !dbg !5248
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5241, metadata !DIExpression()), !dbg !5249
  %0 = load ptr, ptr %pt.addr, align 8, !dbg !5250
  %lock = getelementptr inbounds %struct.ttm_pool_type, ptr %0, i32 0, i32 4, !dbg !5251
  call void @spin_lock(ptr noundef %lock) #18, !dbg !5252
  call void @llvm.lifetime.start.p0(i64 8, ptr %head__) #17, !dbg !5253
  call void @llvm.dbg.declare(metadata ptr %head__, metadata !5242, metadata !DIExpression()), !dbg !5253
  %1 = load ptr, ptr %pt.addr, align 8, !dbg !5253
  %pages = getelementptr inbounds %struct.ttm_pool_type, ptr %1, i32 0, i32 5, !dbg !5253
  store ptr %pages, ptr %head__, align 8, !dbg !5253
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos__) #17, !dbg !5253
  call void @llvm.dbg.declare(metadata ptr %pos__, metadata !5244, metadata !DIExpression()), !dbg !5253
  br label %do.body, !dbg !5254

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5256

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5256

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %head__, align 8, !dbg !5254
  %next = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !5254
  %3 = load volatile ptr, ptr %next, align 8, !dbg !5254
  store ptr %3, ptr %tmp, align 8, !dbg !5256
  %4 = load ptr, ptr %tmp, align 8, !dbg !5254
  store ptr %4, ptr %pos__, align 8, !dbg !5253
  %5 = load ptr, ptr %pos__, align 8, !dbg !5253
  %6 = load ptr, ptr %head__, align 8, !dbg !5253
  %cmp = icmp ne ptr %5, %6, !dbg !5253
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5253

cond.true:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !5258
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5245, metadata !DIExpression()), !dbg !5258
  %7 = load ptr, ptr %pos__, align 8, !dbg !5258
  store ptr %7, ptr %__mptr, align 8, !dbg !5258
  %8 = load ptr, ptr %__mptr, align 8, !dbg !5258
  %add.ptr = getelementptr i8, ptr %8, i64 -8, !dbg !5258
  store ptr %add.ptr, ptr %tmp2, align 8, !dbg !5258
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !5253
  %9 = load ptr, ptr %tmp2, align 8, !dbg !5258
  br label %cond.end, !dbg !5253

cond.false:                                       ; preds = %do.end
  br label %cond.end, !dbg !5253

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %9, %cond.true ], [ null, %cond.false ], !dbg !5253
  store ptr %cond, ptr %tmp1, align 8, !dbg !5253
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos__) #17, !dbg !5259
  call void @llvm.lifetime.end.p0(i64 8, ptr %head__) #17, !dbg !5259
  %10 = load ptr, ptr %tmp1, align 8, !dbg !5253
  store ptr %10, ptr %p, align 8, !dbg !5260
  %11 = load ptr, ptr %p, align 8, !dbg !5261
  %tobool = icmp ne ptr %11, null, !dbg !5261
  br i1 %tobool, label %if.then, label %if.end, !dbg !5263

if.then:                                          ; preds = %cond.end
  %12 = load ptr, ptr %pt.addr, align 8, !dbg !5264
  %order = getelementptr inbounds %struct.ttm_pool_type, ptr %12, i32 0, i32 1, !dbg !5266
  %13 = load i32, ptr %order, align 8, !dbg !5266
  %shl = shl i32 1, %13, !dbg !5267
  %conv = sext i32 %shl to i64, !dbg !5268
  call void @atomic_long_sub(i64 noundef %conv, ptr noundef @allocated_pages) #18, !dbg !5269
  %14 = load ptr, ptr %p, align 8, !dbg !5270
  %15 = getelementptr inbounds %struct.page, ptr %14, i32 0, i32 1, !dbg !5271
  %16 = getelementptr inbounds %struct.anon.16, ptr %15, i32 0, i32 0, !dbg !5271
  call void @list_del(ptr noundef %16) #18, !dbg !5272
  br label %if.end, !dbg !5273

if.end:                                           ; preds = %if.then, %cond.end
  %17 = load ptr, ptr %pt.addr, align 8, !dbg !5274
  %lock3 = getelementptr inbounds %struct.ttm_pool_type, ptr %17, i32 0, i32 4, !dbg !5275
  call void @spin_unlock(ptr noundef %lock3) #18, !dbg !5276
  %18 = load ptr, ptr %p, align 8, !dbg !5277
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #17, !dbg !5278
  ret ptr %18, !dbg !5279
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ttm_pool_apply_caching(ptr noundef %first, ptr noundef %last, i32 noundef %caching) #0 align 16 !dbg !5280 {
entry:
  %retval = alloca i32, align 4
  %first.addr = alloca ptr, align 8
  %last.addr = alloca ptr, align 8
  %caching.addr = alloca i32, align 4
  %num_pages = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %first, ptr %first.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %first.addr, metadata !5284, metadata !DIExpression()), !dbg !5288
  store ptr %last, ptr %last.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %last.addr, metadata !5285, metadata !DIExpression()), !dbg !5289
  store i32 %caching, ptr %caching.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %caching.addr, metadata !5286, metadata !DIExpression()), !dbg !5290
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_pages) #17, !dbg !5291
  call void @llvm.dbg.declare(metadata ptr %num_pages, metadata !5287, metadata !DIExpression()), !dbg !5292
  %0 = load ptr, ptr %last.addr, align 8, !dbg !5293
  %1 = load ptr, ptr %first.addr, align 8, !dbg !5294
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !5295
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64, !dbg !5295
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !5295
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8, !dbg !5295
  %conv = trunc i64 %sub.ptr.div to i32, !dbg !5293
  store i32 %conv, ptr %num_pages, align 4, !dbg !5292
  %2 = load i32, ptr %num_pages, align 4, !dbg !5296
  %tobool = icmp ne i32 %2, 0, !dbg !5296
  br i1 %tobool, label %if.end, label %if.then, !dbg !5298

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5299
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5299

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %caching.addr, align 4, !dbg !5300
  switch i32 %3, label %sw.epilog [
    i32 2, label %sw.epilog
    i32 1, label %sw.bb
    i32 0, label %sw.bb1
  ], !dbg !5301

sw.bb:                                            ; preds = %if.end
  %4 = load ptr, ptr %first.addr, align 8, !dbg !5302
  %5 = load i32, ptr %num_pages, align 4, !dbg !5304
  %call = call i32 @set_pages_array_wc(ptr noundef %4, i32 noundef %5) #18, !dbg !5305
  store i32 %call, ptr %retval, align 4, !dbg !5306
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5306

sw.bb1:                                           ; preds = %if.end
  %6 = load ptr, ptr %first.addr, align 8, !dbg !5307
  %7 = load i32, ptr %num_pages, align 4, !dbg !5308
  %call2 = call i32 @set_pages_array_uc(ptr noundef %6, i32 noundef %7) #18, !dbg !5309
  store i32 %call2, ptr %retval, align 4, !dbg !5310
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5310

sw.epilog:                                        ; preds = %if.end, %if.end
  store i32 0, ptr %retval, align 4, !dbg !5311
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5311

cleanup:                                          ; preds = %sw.epilog, %sw.bb1, %sw.bb, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_pages) #17, !dbg !5312
  %8 = load i32, ptr %retval, align 4, !dbg !5312
  ret i32 %8, !dbg !5312
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ttm_pool_page_allocated(ptr noundef %pool, i32 noundef %order, ptr noundef %p, ptr noundef %dma_addr, ptr noundef %num_pages, ptr noundef %pages) #0 align 16 !dbg !5313 {
entry:
  %retval = alloca i32, align 4
  %pool.addr = alloca ptr, align 8
  %order.addr = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %dma_addr.addr = alloca ptr, align 8
  %num_pages.addr = alloca ptr, align 8
  %pages.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %r = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !5319, metadata !DIExpression()), !dbg !5327
  store i32 %order, ptr %order.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %order.addr, metadata !5320, metadata !DIExpression()), !dbg !5328
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5321, metadata !DIExpression()), !dbg !5329
  store ptr %dma_addr, ptr %dma_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dma_addr.addr, metadata !5322, metadata !DIExpression()), !dbg !5330
  store ptr %num_pages, ptr %num_pages.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %num_pages.addr, metadata !5323, metadata !DIExpression()), !dbg !5331
  store ptr %pages, ptr %pages.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pages.addr, metadata !5324, metadata !DIExpression()), !dbg !5332
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !5333
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5325, metadata !DIExpression()), !dbg !5334
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #17, !dbg !5335
  call void @llvm.dbg.declare(metadata ptr %r, metadata !5326, metadata !DIExpression()), !dbg !5336
  %0 = load ptr, ptr %dma_addr.addr, align 8, !dbg !5337
  %1 = load ptr, ptr %0, align 8, !dbg !5339
  %tobool = icmp ne ptr %1, null, !dbg !5339
  br i1 %tobool, label %if.then, label %if.end3, !dbg !5340

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pool.addr, align 8, !dbg !5341
  %3 = load i32, ptr %order.addr, align 4, !dbg !5343
  %4 = load ptr, ptr %p.addr, align 8, !dbg !5344
  %5 = load ptr, ptr %dma_addr.addr, align 8, !dbg !5345
  %call = call i32 @ttm_pool_map(ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) #18, !dbg !5346
  store i32 %call, ptr %r, align 4, !dbg !5347
  %6 = load i32, ptr %r, align 4, !dbg !5348
  %tobool1 = icmp ne i32 %6, 0, !dbg !5348
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !5350

if.then2:                                         ; preds = %if.then
  %7 = load i32, ptr %r, align 4, !dbg !5351
  store i32 %7, ptr %retval, align 4, !dbg !5352
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5352

if.end:                                           ; preds = %if.then
  br label %if.end3, !dbg !5353

if.end3:                                          ; preds = %if.end, %entry
  %8 = load i32, ptr %order.addr, align 4, !dbg !5354
  %shl = shl i32 1, %8, !dbg !5355
  %conv = sext i32 %shl to i64, !dbg !5356
  %9 = load ptr, ptr %num_pages.addr, align 8, !dbg !5357
  %10 = load i64, ptr %9, align 8, !dbg !5358
  %sub = sub i64 %10, %conv, !dbg !5358
  store i64 %sub, ptr %9, align 8, !dbg !5358
  %11 = load i32, ptr %order.addr, align 4, !dbg !5359
  %shl4 = shl i32 1, %11, !dbg !5361
  store i32 %shl4, ptr %i, align 4, !dbg !5362
  br label %for.cond, !dbg !5363

for.cond:                                         ; preds = %for.inc, %if.end3
  %12 = load i32, ptr %i, align 4, !dbg !5364
  %tobool5 = icmp ne i32 %12, 0, !dbg !5366
  br i1 %tobool5, label %for.body, label %for.end, !dbg !5366

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %p.addr, align 8, !dbg !5367
  %14 = load ptr, ptr %pages.addr, align 8, !dbg !5368
  %15 = load ptr, ptr %14, align 8, !dbg !5369
  store ptr %13, ptr %15, align 8, !dbg !5370
  br label %for.inc, !dbg !5371

for.inc:                                          ; preds = %for.body
  %16 = load i32, ptr %i, align 4, !dbg !5372
  %dec = add i32 %16, -1, !dbg !5372
  store i32 %dec, ptr %i, align 4, !dbg !5372
  %17 = load ptr, ptr %pages.addr, align 8, !dbg !5373
  %18 = load ptr, ptr %17, align 8, !dbg !5374
  %incdec.ptr = getelementptr ptr, ptr %18, i32 1, !dbg !5374
  store ptr %incdec.ptr, ptr %17, align 8, !dbg !5374
  %19 = load ptr, ptr %p.addr, align 8, !dbg !5375
  %incdec.ptr6 = getelementptr %struct.page, ptr %19, i32 1, !dbg !5375
  store ptr %incdec.ptr6, ptr %p.addr, align 8, !dbg !5375
  br label %for.cond, !dbg !5376, !llvm.loop !5377

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !5379
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5379

cleanup:                                          ; preds = %for.end, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #17, !dbg !5380
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !5380
  %20 = load i32, ptr %retval, align 4, !dbg !5380
  ret i32 %20, !dbg !5380
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ttm_pool_alloc_page(ptr noundef %pool, i32 noundef %gfp_flags, i32 noundef %order) #0 align 16 !dbg !5381 {
entry:
  %retval = alloca ptr, align 8
  %pool.addr = alloca ptr, align 8
  %gfp_flags.addr = alloca i32, align 4
  %order.addr = alloca i32, align 4
  %attr = alloca i64, align 8
  %dma = alloca ptr, align 8
  %p = alloca ptr, align 8
  %vaddr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !5385, metadata !DIExpression()), !dbg !5398
  store i32 %gfp_flags, ptr %gfp_flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_flags.addr, metadata !5386, metadata !DIExpression()), !dbg !5399
  store i32 %order, ptr %order.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %order.addr, metadata !5387, metadata !DIExpression()), !dbg !5400
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #17, !dbg !5401
  call void @llvm.dbg.declare(metadata ptr %attr, metadata !5388, metadata !DIExpression()), !dbg !5402
  store i64 64, ptr %attr, align 8, !dbg !5402
  call void @llvm.lifetime.start.p0(i64 8, ptr %dma) #17, !dbg !5403
  call void @llvm.dbg.declare(metadata ptr %dma, metadata !5389, metadata !DIExpression()), !dbg !5404
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #17, !dbg !5405
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5395, metadata !DIExpression()), !dbg !5406
  call void @llvm.lifetime.start.p0(i64 8, ptr %vaddr) #17, !dbg !5407
  call void @llvm.dbg.declare(metadata ptr %vaddr, metadata !5396, metadata !DIExpression()), !dbg !5408
  %0 = load i32, ptr %order.addr, align 4, !dbg !5409
  %tobool = icmp ne i32 %0, 0, !dbg !5409
  br i1 %tobool, label %if.then, label %if.end, !dbg !5411

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %gfp_flags.addr, align 4, !dbg !5412
  %or = or i32 %1, 600064, !dbg !5412
  store i32 %or, ptr %gfp_flags.addr, align 4, !dbg !5412
  br label %if.end, !dbg !5413

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %pool.addr, align 8, !dbg !5414
  %use_dma_alloc = getelementptr inbounds %struct.ttm_pool, ptr %2, i32 0, i32 2, !dbg !5416
  %3 = load i8, ptr %use_dma_alloc, align 4, !dbg !5416, !range !4954, !noundef !571
  %tobool1 = trunc i8 %3 to i1, !dbg !5416
  br i1 %tobool1, label %if.end6, label %if.then2, !dbg !5417

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %pool.addr, align 8, !dbg !5418
  %nid = getelementptr inbounds %struct.ttm_pool, ptr %4, i32 0, i32 1, !dbg !5420
  %5 = load i32, ptr %nid, align 8, !dbg !5420
  %6 = load i32, ptr %gfp_flags.addr, align 4, !dbg !5421
  %7 = load i32, ptr %order.addr, align 4, !dbg !5422
  %call = call ptr @alloc_pages_node(i32 noundef %5, i32 noundef %6, i32 noundef %7) #18, !dbg !5423
  store ptr %call, ptr %p, align 8, !dbg !5424
  %8 = load ptr, ptr %p, align 8, !dbg !5425
  %tobool3 = icmp ne ptr %8, null, !dbg !5425
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5427

if.then4:                                         ; preds = %if.then2
  %9 = load i32, ptr %order.addr, align 4, !dbg !5428
  %conv = zext i32 %9 to i64, !dbg !5428
  %10 = load ptr, ptr %p, align 8, !dbg !5429
  %11 = getelementptr inbounds %struct.page, ptr %10, i32 0, i32 1, !dbg !5430
  %private = getelementptr inbounds %struct.anon.16, ptr %11, i32 0, i32 3, !dbg !5430
  store i64 %conv, ptr %private, align 8, !dbg !5431
  br label %if.end5, !dbg !5429

if.end5:                                          ; preds = %if.then4, %if.then2
  %12 = load ptr, ptr %p, align 8, !dbg !5432
  store ptr %12, ptr %retval, align 8, !dbg !5433
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5433

if.end6:                                          ; preds = %if.end
  %call7 = call noalias ptr @kmalloc(i64 noundef 16, i32 noundef 3264) #20, !dbg !5434
  store ptr %call7, ptr %dma, align 8, !dbg !5435
  %13 = load ptr, ptr %dma, align 8, !dbg !5436
  %tobool8 = icmp ne ptr %13, null, !dbg !5436
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !5438

if.then9:                                         ; preds = %if.end6
  store ptr null, ptr %retval, align 8, !dbg !5439
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5439

if.end10:                                         ; preds = %if.end6
  %14 = load i32, ptr %order.addr, align 4, !dbg !5440
  %tobool11 = icmp ne i32 %14, 0, !dbg !5440
  br i1 %tobool11, label %if.then12, label %if.end14, !dbg !5442

if.then12:                                        ; preds = %if.end10
  %15 = load i64, ptr %attr, align 8, !dbg !5443
  %or13 = or i64 %15, 256, !dbg !5443
  store i64 %or13, ptr %attr, align 8, !dbg !5443
  br label %if.end14, !dbg !5444

if.end14:                                         ; preds = %if.then12, %if.end10
  %16 = load ptr, ptr %pool.addr, align 8, !dbg !5445
  %dev = getelementptr inbounds %struct.ttm_pool, ptr %16, i32 0, i32 0, !dbg !5446
  %17 = load ptr, ptr %dev, align 8, !dbg !5446
  %18 = load i32, ptr %order.addr, align 4, !dbg !5447
  %sh_prom = zext i32 %18 to i64, !dbg !5448
  %shl = shl i64 1, %sh_prom, !dbg !5448
  %mul = mul i64 %shl, 4096, !dbg !5449
  %19 = load ptr, ptr %dma, align 8, !dbg !5450
  %addr = getelementptr inbounds %struct.ttm_pool_dma, ptr %19, i32 0, i32 0, !dbg !5451
  %20 = load i32, ptr %gfp_flags.addr, align 4, !dbg !5452
  %21 = load i64, ptr %attr, align 8, !dbg !5453
  %call15 = call ptr @dma_alloc_attrs(ptr noundef %17, i64 noundef %mul, ptr noundef %addr, i32 noundef %20, i64 noundef %21) #18, !dbg !5454
  store ptr %call15, ptr %vaddr, align 8, !dbg !5455
  %22 = load ptr, ptr %vaddr, align 8, !dbg !5456
  %tobool16 = icmp ne ptr %22, null, !dbg !5456
  br i1 %tobool16, label %if.end18, label %if.then17, !dbg !5458

if.then17:                                        ; preds = %if.end14
  br label %error_free, !dbg !5459

if.end18:                                         ; preds = %if.end14
  %23 = load ptr, ptr %vaddr, align 8, !dbg !5460
  %call19 = call zeroext i1 @is_vmalloc_addr(ptr noundef %23) #18, !dbg !5462
  br i1 %call19, label %if.then20, label %if.else, !dbg !5463

if.then20:                                        ; preds = %if.end18
  %24 = load ptr, ptr %vaddr, align 8, !dbg !5464
  %call21 = call ptr @vmalloc_to_page(ptr noundef %24) #18, !dbg !5465
  store ptr %call21, ptr %p, align 8, !dbg !5466
  br label %if.end23, !dbg !5467

if.else:                                          ; preds = %if.end18
  %25 = load i64, ptr @vmemmap_base, align 8, !dbg !5468
  %26 = inttoptr i64 %25 to ptr, !dbg !5468
  %27 = load ptr, ptr %vaddr, align 8, !dbg !5468
  %28 = ptrtoint ptr %27 to i64, !dbg !5468
  %call22 = call i64 @__phys_addr_nodebug(i64 noundef %28) #18, !dbg !5468
  %shr = lshr i64 %call22, 12, !dbg !5468
  %add.ptr = getelementptr %struct.page, ptr %26, i64 %shr, !dbg !5468
  store ptr %add.ptr, ptr %p, align 8, !dbg !5469
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then20
  %29 = load ptr, ptr %vaddr, align 8, !dbg !5470
  %30 = ptrtoint ptr %29 to i64, !dbg !5471
  %31 = load i32, ptr %order.addr, align 4, !dbg !5472
  %conv24 = zext i32 %31 to i64, !dbg !5472
  %or25 = or i64 %30, %conv24, !dbg !5473
  %32 = load ptr, ptr %dma, align 8, !dbg !5474
  %vaddr26 = getelementptr inbounds %struct.ttm_pool_dma, ptr %32, i32 0, i32 1, !dbg !5475
  store i64 %or25, ptr %vaddr26, align 8, !dbg !5476
  %33 = load ptr, ptr %dma, align 8, !dbg !5477
  %34 = ptrtoint ptr %33 to i64, !dbg !5478
  %35 = load ptr, ptr %p, align 8, !dbg !5479
  %36 = getelementptr inbounds %struct.page, ptr %35, i32 0, i32 1, !dbg !5480
  %private27 = getelementptr inbounds %struct.anon.16, ptr %36, i32 0, i32 3, !dbg !5480
  store i64 %34, ptr %private27, align 8, !dbg !5481
  %37 = load ptr, ptr %p, align 8, !dbg !5482
  store ptr %37, ptr %retval, align 8, !dbg !5483
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5483

error_free:                                       ; preds = %if.then17
  call void @llvm.dbg.label(metadata !5397), !dbg !5484
  %38 = load ptr, ptr %dma, align 8, !dbg !5485
  call void @kfree(ptr noundef %38) #18, !dbg !5486
  store ptr null, ptr %retval, align 8, !dbg !5487
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5487

cleanup:                                          ; preds = %error_free, %if.end23, %if.then9, %if.end5
  call void @llvm.lifetime.end.p0(i64 8, ptr %vaddr) #17, !dbg !5488
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #17, !dbg !5488
  call void @llvm.lifetime.end.p0(i64 8, ptr %dma) #17, !dbg !5488
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #17, !dbg !5488
  %39 = load ptr, ptr %retval, align 8, !dbg !5488
  ret ptr %39, !dbg !5488
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @PageHighMem(ptr noundef %page) #3 align 16 !dbg !5489 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !5496, metadata !DIExpression()), !dbg !5497
  ret i32 0, !dbg !5497
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ttm_pool_free_page(ptr noundef %pool, i32 noundef %caching, i32 noundef %order, ptr noundef %p) #0 align 16 !dbg !5498 {
entry:
  %pool.addr = alloca ptr, align 8
  %caching.addr = alloca i32, align 4
  %order.addr = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %attr = alloca i64, align 8
  %dma = alloca ptr, align 8
  %vaddr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !5502, metadata !DIExpression()), !dbg !5509
  store i32 %caching, ptr %caching.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %caching.addr, metadata !5503, metadata !DIExpression()), !dbg !5510
  store i32 %order, ptr %order.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %order.addr, metadata !5504, metadata !DIExpression()), !dbg !5511
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5505, metadata !DIExpression()), !dbg !5512
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #17, !dbg !5513
  call void @llvm.dbg.declare(metadata ptr %attr, metadata !5506, metadata !DIExpression()), !dbg !5514
  store i64 64, ptr %attr, align 8, !dbg !5514
  call void @llvm.lifetime.start.p0(i64 8, ptr %dma) #17, !dbg !5515
  call void @llvm.dbg.declare(metadata ptr %dma, metadata !5507, metadata !DIExpression()), !dbg !5516
  call void @llvm.lifetime.start.p0(i64 8, ptr %vaddr) #17, !dbg !5517
  call void @llvm.dbg.declare(metadata ptr %vaddr, metadata !5508, metadata !DIExpression()), !dbg !5518
  %0 = load i32, ptr %caching.addr, align 4, !dbg !5519
  %cmp = icmp ne i32 %0, 2, !dbg !5521
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !5522

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8, !dbg !5523
  %call = call i32 @PageHighMem(ptr noundef %1) #18, !dbg !5524
  %tobool = icmp ne i32 %call, 0, !dbg !5524
  br i1 %tobool, label %if.end, label %if.then, !dbg !5525

if.then:                                          ; preds = %land.lhs.true
  %2 = load ptr, ptr %p.addr, align 8, !dbg !5526
  %3 = load i32, ptr %order.addr, align 4, !dbg !5527
  %shl = shl i32 1, %3, !dbg !5528
  %call1 = call i32 @set_pages_wb(ptr noundef %2, i32 noundef %shl) #18, !dbg !5529
  br label %if.end, !dbg !5529

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %4 = load ptr, ptr %pool.addr, align 8, !dbg !5530
  %tobool2 = icmp ne ptr %4, null, !dbg !5530
  br i1 %tobool2, label %lor.lhs.false, label %if.then4, !dbg !5532

lor.lhs.false:                                    ; preds = %if.end
  %5 = load ptr, ptr %pool.addr, align 8, !dbg !5533
  %use_dma_alloc = getelementptr inbounds %struct.ttm_pool, ptr %5, i32 0, i32 2, !dbg !5534
  %6 = load i8, ptr %use_dma_alloc, align 4, !dbg !5534, !range !4954, !noundef !571
  %tobool3 = trunc i8 %6 to i1, !dbg !5534
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !5535

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  %7 = load ptr, ptr %p.addr, align 8, !dbg !5536
  %8 = load i32, ptr %order.addr, align 4, !dbg !5538
  call void @__free_pages(ptr noundef %7, i32 noundef %8) #18, !dbg !5539
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5540

if.end5:                                          ; preds = %lor.lhs.false
  %9 = load i32, ptr %order.addr, align 4, !dbg !5541
  %tobool6 = icmp ne i32 %9, 0, !dbg !5541
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !5543

if.then7:                                         ; preds = %if.end5
  %10 = load i64, ptr %attr, align 8, !dbg !5544
  %or = or i64 %10, 256, !dbg !5544
  store i64 %or, ptr %attr, align 8, !dbg !5544
  br label %if.end8, !dbg !5545

if.end8:                                          ; preds = %if.then7, %if.end5
  %11 = load ptr, ptr %p.addr, align 8, !dbg !5546
  %12 = getelementptr inbounds %struct.page, ptr %11, i32 0, i32 1, !dbg !5547
  %private = getelementptr inbounds %struct.anon.16, ptr %12, i32 0, i32 3, !dbg !5547
  %13 = load i64, ptr %private, align 8, !dbg !5547
  %14 = inttoptr i64 %13 to ptr, !dbg !5548
  store ptr %14, ptr %dma, align 8, !dbg !5549
  %15 = load ptr, ptr %dma, align 8, !dbg !5550
  %vaddr9 = getelementptr inbounds %struct.ttm_pool_dma, ptr %15, i32 0, i32 1, !dbg !5551
  %16 = load i64, ptr %vaddr9, align 8, !dbg !5551
  %and = and i64 %16, -4096, !dbg !5552
  %17 = inttoptr i64 %and to ptr, !dbg !5553
  store ptr %17, ptr %vaddr, align 8, !dbg !5554
  %18 = load ptr, ptr %pool.addr, align 8, !dbg !5555
  %dev = getelementptr inbounds %struct.ttm_pool, ptr %18, i32 0, i32 0, !dbg !5556
  %19 = load ptr, ptr %dev, align 8, !dbg !5556
  %20 = load i32, ptr %order.addr, align 4, !dbg !5557
  %sh_prom = zext i32 %20 to i64, !dbg !5558
  %shl10 = shl i64 1, %sh_prom, !dbg !5558
  %mul = mul i64 %shl10, 4096, !dbg !5559
  %21 = load ptr, ptr %vaddr, align 8, !dbg !5560
  %22 = load ptr, ptr %dma, align 8, !dbg !5561
  %addr = getelementptr inbounds %struct.ttm_pool_dma, ptr %22, i32 0, i32 0, !dbg !5562
  %23 = load i64, ptr %addr, align 8, !dbg !5562
  %24 = load i64, ptr %attr, align 8, !dbg !5563
  call void @dma_free_attrs(ptr noundef %19, i64 noundef %mul, ptr noundef %21, i64 noundef %23, i64 noundef %24) #18, !dbg !5564
  %25 = load ptr, ptr %dma, align 8, !dbg !5565
  call void @kfree(ptr noundef %25) #18, !dbg !5566
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5567
  br label %cleanup, !dbg !5567

cleanup:                                          ; preds = %if.end8, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %vaddr) #17, !dbg !5567
  call void @llvm.lifetime.end.p0(i64 8, ptr %dma) #17, !dbg !5567
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #17, !dbg !5567
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5567

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ttm_pool_free_range(ptr noundef %pool, ptr noundef %tt, i32 noundef %caching, i64 noundef %start_page, i64 noundef %end_page) #0 align 16 !dbg !5568 {
entry:
  %pool.addr = alloca ptr, align 8
  %tt.addr = alloca ptr, align 8
  %caching.addr = alloca i32, align 4
  %start_page.addr = alloca i64, align 8
  %end_page.addr = alloca i64, align 8
  %pages = alloca ptr, align 8
  %order = alloca i32, align 4
  %i = alloca i64, align 8
  %nr = alloca i64, align 8
  %pt = alloca ptr, align 8
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !5572, metadata !DIExpression()), !dbg !5585
  store ptr %tt, ptr %tt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tt.addr, metadata !5573, metadata !DIExpression()), !dbg !5586
  store i32 %caching, ptr %caching.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %caching.addr, metadata !5574, metadata !DIExpression()), !dbg !5587
  store i64 %start_page, ptr %start_page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start_page.addr, metadata !5575, metadata !DIExpression()), !dbg !5588
  store i64 %end_page, ptr %end_page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end_page.addr, metadata !5576, metadata !DIExpression()), !dbg !5589
  call void @llvm.lifetime.start.p0(i64 8, ptr %pages) #17, !dbg !5590
  call void @llvm.dbg.declare(metadata ptr %pages, metadata !5577, metadata !DIExpression()), !dbg !5591
  %0 = load ptr, ptr %tt.addr, align 8, !dbg !5592
  %pages1 = getelementptr inbounds %struct.ttm_tt, ptr %0, i32 0, i32 0, !dbg !5593
  %1 = load ptr, ptr %pages1, align 8, !dbg !5593
  %2 = load i64, ptr %start_page.addr, align 8, !dbg !5594
  %arrayidx = getelementptr ptr, ptr %1, i64 %2, !dbg !5592
  store ptr %arrayidx, ptr %pages, align 8, !dbg !5591
  call void @llvm.lifetime.start.p0(i64 4, ptr %order) #17, !dbg !5595
  call void @llvm.dbg.declare(metadata ptr %order, metadata !5578, metadata !DIExpression()), !dbg !5596
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17, !dbg !5597
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5579, metadata !DIExpression()), !dbg !5598
  call void @llvm.lifetime.start.p0(i64 8, ptr %nr) #17, !dbg !5597
  call void @llvm.dbg.declare(metadata ptr %nr, metadata !5580, metadata !DIExpression()), !dbg !5599
  %3 = load i64, ptr %start_page.addr, align 8, !dbg !5600
  store i64 %3, ptr %i, align 8, !dbg !5601
  br label %for.cond, !dbg !5602

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i64, ptr %i, align 8, !dbg !5603
  %5 = load i64, ptr %end_page.addr, align 8, !dbg !5604
  %cmp = icmp ult i64 %4, %5, !dbg !5605
  br i1 %cmp, label %for.body, label %for.end, !dbg !5606

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pt) #17, !dbg !5607
  call void @llvm.dbg.declare(metadata ptr %pt, metadata !5581, metadata !DIExpression()), !dbg !5608
  store ptr null, ptr %pt, align 8, !dbg !5608
  %6 = load ptr, ptr %pool.addr, align 8, !dbg !5609
  %7 = load ptr, ptr %pages, align 8, !dbg !5610
  %8 = load ptr, ptr %7, align 8, !dbg !5611
  %call = call i32 @ttm_pool_page_order(ptr noundef %6, ptr noundef %8) #18, !dbg !5612
  store i32 %call, ptr %order, align 4, !dbg !5613
  %9 = load i32, ptr %order, align 4, !dbg !5614
  %sh_prom = zext i32 %9 to i64, !dbg !5615
  %shl = shl i64 1, %sh_prom, !dbg !5615
  store i64 %shl, ptr %nr, align 8, !dbg !5616
  %10 = load ptr, ptr %tt.addr, align 8, !dbg !5617
  %dma_address = getelementptr inbounds %struct.ttm_tt, ptr %10, i32 0, i32 4, !dbg !5619
  %11 = load ptr, ptr %dma_address, align 8, !dbg !5619
  %tobool = icmp ne ptr %11, null, !dbg !5617
  br i1 %tobool, label %if.then, label %if.end, !dbg !5620

if.then:                                          ; preds = %for.body
  %12 = load ptr, ptr %pool.addr, align 8, !dbg !5621
  %13 = load ptr, ptr %tt.addr, align 8, !dbg !5622
  %dma_address2 = getelementptr inbounds %struct.ttm_tt, ptr %13, i32 0, i32 4, !dbg !5623
  %14 = load ptr, ptr %dma_address2, align 8, !dbg !5623
  %15 = load i64, ptr %i, align 8, !dbg !5624
  %arrayidx3 = getelementptr i64, ptr %14, i64 %15, !dbg !5622
  %16 = load i64, ptr %arrayidx3, align 8, !dbg !5622
  %17 = load i64, ptr %nr, align 8, !dbg !5625
  %conv = trunc i64 %17 to i32, !dbg !5625
  call void @ttm_pool_unmap(ptr noundef %12, i64 noundef %16, i32 noundef %conv) #18, !dbg !5626
  br label %if.end, !dbg !5626

if.end:                                           ; preds = %if.then, %for.body
  %18 = load ptr, ptr %pool.addr, align 8, !dbg !5627
  %19 = load i32, ptr %caching.addr, align 4, !dbg !5628
  %20 = load i32, ptr %order, align 4, !dbg !5629
  %call4 = call ptr @ttm_pool_select_type(ptr noundef %18, i32 noundef %19, i32 noundef %20) #18, !dbg !5630
  store ptr %call4, ptr %pt, align 8, !dbg !5631
  %21 = load ptr, ptr %pt, align 8, !dbg !5632
  %tobool5 = icmp ne ptr %21, null, !dbg !5632
  br i1 %tobool5, label %if.then6, label %if.else, !dbg !5634

if.then6:                                         ; preds = %if.end
  %22 = load ptr, ptr %pt, align 8, !dbg !5635
  %23 = load ptr, ptr %pages, align 8, !dbg !5636
  %24 = load ptr, ptr %23, align 8, !dbg !5637
  call void @ttm_pool_type_give(ptr noundef %22, ptr noundef %24) #18, !dbg !5638
  br label %if.end7, !dbg !5638

if.else:                                          ; preds = %if.end
  %25 = load ptr, ptr %pool.addr, align 8, !dbg !5639
  %26 = load i32, ptr %caching.addr, align 4, !dbg !5640
  %27 = load i32, ptr %order, align 4, !dbg !5641
  %28 = load ptr, ptr %pages, align 8, !dbg !5642
  %29 = load ptr, ptr %28, align 8, !dbg !5643
  call void @ttm_pool_free_page(ptr noundef %25, i32 noundef %26, i32 noundef %27, ptr noundef %29) #18, !dbg !5644
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then6
  call void @llvm.lifetime.end.p0(i64 8, ptr %pt) #17, !dbg !5645
  br label %for.inc, !dbg !5646

for.inc:                                          ; preds = %if.end7
  %30 = load i64, ptr %nr, align 8, !dbg !5647
  %31 = load i64, ptr %i, align 8, !dbg !5648
  %add = add i64 %31, %30, !dbg !5648
  store i64 %add, ptr %i, align 8, !dbg !5648
  %32 = load i64, ptr %nr, align 8, !dbg !5649
  %33 = load ptr, ptr %pages, align 8, !dbg !5650
  %add.ptr = getelementptr ptr, ptr %33, i64 %32, !dbg !5650
  store ptr %add.ptr, ptr %pages, align 8, !dbg !5650
  br label %for.cond, !dbg !5651, !llvm.loop !5652

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %nr) #17, !dbg !5654
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17, !dbg !5654
  call void @llvm.lifetime.end.p0(i64 4, ptr %order) #17, !dbg !5654
  call void @llvm.lifetime.end.p0(i64 8, ptr %pages) #17, !dbg !5654
  ret void, !dbg !5654
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @ttm_pool_free(ptr noundef %pool, ptr noundef %tt) #0 align 16 !dbg !5655 {
entry:
  %pool.addr = alloca ptr, align 8
  %tt.addr = alloca ptr, align 8
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !5659, metadata !DIExpression()), !dbg !5661
  store ptr %tt, ptr %tt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tt.addr, metadata !5660, metadata !DIExpression()), !dbg !5662
  %0 = load ptr, ptr %pool.addr, align 8, !dbg !5663
  %1 = load ptr, ptr %tt.addr, align 8, !dbg !5664
  %2 = load ptr, ptr %tt.addr, align 8, !dbg !5665
  %caching = getelementptr inbounds %struct.ttm_tt, ptr %2, i32 0, i32 6, !dbg !5666
  %3 = load i32, ptr %caching, align 8, !dbg !5666
  %4 = load ptr, ptr %tt.addr, align 8, !dbg !5667
  %num_pages = getelementptr inbounds %struct.ttm_tt, ptr %4, i32 0, i32 2, !dbg !5668
  %5 = load i32, ptr %num_pages, align 4, !dbg !5668
  %conv = zext i32 %5 to i64, !dbg !5667
  call void @ttm_pool_free_range(ptr noundef %0, ptr noundef %1, i32 noundef %3, i64 noundef 0, i64 noundef %conv) #18, !dbg !5669
  br label %while.cond, !dbg !5670

while.cond:                                       ; preds = %while.body, %entry
  %call = call i64 @atomic_long_read(ptr noundef @allocated_pages) #18, !dbg !5671
  %6 = load i64, ptr @page_pool_size, align 8, !dbg !5672
  %cmp = icmp ugt i64 %call, %6, !dbg !5673
  br i1 %cmp, label %while.body, label %while.end, !dbg !5670

while.body:                                       ; preds = %while.cond
  %call2 = call i32 @ttm_pool_shrink() #18, !dbg !5674
  br label %while.cond, !dbg !5670, !llvm.loop !5675

while.end:                                        ; preds = %while.cond
  ret void, !dbg !5677
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @atomic_long_read(ptr noundef %v) #5 align 16 !dbg !5678 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5685, metadata !DIExpression()), !dbg !5686
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5687
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 8) #18, !dbg !5688
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5689
  %call = call i64 @raw_atomic_long_read(ptr noundef %1) #18, !dbg !5690
  ret i64 %call, !dbg !5691
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ttm_pool_shrink() #0 align 16 !dbg !5692 {
entry:
  %pt = alloca ptr, align 8
  %num_pages = alloca i32, align 4
  %p = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pt) #17, !dbg !5701
  call void @llvm.dbg.declare(metadata ptr %pt, metadata !5696, metadata !DIExpression()), !dbg !5702
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_pages) #17, !dbg !5703
  call void @llvm.dbg.declare(metadata ptr %num_pages, metadata !5697, metadata !DIExpression()), !dbg !5704
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #17, !dbg !5705
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5698, metadata !DIExpression()), !dbg !5706
  call void @spin_lock(ptr noundef @shrinker_lock) #18, !dbg !5707
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !5708
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5699, metadata !DIExpression()), !dbg !5708
  %0 = load ptr, ptr @shrinker_list, align 8, !dbg !5708
  store ptr %0, ptr %__mptr, align 8, !dbg !5708
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5708
  %add.ptr = getelementptr i8, ptr %1, i64 -16, !dbg !5708
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5708
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !5709
  %2 = load ptr, ptr %tmp, align 8, !dbg !5708
  store ptr %2, ptr %pt, align 8, !dbg !5710
  %3 = load ptr, ptr %pt, align 8, !dbg !5711
  %shrinker_list = getelementptr inbounds %struct.ttm_pool_type, ptr %3, i32 0, i32 3, !dbg !5712
  call void @list_move_tail(ptr noundef %shrinker_list, ptr noundef @shrinker_list) #18, !dbg !5713
  call void @spin_unlock(ptr noundef @shrinker_lock) #18, !dbg !5714
  %4 = load ptr, ptr %pt, align 8, !dbg !5715
  %call = call ptr @ttm_pool_type_take(ptr noundef %4) #18, !dbg !5716
  store ptr %call, ptr %p, align 8, !dbg !5717
  %5 = load ptr, ptr %p, align 8, !dbg !5718
  %tobool = icmp ne ptr %5, null, !dbg !5718
  br i1 %tobool, label %if.then, label %if.else, !dbg !5720

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %pt, align 8, !dbg !5721
  %pool = getelementptr inbounds %struct.ttm_pool_type, ptr %6, i32 0, i32 0, !dbg !5723
  %7 = load ptr, ptr %pool, align 8, !dbg !5723
  %8 = load ptr, ptr %pt, align 8, !dbg !5724
  %caching = getelementptr inbounds %struct.ttm_pool_type, ptr %8, i32 0, i32 2, !dbg !5725
  %9 = load i32, ptr %caching, align 4, !dbg !5725
  %10 = load ptr, ptr %pt, align 8, !dbg !5726
  %order = getelementptr inbounds %struct.ttm_pool_type, ptr %10, i32 0, i32 1, !dbg !5727
  %11 = load i32, ptr %order, align 8, !dbg !5727
  %12 = load ptr, ptr %p, align 8, !dbg !5728
  call void @ttm_pool_free_page(ptr noundef %7, i32 noundef %9, i32 noundef %11, ptr noundef %12) #18, !dbg !5729
  %13 = load ptr, ptr %pt, align 8, !dbg !5730
  %order1 = getelementptr inbounds %struct.ttm_pool_type, ptr %13, i32 0, i32 1, !dbg !5731
  %14 = load i32, ptr %order1, align 8, !dbg !5731
  %shl = shl i32 1, %14, !dbg !5732
  store i32 %shl, ptr %num_pages, align 4, !dbg !5733
  br label %if.end, !dbg !5734

if.else:                                          ; preds = %entry
  store i32 0, ptr %num_pages, align 4, !dbg !5735
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load i32, ptr %num_pages, align 4, !dbg !5737
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #17, !dbg !5738
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_pages) #17, !dbg !5738
  call void @llvm.lifetime.end.p0(i64 8, ptr %pt) #17, !dbg !5738
  ret i32 %15, !dbg !5739
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @ttm_pool_init(ptr noundef %pool, ptr noundef %dev, i32 noundef %nid, i1 noundef zeroext %use_dma_alloc, i1 noundef zeroext %use_dma32) #0 align 16 !dbg !5740 {
entry:
  %pool.addr = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %nid.addr = alloca i32, align 4
  %use_dma_alloc.addr = alloca i8, align 1
  %use_dma32.addr = alloca i8, align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %pt = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !5744, metadata !DIExpression()), !dbg !5763
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5745, metadata !DIExpression()), !dbg !5764
  store i32 %nid, ptr %nid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nid.addr, metadata !5746, metadata !DIExpression()), !dbg !5765
  %frombool = zext i1 %use_dma_alloc to i8
  store i8 %frombool, ptr %use_dma_alloc.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %use_dma_alloc.addr, metadata !5747, metadata !DIExpression()), !dbg !5766
  %frombool1 = zext i1 %use_dma32 to i8
  store i8 %frombool1, ptr %use_dma32.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %use_dma32.addr, metadata !5748, metadata !DIExpression()), !dbg !5767
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !5768
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5749, metadata !DIExpression()), !dbg !5769
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #17, !dbg !5768
  call void @llvm.dbg.declare(metadata ptr %j, metadata !5750, metadata !DIExpression()), !dbg !5770
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !5771
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5751, metadata !DIExpression()), !dbg !5771
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5771
  %tobool = icmp ne ptr %0, null, !dbg !5771
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !5771

land.rhs:                                         ; preds = %entry
  %1 = load i8, ptr %use_dma_alloc.addr, align 1, !dbg !5771, !range !4954, !noundef !571
  %tobool2 = trunc i8 %1 to i1, !dbg !5771
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ], !dbg !5772
  %lnot = xor i1 %2, true, !dbg !5771
  %lnot3 = xor i1 %lnot, true, !dbg !5771
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5771
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5771
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !5773
  %tobool4 = icmp ne i32 %3, 0, !dbg !5773
  %lnot5 = xor i1 %tobool4, true, !dbg !5773
  %lnot7 = xor i1 %lnot5, true, !dbg !5773
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !5773
  %conv = sext i32 %lnot.ext8 to i64, !dbg !5773
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5773
  %tobool9 = icmp ne i64 %expval, 0, !dbg !5773
  br i1 %tobool9, label %if.then, label %if.end, !dbg !5771

if.then:                                          ; preds = %land.end
  br label %do.body, !dbg !5773

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #17, !dbg !5774
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5753, metadata !DIExpression()), !dbg !5774
  store i32 2305, ptr %__flags, align 4, !dbg !5774
  br label %do.body10, !dbg !5774

do.body10:                                        ; preds = %do.body
  br label %do.cond, !dbg !5775

do.cond:                                          ; preds = %do.body10
  br label %do.end, !dbg !5775

do.end:                                           ; preds = %do.cond
  br label %do.body11, !dbg !5774

do.body11:                                        ; preds = %do.end
  %4 = load i32, ptr %__flags, align 4, !dbg !5777
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 565, i32 %4, i64 12) #17, !dbg !5777, !srcloc !5779
  br label %do.cond12, !dbg !5777

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !5777

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !5774

do.body14:                                        ; preds = %do.end13
  br label %do.cond15, !dbg !5780

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !5780

do.end16:                                         ; preds = %do.cond15
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #17, !dbg !5773
  br label %do.cond17, !dbg !5774

do.cond17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !5774

do.end18:                                         ; preds = %do.cond17
  br label %if.end, !dbg !5774

if.end:                                           ; preds = %do.end18, %land.end
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !5771
  %tobool19 = icmp ne i32 %5, 0, !dbg !5771
  %lnot20 = xor i1 %tobool19, true, !dbg !5771
  %lnot22 = xor i1 %lnot20, true, !dbg !5771
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !5771
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !5771
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !5771
  store i64 %expval25, ptr %tmp, align 8, !dbg !5773
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !5782
  %6 = load i64, ptr %tmp, align 8, !dbg !5771
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !5783
  %8 = load ptr, ptr %pool.addr, align 8, !dbg !5784
  %dev26 = getelementptr inbounds %struct.ttm_pool, ptr %8, i32 0, i32 0, !dbg !5785
  store ptr %7, ptr %dev26, align 8, !dbg !5786
  %9 = load i32, ptr %nid.addr, align 4, !dbg !5787
  %10 = load ptr, ptr %pool.addr, align 8, !dbg !5788
  %nid27 = getelementptr inbounds %struct.ttm_pool, ptr %10, i32 0, i32 1, !dbg !5789
  store i32 %9, ptr %nid27, align 8, !dbg !5790
  %11 = load i8, ptr %use_dma_alloc.addr, align 1, !dbg !5791, !range !4954, !noundef !571
  %tobool28 = trunc i8 %11 to i1, !dbg !5791
  %12 = load ptr, ptr %pool.addr, align 8, !dbg !5792
  %use_dma_alloc29 = getelementptr inbounds %struct.ttm_pool, ptr %12, i32 0, i32 2, !dbg !5793
  %frombool30 = zext i1 %tobool28 to i8, !dbg !5794
  store i8 %frombool30, ptr %use_dma_alloc29, align 4, !dbg !5794
  %13 = load i8, ptr %use_dma32.addr, align 1, !dbg !5795, !range !4954, !noundef !571
  %tobool31 = trunc i8 %13 to i1, !dbg !5795
  %14 = load ptr, ptr %pool.addr, align 8, !dbg !5796
  %use_dma3232 = getelementptr inbounds %struct.ttm_pool, ptr %14, i32 0, i32 3, !dbg !5797
  %frombool33 = zext i1 %tobool31 to i8, !dbg !5798
  store i8 %frombool33, ptr %use_dma3232, align 1, !dbg !5798
  store i32 0, ptr %i, align 4, !dbg !5799
  br label %for.cond, !dbg !5800

for.cond:                                         ; preds = %for.inc45, %if.end
  %15 = load i32, ptr %i, align 4, !dbg !5801
  %cmp = icmp ult i32 %15, 3, !dbg !5802
  br i1 %cmp, label %for.body, label %for.end47, !dbg !5803

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !dbg !5804
  br label %for.cond35, !dbg !5805

for.cond35:                                       ; preds = %for.inc, %for.body
  %16 = load i32, ptr %j, align 4, !dbg !5806
  %cmp36 = icmp ult i32 %16, 11, !dbg !5807
  br i1 %cmp36, label %for.body38, label %for.end, !dbg !5808

for.body38:                                       ; preds = %for.cond35
  call void @llvm.lifetime.start.p0(i64 8, ptr %pt) #17, !dbg !5809
  call void @llvm.dbg.declare(metadata ptr %pt, metadata !5756, metadata !DIExpression()), !dbg !5810
  %17 = load ptr, ptr %pool.addr, align 8, !dbg !5811
  %18 = load i32, ptr %i, align 4, !dbg !5812
  %19 = load i32, ptr %j, align 4, !dbg !5813
  %call = call ptr @ttm_pool_select_type(ptr noundef %17, i32 noundef %18, i32 noundef %19) #18, !dbg !5814
  store ptr %call, ptr %pt, align 8, !dbg !5815
  %20 = load ptr, ptr %pt, align 8, !dbg !5816
  %21 = load ptr, ptr %pool.addr, align 8, !dbg !5818
  %caching = getelementptr inbounds %struct.ttm_pool, ptr %21, i32 0, i32 4, !dbg !5819
  %22 = load i32, ptr %i, align 4, !dbg !5820
  %idxprom = zext i32 %22 to i64, !dbg !5818
  %arrayidx = getelementptr [3 x %struct.anon.14], ptr %caching, i64 0, i64 %idxprom, !dbg !5818
  %orders = getelementptr inbounds %struct.anon.14, ptr %arrayidx, i32 0, i32 0, !dbg !5821
  %23 = load i32, ptr %j, align 4, !dbg !5822
  %idxprom39 = zext i32 %23 to i64, !dbg !5818
  %arrayidx40 = getelementptr [11 x %struct.ttm_pool_type], ptr %orders, i64 0, i64 %idxprom39, !dbg !5818
  %cmp41 = icmp ne ptr %20, %arrayidx40, !dbg !5823
  br i1 %cmp41, label %if.then43, label %if.end44, !dbg !5824

if.then43:                                        ; preds = %for.body38
  store i32 15, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5825

if.end44:                                         ; preds = %for.body38
  %24 = load ptr, ptr %pt, align 8, !dbg !5826
  %25 = load ptr, ptr %pool.addr, align 8, !dbg !5827
  %26 = load i32, ptr %i, align 4, !dbg !5828
  %27 = load i32, ptr %j, align 4, !dbg !5829
  call void @ttm_pool_type_init(ptr noundef %24, ptr noundef %25, i32 noundef %26, i32 noundef %27) #18, !dbg !5830
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5831
  br label %cleanup, !dbg !5831

cleanup:                                          ; preds = %if.end44, %if.then43
  call void @llvm.lifetime.end.p0(i64 8, ptr %pt) #17, !dbg !5831
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 15, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !5832

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %28 = load i32, ptr %j, align 4, !dbg !5833
  %inc = add i32 %28, 1, !dbg !5833
  store i32 %inc, ptr %j, align 4, !dbg !5833
  br label %for.cond35, !dbg !5834, !llvm.loop !5835

for.end:                                          ; preds = %for.cond35
  br label %for.inc45, !dbg !5837

for.inc45:                                        ; preds = %for.end
  %29 = load i32, ptr %i, align 4, !dbg !5838
  %inc46 = add i32 %29, 1, !dbg !5838
  store i32 %inc46, ptr %i, align 4, !dbg !5838
  br label %for.cond, !dbg !5839, !llvm.loop !5840

for.end47:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #17, !dbg !5842
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !5842
  ret void, !dbg !5842

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ttm_pool_type_init(ptr noundef %pt, ptr noundef %pool, i32 noundef %caching, i32 noundef %order) #0 align 16 !dbg !5843 {
entry:
  %pt.addr = alloca ptr, align 8
  %pool.addr = alloca ptr, align 8
  %caching.addr = alloca i32, align 4
  %order.addr = alloca i32, align 4
  %.compoundliteral = alloca %struct.spinlock, align 4
  store ptr %pt, ptr %pt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pt.addr, metadata !5847, metadata !DIExpression()), !dbg !5851
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !5848, metadata !DIExpression()), !dbg !5852
  store i32 %caching, ptr %caching.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %caching.addr, metadata !5849, metadata !DIExpression()), !dbg !5853
  store i32 %order, ptr %order.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %order.addr, metadata !5850, metadata !DIExpression()), !dbg !5854
  %0 = load ptr, ptr %pool.addr, align 8, !dbg !5855
  %1 = load ptr, ptr %pt.addr, align 8, !dbg !5856
  %pool1 = getelementptr inbounds %struct.ttm_pool_type, ptr %1, i32 0, i32 0, !dbg !5857
  store ptr %0, ptr %pool1, align 8, !dbg !5858
  %2 = load i32, ptr %caching.addr, align 4, !dbg !5859
  %3 = load ptr, ptr %pt.addr, align 8, !dbg !5860
  %caching2 = getelementptr inbounds %struct.ttm_pool_type, ptr %3, i32 0, i32 2, !dbg !5861
  store i32 %2, ptr %caching2, align 4, !dbg !5862
  %4 = load i32, ptr %order.addr, align 4, !dbg !5863
  %5 = load ptr, ptr %pt.addr, align 8, !dbg !5864
  %order3 = getelementptr inbounds %struct.ttm_pool_type, ptr %5, i32 0, i32 1, !dbg !5865
  store i32 %4, ptr %order3, align 8, !dbg !5866
  br label %do.body, !dbg !5867

do.body:                                          ; preds = %entry
  %6 = load ptr, ptr %pt.addr, align 8, !dbg !5868
  %lock = getelementptr inbounds %struct.ttm_pool_type, ptr %6, i32 0, i32 4, !dbg !5868
  %call = call ptr @spinlock_check(ptr noundef %lock) #18, !dbg !5868
  %7 = load ptr, ptr %pt.addr, align 8, !dbg !5868
  %lock4 = getelementptr inbounds %struct.ttm_pool_type, ptr %7, i32 0, i32 4, !dbg !5868
  %8 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !5868
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %8, i32 0, i32 0, !dbg !5868
  %9 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !5868
  %counter = getelementptr inbounds %struct.atomic_t, ptr %9, i32 0, i32 0, !dbg !5868
  store i32 0, ptr %counter, align 4, !dbg !5868
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %lock4, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !5868
  br label %do.end, !dbg !5868

do.end:                                           ; preds = %do.body
  %10 = load ptr, ptr %pt.addr, align 8, !dbg !5870
  %pages = getelementptr inbounds %struct.ttm_pool_type, ptr %10, i32 0, i32 5, !dbg !5871
  call void @INIT_LIST_HEAD(ptr noundef %pages) #18, !dbg !5872
  call void @spin_lock(ptr noundef @shrinker_lock) #18, !dbg !5873
  %11 = load ptr, ptr %pt.addr, align 8, !dbg !5874
  %shrinker_list = getelementptr inbounds %struct.ttm_pool_type, ptr %11, i32 0, i32 3, !dbg !5875
  call void @list_add_tail(ptr noundef %shrinker_list, ptr noundef @shrinker_list) #18, !dbg !5876
  call void @spin_unlock(ptr noundef @shrinker_lock) #18, !dbg !5877
  ret void, !dbg !5878
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @ttm_pool_fini(ptr noundef %pool) #0 align 16 !dbg !5879 {
entry:
  %pool.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %pt = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !5883, metadata !DIExpression()), !dbg !5893
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !5894
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5884, metadata !DIExpression()), !dbg !5895
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #17, !dbg !5894
  call void @llvm.dbg.declare(metadata ptr %j, metadata !5885, metadata !DIExpression()), !dbg !5896
  store i32 0, ptr %i, align 4, !dbg !5897
  br label %for.cond, !dbg !5898

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = load i32, ptr %i, align 4, !dbg !5899
  %cmp = icmp ult i32 %0, 3, !dbg !5900
  br i1 %cmp, label %for.body, label %for.end9, !dbg !5901

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !dbg !5902
  br label %for.cond1, !dbg !5903

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %j, align 4, !dbg !5904
  %cmp2 = icmp ult i32 %1, 11, !dbg !5905
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !5906

for.body3:                                        ; preds = %for.cond1
  call void @llvm.lifetime.start.p0(i64 8, ptr %pt) #17, !dbg !5907
  call void @llvm.dbg.declare(metadata ptr %pt, metadata !5886, metadata !DIExpression()), !dbg !5908
  %2 = load ptr, ptr %pool.addr, align 8, !dbg !5909
  %3 = load i32, ptr %i, align 4, !dbg !5910
  %4 = load i32, ptr %j, align 4, !dbg !5911
  %call = call ptr @ttm_pool_select_type(ptr noundef %2, i32 noundef %3, i32 noundef %4) #18, !dbg !5912
  store ptr %call, ptr %pt, align 8, !dbg !5913
  %5 = load ptr, ptr %pt, align 8, !dbg !5914
  %6 = load ptr, ptr %pool.addr, align 8, !dbg !5916
  %caching = getelementptr inbounds %struct.ttm_pool, ptr %6, i32 0, i32 4, !dbg !5917
  %7 = load i32, ptr %i, align 4, !dbg !5918
  %idxprom = zext i32 %7 to i64, !dbg !5916
  %arrayidx = getelementptr [3 x %struct.anon.14], ptr %caching, i64 0, i64 %idxprom, !dbg !5916
  %orders = getelementptr inbounds %struct.anon.14, ptr %arrayidx, i32 0, i32 0, !dbg !5919
  %8 = load i32, ptr %j, align 4, !dbg !5920
  %idxprom4 = zext i32 %8 to i64, !dbg !5916
  %arrayidx5 = getelementptr [11 x %struct.ttm_pool_type], ptr %orders, i64 0, i64 %idxprom4, !dbg !5916
  %cmp6 = icmp ne ptr %5, %arrayidx5, !dbg !5921
  br i1 %cmp6, label %if.then, label %if.end, !dbg !5922

if.then:                                          ; preds = %for.body3
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5923

if.end:                                           ; preds = %for.body3
  %9 = load ptr, ptr %pt, align 8, !dbg !5924
  call void @ttm_pool_type_fini(ptr noundef %9) #18, !dbg !5925
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5926
  br label %cleanup, !dbg !5926

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pt) #17, !dbg !5926
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 7, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !5927

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %10 = load i32, ptr %j, align 4, !dbg !5928
  %inc = add i32 %10, 1, !dbg !5928
  store i32 %inc, ptr %j, align 4, !dbg !5928
  br label %for.cond1, !dbg !5929, !llvm.loop !5930

for.end:                                          ; preds = %for.cond1
  br label %for.inc7, !dbg !5932

for.inc7:                                         ; preds = %for.end
  %11 = load i32, ptr %i, align 4, !dbg !5933
  %inc8 = add i32 %11, 1, !dbg !5933
  store i32 %inc8, ptr %i, align 4, !dbg !5933
  br label %for.cond, !dbg !5934, !llvm.loop !5935

for.end9:                                         ; preds = %for.cond
  call void @synchronize_shrinkers() #18, !dbg !5937
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #17, !dbg !5938
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !5938
  ret void, !dbg !5938

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ttm_pool_type_fini(ptr noundef %pt) #0 align 16 !dbg !5939 {
entry:
  %pt.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %pt, ptr %pt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pt.addr, metadata !5943, metadata !DIExpression()), !dbg !5945
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #17, !dbg !5946
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5944, metadata !DIExpression()), !dbg !5947
  call void @spin_lock(ptr noundef @shrinker_lock) #18, !dbg !5948
  %0 = load ptr, ptr %pt.addr, align 8, !dbg !5949
  %shrinker_list = getelementptr inbounds %struct.ttm_pool_type, ptr %0, i32 0, i32 3, !dbg !5950
  call void @list_del(ptr noundef %shrinker_list) #18, !dbg !5951
  call void @spin_unlock(ptr noundef @shrinker_lock) #18, !dbg !5952
  br label %while.cond, !dbg !5953

while.cond:                                       ; preds = %while.body, %entry
  %1 = load ptr, ptr %pt.addr, align 8, !dbg !5954
  %call = call ptr @ttm_pool_type_take(ptr noundef %1) #18, !dbg !5955
  store ptr %call, ptr %p, align 8, !dbg !5956
  %tobool = icmp ne ptr %call, null, !dbg !5953
  br i1 %tobool, label %while.body, label %while.end, !dbg !5953

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %pt.addr, align 8, !dbg !5957
  %pool = getelementptr inbounds %struct.ttm_pool_type, ptr %2, i32 0, i32 0, !dbg !5958
  %3 = load ptr, ptr %pool, align 8, !dbg !5958
  %4 = load ptr, ptr %pt.addr, align 8, !dbg !5959
  %caching = getelementptr inbounds %struct.ttm_pool_type, ptr %4, i32 0, i32 2, !dbg !5960
  %5 = load i32, ptr %caching, align 4, !dbg !5960
  %6 = load ptr, ptr %pt.addr, align 8, !dbg !5961
  %order = getelementptr inbounds %struct.ttm_pool_type, ptr %6, i32 0, i32 1, !dbg !5962
  %7 = load i32, ptr %order, align 8, !dbg !5962
  %8 = load ptr, ptr %p, align 8, !dbg !5963
  call void @ttm_pool_free_page(ptr noundef %3, i32 noundef %5, i32 noundef %7, ptr noundef %8) #18, !dbg !5964
  br label %while.cond, !dbg !5953, !llvm.loop !5965

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #17, !dbg !5967
  ret void, !dbg !5967
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5968 dso_local void @synchronize_shrinkers() #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ttm_pool_debugfs(ptr noundef %pool, ptr noundef %m) #0 align 16 !dbg !5969 {
entry:
  %retval = alloca i32, align 4
  %pool.addr = alloca ptr, align 8
  %m.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !5973, metadata !DIExpression()), !dbg !5976
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !5974, metadata !DIExpression()), !dbg !5977
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !5978
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5975, metadata !DIExpression()), !dbg !5979
  %0 = load ptr, ptr %pool.addr, align 8, !dbg !5980
  %use_dma_alloc = getelementptr inbounds %struct.ttm_pool, ptr %0, i32 0, i32 2, !dbg !5982
  %1 = load i8, ptr %use_dma_alloc, align 4, !dbg !5982, !range !4954, !noundef !571
  %tobool = trunc i8 %1 to i1, !dbg !5982
  br i1 %tobool, label %if.end, label %if.then, !dbg !5983

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %m.addr, align 8, !dbg !5984
  call void @seq_puts(ptr noundef %2, ptr noundef @.str.1) #18, !dbg !5986
  store i32 0, ptr %retval, align 4, !dbg !5987
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5987

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %m.addr, align 8, !dbg !5988
  call void @ttm_pool_debugfs_header(ptr noundef %3) #18, !dbg !5989
  call void @spin_lock(ptr noundef @shrinker_lock) #18, !dbg !5990
  store i32 0, ptr %i, align 4, !dbg !5991
  br label %for.cond, !dbg !5993

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, ptr %i, align 4, !dbg !5994
  %cmp = icmp ult i32 %4, 3, !dbg !5996
  br i1 %cmp, label %for.body, label %for.end, !dbg !5997

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %m.addr, align 8, !dbg !5998
  call void @seq_puts(ptr noundef %5, ptr noundef @.str.2) #18, !dbg !6000
  %6 = load i32, ptr %i, align 4, !dbg !6001
  switch i32 %6, label %sw.epilog [
    i32 2, label %sw.bb
    i32 1, label %sw.bb1
    i32 0, label %sw.bb2
  ], !dbg !6002

sw.bb:                                            ; preds = %for.body
  %7 = load ptr, ptr %m.addr, align 8, !dbg !6003
  call void @seq_puts(ptr noundef %7, ptr noundef @.str.3) #18, !dbg !6005
  br label %sw.epilog, !dbg !6006

sw.bb1:                                           ; preds = %for.body
  %8 = load ptr, ptr %m.addr, align 8, !dbg !6007
  call void @seq_puts(ptr noundef %8, ptr noundef @.str.4) #18, !dbg !6008
  br label %sw.epilog, !dbg !6009

sw.bb2:                                           ; preds = %for.body
  %9 = load ptr, ptr %m.addr, align 8, !dbg !6010
  call void @seq_puts(ptr noundef %9, ptr noundef @.str.5) #18, !dbg !6011
  br label %sw.epilog, !dbg !6012

sw.epilog:                                        ; preds = %for.body, %sw.bb2, %sw.bb1, %sw.bb
  %10 = load ptr, ptr %pool.addr, align 8, !dbg !6013
  %caching = getelementptr inbounds %struct.ttm_pool, ptr %10, i32 0, i32 4, !dbg !6014
  %11 = load i32, ptr %i, align 4, !dbg !6015
  %idxprom = zext i32 %11 to i64, !dbg !6013
  %arrayidx = getelementptr [3 x %struct.anon.14], ptr %caching, i64 0, i64 %idxprom, !dbg !6013
  %orders = getelementptr inbounds %struct.anon.14, ptr %arrayidx, i32 0, i32 0, !dbg !6016
  %arraydecay = getelementptr inbounds [11 x %struct.ttm_pool_type], ptr %orders, i64 0, i64 0, !dbg !6013
  %12 = load ptr, ptr %m.addr, align 8, !dbg !6017
  call void @ttm_pool_debugfs_orders(ptr noundef %arraydecay, ptr noundef %12) #18, !dbg !6018
  br label %for.inc, !dbg !6019

for.inc:                                          ; preds = %sw.epilog
  %13 = load i32, ptr %i, align 4, !dbg !6020
  %inc = add i32 %13, 1, !dbg !6020
  store i32 %inc, ptr %i, align 4, !dbg !6020
  br label %for.cond, !dbg !6021, !llvm.loop !6022

for.end:                                          ; preds = %for.cond
  call void @spin_unlock(ptr noundef @shrinker_lock) #18, !dbg !6024
  %14 = load ptr, ptr %m.addr, align 8, !dbg !6025
  call void @ttm_pool_debugfs_footer(ptr noundef %14) #18, !dbg !6026
  store i32 0, ptr %retval, align 4, !dbg !6027
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6027

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !6028
  %15 = load i32, ptr %retval, align 4, !dbg !6028
  ret i32 %15, !dbg !6028
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6029 dso_local void @seq_puts(ptr noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ttm_pool_debugfs_header(ptr noundef %m) #0 align 16 !dbg !6032 {
entry:
  %m.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !6036, metadata !DIExpression()), !dbg !6038
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !6039
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6037, metadata !DIExpression()), !dbg !6040
  %0 = load ptr, ptr %m.addr, align 8, !dbg !6041
  call void @seq_puts(ptr noundef %0, ptr noundef @.str.11) #18, !dbg !6042
  store i32 0, ptr %i, align 4, !dbg !6043
  br label %for.cond, !dbg !6045

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !dbg !6046
  %cmp = icmp ult i32 %1, 11, !dbg !6048
  br i1 %cmp, label %for.body, label %for.end, !dbg !6049

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %m.addr, align 8, !dbg !6050
  %3 = load i32, ptr %i, align 4, !dbg !6051
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %2, ptr noundef @.str.12, i32 noundef %3) #18, !dbg !6052
  br label %for.inc, !dbg !6052

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4, !dbg !6053
  %inc = add i32 %4, 1, !dbg !6053
  store i32 %inc, ptr %i, align 4, !dbg !6053
  br label %for.cond, !dbg !6054, !llvm.loop !6055

for.end:                                          ; preds = %for.cond
  %5 = load ptr, ptr %m.addr, align 8, !dbg !6057
  call void @seq_puts(ptr noundef %5, ptr noundef @.str.13) #18, !dbg !6058
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !6059
  ret void, !dbg !6059
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #5 align 16 !dbg !6060 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6065, metadata !DIExpression()), !dbg !6066
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6067
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6067
  call void @_raw_spin_lock(ptr noundef %1) #18, !dbg !6067
  ret void, !dbg !6068
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ttm_pool_debugfs_orders(ptr noundef %pt, ptr noundef %m) #0 align 16 !dbg !6069 {
entry:
  %pt.addr = alloca ptr, align 8
  %m.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %pt, ptr %pt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pt.addr, metadata !6073, metadata !DIExpression()), !dbg !6076
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !6074, metadata !DIExpression()), !dbg !6077
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !6078
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6075, metadata !DIExpression()), !dbg !6079
  store i32 0, ptr %i, align 4, !dbg !6080
  br label %for.cond, !dbg !6082

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !6083
  %cmp = icmp ult i32 %0, 11, !dbg !6085
  br i1 %cmp, label %for.body, label %for.end, !dbg !6086

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %m.addr, align 8, !dbg !6087
  %2 = load ptr, ptr %pt.addr, align 8, !dbg !6088
  %3 = load i32, ptr %i, align 4, !dbg !6089
  %idxprom = zext i32 %3 to i64, !dbg !6088
  %arrayidx = getelementptr %struct.ttm_pool_type, ptr %2, i64 %idxprom, !dbg !6088
  %call = call i32 @ttm_pool_type_count(ptr noundef %arrayidx) #18, !dbg !6090
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef @.str.14, i32 noundef %call) #18, !dbg !6091
  br label %for.inc, !dbg !6091

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4, !dbg !6092
  %inc = add i32 %4, 1, !dbg !6092
  store i32 %inc, ptr %i, align 4, !dbg !6092
  br label %for.cond, !dbg !6093, !llvm.loop !6094

for.end:                                          ; preds = %for.cond
  %5 = load ptr, ptr %m.addr, align 8, !dbg !6096
  call void @seq_puts(ptr noundef %5, ptr noundef @.str.13) #18, !dbg !6097
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !6098
  ret void, !dbg !6098
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #5 align 16 !dbg !6099 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6101, metadata !DIExpression()), !dbg !6102
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6103
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6103
  call void @_raw_spin_unlock(ptr noundef %1) #18, !dbg !6103
  ret void, !dbg !6104
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ttm_pool_debugfs_footer(ptr noundef %m) #0 align 16 !dbg !6105 {
entry:
  %m.addr = alloca ptr, align 8
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !6107, metadata !DIExpression()), !dbg !6108
  %0 = load ptr, ptr %m.addr, align 8, !dbg !6109
  %call = call i64 @atomic_long_read(ptr noundef @allocated_pages) #18, !dbg !6110
  %1 = load i64, ptr @page_pool_size, align 8, !dbg !6111
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef @.str.15, i64 noundef %call, i64 noundef %1) #18, !dbg !6112
  ret void, !dbg !6113
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ttm_pool_mgr_init(i64 noundef %num_pages) #0 align 16 !dbg !6114 {
entry:
  %num_pages.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %.compoundliteral = alloca %struct.spinlock, align 4
  store i64 %num_pages, ptr %num_pages.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %num_pages.addr, metadata !6118, metadata !DIExpression()), !dbg !6120
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !6121
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6119, metadata !DIExpression()), !dbg !6122
  %0 = load i64, ptr @page_pool_size, align 8, !dbg !6123
  %tobool = icmp ne i64 %0, 0, !dbg !6123
  br i1 %tobool, label %if.end, label %if.then, !dbg !6125

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %num_pages.addr, align 8, !dbg !6126
  store i64 %1, ptr @page_pool_size, align 8, !dbg !6127
  br label %if.end, !dbg !6128

if.end:                                           ; preds = %if.then, %entry
  br label %do.body, !dbg !6129

do.body:                                          ; preds = %if.end
  %call = call ptr @spinlock_check(ptr noundef @shrinker_lock) #18, !dbg !6130
  %2 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !6130
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %2, i32 0, i32 0, !dbg !6130
  %3 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !6130
  %counter = getelementptr inbounds %struct.atomic_t, ptr %3, i32 0, i32 0, !dbg !6130
  store i32 0, ptr %counter, align 4, !dbg !6130
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 @shrinker_lock, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !6130
  br label %do.cond, !dbg !6130

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6130

do.end:                                           ; preds = %do.cond
  call void @INIT_LIST_HEAD(ptr noundef @shrinker_list) #18, !dbg !6132
  store i32 0, ptr %i, align 4, !dbg !6133
  br label %for.cond, !dbg !6135

for.cond:                                         ; preds = %for.inc, %do.end
  %4 = load i32, ptr %i, align 4, !dbg !6136
  %cmp = icmp ult i32 %4, 11, !dbg !6138
  br i1 %cmp, label %for.body, label %for.end, !dbg !6139

for.body:                                         ; preds = %for.cond
  %5 = load i32, ptr %i, align 4, !dbg !6140
  %idxprom = zext i32 %5 to i64, !dbg !6142
  %arrayidx = getelementptr [11 x %struct.ttm_pool_type], ptr @global_write_combined, i64 0, i64 %idxprom, !dbg !6142
  %6 = load i32, ptr %i, align 4, !dbg !6143
  call void @ttm_pool_type_init(ptr noundef %arrayidx, ptr noundef null, i32 noundef 1, i32 noundef %6) #18, !dbg !6144
  %7 = load i32, ptr %i, align 4, !dbg !6145
  %idxprom1 = zext i32 %7 to i64, !dbg !6146
  %arrayidx2 = getelementptr [11 x %struct.ttm_pool_type], ptr @global_uncached, i64 0, i64 %idxprom1, !dbg !6146
  %8 = load i32, ptr %i, align 4, !dbg !6147
  call void @ttm_pool_type_init(ptr noundef %arrayidx2, ptr noundef null, i32 noundef 0, i32 noundef %8) #18, !dbg !6148
  %9 = load i32, ptr %i, align 4, !dbg !6149
  %idxprom3 = zext i32 %9 to i64, !dbg !6150
  %arrayidx4 = getelementptr [11 x %struct.ttm_pool_type], ptr @global_dma32_write_combined, i64 0, i64 %idxprom3, !dbg !6150
  %10 = load i32, ptr %i, align 4, !dbg !6151
  call void @ttm_pool_type_init(ptr noundef %arrayidx4, ptr noundef null, i32 noundef 1, i32 noundef %10) #18, !dbg !6152
  %11 = load i32, ptr %i, align 4, !dbg !6153
  %idxprom5 = zext i32 %11 to i64, !dbg !6154
  %arrayidx6 = getelementptr [11 x %struct.ttm_pool_type], ptr @global_dma32_uncached, i64 0, i64 %idxprom5, !dbg !6154
  %12 = load i32, ptr %i, align 4, !dbg !6155
  call void @ttm_pool_type_init(ptr noundef %arrayidx6, ptr noundef null, i32 noundef 0, i32 noundef %12) #18, !dbg !6156
  br label %for.inc, !dbg !6157

for.inc:                                          ; preds = %for.body
  %13 = load i32, ptr %i, align 4, !dbg !6158
  %inc = add i32 %13, 1, !dbg !6158
  store i32 %inc, ptr %i, align 4, !dbg !6158
  br label %for.cond, !dbg !6159, !llvm.loop !6160

for.end:                                          ; preds = %for.cond
  %14 = load ptr, ptr @ttm_debugfs_root, align 8, !dbg !6162
  %call7 = call ptr @debugfs_create_file(ptr noundef @.str.6, i16 noundef zeroext 292, ptr noundef %14, ptr noundef null, ptr noundef @ttm_pool_debugfs_globals_fops) #18, !dbg !6163
  %15 = load ptr, ptr @ttm_debugfs_root, align 8, !dbg !6164
  %call8 = call ptr @debugfs_create_file(ptr noundef @.str.7, i16 noundef zeroext 256, ptr noundef %15, ptr noundef null, ptr noundef @ttm_pool_debugfs_shrink_fops) #18, !dbg !6165
  store ptr @ttm_pool_shrinker_count, ptr @mm_shrinker, align 8, !dbg !6166
  store ptr @ttm_pool_shrinker_scan, ptr getelementptr inbounds (%struct.shrinker, ptr @mm_shrinker, i32 0, i32 1), align 8, !dbg !6167
  store i32 1, ptr getelementptr inbounds (%struct.shrinker, ptr @mm_shrinker, i32 0, i32 3), align 8, !dbg !6168
  %call9 = call i32 (ptr, ptr, ...) @register_shrinker(ptr noundef @mm_shrinker, ptr noundef @.str.8) #18, !dbg !6169
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !6170
  ret i32 %call9, !dbg !6171
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #5 align 16 !dbg !6172 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6177, metadata !DIExpression()), !dbg !6178
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6179
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6180
  ret ptr %1, !dbg !6181
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #3 align 16 !dbg !6182 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !6187, metadata !DIExpression()), !dbg !6188
  br label %do.body, !dbg !6189

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6190

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !6192

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !6190

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !6194
  %1 = load ptr, ptr %list.addr, align 8, !dbg !6194
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !6194
  store volatile ptr %0, ptr %next, align 8, !dbg !6194
  br label %do.end3, !dbg !6194

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !6190

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !6196

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !6197

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !6199

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !6197

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !6201
  %3 = load ptr, ptr %list.addr, align 8, !dbg !6201
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !6201
  store volatile ptr %2, ptr %prev, align 8, !dbg !6201
  br label %do.end9, !dbg !6201

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !6197

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !6203
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6204 dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ttm_pool_shrinker_count(ptr noundef %shrink, ptr noundef %sc) #0 align 16 !dbg !6208 {
entry:
  %shrink.addr = alloca ptr, align 8
  %sc.addr = alloca ptr, align 8
  %num_pages = alloca i64, align 8
  store ptr %shrink, ptr %shrink.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %shrink.addr, metadata !6210, metadata !DIExpression()), !dbg !6213
  store ptr %sc, ptr %sc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sc.addr, metadata !6211, metadata !DIExpression()), !dbg !6214
  call void @llvm.lifetime.start.p0(i64 8, ptr %num_pages) #17, !dbg !6215
  call void @llvm.dbg.declare(metadata ptr %num_pages, metadata !6212, metadata !DIExpression()), !dbg !6216
  %call = call i64 @atomic_long_read(ptr noundef @allocated_pages) #18, !dbg !6217
  store i64 %call, ptr %num_pages, align 8, !dbg !6216
  %0 = load i64, ptr %num_pages, align 8, !dbg !6218
  %tobool = icmp ne i64 %0, 0, !dbg !6218
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !6218

cond.true:                                        ; preds = %entry
  %1 = load i64, ptr %num_pages, align 8, !dbg !6219
  br label %cond.end, !dbg !6218

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !6218

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %1, %cond.true ], [ -2, %cond.false ], !dbg !6218
  call void @llvm.lifetime.end.p0(i64 8, ptr %num_pages) #17, !dbg !6220
  ret i64 %cond, !dbg !6221
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ttm_pool_shrinker_scan(ptr noundef %shrink, ptr noundef %sc) #0 align 16 !dbg !6222 {
entry:
  %shrink.addr = alloca ptr, align 8
  %sc.addr = alloca ptr, align 8
  %num_freed = alloca i64, align 8
  store ptr %shrink, ptr %shrink.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %shrink.addr, metadata !6224, metadata !DIExpression()), !dbg !6227
  store ptr %sc, ptr %sc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sc.addr, metadata !6225, metadata !DIExpression()), !dbg !6228
  call void @llvm.lifetime.start.p0(i64 8, ptr %num_freed) #17, !dbg !6229
  call void @llvm.dbg.declare(metadata ptr %num_freed, metadata !6226, metadata !DIExpression()), !dbg !6230
  store i64 0, ptr %num_freed, align 8, !dbg !6230
  br label %do.body, !dbg !6231

do.body:                                          ; preds = %land.end, %entry
  %call = call i32 @ttm_pool_shrink() #18, !dbg !6232
  %conv = zext i32 %call to i64, !dbg !6232
  %0 = load i64, ptr %num_freed, align 8, !dbg !6233
  %add = add i64 %0, %conv, !dbg !6233
  store i64 %add, ptr %num_freed, align 8, !dbg !6233
  br label %do.cond, !dbg !6234

do.cond:                                          ; preds = %do.body
  %1 = load i64, ptr %num_freed, align 8, !dbg !6235
  %tobool = icmp ne i64 %1, 0, !dbg !6235
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !6236

land.rhs:                                         ; preds = %do.cond
  %call1 = call i64 @atomic_long_read(ptr noundef @allocated_pages) #18, !dbg !6237
  %tobool2 = icmp ne i64 %call1, 0, !dbg !6236
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %2 = phi i1 [ false, %do.cond ], [ %tobool2, %land.rhs ], !dbg !6238
  br i1 %2, label %do.body, label %do.end, !dbg !6234, !llvm.loop !6239

do.end:                                           ; preds = %land.end
  %3 = load i64, ptr %num_freed, align 8, !dbg !6241
  call void @llvm.lifetime.end.p0(i64 8, ptr %num_freed) #17, !dbg !6242
  ret i64 %3, !dbg !6243
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6244 dso_local i32 @register_shrinker(ptr noundef, ptr noundef, ...) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @ttm_pool_mgr_fini() #0 align 16 !dbg !6247 {
entry:
  %i = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !6255
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6249, metadata !DIExpression()), !dbg !6256
  store i32 0, ptr %i, align 4, !dbg !6257
  br label %for.cond, !dbg !6259

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !6260
  %cmp = icmp ult i32 %0, 11, !dbg !6262
  br i1 %cmp, label %for.body, label %for.end, !dbg !6263

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !dbg !6264
  %idxprom = zext i32 %1 to i64, !dbg !6266
  %arrayidx = getelementptr [11 x %struct.ttm_pool_type], ptr @global_write_combined, i64 0, i64 %idxprom, !dbg !6266
  call void @ttm_pool_type_fini(ptr noundef %arrayidx) #18, !dbg !6267
  %2 = load i32, ptr %i, align 4, !dbg !6268
  %idxprom1 = zext i32 %2 to i64, !dbg !6269
  %arrayidx2 = getelementptr [11 x %struct.ttm_pool_type], ptr @global_uncached, i64 0, i64 %idxprom1, !dbg !6269
  call void @ttm_pool_type_fini(ptr noundef %arrayidx2) #18, !dbg !6270
  %3 = load i32, ptr %i, align 4, !dbg !6271
  %idxprom3 = zext i32 %3 to i64, !dbg !6272
  %arrayidx4 = getelementptr [11 x %struct.ttm_pool_type], ptr @global_dma32_write_combined, i64 0, i64 %idxprom3, !dbg !6272
  call void @ttm_pool_type_fini(ptr noundef %arrayidx4) #18, !dbg !6273
  %4 = load i32, ptr %i, align 4, !dbg !6274
  %idxprom5 = zext i32 %4 to i64, !dbg !6275
  %arrayidx6 = getelementptr [11 x %struct.ttm_pool_type], ptr @global_dma32_uncached, i64 0, i64 %idxprom5, !dbg !6275
  call void @ttm_pool_type_fini(ptr noundef %arrayidx6) #18, !dbg !6276
  br label %for.inc, !dbg !6277

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4, !dbg !6278
  %inc = add i32 %5, 1, !dbg !6278
  store i32 %inc, ptr %i, align 4, !dbg !6278
  br label %for.cond, !dbg !6279, !llvm.loop !6280

for.end:                                          ; preds = %for.cond
  call void @unregister_shrinker(ptr noundef @mm_shrinker) #18, !dbg !6282
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !6283
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6250, metadata !DIExpression()), !dbg !6283
  %call = call i32 @list_empty(ptr noundef @shrinker_list) #18, !dbg !6283
  %tobool = icmp ne i32 %call, 0, !dbg !6283
  %lnot = xor i1 %tobool, true, !dbg !6283
  %lnot7 = xor i1 %lnot, true, !dbg !6283
  %lnot8 = xor i1 %lnot7, true, !dbg !6283
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !6283
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6283
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !6284
  %tobool9 = icmp ne i32 %6, 0, !dbg !6284
  %lnot10 = xor i1 %tobool9, true, !dbg !6284
  %lnot12 = xor i1 %lnot10, true, !dbg !6284
  %lnot.ext13 = zext i1 %lnot12 to i32, !dbg !6284
  %conv = sext i32 %lnot.ext13 to i64, !dbg !6284
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6284
  %tobool14 = icmp ne i64 %expval, 0, !dbg !6284
  br i1 %tobool14, label %if.then, label %if.end, !dbg !6283

if.then:                                          ; preds = %for.end
  br label %do.body, !dbg !6284

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #17, !dbg !6285
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6252, metadata !DIExpression()), !dbg !6285
  store i32 2305, ptr %__flags, align 4, !dbg !6285
  br label %do.body15, !dbg !6285

do.body15:                                        ; preds = %do.body
  br label %do.cond, !dbg !6286

do.cond:                                          ; preds = %do.body15
  br label %do.end, !dbg !6286

do.end:                                           ; preds = %do.cond
  br label %do.body16, !dbg !6285

do.body16:                                        ; preds = %do.end
  %7 = load i32, ptr %__flags, align 4, !dbg !6288
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 824, i32 %7, i64 12) #17, !dbg !6288, !srcloc !6290
  br label %do.cond17, !dbg !6288

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !6288

do.end18:                                         ; preds = %do.cond17
  br label %do.body19, !dbg !6285

do.body19:                                        ; preds = %do.end18
  br label %do.cond20, !dbg !6291

do.cond20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !6291

do.end21:                                         ; preds = %do.cond20
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #17, !dbg !6284
  br label %do.cond22, !dbg !6285

do.cond22:                                        ; preds = %do.end21
  br label %do.end23, !dbg !6285

do.end23:                                         ; preds = %do.cond22
  br label %if.end, !dbg !6285

if.end:                                           ; preds = %do.end23, %for.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !6283
  %tobool24 = icmp ne i32 %8, 0, !dbg !6283
  %lnot25 = xor i1 %tobool24, true, !dbg !6283
  %lnot27 = xor i1 %lnot25, true, !dbg !6283
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !6283
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !6283
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !6283
  store i64 %expval30, ptr %tmp, align 8, !dbg !6284
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !6293
  %9 = load i64, ptr %tmp, align 8, !dbg !6283
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !6294
  ret void, !dbg !6294
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6295 dso_local void @unregister_shrinker(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #3 align 16 !dbg !6298 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6304, metadata !DIExpression()), !dbg !6305
  br label %do.body, !dbg !6306

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6308

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !6306
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !6306
  %1 = load volatile ptr, ptr %next, align 8, !dbg !6306
  store ptr %1, ptr %tmp, align 8, !dbg !6308
  %2 = load ptr, ptr %tmp, align 8, !dbg !6306
  %3 = load ptr, ptr %head.addr, align 8, !dbg !6310
  %cmp = icmp eq ptr %2, %3, !dbg !6311
  %conv = zext i1 %cmp to i32, !dbg !6311
  ret i32 %conv, !dbg !6312
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_long_sub(i64 noundef %i, ptr noundef %v) #5 align 16 !dbg !6313 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6317, metadata !DIExpression()), !dbg !6319
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6318, metadata !DIExpression()), !dbg !6320
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6321
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 8) #18, !dbg !6322
  %1 = load i64, ptr %i.addr, align 8, !dbg !6323
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6324
  call void @raw_atomic_long_sub(i64 noundef %1, ptr noundef %2) #18, !dbg !6325
  ret void, !dbg !6326
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #3 align 16 !dbg !6327 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6329, metadata !DIExpression()), !dbg !6330
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6331
  call void @__list_del_entry(ptr noundef %0) #18, !dbg !6332
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6333
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !6334
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !6335
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !6336
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !6337
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !6338
  ret void, !dbg !6339
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !6340 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6348, metadata !DIExpression()), !dbg !6350
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6349, metadata !DIExpression()), !dbg !6351
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6352
  %1 = load i64, ptr %size.addr, align 8, !dbg !6353
  %conv = trunc i64 %1 to i32, !dbg !6353
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #18, !dbg !6354
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6355
  %3 = load i64, ptr %size.addr, align 8, !dbg !6355
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #18, !dbg !6355
  ret void, !dbg !6356
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_long_sub(i64 noundef %i, ptr noundef %v) #5 align 16 !dbg !6357 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6359, metadata !DIExpression()), !dbg !6361
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6360, metadata !DIExpression()), !dbg !6362
  %0 = load i64, ptr %i.addr, align 8, !dbg !6363
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6364
  call void @raw_atomic64_sub(i64 noundef %0, ptr noundef %1) #18, !dbg !6365
  ret void, !dbg !6366
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !6367 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6372, metadata !DIExpression()), !dbg !6374
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6373, metadata !DIExpression()), !dbg !6375
  ret i1 true, !dbg !6376
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !6377 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6382, metadata !DIExpression()), !dbg !6385
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6383, metadata !DIExpression()), !dbg !6386
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6384, metadata !DIExpression()), !dbg !6387
  ret void, !dbg !6388
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic64_sub(i64 noundef %i, ptr noundef %v) #5 align 16 !dbg !6389 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6395, metadata !DIExpression()), !dbg !6397
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6396, metadata !DIExpression()), !dbg !6398
  %0 = load i64, ptr %i.addr, align 8, !dbg !6399
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6400
  call void @arch_atomic64_sub(i64 noundef %0, ptr noundef %1) #18, !dbg !6401
  ret void, !dbg !6402
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic64_sub(i64 noundef %i, ptr noundef %v) #5 align 16 !dbg !6403 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6406, metadata !DIExpression()), !dbg !6408
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6407, metadata !DIExpression()), !dbg !6409
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6410
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %0, i32 0, i32 0, !dbg !6411
  %1 = load i64, ptr %i.addr, align 8, !dbg !6412
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6413
  %counter1 = getelementptr inbounds %struct.atomic64_t, ptr %2, i32 0, i32 0, !dbg !6414
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; subq $1,$0", "=*m,er,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %counter, i64 %1, ptr elementtype(i64) %counter1) #17, !dbg !6415, !srcloc !6416
  ret void, !dbg !6417
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #3 align 16 !dbg !6418 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6420, metadata !DIExpression()), !dbg !6421
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6422
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #18, !dbg !6424
  br i1 %call, label %if.end, label %if.then, !dbg !6425

if.then:                                          ; preds = %entry
  br label %return, !dbg !6426

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6427
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6428
  %2 = load ptr, ptr %prev, align 8, !dbg !6428
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !6429
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6430
  %4 = load ptr, ptr %next, align 8, !dbg !6430
  call void @__list_del(ptr noundef %2, ptr noundef %4) #18, !dbg !6431
  br label %return, !dbg !6432

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6432
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #3 align 16 !dbg !6433 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6437, metadata !DIExpression()), !dbg !6438
  ret i1 true, !dbg !6439
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !6440 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6444, metadata !DIExpression()), !dbg !6446
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6445, metadata !DIExpression()), !dbg !6447
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !6448
  %1 = load ptr, ptr %next.addr, align 8, !dbg !6449
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6450
  store ptr %0, ptr %prev1, align 8, !dbg !6451
  br label %do.body, !dbg !6452

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !6453

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !6455

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !6453

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6457
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !6457
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6457
  store volatile ptr %2, ptr %next4, align 8, !dbg !6457
  br label %do.end5, !dbg !6457

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !6453

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !6459
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6460 dso_local i32 @set_pages_array_wc(ptr noundef, i32 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6464 dso_local i32 @set_pages_array_uc(ptr noundef, i32 noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ttm_pool_map(ptr noundef %pool, i32 noundef %order, ptr noundef %p, ptr noundef %dma_addr) #0 align 16 !dbg !6465 {
entry:
  %retval = alloca i32, align 4
  %pool.addr = alloca ptr, align 8
  %order.addr = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %dma_addr.addr = alloca ptr, align 8
  %addr = alloca i64, align 8
  %i = alloca i32, align 4
  %dma = alloca ptr, align 8
  %size = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !6469, metadata !DIExpression()), !dbg !6480
  store i32 %order, ptr %order.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %order.addr, metadata !6470, metadata !DIExpression()), !dbg !6481
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6471, metadata !DIExpression()), !dbg !6482
  store ptr %dma_addr, ptr %dma_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dma_addr.addr, metadata !6472, metadata !DIExpression()), !dbg !6483
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr) #17, !dbg !6484
  call void @llvm.dbg.declare(metadata ptr %addr, metadata !6473, metadata !DIExpression()), !dbg !6485
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !6486
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6474, metadata !DIExpression()), !dbg !6487
  %0 = load ptr, ptr %pool.addr, align 8, !dbg !6488
  %use_dma_alloc = getelementptr inbounds %struct.ttm_pool, ptr %0, i32 0, i32 2, !dbg !6489
  %1 = load i8, ptr %use_dma_alloc, align 4, !dbg !6489, !range !4954, !noundef !571
  %tobool = trunc i8 %1 to i1, !dbg !6489
  br i1 %tobool, label %if.then, label %if.else, !dbg !6490

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %dma) #17, !dbg !6491
  call void @llvm.dbg.declare(metadata ptr %dma, metadata !6475, metadata !DIExpression()), !dbg !6492
  %2 = load ptr, ptr %p.addr, align 8, !dbg !6493
  %3 = getelementptr inbounds %struct.page, ptr %2, i32 0, i32 1, !dbg !6494
  %private = getelementptr inbounds %struct.anon.16, ptr %3, i32 0, i32 3, !dbg !6494
  %4 = load i64, ptr %private, align 8, !dbg !6494
  %5 = inttoptr i64 %4 to ptr, !dbg !6495
  store ptr %5, ptr %dma, align 8, !dbg !6492
  %6 = load ptr, ptr %dma, align 8, !dbg !6496
  %addr1 = getelementptr inbounds %struct.ttm_pool_dma, ptr %6, i32 0, i32 0, !dbg !6497
  %7 = load i64, ptr %addr1, align 8, !dbg !6497
  store i64 %7, ptr %addr, align 8, !dbg !6498
  call void @llvm.lifetime.end.p0(i64 8, ptr %dma) #17, !dbg !6499
  br label %if.end6, !dbg !6500

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #17, !dbg !6501
  call void @llvm.dbg.declare(metadata ptr %size, metadata !6478, metadata !DIExpression()), !dbg !6502
  %8 = load i32, ptr %order.addr, align 4, !dbg !6503
  %sh_prom = zext i32 %8 to i64, !dbg !6504
  %shl = shl i64 1, %sh_prom, !dbg !6504
  %mul = mul i64 %shl, 4096, !dbg !6505
  store i64 %mul, ptr %size, align 8, !dbg !6502
  %9 = load ptr, ptr %pool.addr, align 8, !dbg !6506
  %dev = getelementptr inbounds %struct.ttm_pool, ptr %9, i32 0, i32 0, !dbg !6506
  %10 = load ptr, ptr %dev, align 8, !dbg !6506
  %11 = load ptr, ptr %p.addr, align 8, !dbg !6506
  %12 = load i64, ptr %size, align 8, !dbg !6506
  %call = call i64 @dma_map_page_attrs(ptr noundef %10, ptr noundef %11, i64 noundef 0, i64 noundef %12, i32 noundef 0, i64 noundef 0) #18, !dbg !6506
  store i64 %call, ptr %addr, align 8, !dbg !6507
  %13 = load ptr, ptr %pool.addr, align 8, !dbg !6508
  %dev2 = getelementptr inbounds %struct.ttm_pool, ptr %13, i32 0, i32 0, !dbg !6510
  %14 = load ptr, ptr %dev2, align 8, !dbg !6510
  %15 = load i64, ptr %addr, align 8, !dbg !6511
  %call3 = call i32 @dma_mapping_error(ptr noundef %14, i64 noundef %15) #18, !dbg !6512
  %tobool4 = icmp ne i32 %call3, 0, !dbg !6512
  br i1 %tobool4, label %if.then5, label %if.end, !dbg !6513

if.then5:                                         ; preds = %if.else
  store i32 -14, ptr %retval, align 4, !dbg !6514
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6514

if.end:                                           ; preds = %if.else
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6515
  br label %cleanup, !dbg !6515

cleanup:                                          ; preds = %if.end, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #17, !dbg !6515
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup9 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end6

if.end6:                                          ; preds = %cleanup.cont, %if.then
  %16 = load i32, ptr %order.addr, align 4, !dbg !6516
  %shl7 = shl i32 1, %16, !dbg !6518
  store i32 %shl7, ptr %i, align 4, !dbg !6519
  br label %for.cond, !dbg !6520

for.cond:                                         ; preds = %for.inc, %if.end6
  %17 = load i32, ptr %i, align 4, !dbg !6521
  %tobool8 = icmp ne i32 %17, 0, !dbg !6523
  br i1 %tobool8, label %for.body, label %for.end, !dbg !6523

for.body:                                         ; preds = %for.cond
  %18 = load i64, ptr %addr, align 8, !dbg !6524
  %19 = load ptr, ptr %dma_addr.addr, align 8, !dbg !6526
  %20 = load ptr, ptr %19, align 8, !dbg !6527
  %incdec.ptr = getelementptr i64, ptr %20, i32 1, !dbg !6527
  store ptr %incdec.ptr, ptr %19, align 8, !dbg !6527
  store i64 %18, ptr %20, align 8, !dbg !6528
  %21 = load i64, ptr %addr, align 8, !dbg !6529
  %add = add i64 %21, 4096, !dbg !6529
  store i64 %add, ptr %addr, align 8, !dbg !6529
  br label %for.inc, !dbg !6530

for.inc:                                          ; preds = %for.body
  %22 = load i32, ptr %i, align 4, !dbg !6531
  %dec = add i32 %22, -1, !dbg !6531
  store i32 %dec, ptr %i, align 4, !dbg !6531
  br label %for.cond, !dbg !6532, !llvm.loop !6533

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !6535
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup9, !dbg !6535

cleanup9:                                         ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !6536
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr) #17, !dbg !6536
  %23 = load i32, ptr %retval, align 4, !dbg !6536
  ret i32 %23, !dbg !6536
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6537 dso_local i64 @dma_map_page_attrs(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dma_mapping_error(ptr noundef %dev, i64 noundef %dma_addr) #3 align 16 !dbg !6541 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %dma_addr.addr = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6545, metadata !DIExpression()), !dbg !6547
  store i64 %dma_addr, ptr %dma_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dma_addr.addr, metadata !6546, metadata !DIExpression()), !dbg !6548
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6549
  %1 = load i64, ptr %dma_addr.addr, align 8, !dbg !6550
  call void @debug_dma_mapping_error(ptr noundef %0, i64 noundef %1) #18, !dbg !6551
  %2 = load i64, ptr %dma_addr.addr, align 8, !dbg !6552
  %cmp = icmp eq i64 %2, -1, !dbg !6552
  %lnot = xor i1 %cmp, true, !dbg !6552
  %lnot1 = xor i1 %lnot, true, !dbg !6552
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6552
  %conv = sext i32 %lnot.ext to i64, !dbg !6552
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6552
  %tobool = icmp ne i64 %expval, 0, !dbg !6552
  br i1 %tobool, label %if.then, label %if.end, !dbg !6554

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !6555
  br label %return, !dbg !6555

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6556
  br label %return, !dbg !6556

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !6557
  ret i32 %3, !dbg !6557
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @debug_dma_mapping_error(ptr noundef %dev, i64 noundef %dma_addr) #3 align 16 !dbg !6558 {
entry:
  %dev.addr = alloca ptr, align 8
  %dma_addr.addr = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6562, metadata !DIExpression()), !dbg !6564
  store i64 %dma_addr, ptr %dma_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dma_addr.addr, metadata !6563, metadata !DIExpression()), !dbg !6565
  ret void, !dbg !6566
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @alloc_pages_node(i32 noundef %nid, i32 noundef %gfp_mask, i32 noundef %order) #3 align 16 !dbg !6567 {
entry:
  %nid.addr = alloca i32, align 4
  %gfp_mask.addr = alloca i32, align 4
  %order.addr = alloca i32, align 4
  store i32 %nid, ptr %nid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nid.addr, metadata !6571, metadata !DIExpression()), !dbg !6574
  store i32 %gfp_mask, ptr %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_mask.addr, metadata !6572, metadata !DIExpression()), !dbg !6575
  store i32 %order, ptr %order.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %order.addr, metadata !6573, metadata !DIExpression()), !dbg !6576
  %0 = load i32, ptr %nid.addr, align 4, !dbg !6577
  %cmp = icmp eq i32 %0, -1, !dbg !6579
  br i1 %cmp, label %if.then, label %if.end, !dbg !6580

if.then:                                          ; preds = %entry
  %call = call i32 @numa_mem_id() #18, !dbg !6581
  store i32 %call, ptr %nid.addr, align 4, !dbg !6582
  br label %if.end, !dbg !6583

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %nid.addr, align 4, !dbg !6584
  %2 = load i32, ptr %gfp_mask.addr, align 4, !dbg !6585
  %3 = load i32, ptr %order.addr, align 4, !dbg !6586
  %call1 = call ptr @__alloc_pages_node(i32 noundef %1, i32 noundef %2, i32 noundef %3) #18, !dbg !6587
  ret ptr %call1, !dbg !6588
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !6589 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6593, metadata !DIExpression()), !dbg !6598
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6594, metadata !DIExpression()), !dbg !6599
  %0 = load i64, ptr %size.addr, align 8, !dbg !6600
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6601
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6602

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6603
  %tobool = icmp ne i64 %2, 0, !dbg !6603
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6604

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #17, !dbg !6605
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6595, metadata !DIExpression()), !dbg !6606
  %3 = load i64, ptr %size.addr, align 8, !dbg !6607
  %cmp = icmp ugt i64 %3, 8192, !dbg !6609
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6610

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6611
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6612
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #20, !dbg !6613
  store ptr %call, ptr %retval, align 8, !dbg !6614
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6614

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6615
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #18, !dbg !6615
  store i32 %call2, ptr %index, align 4, !dbg !6616
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6617
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6618
  %9 = ptrtoint ptr %8 to i64, !dbg !6618
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #18, !dbg !6619
  %idxprom = zext i32 %call3 to i64, !dbg !6620
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6620
  %10 = load i32, ptr %index, align 4, !dbg !6621
  %idxprom4 = zext i32 %10 to i64, !dbg !6620
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6620
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6620
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6622
  %13 = load i64, ptr %size.addr, align 8, !dbg !6623
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #21, !dbg !6624
  store ptr %call6, ptr %retval, align 8, !dbg !6625
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6625

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #17, !dbg !6626
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6627
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6628
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #20, !dbg !6629
  store ptr %call8, ptr %retval, align 8, !dbg !6630
  br label %return, !dbg !6630

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6631
  ret ptr %16, !dbg !6631
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6632 dso_local ptr @dma_alloc_attrs(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i64 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6635 dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6638 dso_local ptr @vmalloc_to_page(ptr noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__phys_addr_nodebug(i64 noundef %x) #5 align 16 !dbg !6641 {
entry:
  %x.addr = alloca i64, align 8
  %y = alloca i64, align 8
  store i64 %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !6644, metadata !DIExpression()), !dbg !6646
  call void @llvm.lifetime.start.p0(i64 8, ptr %y) #17, !dbg !6647
  call void @llvm.dbg.declare(metadata ptr %y, metadata !6645, metadata !DIExpression()), !dbg !6648
  %0 = load i64, ptr %x.addr, align 8, !dbg !6649
  %sub = sub i64 %0, -2147483648, !dbg !6650
  store i64 %sub, ptr %y, align 8, !dbg !6648
  %1 = load i64, ptr %y, align 8, !dbg !6651
  %2 = load i64, ptr %x.addr, align 8, !dbg !6652
  %3 = load i64, ptr %y, align 8, !dbg !6653
  %cmp = icmp ugt i64 %2, %3, !dbg !6654
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6655

cond.true:                                        ; preds = %entry
  %4 = load i64, ptr @phys_base, align 8, !dbg !6656
  br label %cond.end, !dbg !6655

cond.false:                                       ; preds = %entry
  %5 = load i64, ptr @page_offset_base, align 8, !dbg !6657
  %sub1 = sub i64 -2147483648, %5, !dbg !6658
  br label %cond.end, !dbg !6655

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ %sub1, %cond.false ], !dbg !6655
  %add = add i64 %1, %cond, !dbg !6659
  store i64 %add, ptr %x.addr, align 8, !dbg !6660
  %6 = load i64, ptr %x.addr, align 8, !dbg !6661
  call void @llvm.lifetime.end.p0(i64 8, ptr %y) #17, !dbg !6662
  ret i64 %6, !dbg !6663
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6664 dso_local void @kfree(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @numa_mem_id() #3 align 16 !dbg !6667 {
entry:
  %call = call i32 @numa_node_id() #18, !dbg !6669
  ret i32 %call, !dbg !6670
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__alloc_pages_node(i32 noundef %nid, i32 noundef %gfp_mask, i32 noundef %order) #3 align 16 !dbg !6671 {
entry:
  %nid.addr = alloca i32, align 4
  %gfp_mask.addr = alloca i32, align 4
  %order.addr = alloca i32, align 4
  store i32 %nid, ptr %nid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nid.addr, metadata !6673, metadata !DIExpression()), !dbg !6676
  store i32 %gfp_mask, ptr %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_mask.addr, metadata !6674, metadata !DIExpression()), !dbg !6677
  store i32 %order, ptr %order.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %order.addr, metadata !6675, metadata !DIExpression()), !dbg !6678
  %0 = load i32, ptr %nid.addr, align 4, !dbg !6679
  %1 = load i32, ptr %gfp_mask.addr, align 4, !dbg !6680
  call void @warn_if_node_offline(i32 noundef %0, i32 noundef %1) #18, !dbg !6681
  %2 = load i32, ptr %gfp_mask.addr, align 4, !dbg !6682
  %3 = load i32, ptr %order.addr, align 4, !dbg !6683
  %4 = load i32, ptr %nid.addr, align 4, !dbg !6684
  %call = call ptr @__alloc_pages(i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef null) #18, !dbg !6685
  ret ptr %call, !dbg !6686
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @numa_node_id() #3 align 16 !dbg !6687 {
entry:
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #17, !dbg !6695
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6689, metadata !DIExpression()), !dbg !6695
  br label %do.body, !dbg !6695

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #17, !dbg !6696
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6691, metadata !DIExpression()), !dbg !6696
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6696
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6696
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #17, !dbg !6695
  br label %do.cond, !dbg !6696

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6696

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #17, !dbg !6697
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6693, metadata !DIExpression()), !dbg !6697
  %1 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @numa_node) #19, !dbg !6697, !srcloc !6698
  store i32 %1, ptr %pfo_val__, align 4, !dbg !6697
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !6697
  %conv = zext i32 %2 to i64, !dbg !6697
  %conv1 = trunc i64 %conv to i32, !dbg !6697
  store i32 %conv1, ptr %tmp, align 4, !dbg !6697
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #17, !dbg !6695
  %3 = load i32, ptr %tmp, align 4, !dbg !6697
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !6695
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !6695
  store i32 %4, ptr %tmp2, align 4, !dbg !6695
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #17, !dbg !6699
  %5 = load i32, ptr %tmp2, align 4, !dbg !6695
  ret i32 %5, !dbg !6700
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @warn_if_node_offline(i32 noundef %this_node, i32 noundef %gfp_mask) #3 align 16 !dbg !6701 {
entry:
  %this_node.addr = alloca i32, align 4
  %gfp_mask.addr = alloca i32, align 4
  %warn_gfp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %this_node, ptr %this_node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %this_node.addr, metadata !6705, metadata !DIExpression()), !dbg !6708
  store i32 %gfp_mask, ptr %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_mask.addr, metadata !6706, metadata !DIExpression()), !dbg !6709
  call void @llvm.lifetime.start.p0(i64 4, ptr %warn_gfp) #17, !dbg !6710
  call void @llvm.dbg.declare(metadata ptr %warn_gfp, metadata !6707, metadata !DIExpression()), !dbg !6711
  %0 = load i32, ptr %gfp_mask.addr, align 4, !dbg !6712
  %and = and i32 %0, 2105344, !dbg !6713
  store i32 %and, ptr %warn_gfp, align 4, !dbg !6711
  %1 = load i32, ptr %warn_gfp, align 4, !dbg !6714
  %cmp = icmp ne i32 %1, 2105344, !dbg !6716
  br i1 %cmp, label %if.then, label %if.end, !dbg !6717

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6718

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %this_node.addr, align 4, !dbg !6719
  %call = call i32 @node_state(i32 noundef %2, i32 noundef 1) #18, !dbg !6719
  %tobool = icmp ne i32 %call, 0, !dbg !6719
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !6721

if.then1:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6722

if.end2:                                          ; preds = %if.end
  br label %do.body, !dbg !6723

do.body:                                          ; preds = %if.end2
  br label %do.cond, !dbg !6725

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6725

do.end:                                           ; preds = %do.cond
  %3 = load i32, ptr %this_node.addr, align 4, !dbg !6723
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef @.str.9, ptr noundef %gfp_mask.addr, i32 noundef %3) #22, !dbg !6723
  store i32 %call3, ptr %tmp, align 4, !dbg !6725
  %4 = load i32, ptr %tmp, align 4, !dbg !6723
  call void @dump_stack() #22, !dbg !6727
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6728
  br label %cleanup, !dbg !6728

cleanup:                                          ; preds = %do.end, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %warn_gfp) #17, !dbg !6728
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6728

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6729 dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @node_state(i32 noundef %node, i32 noundef %state) #3 align 16 !dbg !6733 {
entry:
  %node.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !6737, metadata !DIExpression()), !dbg !6739
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !6738, metadata !DIExpression()), !dbg !6740
  %0 = load i32, ptr %node.addr, align 4, !dbg !6741
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !6741
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !6741

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %state.addr, align 4, !dbg !6741
  %idxprom = zext i32 %2 to i64, !dbg !6741
  %arrayidx = getelementptr [6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 %idxprom, !dbg !6741
  %bits = getelementptr inbounds %struct.nodemask_t, ptr %arrayidx, i32 0, i32 0, !dbg !6741
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !6741
  %3 = ptrtoint ptr %arraydecay to i64, !dbg !6741
  %cmp = icmp ne i64 %3, 0, !dbg !6741
  %conv = zext i1 %cmp to i32, !dbg !6741
  %4 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !6741
  br i1 %4, label %land.lhs.true1, label %cond.false, !dbg !6741

land.lhs.true1:                                   ; preds = %land.lhs.true
  %5 = load i32, ptr %state.addr, align 4, !dbg !6741
  %idxprom2 = zext i32 %5 to i64, !dbg !6741
  %arrayidx3 = getelementptr [6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 %idxprom2, !dbg !6741
  %bits4 = getelementptr inbounds %struct.nodemask_t, ptr %arrayidx3, i32 0, i32 0, !dbg !6741
  %arraydecay5 = getelementptr inbounds [1 x i64], ptr %bits4, i64 0, i64 0, !dbg !6741
  %6 = ptrtoint ptr %arraydecay5 to i64, !dbg !6741
  %cmp6 = icmp ne i64 %6, 0, !dbg !6741
  br i1 %cmp6, label %land.lhs.true8, label %cond.false, !dbg !6741

land.lhs.true8:                                   ; preds = %land.lhs.true1
  %7 = load i32, ptr %state.addr, align 4, !dbg !6741
  %idxprom9 = zext i32 %7 to i64, !dbg !6741
  %arrayidx10 = getelementptr [6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 %idxprom9, !dbg !6741
  %bits11 = getelementptr inbounds %struct.nodemask_t, ptr %arrayidx10, i32 0, i32 0, !dbg !6741
  %arraydecay12 = getelementptr inbounds [1 x i64], ptr %bits11, i64 0, i64 0, !dbg !6741
  %8 = load i64, ptr %arraydecay12, align 8, !dbg !6741
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !6741
  br i1 %9, label %cond.true, label %cond.false, !dbg !6741

cond.true:                                        ; preds = %land.lhs.true8
  %10 = load i32, ptr %node.addr, align 4, !dbg !6741
  %conv13 = sext i32 %10 to i64, !dbg !6741
  %11 = load i32, ptr %state.addr, align 4, !dbg !6741
  %idxprom14 = zext i32 %11 to i64, !dbg !6741
  %arrayidx15 = getelementptr [6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 %idxprom14, !dbg !6741
  %bits16 = getelementptr inbounds %struct.nodemask_t, ptr %arrayidx15, i32 0, i32 0, !dbg !6741
  %arraydecay17 = getelementptr inbounds [1 x i64], ptr %bits16, i64 0, i64 0, !dbg !6741
  %call = call zeroext i1 @const_test_bit(i64 noundef %conv13, ptr noundef %arraydecay17) #18, !dbg !6741
  %conv18 = zext i1 %call to i32, !dbg !6741
  br label %cond.end, !dbg !6741

cond.false:                                       ; preds = %land.lhs.true8, %land.lhs.true1, %land.lhs.true, %entry
  %12 = load i32, ptr %node.addr, align 4, !dbg !6741
  %conv19 = sext i32 %12 to i64, !dbg !6741
  %13 = load i32, ptr %state.addr, align 4, !dbg !6741
  %idxprom20 = zext i32 %13 to i64, !dbg !6741
  %arrayidx21 = getelementptr [6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 %idxprom20, !dbg !6741
  %bits22 = getelementptr inbounds %struct.nodemask_t, ptr %arrayidx21, i32 0, i32 0, !dbg !6741
  %arraydecay23 = getelementptr inbounds [1 x i64], ptr %bits22, i64 0, i64 0, !dbg !6741
  %call24 = call zeroext i1 @_test_bit(i64 noundef %conv19, ptr noundef %arraydecay23) #18, !dbg !6741
  %conv25 = zext i1 %call24 to i32, !dbg !6741
  br label %cond.end, !dbg !6741

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv18, %cond.true ], [ %conv25, %cond.false ], !dbg !6741
  ret i32 %cond, !dbg !6742
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6743 dso_local i32 @_printk(ptr noundef, ...) #9

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6747 dso_local void @dump_stack() #9

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #10

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !6748 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6756, metadata !DIExpression()), !dbg !6761
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6757, metadata !DIExpression()), !dbg !6762
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #17, !dbg !6763
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6758, metadata !DIExpression()), !dbg !6764
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6765
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6766
  %div = udiv i64 %1, 64, !dbg !6766
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6767
  store ptr %add.ptr, ptr %p, align 8, !dbg !6764
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #17, !dbg !6768
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !6759, metadata !DIExpression()), !dbg !6769
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6770
  %rem = urem i64 %2, 64, !dbg !6770
  %shl = shl i64 1, %rem, !dbg !6770
  store i64 %shl, ptr %mask, align 8, !dbg !6769
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #17, !dbg !6771
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6760, metadata !DIExpression()), !dbg !6772
  %3 = load ptr, ptr %p, align 8, !dbg !6773
  %4 = load i64, ptr %3, align 8, !dbg !6774
  store i64 %4, ptr %val, align 8, !dbg !6772
  %5 = load i64, ptr %val, align 8, !dbg !6775
  %6 = load i64, ptr %mask, align 8, !dbg !6776
  %and = and i64 %5, %6, !dbg !6777
  %tobool = icmp ne i64 %and, 0, !dbg !6778
  %lnot = xor i1 %tobool, true, !dbg !6778
  %lnot1 = xor i1 %lnot, true, !dbg !6779
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #17, !dbg !6780
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #17, !dbg !6780
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #17, !dbg !6780
  ret i1 %lnot1, !dbg !6781
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !6782 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6785, metadata !DIExpression()), !dbg !6787
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6786, metadata !DIExpression()), !dbg !6788
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6789
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6790
  %div = udiv i64 %1, 64, !dbg !6790
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6791
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #18, !dbg !6792
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6793
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6794
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #18, !dbg !6795
  ret i1 %call, !dbg !6796
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !6797 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6799, metadata !DIExpression()), !dbg !6801
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6800, metadata !DIExpression()), !dbg !6802
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6803
  %1 = load i64, ptr %size.addr, align 8, !dbg !6804
  %conv = trunc i64 %1 to i32, !dbg !6804
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #18, !dbg !6805
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6806
  %3 = load i64, ptr %size.addr, align 8, !dbg !6806
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #18, !dbg !6806
  ret void, !dbg !6807
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !6808 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6810, metadata !DIExpression()), !dbg !6812
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6811, metadata !DIExpression()), !dbg !6813
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6814
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6815
  br i1 %1, label %cond.true, label %cond.false, !dbg !6815

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6816
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6817
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #18, !dbg !6818
  %conv = zext i1 %call to i32, !dbg !6818
  br label %cond.end, !dbg !6815

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6819
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6820
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #18, !dbg !6821
  %conv2 = zext i1 %call1 to i32, !dbg !6821
  br label %cond.end, !dbg !6815

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !6815
  %tobool = icmp ne i32 %cond, 0, !dbg !6815
  ret i1 %tobool, !dbg !6822
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !6823 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6825, metadata !DIExpression()), !dbg !6827
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6826, metadata !DIExpression()), !dbg !6828
  ret i1 true, !dbg !6829
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !6830 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6834, metadata !DIExpression()), !dbg !6836
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6835, metadata !DIExpression()), !dbg !6837
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6838
  %and = and i64 %0, 63, !dbg !6839
  %shl = shl i64 1, %and, !dbg !6840
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6841
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6842
  %shr = ashr i64 %2, 6, !dbg !6843
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !6841
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !6841
  %and1 = and i64 %shl, %3, !dbg !6844
  %cmp = icmp ne i64 %and1, 0, !dbg !6845
  ret i1 %cmp, !dbg !6846
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !6847 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6849, metadata !DIExpression()), !dbg !6852
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6850, metadata !DIExpression()), !dbg !6853
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #17, !dbg !6854
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !6851, metadata !DIExpression()), !dbg !6855
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6856
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6857
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #17, !dbg !6858, !srcloc !6859
  %3 = icmp ult i8 %2, 2, !dbg !6858
  call void @llvm.assume(i1 %3), !dbg !6858
  store i8 %2, ptr %oldbit, align 1, !dbg !6858
  %4 = load i8, ptr %oldbit, align 1, !dbg !6860, !range !4954, !noundef !571
  %tobool = trunc i8 %4 to i1, !dbg !6860
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #17, !dbg !6861
  ret i1 %tobool, !dbg !6862
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6863 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #5 align 16 !dbg !6864 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6868, metadata !DIExpression()), !dbg !6870
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6869, metadata !DIExpression()), !dbg !6871
  %0 = load i64, ptr %size.addr, align 8, !dbg !6872
  %tobool = icmp ne i64 %0, 0, !dbg !6872
  br i1 %tobool, label %if.end, label %if.then, !dbg !6874

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6875
  br label %return, !dbg !6875

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6876
  %cmp = icmp ule i64 %1, 8, !dbg !6878
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6879

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6880
  br label %return, !dbg !6880

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6881
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6883
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6884

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6885
  %cmp4 = icmp ule i64 %3, 96, !dbg !6886
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6887

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6888
  br label %return, !dbg !6888

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6889
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6891
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6892

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6893
  %cmp9 = icmp ule i64 %5, 192, !dbg !6894
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6895

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6896
  br label %return, !dbg !6896

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6897
  %cmp12 = icmp ule i64 %6, 8, !dbg !6899
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6900

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6901
  br label %return, !dbg !6901

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6902
  %cmp15 = icmp ule i64 %7, 16, !dbg !6904
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6905

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6906
  br label %return, !dbg !6906

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6907
  %cmp18 = icmp ule i64 %8, 32, !dbg !6909
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6910

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6911
  br label %return, !dbg !6911

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6912
  %cmp21 = icmp ule i64 %9, 64, !dbg !6914
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6915

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6916
  br label %return, !dbg !6916

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6917
  %cmp24 = icmp ule i64 %10, 128, !dbg !6919
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6920

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6921
  br label %return, !dbg !6921

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6922
  %cmp27 = icmp ule i64 %11, 256, !dbg !6924
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6925

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6926
  br label %return, !dbg !6926

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6927
  %cmp30 = icmp ule i64 %12, 512, !dbg !6929
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6930

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6931
  br label %return, !dbg !6931

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6932
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6934
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6935

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6936
  br label %return, !dbg !6936

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6937
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6939
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6940

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6941
  br label %return, !dbg !6941

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6942
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6944
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6945

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6946
  br label %return, !dbg !6946

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6947
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6949
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6950

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6951
  br label %return, !dbg !6951

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6952
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6954
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6955

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6956
  br label %return, !dbg !6956

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6957
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6959
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6960

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6961
  br label %return, !dbg !6961

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6962
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6964
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6965

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6966
  br label %return, !dbg !6966

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6967
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6969
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6970

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6971
  br label %return, !dbg !6971

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6972
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6974
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6975

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6976
  br label %return, !dbg !6976

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6977
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6979
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6980

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6981
  br label %return, !dbg !6981

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6982
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6984
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6985

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6986
  br label %return, !dbg !6986

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6987
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6989
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6990

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6991
  br label %return, !dbg !6991

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6992, !range !4954, !noundef !571
  %tobool69 = trunc i8 %25 to i1, !dbg !6992
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6994

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6995

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_229() #23, !dbg !6996, !srcloc !6999
  unreachable, !dbg !6996

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !7000

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !7001

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !7002

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !7004

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !7002

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.10, i32 480, i32 0, i64 12) #17, !dbg !7006, !srcloc !7008
  br label %do.end75, !dbg !7006

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !7002

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !7009
  br label %return, !dbg !7009

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !7010
  ret i32 %26, !dbg !7010
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !7011 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #5 align 16 !dbg !7017 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7021, metadata !DIExpression()), !dbg !7023
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !7022, metadata !DIExpression()), !dbg !7024
  %0 = load i32, ptr %flags.addr, align 4, !dbg !7025
  %and = and i32 %0, 17, !dbg !7025
  %cmp = icmp eq i32 %and, 0, !dbg !7025
  %lnot = xor i1 %cmp, true, !dbg !7025
  %lnot1 = xor i1 %lnot, true, !dbg !7025
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7025
  %conv = sext i32 %lnot.ext to i64, !dbg !7025
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !7025
  %tobool = icmp ne i64 %expval, 0, !dbg !7025
  br i1 %tobool, label %if.then, label %if.end, !dbg !7027

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !7028
  br label %return, !dbg !7028

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !7029
  %and2 = and i32 %1, 1, !dbg !7031
  %tobool3 = icmp ne i32 %and2, 0, !dbg !7031
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !7032

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !7033
  br label %return, !dbg !7033

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !7034
  br label %return, !dbg !7034

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !7036
  ret i32 %2, !dbg !7036
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !7037 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #12

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !7038 dso_local void @__compiletime_assert_229() #14

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7039 dso_local i32 @set_pages_wb(ptr noundef, i32 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7042 dso_local void @__free_pages(ptr noundef, i32 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7045 dso_local void @dma_free_attrs(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ttm_pool_page_order(ptr noundef %pool, ptr noundef %p) #0 align 16 !dbg !7048 {
entry:
  %retval = alloca i32, align 4
  %pool.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %dma = alloca ptr, align 8
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !7052, metadata !DIExpression()), !dbg !7057
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7053, metadata !DIExpression()), !dbg !7058
  %0 = load ptr, ptr %pool.addr, align 8, !dbg !7059
  %use_dma_alloc = getelementptr inbounds %struct.ttm_pool, ptr %0, i32 0, i32 2, !dbg !7060
  %1 = load i8, ptr %use_dma_alloc, align 4, !dbg !7060, !range !4954, !noundef !571
  %tobool = trunc i8 %1 to i1, !dbg !7060
  br i1 %tobool, label %if.then, label %if.end, !dbg !7061

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %dma) #17, !dbg !7062
  call void @llvm.dbg.declare(metadata ptr %dma, metadata !7054, metadata !DIExpression()), !dbg !7063
  %2 = load ptr, ptr %p.addr, align 8, !dbg !7064
  %3 = getelementptr inbounds %struct.page, ptr %2, i32 0, i32 1, !dbg !7065
  %private = getelementptr inbounds %struct.anon.16, ptr %3, i32 0, i32 3, !dbg !7065
  %4 = load i64, ptr %private, align 8, !dbg !7065
  %5 = inttoptr i64 %4 to ptr, !dbg !7066
  store ptr %5, ptr %dma, align 8, !dbg !7063
  %6 = load ptr, ptr %dma, align 8, !dbg !7067
  %vaddr = getelementptr inbounds %struct.ttm_pool_dma, ptr %6, i32 0, i32 1, !dbg !7068
  %7 = load i64, ptr %vaddr, align 8, !dbg !7068
  %and = and i64 %7, 4095, !dbg !7069
  %conv = trunc i64 %and to i32, !dbg !7067
  store i32 %conv, ptr %retval, align 4, !dbg !7070
  call void @llvm.lifetime.end.p0(i64 8, ptr %dma) #17, !dbg !7071
  br label %return

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %p.addr, align 8, !dbg !7072
  %9 = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 1, !dbg !7073
  %private1 = getelementptr inbounds %struct.anon.16, ptr %9, i32 0, i32 3, !dbg !7073
  %10 = load i64, ptr %private1, align 8, !dbg !7073
  %conv2 = trunc i64 %10 to i32, !dbg !7072
  store i32 %conv2, ptr %retval, align 4, !dbg !7074
  br label %return, !dbg !7074

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, ptr %retval, align 4, !dbg !7075
  ret i32 %11, !dbg !7075
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ttm_pool_unmap(ptr noundef %pool, i64 noundef %dma_addr, i32 noundef %num_pages) #0 align 16 !dbg !7076 {
entry:
  %pool.addr = alloca ptr, align 8
  %dma_addr.addr = alloca i64, align 8
  %num_pages.addr = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !7080, metadata !DIExpression()), !dbg !7083
  store i64 %dma_addr, ptr %dma_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dma_addr.addr, metadata !7081, metadata !DIExpression()), !dbg !7084
  store i32 %num_pages, ptr %num_pages.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num_pages.addr, metadata !7082, metadata !DIExpression()), !dbg !7085
  %0 = load ptr, ptr %pool.addr, align 8, !dbg !7086
  %use_dma_alloc = getelementptr inbounds %struct.ttm_pool, ptr %0, i32 0, i32 2, !dbg !7088
  %1 = load i8, ptr %use_dma_alloc, align 4, !dbg !7088, !range !4954, !noundef !571
  %tobool = trunc i8 %1 to i1, !dbg !7088
  br i1 %tobool, label %if.then, label %if.end, !dbg !7089

if.then:                                          ; preds = %entry
  br label %return, !dbg !7090

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pool.addr, align 8, !dbg !7091
  %dev = getelementptr inbounds %struct.ttm_pool, ptr %2, i32 0, i32 0, !dbg !7091
  %3 = load ptr, ptr %dev, align 8, !dbg !7091
  %4 = load i64, ptr %dma_addr.addr, align 8, !dbg !7091
  %5 = load i32, ptr %num_pages.addr, align 4, !dbg !7091
  %conv = zext i32 %5 to i64, !dbg !7091
  %shl = shl i64 %conv, 12, !dbg !7091
  call void @dma_unmap_page_attrs(ptr noundef %3, i64 noundef %4, i64 noundef %shl, i32 noundef 0, i64 noundef 0) #18, !dbg !7091
  br label %return, !dbg !7092

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !7092
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ttm_pool_type_give(ptr noundef %pt, ptr noundef %p) #0 align 16 !dbg !7093 {
entry:
  %pt.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %num_pages = alloca i32, align 4
  store ptr %pt, ptr %pt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pt.addr, metadata !7097, metadata !DIExpression()), !dbg !7101
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7098, metadata !DIExpression()), !dbg !7102
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !7103
  call void @llvm.dbg.declare(metadata ptr %i, metadata !7099, metadata !DIExpression()), !dbg !7104
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_pages) #17, !dbg !7103
  call void @llvm.dbg.declare(metadata ptr %num_pages, metadata !7100, metadata !DIExpression()), !dbg !7105
  %0 = load ptr, ptr %pt.addr, align 8, !dbg !7106
  %order = getelementptr inbounds %struct.ttm_pool_type, ptr %0, i32 0, i32 1, !dbg !7107
  %1 = load i32, ptr %order, align 8, !dbg !7107
  %shl = shl i32 1, %1, !dbg !7108
  store i32 %shl, ptr %num_pages, align 4, !dbg !7105
  store i32 0, ptr %i, align 4, !dbg !7109
  br label %for.cond, !dbg !7111

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4, !dbg !7112
  %3 = load i32, ptr %num_pages, align 4, !dbg !7114
  %cmp = icmp ult i32 %2, %3, !dbg !7115
  br i1 %cmp, label %for.body, label %for.end, !dbg !7116

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %p.addr, align 8, !dbg !7117
  %call = call i32 @PageHighMem(ptr noundef %4) #18, !dbg !7120
  %tobool = icmp ne i32 %call, 0, !dbg !7120
  br i1 %tobool, label %if.then, label %if.else, !dbg !7121

if.then:                                          ; preds = %for.body
  %5 = load ptr, ptr %p.addr, align 8, !dbg !7122
  %6 = load i32, ptr %i, align 4, !dbg !7123
  %idx.ext = zext i32 %6 to i64, !dbg !7124
  %add.ptr = getelementptr %struct.page, ptr %5, i64 %idx.ext, !dbg !7124
  call void @clear_highpage(ptr noundef %add.ptr) #18, !dbg !7125
  br label %if.end, !dbg !7125

if.else:                                          ; preds = %for.body
  %7 = load ptr, ptr %p.addr, align 8, !dbg !7126
  %8 = load i32, ptr %i, align 4, !dbg !7126
  %idx.ext1 = zext i32 %8 to i64, !dbg !7126
  %add.ptr2 = getelementptr %struct.page, ptr %7, i64 %idx.ext1, !dbg !7126
  %call3 = call ptr @lowmem_page_address(ptr noundef %add.ptr2) #18, !dbg !7126
  call void @clear_page(ptr noundef %call3) #18, !dbg !7127
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc, !dbg !7128

for.inc:                                          ; preds = %if.end
  %9 = load i32, ptr %i, align 4, !dbg !7129
  %inc = add i32 %9, 1, !dbg !7129
  store i32 %inc, ptr %i, align 4, !dbg !7129
  br label %for.cond, !dbg !7130, !llvm.loop !7131

for.end:                                          ; preds = %for.cond
  %10 = load ptr, ptr %pt.addr, align 8, !dbg !7133
  %lock = getelementptr inbounds %struct.ttm_pool_type, ptr %10, i32 0, i32 4, !dbg !7134
  call void @spin_lock(ptr noundef %lock) #18, !dbg !7135
  %11 = load ptr, ptr %p.addr, align 8, !dbg !7136
  %12 = getelementptr inbounds %struct.page, ptr %11, i32 0, i32 1, !dbg !7137
  %13 = getelementptr inbounds %struct.anon.16, ptr %12, i32 0, i32 0, !dbg !7137
  %14 = load ptr, ptr %pt.addr, align 8, !dbg !7138
  %pages = getelementptr inbounds %struct.ttm_pool_type, ptr %14, i32 0, i32 5, !dbg !7139
  call void @list_add(ptr noundef %13, ptr noundef %pages) #18, !dbg !7140
  %15 = load ptr, ptr %pt.addr, align 8, !dbg !7141
  %lock4 = getelementptr inbounds %struct.ttm_pool_type, ptr %15, i32 0, i32 4, !dbg !7142
  call void @spin_unlock(ptr noundef %lock4) #18, !dbg !7143
  %16 = load ptr, ptr %pt.addr, align 8, !dbg !7144
  %order5 = getelementptr inbounds %struct.ttm_pool_type, ptr %16, i32 0, i32 1, !dbg !7145
  %17 = load i32, ptr %order5, align 8, !dbg !7145
  %shl6 = shl i32 1, %17, !dbg !7146
  %conv = sext i32 %shl6 to i64, !dbg !7147
  call void @atomic_long_add(i64 noundef %conv, ptr noundef @allocated_pages) #18, !dbg !7148
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_pages) #17, !dbg !7149
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !7149
  ret void, !dbg !7149
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7150 dso_local void @dma_unmap_page_attrs(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clear_highpage(ptr noundef %page) #3 align 16 !dbg !7153 {
entry:
  %page.addr = alloca ptr, align 8
  %kaddr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !7156, metadata !DIExpression()), !dbg !7158
  call void @llvm.lifetime.start.p0(i64 8, ptr %kaddr) #17, !dbg !7159
  call void @llvm.dbg.declare(metadata ptr %kaddr, metadata !7157, metadata !DIExpression()), !dbg !7160
  %0 = load ptr, ptr %page.addr, align 8, !dbg !7161
  %call = call ptr @kmap_local_page(ptr noundef %0) #18, !dbg !7162
  store ptr %call, ptr %kaddr, align 8, !dbg !7160
  %1 = load ptr, ptr %kaddr, align 8, !dbg !7163
  call void @clear_page(ptr noundef %1) #18, !dbg !7164
  br label %do.body, !dbg !7165

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !7166

do.body1:                                         ; preds = %do.body
  br label %do.cond, !dbg !7168

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !7168

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %kaddr, align 8, !dbg !7166
  call void @__kunmap_local(ptr noundef %2) #18, !dbg !7166
  br label %do.cond2, !dbg !7166

do.cond2:                                         ; preds = %do.end
  br label %do.end3, !dbg !7166

do.end3:                                          ; preds = %do.cond2
  call void @llvm.lifetime.end.p0(i64 8, ptr %kaddr) #17, !dbg !7170
  ret void, !dbg !7170
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clear_page(ptr noundef %page) #3 align 16 !dbg !7171 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !7173, metadata !DIExpression()), !dbg !7174
  %0 = load ptr, ptr %page.addr, align 8, !dbg !7175
  call void @kmsan_unpoison_memory(ptr noundef %0, i64 noundef 4096) #18, !dbg !7176
  %1 = call i64 @llvm.read_register.i64(metadata !4780), !dbg !7177
  %2 = load ptr, ptr %page.addr, align 8, !dbg !7177
  %3 = call { ptr, i64 } asm sideeffect "# ALT: oldinstr2\0A661:\0A\09call ${2:c}\0A662:\0A# ALT: padding2\0A.skip -((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)) > 0) * (((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)), 0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 3*32+16)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .long 661b - .\0A .long 6642f - .\0A .4byte ( 9*32+ 9)\0A .byte 663b-661b\0A .byte 6652f-6642f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09call ${3:c}\0A6651:\0A# ALT: replacement 2\0A6642:\0A\09call ${4:c}\0A6652:\0A.popsection\0A", "={di},={rsp},i,i,i,0,{rsp},~{cc},~{memory},~{rax},~{rcx},~{dirflag},~{fpsr},~{flags}"(ptr @clear_page_orig, ptr @clear_page_rep, ptr @clear_page_erms, ptr %2, i64 %1) #17, !dbg !7177, !srcloc !7178
  %asmresult = extractvalue { ptr, i64 } %3, 0, !dbg !7177
  %asmresult1 = extractvalue { ptr, i64 } %3, 1, !dbg !7177
  store ptr %asmresult, ptr %page.addr, align 8, !dbg !7177
  call void @llvm.write_register.i64(metadata !4780, i64 %asmresult1), !dbg !7177
  ret void, !dbg !7179
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @lowmem_page_address(ptr noundef %page) #5 align 16 !dbg !7180 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !7184, metadata !DIExpression()), !dbg !7185
  %0 = load ptr, ptr %page.addr, align 8, !dbg !7186
  %1 = load i64, ptr @vmemmap_base, align 8, !dbg !7186
  %2 = inttoptr i64 %1 to ptr, !dbg !7186
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !7186
  %sub.ptr.rhs.cast = ptrtoint ptr %2 to i64, !dbg !7186
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !7186
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 64, !dbg !7186
  %shl = shl i64 %sub.ptr.div, 12, !dbg !7186
  %3 = load i64, ptr @page_offset_base, align 8, !dbg !7186
  %add = add i64 %shl, %3, !dbg !7186
  %4 = inttoptr i64 %add to ptr, !dbg !7186
  ret ptr %4, !dbg !7187
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add(ptr noundef %new, ptr noundef %head) #3 align 16 !dbg !7188 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !7190, metadata !DIExpression()), !dbg !7192
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !7191, metadata !DIExpression()), !dbg !7193
  %0 = load ptr, ptr %new.addr, align 8, !dbg !7194
  %1 = load ptr, ptr %head.addr, align 8, !dbg !7195
  %2 = load ptr, ptr %head.addr, align 8, !dbg !7196
  %next = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !7197
  %3 = load ptr, ptr %next, align 8, !dbg !7197
  call void @__list_add(ptr noundef %0, ptr noundef %1, ptr noundef %3) #18, !dbg !7198
  ret void, !dbg !7199
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_long_add(i64 noundef %i, ptr noundef %v) #5 align 16 !dbg !7200 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7202, metadata !DIExpression()), !dbg !7204
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7203, metadata !DIExpression()), !dbg !7205
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7206
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 8) #18, !dbg !7207
  %1 = load i64, ptr %i.addr, align 8, !dbg !7208
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7209
  call void @raw_atomic_long_add(i64 noundef %1, ptr noundef %2) #18, !dbg !7210
  ret void, !dbg !7211
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kmap_local_page(ptr noundef %page) #3 align 16 !dbg !7212 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !7217, metadata !DIExpression()), !dbg !7218
  %0 = load ptr, ptr %page.addr, align 8, !dbg !7219
  %call = call ptr @lowmem_page_address(ptr noundef %0) #18, !dbg !7219
  ret ptr %call, !dbg !7220
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__kunmap_local(ptr noundef %addr) #3 align 16 !dbg !7221 {
entry:
  %addr.addr = alloca ptr, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7223, metadata !DIExpression()), !dbg !7224
  ret void, !dbg !7225
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_unpoison_memory(ptr noundef %address, i64 noundef %size) #3 align 16 !dbg !7226 {
entry:
  %address.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !7231, metadata !DIExpression()), !dbg !7233
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7232, metadata !DIExpression()), !dbg !7234
  ret void, !dbg !7235
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #15

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @clear_page_orig(ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @clear_page_rep(ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @clear_page_erms(ptr noundef) #6

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #16

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !7236 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !7240, metadata !DIExpression()), !dbg !7243
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !7241, metadata !DIExpression()), !dbg !7244
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !7242, metadata !DIExpression()), !dbg !7245
  %0 = load ptr, ptr %new.addr, align 8, !dbg !7246
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !7248
  %2 = load ptr, ptr %next.addr, align 8, !dbg !7249
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18, !dbg !7250
  br i1 %call, label %if.end, label %if.then, !dbg !7251

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !7252

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !7253
  %4 = load ptr, ptr %next.addr, align 8, !dbg !7254
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !7255
  store ptr %3, ptr %prev1, align 8, !dbg !7256
  %5 = load ptr, ptr %next.addr, align 8, !dbg !7257
  %6 = load ptr, ptr %new.addr, align 8, !dbg !7258
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !7259
  store ptr %5, ptr %next2, align 8, !dbg !7260
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !7261
  %8 = load ptr, ptr %new.addr, align 8, !dbg !7262
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !7263
  store ptr %7, ptr %prev3, align 8, !dbg !7264
  br label %do.body, !dbg !7265

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !7266

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !7268

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !7266

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !7270
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !7270
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !7270
  store volatile ptr %9, ptr %next6, align 8, !dbg !7270
  br label %do.end7, !dbg !7270

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !7266

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !7272
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !7273 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !7277, metadata !DIExpression()), !dbg !7280
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !7278, metadata !DIExpression()), !dbg !7281
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !7279, metadata !DIExpression()), !dbg !7282
  ret i1 true, !dbg !7283
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_long_add(i64 noundef %i, ptr noundef %v) #5 align 16 !dbg !7284 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7286, metadata !DIExpression()), !dbg !7288
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7287, metadata !DIExpression()), !dbg !7289
  %0 = load i64, ptr %i.addr, align 8, !dbg !7290
  %1 = load ptr, ptr %v.addr, align 8, !dbg !7291
  call void @raw_atomic64_add(i64 noundef %0, ptr noundef %1) #18, !dbg !7292
  ret void, !dbg !7293
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic64_add(i64 noundef %i, ptr noundef %v) #5 align 16 !dbg !7294 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7296, metadata !DIExpression()), !dbg !7298
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7297, metadata !DIExpression()), !dbg !7299
  %0 = load i64, ptr %i.addr, align 8, !dbg !7300
  %1 = load ptr, ptr %v.addr, align 8, !dbg !7301
  call void @arch_atomic64_add(i64 noundef %0, ptr noundef %1) #18, !dbg !7302
  ret void, !dbg !7303
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic64_add(i64 noundef %i, ptr noundef %v) #5 align 16 !dbg !7304 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7306, metadata !DIExpression()), !dbg !7308
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7307, metadata !DIExpression()), !dbg !7309
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7310
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %0, i32 0, i32 0, !dbg !7311
  %1 = load i64, ptr %i.addr, align 8, !dbg !7312
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7313
  %counter1 = getelementptr inbounds %struct.atomic64_t, ptr %2, i32 0, i32 0, !dbg !7314
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; addq $1,$0", "=*m,er,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %counter, i64 %1, ptr elementtype(i64) %counter1) #17, !dbg !7315, !srcloc !7316
  ret void, !dbg !7317
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic_long_read(ptr noundef %v) #5 align 16 !dbg !7318 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7320, metadata !DIExpression()), !dbg !7321
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7322
  %call = call i64 @raw_atomic64_read(ptr noundef %0) #18, !dbg !7323
  ret i64 %call, !dbg !7324
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic64_read(ptr noundef %v) #5 align 16 !dbg !7325 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7331, metadata !DIExpression()), !dbg !7332
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7333
  %call = call i64 @arch_atomic64_read(ptr noundef %0) #18, !dbg !7334
  ret i64 %call, !dbg !7335
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_atomic64_read(ptr noundef %v) #5 align 16 !dbg !7336 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7338, metadata !DIExpression()), !dbg !7339
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7340
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %0, i32 0, i32 0, !dbg !7340
  %1 = load volatile i64, ptr %counter, align 8, !dbg !7340
  ret i64 %1, !dbg !7341
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_move_tail(ptr noundef %list, ptr noundef %head) #3 align 16 !dbg !7342 {
entry:
  %list.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !7344, metadata !DIExpression()), !dbg !7346
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !7345, metadata !DIExpression()), !dbg !7347
  %0 = load ptr, ptr %list.addr, align 8, !dbg !7348
  call void @__list_del_entry(ptr noundef %0) #18, !dbg !7349
  %1 = load ptr, ptr %list.addr, align 8, !dbg !7350
  %2 = load ptr, ptr %head.addr, align 8, !dbg !7351
  call void @list_add_tail(ptr noundef %1, ptr noundef %2) #18, !dbg !7352
  ret void, !dbg !7353
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #3 align 16 !dbg !7354 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !7356, metadata !DIExpression()), !dbg !7358
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !7357, metadata !DIExpression()), !dbg !7359
  %0 = load ptr, ptr %new.addr, align 8, !dbg !7360
  %1 = load ptr, ptr %head.addr, align 8, !dbg !7361
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !7362
  %2 = load ptr, ptr %prev, align 8, !dbg !7362
  %3 = load ptr, ptr %head.addr, align 8, !dbg !7363
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #18, !dbg !7364
  ret void, !dbg !7365
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7366 dso_local void @seq_printf(ptr noundef, ptr noundef, ...) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7369 dso_local void @_raw_spin_lock(ptr noundef) #6 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ttm_pool_type_count(ptr noundef %pt) #0 align 16 !dbg !7373 {
entry:
  %pt.addr = alloca ptr, align 8
  %count = alloca i32, align 4
  %p = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr2 = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  store ptr %pt, ptr %pt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pt.addr, metadata !7377, metadata !DIExpression()), !dbg !7386
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #17, !dbg !7387
  call void @llvm.dbg.declare(metadata ptr %count, metadata !7378, metadata !DIExpression()), !dbg !7388
  store i32 0, ptr %count, align 4, !dbg !7388
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #17, !dbg !7389
  call void @llvm.dbg.declare(metadata ptr %p, metadata !7379, metadata !DIExpression()), !dbg !7390
  %0 = load ptr, ptr %pt.addr, align 8, !dbg !7391
  %lock = getelementptr inbounds %struct.ttm_pool_type, ptr %0, i32 0, i32 4, !dbg !7392
  call void @spin_lock(ptr noundef %lock) #18, !dbg !7393
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !7394
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !7380, metadata !DIExpression()), !dbg !7394
  %1 = load ptr, ptr %pt.addr, align 8, !dbg !7394
  %pages = getelementptr inbounds %struct.ttm_pool_type, ptr %1, i32 0, i32 5, !dbg !7394
  %next = getelementptr inbounds %struct.list_head, ptr %pages, i32 0, i32 0, !dbg !7394
  %2 = load ptr, ptr %next, align 8, !dbg !7394
  store ptr %2, ptr %__mptr, align 8, !dbg !7394
  %3 = load ptr, ptr %__mptr, align 8, !dbg !7394
  %add.ptr = getelementptr i8, ptr %3, i64 -8, !dbg !7394
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !7394
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !7395
  %4 = load ptr, ptr %tmp, align 8, !dbg !7394
  store ptr %4, ptr %p, align 8, !dbg !7395
  br label %for.cond, !dbg !7395

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load ptr, ptr %p, align 8, !dbg !7396
  %6 = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 1, !dbg !7396
  %7 = getelementptr inbounds %struct.anon.16, ptr %6, i32 0, i32 0, !dbg !7396
  %8 = load ptr, ptr %pt.addr, align 8, !dbg !7396
  %pages1 = getelementptr inbounds %struct.ttm_pool_type, ptr %8, i32 0, i32 5, !dbg !7396
  %cmp = icmp eq ptr %7, %pages1, !dbg !7396
  %lnot = xor i1 %cmp, true, !dbg !7396
  br i1 %lnot, label %for.body, label %for.end, !dbg !7395

for.body:                                         ; preds = %for.cond
  %9 = load i32, ptr %count, align 4, !dbg !7397
  %inc = add i32 %9, 1, !dbg !7397
  store i32 %inc, ptr %count, align 4, !dbg !7397
  br label %for.inc, !dbg !7397

for.inc:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr2) #17, !dbg !7398
  call void @llvm.dbg.declare(metadata ptr %__mptr2, metadata !7383, metadata !DIExpression()), !dbg !7398
  %10 = load ptr, ptr %p, align 8, !dbg !7398
  %11 = getelementptr inbounds %struct.page, ptr %10, i32 0, i32 1, !dbg !7398
  %12 = getelementptr inbounds %struct.anon.16, ptr %11, i32 0, i32 0, !dbg !7398
  %next3 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 0, !dbg !7398
  %13 = load ptr, ptr %next3, align 8, !dbg !7398
  store ptr %13, ptr %__mptr2, align 8, !dbg !7398
  %14 = load ptr, ptr %__mptr2, align 8, !dbg !7398
  %add.ptr5 = getelementptr i8, ptr %14, i64 -8, !dbg !7398
  store ptr %add.ptr5, ptr %tmp4, align 8, !dbg !7398
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr2) #17, !dbg !7396
  %15 = load ptr, ptr %tmp4, align 8, !dbg !7398
  store ptr %15, ptr %p, align 8, !dbg !7396
  br label %for.cond, !dbg !7396, !llvm.loop !7399

for.end:                                          ; preds = %for.cond
  %16 = load ptr, ptr %pt.addr, align 8, !dbg !7401
  %lock6 = getelementptr inbounds %struct.ttm_pool_type, ptr %16, i32 0, i32 4, !dbg !7402
  call void @spin_unlock(ptr noundef %lock6) #18, !dbg !7403
  %17 = load i32, ptr %count, align 4, !dbg !7404
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #17, !dbg !7405
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #17, !dbg !7405
  ret i32 %17, !dbg !7406
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7407 dso_local void @_raw_spin_unlock(ptr noundef) #6 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @seq_read(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ttm_pool_debugfs_globals_open(ptr noundef %inode, ptr noundef %file) #0 align 16 !dbg !7408 {
entry:
  %inode.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !7410, metadata !DIExpression()), !dbg !7412
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !7411, metadata !DIExpression()), !dbg !7412
  %0 = load ptr, ptr %file.addr, align 8, !dbg !7412
  %1 = load ptr, ptr %inode.addr, align 8, !dbg !7412
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 47, !dbg !7412
  %2 = load ptr, ptr %i_private, align 8, !dbg !7412
  %call = call i32 @single_open(ptr noundef %0, ptr noundef @ttm_pool_debugfs_globals_show, ptr noundef %2) #18, !dbg !7412
  ret i32 %call, !dbg !7412
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7413 dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ttm_pool_debugfs_globals_show(ptr noundef %m, ptr noundef %data) #0 align 16 !dbg !7416 {
entry:
  %m.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !7418, metadata !DIExpression()), !dbg !7420
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !7419, metadata !DIExpression()), !dbg !7421
  %0 = load ptr, ptr %m.addr, align 8, !dbg !7422
  call void @ttm_pool_debugfs_header(ptr noundef %0) #18, !dbg !7423
  call void @spin_lock(ptr noundef @shrinker_lock) #18, !dbg !7424
  %1 = load ptr, ptr %m.addr, align 8, !dbg !7425
  call void @seq_puts(ptr noundef %1, ptr noundef @.str.4) #18, !dbg !7426
  %2 = load ptr, ptr %m.addr, align 8, !dbg !7427
  call void @ttm_pool_debugfs_orders(ptr noundef @global_write_combined, ptr noundef %2) #18, !dbg !7428
  %3 = load ptr, ptr %m.addr, align 8, !dbg !7429
  call void @seq_puts(ptr noundef %3, ptr noundef @.str.5) #18, !dbg !7430
  %4 = load ptr, ptr %m.addr, align 8, !dbg !7431
  call void @ttm_pool_debugfs_orders(ptr noundef @global_uncached, ptr noundef %4) #18, !dbg !7432
  %5 = load ptr, ptr %m.addr, align 8, !dbg !7433
  call void @seq_puts(ptr noundef %5, ptr noundef @.str.16) #18, !dbg !7434
  %6 = load ptr, ptr %m.addr, align 8, !dbg !7435
  call void @ttm_pool_debugfs_orders(ptr noundef @global_dma32_write_combined, ptr noundef %6) #18, !dbg !7436
  %7 = load ptr, ptr %m.addr, align 8, !dbg !7437
  call void @seq_puts(ptr noundef %7, ptr noundef @.str.17) #18, !dbg !7438
  %8 = load ptr, ptr %m.addr, align 8, !dbg !7439
  call void @ttm_pool_debugfs_orders(ptr noundef @global_dma32_uncached, ptr noundef %8) #18, !dbg !7440
  call void @spin_unlock(ptr noundef @shrinker_lock) #18, !dbg !7441
  %9 = load ptr, ptr %m.addr, align 8, !dbg !7442
  call void @ttm_pool_debugfs_footer(ptr noundef %9) #18, !dbg !7443
  ret i32 0, !dbg !7444
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ttm_pool_debugfs_shrink_open(ptr noundef %inode, ptr noundef %file) #0 align 16 !dbg !7445 {
entry:
  %inode.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !7447, metadata !DIExpression()), !dbg !7449
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !7448, metadata !DIExpression()), !dbg !7449
  %0 = load ptr, ptr %file.addr, align 8, !dbg !7449
  %1 = load ptr, ptr %inode.addr, align 8, !dbg !7449
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 47, !dbg !7449
  %2 = load ptr, ptr %i_private, align 8, !dbg !7449
  %call = call i32 @single_open(ptr noundef %0, ptr noundef @ttm_pool_debugfs_shrink_show, ptr noundef %2) #18, !dbg !7449
  ret i32 %call, !dbg !7449
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ttm_pool_debugfs_shrink_show(ptr noundef %m, ptr noundef %data) #0 align 16 !dbg !7450 {
entry:
  %m.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %sc = alloca %struct.shrink_control, align 8
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !7452, metadata !DIExpression()), !dbg !7455
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !7453, metadata !DIExpression()), !dbg !7456
  call void @llvm.lifetime.start.p0(i64 32, ptr %sc) #17, !dbg !7457
  call void @llvm.dbg.declare(metadata ptr %sc, metadata !7454, metadata !DIExpression()), !dbg !7458
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %sc, ptr align 8 @__const.ttm_pool_debugfs_shrink_show.sc, i64 32, i1 false), !dbg !7458
  call void @fs_reclaim_acquire(i32 noundef 3264) #18, !dbg !7459
  %0 = load ptr, ptr %m.addr, align 8, !dbg !7460
  %call = call i64 @ttm_pool_shrinker_count(ptr noundef @mm_shrinker, ptr noundef %sc) #18, !dbg !7461
  %call1 = call i64 @ttm_pool_shrinker_scan(ptr noundef @mm_shrinker, ptr noundef %sc) #18, !dbg !7462
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef @.str.18, i64 noundef %call, i64 noundef %call1) #18, !dbg !7463
  call void @fs_reclaim_release(i32 noundef 3264) #18, !dbg !7464
  call void @llvm.lifetime.end.p0(i64 32, ptr %sc) #17, !dbg !7465
  ret i32 0, !dbg !7466
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fs_reclaim_acquire(i32 noundef %gfp_mask) #3 align 16 !dbg !7467 {
entry:
  %gfp_mask.addr = alloca i32, align 4
  store i32 %gfp_mask, ptr %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_mask.addr, metadata !7472, metadata !DIExpression()), !dbg !7473
  ret void, !dbg !7474
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fs_reclaim_release(i32 noundef %gfp_mask) #3 align 16 !dbg !7475 {
entry:
  %gfp_mask.addr = alloca i32, align 4
  store i32 %gfp_mask, ptr %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_mask.addr, metadata !7477, metadata !DIExpression()), !dbg !7478
  ret void, !dbg !7479
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #16 = { nocallback nounwind }
attributes #17 = { nounwind }
attributes #18 = { noredzone }
attributes #19 = { nounwind memory(read) }
attributes #20 = { noredzone allocsize(0) }
attributes #21 = { noredzone allocsize(2) }
attributes #22 = { cold noredzone }
attributes #23 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!4780}
!llvm.module.flags = !{!4781, !4782, !4783, !4784, !4785, !4786, !4787, !4788}
!llvm.ident = !{!4789}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_page_pool_size329", scope: !2, file: !3, line: 63, type: !4777, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/gpu/drm/ttm/.ttm_pool.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/gpu/drm/ttm/ttm\22 -D KBUILD_BASENAME=\22ttm_pool\22 -D KBUILD_MODNAME=\22ttm\22 -D __KBUILD_MODNAME=kmod_ttm -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/gpu/drm/ttm/ttm_pool.ll drivers/gpu/drm/ttm/ttm_pool.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !180, globals: !4663, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/gpu/drm/ttm/ttm_pool.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f9e29110bac6cbb1c54299be559c14fd")
!4 = !{!5, !13, !18, !26, !34, !50, !56, !61, !67, !74, !81, !87, !93, !100, !108, !116, !125, !130, !135, !141, !147, !152, !159, !170}
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
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !19, line: 9, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!20 = !{!21, !22, !23, !24, !25}
!21 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!22 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!23 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!24 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!25 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !27, line: 68, baseType: !7, size: 32, elements: !28)
!27 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!28 = !{!29, !30, !31, !32, !33}
!29 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!30 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!31 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!32 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!33 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !35, line: 1325, baseType: !7, size: 32, elements: !36)
!35 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!36 = !{!37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49}
!37 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!38 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!39 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!40 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!41 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!42 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!43 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!44 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!45 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!46 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!47 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!48 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!49 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !51, line: 54, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!52 = !{!53, !54, !55}
!53 = !DIEnumerator(name: "USRQUOTA", value: 0)
!54 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!55 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !57, line: 65, baseType: !7, size: 32, elements: !58)
!57 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!58 = !{!59, !60}
!59 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!60 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
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
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ttm_caching", file: !142, line: 33, baseType: !7, size: 32, elements: !143)
!142 = !DIFile(filename: "./include/drm/ttm/ttm_caching.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "19c2ae3004d13ae67685208908fb2e14")
!143 = !{!144, !145, !146}
!144 = !DIEnumerator(name: "ttm_uncached", value: 0)
!145 = !DIEnumerator(name: "ttm_write_combined", value: 1)
!146 = !DIEnumerator(name: "ttm_cached", value: 2)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !148, line: 10, baseType: !7, size: 32, elements: !149)
!148 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!149 = !{!150, !151}
!150 = !DIEnumerator(name: "false", value: 0)
!151 = !DIEnumerator(name: "true", value: 1)
!152 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_data_direction", file: !153, line: 5, baseType: !7, size: 32, elements: !154)
!153 = !DIFile(filename: "./include/linux/dma-direction.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f3ca6b923deacc70f1b33611ff89af91")
!154 = !{!155, !156, !157, !158}
!155 = !DIEnumerator(name: "DMA_BIDIRECTIONAL", value: 0)
!156 = !DIEnumerator(name: "DMA_TO_DEVICE", value: 1)
!157 = !DIEnumerator(name: "DMA_FROM_DEVICE", value: 2)
!158 = !DIEnumerator(name: "DMA_NONE", value: 3)
!159 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "node_states", file: !160, line: 398, baseType: !7, size: 32, elements: !161)
!160 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!161 = !{!162, !163, !164, !165, !166, !167, !168, !169}
!162 = !DIEnumerator(name: "N_POSSIBLE", value: 0)
!163 = !DIEnumerator(name: "N_ONLINE", value: 1)
!164 = !DIEnumerator(name: "N_NORMAL_MEMORY", value: 2)
!165 = !DIEnumerator(name: "N_HIGH_MEMORY", value: 2)
!166 = !DIEnumerator(name: "N_MEMORY", value: 3)
!167 = !DIEnumerator(name: "N_CPU", value: 4)
!168 = !DIEnumerator(name: "N_GENERIC_INITIATOR", value: 5)
!169 = !DIEnumerator(name: "NR_NODE_STATES", value: 6)
!170 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !171, line: 364, baseType: !7, size: 32, elements: !172)
!171 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!172 = !{!173, !174, !175, !176, !177, !178, !179}
!173 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!174 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!175 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!176 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!177 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!178 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!179 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!180 = !{!181, !1490, !7, !358, !4178, !1200, !4181, !4182, !336, !634, !109, !4183, !4184, !4163, !322, !3008, !4185, !4188}
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !183)
!183 = !{!184, !185, !192, !197, !3854, !3880, !3881, !3882, !3883, !3887, !3890, !3891, !3892, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3959, !3963, !3981, !3998, !3999, !4000, !4001, !4010, !4033, !4034, !4037, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4051, !4052, !4138, !4146, !4147, !4148, !4150, !4154, !4155, !4159, !4160, !4161, !4162, !4164, !4165, !4166, !4173, !4174, !4175, !4177}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !182, file: !6, line: 403, baseType: !5, size: 32)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !182, file: !6, line: 406, baseType: !186, size: 128, offset: 64)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !187, line: 190, size: 128, elements: !188)
!187 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!188 = !{!189, !191}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !186, file: !187, line: 191, baseType: !190, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !186, file: !187, line: 191, baseType: !190, size: 64, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !182, file: !6, line: 409, baseType: !193, size: 448, offset: 192)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 448, elements: !195)
!194 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!195 = !{!196}
!196 = !DISubrange(count: 56)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !182, file: !6, line: 417, baseType: !198, size: 768, offset: 640)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !199)
!199 = !{!200, !3848, !3849, !3850, !3853}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !198, file: !6, line: 46, baseType: !201, size: 512)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !202, line: 64, size: 512, elements: !203)
!202 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!203 = !{!204, !207, !208, !210, !299, !3747, !3838, !3843, !3844, !3845, !3846, !3847}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !201, file: !202, line: 65, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !194)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !201, file: !202, line: 66, baseType: !186, size: 128, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !201, file: !202, line: 67, baseType: !209, size: 64, offset: 192)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !201, file: !202, line: 68, baseType: !211, size: 64, offset: 256)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !202, line: 168, size: 768, elements: !213)
!213 = !{!214, !215, !258, !259}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !212, file: !202, line: 169, baseType: !186, size: 128)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !212, file: !202, line: 170, baseType: !216, size: 32, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !217, line: 29, baseType: !218)
!217 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !217, line: 17, size: 32, elements: !219)
!219 = !{!220}
!220 = !DIDerivedType(tag: DW_TAG_member, scope: !218, file: !217, line: 18, baseType: !221, size: 32)
!221 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !218, file: !217, line: 18, size: 32, elements: !222)
!222 = !{!223}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !221, file: !217, line: 19, baseType: !224, size: 32)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !225, line: 14, size: 32, elements: !226)
!225 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!226 = !{!227}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !224, file: !225, line: 15, baseType: !228, size: 32)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !229, line: 44, baseType: !230)
!229 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !229, line: 14, size: 32, elements: !231)
!231 = !{!232}
!232 = !DIDerivedType(tag: DW_TAG_member, scope: !230, file: !229, line: 15, baseType: !233, size: 32)
!233 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !230, file: !229, line: 15, size: 32, elements: !234)
!234 = !{!235, !240, !250}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !233, file: !229, line: 16, baseType: !236, size: 32)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !187, line: 174, baseType: !237)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !187, line: 172, size: 32, elements: !238)
!238 = !{!239}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !237, file: !187, line: 173, baseType: !109, size: 32)
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
!258 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !212, file: !202, line: 171, baseType: !201, size: 512, offset: 192)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !212, file: !202, line: 172, baseType: !260, size: 64, offset: 704)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !262)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !202, line: 133, size: 192, elements: !263)
!263 = !{!264, !271, !276}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !262, file: !202, line: 134, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !266)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{!109, !269}
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !201)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !262, file: !202, line: 135, baseType: !272, size: 64, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !273)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DISubroutineType(types: !275)
!275 = !{!205, !269}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !262, file: !202, line: 136, baseType: !277, size: 64, offset: 128)
!277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !278)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{!109, !269, !281}
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !202, line: 125, size: 20736, elements: !283)
!283 = !{!284, !289, !293, !294, !298}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !282, file: !202, line: 126, baseType: !285, size: 192)
!285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !286, size: 192, elements: !287)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!287 = !{!288}
!288 = !DISubrange(count: 3)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !282, file: !202, line: 127, baseType: !290, size: 4096, offset: 192)
!290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !286, size: 4096, elements: !291)
!291 = !{!292}
!292 = !DISubrange(count: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !282, file: !202, line: 128, baseType: !109, size: 32, offset: 4288)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !282, file: !202, line: 129, baseType: !295, size: 16384, offset: 4320)
!295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 16384, elements: !296)
!296 = !{!297}
!297 = !DISubrange(count: 2048)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !282, file: !202, line: 130, baseType: !109, size: 32, offset: 20704)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !201, file: !202, line: 69, baseType: !300, size: 64, offset: 320)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !302)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !202, line: 116, size: 384, elements: !303)
!303 = !{!304, !308, !337, !3709, !3737, !3741}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !302, file: !202, line: 117, baseType: !305, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DISubroutineType(types: !307)
!307 = !{null, !209}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !302, file: !202, line: 118, baseType: !309, size: 64, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !311)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !312, line: 254, size: 128, elements: !313)
!312 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!313 = !{!314, !329}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !311, file: !312, line: 255, baseType: !315, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DISubroutineType(types: !317)
!317 = !{!318, !209, !323, !286}
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !187, line: 66, baseType: !319)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !320, line: 73, baseType: !321)
!320 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !320, line: 15, baseType: !322)
!322 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !312, line: 30, size: 128, elements: !325)
!325 = !{!326, !327}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !324, file: !312, line: 31, baseType: !205, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !324, file: !312, line: 32, baseType: !328, size: 16, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !187, line: 24, baseType: !256)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !311, file: !312, line: 256, baseType: !330, size: 64, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{!318, !209, !323, !205, !333}
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !187, line: 61, baseType: !334)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !320, line: 72, baseType: !335)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !320, line: 16, baseType: !336)
!336 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !302, file: !202, line: 119, baseType: !338, size: 64, offset: 128)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !341)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !312, line: 84, size: 320, elements: !342)
!342 = !{!343, !344, !348, !3705, !3707}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !341, file: !312, line: 85, baseType: !205, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !341, file: !312, line: 86, baseType: !345, size: 64, offset: 64)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DISubroutineType(types: !347)
!347 = !{!328, !209, !323, !109}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !341, file: !312, line: 88, baseType: !349, size: 64, offset: 128)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DISubroutineType(types: !351)
!351 = !{!328, !209, !352, !109}
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !312, line: 175, size: 512, elements: !354)
!354 = !{!355, !356, !357, !359, !3696, !3700, !3701}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !353, file: !312, line: 176, baseType: !324, size: 128)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !353, file: !312, line: 177, baseType: !333, size: 64, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !353, file: !312, line: 178, baseType: !358, size: 64, offset: 192)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !353, file: !312, line: 179, baseType: !360, size: 64, offset: 256)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DISubroutineType(types: !362)
!362 = !{!363}
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !365)
!365 = !{!366, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3690, !3691, !3692, !3693, !3694, !3695}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !364, file: !14, line: 473, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !369)
!369 = !{!370, !371, !372, !380, !381, !388, !389, !392, !393, !3525, !3526, !3527, !3528, !3529, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3569, !3572, !3573, !3574, !3583, !3584, !3585, !3586}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !368, file: !14, line: 642, baseType: !328, size: 16)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !368, file: !14, line: 643, baseType: !256, size: 16, offset: 16)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !368, file: !14, line: 644, baseType: !373, size: 32, offset: 32)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !374, line: 23, baseType: !375)
!374 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !374, line: 21, size: 32, elements: !376)
!376 = !{!377}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !375, file: !374, line: 22, baseType: !378, size: 32)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !187, line: 37, baseType: !379)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !320, line: 49, baseType: !7)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !368, file: !14, line: 645, baseType: !186, size: 128, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !368, file: !14, line: 646, baseType: !382, size: 32, offset: 192)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !374, line: 28, baseType: !383)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !374, line: 26, size: 32, elements: !384)
!384 = !{!385}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !383, file: !374, line: 27, baseType: !386, size: 32)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !187, line: 38, baseType: !387)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !320, line: 50, baseType: !7)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !368, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !368, file: !14, line: 650, baseType: !390, size: 64, offset: 256)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !368, file: !14, line: 651, baseType: !390, size: 64, offset: 320)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !368, file: !14, line: 654, baseType: !394, size: 64, offset: 384)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !396)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !397)
!397 = !{!398, !3350, !3363, !3367, !3371, !3375, !3379, !3383, !3387, !3391, !3395, !3396, !3400, !3404, !3441, !3470, !3474, !3480, !3484, !3488, !3492, !3496, !3500, !3506, !3510}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !396, file: !14, line: 1967, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DISubroutineType(types: !401)
!401 = !{!402, !367, !402, !7}
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !404, line: 82, size: 1536, elements: !405)
!404 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!405 = !{!406, !407, !417, !425, !426, !446, !447, !451, !464, !3333, !3334, !3335, !3336, !3342, !3343, !3344}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !403, file: !404, line: 84, baseType: !7, size: 32)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !403, file: !404, line: 85, baseType: !408, size: 32, offset: 32)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !409, line: 275, baseType: !410)
!409 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !409, line: 275, size: 32, elements: !411)
!411 = !{!412}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !410, file: !409, line: 275, baseType: !413, size: 32)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !409, line: 69, baseType: !414)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !409, line: 64, size: 32, elements: !415)
!415 = !{!416}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !414, file: !409, line: 65, baseType: !7, size: 32)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !403, file: !404, line: 86, baseType: !418, size: 128, offset: 64)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !419, line: 38, size: 128, elements: !420)
!419 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!420 = !{!421, !423}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !418, file: !419, line: 39, baseType: !422, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !418, file: !419, line: 39, baseType: !424, size: 64, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !403, file: !404, line: 87, baseType: !402, size: 64, offset: 192)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !403, file: !404, line: 88, baseType: !427, size: 128, offset: 256)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !404, line: 49, size: 128, elements: !428)
!428 = !{!429, !443}
!429 = !DIDerivedType(tag: DW_TAG_member, scope: !427, file: !404, line: 50, baseType: !430, size: 64)
!430 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !427, file: !404, line: 50, size: 64, elements: !431)
!431 = !{!432, !439}
!432 = !DIDerivedType(tag: DW_TAG_member, scope: !430, file: !404, line: 51, baseType: !433, size: 64)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !430, file: !404, line: 51, size: 64, elements: !434)
!434 = !{!435, !438}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !433, file: !404, line: 52, baseType: !436, size: 32)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !245, line: 21, baseType: !437)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !247, line: 27, baseType: !7)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !433, file: !404, line: 52, baseType: !436, size: 32, offset: 32)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !430, file: !404, line: 54, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !245, line: 23, baseType: !441)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !247, line: 31, baseType: !442)
!442 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !427, file: !404, line: 56, baseType: !444, size: 64, offset: 64)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !248)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !403, file: !404, line: 89, baseType: !367, size: 64, offset: 384)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !403, file: !404, line: 91, baseType: !448, size: 256, offset: 448)
!448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !248, size: 256, elements: !449)
!449 = !{!450}
!450 = !DISubrange(count: 32)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !403, file: !404, line: 94, baseType: !452, size: 64, offset: 704)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !453, line: 25, size: 64, elements: !454)
!453 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!454 = !{!455}
!455 = !DIDerivedType(tag: DW_TAG_member, scope: !452, file: !453, line: 26, baseType: !456, size: 64)
!456 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !452, file: !453, line: 26, size: 64, elements: !457)
!457 = !{!458, !459}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !456, file: !453, line: 28, baseType: !441, size: 64, align: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, scope: !456, file: !453, line: 30, baseType: !460, size: 64)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !456, file: !453, line: 30, size: 64, elements: !461)
!461 = !{!462, !463}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !460, file: !453, line: 31, baseType: !216, size: 32)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !460, file: !453, line: 32, baseType: !109, size: 32, offset: 32)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !403, file: !404, line: 95, baseType: !465, size: 64, offset: 768)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !467)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !404, line: 128, size: 1024, align: 512, elements: !468)
!468 = !{!469, !473, !474, !481, !487, !491, !495, !499, !500, !504, !508, !3323, !3327}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !467, file: !404, line: 129, baseType: !470, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{!109, !402, !7}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !467, file: !404, line: 130, baseType: !470, size: 64, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !467, file: !404, line: 131, baseType: !475, size: 64, offset: 128)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{!109, !478, !480}
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !403)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !467, file: !404, line: 132, baseType: !482, size: 64, offset: 192)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{!109, !478, !7, !205, !485}
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !427)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !467, file: !404, line: 134, baseType: !488, size: 64, offset: 256)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DISubroutineType(types: !490)
!490 = !{!109, !478}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !467, file: !404, line: 135, baseType: !492, size: 64, offset: 320)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DISubroutineType(types: !494)
!494 = !{!109, !402}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !467, file: !404, line: 136, baseType: !496, size: 64, offset: 384)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{null, !402}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !467, file: !404, line: 137, baseType: !496, size: 64, offset: 448)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !467, file: !404, line: 138, baseType: !501, size: 64, offset: 512)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DISubroutineType(types: !503)
!503 = !{null, !402, !367}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !467, file: !404, line: 139, baseType: !505, size: 64, offset: 576)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DISubroutineType(types: !507)
!507 = !{!286, !402, !286, !109}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !467, file: !404, line: 140, baseType: !509, size: 64, offset: 640)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DISubroutineType(types: !511)
!511 = !{!512, !3322}
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !514, line: 70, size: 256, elements: !515)
!514 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!515 = !{!516, !517, !3318, !3319}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !513, file: !514, line: 71, baseType: !402, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !513, file: !514, line: 72, baseType: !518, size: 64, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !520)
!520 = !{!521, !522, !525, !526, !527, !531, !580, !1812, !1852, !1937, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1954, !1958, !1959, !1962, !1965, !1968, !1971, !1972, !1973, !2014, !3249, !3250, !3251, !3252, !3253, !3254, !3257, !3259, !3266, !3267, !3268, !3269, !3270, !3285, !3286, !3287, !3288, !3289, !3292, !3293, !3294, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !519, file: !14, line: 1191, baseType: !186, size: 128)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !519, file: !14, line: 1192, baseType: !523, size: 32, offset: 128)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !187, line: 21, baseType: !524)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !187, line: 18, baseType: !436)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !519, file: !14, line: 1193, baseType: !248, size: 8, offset: 160)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !519, file: !14, line: 1194, baseType: !336, size: 64, offset: 192)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !519, file: !14, line: 1195, baseType: !528, size: 64, offset: 256)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !187, line: 52, baseType: !529)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !320, line: 88, baseType: !530)
!530 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !519, file: !14, line: 1196, baseType: !532, size: 64, offset: 320)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !534)
!534 = !{!535, !536, !537, !544, !548, !552, !556, !557, !558, !568, !572, !573, !574, !576, !577, !578, !579}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !533, file: !14, line: 2367, baseType: !205, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !533, file: !14, line: 2368, baseType: !109, size: 32, offset: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !533, file: !14, line: 2376, baseType: !538, size: 64, offset: 128)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{!109, !541}
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !543, line: 32, flags: DIFlagFwdDecl)
!543 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!544 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !533, file: !14, line: 2377, baseType: !545, size: 64, offset: 192)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !547)
!547 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !533, file: !14, line: 2378, baseType: !549, size: 64, offset: 256)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DISubroutineType(types: !551)
!551 = !{!402, !532, !109, !205, !358}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !533, file: !14, line: 2380, baseType: !553, size: 64, offset: 320)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DISubroutineType(types: !555)
!555 = !{null, !518}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !533, file: !14, line: 2381, baseType: !181, size: 64, offset: 384)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !533, file: !14, line: 2382, baseType: !532, size: 64, offset: 448)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !533, file: !14, line: 2383, baseType: !559, size: 64, offset: 512)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !187, line: 194, size: 64, elements: !560)
!560 = !{!561}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !559, file: !187, line: 195, baseType: !562, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !187, line: 198, size: 128, elements: !564)
!564 = !{!565, !566}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !563, file: !187, line: 199, baseType: !562, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !563, file: !187, line: 199, baseType: !567, size: 64, offset: 64)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !533, file: !14, line: 2385, baseType: !569, offset: 576)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !570, line: 206, elements: !571)
!570 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!571 = !{}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !533, file: !14, line: 2386, baseType: !569, offset: 576)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !533, file: !14, line: 2387, baseType: !569, offset: 576)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !533, file: !14, line: 2388, baseType: !575, offset: 576)
!575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !569, elements: !287)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !533, file: !14, line: 2390, baseType: !569, offset: 576)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !533, file: !14, line: 2391, baseType: !569, offset: 576)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !533, file: !14, line: 2392, baseType: !569, offset: 576)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !533, file: !14, line: 2393, baseType: !569, offset: 576)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !519, file: !14, line: 1197, baseType: !581, size: 64, offset: 384)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !583)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !584)
!584 = !{!585, !589, !593, !594, !598, !604, !608, !609, !610, !614, !618, !622, !623, !624, !630, !635, !636, !1737, !1738, !1739, !1740, !1744, !1748, !1795, !1810, !1811}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !583, file: !14, line: 2058, baseType: !586, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DISubroutineType(types: !588)
!588 = !{!367, !518}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !583, file: !14, line: 2059, baseType: !590, size: 64, offset: 64)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{null, !367}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !583, file: !14, line: 2060, baseType: !590, size: 64, offset: 128)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !583, file: !14, line: 2062, baseType: !595, size: 64, offset: 192)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DISubroutineType(types: !597)
!597 = !{null, !367, !109}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !583, file: !14, line: 2063, baseType: !599, size: 64, offset: 256)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DISubroutineType(types: !601)
!601 = !{!109, !367, !602}
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !583, file: !14, line: 2064, baseType: !605, size: 64, offset: 320)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{!109, !367}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !583, file: !14, line: 2065, baseType: !590, size: 64, offset: 384)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !583, file: !14, line: 2066, baseType: !553, size: 64, offset: 448)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !583, file: !14, line: 2067, baseType: !611, size: 64, offset: 512)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DISubroutineType(types: !613)
!613 = !{!109, !518, !109}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !583, file: !14, line: 2068, baseType: !615, size: 64, offset: 576)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DISubroutineType(types: !617)
!617 = !{!109, !518, !13}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !583, file: !14, line: 2069, baseType: !619, size: 64, offset: 640)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DISubroutineType(types: !621)
!621 = !{!109, !518}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !583, file: !14, line: 2070, baseType: !615, size: 64, offset: 704)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !583, file: !14, line: 2071, baseType: !619, size: 64, offset: 768)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !583, file: !14, line: 2072, baseType: !625, size: 64, offset: 832)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DISubroutineType(types: !627)
!627 = !{!109, !402, !628}
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !583, file: !14, line: 2073, baseType: !631, size: 64, offset: 896)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DISubroutineType(types: !633)
!633 = !{!109, !518, !634, !286}
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !583, file: !14, line: 2074, baseType: !553, size: 64, offset: 960)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !583, file: !14, line: 2076, baseType: !637, size: 64, offset: 1024)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{!109, !640, !402}
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !642, line: 17, size: 960, elements: !643)
!642 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!643 = !{!644, !645, !646, !647, !648, !649, !650, !651, !672, !694, !695, !1736}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !641, file: !642, line: 18, baseType: !286, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !641, file: !642, line: 19, baseType: !333, size: 64, offset: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !641, file: !642, line: 20, baseType: !333, size: 64, offset: 128)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !641, file: !642, line: 21, baseType: !333, size: 64, offset: 192)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !641, file: !642, line: 22, baseType: !333, size: 64, offset: 256)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !641, file: !642, line: 23, baseType: !528, size: 64, offset: 320)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !641, file: !642, line: 24, baseType: !528, size: 64, offset: 384)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !641, file: !642, line: 25, baseType: !652, size: 256, offset: 448)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !653, line: 66, size: 256, elements: !654)
!653 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!654 = !{!655, !664, !666, !671}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !652, file: !653, line: 67, baseType: !656, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !657, line: 13, baseType: !658)
!657 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !187, line: 181, baseType: !659)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !187, line: 179, size: 64, elements: !660)
!660 = !{!661}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !659, file: !187, line: 180, baseType: !662, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !245, line: 22, baseType: !663)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !247, line: 30, baseType: !530)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !652, file: !653, line: 68, baseType: !665, size: 32, offset: 64)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !225, line: 23, baseType: !224)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !652, file: !653, line: 70, baseType: !667, size: 32, offset: 96)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !668, line: 15, size: 32, elements: !669)
!668 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!669 = !{!670}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !667, file: !668, line: 20, baseType: !236, size: 32)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !652, file: !653, line: 72, baseType: !186, size: 128, offset: 128)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !641, file: !642, line: 26, baseType: !673, size: 64, offset: 704)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !675)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !642, line: 32, size: 256, elements: !676)
!676 = !{!677, !682, !686, !690}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !675, file: !642, line: 33, baseType: !678, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DISubroutineType(types: !680)
!680 = !{!358, !640, !681}
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !675, file: !642, line: 34, baseType: !683, size: 64, offset: 64)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DISubroutineType(types: !685)
!685 = !{null, !640, !358}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !675, file: !642, line: 35, baseType: !687, size: 64, offset: 128)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DISubroutineType(types: !689)
!689 = !{!358, !640, !358, !681}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !675, file: !642, line: 36, baseType: !691, size: 64, offset: 192)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DISubroutineType(types: !693)
!693 = !{!109, !640, !358}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !641, file: !642, line: 27, baseType: !109, size: 32, offset: 768)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !641, file: !642, line: 28, baseType: !696, size: 64, offset: 832)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !698)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !699)
!699 = !{!700, !719, !720, !722, !723, !724, !725, !726, !789, !1001, !1010, !1016, !1017, !1726, !1727, !1728, !1729, !1731, !1732, !1735}
!700 = !DIDerivedType(tag: DW_TAG_member, scope: !698, file: !14, line: 995, baseType: !701, size: 128)
!701 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !698, file: !14, line: 995, size: 128, elements: !702)
!702 = !{!703, !709, !718}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !701, file: !14, line: 996, baseType: !704, size: 64)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !705, line: 60, size: 64, elements: !706)
!705 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!706 = !{!707}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !704, file: !705, line: 61, baseType: !708, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !701, file: !14, line: 997, baseType: !710, size: 128, align: 64)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !187, line: 232, size: 128, align: 64, elements: !711)
!711 = !{!712, !714}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !710, file: !187, line: 233, baseType: !713, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !710, file: !187, line: 234, baseType: !715, size: 64, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DISubroutineType(types: !717)
!717 = !{null, !713}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !701, file: !14, line: 998, baseType: !7, size: 32)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !698, file: !14, line: 1005, baseType: !216, size: 32, offset: 128)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !698, file: !14, line: 1006, baseType: !721, size: 32, offset: 160)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !187, line: 156, baseType: !7)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !698, file: !14, line: 1007, baseType: !656, size: 64, offset: 192)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !698, file: !14, line: 1008, baseType: !652, size: 256, offset: 256)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !698, file: !14, line: 1009, baseType: !528, size: 64, offset: 512)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !698, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !698, file: !14, line: 1011, baseType: !727, size: 256, offset: 640)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !728)
!728 = !{!729, !750, !785, !786, !787, !788}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !727, file: !14, line: 949, baseType: !730, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !731, line: 34, baseType: !732)
!731 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !731, line: 25, size: 64, elements: !733)
!733 = !{!734}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !732, file: !731, line: 26, baseType: !735, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !736, line: 27, baseType: !737)
!736 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !736, line: 13, size: 64, elements: !738)
!738 = !{!739, !749}
!739 = !DIDerivedType(tag: DW_TAG_member, scope: !737, file: !736, line: 14, baseType: !740, size: 32)
!740 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !737, file: !736, line: 14, size: 32, elements: !741)
!741 = !{!742, !743}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !740, file: !736, line: 15, baseType: !236, size: 32)
!743 = !DIDerivedType(tag: DW_TAG_member, scope: !740, file: !736, line: 16, baseType: !744, size: 32)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !740, file: !736, line: 16, size: 32, elements: !745)
!745 = !{!746, !747}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !744, file: !736, line: 18, baseType: !244, size: 8)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !744, file: !736, line: 19, baseType: !748, size: 24, offset: 8)
!748 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 24, elements: !287)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !737, file: !736, line: 26, baseType: !228, size: 32, offset: 32)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !727, file: !14, line: 950, baseType: !751, size: 64, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !19, line: 59, size: 768, elements: !753)
!753 = !{!754, !760, !761, !762, !766, !767, !774, !775}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !752, file: !19, line: 61, baseType: !755, size: 32)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !756, line: 113, baseType: !757)
!756 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !756, line: 111, size: 32, elements: !758)
!758 = !{!759}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !757, file: !756, line: 112, baseType: !236, size: 32)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !752, file: !19, line: 62, baseType: !7, size: 32, offset: 32)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !752, file: !19, line: 63, baseType: !216, size: 32, offset: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !752, file: !19, line: 65, baseType: !763, size: 256, offset: 128)
!763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !559, size: 256, elements: !764)
!764 = !{!765}
!765 = !DISubrange(count: 4)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !752, file: !19, line: 66, baseType: !559, size: 64, offset: 384)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !752, file: !19, line: 68, baseType: !768, size: 192, offset: 448)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !769, line: 41, baseType: !770)
!769 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !769, line: 37, size: 192, elements: !771)
!771 = !{!772, !773}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !770, file: !769, line: 38, baseType: !216, size: 32)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !770, file: !769, line: 39, baseType: !186, size: 128, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !752, file: !19, line: 69, baseType: !710, size: 128, align: 64, offset: 640)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !752, file: !19, line: 70, baseType: !776, offset: 768)
!776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !777, elements: !783)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !19, line: 54, size: 128, elements: !778)
!778 = !{!779, !780}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !777, file: !19, line: 55, baseType: !109, size: 32)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !777, file: !19, line: 56, baseType: !781, size: 64, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !19, line: 56, flags: DIFlagFwdDecl)
!783 = !{!784}
!784 = !DISubrange(count: -1)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !727, file: !14, line: 951, baseType: !18, size: 32, offset: 128)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !727, file: !14, line: 952, baseType: !373, size: 32, offset: 160)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !727, file: !14, line: 952, baseType: !373, size: 32, offset: 192)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !727, file: !14, line: 953, baseType: !109, size: 32, offset: 224)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !698, file: !14, line: 1012, baseType: !790, size: 64, offset: 896)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !792)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !793, line: 110, size: 1472, elements: !794)
!793 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!794 = !{!795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !811, !812, !813, !814, !815, !816, !946, !947, !948, !949, !950, !981, !984, !988, !996}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !792, file: !793, line: 111, baseType: !656, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !792, file: !793, line: 112, baseType: !373, size: 32, offset: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !792, file: !793, line: 113, baseType: !382, size: 32, offset: 96)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !792, file: !793, line: 114, baseType: !373, size: 32, offset: 128)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !792, file: !793, line: 115, baseType: !382, size: 32, offset: 160)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !792, file: !793, line: 116, baseType: !373, size: 32, offset: 192)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !792, file: !793, line: 117, baseType: !382, size: 32, offset: 224)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !792, file: !793, line: 118, baseType: !373, size: 32, offset: 256)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !792, file: !793, line: 119, baseType: !382, size: 32, offset: 288)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !792, file: !793, line: 120, baseType: !7, size: 32, offset: 320)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !792, file: !793, line: 121, baseType: !806, size: 64, offset: 384)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !807, line: 24, baseType: !808)
!807 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !807, line: 24, size: 64, elements: !809)
!809 = !{!810}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !808, file: !807, line: 24, baseType: !440, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !792, file: !793, line: 122, baseType: !806, size: 64, offset: 448)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !792, file: !793, line: 123, baseType: !806, size: 64, offset: 512)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !792, file: !793, line: 124, baseType: !806, size: 64, offset: 576)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !792, file: !793, line: 125, baseType: !806, size: 64, offset: 640)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !792, file: !793, line: 127, baseType: !248, size: 8, offset: 704)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !792, file: !793, line: 129, baseType: !817, size: 64, offset: 768)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !819, line: 195, size: 1728, elements: !820)
!819 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!820 = !{!821, !822, !827, !839, !848, !851, !852, !859, !860, !861, !862, !865, !866, !867, !869, !870, !910, !931}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !818, file: !819, line: 196, baseType: !755, size: 32)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !818, file: !819, line: 197, baseType: !823, size: 32, offset: 32)
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !819, line: 28, baseType: !824)
!824 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !187, line: 104, baseType: !825)
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !245, line: 20, baseType: !826)
!826 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !247, line: 26, baseType: !109)
!827 = !DIDerivedType(tag: DW_TAG_member, scope: !818, file: !819, line: 198, baseType: !828, size: 192, offset: 64)
!828 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !818, file: !819, line: 198, size: 192, elements: !829)
!829 = !{!830, !831}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !828, file: !819, line: 199, baseType: !186, size: 128)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !828, file: !819, line: 200, baseType: !832, size: 192, align: 64)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !833, line: 5, size: 192, align: 64, elements: !834)
!833 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!834 = !{!835, !836, !838}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !832, file: !833, line: 6, baseType: !336, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !832, file: !833, line: 7, baseType: !837, size: 64, offset: 64)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !832, file: !833, line: 8, baseType: !837, size: 64, offset: 128)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !818, file: !819, line: 205, baseType: !840, size: 320, offset: 256)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !841, line: 48, size: 320, elements: !842)
!841 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!842 = !{!843, !844, !845, !846, !847}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !840, file: !841, line: 49, baseType: !656, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !840, file: !841, line: 55, baseType: !656, size: 64, offset: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !840, file: !841, line: 57, baseType: !667, size: 32, offset: 128)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !840, file: !841, line: 59, baseType: !665, size: 32, offset: 160)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !840, file: !841, line: 60, baseType: !186, size: 128, offset: 192)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !818, file: !819, line: 206, baseType: !849, size: 64, offset: 576)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !819, line: 206, flags: DIFlagFwdDecl)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !818, file: !819, line: 207, baseType: !358, size: 64, offset: 640)
!852 = !DIDerivedType(tag: DW_TAG_member, scope: !818, file: !819, line: 208, baseType: !853, size: 64, offset: 704)
!853 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !818, file: !819, line: 208, size: 64, elements: !854)
!854 = !{!855, !858}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !853, file: !819, line: 209, baseType: !856, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !857, line: 8, baseType: !663)
!857 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!858 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !853, file: !819, line: 210, baseType: !856, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !818, file: !819, line: 212, baseType: !856, size: 64, offset: 768)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !818, file: !819, line: 213, baseType: !373, size: 32, offset: 832)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !818, file: !819, line: 214, baseType: !382, size: 32, offset: 864)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !818, file: !819, line: 215, baseType: !863, size: 32, offset: 896)
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !819, line: 31, baseType: !864)
!864 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !187, line: 110, baseType: !436)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !818, file: !819, line: 216, baseType: !256, size: 16, offset: 928)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !818, file: !819, line: 217, baseType: !256, size: 16, offset: 944)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !818, file: !819, line: 221, baseType: !868, size: 16, offset: 960)
!868 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !818, file: !819, line: 228, baseType: !336, size: 64, offset: 1024)
!870 = !DIDerivedType(tag: DW_TAG_member, scope: !818, file: !819, line: 245, baseType: !871, size: 320, offset: 1088)
!871 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !818, file: !819, line: 245, size: 320, elements: !872)
!872 = !{!873, !902}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !871, file: !819, line: 246, baseType: !874, size: 320)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !819, line: 114, size: 320, elements: !875)
!875 = !{!876, !877, !889, !892, !901}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !874, file: !819, line: 116, baseType: !336, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, scope: !874, file: !819, line: 117, baseType: !878, size: 64, offset: 64)
!878 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !874, file: !819, line: 117, size: 64, elements: !879)
!879 = !{!880, !888}
!880 = !DIDerivedType(tag: DW_TAG_member, scope: !878, file: !819, line: 118, baseType: !881, size: 64)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !878, file: !819, line: 118, size: 64, elements: !882)
!882 = !{!883, !884}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !881, file: !819, line: 120, baseType: !254, size: 16)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !881, file: !819, line: 121, baseType: !885, size: 48, offset: 16)
!885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 48, elements: !886)
!886 = !{!887}
!887 = !DISubrange(count: 6)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !878, file: !819, line: 127, baseType: !336, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !874, file: !819, line: 129, baseType: !890, size: 64, offset: 128)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !819, line: 102, flags: DIFlagFwdDecl)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !874, file: !819, line: 130, baseType: !893, size: 64, offset: 192)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !819, line: 108, size: 192, elements: !895)
!895 = !{!896, !897, !898}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !894, file: !819, line: 109, baseType: !710, size: 128, align: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !894, file: !819, line: 110, baseType: !755, size: 32, offset: 128)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !894, file: !819, line: 111, baseType: !899, size: 8, offset: 160)
!899 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !187, line: 35, baseType: !900)
!900 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !874, file: !819, line: 131, baseType: !205, size: 64, offset: 256)
!902 = !DIDerivedType(tag: DW_TAG_member, scope: !871, file: !819, line: 247, baseType: !903, size: 320)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !871, file: !819, line: 247, size: 320, elements: !904)
!904 = !{!905, !906, !907, !908, !909}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !903, file: !819, line: 248, baseType: !336, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !903, file: !819, line: 249, baseType: !336, size: 64, offset: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !903, file: !819, line: 250, baseType: !890, size: 64, offset: 128)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !903, file: !819, line: 251, baseType: !893, size: 64, offset: 192)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !903, file: !819, line: 252, baseType: !286, size: 64, offset: 256)
!910 = !DIDerivedType(tag: DW_TAG_member, scope: !818, file: !819, line: 260, baseType: !911, size: 256, offset: 1408)
!911 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !818, file: !819, line: 260, size: 256, elements: !912)
!912 = !{!913, !919}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !911, file: !819, line: 261, baseType: !914, size: 256)
!914 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !819, line: 134, size: 256, elements: !915)
!915 = !{!916, !917}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !914, file: !819, line: 135, baseType: !358, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !914, file: !819, line: 136, baseType: !918, size: 256)
!918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !358, size: 256, elements: !764)
!919 = !DIDerivedType(tag: DW_TAG_member, scope: !911, file: !819, line: 262, baseType: !920, size: 256)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !911, file: !819, line: 262, size: 256, elements: !921)
!921 = !{!922, !923}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !920, file: !819, line: 264, baseType: !186, size: 128)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !920, file: !819, line: 265, baseType: !924, size: 128, offset: 128)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !925, line: 22, size: 128, elements: !926)
!925 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!926 = !{!927, !930}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !924, file: !925, line: 23, baseType: !928, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !925, line: 23, flags: DIFlagFwdDecl)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !924, file: !925, line: 24, baseType: !336, size: 64, offset: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !818, file: !819, line: 280, baseType: !932, size: 64, offset: 1664)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !819, line: 176, size: 192, elements: !934)
!934 = !{!935, !944, !945}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !933, file: !819, line: 177, baseType: !936, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !819, line: 171, baseType: !937)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DISubroutineType(types: !939)
!939 = !{!109, !817, !940, !942, !817}
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !891)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !914)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !933, file: !819, line: 178, baseType: !817, size: 64, offset: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !933, file: !819, line: 179, baseType: !890, size: 64, offset: 128)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !792, file: !793, line: 130, baseType: !817, size: 64, offset: 832)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !792, file: !793, line: 131, baseType: !817, size: 64, offset: 896)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !792, file: !793, line: 132, baseType: !817, size: 64, offset: 960)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !792, file: !793, line: 135, baseType: !358, size: 64, offset: 1024)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !792, file: !793, line: 137, baseType: !951, size: 64, offset: 1088)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !953, line: 14, size: 1088, elements: !954)
!953 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!954 = !{!955, !956, !965, !966, !967, !968, !969, !970}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !952, file: !953, line: 15, baseType: !755, size: 32)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !952, file: !953, line: 17, baseType: !957, size: 320, offset: 64)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !958, line: 22, size: 320, elements: !959)
!958 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!959 = !{!960, !961, !962, !963}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !957, file: !958, line: 23, baseType: !665, size: 32)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !957, file: !958, line: 24, baseType: !662, size: 64, offset: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !957, file: !958, line: 26, baseType: !186, size: 128, offset: 128)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !957, file: !958, line: 28, baseType: !964, size: 64, offset: 256)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !952, file: !953, line: 19, baseType: !336, size: 64, offset: 384)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !952, file: !953, line: 20, baseType: !656, size: 64, offset: 448)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !952, file: !953, line: 23, baseType: !563, size: 128, offset: 512)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !952, file: !953, line: 24, baseType: !373, size: 32, offset: 640)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !952, file: !953, line: 29, baseType: !656, size: 64, offset: 704)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !952, file: !953, line: 36, baseType: !971, size: 320, offset: 768)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !972, line: 15, size: 320, elements: !973)
!972 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!973 = !{!974, !975, !976, !977, !978, !979, !980}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !971, file: !972, line: 16, baseType: !665, size: 32)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !971, file: !972, line: 18, baseType: !109, size: 32, offset: 32)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !971, file: !972, line: 19, baseType: !109, size: 32, offset: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !971, file: !972, line: 20, baseType: !109, size: 32, offset: 96)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !971, file: !972, line: 21, baseType: !109, size: 32, offset: 128)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !971, file: !972, line: 22, baseType: !336, size: 64, offset: 192)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !971, file: !972, line: 23, baseType: !336, size: 64, offset: 256)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !792, file: !793, line: 138, baseType: !982, size: 64, offset: 1152)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !374, line: 18, flags: DIFlagFwdDecl)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !792, file: !793, line: 139, baseType: !985, size: 64, offset: 1216)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !987, line: 16, flags: DIFlagFwdDecl)
!987 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!988 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !792, file: !793, line: 140, baseType: !989, size: 64, offset: 1280)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !793, line: 25, size: 64, elements: !991)
!991 = !{!992, !993, !994}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !990, file: !793, line: 26, baseType: !236, size: 32)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !990, file: !793, line: 27, baseType: !109, size: 32, offset: 32)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !990, file: !793, line: 28, baseType: !995, offset: 64)
!995 = !DICompositeType(tag: DW_TAG_array_type, baseType: !382, elements: !783)
!996 = !DIDerivedType(tag: DW_TAG_member, scope: !792, file: !793, line: 142, baseType: !997, size: 128, offset: 1344)
!997 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !792, file: !793, line: 142, size: 128, elements: !998)
!998 = !{!999, !1000}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !997, file: !793, line: 143, baseType: !109, size: 32)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !997, file: !793, line: 144, baseType: !710, size: 128, align: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !698, file: !14, line: 1013, baseType: !1002, size: 256, offset: 960)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !1003)
!1003 = !{!1004, !1005, !1006, !1007, !1008, !1009}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1002, file: !14, line: 971, baseType: !336, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1002, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1002, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1002, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1002, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1002, file: !14, line: 976, baseType: !528, size: 64, offset: 192)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !698, file: !14, line: 1014, baseType: !1011, size: 128, offset: 1216)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1012, line: 8, size: 128, elements: !1013)
!1012 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1013 = !{!1014, !1015}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1011, file: !1012, line: 9, baseType: !512, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1011, file: !1012, line: 10, baseType: !402, size: 64, offset: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !698, file: !14, line: 1015, baseType: !367, size: 64, offset: 1344)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !698, file: !14, line: 1016, baseType: !1018, size: 64, offset: 1408)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1020)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !1021)
!1021 = !{!1022, !1023, !1028, !1032, !1036, !1610, !1611, !1617, !1630, !1638, !1642, !1643, !1647, !1648, !1652, !1657, !1658, !1662, !1666, !1672, !1673, !1677, !1678, !1685, !1689, !1693, !1699, !1703, !1707, !1711, !1715, !1716, !1722}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1020, file: !14, line: 1915, baseType: !181, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1020, file: !14, line: 1916, baseType: !1024, size: 64, offset: 64)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!528, !1027, !528, !109}
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1020, file: !14, line: 1917, baseType: !1029, size: 64, offset: 128)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!318, !1027, !286, !333, !681}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1020, file: !14, line: 1918, baseType: !1033, size: 64, offset: 192)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!318, !1027, !205, !333, !681}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1020, file: !14, line: 1919, baseType: !1037, size: 64, offset: 256)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{!318, !1040, !1608}
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !1042)
!1042 = !{!1043, !1044, !1045, !1049, !1050, !1051, !1052}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1041, file: !14, line: 374, baseType: !1027, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1041, file: !14, line: 375, baseType: !528, size: 64, offset: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1041, file: !14, line: 376, baseType: !1046, size: 64, offset: 128)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{null, !1040, !322}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1041, file: !14, line: 377, baseType: !358, size: 64, offset: 192)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1041, file: !14, line: 378, baseType: !109, size: 32, offset: 256)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1041, file: !14, line: 379, baseType: !254, size: 16, offset: 288)
!1052 = !DIDerivedType(tag: DW_TAG_member, scope: !1041, file: !14, line: 380, baseType: !1053, size: 64, offset: 320)
!1053 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1041, file: !14, line: 380, size: 64, elements: !1054)
!1054 = !{!1055, !1604}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1053, file: !14, line: 386, baseType: !1056, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !1058, line: 998, size: 448, elements: !1059)
!1058 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!1059 = !{!1060, !1590, !1591}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !1057, file: !1058, line: 999, baseType: !1061, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !35, line: 293, size: 1536, elements: !1063)
!1063 = !{!1064, !1557, !1571}
!1064 = !DIDerivedType(tag: DW_TAG_member, scope: !1062, file: !35, line: 295, baseType: !1065, size: 512)
!1065 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1062, file: !35, line: 295, size: 512, elements: !1066)
!1066 = !{!1067, !1093}
!1067 = !DIDerivedType(tag: DW_TAG_member, scope: !1065, file: !35, line: 296, baseType: !1068, size: 448)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1065, file: !35, line: 296, size: 448, elements: !1069)
!1069 = !{!1070, !1071, !1080, !1081, !1082, !1091, !1092}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1068, file: !35, line: 298, baseType: !336, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, scope: !1068, file: !35, line: 299, baseType: !1072, size: 128, offset: 64)
!1072 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1068, file: !35, line: 299, size: 128, elements: !1073)
!1073 = !{!1074, !1075}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1072, file: !35, line: 300, baseType: !186, size: 128)
!1075 = !DIDerivedType(tag: DW_TAG_member, scope: !1072, file: !35, line: 302, baseType: !1076, size: 128)
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1072, file: !35, line: 302, size: 128, elements: !1077)
!1077 = !{!1078, !1079}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1076, file: !35, line: 303, baseType: !358, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1076, file: !35, line: 305, baseType: !7, size: 32, offset: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1068, file: !35, line: 310, baseType: !363, size: 64, offset: 192)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1068, file: !35, line: 311, baseType: !336, size: 64, offset: 256)
!1082 = !DIDerivedType(tag: DW_TAG_member, scope: !1068, file: !35, line: 312, baseType: !1083, size: 64, offset: 320)
!1083 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1068, file: !35, line: 312, size: 64, elements: !1084)
!1084 = !{!1085, !1086}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1083, file: !35, line: 313, baseType: !358, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1083, file: !35, line: 314, baseType: !1087, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !35, line: 257, baseType: !1088)
!1088 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !35, line: 255, size: 64, elements: !1089)
!1089 = !{!1090}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1088, file: !35, line: 256, baseType: !336, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1068, file: !35, line: 316, baseType: !236, size: 32, offset: 384)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1068, file: !35, line: 317, baseType: !236, size: 32, offset: 416)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1065, file: !35, line: 323, baseType: !1094, size: 512, align: 128)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !35, line: 74, size: 512, align: 128, elements: !1095)
!1095 = !{!1096, !1097, !1551, !1556}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1094, file: !35, line: 75, baseType: !336, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, scope: !1094, file: !35, line: 83, baseType: !1098, size: 320, offset: 64)
!1098 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1094, file: !35, line: 83, size: 320, elements: !1099)
!1099 = !{!1100, !1121, !1135, !1139, !1550}
!1100 = !DIDerivedType(tag: DW_TAG_member, scope: !1098, file: !35, line: 84, baseType: !1101, size: 320)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1098, file: !35, line: 84, size: 320, elements: !1102)
!1102 = !{!1103, !1114, !1115, !1120}
!1103 = !DIDerivedType(tag: DW_TAG_member, scope: !1101, file: !35, line: 90, baseType: !1104, size: 128)
!1104 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1101, file: !35, line: 90, size: 128, elements: !1105)
!1105 = !{!1106, !1107, !1112, !1113}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1104, file: !35, line: 91, baseType: !186, size: 128)
!1107 = !DIDerivedType(tag: DW_TAG_member, scope: !1104, file: !35, line: 94, baseType: !1108, size: 128)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1104, file: !35, line: 94, size: 128, elements: !1109)
!1109 = !{!1110, !1111}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1108, file: !35, line: 96, baseType: !358, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1108, file: !35, line: 98, baseType: !7, size: 32, offset: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1104, file: !35, line: 102, baseType: !186, size: 128)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1104, file: !35, line: 103, baseType: !186, size: 128)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1101, file: !35, line: 106, baseType: !363, size: 64, offset: 128)
!1115 = !DIDerivedType(tag: DW_TAG_member, scope: !1101, file: !35, line: 107, baseType: !1116, size: 64, offset: 192)
!1116 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1101, file: !35, line: 107, size: 64, elements: !1117)
!1117 = !{!1118, !1119}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1116, file: !35, line: 108, baseType: !336, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1116, file: !35, line: 109, baseType: !336, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1101, file: !35, line: 117, baseType: !336, size: 64, offset: 256)
!1121 = !DIDerivedType(tag: DW_TAG_member, scope: !1098, file: !35, line: 119, baseType: !1122, size: 320)
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1098, file: !35, line: 119, size: 320, elements: !1123)
!1123 = !{!1124, !1125, !1128, !1129, !1130}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1122, file: !35, line: 124, baseType: !336, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1122, file: !35, line: 125, baseType: !1126, size: 64, offset: 64)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !35, line: 125, flags: DIFlagFwdDecl)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1122, file: !35, line: 126, baseType: !336, size: 64, offset: 128)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1122, file: !35, line: 127, baseType: !336, size: 64, offset: 192)
!1130 = !DIDerivedType(tag: DW_TAG_member, scope: !1122, file: !35, line: 128, baseType: !1131, size: 64, offset: 256)
!1131 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1122, file: !35, line: 128, size: 64, elements: !1132)
!1132 = !{!1133, !1134}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1131, file: !35, line: 133, baseType: !336, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1131, file: !35, line: 138, baseType: !656, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, scope: !1098, file: !35, line: 141, baseType: !1136, size: 64)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1098, file: !35, line: 141, size: 64, elements: !1137)
!1137 = !{!1138}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1136, file: !35, line: 142, baseType: !336, size: 64)
!1139 = !DIDerivedType(tag: DW_TAG_member, scope: !1098, file: !35, line: 144, baseType: !1140, size: 128)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1098, file: !35, line: 144, size: 128, elements: !1141)
!1141 = !{!1142, !1549}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1140, file: !35, line: 146, baseType: !1143, size: 64)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !27, line: 126, size: 1216, elements: !1145)
!1145 = !{!1146, !1156, !1177, !1188, !1189, !1190, !1191, !1531, !1532, !1533}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1144, file: !27, line: 127, baseType: !1147, size: 384)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !27, line: 21, size: 384, elements: !1148)
!1148 = !{!1149, !1150, !1152, !1153, !1154, !1155}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1147, file: !27, line: 22, baseType: !336, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1147, file: !27, line: 23, baseType: !1151, size: 64, offset: 64)
!1151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !336)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1147, file: !27, line: 24, baseType: !1151, size: 64, offset: 128)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1147, file: !27, line: 25, baseType: !336, size: 64, offset: 192)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1147, file: !27, line: 26, baseType: !336, size: 64, offset: 256)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1147, file: !27, line: 27, baseType: !336, size: 64, offset: 320)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1144, file: !27, line: 128, baseType: !1157, size: 128, offset: 384)
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1158, line: 105, size: 128, elements: !1159)
!1158 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1159 = !{!1160, !1161}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1157, file: !1158, line: 110, baseType: !336, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1157, file: !1158, line: 118, baseType: !1162, size: 64, offset: 64)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1158, line: 95, size: 448, elements: !1164)
!1164 = !{!1165, !1166, !1172, !1173, !1174, !1175, !1176}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1163, file: !1158, line: 96, baseType: !656, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1163, file: !1158, line: 97, baseType: !1167, size: 64, offset: 64)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1158, line: 60, baseType: !1169)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{null, !1171}
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1163, file: !1158, line: 98, baseType: !1167, size: 64, offset: 128)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1163, file: !1158, line: 99, baseType: !899, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1163, file: !1158, line: 100, baseType: !899, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1163, file: !1158, line: 101, baseType: !710, size: 128, align: 64, offset: 256)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1163, file: !1158, line: 102, baseType: !1171, size: 64, offset: 384)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1144, file: !27, line: 129, baseType: !1178, size: 256, offset: 512)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1179, line: 26, size: 256, elements: !1180)
!1179 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1180 = !{!1181, !1182}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1178, file: !1179, line: 27, baseType: !7, size: 32)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1178, file: !1179, line: 28, baseType: !1183, size: 192, offset: 64)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1184, line: 43, size: 192, elements: !1185)
!1184 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1185 = !{!1186, !1187}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1183, file: !1184, line: 44, baseType: !665, size: 32)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1183, file: !1184, line: 45, baseType: !186, size: 128, offset: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1144, file: !27, line: 130, baseType: !26, size: 32, offset: 768)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1144, file: !27, line: 131, baseType: !7, size: 32, offset: 800)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1144, file: !27, line: 132, baseType: !336, size: 64, offset: 832)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1144, file: !27, line: 133, baseType: !1192, size: 64, offset: 896)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1194)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !27, line: 77, size: 192, elements: !1195)
!1195 = !{!1196, !1201, !1527}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1194, file: !27, line: 83, baseType: !1197, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{null, !1200}
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1194, file: !27, line: 89, baseType: !1202, size: 64, offset: 64)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{!1205, !1206}
!1205 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !35, line: 1184, baseType: !7)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1208, line: 512, size: 896, elements: !1209)
!1208 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1209 = !{!1210, !1494, !1495, !1502, !1509, !1519, !1520, !1521, !1523, !1525}
!1210 = !DIDerivedType(tag: DW_TAG_member, scope: !1207, file: !1208, line: 513, baseType: !1211, size: 320)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1207, file: !1208, line: 513, size: 320, elements: !1212)
!1212 = !{!1213, !1489, !1491, !1492, !1493}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1211, file: !1208, line: 514, baseType: !1214, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !35, line: 625, size: 1344, elements: !1216)
!1216 = !{!1217, !1226, !1394, !1400, !1407, !1408, !1413, !1414, !1419, !1420, !1423, !1482, !1483, !1484, !1485, !1486, !1487}
!1217 = !DIDerivedType(tag: DW_TAG_member, scope: !1215, file: !35, line: 628, baseType: !1218, size: 128)
!1218 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1215, file: !35, line: 628, size: 128, elements: !1219)
!1219 = !{!1220, !1225}
!1220 = !DIDerivedType(tag: DW_TAG_member, scope: !1218, file: !35, line: 629, baseType: !1221, size: 128)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1218, file: !35, line: 629, size: 128, elements: !1222)
!1222 = !{!1223, !1224}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1221, file: !35, line: 631, baseType: !336, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1221, file: !35, line: 632, baseType: !336, size: 64, offset: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1218, file: !35, line: 635, baseType: !710, size: 128, align: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1215, file: !35, line: 639, baseType: !1227, size: 64, offset: 128)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !35, line: 733, size: 10240, elements: !1229)
!1229 = !{!1230, !1392}
!1230 = !DIDerivedType(tag: DW_TAG_member, scope: !1228, file: !35, line: 734, baseType: !1231, size: 10240)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1228, file: !35, line: 734, size: 10240, elements: !1232)
!1232 = !{!1233, !1237, !1250, !1254, !1255, !1256, !1257, !1258, !1259, !1268, !1269, !1270, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1309, !1311, !1314, !1361, !1362, !1363, !1366, !1367, !1368, !1371, !1372, !1373, !1379, !1380}
!1233 = !DIDerivedType(tag: DW_TAG_member, scope: !1231, file: !35, line: 739, baseType: !1234, size: 512, align: 512)
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1231, file: !35, line: 739, size: 512, align: 512, elements: !1235)
!1235 = !{!1236}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1234, file: !35, line: 747, baseType: !236, size: 32)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1231, file: !35, line: 750, baseType: !1238, size: 128, offset: 512)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1239, line: 218, size: 128, elements: !1240)
!1239 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1240 = !{!1241, !1248, !1249}
!1241 = !DIDerivedType(tag: DW_TAG_member, scope: !1238, file: !1239, line: 219, baseType: !1242, size: 32)
!1242 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1238, file: !1239, line: 219, size: 32, elements: !1243)
!1243 = !{!1244, !1245}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1242, file: !1239, line: 220, baseType: !216, size: 32)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1242, file: !1239, line: 221, baseType: !1246)
!1246 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1239, line: 197, baseType: !1247)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1239, line: 197, elements: !571)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1238, file: !1239, line: 223, baseType: !7, size: 32, offset: 32)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1238, file: !1239, line: 224, baseType: !358, size: 64, offset: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1231, file: !35, line: 752, baseType: !1251, size: 64, offset: 640)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!336, !1027, !336, !336, !336, !336}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1231, file: !35, line: 756, baseType: !336, size: 64, offset: 704)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1231, file: !35, line: 757, baseType: !336, size: 64, offset: 768)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1231, file: !35, line: 760, baseType: !336, size: 64, offset: 832)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1231, file: !35, line: 761, baseType: !336, size: 64, offset: 896)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1231, file: !35, line: 763, baseType: !336, size: 64, offset: 960)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1231, file: !35, line: 764, baseType: !1260, size: 64, offset: 1024)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1262, line: 299, baseType: !1263)
!1262 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1262, line: 299, size: 64, elements: !1264)
!1264 = !{!1265}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1263, file: !1262, line: 299, baseType: !1266, size: 64)
!1266 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1267, line: 18, baseType: !336)
!1267 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1231, file: !35, line: 773, baseType: !236, size: 32, offset: 1088)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1231, file: !35, line: 785, baseType: !236, size: 32, offset: 1120)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1231, file: !35, line: 795, baseType: !1271, size: 64, offset: 1152)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !35, line: 726, size: 128, elements: !1273)
!1273 = !{!1274, !1275}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1272, file: !35, line: 727, baseType: !440, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1272, file: !35, line: 728, baseType: !109, size: 32, offset: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1231, file: !35, line: 801, baseType: !336, size: 64, offset: 1216)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1231, file: !35, line: 804, baseType: !656, size: 64, offset: 1280)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1231, file: !35, line: 806, baseType: !109, size: 32, offset: 1344)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1231, file: !35, line: 808, baseType: !216, size: 32, offset: 1376)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1231, file: !35, line: 823, baseType: !840, size: 320, offset: 1408)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1231, file: !35, line: 825, baseType: !186, size: 128, offset: 1728)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1231, file: !35, line: 845, baseType: !109, size: 32, offset: 1856)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1231, file: !35, line: 849, baseType: !336, size: 64, offset: 1920)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1231, file: !35, line: 850, baseType: !336, size: 64, offset: 1984)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1231, file: !35, line: 852, baseType: !336, size: 64, offset: 2048)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1231, file: !35, line: 853, baseType: !336, size: 64, offset: 2112)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1231, file: !35, line: 854, baseType: !658, size: 64, offset: 2176)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1231, file: !35, line: 855, baseType: !336, size: 64, offset: 2240)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1231, file: !35, line: 856, baseType: !336, size: 64, offset: 2304)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1231, file: !35, line: 857, baseType: !336, size: 64, offset: 2368)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1231, file: !35, line: 858, baseType: !336, size: 64, offset: 2432)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1231, file: !35, line: 865, baseType: !413, size: 32, offset: 2496)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1231, file: !35, line: 867, baseType: !216, size: 32, offset: 2528)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1231, file: !35, line: 869, baseType: !336, size: 64, offset: 2560)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1231, file: !35, line: 869, baseType: !336, size: 64, offset: 2624)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1231, file: !35, line: 869, baseType: !336, size: 64, offset: 2688)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1231, file: !35, line: 869, baseType: !336, size: 64, offset: 2752)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1231, file: !35, line: 870, baseType: !336, size: 64, offset: 2816)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1231, file: !35, line: 870, baseType: !336, size: 64, offset: 2880)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1231, file: !35, line: 870, baseType: !336, size: 64, offset: 2944)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1231, file: !35, line: 871, baseType: !336, size: 64, offset: 3008)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1231, file: !35, line: 871, baseType: !336, size: 64, offset: 3072)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1231, file: !35, line: 871, baseType: !336, size: 64, offset: 3136)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1231, file: !35, line: 871, baseType: !336, size: 64, offset: 3200)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1231, file: !35, line: 873, baseType: !1306, size: 3328, offset: 3264)
!1306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !336, size: 3328, elements: !1307)
!1307 = !{!1308}
!1308 = !DISubrange(count: 52)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1231, file: !35, line: 875, baseType: !1310, size: 1280, offset: 6592)
!1310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !957, size: 1280, elements: !764)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1231, file: !35, line: 877, baseType: !1312, size: 64, offset: 7872)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !35, line: 877, flags: DIFlagFwdDecl)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1231, file: !35, line: 880, baseType: !1315, size: 1088, offset: 7936)
!1315 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1316, line: 72, baseType: !1317)
!1316 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1316, line: 23, size: 1088, elements: !1318)
!1318 = !{!1319, !1320, !1321, !1322, !1323, !1326, !1327, !1328, !1329, !1356, !1357, !1358}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1317, file: !1316, line: 28, baseType: !440, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1317, file: !1316, line: 38, baseType: !658, size: 64, offset: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1317, file: !1316, line: 40, baseType: !336, size: 64, offset: 128)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1317, file: !1316, line: 43, baseType: !840, size: 320, offset: 192)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1317, file: !1316, line: 44, baseType: !1324, size: 64, offset: 512)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1316, line: 44, flags: DIFlagFwdDecl)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1317, file: !1316, line: 48, baseType: !336, size: 64, offset: 576)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1317, file: !1316, line: 59, baseType: !652, size: 256, offset: 640)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1317, file: !1316, line: 60, baseType: !358, size: 64, offset: 896)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1317, file: !1316, line: 61, baseType: !1330, size: 64, offset: 960)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1332)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1333, line: 13, size: 1216, elements: !1334)
!1333 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1334 = !{!1335, !1336, !1337, !1338, !1339, !1340, !1341, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1332, file: !1333, line: 14, baseType: !358, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1332, file: !1333, line: 15, baseType: !336, size: 64, offset: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1332, file: !1333, line: 17, baseType: !336, size: 64, offset: 128)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1332, file: !1333, line: 17, baseType: !336, size: 64, offset: 192)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1332, file: !1333, line: 18, baseType: !336, size: 64, offset: 256)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1332, file: !1333, line: 18, baseType: !336, size: 64, offset: 320)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1332, file: !1333, line: 19, baseType: !1342, size: 64, offset: 384)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1332, file: !1333, line: 21, baseType: !322, size: 64, offset: 448)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1332, file: !1333, line: 23, baseType: !322, size: 64, offset: 512)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1332, file: !1333, line: 24, baseType: !322, size: 64, offset: 576)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1332, file: !1333, line: 25, baseType: !322, size: 64, offset: 640)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1332, file: !1333, line: 26, baseType: !322, size: 64, offset: 704)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1332, file: !1333, line: 27, baseType: !322, size: 64, offset: 768)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1332, file: !1333, line: 28, baseType: !322, size: 64, offset: 832)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1332, file: !1333, line: 29, baseType: !322, size: 64, offset: 896)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1332, file: !1333, line: 30, baseType: !322, size: 64, offset: 960)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1332, file: !1333, line: 31, baseType: !322, size: 64, offset: 1024)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1332, file: !1333, line: 32, baseType: !322, size: 64, offset: 1088)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1332, file: !1333, line: 33, baseType: !322, size: 64, offset: 1152)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1317, file: !1316, line: 63, baseType: !236, size: 32, offset: 1024)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1317, file: !1316, line: 69, baseType: !254, size: 16, offset: 1056)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1317, file: !1316, line: 70, baseType: !1359, size: 16, offset: 1072)
!1359 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !245, line: 18, baseType: !1360)
!1360 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !247, line: 23, baseType: !868)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1231, file: !35, line: 882, baseType: !336, size: 64, offset: 9024)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1231, file: !35, line: 885, baseType: !216, size: 32, offset: 9088)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1231, file: !35, line: 886, baseType: !1364, size: 64, offset: 9152)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !35, line: 732, flags: DIFlagFwdDecl)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1231, file: !35, line: 901, baseType: !982, size: 64, offset: 9216)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1231, file: !35, line: 904, baseType: !1027, size: 64, offset: 9280)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1231, file: !35, line: 906, baseType: !1369, size: 64, offset: 9344)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !35, line: 906, flags: DIFlagFwdDecl)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1231, file: !35, line: 930, baseType: !236, size: 32, offset: 9408)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1231, file: !35, line: 933, baseType: !236, size: 32, offset: 9440)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1231, file: !35, line: 935, baseType: !1374, size: 64, offset: 9472)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !1375)
!1375 = !{!1376}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1374, file: !68, line: 104, baseType: !1377, size: 64)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1231, file: !35, line: 940, baseType: !656, size: 64, offset: 9536)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1231, file: !35, line: 942, baseType: !1381, size: 256, offset: 9600)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1382, line: 98, size: 256, elements: !1383)
!1382 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1383 = !{!1384, !1385, !1386}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1381, file: !1382, line: 99, baseType: !656, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1381, file: !1382, line: 100, baseType: !186, size: 128, offset: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1381, file: !1382, line: 101, baseType: !1387, size: 64, offset: 192)
!1387 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1382, line: 21, baseType: !1388)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{null, !1391}
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1228, file: !35, line: 986, baseType: !1393, offset: 10240)
!1393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !336, elements: !783)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1215, file: !35, line: 640, baseType: !1395, size: 64, offset: 192)
!1395 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1262, line: 297, baseType: !1396)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1262, line: 297, size: 64, elements: !1397)
!1397 = !{!1398}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1396, file: !1262, line: 297, baseType: !1399, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1267, line: 19, baseType: !336)
!1400 = !DIDerivedType(tag: DW_TAG_member, scope: !1215, file: !35, line: 646, baseType: !1401, size: 64, offset: 256)
!1401 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1215, file: !35, line: 646, size: 64, elements: !1402)
!1402 = !{!1403, !1406}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1401, file: !35, line: 647, baseType: !1404, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1405)
!1405 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !35, line: 542, baseType: !336)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1401, file: !35, line: 648, baseType: !1405, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1215, file: !35, line: 666, baseType: !109, size: 32, offset: 320)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1215, file: !35, line: 667, baseType: !1409, size: 64, offset: 384)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !35, line: 579, size: 320, elements: !1411)
!1411 = !{!1412}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1410, file: !35, line: 580, baseType: !840, size: 320)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1215, file: !35, line: 670, baseType: !899, size: 8, offset: 448)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1215, file: !35, line: 681, baseType: !1415, size: 256, offset: 512)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1215, file: !35, line: 678, size: 256, elements: !1416)
!1416 = !{!1417, !1418}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1415, file: !35, line: 679, baseType: !832, size: 192, align: 64)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1415, file: !35, line: 680, baseType: !336, size: 64, offset: 192)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1215, file: !35, line: 689, baseType: !186, size: 128, offset: 768)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1215, file: !35, line: 691, baseType: !1421, size: 64, offset: 896)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !35, line: 691, flags: DIFlagFwdDecl)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1215, file: !35, line: 694, baseType: !1424, size: 64, offset: 960)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1426)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1208, line: 563, size: 1024, elements: !1427)
!1427 = !{!1428, !1432, !1433, !1437, !1441, !1445, !1446, !1450, !1454, !1458, !1459, !1460, !1464, !1468, !1474, !1478}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1426, file: !1208, line: 564, baseType: !1429, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{null, !1214}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1426, file: !1208, line: 569, baseType: !1429, size: 64, offset: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1426, file: !1208, line: 571, baseType: !1434, size: 64, offset: 128)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = !DISubroutineType(types: !1436)
!1436 = !{!109, !1214, !336}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1426, file: !1208, line: 572, baseType: !1438, size: 64, offset: 192)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DISubroutineType(types: !1440)
!1440 = !{!109, !1214}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1426, file: !1208, line: 578, baseType: !1442, size: 64, offset: 256)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{!109, !1214, !336, !336, !336}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1426, file: !1208, line: 580, baseType: !1202, size: 64, offset: 320)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1426, file: !1208, line: 581, baseType: !1447, size: 64, offset: 384)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{!1205, !1206, !7}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1426, file: !1208, line: 582, baseType: !1451, size: 64, offset: 448)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{!1205, !1206, !336, !336}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1426, file: !1208, line: 584, baseType: !1455, size: 64, offset: 512)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{!336, !1214}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1426, file: !1208, line: 588, baseType: !1202, size: 64, offset: 576)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1426, file: !1208, line: 591, baseType: !1202, size: 64, offset: 640)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1426, file: !1208, line: 597, baseType: !1461, size: 64, offset: 704)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!109, !1214, !336, !358, !109, !109}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1426, file: !1208, line: 603, baseType: !1465, size: 64, offset: 768)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!205, !1214}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1426, file: !1208, line: 613, baseType: !1469, size: 64, offset: 832)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{!109, !1214, !1472}
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !35, line: 717, flags: DIFlagFwdDecl)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1426, file: !1208, line: 625, baseType: !1475, size: 64, offset: 896)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{!1472, !1214, !336}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1426, file: !1208, line: 633, baseType: !1479, size: 64, offset: 960)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = !DISubroutineType(types: !1481)
!1481 = !{!1200, !1214, !336}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1215, file: !35, line: 697, baseType: !336, size: 64, offset: 1024)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1215, file: !35, line: 699, baseType: !1027, size: 64, offset: 1088)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1215, file: !35, line: 700, baseType: !358, size: 64, offset: 1152)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1215, file: !35, line: 711, baseType: !656, size: 64, offset: 1216)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1215, file: !35, line: 717, baseType: !1472, size: 64, offset: 1280)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1215, file: !35, line: 722, baseType: !1488, offset: 1344)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !35, line: 570, elements: !571)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1211, file: !1208, line: 515, baseType: !1490, size: 32, offset: 64)
!1490 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !187, line: 154, baseType: !7)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1211, file: !1208, line: 516, baseType: !336, size: 64, offset: 128)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1211, file: !1208, line: 517, baseType: !336, size: 64, offset: 192)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1211, file: !1208, line: 518, baseType: !336, size: 64, offset: 256)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1207, file: !1208, line: 520, baseType: !34, size: 32, offset: 320)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1207, file: !1208, line: 522, baseType: !1496, size: 64, offset: 384)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1267, line: 22, baseType: !1498)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1267, line: 22, size: 64, elements: !1499)
!1499 = !{!1500}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1498, file: !1267, line: 22, baseType: !1501, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1267, line: 15, baseType: !336)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1207, file: !1208, line: 524, baseType: !1503, size: 64, offset: 448)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1262, line: 372, baseType: !1505)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1262, line: 372, size: 64, elements: !1506)
!1506 = !{!1507}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1505, file: !1262, line: 372, baseType: !1508, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1267, line: 16, baseType: !336)
!1509 = !DIDerivedType(tag: DW_TAG_member, scope: !1207, file: !1208, line: 527, baseType: !1510, size: 64, offset: 512)
!1510 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1207, file: !1208, line: 527, size: 64, elements: !1511)
!1511 = !{!1512, !1518}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1510, file: !1208, line: 528, baseType: !1513, size: 64)
!1513 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1267, line: 21, baseType: !1514)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1267, line: 21, size: 64, elements: !1515)
!1515 = !{!1516}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1514, file: !1267, line: 21, baseType: !1517, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1267, line: 14, baseType: !336)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1510, file: !1208, line: 529, baseType: !1497, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1207, file: !1208, line: 534, baseType: !1200, size: 64, offset: 576)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1207, file: !1208, line: 535, baseType: !1200, size: 64, offset: 640)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1207, file: !1208, line: 541, baseType: !1522, size: 64, offset: 704)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1207, file: !1208, line: 545, baseType: !1524, size: 64, offset: 768)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1207, file: !1208, line: 549, baseType: !1526, size: 64, offset: 832)
!1526 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1262, line: 520, baseType: !1200)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1194, file: !27, line: 100, baseType: !1528, size: 64, offset: 128)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DISubroutineType(types: !1530)
!1530 = !{!109, !1143, !336, !336, !109}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1144, file: !27, line: 134, baseType: !358, size: 64, offset: 960)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1144, file: !27, line: 135, baseType: !109, size: 32, offset: 1024)
!1533 = !DIDerivedType(tag: DW_TAG_member, scope: !1144, file: !27, line: 136, baseType: !1534, size: 128, offset: 1088)
!1534 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1144, file: !27, line: 136, size: 128, elements: !1535)
!1535 = !{!1536, !1542}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1534, file: !27, line: 137, baseType: !1537, size: 128)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1538, line: 6, size: 128, elements: !1539)
!1538 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1539 = !{!1540, !1541}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1537, file: !1538, line: 7, baseType: !440, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1537, file: !1538, line: 8, baseType: !440, size: 64, offset: 64)
!1542 = !DIDerivedType(tag: DW_TAG_member, scope: !1534, file: !27, line: 138, baseType: !1543)
!1543 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1534, file: !27, line: 138, elements: !1544)
!1544 = !{!1545, !1547}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1543, file: !27, line: 138, baseType: !1546)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1543, file: !27, line: 138, elements: !571)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1543, file: !27, line: 138, baseType: !1548)
!1548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1537, elements: !783)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1140, file: !35, line: 147, baseType: !358, size: 64, offset: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1098, file: !35, line: 161, baseType: !710, size: 128, align: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, scope: !1094, file: !35, line: 164, baseType: !1552, size: 32, offset: 384)
!1552 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1094, file: !35, line: 164, size: 32, elements: !1553)
!1553 = !{!1554, !1555}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1552, file: !35, line: 169, baseType: !236, size: 32)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1552, file: !35, line: 177, baseType: !7, size: 32)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1094, file: !35, line: 181, baseType: !236, size: 32, offset: 416)
!1557 = !DIDerivedType(tag: DW_TAG_member, scope: !1062, file: !35, line: 325, baseType: !1558, size: 512, offset: 512)
!1558 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1062, file: !35, line: 325, size: 512, elements: !1559)
!1559 = !{!1560, !1570}
!1560 = !DIDerivedType(tag: DW_TAG_member, scope: !1558, file: !35, line: 326, baseType: !1561, size: 320)
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1558, file: !35, line: 326, size: 320, elements: !1562)
!1562 = !{!1563, !1564, !1565, !1566, !1567, !1568, !1569}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1561, file: !35, line: 327, baseType: !336, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1561, file: !35, line: 328, baseType: !336, size: 64, offset: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1561, file: !35, line: 329, baseType: !336, size: 64, offset: 128)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1561, file: !35, line: 331, baseType: !236, size: 32, offset: 192)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1561, file: !35, line: 332, baseType: !236, size: 32, offset: 224)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1561, file: !35, line: 333, baseType: !236, size: 32, offset: 256)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1561, file: !35, line: 335, baseType: !7, size: 32, offset: 288)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1558, file: !35, line: 339, baseType: !1094, size: 512, align: 128)
!1571 = !DIDerivedType(tag: DW_TAG_member, scope: !1062, file: !35, line: 341, baseType: !1572, size: 512, offset: 1024)
!1572 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1062, file: !35, line: 341, size: 512, elements: !1573)
!1573 = !{!1574, !1583, !1589}
!1574 = !DIDerivedType(tag: DW_TAG_member, scope: !1572, file: !35, line: 342, baseType: !1575, size: 384)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1572, file: !35, line: 342, size: 384, elements: !1576)
!1576 = !{!1577, !1578, !1579, !1580, !1581, !1582}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1575, file: !35, line: 343, baseType: !336, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1575, file: !35, line: 344, baseType: !336, size: 64, offset: 64)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1575, file: !35, line: 346, baseType: !358, size: 64, offset: 128)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1575, file: !35, line: 347, baseType: !358, size: 64, offset: 192)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1575, file: !35, line: 348, baseType: !358, size: 64, offset: 256)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1575, file: !35, line: 349, baseType: !358, size: 64, offset: 320)
!1583 = !DIDerivedType(tag: DW_TAG_member, scope: !1572, file: !35, line: 352, baseType: !1584, size: 256)
!1584 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1572, file: !35, line: 352, size: 256, elements: !1585)
!1585 = !{!1586, !1587, !1588}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1584, file: !35, line: 353, baseType: !336, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1584, file: !35, line: 354, baseType: !336, size: 64, offset: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1584, file: !35, line: 356, baseType: !186, size: 128, offset: 128)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1572, file: !35, line: 359, baseType: !1094, size: 512, align: 128)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !1057, file: !1058, line: 1000, baseType: !109, size: 32, offset: 64)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1057, file: !1058, line: 1001, baseType: !1592, size: 320, offset: 128)
!1592 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !769, line: 14, baseType: !1593)
!1593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !769, line: 30, size: 320, elements: !1594)
!1594 = !{!1595, !1596, !1597, !1603}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1593, file: !769, line: 31, baseType: !7, size: 32)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1593, file: !769, line: 32, baseType: !358, size: 64, offset: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1593, file: !769, line: 33, baseType: !1598, size: 64, offset: 128)
!1598 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !769, line: 16, baseType: !1599)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{!109, !1602, !7, !109, !358}
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1593, file: !769, line: 34, baseType: !186, size: 128, offset: 192)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1053, file: !14, line: 395, baseType: !1605, size: 64)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DISubroutineType(types: !1607)
!1607 = !{!318, !358}
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !14, line: 69, flags: DIFlagFwdDecl)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1020, file: !14, line: 1920, baseType: !1037, size: 64, offset: 320)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1020, file: !14, line: 1921, baseType: !1612, size: 64, offset: 384)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DISubroutineType(types: !1614)
!1614 = !{!109, !1040, !1615, !7}
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1020, file: !14, line: 1923, baseType: !1618, size: 64, offset: 448)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DISubroutineType(types: !1620)
!1620 = !{!109, !1027, !1621}
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !1623)
!1623 = !{!1624, !1629}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1622, file: !14, line: 1859, baseType: !1625, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !1626)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DISubroutineType(types: !1628)
!1628 = !{!899, !1621, !205, !109, !528, !440, !7}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1622, file: !14, line: 1860, baseType: !528, size: 64, offset: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1020, file: !14, line: 1924, baseType: !1631, size: 64, offset: 512)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{!1634, !1027, !1636}
!1634 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1635, line: 59, baseType: !7)
!1635 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !543, line: 31, flags: DIFlagFwdDecl)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1020, file: !14, line: 1925, baseType: !1639, size: 64, offset: 576)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{!322, !1027, !7, !336}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1020, file: !14, line: 1926, baseType: !1639, size: 64, offset: 640)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1020, file: !14, line: 1927, baseType: !1644, size: 64, offset: 704)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DISubroutineType(types: !1646)
!1646 = !{!109, !1027, !1214}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1020, file: !14, line: 1928, baseType: !336, size: 64, offset: 768)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1020, file: !14, line: 1929, baseType: !1649, size: 64, offset: 832)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{!109, !367, !1027}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1020, file: !14, line: 1930, baseType: !1653, size: 64, offset: 896)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{!109, !1027, !1656}
!1656 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !358)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1020, file: !14, line: 1931, baseType: !1649, size: 64, offset: 960)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1020, file: !14, line: 1932, baseType: !1659, size: 64, offset: 1024)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = !DISubroutineType(types: !1661)
!1661 = !{!109, !1027, !528, !528, !109}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1020, file: !14, line: 1933, baseType: !1663, size: 64, offset: 1088)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DISubroutineType(types: !1665)
!1665 = !{!109, !109, !1027, !109}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1020, file: !14, line: 1934, baseType: !1667, size: 64, offset: 1152)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{!109, !1027, !109, !1670}
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1020, file: !14, line: 1935, baseType: !1251, size: 64, offset: 1216)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1020, file: !14, line: 1936, baseType: !1674, size: 64, offset: 1280)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DISubroutineType(types: !1676)
!1676 = !{!109, !109}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1020, file: !14, line: 1937, baseType: !1667, size: 64, offset: 1344)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1020, file: !14, line: 1938, baseType: !1679, size: 64, offset: 1408)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = !DISubroutineType(types: !1681)
!1681 = !{!318, !1682, !1027, !681, !333, !7}
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1684, line: 59, flags: DIFlagFwdDecl)
!1684 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1020, file: !14, line: 1939, baseType: !1686, size: 64, offset: 1472)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{!318, !1027, !681, !1682, !333, !7}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1020, file: !14, line: 1940, baseType: !1690, size: 64, offset: 1536)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{null, !1027}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1020, file: !14, line: 1941, baseType: !1694, size: 64, offset: 1600)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{!109, !1027, !109, !1697, !1698}
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1020, file: !14, line: 1942, baseType: !1700, size: 64, offset: 1664)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DISubroutineType(types: !1702)
!1702 = !{!322, !1027, !109, !528, !528}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1020, file: !14, line: 1944, baseType: !1704, size: 64, offset: 1728)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = !DISubroutineType(types: !1706)
!1706 = !{null, !640, !1027}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1020, file: !14, line: 1948, baseType: !1708, size: 64, offset: 1792)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DISubroutineType(types: !1710)
!1710 = !{!318, !1027, !528, !1027, !528, !333, !7}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1020, file: !14, line: 1950, baseType: !1712, size: 64, offset: 1856)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{!528, !1027, !528, !1027, !528, !528, !7}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1020, file: !14, line: 1953, baseType: !1659, size: 64, offset: 1920)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1020, file: !14, line: 1954, baseType: !1717, size: 64, offset: 1984)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{!109, !1720, !7}
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1020, file: !14, line: 1955, baseType: !1723, size: 64, offset: 2048)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{!109, !1720, !1615, !7}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !698, file: !14, line: 1018, baseType: !440, size: 64, offset: 1472)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !698, file: !14, line: 1020, baseType: !358, size: 64, offset: 1536)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !698, file: !14, line: 1023, baseType: !358, size: 64, offset: 1600)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !698, file: !14, line: 1027, baseType: !1730, size: 64, offset: 1664)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !698, file: !14, line: 1029, baseType: !363, size: 64, offset: 1728)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !698, file: !14, line: 1030, baseType: !1733, size: 32, offset: 1792)
!1733 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1734, line: 8, baseType: !436)
!1734 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !698, file: !14, line: 1031, baseType: !1733, size: 32, offset: 1824)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !641, file: !642, line: 29, baseType: !358, size: 64, offset: 896)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !583, file: !14, line: 2077, baseType: !637, size: 64, offset: 1088)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !583, file: !14, line: 2078, baseType: !637, size: 64, offset: 1152)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !583, file: !14, line: 2079, baseType: !637, size: 64, offset: 1216)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !583, file: !14, line: 2081, baseType: !1741, size: 64, offset: 1280)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{!318, !518, !109, !286, !333, !528}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !583, file: !14, line: 2082, baseType: !1745, size: 64, offset: 1344)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{!318, !518, !109, !205, !333, !528}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !583, file: !14, line: 2083, baseType: !1749, size: 64, offset: 1408)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DISubroutineType(types: !1751)
!1751 = !{!1752, !367}
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !51, line: 296, size: 1664, elements: !1755)
!1755 = !{!1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1780, !1781, !1782}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1754, file: !51, line: 297, baseType: !563, size: 128)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1754, file: !51, line: 298, baseType: !186, size: 128, offset: 128)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1754, file: !51, line: 299, baseType: !186, size: 128, offset: 256)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1754, file: !51, line: 300, baseType: !186, size: 128, offset: 384)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1754, file: !51, line: 301, baseType: !652, size: 256, offset: 512)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1754, file: !51, line: 302, baseType: !216, size: 32, offset: 768)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1754, file: !51, line: 303, baseType: !236, size: 32, offset: 800)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1754, file: !51, line: 304, baseType: !518, size: 64, offset: 832)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1754, file: !51, line: 305, baseType: !1765, size: 64, offset: 896)
!1765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !51, line: 68, size: 64, elements: !1766)
!1766 = !{!1767, !1779}
!1767 = !DIDerivedType(tag: DW_TAG_member, scope: !1765, file: !51, line: 69, baseType: !1768, size: 32)
!1768 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1765, file: !51, line: 69, size: 32, elements: !1769)
!1769 = !{!1770, !1771, !1772}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1768, file: !51, line: 70, baseType: !373, size: 32)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1768, file: !51, line: 71, baseType: !382, size: 32)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1768, file: !51, line: 72, baseType: !1773, size: 32)
!1773 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1774, line: 24, baseType: !1775)
!1774 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1774, line: 22, size: 32, elements: !1776)
!1776 = !{!1777}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1775, file: !1774, line: 23, baseType: !1778, size: 32)
!1778 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1774, line: 20, baseType: !379)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1765, file: !51, line: 74, baseType: !50, size: 32, offset: 32)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1754, file: !51, line: 306, baseType: !528, size: 64, offset: 960)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1754, file: !51, line: 307, baseType: !336, size: 64, offset: 1024)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1754, file: !51, line: 308, baseType: !1783, size: 576, offset: 1088)
!1783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !51, line: 205, size: 576, elements: !1784)
!1784 = !{!1785, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1783, file: !51, line: 206, baseType: !1786, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !51, line: 66, baseType: !530)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1783, file: !51, line: 207, baseType: !1786, size: 64, offset: 64)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1783, file: !51, line: 208, baseType: !1786, size: 64, offset: 128)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1783, file: !51, line: 209, baseType: !1786, size: 64, offset: 192)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1783, file: !51, line: 210, baseType: !1786, size: 64, offset: 256)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1783, file: !51, line: 211, baseType: !1786, size: 64, offset: 320)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1783, file: !51, line: 212, baseType: !1786, size: 64, offset: 384)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1783, file: !51, line: 213, baseType: !856, size: 64, offset: 448)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1783, file: !51, line: 214, baseType: !856, size: 64, offset: 512)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !583, file: !14, line: 2085, baseType: !1796, size: 64, offset: 1472)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = !DISubroutineType(types: !1798)
!1798 = !{!322, !518, !1799}
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1801, line: 15, size: 256, elements: !1802)
!1801 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1802 = !{!1803, !1804, !1805, !1806, !1807}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1800, file: !1801, line: 16, baseType: !1490, size: 32)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1800, file: !1801, line: 19, baseType: !109, size: 32, offset: 32)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1800, file: !1801, line: 26, baseType: !336, size: 64, offset: 64)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1800, file: !1801, line: 33, baseType: !336, size: 64, offset: 128)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1800, file: !1801, line: 36, baseType: !1808, size: 64, offset: 192)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !35, line: 33, flags: DIFlagFwdDecl)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !583, file: !14, line: 2087, baseType: !1796, size: 64, offset: 1536)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !583, file: !14, line: 2089, baseType: !553, size: 64, offset: 1600)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !519, file: !14, line: 1198, baseType: !1813, size: 64, offset: 448)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1815)
!1815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !51, line: 324, size: 704, elements: !1816)
!1816 = !{!1817, !1821, !1825, !1829, !1830, !1831, !1832, !1833, !1838, !1843, !1847}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1815, file: !51, line: 325, baseType: !1818, size: 64)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DISubroutineType(types: !1820)
!1820 = !{!109, !1753}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1815, file: !51, line: 326, baseType: !1822, size: 64, offset: 64)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DISubroutineType(types: !1824)
!1824 = !{!1753, !518, !109}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1815, file: !51, line: 327, baseType: !1826, size: 64, offset: 128)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{null, !1753}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1815, file: !51, line: 328, baseType: !1818, size: 64, offset: 192)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1815, file: !51, line: 329, baseType: !1818, size: 64, offset: 256)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1815, file: !51, line: 330, baseType: !1818, size: 64, offset: 320)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1815, file: !51, line: 331, baseType: !611, size: 64, offset: 384)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1815, file: !51, line: 334, baseType: !1834, size: 64, offset: 448)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = !DISubroutineType(types: !1836)
!1836 = !{!1837, !367}
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1815, file: !51, line: 335, baseType: !1839, size: 64, offset: 512)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = !DISubroutineType(types: !1841)
!1841 = !{!109, !367, !1842}
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1815, file: !51, line: 337, baseType: !1844, size: 64, offset: 576)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DISubroutineType(types: !1846)
!1846 = !{!109, !367, !1837}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1815, file: !51, line: 339, baseType: !1848, size: 64, offset: 640)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = !DISubroutineType(types: !1850)
!1850 = !{!109, !518, !1851}
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !519, file: !14, line: 1199, baseType: !1853, size: 64, offset: 512)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1855)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !51, line: 430, size: 704, elements: !1856)
!1856 = !{!1857, !1863, !1864, !1868, !1869, !1870, !1885, !1908, !1912, !1913, !1936}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1855, file: !51, line: 431, baseType: !1858, size: 64)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{!109, !518, !109, !109, !1861}
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1011)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1855, file: !51, line: 432, baseType: !611, size: 64, offset: 64)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1855, file: !51, line: 433, baseType: !1865, size: 64, offset: 128)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DISubroutineType(types: !1867)
!1867 = !{!109, !518, !7}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1855, file: !51, line: 434, baseType: !1865, size: 64, offset: 192)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1855, file: !51, line: 435, baseType: !611, size: 64, offset: 256)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1855, file: !51, line: 436, baseType: !1871, size: 64, offset: 320)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = !DISubroutineType(types: !1873)
!1873 = !{!109, !518, !109, !1874}
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !51, line: 417, size: 256, elements: !1876)
!1876 = !{!1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1875, file: !51, line: 418, baseType: !109, size: 32)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1875, file: !51, line: 419, baseType: !7, size: 32, offset: 32)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1875, file: !51, line: 420, baseType: !7, size: 32, offset: 64)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1875, file: !51, line: 422, baseType: !7, size: 32, offset: 96)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1875, file: !51, line: 423, baseType: !7, size: 32, offset: 128)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1875, file: !51, line: 424, baseType: !7, size: 32, offset: 160)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1875, file: !51, line: 425, baseType: !7, size: 32, offset: 192)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1875, file: !51, line: 426, baseType: !7, size: 32, offset: 224)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1855, file: !51, line: 437, baseType: !1886, size: 64, offset: 384)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = !DISubroutineType(types: !1888)
!1888 = !{!109, !518, !1765, !1889}
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !51, line: 345, size: 960, elements: !1891)
!1891 = !{!1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1890, file: !51, line: 346, baseType: !109, size: 32)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1890, file: !51, line: 347, baseType: !440, size: 64, offset: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1890, file: !51, line: 348, baseType: !440, size: 64, offset: 128)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1890, file: !51, line: 349, baseType: !440, size: 64, offset: 192)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1890, file: !51, line: 350, baseType: !440, size: 64, offset: 256)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1890, file: !51, line: 351, baseType: !440, size: 64, offset: 320)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1890, file: !51, line: 352, baseType: !440, size: 64, offset: 384)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1890, file: !51, line: 353, baseType: !662, size: 64, offset: 448)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1890, file: !51, line: 355, baseType: !662, size: 64, offset: 512)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1890, file: !51, line: 356, baseType: !109, size: 32, offset: 576)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1890, file: !51, line: 357, baseType: !109, size: 32, offset: 608)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1890, file: !51, line: 358, baseType: !440, size: 64, offset: 640)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1890, file: !51, line: 359, baseType: !440, size: 64, offset: 704)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1890, file: !51, line: 360, baseType: !440, size: 64, offset: 768)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1890, file: !51, line: 361, baseType: !662, size: 64, offset: 832)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1890, file: !51, line: 362, baseType: !109, size: 32, offset: 896)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1855, file: !51, line: 438, baseType: !1909, size: 64, offset: 448)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = !DISubroutineType(types: !1911)
!1911 = !{!109, !518, !1851, !1889}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1855, file: !51, line: 440, baseType: !1886, size: 64, offset: 512)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1855, file: !51, line: 441, baseType: !1914, size: 64, offset: 576)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DISubroutineType(types: !1916)
!1916 = !{!109, !518, !1917}
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !51, line: 411, size: 1408, elements: !1919)
!1919 = !{!1920, !1921}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1918, file: !51, line: 412, baseType: !7, size: 32)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1918, file: !51, line: 413, baseType: !1922, size: 1344, offset: 64)
!1922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1923, size: 1344, elements: !287)
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !51, line: 397, size: 448, elements: !1924)
!1924 = !{!1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1935}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1923, file: !51, line: 398, baseType: !7, size: 32)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1923, file: !51, line: 399, baseType: !7, size: 32, offset: 32)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1923, file: !51, line: 401, baseType: !7, size: 32, offset: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1923, file: !51, line: 402, baseType: !7, size: 32, offset: 96)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1923, file: !51, line: 403, baseType: !7, size: 32, offset: 128)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1923, file: !51, line: 404, baseType: !7, size: 32, offset: 160)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1923, file: !51, line: 405, baseType: !7, size: 32, offset: 192)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1923, file: !51, line: 406, baseType: !442, size: 64, offset: 256)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1923, file: !51, line: 407, baseType: !1934, size: 64, offset: 320)
!1934 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !187, line: 132, baseType: !440)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1923, file: !51, line: 408, baseType: !1934, size: 64, offset: 384)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1855, file: !51, line: 442, baseType: !1865, size: 64, offset: 640)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !519, file: !14, line: 1200, baseType: !1938, size: 64, offset: 576)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1940)
!1940 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !519, file: !14, line: 1201, baseType: !336, size: 64, offset: 640)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !519, file: !14, line: 1202, baseType: !336, size: 64, offset: 704)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !519, file: !14, line: 1203, baseType: !336, size: 64, offset: 768)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !519, file: !14, line: 1204, baseType: !402, size: 64, offset: 832)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !519, file: !14, line: 1205, baseType: !840, size: 320, offset: 896)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !519, file: !14, line: 1206, baseType: !109, size: 32, offset: 1216)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !519, file: !14, line: 1207, baseType: !236, size: 32, offset: 1248)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !519, file: !14, line: 1209, baseType: !358, size: 64, offset: 1280)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !519, file: !14, line: 1211, baseType: !1950, size: 64, offset: 1344)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1953)
!1953 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !519, file: !14, line: 1223, baseType: !1955, size: 64, offset: 1408)
!1955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !419, line: 34, size: 64, elements: !1956)
!1956 = !{!1957}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1955, file: !419, line: 35, baseType: !422, size: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !519, file: !14, line: 1224, baseType: !186, size: 128, offset: 1472)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !519, file: !14, line: 1225, baseType: !1960, size: 64, offset: 1600)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !519, file: !14, line: 1226, baseType: !1963, size: 64, offset: 1664)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !519, file: !14, line: 1227, baseType: !1966, size: 64, offset: 1728)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !519, file: !14, line: 1228, baseType: !1969, size: 64, offset: 1792)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !519, file: !14, line: 1229, baseType: !563, size: 128, offset: 1856)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !519, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !519, file: !14, line: 1231, baseType: !1974, size: 2496, offset: 2048)
!1974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !51, line: 521, size: 2496, elements: !1975)
!1975 = !{!1976, !1977, !1978, !1980, !2012}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1974, file: !51, line: 522, baseType: !7, size: 32)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1974, file: !51, line: 523, baseType: !840, size: 320, offset: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1974, file: !51, line: 524, baseType: !1979, size: 192, offset: 384)
!1979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !367, size: 192, elements: !287)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1974, file: !51, line: 525, baseType: !1981, size: 1728, offset: 576)
!1981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1982, size: 1728, elements: !287)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !51, line: 222, size: 576, elements: !1983)
!1983 = !{!1984, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1982, file: !51, line: 223, baseType: !1985, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !51, line: 445, size: 256, elements: !1987)
!1987 = !{!1988, !1989, !2002, !2003}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1986, file: !51, line: 446, baseType: !109, size: 32)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1986, file: !51, line: 447, baseType: !1990, size: 64, offset: 64)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1992)
!1992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !51, line: 312, size: 512, elements: !1993)
!1993 = !{!1994, !1995, !1996, !1997, !1998, !1999, !2000, !2001}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1992, file: !51, line: 313, baseType: !611, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1992, file: !51, line: 314, baseType: !611, size: 64, offset: 64)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1992, file: !51, line: 315, baseType: !611, size: 64, offset: 128)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1992, file: !51, line: 316, baseType: !611, size: 64, offset: 192)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1992, file: !51, line: 317, baseType: !1818, size: 64, offset: 256)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1992, file: !51, line: 318, baseType: !1818, size: 64, offset: 320)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1992, file: !51, line: 319, baseType: !1818, size: 64, offset: 384)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1992, file: !51, line: 320, baseType: !1848, size: 64, offset: 448)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1986, file: !51, line: 448, baseType: !181, size: 64, offset: 128)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1986, file: !51, line: 449, baseType: !1985, size: 64, offset: 192)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1982, file: !51, line: 224, baseType: !109, size: 32, offset: 64)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1982, file: !51, line: 226, baseType: !186, size: 128, offset: 128)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1982, file: !51, line: 227, baseType: !336, size: 64, offset: 256)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1982, file: !51, line: 228, baseType: !7, size: 32, offset: 320)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1982, file: !51, line: 229, baseType: !7, size: 32, offset: 352)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1982, file: !51, line: 230, baseType: !1786, size: 64, offset: 384)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1982, file: !51, line: 231, baseType: !1786, size: 64, offset: 448)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1982, file: !51, line: 232, baseType: !358, size: 64, offset: 512)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1974, file: !51, line: 526, baseType: !2013, size: 192, offset: 2304)
!2013 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1990, size: 192, elements: !287)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !519, file: !14, line: 1233, baseType: !2015, size: 2368, offset: 4544)
!2015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !2016)
!2016 = !{!2017, !2018, !2019}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2015, file: !14, line: 1185, baseType: !256, size: 16)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2015, file: !14, line: 1186, baseType: !256, size: 16, offset: 16)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2015, file: !14, line: 1187, baseType: !2020, size: 2304, offset: 64)
!2020 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2021, size: 2304, elements: !287)
!2021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2022, line: 12, size: 768, elements: !2023)
!2022 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2023 = !{!2024, !2032, !2034, !3247, !3248}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2021, file: !2022, line: 13, baseType: !2025, size: 384)
!2025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2026, line: 17, size: 384, elements: !2027)
!2026 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2027 = !{!2028, !2029, !2030, !2031}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2025, file: !2026, line: 18, baseType: !109, size: 32)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2025, file: !2026, line: 19, baseType: !109, size: 32, offset: 32)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2025, file: !2026, line: 20, baseType: !768, size: 192, offset: 64)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2025, file: !2026, line: 22, baseType: !710, size: 128, align: 64, offset: 256)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2021, file: !2022, line: 14, baseType: !2033, size: 64, offset: 384)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2021, file: !2022, line: 15, baseType: !2035, size: 64, offset: 448)
!2035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2036, line: 16, size: 64, elements: !2037)
!2036 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2037 = !{!2038}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2035, file: !2036, line: 17, baseType: !2039, size: 64)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1684, line: 746, size: 58368, elements: !2041)
!2041 = !{!2042, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2122, !2133, !2228, !2232, !2235, !2266, !2267, !2268, !2269, !2280, !2282, !2283, !2284, !2285, !2286, !2287, !2298, !2299, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2316, !2317, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2405, !2408, !2409, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2418, !2420, !2421, !2422, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2454, !2460, !2461, !2462, !2463, !2464, !2468, !2471, !2478, !2483, !2486, !2489, !2492, !2496, !2636, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2676, !2677, !2678, !2687, !2695, !2696, !2697, !2698, !2699, !2704, !2705, !2706, !2709, !2710, !2713, !2716, !2719, !2727, !2730, !2731, !2817, !2818, !2819, !2820, !2821, !2826, !2827, !2828, !2829, !2832, !2833, !2836, !2839, !2840, !2843, !2844, !2845, !2848, !2849, !2850, !2851, !2852, !2853, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2885, !2886, !2892, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2904, !2976, !2978, !2979, !2980, !2981, !2982, !2994, !3010, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3018, !3019, !3020, !3024, !3025, !3026}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2040, file: !1684, line: 752, baseType: !2043, size: 192)
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2044, line: 56, size: 192, elements: !2045)
!2044 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2045 = !{!2046, !2047, !2048, !2049}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2043, file: !2044, line: 57, baseType: !336, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2043, file: !2044, line: 58, baseType: !336, size: 64, offset: 64)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2043, file: !2044, line: 59, baseType: !436, size: 32, offset: 128)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2043, file: !2044, line: 61, baseType: !436, size: 32, offset: 160)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2040, file: !1684, line: 754, baseType: !7, size: 32, offset: 192)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2040, file: !1684, line: 767, baseType: !358, size: 64, offset: 256)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2040, file: !1684, line: 768, baseType: !755, size: 32, offset: 320)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2040, file: !1684, line: 770, baseType: !7, size: 32, offset: 352)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2040, file: !1684, line: 771, baseType: !7, size: 32, offset: 384)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2040, file: !1684, line: 774, baseType: !109, size: 32, offset: 416)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2040, file: !1684, line: 775, baseType: !2057, size: 128, offset: 448)
!2057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2058, line: 58, size: 128, elements: !2059)
!2058 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2059 = !{!2060, !2061, !2066, !2067}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2057, file: !2058, line: 59, baseType: !704, size: 64)
!2061 = !DIDerivedType(tag: DW_TAG_member, scope: !2057, file: !2058, line: 60, baseType: !2062, size: 32, offset: 64)
!2062 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2057, file: !2058, line: 60, size: 32, elements: !2063)
!2063 = !{!2064, !2065}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2062, file: !2058, line: 61, baseType: !7, size: 32)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2062, file: !2058, line: 62, baseType: !236, size: 32)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2057, file: !2058, line: 65, baseType: !254, size: 16, offset: 96)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2057, file: !2058, line: 65, baseType: !254, size: 16, offset: 112)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2040, file: !1684, line: 776, baseType: !7, size: 32, offset: 576)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2040, file: !1684, line: 777, baseType: !336, size: 64, offset: 640)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2040, file: !1684, line: 778, baseType: !2039, size: 64, offset: 704)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2040, file: !1684, line: 787, baseType: !109, size: 32, offset: 768)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2040, file: !1684, line: 788, baseType: !109, size: 32, offset: 800)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2040, file: !1684, line: 790, baseType: !109, size: 32, offset: 832)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2040, file: !1684, line: 792, baseType: !109, size: 32, offset: 864)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2040, file: !1684, line: 793, baseType: !109, size: 32, offset: 896)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2040, file: !1684, line: 794, baseType: !109, size: 32, offset: 928)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2040, file: !1684, line: 795, baseType: !7, size: 32, offset: 960)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2040, file: !1684, line: 797, baseType: !2079, size: 2048, offset: 1024)
!2079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1684, line: 551, size: 2048, elements: !2080)
!2080 = !{!2081, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2101, !2104, !2105, !2106}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2079, file: !1684, line: 553, baseType: !2082, size: 128)
!2082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1684, line: 411, size: 128, elements: !2083)
!2083 = !{!2084, !2085}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2082, file: !1684, line: 412, baseType: !336, size: 64)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2082, file: !1684, line: 413, baseType: !436, size: 32, offset: 64)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2079, file: !1684, line: 554, baseType: !832, size: 192, align: 64, offset: 128)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2079, file: !1684, line: 555, baseType: !440, size: 64, offset: 320)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2079, file: !1684, line: 556, baseType: !440, size: 64, offset: 384)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2079, file: !1684, line: 558, baseType: !186, size: 128, offset: 448)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2079, file: !1684, line: 559, baseType: !7, size: 32, offset: 576)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2079, file: !1684, line: 561, baseType: !440, size: 64, offset: 640)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2079, file: !1684, line: 562, baseType: !440, size: 64, offset: 704)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2079, file: !1684, line: 563, baseType: !440, size: 64, offset: 768)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2079, file: !1684, line: 564, baseType: !440, size: 64, offset: 832)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2079, file: !1684, line: 565, baseType: !662, size: 64, offset: 896)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2079, file: !1684, line: 566, baseType: !440, size: 64, offset: 960)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2079, file: !1684, line: 568, baseType: !440, size: 64, offset: 1024)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2079, file: !1684, line: 571, baseType: !109, size: 32, offset: 1088)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2079, file: !1684, line: 572, baseType: !2100, size: 64, offset: 1152)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2079, file: !1684, line: 574, baseType: !2102, size: 64, offset: 1216)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1684, line: 49, flags: DIFlagFwdDecl)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2079, file: !1684, line: 576, baseType: !2102, size: 64, offset: 1280)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2079, file: !1684, line: 578, baseType: !336, size: 64, offset: 1344)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2079, file: !1684, line: 588, baseType: !2107, size: 512, align: 512, offset: 1536)
!2107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1684, line: 497, size: 512, align: 512, elements: !2108)
!2108 = !{!2109, !2110, !2111, !2112, !2113, !2114, !2115, !2116, !2117}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2107, file: !1684, line: 498, baseType: !440, size: 64)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2107, file: !1684, line: 499, baseType: !440, size: 64, offset: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2107, file: !1684, line: 500, baseType: !440, size: 64, offset: 128)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2107, file: !1684, line: 501, baseType: !436, size: 32, offset: 192)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2107, file: !1684, line: 502, baseType: !436, size: 32, offset: 224)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2107, file: !1684, line: 503, baseType: !336, size: 64, offset: 256)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2107, file: !1684, line: 504, baseType: !336, size: 64, offset: 320)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2107, file: !1684, line: 505, baseType: !336, size: 64, offset: 384)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2107, file: !1684, line: 506, baseType: !2118, size: 64, align: 64, offset: 448)
!2118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1684, line: 445, size: 64, align: 64, elements: !2119)
!2119 = !{!2120, !2121}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2118, file: !1684, line: 446, baseType: !7, size: 32)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2118, file: !1684, line: 447, baseType: !7, size: 32, offset: 32)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2040, file: !1684, line: 798, baseType: !2123, size: 384, offset: 3072)
!2123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1684, line: 592, size: 384, elements: !2124)
!2124 = !{!2125, !2126, !2127, !2128, !2129, !2130, !2131}
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2123, file: !1684, line: 593, baseType: !186, size: 128)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2123, file: !1684, line: 594, baseType: !336, size: 64, offset: 128)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2123, file: !1684, line: 595, baseType: !336, size: 64, offset: 192)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2123, file: !1684, line: 596, baseType: !7, size: 32, offset: 256)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2123, file: !1684, line: 597, baseType: !256, size: 16, offset: 288)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2123, file: !1684, line: 598, baseType: !256, size: 16, offset: 304)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2123, file: !1684, line: 600, baseType: !2132, size: 64, offset: 320)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2040, file: !1684, line: 799, baseType: !2134, size: 1792, offset: 3456)
!2134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1684, line: 610, size: 1792, elements: !2135)
!2135 = !{!2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2225, !2226}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2134, file: !1684, line: 611, baseType: !832, size: 192, align: 64)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2134, file: !1684, line: 618, baseType: !440, size: 64, offset: 192)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2134, file: !1684, line: 619, baseType: !440, size: 64, offset: 256)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2134, file: !1684, line: 620, baseType: !440, size: 64, offset: 320)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2134, file: !1684, line: 621, baseType: !440, size: 64, offset: 384)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2134, file: !1684, line: 622, baseType: !440, size: 64, offset: 448)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2134, file: !1684, line: 629, baseType: !662, size: 64, offset: 512)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2134, file: !1684, line: 630, baseType: !440, size: 64, offset: 576)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2134, file: !1684, line: 631, baseType: !7, size: 32, offset: 640)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2134, file: !1684, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2134, file: !1684, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2134, file: !1684, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2134, file: !1684, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2134, file: !1684, line: 662, baseType: !2150, size: 512, offset: 704)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !57, line: 118, size: 512, elements: !2151)
!2151 = !{!2152, !2160, !2161, !2166, !2221, !2222, !2223, !2224}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2150, file: !57, line: 119, baseType: !2153, size: 256)
!2153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2154, line: 9, size: 256, elements: !2155)
!2154 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2155 = !{!2156, !2157}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2153, file: !2154, line: 10, baseType: !832, size: 192, align: 64)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2153, file: !2154, line: 11, baseType: !2158, size: 64, offset: 192)
!2158 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2159, line: 29, baseType: !662)
!2159 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2150, file: !57, line: 120, baseType: !2158, size: 64, offset: 256)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2150, file: !57, line: 121, baseType: !2162, size: 64, offset: 320)
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = !DISubroutineType(types: !2164)
!2164 = !{!56, !2165}
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2150, file: !57, line: 122, baseType: !2167, size: 64, offset: 384)
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !57, line: 159, size: 512, align: 512, elements: !2169)
!2169 = !{!2170, !2195, !2196, !2199, !2204, !2205, !2216, !2220}
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2168, file: !57, line: 160, baseType: !2171, size: 64)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !57, line: 215, size: 4608, align: 512, elements: !2173)
!2173 = !{!2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2172, file: !57, line: 216, baseType: !665, size: 32)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2172, file: !57, line: 217, baseType: !7, size: 32, offset: 32)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2172, file: !57, line: 218, baseType: !7, size: 32, offset: 64)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2172, file: !57, line: 219, baseType: !7, size: 32, offset: 96)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2172, file: !57, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2172, file: !57, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2172, file: !57, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2172, file: !57, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2172, file: !57, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2172, file: !57, line: 226, baseType: !7, size: 32, offset: 160)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2172, file: !57, line: 227, baseType: !256, size: 16, offset: 192)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2172, file: !57, line: 228, baseType: !256, size: 16, offset: 208)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2172, file: !57, line: 229, baseType: !7, size: 32, offset: 224)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2172, file: !57, line: 235, baseType: !2158, size: 64, offset: 256)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2172, file: !57, line: 236, baseType: !2165, size: 64, offset: 320)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2172, file: !57, line: 237, baseType: !2158, size: 64, offset: 384)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2172, file: !57, line: 238, baseType: !2165, size: 64, offset: 448)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2172, file: !57, line: 239, baseType: !2192, size: 4096, align: 512, offset: 512)
!2192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2168, size: 4096, align: 512, elements: !2193)
!2193 = !{!2194}
!2194 = !DISubrange(count: 8)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2168, file: !57, line: 161, baseType: !7, size: 32, offset: 64)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2168, file: !57, line: 162, baseType: !2197, size: 32, offset: 96)
!2197 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !187, line: 32, baseType: !2198)
!2198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !320, line: 96, baseType: !109)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2168, file: !57, line: 163, baseType: !2200, size: 32, offset: 128)
!2200 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !409, line: 274, baseType: !2201)
!2201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !409, line: 274, size: 32, elements: !2202)
!2202 = !{!2203}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2201, file: !409, line: 274, baseType: !413, size: 32)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2168, file: !57, line: 164, baseType: !2165, size: 64, offset: 192)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2168, file: !57, line: 165, baseType: !2206, size: 128, offset: 256)
!2206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2154, line: 14, size: 128, elements: !2207)
!2207 = !{!2208}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2206, file: !2154, line: 15, baseType: !2209, size: 128)
!2209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !833, line: 26, size: 128, elements: !2210)
!2210 = !{!2211, !2215}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2209, file: !833, line: 27, baseType: !2212, size: 64)
!2212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !833, line: 12, size: 64, elements: !2213)
!2213 = !{!2214}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2212, file: !833, line: 13, baseType: !837, size: 64)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !2209, file: !833, line: 28, baseType: !837, size: 64, offset: 64)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2168, file: !57, line: 166, baseType: !2217, size: 64, offset: 384)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{!2158}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2168, file: !57, line: 167, baseType: !2158, size: 64, offset: 448)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2150, file: !57, line: 123, baseType: !244, size: 8, offset: 448)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2150, file: !57, line: 124, baseType: !244, size: 8, offset: 456)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2150, file: !57, line: 125, baseType: !244, size: 8, offset: 464)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2150, file: !57, line: 126, baseType: !244, size: 8, offset: 472)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2134, file: !1684, line: 671, baseType: !2150, size: 512, offset: 1216)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2134, file: !1684, line: 679, baseType: !2227, size: 64, offset: 1728)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2040, file: !1684, line: 800, baseType: !2229, size: 64, offset: 5248)
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2231)
!2231 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1684, line: 800, flags: DIFlagFwdDecl)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2040, file: !1684, line: 809, baseType: !2233, size: 64, offset: 5312)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1684, line: 70, flags: DIFlagFwdDecl)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2040, file: !1684, line: 825, baseType: !2236, size: 2048, align: 512, offset: 5632)
!2236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1684, line: 509, size: 2048, align: 512, elements: !2237)
!2237 = !{!2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2236, file: !1684, line: 511, baseType: !440, size: 64)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2236, file: !1684, line: 512, baseType: !440, size: 64, offset: 64)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2236, file: !1684, line: 513, baseType: !440, size: 64, offset: 128)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2236, file: !1684, line: 514, baseType: !440, size: 64, offset: 192)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2236, file: !1684, line: 515, baseType: !440, size: 64, offset: 256)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2236, file: !1684, line: 516, baseType: !440, size: 64, offset: 320)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2236, file: !1684, line: 518, baseType: !440, size: 64, offset: 384)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2236, file: !1684, line: 519, baseType: !440, size: 64, offset: 448)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2236, file: !1684, line: 520, baseType: !662, size: 64, offset: 512)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2236, file: !1684, line: 522, baseType: !440, size: 64, offset: 576)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2236, file: !1684, line: 523, baseType: !440, size: 64, offset: 640)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2236, file: !1684, line: 524, baseType: !662, size: 64, offset: 704)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2236, file: !1684, line: 526, baseType: !662, size: 64, offset: 768)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2236, file: !1684, line: 527, baseType: !440, size: 64, offset: 832)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2236, file: !1684, line: 529, baseType: !440, size: 64, offset: 896)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2236, file: !1684, line: 530, baseType: !440, size: 64, offset: 960)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2236, file: !1684, line: 531, baseType: !440, size: 64, offset: 1024)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2236, file: !1684, line: 532, baseType: !440, size: 64, offset: 1088)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2236, file: !1684, line: 533, baseType: !440, size: 64, offset: 1152)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2236, file: !1684, line: 535, baseType: !440, size: 64, offset: 1216)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2236, file: !1684, line: 536, baseType: !440, size: 64, offset: 1280)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2236, file: !1684, line: 537, baseType: !440, size: 64, offset: 1344)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2236, file: !1684, line: 538, baseType: !440, size: 64, offset: 1408)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2236, file: !1684, line: 539, baseType: !440, size: 64, offset: 1472)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2236, file: !1684, line: 540, baseType: !440, size: 64, offset: 1536)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2236, file: !1684, line: 541, baseType: !440, size: 64, offset: 1600)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2236, file: !1684, line: 542, baseType: !440, size: 64, offset: 1664)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2236, file: !1684, line: 543, baseType: !440, size: 64, offset: 1728)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2040, file: !1684, line: 833, baseType: !7, size: 32, offset: 7680)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2040, file: !1684, line: 836, baseType: !7, size: 32, offset: 7712)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2040, file: !1684, line: 837, baseType: !109, size: 32, offset: 7744)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2040, file: !1684, line: 838, baseType: !2270, size: 64, offset: 7808)
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2272)
!2272 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2273, line: 19, baseType: !2274)
!2273 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2273, line: 19, size: 64, elements: !2275)
!2275 = !{!2276}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2274, file: !2273, line: 19, baseType: !2277, size: 64)
!2277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !336, size: 64, elements: !2278)
!2278 = !{!2279}
!2279 = !DISubrange(count: 1)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2040, file: !1684, line: 839, baseType: !2281, size: 64, offset: 7872)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2040, file: !1684, line: 840, baseType: !2272, size: 64, offset: 7936)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2040, file: !1684, line: 841, baseType: !358, size: 64, offset: 8000)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2040, file: !1684, line: 843, baseType: !256, size: 16, offset: 8064)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2040, file: !1684, line: 845, baseType: !256, size: 16, offset: 8080)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2040, file: !1684, line: 848, baseType: !109, size: 32, offset: 8096)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2040, file: !1684, line: 849, baseType: !2288, size: 32, offset: 8128)
!2288 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1684, line: 718, size: 32, elements: !2289)
!2289 = !{!2290, !2297}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2288, file: !1684, line: 724, baseType: !2291, size: 32)
!2291 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2288, file: !1684, line: 719, size: 32, elements: !2292)
!2292 = !{!2293, !2294, !2295, !2296}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2291, file: !1684, line: 720, baseType: !244, size: 8)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2291, file: !1684, line: 721, baseType: !244, size: 8, offset: 8)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2291, file: !1684, line: 722, baseType: !244, size: 8, offset: 16)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2291, file: !1684, line: 723, baseType: !244, size: 8, offset: 24)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2288, file: !1684, line: 725, baseType: !436, size: 32)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2040, file: !1684, line: 850, baseType: !186, size: 128, offset: 8192)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2040, file: !1684, line: 851, baseType: !2300, size: 64, offset: 8320)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1684, line: 60, flags: DIFlagFwdDecl)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2040, file: !1684, line: 855, baseType: !336, size: 64, offset: 8384)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2040, file: !1684, line: 856, baseType: !244, size: 8, offset: 8448)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2040, file: !1684, line: 857, baseType: !244, size: 8, offset: 8456)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2040, file: !1684, line: 858, baseType: !109, size: 32, offset: 8480)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2040, file: !1684, line: 859, baseType: !186, size: 128, offset: 8512)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2040, file: !1684, line: 860, baseType: !109, size: 32, offset: 8640)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2040, file: !1684, line: 861, baseType: !186, size: 128, offset: 8704)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2040, file: !1684, line: 873, baseType: !2310, size: 256, offset: 8832)
!2310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1684, line: 376, size: 256, elements: !2311)
!2311 = !{!2312, !2313, !2314, !2315}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2310, file: !1684, line: 381, baseType: !336, size: 64)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2310, file: !1684, line: 384, baseType: !442, size: 64, offset: 64)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2310, file: !1684, line: 389, baseType: !442, size: 64, offset: 128)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2310, file: !1684, line: 392, baseType: !442, size: 64, offset: 192)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2040, file: !1684, line: 875, baseType: !186, size: 128, offset: 9088)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2040, file: !1684, line: 877, baseType: !2318, size: 320, offset: 9216)
!2318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2319, line: 86, size: 320, elements: !2320)
!2319 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2320 = !{!2321, !2322, !2323}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2318, file: !2319, line: 87, baseType: !109, size: 32)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2318, file: !2319, line: 88, baseType: !186, size: 128, offset: 64)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2318, file: !2319, line: 89, baseType: !186, size: 128, offset: 192)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2040, file: !1684, line: 878, baseType: !832, size: 192, align: 64, offset: 9536)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2040, file: !1684, line: 881, baseType: !1227, size: 64, offset: 9728)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2040, file: !1684, line: 882, baseType: !1227, size: 64, offset: 9792)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2040, file: !1684, line: 884, baseType: !109, size: 32, offset: 9856)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2040, file: !1684, line: 885, baseType: !109, size: 32, offset: 9888)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2040, file: !1684, line: 886, baseType: !109, size: 32, offset: 9920)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2040, file: !1684, line: 888, baseType: !109, size: 32, offset: 9952)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2040, file: !1684, line: 890, baseType: !336, size: 64, offset: 9984)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2040, file: !1684, line: 893, baseType: !7, size: 32, offset: 10048)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2040, file: !1684, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2040, file: !1684, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2040, file: !1684, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2040, file: !1684, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2040, file: !1684, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2040, file: !1684, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2040, file: !1684, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2040, file: !1684, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2040, file: !1684, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2040, file: !1684, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2040, file: !1684, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2040, file: !1684, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2040, file: !1684, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2040, file: !1684, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2040, file: !1684, line: 969, baseType: !336, size: 64, offset: 10176)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2040, file: !1684, line: 971, baseType: !2349, size: 448, offset: 10240)
!2349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !62, line: 25, size: 448, elements: !2350)
!2350 = !{!2351, !2352, !2357}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2349, file: !62, line: 26, baseType: !336, size: 64)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2349, file: !62, line: 27, baseType: !2353, size: 64, offset: 64)
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = !DISubroutineType(types: !2355)
!2355 = !{!322, !2356}
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2357 = !DIDerivedType(tag: DW_TAG_member, scope: !2349, file: !62, line: 28, baseType: !2358, size: 320, offset: 128)
!2358 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2349, file: !62, line: 28, size: 320, elements: !2359)
!2359 = !{!2360, !2370, !2395}
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2358, file: !62, line: 37, baseType: !2361, size: 320)
!2361 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2358, file: !62, line: 30, size: 320, elements: !2362)
!2362 = !{!2363, !2365, !2366, !2367, !2368, !2369}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2361, file: !62, line: 31, baseType: !2364, size: 64)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2361, file: !62, line: 32, baseType: !436, size: 32, offset: 64)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2361, file: !62, line: 33, baseType: !436, size: 32, offset: 96)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2361, file: !62, line: 34, baseType: !436, size: 32, offset: 128)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2361, file: !62, line: 35, baseType: !440, size: 64, offset: 192)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2361, file: !62, line: 36, baseType: !2364, size: 64, offset: 256)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2358, file: !62, line: 47, baseType: !2371, size: 192)
!2371 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2358, file: !62, line: 39, size: 192, elements: !2372)
!2372 = !{!2373, !2374, !2375, !2394}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2371, file: !62, line: 40, baseType: !2197, size: 32)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2371, file: !62, line: 41, baseType: !61, size: 32, offset: 32)
!2375 = !DIDerivedType(tag: DW_TAG_member, scope: !2371, file: !62, line: 42, baseType: !2376, size: 64, offset: 64)
!2376 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2371, file: !62, line: 42, size: 64, elements: !2377)
!2377 = !{!2378, !2386}
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2376, file: !62, line: 43, baseType: !2379, size: 64)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2381, line: 7, size: 128, elements: !2382)
!2381 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2382 = !{!2383, !2385}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2380, file: !2381, line: 8, baseType: !2384, size: 64)
!2384 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !320, line: 93, baseType: !530)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2380, file: !2381, line: 9, baseType: !530, size: 64, offset: 64)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2376, file: !62, line: 44, baseType: !2387, size: 64)
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2389, line: 7, size: 64, elements: !2390)
!2389 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2390 = !{!2391, !2393}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2388, file: !2389, line: 8, baseType: !2392, size: 32)
!2392 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2389, line: 5, baseType: !825)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2388, file: !2389, line: 9, baseType: !825, size: 32, offset: 32)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2371, file: !62, line: 46, baseType: !440, size: 64, offset: 128)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2358, file: !62, line: 55, baseType: !2396, size: 256)
!2396 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2358, file: !62, line: 49, size: 256, elements: !2397)
!2397 = !{!2398, !2401, !2402, !2403, !2404}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2396, file: !62, line: 50, baseType: !2399, size: 64)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !62, line: 14, flags: DIFlagFwdDecl)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2396, file: !62, line: 51, baseType: !109, size: 32, offset: 64)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2396, file: !62, line: 52, baseType: !109, size: 32, offset: 96)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2396, file: !62, line: 53, baseType: !336, size: 64, offset: 128)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2396, file: !62, line: 54, baseType: !336, size: 64, offset: 192)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2040, file: !1684, line: 973, baseType: !2406, size: 32, offset: 10688)
!2406 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !187, line: 27, baseType: !2407)
!2407 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !320, line: 28, baseType: !109)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2040, file: !1684, line: 974, baseType: !2406, size: 32, offset: 10720)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2040, file: !1684, line: 978, baseType: !336, size: 64, offset: 10752)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2040, file: !1684, line: 987, baseType: !2039, size: 64, offset: 10816)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2040, file: !1684, line: 990, baseType: !2039, size: 64, offset: 10880)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2040, file: !1684, line: 995, baseType: !186, size: 128, offset: 10944)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2040, file: !1684, line: 996, baseType: !186, size: 128, offset: 11072)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2040, file: !1684, line: 997, baseType: !2039, size: 64, offset: 11200)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2040, file: !1684, line: 1005, baseType: !186, size: 128, offset: 11264)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2040, file: !1684, line: 1006, baseType: !186, size: 128, offset: 11392)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2040, file: !1684, line: 1009, baseType: !751, size: 64, offset: 11520)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2040, file: !1684, line: 1010, baseType: !2419, size: 512, offset: 11584)
!2419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, size: 512, elements: !764)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2040, file: !1684, line: 1011, baseType: !186, size: 128, offset: 12096)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2040, file: !1684, line: 1012, baseType: !186, size: 128, offset: 12224)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2040, file: !1684, line: 1014, baseType: !2423, size: 64, offset: 12352)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2040, file: !1684, line: 1017, baseType: !634, size: 64, offset: 12416)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2040, file: !1684, line: 1020, baseType: !634, size: 64, offset: 12480)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2040, file: !1684, line: 1023, baseType: !358, size: 64, offset: 12544)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2040, file: !1684, line: 1025, baseType: !440, size: 64, offset: 12608)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2040, file: !1684, line: 1026, baseType: !440, size: 64, offset: 12672)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2040, file: !1684, line: 1031, baseType: !440, size: 64, offset: 12736)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2040, file: !1684, line: 1032, baseType: !2431, size: 192, offset: 12800)
!2431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1684, line: 324, size: 192, elements: !2432)
!2432 = !{!2433, !2434, !2435}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2431, file: !1684, line: 326, baseType: !440, size: 64)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2431, file: !1684, line: 327, baseType: !440, size: 64, offset: 64)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2431, file: !1684, line: 328, baseType: !665, size: 32, offset: 128)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2040, file: !1684, line: 1041, baseType: !336, size: 64, offset: 12992)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2040, file: !1684, line: 1042, baseType: !336, size: 64, offset: 13056)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2040, file: !1684, line: 1045, baseType: !440, size: 64, offset: 13120)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2040, file: !1684, line: 1048, baseType: !440, size: 64, offset: 13184)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2040, file: !1684, line: 1051, baseType: !336, size: 64, offset: 13248)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2040, file: !1684, line: 1052, baseType: !336, size: 64, offset: 13312)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2040, file: !1684, line: 1055, baseType: !2443, size: 640, offset: 13376)
!2443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2444, line: 132, size: 640, elements: !2445)
!2444 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2445 = !{!2446, !2452, !2453}
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2443, file: !2444, line: 133, baseType: !2447, size: 576)
!2447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2448, size: 576, elements: !287)
!2448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2444, line: 117, size: 192, elements: !2449)
!2449 = !{!2450, !2451}
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2448, file: !2444, line: 118, baseType: !440, size: 64)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2448, file: !2444, line: 119, baseType: !2206, size: 128, offset: 64)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2443, file: !2444, line: 134, baseType: !7, size: 32, offset: 576)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2443, file: !2444, line: 135, baseType: !7, size: 32, offset: 608)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2040, file: !1684, line: 1058, baseType: !2455, size: 448, offset: 14016)
!2455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2444, line: 144, size: 448, elements: !2456)
!2456 = !{!2457, !2458, !2459}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2455, file: !2444, line: 145, baseType: !710, size: 128, align: 64)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2455, file: !2444, line: 146, baseType: !652, size: 256, offset: 128)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2455, file: !2444, line: 147, baseType: !7, size: 32, offset: 384)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2040, file: !1684, line: 1064, baseType: !790, size: 64, offset: 14464)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2040, file: !1684, line: 1067, baseType: !790, size: 64, offset: 14528)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2040, file: !1684, line: 1070, baseType: !790, size: 64, offset: 14592)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2040, file: !1684, line: 1074, baseType: !817, size: 64, offset: 14656)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2040, file: !1684, line: 1084, baseType: !2465, size: 128, offset: 14720)
!2465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 128, elements: !2466)
!2466 = !{!2467}
!2467 = !DISubrange(count: 16)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2040, file: !1684, line: 1086, baseType: !2469, size: 64, offset: 14848)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1684, line: 55, flags: DIFlagFwdDecl)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2040, file: !1684, line: 1089, baseType: !2472, size: 64, offset: 14912)
!2472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2473, line: 12, size: 64, elements: !2474)
!2473 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2474 = !{!2475}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2472, file: !2473, line: 13, baseType: !2476, size: 64)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2473, line: 8, flags: DIFlagFwdDecl)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2040, file: !1684, line: 1090, baseType: !2479, size: 128, offset: 14976)
!2479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2480, line: 13, size: 128, elements: !2481)
!2480 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2481 = !{!2482}
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2479, file: !2480, line: 14, baseType: !186, size: 128)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2040, file: !1684, line: 1097, baseType: !2484, size: 64, offset: 15104)
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2485 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1684, line: 50, flags: DIFlagFwdDecl)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2040, file: !1684, line: 1100, baseType: !2487, size: 64, offset: 15168)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1684, line: 1100, flags: DIFlagFwdDecl)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2040, file: !1684, line: 1103, baseType: !2490, size: 64, offset: 15232)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1684, line: 53, flags: DIFlagFwdDecl)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2040, file: !1684, line: 1107, baseType: !2493, size: 64, offset: 15296)
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2495, line: 35, flags: DIFlagFwdDecl)
!2495 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2040, file: !1684, line: 1110, baseType: !2497, size: 64, offset: 15360)
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2499, line: 93, size: 8768, elements: !2500)
!2499 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2500 = !{!2501, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2550, !2559, !2560, !2562, !2563, !2564, !2567, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2605, !2606, !2613, !2623, !2626, !2627, !2630, !2631, !2632, !2633, !2634, !2635}
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2498, file: !2499, line: 94, baseType: !755, size: 32)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2498, file: !2499, line: 95, baseType: !236, size: 32, offset: 32)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2498, file: !2499, line: 96, baseType: !109, size: 32, offset: 64)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2498, file: !2499, line: 97, baseType: !109, size: 32, offset: 96)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2498, file: !2499, line: 98, baseType: !186, size: 128, offset: 128)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2498, file: !2499, line: 100, baseType: !768, size: 192, offset: 256)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2498, file: !2499, line: 103, baseType: !2039, size: 64, offset: 448)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2498, file: !2499, line: 106, baseType: !2509, size: 192, offset: 512)
!2509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !987, line: 32, size: 192, elements: !2510)
!2510 = !{!2511, !2512}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2509, file: !987, line: 33, baseType: !186, size: 128)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2509, file: !987, line: 34, baseType: !2513, size: 64, offset: 128)
!2513 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2514, line: 25, baseType: !2515)
!2514 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2515 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2514, line: 23, size: 64, elements: !2516)
!2516 = !{!2517}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2515, file: !2514, line: 24, baseType: !2277, size: 64)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2498, file: !2499, line: 109, baseType: !559, size: 64, offset: 704)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2498, file: !2499, line: 112, baseType: !109, size: 32, offset: 768)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2498, file: !2499, line: 114, baseType: !109, size: 32, offset: 800)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2498, file: !2499, line: 115, baseType: !2039, size: 64, offset: 832)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2498, file: !2499, line: 118, baseType: !109, size: 32, offset: 896)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2498, file: !2499, line: 119, baseType: !7, size: 32, offset: 928)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2498, file: !2499, line: 121, baseType: !2525, size: 64, offset: 960)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2499, line: 80, size: 448, elements: !2527)
!2527 = !{!2528, !2529, !2535}
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2526, file: !2499, line: 81, baseType: !236, size: 32)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2526, file: !2499, line: 82, baseType: !2530, size: 128, offset: 64)
!2530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2499, line: 75, size: 128, elements: !2531)
!2531 = !{!2532, !2533}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2530, file: !2499, line: 76, baseType: !2039, size: 64)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2530, file: !2499, line: 77, baseType: !2534, size: 64, offset: 64)
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2526, file: !2499, line: 83, baseType: !1178, size: 256, offset: 192)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2498, file: !2499, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2498, file: !2499, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2498, file: !2499, line: 138, baseType: !7, size: 32, offset: 1056)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2498, file: !2499, line: 139, baseType: !186, size: 128, offset: 1088)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2498, file: !2499, line: 142, baseType: !2150, size: 512, offset: 1216)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2498, file: !2499, line: 143, baseType: !2158, size: 64, offset: 1728)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2498, file: !2499, line: 150, baseType: !2543, size: 256, offset: 1792)
!2543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2544, size: 256, elements: !2548)
!2544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2499, line: 38, size: 128, elements: !2545)
!2545 = !{!2546, !2547}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2544, file: !2499, line: 39, baseType: !440, size: 64)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2544, file: !2499, line: 40, baseType: !440, size: 64, offset: 64)
!2548 = !{!2549}
!2549 = !DISubrange(count: 2)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2498, file: !2499, line: 156, baseType: !2551, size: 192, offset: 2048)
!2551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2499, line: 66, size: 192, elements: !2552)
!2552 = !{!2553}
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2551, file: !2499, line: 67, baseType: !2554, size: 192)
!2554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2499, line: 47, size: 192, elements: !2555)
!2555 = !{!2556, !2557, !2558}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2554, file: !2499, line: 48, baseType: !658, size: 64)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2554, file: !2499, line: 49, baseType: !658, size: 64, offset: 64)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2554, file: !2499, line: 50, baseType: !658, size: 64, offset: 128)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2498, file: !2499, line: 160, baseType: !2443, size: 640, offset: 2240)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2498, file: !2499, line: 163, baseType: !2561, size: 256, offset: 2880)
!2561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !751, size: 256, elements: !764)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2498, file: !2499, line: 169, baseType: !751, size: 64, offset: 3136)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2498, file: !2499, line: 172, baseType: !109, size: 32, offset: 3200)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2498, file: !2499, line: 174, baseType: !2565, size: 64, offset: 3264)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2499, line: 174, flags: DIFlagFwdDecl)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2498, file: !2499, line: 185, baseType: !2568, size: 64, offset: 3328)
!2568 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !409, line: 860, baseType: !2569)
!2569 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !409, line: 853, size: 64, elements: !2570)
!2570 = !{!2571, !2572}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2569, file: !409, line: 858, baseType: !408, size: 32)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2569, file: !409, line: 859, baseType: !216, size: 32, offset: 32)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2498, file: !2499, line: 186, baseType: !440, size: 64, offset: 3392)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2498, file: !2499, line: 186, baseType: !440, size: 64, offset: 3456)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2498, file: !2499, line: 186, baseType: !440, size: 64, offset: 3520)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2498, file: !2499, line: 186, baseType: !440, size: 64, offset: 3584)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2498, file: !2499, line: 187, baseType: !440, size: 64, offset: 3648)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2498, file: !2499, line: 188, baseType: !440, size: 64, offset: 3712)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2498, file: !2499, line: 189, baseType: !2431, size: 192, offset: 3776)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2498, file: !2499, line: 190, baseType: !336, size: 64, offset: 3968)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2498, file: !2499, line: 190, baseType: !336, size: 64, offset: 4032)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2498, file: !2499, line: 190, baseType: !336, size: 64, offset: 4096)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2498, file: !2499, line: 190, baseType: !336, size: 64, offset: 4160)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2498, file: !2499, line: 191, baseType: !336, size: 64, offset: 4224)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2498, file: !2499, line: 191, baseType: !336, size: 64, offset: 4288)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2498, file: !2499, line: 191, baseType: !336, size: 64, offset: 4352)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2498, file: !2499, line: 191, baseType: !336, size: 64, offset: 4416)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2498, file: !2499, line: 192, baseType: !336, size: 64, offset: 4480)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2498, file: !2499, line: 192, baseType: !336, size: 64, offset: 4544)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2498, file: !2499, line: 192, baseType: !336, size: 64, offset: 4608)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2498, file: !2499, line: 192, baseType: !336, size: 64, offset: 4672)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2498, file: !2499, line: 193, baseType: !336, size: 64, offset: 4736)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2498, file: !2499, line: 193, baseType: !336, size: 64, offset: 4800)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2498, file: !2499, line: 194, baseType: !2595, size: 448, offset: 4864)
!2595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2596, line: 12, size: 448, elements: !2597)
!2596 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2597 = !{!2598, !2599, !2600, !2601, !2602, !2603, !2604}
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2595, file: !2596, line: 15, baseType: !440, size: 64)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2595, file: !2596, line: 17, baseType: !440, size: 64, offset: 64)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2595, file: !2596, line: 19, baseType: !440, size: 64, offset: 128)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2595, file: !2596, line: 21, baseType: !440, size: 64, offset: 192)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2595, file: !2596, line: 29, baseType: !440, size: 64, offset: 256)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2595, file: !2596, line: 35, baseType: !440, size: 64, offset: 320)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2595, file: !2596, line: 44, baseType: !440, size: 64, offset: 384)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2498, file: !2499, line: 202, baseType: !442, size: 64, offset: 5312)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2498, file: !2499, line: 213, baseType: !2607, size: 2048, offset: 5376)
!2607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2608, size: 2048, elements: !2466)
!2608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2609, line: 43, size: 128, elements: !2610)
!2609 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2610 = !{!2611, !2612}
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2608, file: !2609, line: 44, baseType: !335, size: 64)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2608, file: !2609, line: 45, baseType: !335, size: 64, offset: 64)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2498, file: !2499, line: 216, baseType: !2614, size: 448, offset: 7424)
!2614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2499, line: 30, size: 448, elements: !2615)
!2615 = !{!2616, !2617, !2618, !2619, !2620, !2621, !2622}
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2614, file: !2499, line: 31, baseType: !109, size: 32)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2614, file: !2499, line: 32, baseType: !322, size: 64, offset: 64)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2614, file: !2499, line: 33, baseType: !336, size: 64, offset: 128)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2614, file: !2499, line: 34, baseType: !440, size: 64, offset: 192)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2614, file: !2499, line: 34, baseType: !440, size: 64, offset: 256)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2614, file: !2499, line: 35, baseType: !336, size: 64, offset: 320)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2614, file: !2499, line: 35, baseType: !336, size: 64, offset: 384)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2498, file: !2499, line: 219, baseType: !2624, size: 64, offset: 7872)
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2625 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2499, line: 219, flags: DIFlagFwdDecl)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2498, file: !2499, line: 222, baseType: !7, size: 32, offset: 7936)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2498, file: !2499, line: 223, baseType: !2628, size: 64, offset: 8000)
!2628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2629, size: 64)
!2629 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2499, line: 223, flags: DIFlagFwdDecl)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2498, file: !2499, line: 230, baseType: !899, size: 8, offset: 8064)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2498, file: !2499, line: 231, baseType: !868, size: 16, offset: 8080)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2498, file: !2499, line: 232, baseType: !868, size: 16, offset: 8096)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2498, file: !2499, line: 234, baseType: !1227, size: 64, offset: 8128)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2498, file: !2499, line: 237, baseType: !652, size: 256, offset: 8192)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2498, file: !2499, line: 243, baseType: !840, size: 320, offset: 8448)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2040, file: !1684, line: 1111, baseType: !2637, size: 64, offset: 15424)
!2637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2638, size: 64)
!2638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2499, line: 20, size: 16640, elements: !2639)
!2639 = !{!2640, !2641, !2642, !2643}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2638, file: !2499, line: 21, baseType: !216, size: 32)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2638, file: !2499, line: 22, baseType: !755, size: 32, offset: 32)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2638, file: !2499, line: 23, baseType: !768, size: 192, offset: 64)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2638, file: !2499, line: 24, baseType: !2644, size: 16384, offset: 256)
!2644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2645, size: 16384, elements: !291)
!2645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !987, line: 51, size: 256, elements: !2646)
!2646 = !{!2647}
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2645, file: !987, line: 52, baseType: !2648, size: 256)
!2648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !987, line: 37, size: 256, elements: !2649)
!2649 = !{!2650, !2657, !2658, !2664}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2648, file: !987, line: 39, baseType: !2651, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2652, line: 83, baseType: !2653)
!2652 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2654, size: 64)
!2654 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2652, line: 82, baseType: !2655)
!2655 = !DISubroutineType(types: !2656)
!2656 = !{null, !109}
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2648, file: !987, line: 40, baseType: !336, size: 64, offset: 64)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2648, file: !987, line: 46, baseType: !2659, size: 64, offset: 128)
!2659 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2652, line: 86, baseType: !2660)
!2660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2661, size: 64)
!2661 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2652, line: 85, baseType: !2662)
!2662 = !DISubroutineType(types: !2663)
!2663 = !{null}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2648, file: !987, line: 48, baseType: !2513, size: 64, offset: 192)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2040, file: !1684, line: 1112, baseType: !2513, size: 64, offset: 15488)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2040, file: !1684, line: 1113, baseType: !2513, size: 64, offset: 15552)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2040, file: !1684, line: 1115, baseType: !2513, size: 64, offset: 15616)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2040, file: !1684, line: 1116, baseType: !2509, size: 192, offset: 15680)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2040, file: !1684, line: 1117, baseType: !336, size: 64, offset: 15872)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2040, file: !1684, line: 1118, baseType: !333, size: 64, offset: 15936)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2040, file: !1684, line: 1119, baseType: !7, size: 32, offset: 16000)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2040, file: !1684, line: 1121, baseType: !713, size: 64, offset: 16064)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2040, file: !1684, line: 1125, baseType: !2674, size: 64, offset: 16128)
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2675, size: 64)
!2675 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1684, line: 43, flags: DIFlagFwdDecl)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2040, file: !1684, line: 1127, baseType: !373, size: 32, offset: 16192)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2040, file: !1684, line: 1128, baseType: !7, size: 32, offset: 16224)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2040, file: !1684, line: 1130, baseType: !2679, size: 128, offset: 16256)
!2679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2680, line: 37, size: 128, elements: !2681)
!2680 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2681 = !{!2682, !2683, !2684}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2679, file: !2680, line: 38, baseType: !109, size: 32)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2679, file: !2680, line: 39, baseType: !236, size: 32, offset: 32)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2679, file: !2680, line: 40, baseType: !2685, size: 64, offset: 64)
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2686, size: 64)
!2686 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2680, line: 24, flags: DIFlagFwdDecl)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2040, file: !1684, line: 1131, baseType: !2688, size: 256, offset: 16384)
!2688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2689, line: 12, size: 256, elements: !2690)
!2689 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2690 = !{!2691, !2692, !2693, !2694}
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2688, file: !2689, line: 13, baseType: !286, size: 64)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2688, file: !2689, line: 14, baseType: !336, size: 64, offset: 64)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2688, file: !2689, line: 15, baseType: !336, size: 64, offset: 128)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2688, file: !2689, line: 16, baseType: !899, size: 8, offset: 192)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2040, file: !1684, line: 1134, baseType: !440, size: 64, offset: 16640)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2040, file: !1684, line: 1135, baseType: !440, size: 64, offset: 16704)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2040, file: !1684, line: 1138, baseType: !216, size: 32, offset: 16768)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2040, file: !1684, line: 1141, baseType: !665, size: 32, offset: 16800)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2040, file: !1684, line: 1143, baseType: !2700, size: 64, offset: 16832)
!2700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1684, line: 735, size: 64, elements: !2701)
!2701 = !{!2702}
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2700, file: !1684, line: 736, baseType: !2703, size: 64)
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2040, file: !1684, line: 1147, baseType: !2209, size: 128, offset: 16896)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2040, file: !1684, line: 1149, baseType: !2039, size: 64, offset: 17024)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2040, file: !1684, line: 1151, baseType: !2707, size: 64, offset: 17088)
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2708 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1684, line: 1151, flags: DIFlagFwdDecl)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2040, file: !1684, line: 1188, baseType: !358, size: 64, offset: 17152)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2040, file: !1684, line: 1191, baseType: !2711, size: 64, offset: 17216)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1684, line: 44, flags: DIFlagFwdDecl)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2040, file: !1684, line: 1194, baseType: !2714, size: 64, offset: 17280)
!2714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2715, size: 64)
!2715 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1684, line: 45, flags: DIFlagFwdDecl)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2040, file: !1684, line: 1197, baseType: !2717, size: 64, offset: 17344)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1684, line: 61, flags: DIFlagFwdDecl)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2040, file: !1684, line: 1199, baseType: !2720, size: 64, offset: 17408)
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2722, line: 99, size: 128, elements: !2723)
!2722 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2723 = !{!2724, !2725, !2726}
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2721, file: !2722, line: 100, baseType: !656, size: 64)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2721, file: !2722, line: 101, baseType: !236, size: 32, offset: 64)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2721, file: !2722, line: 103, baseType: !256, size: 16, offset: 96)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2040, file: !1684, line: 1202, baseType: !2728, size: 64, offset: 17472)
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1684, line: 48, flags: DIFlagFwdDecl)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2040, file: !1684, line: 1205, baseType: !336, size: 64, offset: 17536)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2040, file: !1684, line: 1206, baseType: !2732, size: 64, offset: 17600)
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2733 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !987, line: 14, baseType: !2734)
!2734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !987, line: 12, size: 384, elements: !2735)
!2735 = !{!2736}
!2736 = !DIDerivedType(tag: DW_TAG_member, scope: !2734, file: !987, line: 13, baseType: !2737, size: 384)
!2737 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2734, file: !987, line: 13, size: 384, elements: !2738)
!2738 = !{!2739, !2740, !2741, !2742}
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2737, file: !987, line: 13, baseType: !109, size: 32)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2737, file: !987, line: 13, baseType: !109, size: 32, offset: 32)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2737, file: !987, line: 13, baseType: !109, size: 32, offset: 64)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2737, file: !987, line: 13, baseType: !2743, size: 256, offset: 128)
!2743 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2744, line: 37, size: 256, elements: !2745)
!2744 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2745 = !{!2746, !2751, !2764, !2770, !2779, !2806, !2811}
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2743, file: !2744, line: 42, baseType: !2747, size: 64)
!2747 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2743, file: !2744, line: 39, size: 64, elements: !2748)
!2748 = !{!2749, !2750}
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2747, file: !2744, line: 40, baseType: !2407, size: 32)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2747, file: !2744, line: 41, baseType: !379, size: 32, offset: 32)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2743, file: !2744, line: 50, baseType: !2752, size: 192)
!2752 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2743, file: !2744, line: 45, size: 192, elements: !2753)
!2753 = !{!2754, !2756, !2757, !2763}
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2752, file: !2744, line: 46, baseType: !2755, size: 32)
!2755 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !320, line: 95, baseType: !109)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2752, file: !2744, line: 47, baseType: !109, size: 32, offset: 32)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2752, file: !2744, line: 48, baseType: !2758, size: 64, offset: 64)
!2758 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2744, line: 11, baseType: !2759)
!2759 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2744, line: 8, size: 64, elements: !2760)
!2760 = !{!2761, !2762}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2759, file: !2744, line: 9, baseType: !109, size: 32)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2759, file: !2744, line: 10, baseType: !358, size: 64)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2752, file: !2744, line: 49, baseType: !109, size: 32, offset: 128)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2743, file: !2744, line: 57, baseType: !2765, size: 128)
!2765 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2743, file: !2744, line: 53, size: 128, elements: !2766)
!2766 = !{!2767, !2768, !2769}
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2765, file: !2744, line: 54, baseType: !2407, size: 32)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2765, file: !2744, line: 55, baseType: !379, size: 32, offset: 32)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2765, file: !2744, line: 56, baseType: !2758, size: 64, offset: 64)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2743, file: !2744, line: 66, baseType: !2771, size: 256)
!2771 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2743, file: !2744, line: 60, size: 256, elements: !2772)
!2772 = !{!2773, !2774, !2775, !2776, !2778}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2771, file: !2744, line: 61, baseType: !2407, size: 32)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2771, file: !2744, line: 62, baseType: !379, size: 32, offset: 32)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2771, file: !2744, line: 63, baseType: !109, size: 32, offset: 64)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2771, file: !2744, line: 64, baseType: !2777, size: 64, offset: 128)
!2777 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !320, line: 94, baseType: !321)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2771, file: !2744, line: 65, baseType: !2777, size: 64, offset: 192)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2743, file: !2744, line: 105, baseType: !2780, size: 256)
!2780 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2743, file: !2744, line: 69, size: 256, elements: !2781)
!2781 = !{!2782, !2783}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2780, file: !2744, line: 70, baseType: !358, size: 64)
!2783 = !DIDerivedType(tag: DW_TAG_member, scope: !2780, file: !2744, line: 79, baseType: !2784, size: 192, offset: 64)
!2784 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2780, file: !2744, line: 79, size: 192, elements: !2785)
!2785 = !{!2786, !2787, !2788, !2795, !2800}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2784, file: !2744, line: 81, baseType: !109, size: 32)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2784, file: !2744, line: 86, baseType: !868, size: 16)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2784, file: !2744, line: 92, baseType: !2789, size: 192)
!2789 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2784, file: !2744, line: 88, size: 192, elements: !2790)
!2790 = !{!2791, !2793, !2794}
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2789, file: !2744, line: 89, baseType: !2792, size: 64)
!2792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 64, elements: !2193)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2789, file: !2744, line: 90, baseType: !358, size: 64, offset: 64)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2789, file: !2744, line: 91, baseType: !358, size: 64, offset: 128)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2784, file: !2744, line: 97, baseType: !2796, size: 96)
!2796 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2784, file: !2744, line: 94, size: 96, elements: !2797)
!2797 = !{!2798, !2799}
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2796, file: !2744, line: 95, baseType: !2792, size: 64)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2796, file: !2744, line: 96, baseType: !437, size: 32, offset: 64)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2784, file: !2744, line: 103, baseType: !2801, size: 128)
!2801 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2784, file: !2744, line: 99, size: 128, elements: !2802)
!2802 = !{!2803, !2804, !2805}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2801, file: !2744, line: 100, baseType: !336, size: 64)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2801, file: !2744, line: 101, baseType: !437, size: 32, offset: 64)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2801, file: !2744, line: 102, baseType: !437, size: 32, offset: 96)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2743, file: !2744, line: 111, baseType: !2807, size: 128)
!2807 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2743, file: !2744, line: 108, size: 128, elements: !2808)
!2808 = !{!2809, !2810}
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2807, file: !2744, line: 109, baseType: !322, size: 64)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2807, file: !2744, line: 110, baseType: !109, size: 32, offset: 64)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2743, file: !2744, line: 118, baseType: !2812, size: 128)
!2812 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2743, file: !2744, line: 114, size: 128, elements: !2813)
!2813 = !{!2814, !2815, !2816}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2812, file: !2744, line: 115, baseType: !358, size: 64)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2812, file: !2744, line: 116, baseType: !109, size: 32, offset: 64)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2812, file: !2744, line: 117, baseType: !7, size: 32, offset: 96)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2040, file: !1684, line: 1208, baseType: !2595, size: 448, offset: 17664)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2040, file: !1684, line: 1215, baseType: !440, size: 64, offset: 18112)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2040, file: !1684, line: 1217, baseType: !440, size: 64, offset: 18176)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2040, file: !1684, line: 1219, baseType: !440, size: 64, offset: 18240)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2040, file: !1684, line: 1223, baseType: !2822, size: 64, offset: 18304)
!2822 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !160, line: 99, baseType: !2823)
!2823 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !160, line: 99, size: 64, elements: !2824)
!2824 = !{!2825}
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2823, file: !160, line: 99, baseType: !2277, size: 64)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2040, file: !1684, line: 1225, baseType: !408, size: 32, offset: 18368)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2040, file: !1684, line: 1226, baseType: !109, size: 32, offset: 18400)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2040, file: !1684, line: 1227, baseType: !109, size: 32, offset: 18432)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2040, file: !1684, line: 1231, baseType: !2830, size: 64, offset: 18496)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2831, size: 64)
!2831 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1684, line: 1231, flags: DIFlagFwdDecl)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2040, file: !1684, line: 1233, baseType: !186, size: 128, offset: 18560)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2040, file: !1684, line: 1240, baseType: !2834, size: 64, offset: 18688)
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2835, size: 64)
!2835 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1684, line: 62, flags: DIFlagFwdDecl)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2040, file: !1684, line: 1242, baseType: !2837, size: 64, offset: 18752)
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2838, size: 64)
!2838 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1684, line: 1242, flags: DIFlagFwdDecl)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2040, file: !1684, line: 1244, baseType: !186, size: 128, offset: 18816)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2040, file: !1684, line: 1245, baseType: !2841, size: 64, offset: 18944)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1684, line: 51, flags: DIFlagFwdDecl)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2040, file: !1684, line: 1246, baseType: !652, size: 256, offset: 19008)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2040, file: !1684, line: 1247, baseType: !7, size: 32, offset: 19264)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2040, file: !1684, line: 1250, baseType: !2846, size: 64, offset: 19328)
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1684, line: 57, flags: DIFlagFwdDecl)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2040, file: !1684, line: 1251, baseType: !652, size: 256, offset: 19392)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2040, file: !1684, line: 1252, baseType: !186, size: 128, offset: 19648)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2040, file: !1684, line: 1259, baseType: !1472, size: 64, offset: 19776)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2040, file: !1684, line: 1260, baseType: !868, size: 16, offset: 19840)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2040, file: !1684, line: 1261, baseType: !868, size: 16, offset: 19856)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2040, file: !1684, line: 1314, baseType: !2854, size: 64, offset: 19904)
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2856, line: 62, size: 256, align: 256, elements: !2857)
!2856 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2857 = !{!2858, !2859, !2860, !2861, !2862, !2863, !2864}
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2855, file: !2856, line: 75, baseType: !437, size: 32)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2855, file: !2856, line: 90, baseType: !437, size: 32, offset: 32)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2855, file: !2856, line: 112, baseType: !441, size: 64, offset: 64)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2855, file: !2856, line: 132, baseType: !437, size: 32, offset: 128)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2855, file: !2856, line: 140, baseType: !437, size: 32, offset: 160)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2855, file: !2856, line: 149, baseType: !437, size: 32, offset: 192)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2855, file: !2856, line: 154, baseType: !2865, offset: 224)
!2865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, elements: !783)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2040, file: !1684, line: 1315, baseType: !436, size: 32, offset: 19968)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2040, file: !1684, line: 1316, baseType: !436, size: 32, offset: 20000)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2040, file: !1684, line: 1321, baseType: !336, size: 64, offset: 20032)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2040, file: !1684, line: 1325, baseType: !109, size: 32, offset: 20096)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2040, file: !1684, line: 1326, baseType: !109, size: 32, offset: 20128)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2040, file: !1684, line: 1327, baseType: !109, size: 32, offset: 20160)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2040, file: !1684, line: 1328, baseType: !109, size: 32, offset: 20192)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2040, file: !1684, line: 1329, baseType: !710, size: 128, align: 64, offset: 20224)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2040, file: !1684, line: 1332, baseType: !2875, size: 128, offset: 20352)
!2875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2876, line: 51, size: 128, elements: !2877)
!2876 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2877 = !{!2878, !2883, !2884}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2875, file: !2876, line: 60, baseType: !2879, size: 64)
!2879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2880, line: 7, size: 64, elements: !2881)
!2880 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2881 = !{!2882}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2879, file: !2880, line: 12, baseType: !2274, size: 64)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2875, file: !2876, line: 63, baseType: !899, size: 8, offset: 64)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2875, file: !2876, line: 70, baseType: !899, size: 8, offset: 72)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2040, file: !1684, line: 1335, baseType: !1682, size: 64, offset: 20480)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2040, file: !1684, line: 1337, baseType: !2887, size: 128, offset: 20544)
!2887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2876, line: 39, size: 128, elements: !2888)
!2888 = !{!2889, !2890, !2891}
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2887, file: !2876, line: 40, baseType: !1200, size: 64)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2887, file: !2876, line: 42, baseType: !437, size: 32, offset: 64)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2887, file: !2876, line: 43, baseType: !437, size: 32, offset: 96)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2040, file: !1684, line: 1340, baseType: !2893, size: 64, offset: 20672)
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2894, size: 64)
!2894 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1684, line: 69, flags: DIFlagFwdDecl)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2040, file: !1684, line: 1351, baseType: !109, size: 32, offset: 20736)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2040, file: !1684, line: 1352, baseType: !109, size: 32, offset: 20768)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2040, file: !1684, line: 1354, baseType: !336, size: 64, offset: 20800)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2040, file: !1684, line: 1364, baseType: !440, size: 64, offset: 20864)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2040, file: !1684, line: 1365, baseType: !440, size: 64, offset: 20928)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2040, file: !1684, line: 1412, baseType: !336, size: 64, offset: 20992)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2040, file: !1684, line: 1453, baseType: !2902, size: 64, offset: 21056)
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1684, line: 1453, flags: DIFlagFwdDecl)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2040, file: !1684, line: 1457, baseType: !2905, size: 64, offset: 21120)
!2905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2906, size: 64)
!2906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !2907)
!2907 = !{!2908, !2909, !2928, !2931, !2932, !2965, !2975}
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2906, file: !68, line: 62, baseType: !67, size: 32)
!2909 = !DIDerivedType(tag: DW_TAG_member, scope: !2906, file: !68, line: 64, baseType: !2910, size: 192, offset: 64)
!2910 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2906, file: !68, line: 64, size: 192, elements: !2911)
!2911 = !{!2912, !2923}
!2912 = !DIDerivedType(tag: DW_TAG_member, scope: !2910, file: !68, line: 65, baseType: !2913, size: 192)
!2913 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2910, file: !68, line: 65, size: 192, elements: !2914)
!2914 = !{!2915, !2922}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2913, file: !68, line: 66, baseType: !2916, size: 128)
!2916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2917, line: 50, size: 128, elements: !2918)
!2917 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2918 = !{!2919, !2920, !2921}
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2916, file: !2917, line: 52, baseType: !336, size: 64)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2916, file: !2917, line: 54, baseType: !7, size: 32, offset: 64)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2916, file: !2917, line: 55, baseType: !7, size: 32, offset: 96)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2913, file: !68, line: 67, baseType: !336, size: 64, offset: 128)
!2923 = !DIDerivedType(tag: DW_TAG_member, scope: !2910, file: !68, line: 70, baseType: !2924, size: 192)
!2924 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2910, file: !68, line: 70, size: 192, elements: !2925)
!2925 = !{!2926, !2927}
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2924, file: !68, line: 71, baseType: !710, size: 128, align: 64)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2924, file: !68, line: 72, baseType: !336, size: 64, offset: 128)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2906, file: !68, line: 76, baseType: !2929, size: 64, offset: 256)
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2906, file: !68, line: 77, baseType: !336, size: 64, offset: 320)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2906, file: !68, line: 79, baseType: !2933, size: 64, offset: 384)
!2933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2934, size: 64)
!2934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2917, line: 25, size: 256, elements: !2935)
!2935 = !{!2936, !2942, !2946}
!2936 = !DIDerivedType(tag: DW_TAG_member, scope: !2934, file: !2917, line: 26, baseType: !2937, size: 128)
!2937 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2934, file: !2917, line: 26, size: 128, elements: !2938)
!2938 = !{!2939, !2941}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2937, file: !2917, line: 27, baseType: !2940, size: 128)
!2940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 128, elements: !2466)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2937, file: !2917, line: 28, baseType: !2940, size: 128)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2934, file: !2917, line: 31, baseType: !2943, size: 64, offset: 128)
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2944, size: 64)
!2944 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2945)
!2945 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2917, line: 23, flags: DIFlagFwdDecl)
!2946 = !DIDerivedType(tag: DW_TAG_member, scope: !2934, file: !2917, line: 33, baseType: !2947, size: 64, offset: 192)
!2947 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2934, file: !2917, line: 33, size: 64, elements: !2948)
!2948 = !{!2949, !2955, !2960}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2947, file: !2917, line: 38, baseType: !2950, size: 64)
!2950 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2947, file: !2917, line: 34, size: 64, elements: !2951)
!2951 = !{!2952, !2953, !2954}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2950, file: !2917, line: 35, baseType: !825, size: 32)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2950, file: !2917, line: 36, baseType: !244, size: 8, offset: 32)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2950, file: !2917, line: 37, baseType: !244, size: 8, offset: 40)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2947, file: !2917, line: 42, baseType: !2956, size: 16)
!2956 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2947, file: !2917, line: 39, size: 16, elements: !2957)
!2957 = !{!2958, !2959}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2956, file: !2917, line: 40, baseType: !244, size: 8)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2956, file: !2917, line: 41, baseType: !244, size: 8, offset: 8)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2947, file: !2917, line: 46, baseType: !2961, size: 16)
!2961 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2947, file: !2917, line: 43, size: 16, elements: !2962)
!2962 = !{!2963, !2964}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2961, file: !2917, line: 44, baseType: !244, size: 8)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2961, file: !2917, line: 45, baseType: !244, size: 8, offset: 8)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2906, file: !68, line: 81, baseType: !2966, size: 64, offset: 448)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !2968)
!2968 = !{!2969, !2970, !2971, !2972, !2973, !2974}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2967, file: !68, line: 86, baseType: !2929, size: 64)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2967, file: !68, line: 87, baseType: !336, size: 64, offset: 64)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2967, file: !68, line: 88, baseType: !336, size: 64, offset: 128)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2967, file: !68, line: 89, baseType: !336, size: 64, offset: 192)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2967, file: !68, line: 90, baseType: !899, size: 8, offset: 256)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2967, file: !68, line: 92, baseType: !2966, size: 64, offset: 320)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2906, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2040, file: !1684, line: 1463, baseType: !2977, offset: 21184)
!2977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1684, line: 739, elements: !571)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2040, file: !1684, line: 1470, baseType: !710, size: 128, align: 64, offset: 21184)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2040, file: !1684, line: 1471, baseType: !755, size: 32, offset: 21312)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2040, file: !1684, line: 1472, baseType: !109, size: 32, offset: 21344)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2040, file: !1684, line: 1474, baseType: !2039, size: 64, offset: 21376)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2040, file: !1684, line: 1475, baseType: !2983, size: 320, offset: 21440)
!2983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2984, line: 11, size: 320, elements: !2985)
!2984 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2985 = !{!2986, !2987, !2988, !2993}
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2983, file: !2984, line: 16, baseType: !563, size: 128)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2983, file: !2984, line: 17, baseType: !336, size: 64, offset: 128)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2983, file: !2984, line: 18, baseType: !2989, size: 64, offset: 192)
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!2990 = !DISubroutineType(types: !2991)
!2991 = !{null, !2992}
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2983, file: !2984, line: 19, baseType: !436, size: 32, offset: 256)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2040, file: !1684, line: 1478, baseType: !2995, size: 64, offset: 21760)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2997, line: 49, size: 512, elements: !2998)
!2997 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!2998 = !{!2999, !3000, !3001, !3002, !3003, !3005, !3006, !3007, !3009}
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2996, file: !2997, line: 50, baseType: !2995, size: 64)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2996, file: !2997, line: 51, baseType: !358, size: 64, offset: 64)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2996, file: !2997, line: 52, baseType: !336, size: 64, offset: 128)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2996, file: !2997, line: 53, baseType: !336, size: 64, offset: 192)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2996, file: !2997, line: 54, baseType: !3004, size: 64, offset: 256)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !2996, file: !2997, line: 56, baseType: !7, size: 32, offset: 320)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2996, file: !2997, line: 58, baseType: !7, size: 32, offset: 352)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2996, file: !2997, line: 59, baseType: !3008, size: 64, offset: 384)
!3008 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !187, line: 159, baseType: !440)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2996, file: !2997, line: 60, baseType: !1342, size: 64, offset: 448)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2040, file: !1684, line: 1482, baseType: !755, size: 32, offset: 21824)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2040, file: !1684, line: 1489, baseType: !358, size: 64, offset: 21888)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2040, file: !1684, line: 1504, baseType: !358, size: 64, offset: 21952)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2040, file: !1684, line: 1505, baseType: !441, size: 64, offset: 22016)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2040, file: !1684, line: 1506, baseType: !440, size: 64, offset: 22080)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2040, file: !1684, line: 1507, baseType: !441, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2040, file: !1684, line: 1508, baseType: !441, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2040, file: !1684, line: 1509, baseType: !441, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2040, file: !1684, line: 1510, baseType: !710, size: 128, align: 64, offset: 22208)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2040, file: !1684, line: 1511, baseType: !109, size: 32, offset: 22336)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2040, file: !1684, line: 1515, baseType: !3021, size: 64, offset: 22400)
!3021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !705, line: 56, size: 64, elements: !3022)
!3022 = !{!3023}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3021, file: !705, line: 57, baseType: !708, size: 64)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2040, file: !1684, line: 1518, baseType: !3021, size: 64, offset: 22464)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2040, file: !1684, line: 1528, baseType: !710, size: 128, align: 64, offset: 22528)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2040, file: !1684, line: 1552, baseType: !3027, size: 35328, offset: 23040)
!3027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3028, line: 430, size: 35328, elements: !3029)
!3028 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3029 = !{!3030, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3059, !3060, !3061, !3062, !3063, !3064, !3067, !3068, !3069, !3070}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3027, file: !3028, line: 432, baseType: !3031, size: 192)
!3031 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3032, size: 192, elements: !287)
!3032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3033, line: 16, size: 64, elements: !3034)
!3033 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3034 = !{!3035, !3036, !3037, !3038, !3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047}
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3032, file: !3033, line: 17, baseType: !254, size: 16)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3032, file: !3033, line: 18, baseType: !254, size: 16, offset: 16)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3032, file: !3033, line: 19, baseType: !254, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3032, file: !3033, line: 19, baseType: !254, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3032, file: !3033, line: 19, baseType: !254, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3032, file: !3033, line: 19, baseType: !254, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3032, file: !3033, line: 19, baseType: !254, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3032, file: !3033, line: 20, baseType: !254, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3032, file: !3033, line: 20, baseType: !254, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3032, file: !3033, line: 20, baseType: !254, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3032, file: !3033, line: 20, baseType: !254, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3032, file: !3033, line: 20, baseType: !254, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3032, file: !3033, line: 20, baseType: !254, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3027, file: !3028, line: 436, baseType: !336, size: 64, offset: 192)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3027, file: !3028, line: 440, baseType: !256, size: 16, offset: 256)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3027, file: !3028, line: 441, baseType: !256, size: 16, offset: 272)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3027, file: !3028, line: 442, baseType: !256, size: 16, offset: 288)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3027, file: !3028, line: 443, baseType: !256, size: 16, offset: 304)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3027, file: !3028, line: 447, baseType: !336, size: 64, offset: 320)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3027, file: !3028, line: 448, baseType: !336, size: 64, offset: 384)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3027, file: !3028, line: 459, baseType: !3056, size: 256, offset: 448)
!3056 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3057, size: 256, elements: !764)
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3028, line: 428, flags: DIFlagFwdDecl)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3027, file: !3028, line: 461, baseType: !336, size: 64, offset: 704)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3027, file: !3028, line: 463, baseType: !336, size: 64, offset: 768)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3027, file: !3028, line: 465, baseType: !336, size: 64, offset: 832)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3027, file: !3028, line: 466, baseType: !336, size: 64, offset: 896)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3027, file: !3028, line: 467, baseType: !336, size: 64, offset: 960)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3027, file: !3028, line: 473, baseType: !3065, size: 64, offset: 1024)
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3066 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3028, line: 10, flags: DIFlagFwdDecl)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3027, file: !3028, line: 480, baseType: !336, size: 64, offset: 1088)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3027, file: !3028, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3027, file: !3028, line: 491, baseType: !436, size: 32, offset: 1184)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3027, file: !3028, line: 501, baseType: !3071, size: 33792, offset: 1536)
!3071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3072, line: 448, size: 33792, elements: !3073)
!3072 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3073 = !{!3074, !3075, !3076, !3238, !3239, !3245, !3246}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3071, file: !3072, line: 461, baseType: !7, size: 32)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3071, file: !3072, line: 468, baseType: !336, size: 64, offset: 64)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3071, file: !3072, line: 476, baseType: !3077, size: 64, offset: 128)
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3072, line: 356, size: 33280, align: 512, elements: !3079)
!3079 = !{!3080, !3081, !3082, !3083, !3084, !3085, !3086, !3087, !3088, !3089}
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3078, file: !3072, line: 358, baseType: !7, size: 32)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3078, file: !3072, line: 361, baseType: !7, size: 32, offset: 32)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3078, file: !3072, line: 364, baseType: !440, size: 64, offset: 64)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3078, file: !3072, line: 367, baseType: !440, size: 64, offset: 128)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3078, file: !3072, line: 370, baseType: !440, size: 64, offset: 192)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3078, file: !3072, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3078, file: !3072, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3078, file: !3072, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3078, file: !3072, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3078, file: !3072, line: 397, baseType: !3090, size: 32768, offset: 512)
!3090 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3072, line: 348, size: 32768, elements: !3091)
!3091 = !{!3092, !3107, !3144, !3221, !3234}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3090, file: !3072, line: 349, baseType: !3093, size: 896)
!3093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3072, line: 12, size: 896, elements: !3094)
!3094 = !{!3095, !3096, !3097, !3098, !3099, !3100, !3101, !3102, !3106}
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3093, file: !3072, line: 13, baseType: !436, size: 32)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3093, file: !3072, line: 14, baseType: !436, size: 32, offset: 32)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3093, file: !3072, line: 15, baseType: !436, size: 32, offset: 64)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3093, file: !3072, line: 16, baseType: !436, size: 32, offset: 96)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3093, file: !3072, line: 17, baseType: !436, size: 32, offset: 128)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3093, file: !3072, line: 18, baseType: !436, size: 32, offset: 160)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3093, file: !3072, line: 19, baseType: !436, size: 32, offset: 192)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3093, file: !3072, line: 22, baseType: !3103, size: 640, offset: 224)
!3103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !436, size: 640, elements: !3104)
!3104 = !{!3105}
!3105 = !DISubrange(count: 20)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3093, file: !3072, line: 25, baseType: !436, size: 32, offset: 864)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3090, file: !3072, line: 350, baseType: !3108, size: 4096, align: 128)
!3108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3072, line: 34, size: 4096, align: 128, elements: !3109)
!3109 = !{!3110, !3111, !3112, !3113, !3114, !3129, !3130, !3131, !3133, !3135, !3139}
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3108, file: !3072, line: 35, baseType: !254, size: 16)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3108, file: !3072, line: 36, baseType: !254, size: 16, offset: 16)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3108, file: !3072, line: 37, baseType: !254, size: 16, offset: 32)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3108, file: !3072, line: 38, baseType: !254, size: 16, offset: 48)
!3114 = !DIDerivedType(tag: DW_TAG_member, scope: !3108, file: !3072, line: 39, baseType: !3115, size: 128, offset: 64)
!3115 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3108, file: !3072, line: 39, size: 128, elements: !3116)
!3116 = !{!3117, !3122}
!3117 = !DIDerivedType(tag: DW_TAG_member, scope: !3115, file: !3072, line: 40, baseType: !3118, size: 128)
!3118 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3115, file: !3072, line: 40, size: 128, elements: !3119)
!3119 = !{!3120, !3121}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3118, file: !3072, line: 41, baseType: !440, size: 64)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3118, file: !3072, line: 42, baseType: !440, size: 64, offset: 64)
!3122 = !DIDerivedType(tag: DW_TAG_member, scope: !3115, file: !3072, line: 44, baseType: !3123, size: 128)
!3123 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3115, file: !3072, line: 44, size: 128, elements: !3124)
!3124 = !{!3125, !3126, !3127, !3128}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3123, file: !3072, line: 45, baseType: !436, size: 32)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3123, file: !3072, line: 46, baseType: !436, size: 32, offset: 32)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3123, file: !3072, line: 47, baseType: !436, size: 32, offset: 64)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3123, file: !3072, line: 48, baseType: !436, size: 32, offset: 96)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3108, file: !3072, line: 51, baseType: !436, size: 32, offset: 192)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3108, file: !3072, line: 52, baseType: !436, size: 32, offset: 224)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3108, file: !3072, line: 55, baseType: !3132, size: 1024, offset: 256)
!3132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !436, size: 1024, elements: !449)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3108, file: !3072, line: 58, baseType: !3134, size: 2048, offset: 1280)
!3134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !436, size: 2048, elements: !291)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3108, file: !3072, line: 60, baseType: !3136, size: 384, offset: 3328)
!3136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !436, size: 384, elements: !3137)
!3137 = !{!3138}
!3138 = !DISubrange(count: 12)
!3139 = !DIDerivedType(tag: DW_TAG_member, scope: !3108, file: !3072, line: 62, baseType: !3140, size: 384, offset: 3712)
!3140 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3108, file: !3072, line: 62, size: 384, elements: !3141)
!3141 = !{!3142, !3143}
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3140, file: !3072, line: 63, baseType: !3136, size: 384)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3140, file: !3072, line: 64, baseType: !3136, size: 384)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3090, file: !3072, line: 351, baseType: !3145, size: 1088)
!3145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3072, line: 79, size: 1088, elements: !3146)
!3146 = !{!3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3220}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3145, file: !3072, line: 80, baseType: !436, size: 32)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3145, file: !3072, line: 81, baseType: !436, size: 32, offset: 32)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3145, file: !3072, line: 82, baseType: !436, size: 32, offset: 64)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3145, file: !3072, line: 83, baseType: !436, size: 32, offset: 96)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3145, file: !3072, line: 84, baseType: !436, size: 32, offset: 128)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3145, file: !3072, line: 85, baseType: !436, size: 32, offset: 160)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3145, file: !3072, line: 86, baseType: !436, size: 32, offset: 192)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3145, file: !3072, line: 88, baseType: !3103, size: 640, offset: 224)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3145, file: !3072, line: 89, baseType: !244, size: 8, offset: 864)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3145, file: !3072, line: 90, baseType: !244, size: 8, offset: 872)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3145, file: !3072, line: 91, baseType: !244, size: 8, offset: 880)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3145, file: !3072, line: 92, baseType: !244, size: 8, offset: 888)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3145, file: !3072, line: 93, baseType: !244, size: 8, offset: 896)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3145, file: !3072, line: 94, baseType: !244, size: 8, offset: 904)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3145, file: !3072, line: 95, baseType: !3162, size: 64, offset: 960)
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3163, size: 64)
!3163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3164, line: 11, size: 128, elements: !3165)
!3164 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3165 = !{!3166, !3167}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3163, file: !3164, line: 12, baseType: !322, size: 64)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3163, file: !3164, line: 13, baseType: !3168, size: 64, offset: 64)
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3170, line: 103, size: 1344, elements: !3171)
!3170 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3171 = !{!3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3186, !3187, !3188, !3189, !3200, !3201, !3202}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3169, file: !3170, line: 109, baseType: !336, size: 64)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3169, file: !3170, line: 110, baseType: !336, size: 64, offset: 64)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3169, file: !3170, line: 111, baseType: !336, size: 64, offset: 128)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3169, file: !3170, line: 112, baseType: !336, size: 64, offset: 192)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3169, file: !3170, line: 113, baseType: !336, size: 64, offset: 256)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3169, file: !3170, line: 114, baseType: !336, size: 64, offset: 320)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3169, file: !3170, line: 117, baseType: !336, size: 64, offset: 384)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3169, file: !3170, line: 118, baseType: !336, size: 64, offset: 448)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3169, file: !3170, line: 119, baseType: !336, size: 64, offset: 512)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3169, file: !3170, line: 120, baseType: !336, size: 64, offset: 576)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3169, file: !3170, line: 121, baseType: !336, size: 64, offset: 640)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3169, file: !3170, line: 122, baseType: !336, size: 64, offset: 704)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3169, file: !3170, line: 123, baseType: !336, size: 64, offset: 768)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3169, file: !3170, line: 124, baseType: !336, size: 64, offset: 832)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3169, file: !3170, line: 125, baseType: !336, size: 64, offset: 896)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3169, file: !3170, line: 139, baseType: !336, size: 64, offset: 960)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3169, file: !3170, line: 142, baseType: !336, size: 64, offset: 1024)
!3189 = !DIDerivedType(tag: DW_TAG_member, scope: !3169, file: !3170, line: 144, baseType: !3190, size: 64, offset: 1088)
!3190 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3169, file: !3170, line: 144, size: 64, elements: !3191)
!3191 = !{!3192, !3193, !3194}
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3190, file: !3170, line: 146, baseType: !254, size: 16)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3190, file: !3170, line: 148, baseType: !440, size: 64)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3190, file: !3170, line: 150, baseType: !3195, size: 64)
!3195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3170, line: 59, size: 64, elements: !3196)
!3196 = !{!3197, !3198, !3199}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3195, file: !3170, line: 61, baseType: !440, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3195, file: !3170, line: 63, baseType: !440, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3195, file: !3170, line: 65, baseType: !440, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3169, file: !3170, line: 153, baseType: !336, size: 64, offset: 1152)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3169, file: !3170, line: 154, baseType: !336, size: 64, offset: 1216)
!3202 = !DIDerivedType(tag: DW_TAG_member, scope: !3169, file: !3170, line: 156, baseType: !3203, size: 64, offset: 1280)
!3203 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3169, file: !3170, line: 156, size: 64, elements: !3204)
!3204 = !{!3205, !3206, !3207}
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3203, file: !3170, line: 158, baseType: !254, size: 16)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3203, file: !3170, line: 160, baseType: !440, size: 64)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3203, file: !3170, line: 162, baseType: !3208, size: 64)
!3208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3170, line: 69, size: 64, elements: !3209)
!3209 = !{!3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219}
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3208, file: !3170, line: 71, baseType: !440, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3208, file: !3170, line: 73, baseType: !440, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3208, file: !3170, line: 75, baseType: !440, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3208, file: !3170, line: 77, baseType: !440, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3208, file: !3170, line: 80, baseType: !440, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3208, file: !3170, line: 83, baseType: !440, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3208, file: !3170, line: 86, baseType: !440, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3208, file: !3170, line: 88, baseType: !440, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3208, file: !3170, line: 93, baseType: !440, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3208, file: !3170, line: 100, baseType: !440, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3145, file: !3072, line: 96, baseType: !436, size: 32, offset: 1024)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3090, file: !3072, line: 352, baseType: !3222, size: 4608, align: 512)
!3222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3072, line: 333, size: 4608, align: 512, elements: !3223)
!3223 = !{!3224, !3225, !3232}
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3222, file: !3072, line: 334, baseType: !3108, size: 4096, align: 128)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3222, file: !3072, line: 335, baseType: !3226, size: 512, offset: 4096)
!3226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3072, line: 312, size: 512, elements: !3227)
!3227 = !{!3228, !3229, !3230}
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3226, file: !3072, line: 313, baseType: !440, size: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3226, file: !3072, line: 314, baseType: !440, size: 64, offset: 64)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3226, file: !3072, line: 315, baseType: !3231, size: 384, offset: 128)
!3231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !440, size: 384, elements: !886)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3222, file: !3072, line: 336, baseType: !3233, offset: 4608)
!3233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, elements: !783)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3090, file: !3072, line: 353, baseType: !3235, size: 32768)
!3235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 32768, elements: !3236)
!3236 = !{!3237}
!3237 = !DISubrange(count: 4096)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3071, file: !3072, line: 484, baseType: !3077, size: 64, offset: 192)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3071, file: !3072, line: 491, baseType: !3240, size: 128, offset: 256)
!3240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3072, line: 404, size: 128, elements: !3241)
!3241 = !{!3242, !3243, !3244}
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3240, file: !3072, line: 424, baseType: !440, size: 64)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3240, file: !3072, line: 432, baseType: !7, size: 32, offset: 64)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3240, file: !3072, line: 440, baseType: !7, size: 32, offset: 96)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3071, file: !3072, line: 498, baseType: !3240, size: 128, offset: 384)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3071, file: !3072, line: 508, baseType: !3078, size: 33280, align: 512, offset: 512)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2021, file: !2022, line: 16, baseType: !768, size: 192, offset: 512)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2021, file: !2022, line: 17, baseType: !236, size: 32, offset: 704)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !519, file: !14, line: 1240, baseType: !358, size: 64, offset: 6912)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !519, file: !14, line: 1243, baseType: !436, size: 32, offset: 6976)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !519, file: !14, line: 1245, baseType: !856, size: 64, offset: 7040)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !519, file: !14, line: 1246, baseType: !856, size: 64, offset: 7104)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !519, file: !14, line: 1248, baseType: !437, size: 32, offset: 7168)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !519, file: !14, line: 1249, baseType: !3255, size: 64, offset: 7232)
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3256, size: 64)
!3256 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !519, file: !14, line: 1252, baseType: !3258, size: 256, offset: 7296)
!3258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 256, elements: !449)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !519, file: !14, line: 1253, baseType: !3260, size: 128, offset: 7552)
!3260 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3261, line: 21, baseType: !3262)
!3261 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3262 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3261, line: 19, size: 128, elements: !3263)
!3263 = !{!3264}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3262, file: !3261, line: 20, baseType: !3265, size: 128)
!3265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 128, elements: !2466)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !519, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !519, file: !14, line: 1261, baseType: !652, size: 256, offset: 7744)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !519, file: !14, line: 1267, baseType: !205, size: 64, offset: 8000)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !519, file: !14, line: 1269, baseType: !465, size: 64, offset: 8064)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !519, file: !14, line: 1271, baseType: !3271, size: 448, offset: 8128)
!3271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1801, line: 63, size: 448, elements: !3272)
!3272 = !{!3273, !3278, !3279, !3280, !3281, !3282, !3283}
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3271, file: !1801, line: 64, baseType: !3274, size: 64)
!3274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3275, size: 64)
!3275 = !DISubroutineType(types: !3276)
!3276 = !{!336, !3277, !1799}
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3271, size: 64)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3271, file: !1801, line: 66, baseType: !3274, size: 64, offset: 64)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3271, file: !1801, line: 69, baseType: !322, size: 64, offset: 128)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3271, file: !1801, line: 70, baseType: !109, size: 32, offset: 192)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3271, file: !1801, line: 71, baseType: !7, size: 32, offset: 224)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3271, file: !1801, line: 74, baseType: !186, size: 128, offset: 256)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3271, file: !1801, line: 85, baseType: !3284, size: 64, offset: 384)
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !519, file: !14, line: 1274, baseType: !656, size: 64, offset: 8576)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !519, file: !14, line: 1280, baseType: !656, size: 64, offset: 8640)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !519, file: !14, line: 1283, baseType: !109, size: 32, offset: 8704)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !519, file: !14, line: 1286, baseType: !1733, size: 32, offset: 8736)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !519, file: !14, line: 1289, baseType: !3290, size: 64, offset: 8768)
!3290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3291, size: 64)
!3291 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1382, line: 18, flags: DIFlagFwdDecl)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !519, file: !14, line: 1290, baseType: !559, size: 64, offset: 8832)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !519, file: !14, line: 1297, baseType: !982, size: 64, offset: 8896)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !519, file: !14, line: 1304, baseType: !3295, size: 64, offset: 8960)
!3295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3296, line: 49, size: 64, elements: !3297)
!3296 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3297 = !{!3298}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3295, file: !3296, line: 50, baseType: !3299, size: 64)
!3299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3300, size: 64)
!3300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3296, line: 41, size: 512, align: 512, elements: !3301)
!3301 = !{!3302, !3303, !3308}
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3300, file: !3296, line: 43, baseType: !216, size: 32)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3300, file: !3296, line: 45, baseType: !3304, size: 192, offset: 64)
!3304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3296, line: 29, size: 192, elements: !3305)
!3305 = !{!3306, !3307}
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3304, file: !3296, line: 30, baseType: !186, size: 128)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3304, file: !3296, line: 32, baseType: !322, size: 64, offset: 128)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3300, file: !3296, line: 46, baseType: !322, size: 64, offset: 256)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !519, file: !14, line: 1305, baseType: !3295, size: 64, offset: 9024)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !519, file: !14, line: 1306, baseType: !710, size: 128, align: 64, offset: 9088)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !519, file: !14, line: 1307, baseType: !1381, size: 256, offset: 9216)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !519, file: !14, line: 1309, baseType: !652, size: 256, offset: 9472)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !519, file: !14, line: 1314, baseType: !109, size: 32, offset: 9728)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !519, file: !14, line: 1317, baseType: !216, size: 32, align: 512, offset: 10240)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !519, file: !14, line: 1318, baseType: !186, size: 128, offset: 10304)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !519, file: !14, line: 1320, baseType: !216, size: 32, offset: 10432)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !519, file: !14, line: 1321, baseType: !186, size: 128, offset: 10496)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !513, file: !514, line: 73, baseType: !109, size: 32, offset: 128)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !513, file: !514, line: 74, baseType: !3320, size: 64, offset: 192)
!3320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3321, size: 64)
!3321 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !807, line: 42, flags: DIFlagFwdDecl)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !467, file: !404, line: 141, baseType: !3324, size: 64, offset: 704)
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3325 = !DISubroutineType(types: !3326)
!3326 = !{!109, !1861, !899}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !467, file: !404, line: 142, baseType: !3328, size: 64, offset: 768)
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3329, size: 64)
!3329 = !DISubroutineType(types: !3330)
!3330 = !{!402, !402, !3331}
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64)
!3332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !368)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !403, file: !404, line: 96, baseType: !518, size: 64, offset: 832)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !403, file: !404, line: 97, baseType: !336, size: 64, offset: 896)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !403, file: !404, line: 98, baseType: !358, size: 64, offset: 960)
!3336 = !DIDerivedType(tag: DW_TAG_member, scope: !403, file: !404, line: 100, baseType: !3337, size: 128, offset: 1024)
!3337 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !403, file: !404, line: 100, size: 128, elements: !3338)
!3338 = !{!3339, !3340}
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3337, file: !404, line: 101, baseType: !186, size: 128)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3337, file: !404, line: 102, baseType: !3341, size: 64)
!3341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !403, file: !404, line: 104, baseType: !186, size: 128, offset: 1152)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !403, file: !404, line: 105, baseType: !186, size: 128, offset: 1280)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !403, file: !404, line: 113, baseType: !3345, size: 128, offset: 1408)
!3345 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !403, file: !404, line: 109, size: 128, elements: !3346)
!3346 = !{!3347, !3348, !3349}
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3345, file: !404, line: 110, baseType: !563, size: 128)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3345, file: !404, line: 111, baseType: !418, size: 128)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3345, file: !404, line: 112, baseType: !710, size: 128, align: 64)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !396, file: !14, line: 1968, baseType: !3351, size: 64, offset: 64)
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3352, size: 64)
!3352 = !DISubroutineType(types: !3353)
!3353 = !{!205, !402, !367, !3354}
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3356, line: 10, size: 128, elements: !3357)
!3356 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3357 = !{!3358, !3362}
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3355, file: !3356, line: 11, baseType: !3359, size: 64)
!3359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3360, size: 64)
!3360 = !DISubroutineType(types: !3361)
!3361 = !{null, !358}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3355, file: !3356, line: 12, baseType: !358, size: 64, offset: 64)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !396, file: !14, line: 1969, baseType: !3364, size: 64, offset: 128)
!3364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3365, size: 64)
!3365 = !DISubroutineType(types: !3366)
!3366 = !{!109, !3320, !367, !109}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !396, file: !14, line: 1970, baseType: !3368, size: 64, offset: 192)
!3368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3369, size: 64)
!3369 = !DISubroutineType(types: !3370)
!3370 = !{!390, !367, !109, !899}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !396, file: !14, line: 1972, baseType: !3372, size: 64, offset: 256)
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3373, size: 64)
!3373 = !DISubroutineType(types: !3374)
!3374 = !{!109, !402, !286, !109}
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !396, file: !14, line: 1974, baseType: !3376, size: 64, offset: 320)
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3377, size: 64)
!3377 = !DISubroutineType(types: !3378)
!3378 = !{!109, !3320, !367, !402, !328, !899}
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !396, file: !14, line: 1976, baseType: !3380, size: 64, offset: 384)
!3380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3381, size: 64)
!3381 = !DISubroutineType(types: !3382)
!3382 = !{!109, !402, !367, !402}
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !396, file: !14, line: 1977, baseType: !3384, size: 64, offset: 448)
!3384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3385, size: 64)
!3385 = !DISubroutineType(types: !3386)
!3386 = !{!109, !367, !402}
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !396, file: !14, line: 1978, baseType: !3388, size: 64, offset: 512)
!3388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3389, size: 64)
!3389 = !DISubroutineType(types: !3390)
!3390 = !{!109, !3320, !367, !402, !205}
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !396, file: !14, line: 1980, baseType: !3392, size: 64, offset: 576)
!3392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3393, size: 64)
!3393 = !DISubroutineType(types: !3394)
!3394 = !{!109, !3320, !367, !402, !328}
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !396, file: !14, line: 1982, baseType: !3384, size: 64, offset: 640)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !396, file: !14, line: 1983, baseType: !3397, size: 64, offset: 704)
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3398, size: 64)
!3398 = !DISubroutineType(types: !3399)
!3399 = !{!109, !3320, !367, !402, !328, !523}
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !396, file: !14, line: 1985, baseType: !3401, size: 64, offset: 768)
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3402, size: 64)
!3402 = !DISubroutineType(types: !3403)
!3403 = !{!109, !3320, !367, !402, !367, !402, !7}
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !396, file: !14, line: 1987, baseType: !3405, size: 64, offset: 832)
!3405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3406, size: 64)
!3406 = !DISubroutineType(types: !3407)
!3407 = !{!109, !3320, !402, !3408}
!3408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3409, size: 64)
!3409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3410)
!3410 = !{!3411, !3412, !3413, !3423, !3432, !3433, !3438, !3439, !3440}
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3409, file: !14, line: 227, baseType: !7, size: 32)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3409, file: !14, line: 228, baseType: !328, size: 16, offset: 32)
!3413 = !DIDerivedType(tag: DW_TAG_member, scope: !3409, file: !14, line: 241, baseType: !3414, size: 32, offset: 64)
!3414 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3409, file: !14, line: 241, size: 32, elements: !3415)
!3415 = !{!3416, !3417}
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3414, file: !14, line: 242, baseType: !373, size: 32)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3414, file: !14, line: 243, baseType: !3418, size: 32)
!3418 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3419, line: 16, baseType: !3420)
!3419 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3420 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3419, line: 14, size: 32, elements: !3421)
!3421 = !{!3422}
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3420, file: !3419, line: 15, baseType: !378, size: 32)
!3423 = !DIDerivedType(tag: DW_TAG_member, scope: !3409, file: !14, line: 245, baseType: !3424, size: 32, offset: 96)
!3424 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3409, file: !14, line: 245, size: 32, elements: !3425)
!3425 = !{!3426, !3427}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3424, file: !14, line: 246, baseType: !382, size: 32)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3424, file: !14, line: 247, baseType: !3428, size: 32)
!3428 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3419, line: 20, baseType: !3429)
!3429 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3419, line: 18, size: 32, elements: !3430)
!3430 = !{!3431}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3429, file: !3419, line: 19, baseType: !386, size: 32)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3409, file: !14, line: 249, baseType: !528, size: 64, offset: 128)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3409, file: !14, line: 250, baseType: !3434, size: 128, offset: 192)
!3434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !857, line: 13, size: 128, elements: !3435)
!3435 = !{!3436, !3437}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3434, file: !857, line: 14, baseType: !856, size: 64)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3434, file: !857, line: 15, baseType: !322, size: 64, offset: 64)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3409, file: !14, line: 251, baseType: !3434, size: 128, offset: 320)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3409, file: !14, line: 252, baseType: !3434, size: 128, offset: 448)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3409, file: !14, line: 259, baseType: !1027, size: 64, offset: 576)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !396, file: !14, line: 1988, baseType: !3442, size: 64, offset: 896)
!3442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3443, size: 64)
!3443 = !DISubroutineType(types: !3444)
!3444 = !{!109, !3320, !1861, !3445, !436, !7}
!3445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3446, size: 64)
!3446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3447, line: 22, size: 1280, elements: !3448)
!3447 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3448 = !{!3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469}
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3446, file: !3447, line: 23, baseType: !436, size: 32)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3446, file: !3447, line: 24, baseType: !328, size: 16, offset: 32)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3446, file: !3447, line: 25, baseType: !7, size: 32, offset: 64)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3446, file: !3447, line: 26, baseType: !864, size: 32, offset: 96)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3446, file: !3447, line: 27, baseType: !440, size: 64, offset: 128)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3446, file: !3447, line: 28, baseType: !440, size: 64, offset: 192)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3446, file: !3447, line: 41, baseType: !440, size: 64, offset: 256)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3446, file: !3447, line: 42, baseType: !523, size: 32, offset: 320)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3446, file: !3447, line: 43, baseType: !523, size: 32, offset: 352)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3446, file: !3447, line: 44, baseType: !373, size: 32, offset: 384)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3446, file: !3447, line: 45, baseType: !382, size: 32, offset: 416)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3446, file: !3447, line: 46, baseType: !528, size: 64, offset: 448)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3446, file: !3447, line: 47, baseType: !3434, size: 128, offset: 512)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3446, file: !3447, line: 48, baseType: !3434, size: 128, offset: 640)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3446, file: !3447, line: 49, baseType: !3434, size: 128, offset: 768)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3446, file: !3447, line: 50, baseType: !3434, size: 128, offset: 896)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3446, file: !3447, line: 51, baseType: !440, size: 64, offset: 1024)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3446, file: !3447, line: 52, baseType: !440, size: 64, offset: 1088)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3446, file: !3447, line: 53, baseType: !436, size: 32, offset: 1152)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3446, file: !3447, line: 54, baseType: !436, size: 32, offset: 1184)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3446, file: !3447, line: 55, baseType: !440, size: 64, offset: 1216)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !396, file: !14, line: 1990, baseType: !3471, size: 64, offset: 960)
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!3472 = !DISubroutineType(types: !3473)
!3473 = !{!318, !402, !286, !333}
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !396, file: !14, line: 1991, baseType: !3475, size: 64, offset: 1024)
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3476, size: 64)
!3476 = !DISubroutineType(types: !3477)
!3477 = !{!109, !367, !3478, !440, !440}
!3478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3479, size: 64)
!3479 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !396, file: !14, line: 1993, baseType: !3481, size: 64, offset: 1088)
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = !DISubroutineType(types: !3483)
!3483 = !{!109, !367, !109}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !396, file: !14, line: 1994, baseType: !3485, size: 64, offset: 1152)
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3486, size: 64)
!3486 = !DISubroutineType(types: !3487)
!3487 = !{!109, !367, !402, !1027, !7, !328}
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !396, file: !14, line: 1997, baseType: !3489, size: 64, offset: 1216)
!3489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3490, size: 64)
!3490 = !DISubroutineType(types: !3491)
!3491 = !{!109, !3320, !367, !1027, !328}
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !396, file: !14, line: 1999, baseType: !3493, size: 64, offset: 1280)
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3494, size: 64)
!3494 = !DISubroutineType(types: !3495)
!3495 = !{!390, !3320, !402, !109}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !396, file: !14, line: 2001, baseType: !3497, size: 64, offset: 1344)
!3497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3498, size: 64)
!3498 = !DISubroutineType(types: !3499)
!3499 = !{!109, !3320, !402, !390, !109}
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !396, file: !14, line: 2003, baseType: !3501, size: 64, offset: 1408)
!3501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3502, size: 64)
!3502 = !DISubroutineType(types: !3503)
!3503 = !{!109, !3320, !402, !3504}
!3504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3505, size: 64)
!3505 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !396, file: !14, line: 2005, baseType: !3507, size: 64, offset: 1472)
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3508, size: 64)
!3508 = !DISubroutineType(types: !3509)
!3509 = !{!109, !402, !3504}
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !396, file: !14, line: 2006, baseType: !3511, size: 64, offset: 1536)
!3511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3512, size: 64)
!3512 = !DISubroutineType(types: !3513)
!3513 = !{!3514, !367}
!3514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3515, size: 64)
!3515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !3516)
!3516 = !{!3517, !3524}
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3515, file: !14, line: 3193, baseType: !3518, size: 128)
!3518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3519, line: 296, size: 128, elements: !3520)
!3519 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3520 = !{!3521, !3522, !3523}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3518, file: !3519, line: 297, baseType: !216, size: 32)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3518, file: !3519, line: 299, baseType: !1490, size: 32, offset: 32)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3518, file: !3519, line: 300, baseType: !358, size: 64, offset: 64)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3515, file: !14, line: 3194, baseType: !436, size: 32, offset: 128)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !368, file: !14, line: 655, baseType: !518, size: 64, offset: 448)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !368, file: !14, line: 656, baseType: !363, size: 64, offset: 512)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !368, file: !14, line: 659, baseType: !358, size: 64, offset: 576)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !368, file: !14, line: 663, baseType: !336, size: 64, offset: 640)
!3529 = !DIDerivedType(tag: DW_TAG_member, scope: !368, file: !14, line: 671, baseType: !3530, size: 32, offset: 704)
!3530 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !368, file: !14, line: 671, size: 32, elements: !3531)
!3531 = !{!3532, !3534}
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3530, file: !14, line: 672, baseType: !3533, size: 32)
!3533 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3530, file: !14, line: 673, baseType: !7, size: 32)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !368, file: !14, line: 675, baseType: !523, size: 32, offset: 736)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !368, file: !14, line: 676, baseType: !528, size: 64, offset: 768)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !368, file: !14, line: 677, baseType: !3434, size: 128, offset: 832)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !368, file: !14, line: 678, baseType: !3434, size: 128, offset: 960)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !368, file: !14, line: 679, baseType: !3434, size: 128, offset: 1088)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !368, file: !14, line: 680, baseType: !216, size: 32, offset: 1216)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !368, file: !14, line: 681, baseType: !256, size: 16, offset: 1248)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !368, file: !14, line: 682, baseType: !244, size: 8, offset: 1264)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !368, file: !14, line: 683, baseType: !244, size: 8, offset: 1272)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !368, file: !14, line: 684, baseType: !1934, size: 64, offset: 1280)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !368, file: !14, line: 691, baseType: !336, size: 64, offset: 1344)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !368, file: !14, line: 692, baseType: !840, size: 320, offset: 1408)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !368, file: !14, line: 694, baseType: !336, size: 64, offset: 1728)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !368, file: !14, line: 695, baseType: !336, size: 64, offset: 1792)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !368, file: !14, line: 697, baseType: !563, size: 128, offset: 1856)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !368, file: !14, line: 698, baseType: !186, size: 128, offset: 1984)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !368, file: !14, line: 707, baseType: !186, size: 128, offset: 2112)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !368, file: !14, line: 708, baseType: !186, size: 128, offset: 2240)
!3553 = !DIDerivedType(tag: DW_TAG_member, scope: !368, file: !14, line: 709, baseType: !3554, size: 128, offset: 2368)
!3554 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !368, file: !14, line: 709, size: 128, elements: !3555)
!3555 = !{!3556, !3557}
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3554, file: !14, line: 710, baseType: !559, size: 64)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3554, file: !14, line: 711, baseType: !710, size: 128, align: 64)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !368, file: !14, line: 713, baseType: !658, size: 64, offset: 2496)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !368, file: !14, line: 714, baseType: !658, size: 64, offset: 2560)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !368, file: !14, line: 715, baseType: !236, size: 32, offset: 2624)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !368, file: !14, line: 716, baseType: !236, size: 32, offset: 2656)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !368, file: !14, line: 717, baseType: !236, size: 32, offset: 2688)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !368, file: !14, line: 719, baseType: !236, size: 32, offset: 2720)
!3564 = !DIDerivedType(tag: DW_TAG_member, scope: !368, file: !14, line: 721, baseType: !3565, size: 64, offset: 2752)
!3565 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !368, file: !14, line: 721, size: 64, elements: !3566)
!3566 = !{!3567, !3568}
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3565, file: !14, line: 722, baseType: !1018, size: 64)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3565, file: !14, line: 723, baseType: !590, size: 64)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !368, file: !14, line: 725, baseType: !3570, size: 64, offset: 2816)
!3570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3571, size: 64)
!3571 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !368, file: !14, line: 726, baseType: !364, size: 1536, align: 64, offset: 2880)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !368, file: !14, line: 727, baseType: !186, size: 128, offset: 4416)
!3574 = !DIDerivedType(tag: DW_TAG_member, scope: !368, file: !14, line: 728, baseType: !3575, size: 64, offset: 4544)
!3575 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !368, file: !14, line: 728, size: 64, elements: !3576)
!3576 = !{!3577, !3578, !3581, !3582}
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3575, file: !14, line: 729, baseType: !1682, size: 64)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3575, file: !14, line: 730, baseType: !3579, size: 64)
!3579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3580, size: 64)
!3580 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3575, file: !14, line: 731, baseType: !286, size: 64)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3575, file: !14, line: 732, baseType: !7, size: 32)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !368, file: !14, line: 735, baseType: !437, size: 32, offset: 4608)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !368, file: !14, line: 738, baseType: !437, size: 32, offset: 4640)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !368, file: !14, line: 739, baseType: !3255, size: 64, offset: 4672)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !368, file: !14, line: 750, baseType: !358, size: 64, offset: 4736)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !364, file: !14, line: 474, baseType: !3518, size: 128, offset: 64)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !364, file: !14, line: 475, baseType: !840, size: 320, offset: 192)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !364, file: !14, line: 476, baseType: !1490, size: 32, offset: 512)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !364, file: !14, line: 477, baseType: !236, size: 32, offset: 544)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !364, file: !14, line: 482, baseType: !2209, size: 128, offset: 576)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !364, file: !14, line: 483, baseType: !336, size: 64, offset: 704)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !364, file: !14, line: 484, baseType: !336, size: 64, offset: 768)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !364, file: !14, line: 485, baseType: !3595, size: 64, offset: 832)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3597)
!3597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !3598)
!3598 = !{!3599, !3603, !3607, !3611, !3615, !3631, !3635, !3639, !3644, !3648, !3652, !3656, !3657, !3661, !3665, !3669, !3674, !3678, !3685, !3686}
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3597, file: !14, line: 405, baseType: !3600, size: 64)
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3601, size: 64)
!3601 = !DISubroutineType(types: !3602)
!3602 = !{!109, !1200, !602}
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3597, file: !14, line: 406, baseType: !3604, size: 64, offset: 64)
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3605, size: 64)
!3605 = !DISubroutineType(types: !3606)
!3606 = !{!109, !1027, !1061}
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3597, file: !14, line: 409, baseType: !3608, size: 64, offset: 128)
!3608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3609, size: 64)
!3609 = !DISubroutineType(types: !3610)
!3610 = !{!109, !363, !602}
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3597, file: !14, line: 412, baseType: !3612, size: 64, offset: 192)
!3612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3613, size: 64)
!3613 = !DISubroutineType(types: !3614)
!3614 = !{!899, !363, !1061}
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3597, file: !14, line: 414, baseType: !3616, size: 64, offset: 256)
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 64)
!3617 = !DISubroutineType(types: !3618)
!3618 = !{null, !3619}
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3620, size: 64)
!3620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !1058, line: 1276, size: 448, elements: !3621)
!3621 = !{!3622, !3623, !3624, !3626, !3627, !3628, !3629, !3630}
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3620, file: !1058, line: 1277, baseType: !1027, size: 64)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3620, file: !1058, line: 1278, baseType: !363, size: 64, offset: 64)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !3620, file: !1058, line: 1279, baseType: !3625, size: 64, offset: 128)
!3625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !3620, file: !1058, line: 1281, baseType: !336, size: 64, offset: 192)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !3620, file: !1058, line: 1282, baseType: !7, size: 32, offset: 256)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !3620, file: !1058, line: 1283, baseType: !7, size: 32, offset: 288)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !3620, file: !1058, line: 1284, baseType: !899, size: 8, offset: 320)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !3620, file: !1058, line: 1285, baseType: !336, size: 64, offset: 384)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3597, file: !14, line: 416, baseType: !3632, size: 64, offset: 320)
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3633, size: 64)
!3633 = !DISubroutineType(types: !3634)
!3634 = !{!109, !1027, !363, !528, !7, !3004, !1698}
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3597, file: !14, line: 419, baseType: !3636, size: 64, offset: 384)
!3636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3637, size: 64)
!3637 = !DISubroutineType(types: !3638)
!3638 = !{!109, !1027, !363, !528, !7, !7, !1200, !358}
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3597, file: !14, line: 424, baseType: !3640, size: 64, offset: 448)
!3640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3641, size: 64)
!3641 = !DISubroutineType(types: !3642)
!3642 = !{!3643, !363, !3643}
!3643 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !187, line: 131, baseType: !440)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3597, file: !14, line: 425, baseType: !3645, size: 64, offset: 512)
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3646 = !DISubroutineType(types: !3647)
!3647 = !{null, !1061, !333, !333}
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3597, file: !14, line: 426, baseType: !3649, size: 64, offset: 576)
!3649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3650, size: 64)
!3650 = !DISubroutineType(types: !3651)
!3651 = !{!899, !1061, !1490}
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3597, file: !14, line: 427, baseType: !3653, size: 64, offset: 640)
!3653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3654, size: 64)
!3654 = !DISubroutineType(types: !3655)
!3655 = !{null, !1061}
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3597, file: !14, line: 428, baseType: !1037, size: 64, offset: 704)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3597, file: !14, line: 433, baseType: !3658, size: 64, offset: 768)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = !DISubroutineType(types: !3660)
!3660 = !{!109, !363, !1061, !1061, !74}
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3597, file: !14, line: 435, baseType: !3662, size: 64, offset: 832)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = !DISubroutineType(types: !3664)
!3664 = !{!109, !1061}
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3597, file: !14, line: 436, baseType: !3666, size: 64, offset: 896)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3667 = !DISubroutineType(types: !3668)
!3668 = !{!899, !1061, !333, !333}
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3597, file: !14, line: 438, baseType: !3670, size: 64, offset: 960)
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64)
!3671 = !DISubroutineType(types: !3672)
!3672 = !{null, !1061, !3673, !3673}
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3597, file: !14, line: 439, baseType: !3675, size: 64, offset: 1024)
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3676, size: 64)
!3676 = !DISubroutineType(types: !3677)
!3677 = !{!109, !363, !1200}
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3597, file: !14, line: 442, baseType: !3679, size: 64, offset: 1088)
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = !DISubroutineType(types: !3681)
!3681 = !{!109, !3682, !1027, !3684}
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3597, file: !14, line: 444, baseType: !1690, size: 64, offset: 1152)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3597, file: !14, line: 445, baseType: !3687, size: 64, offset: 1216)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DISubroutineType(types: !3689)
!3689 = !{!109, !1040, !1608}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !364, file: !14, line: 486, baseType: !336, size: 64, offset: 896)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !364, file: !14, line: 487, baseType: !840, size: 320, offset: 960)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !364, file: !14, line: 488, baseType: !1733, size: 32, offset: 1280)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !364, file: !14, line: 489, baseType: !216, size: 32, offset: 1312)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !364, file: !14, line: 490, baseType: !186, size: 128, offset: 1344)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !364, file: !14, line: 491, baseType: !358, size: 64, offset: 1472)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !353, file: !312, line: 180, baseType: !3697, size: 64, offset: 320)
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = !DISubroutineType(types: !3699)
!3699 = !{!318, !1027, !209, !352, !286, !528, !333}
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !353, file: !312, line: 182, baseType: !3697, size: 64, offset: 384)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !353, file: !312, line: 184, baseType: !3702, size: 64, offset: 448)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = !DISubroutineType(types: !3704)
!3704 = !{!109, !1027, !209, !352, !1214}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !341, file: !312, line: 90, baseType: !3706, size: 64, offset: 192)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !341, file: !312, line: 91, baseType: !3708, size: 64, offset: 256)
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !302, file: !202, line: 120, baseType: !3710, size: 64, offset: 192)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = !DISubroutineType(types: !3712)
!3712 = !{!3713, !269}
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3714 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3715)
!3715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !82, line: 39, size: 384, elements: !3716)
!3716 = !{!3717, !3718, !3722, !3726, !3732, !3736}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3715, file: !82, line: 40, baseType: !81, size: 32)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3715, file: !82, line: 41, baseType: !3719, size: 64, offset: 64)
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3720 = !DISubroutineType(types: !3721)
!3721 = !{!899}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3715, file: !82, line: 42, baseType: !3723, size: 64, offset: 128)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{!358}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3715, file: !82, line: 43, baseType: !3727, size: 64, offset: 192)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = !DISubroutineType(types: !3729)
!3729 = !{!1342, !3730}
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !82, line: 19, flags: DIFlagFwdDecl)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3715, file: !82, line: 44, baseType: !3733, size: 64, offset: 256)
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3734 = !DISubroutineType(types: !3735)
!3735 = !{!1342}
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3715, file: !82, line: 45, baseType: !3359, size: 64, offset: 320)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !302, file: !202, line: 121, baseType: !3738, size: 64, offset: 256)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = !DISubroutineType(types: !3740)
!3740 = !{!1342, !269}
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !302, file: !202, line: 122, baseType: !3742, size: 64, offset: 320)
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3743, size: 64)
!3743 = !DISubroutineType(types: !3744)
!3744 = !{null, !269, !3745, !3746}
!3745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!3746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !201, file: !202, line: 70, baseType: !3748, size: 64, offset: 384)
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3749, size: 64)
!3749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !543, line: 190, size: 1152, elements: !3750)
!3750 = !{!3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3830, !3831, !3832, !3833, !3834, !3837}
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3749, file: !543, line: 191, baseType: !236, size: 32)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3749, file: !543, line: 192, baseType: !236, size: 32, offset: 32)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3749, file: !543, line: 202, baseType: !3748, size: 64, offset: 64)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3749, file: !543, line: 203, baseType: !205, size: 64, offset: 128)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3749, file: !543, line: 205, baseType: !832, size: 192, align: 64, offset: 192)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3749, file: !543, line: 207, baseType: !1342, size: 64, offset: 384)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3749, file: !543, line: 208, baseType: !7, size: 32, offset: 448)
!3758 = !DIDerivedType(tag: DW_TAG_member, scope: !3749, file: !543, line: 209, baseType: !3759, size: 256, offset: 512)
!3759 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3749, file: !543, line: 209, size: 256, elements: !3760)
!3760 = !{!3761, !3770, !3774}
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3759, file: !543, line: 210, baseType: !3762, size: 256)
!3762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !543, line: 153, size: 256, elements: !3763)
!3763 = !{!3764, !3765, !3766, !3769}
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3762, file: !543, line: 154, baseType: !336, size: 64)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3762, file: !543, line: 156, baseType: !2212, size: 64, offset: 64)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3762, file: !543, line: 162, baseType: !3767, size: 64, offset: 128)
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3768, size: 64)
!3768 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !543, line: 162, flags: DIFlagFwdDecl)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3762, file: !543, line: 167, baseType: !336, size: 64, offset: 192)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3759, file: !543, line: 211, baseType: !3771, size: 64)
!3771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !543, line: 170, size: 64, elements: !3772)
!3772 = !{!3773}
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3771, file: !543, line: 171, baseType: !3748, size: 64)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3759, file: !543, line: 212, baseType: !3775, size: 256)
!3775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !543, line: 174, size: 256, elements: !3776)
!3776 = !{!3777, !3825, !3828, !3829}
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3775, file: !543, line: 175, baseType: !3778, size: 64)
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3780)
!3780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !543, line: 271, size: 768, elements: !3781)
!3781 = !{!3782, !3802, !3806, !3807, !3808, !3809, !3810, !3814, !3815, !3816, !3817, !3821}
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3780, file: !543, line: 276, baseType: !3783, size: 64)
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3784, size: 64)
!3784 = !DISubroutineType(types: !3785)
!3785 = !{!109, !3786}
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !543, line: 251, size: 1216, elements: !3788)
!3788 = !{!3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3801}
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3787, file: !543, line: 253, baseType: !3748, size: 64)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3787, file: !543, line: 254, baseType: !1027, size: 64, offset: 64)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3787, file: !543, line: 255, baseType: !640, size: 64, offset: 128)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3787, file: !543, line: 256, baseType: !358, size: 64, offset: 192)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3787, file: !543, line: 259, baseType: !652, size: 256, offset: 256)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3787, file: !543, line: 260, baseType: !652, size: 256, offset: 512)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3787, file: !543, line: 261, baseType: !109, size: 32, offset: 768)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3787, file: !543, line: 262, baseType: !186, size: 128, offset: 832)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3787, file: !543, line: 263, baseType: !286, size: 64, offset: 960)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3787, file: !543, line: 265, baseType: !333, size: 64, offset: 1024)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3787, file: !543, line: 266, baseType: !899, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3787, file: !543, line: 267, baseType: !899, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3787, file: !543, line: 268, baseType: !1424, size: 64, offset: 1152)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3780, file: !543, line: 277, baseType: !3803, size: 64, offset: 64)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DISubroutineType(types: !3805)
!3805 = !{null, !3786}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3780, file: !543, line: 290, baseType: !691, size: 64, offset: 128)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3780, file: !543, line: 292, baseType: !678, size: 64, offset: 192)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3780, file: !543, line: 293, baseType: !687, size: 64, offset: 256)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3780, file: !543, line: 294, baseType: !683, size: 64, offset: 320)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3780, file: !543, line: 296, baseType: !3811, size: 64, offset: 384)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = !DISubroutineType(types: !3813)
!3813 = !{!318, !3786, !286, !333, !528}
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3780, file: !543, line: 306, baseType: !333, size: 64, offset: 448)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3780, file: !543, line: 313, baseType: !899, size: 8, offset: 512)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3780, file: !543, line: 314, baseType: !3811, size: 64, offset: 576)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3780, file: !543, line: 317, baseType: !3818, size: 64, offset: 640)
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3819 = !DISubroutineType(types: !3820)
!3820 = !{!1634, !3786, !1636}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3780, file: !543, line: 320, baseType: !3822, size: 64, offset: 704)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DISubroutineType(types: !3824)
!3824 = !{!109, !3786, !1214}
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3775, file: !543, line: 176, baseType: !3826, size: 64, offset: 64)
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !543, line: 35, flags: DIFlagFwdDecl)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3775, file: !543, line: 177, baseType: !528, size: 64, offset: 128)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3775, file: !543, line: 178, baseType: !3748, size: 64, offset: 192)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3749, file: !543, line: 215, baseType: !358, size: 64, offset: 768)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3749, file: !543, line: 221, baseType: !440, size: 64, offset: 832)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3749, file: !543, line: 223, baseType: !256, size: 16, offset: 896)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3749, file: !543, line: 224, baseType: !328, size: 16, offset: 912)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3749, file: !543, line: 225, baseType: !3835, size: 64, offset: 960)
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3836, size: 64)
!3836 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !543, line: 36, flags: DIFlagFwdDecl)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3749, file: !543, line: 227, baseType: !710, size: 128, align: 64, offset: 1024)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !201, file: !202, line: 71, baseType: !3839, size: 32, offset: 448)
!3839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3840, line: 19, size: 32, elements: !3841)
!3840 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!3841 = !{!3842}
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3839, file: !3840, line: 20, baseType: !755, size: 32)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !201, file: !202, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !201, file: !202, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !201, file: !202, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !201, file: !202, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !201, file: !202, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !198, file: !6, line: 47, baseType: !181, size: 64, offset: 512)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !198, file: !6, line: 48, baseType: !209, size: 64, offset: 576)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !198, file: !6, line: 49, baseType: !3851, size: 64, offset: 640)
!3851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3852, size: 64)
!3852 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !198, file: !6, line: 50, baseType: !2423, size: 64, offset: 704)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !182, file: !6, line: 418, baseType: !3855, size: 64, offset: 1408)
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3856, size: 64)
!3856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !3857)
!3857 = !{!3858, !3859, !3864, !3868, !3872, !3876}
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3856, file: !6, line: 54, baseType: !324, size: 128)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3856, file: !6, line: 55, baseType: !3860, size: 64, offset: 128)
!3860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3861, size: 64)
!3861 = !DISubroutineType(types: !3862)
!3862 = !{!318, !3855, !3863, !286}
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3856, file: !6, line: 57, baseType: !3865, size: 64, offset: 192)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = !DISubroutineType(types: !3867)
!3867 = !{!318, !3855, !3863, !205, !333}
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !3856, file: !6, line: 59, baseType: !3869, size: 64, offset: 256)
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = !DISubroutineType(types: !3871)
!3871 = !{null, !181, !205}
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !3856, file: !6, line: 60, baseType: !3873, size: 64, offset: 320)
!3873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3874, size: 64)
!3874 = !DISubroutineType(types: !3875)
!3875 = !{!109, !181}
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3856, file: !6, line: 61, baseType: !3877, size: 64, offset: 384)
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3878 = !DISubroutineType(types: !3879)
!3879 = !{null, !181}
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !182, file: !6, line: 419, baseType: !205, size: 64, offset: 1472)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !182, file: !6, line: 420, baseType: !205, size: 64, offset: 1536)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !182, file: !6, line: 421, baseType: !209, size: 64, offset: 1600)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !182, file: !6, line: 424, baseType: !3884, size: 64, offset: 1664)
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3885, size: 64)
!3885 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3886)
!3886 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !182, file: !6, line: 425, baseType: !3888, size: 64, offset: 1728)
!3888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3889, size: 64)
!3889 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !825)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !182, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !182, file: !6, line: 435, baseType: !652, size: 256, offset: 1856)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !182, file: !6, line: 437, baseType: !3893, size: 64, offset: 2112)
!3893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !3895, line: 69, size: 320, elements: !3896)
!3895 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!3896 = !{!3897, !3898, !3899, !3916, !3918, !3922, !3923}
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3894, file: !3895, line: 70, baseType: !205, size: 64)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3894, file: !3895, line: 71, baseType: !181, size: 64, offset: 64)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3894, file: !3895, line: 72, baseType: !3900, size: 64, offset: 128)
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3901, size: 64)
!3901 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3902)
!3902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !3895, line: 47, size: 256, elements: !3903)
!3903 = !{!3904, !3905, !3911, !3915}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3902, file: !3895, line: 49, baseType: !7, size: 32)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3902, file: !3895, line: 51, baseType: !3906, size: 64, offset: 64)
!3906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3907, size: 64)
!3907 = !DISubroutineType(types: !3908)
!3908 = !{!109, !205, !3909}
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3910, size: 64)
!3910 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3894)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3902, file: !3895, line: 53, baseType: !3912, size: 64, offset: 128)
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3913 = !DISubroutineType(types: !3914)
!3914 = !{!109, !286, !3909}
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3902, file: !3895, line: 55, baseType: !3359, size: 64, offset: 192)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3894, file: !3895, line: 73, baseType: !3917, size: 16, offset: 192)
!3917 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !254)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3894, file: !3895, line: 74, baseType: !3919, size: 8, offset: 208)
!3919 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !245, line: 16, baseType: !3920)
!3920 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !247, line: 20, baseType: !3921)
!3921 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3894, file: !3895, line: 75, baseType: !244, size: 8, offset: 216)
!3923 = !DIDerivedType(tag: DW_TAG_member, scope: !3894, file: !3895, line: 76, baseType: !3924, size: 64, offset: 256)
!3924 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3894, file: !3895, line: 76, size: 64, elements: !3925)
!3925 = !{!3926, !3927, !3934}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3924, file: !3895, line: 77, baseType: !358, size: 64)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3924, file: !3895, line: 78, baseType: !3928, size: 64)
!3928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3929, size: 64)
!3929 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3930)
!3930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !3895, line: 86, size: 128, elements: !3931)
!3931 = !{!3932, !3933}
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !3930, file: !3895, line: 87, baseType: !7, size: 32)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3930, file: !3895, line: 88, baseType: !286, size: 64, offset: 64)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !3924, file: !3895, line: 79, baseType: !3935, size: 64)
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64)
!3936 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3937)
!3937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !3895, line: 92, size: 256, elements: !3938)
!3938 = !{!3939, !3940, !3941, !3942, !3943}
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3937, file: !3895, line: 94, baseType: !7, size: 32)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !3937, file: !3895, line: 95, baseType: !7, size: 32, offset: 32)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3937, file: !3895, line: 96, baseType: !2033, size: 64, offset: 64)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3937, file: !3895, line: 97, baseType: !3900, size: 64, offset: 128)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !3937, file: !3895, line: 98, baseType: !358, size: 64, offset: 192)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !182, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !182, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !182, file: !6, line: 442, baseType: !3884, size: 64, offset: 2240)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !182, file: !6, line: 443, baseType: !3888, size: 64, offset: 2304)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !182, file: !6, line: 444, baseType: !899, size: 8, offset: 2368)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !182, file: !6, line: 451, baseType: !899, size: 8, offset: 2376)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !182, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !182, file: !6, line: 455, baseType: !3952, size: 64, offset: 2432)
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !3954, line: 23, size: 96, elements: !3955)
!3954 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!3955 = !{!3956, !3957, !3958}
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3953, file: !3954, line: 24, baseType: !109, size: 32)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !3953, file: !3954, line: 24, baseType: !109, size: 32, offset: 32)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3953, file: !3954, line: 24, baseType: !109, size: 32, offset: 64)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !182, file: !6, line: 458, baseType: !3960, size: 64, offset: 2496)
!3960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3961, size: 64)
!3961 = !DISubroutineType(types: !3962)
!3962 = !{!109}
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !182, file: !6, line: 460, baseType: !3964, size: 4032, align: 512, offset: 2560)
!3964 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3965, size: 4032, elements: !3979)
!3965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !3966)
!3966 = !{!3967, !3968, !3969}
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3965, file: !6, line: 363, baseType: !358, size: 64)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3965, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !3965, file: !6, line: 367, baseType: !3970, size: 448, offset: 128)
!3970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !3971)
!3971 = !{!3972, !3973}
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3970, file: !6, line: 320, baseType: !181, size: 64)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3970, file: !6, line: 321, baseType: !3974, size: 384, offset: 64)
!3974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !3975, line: 40, size: 384, elements: !3976)
!3975 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!3976 = !{!3977}
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3974, file: !3975, line: 41, baseType: !3978, size: 384, align: 64)
!3978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !832, size: 384, align: 64, elements: !2548)
!3979 = !{!3980}
!3980 = !DISubrange(count: 7)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !182, file: !6, line: 463, baseType: !3982, size: 192, offset: 6592)
!3982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !3983, line: 8, size: 192, elements: !3984)
!3983 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!3984 = !{!3985, !3986, !3987}
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !3982, file: !3983, line: 10, baseType: !7, size: 32)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !3982, file: !3983, line: 11, baseType: !634, size: 64, offset: 64)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !3982, file: !3983, line: 12, baseType: !3988, size: 64, offset: 128)
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !3990, line: 59, size: 48, elements: !3991)
!3990 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!3991 = !{!3992, !3993, !3994, !3995, !3996, !3997}
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !3989, file: !3990, line: 60, baseType: !1359, size: 16)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !3989, file: !3990, line: 61, baseType: !1359, size: 16, offset: 16)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !3989, file: !3990, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !3989, file: !3990, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3989, file: !3990, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3989, file: !3990, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !182, file: !6, line: 465, baseType: !336, size: 64, offset: 6784)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !182, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !182, file: !6, line: 470, baseType: !186, size: 128, offset: 6912)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !182, file: !6, line: 471, baseType: !4002, size: 64, offset: 7040)
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4003, size: 64)
!4003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !4004, line: 33, size: 96, elements: !4005)
!4004 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!4005 = !{!4006, !4007, !4008, !4009}
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !4003, file: !4004, line: 37, baseType: !109, size: 32)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !4003, file: !4004, line: 43, baseType: !109, size: 32, offset: 32)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !4003, file: !4004, line: 45, baseType: !256, size: 16, offset: 64)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4003, file: !4004, line: 47, baseType: !256, size: 16, offset: 80)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !182, file: !6, line: 476, baseType: !4011, size: 64, offset: 7104)
!4011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4012, size: 64)
!4012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !4013)
!4013 = !{!4014, !4030, !4031, !4032}
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !4012, file: !6, line: 379, baseType: !4015, size: 64)
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4016, size: 64)
!4016 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !4017, line: 204, baseType: !4018)
!4017 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!4018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !4017, line: 197, size: 192, elements: !4019)
!4019 = !{!4020, !4022, !4023, !4024, !4026, !4028}
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !4018, file: !4017, line: 198, baseType: !4021, size: 32)
!4021 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !4017, line: 21, baseType: !437)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !4018, file: !4017, line: 199, baseType: !248, size: 8, offset: 32)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !4018, file: !4017, line: 200, baseType: !248, size: 8, offset: 40)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !4018, file: !4017, line: 201, baseType: !4025, size: 16, offset: 48)
!4025 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !4017, line: 17, baseType: !255)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !4018, file: !4017, line: 202, baseType: !4027, size: 64, offset: 64)
!4027 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !4017, line: 16, baseType: !441)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !4018, file: !4017, line: 203, baseType: !4029, size: 64, offset: 128)
!4029 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !4017, line: 22, baseType: !441)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !4012, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !4012, file: !6, line: 381, baseType: !286, size: 64, offset: 128)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !4012, file: !6, line: 382, baseType: !286, size: 64, offset: 192)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !182, file: !6, line: 477, baseType: !4012, size: 256, offset: 7168)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !182, file: !6, line: 480, baseType: !4035, size: 64, offset: 7424)
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4036, size: 64)
!4036 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !182, file: !6, line: 483, baseType: !4038, size: 64, offset: 7488)
!4038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4039, size: 64)
!4039 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !182, file: !6, line: 488, baseType: !286, size: 64, offset: 7552)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !182, file: !6, line: 492, baseType: !358, size: 64, offset: 7616)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !182, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !182, file: !6, line: 495, baseType: !358, size: 64, offset: 7744)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !182, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !182, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !182, file: !6, line: 500, baseType: !4047, size: 64, offset: 7872)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4048 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !4049, line: 45, baseType: !4050)
!4049 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!4050 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !182, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !182, file: !6, line: 504, baseType: !4053, size: 64, offset: 8000)
!4053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4054, size: 64)
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4055, size: 64)
!4055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !4056, line: 96, size: 192, elements: !4057)
!4056 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!4057 = !{!4058, !4059, !4102, !4104}
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !4055, file: !4056, line: 97, baseType: !7, size: 32)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !4055, file: !4056, line: 98, baseType: !4060, size: 64, offset: 64)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !4056, line: 24, size: 3072, elements: !4062)
!4062 = !{!4063, !4065, !4066, !4067, !4068, !4082, !4083, !4084, !4085, !4086, !4087, !4088, !4099, !4100, !4101}
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !4061, file: !4056, line: 26, baseType: !4064, size: 128)
!4064 = !DICompositeType(tag: DW_TAG_array_type, baseType: !656, size: 128, elements: !2548)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !4061, file: !4056, line: 27, baseType: !4064, size: 128, offset: 128)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !4061, file: !4056, line: 28, baseType: !109, size: 32, offset: 256)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4061, file: !4056, line: 31, baseType: !216, size: 32, align: 512, offset: 512)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !4061, file: !4056, line: 32, baseType: !4069, size: 960, offset: 576)
!4069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !4070, line: 206, size: 960, elements: !4071)
!4070 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!4071 = !{!4072, !4073, !4076, !4078, !4079, !4081}
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4069, file: !4070, line: 207, baseType: !713, size: 64)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !4069, file: !4070, line: 208, baseType: !4074, size: 256, offset: 64)
!4074 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4075, size: 256, elements: !764)
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !4069, file: !4070, line: 209, baseType: !4077, size: 256, offset: 320)
!4077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !336, size: 256, elements: !764)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4069, file: !4070, line: 213, baseType: !322, size: 64, offset: 576)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !4069, file: !4070, line: 215, baseType: !4080, size: 256, offset: 640)
!4080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !322, size: 256, elements: !764)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4069, file: !4070, line: 216, baseType: !244, size: 8, offset: 896)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4061, file: !4056, line: 33, baseType: !336, size: 64, offset: 1536)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4061, file: !4056, line: 34, baseType: !336, size: 64, offset: 1600)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !4061, file: !4056, line: 35, baseType: !899, size: 8, offset: 1664)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !4061, file: !4056, line: 36, baseType: !2983, size: 320, offset: 1728)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4061, file: !4056, line: 37, baseType: !1381, size: 256, offset: 2048)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !4061, file: !4056, line: 38, baseType: !710, size: 128, align: 64, offset: 2304)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !4061, file: !4056, line: 39, baseType: !4089, size: 64, offset: 2432)
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4090, size: 64)
!4090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !4056, line: 49, size: 768, elements: !4091)
!4091 = !{!4092, !4093, !4094, !4095, !4096, !4097, !4098}
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4090, file: !4056, line: 50, baseType: !216, size: 32)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !4090, file: !4056, line: 51, baseType: !4077, size: 256, offset: 64)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !4090, file: !4056, line: 53, baseType: !4077, size: 256, offset: 320)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4090, file: !4056, line: 54, baseType: !336, size: 64, offset: 576)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !4090, file: !4056, line: 55, baseType: !4089, size: 64, offset: 640)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !4090, file: !4056, line: 56, baseType: !109, size: 32, offset: 704)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !4090, file: !4056, line: 57, baseType: !109, size: 32, offset: 736)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !4061, file: !4056, line: 40, baseType: !336, size: 64, offset: 2496)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4061, file: !4056, line: 42, baseType: !109, size: 32, offset: 2560)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !4061, file: !4056, line: 43, baseType: !4054, size: 64, offset: 2624)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !4055, file: !4056, line: 99, baseType: !4103, offset: 128)
!4103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !570, line: 211, elements: !571)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !4055, file: !4056, line: 100, baseType: !4105, size: 64, offset: 128)
!4105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4106, size: 64)
!4106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !4056, line: 63, size: 3008, elements: !4107)
!4107 = !{!4108, !4109, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4137}
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4106, file: !4056, line: 64, baseType: !4089, size: 64)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4106, file: !4056, line: 65, baseType: !4110, size: 192, offset: 64)
!4110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4089, size: 192, elements: !287)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !4106, file: !4056, line: 67, baseType: !109, size: 32, offset: 256)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !4106, file: !4056, line: 68, baseType: !652, size: 256, offset: 320)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4106, file: !4056, line: 69, baseType: !216, size: 32, offset: 576)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !4106, file: !4056, line: 70, baseType: !652, size: 256, offset: 640)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !4106, file: !4056, line: 71, baseType: !336, size: 64, offset: 896)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4106, file: !4056, line: 72, baseType: !336, size: 64, offset: 960)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4106, file: !4056, line: 73, baseType: !336, size: 64, offset: 1024)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !4106, file: !4056, line: 74, baseType: !336, size: 64, offset: 1088)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !4106, file: !4056, line: 75, baseType: !336, size: 64, offset: 1152)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !4106, file: !4056, line: 76, baseType: !336, size: 64, offset: 1216)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !4106, file: !4056, line: 77, baseType: !336, size: 64, offset: 1280)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !4106, file: !4056, line: 78, baseType: !336, size: 64, offset: 1344)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !4106, file: !4056, line: 79, baseType: !899, size: 8, offset: 1408)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !4106, file: !4056, line: 80, baseType: !336, size: 64, offset: 1472)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !4106, file: !4056, line: 81, baseType: !652, size: 256, offset: 1536)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !4106, file: !4056, line: 82, baseType: !1178, size: 256, offset: 1792)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !4106, file: !4056, line: 84, baseType: !236, size: 32, offset: 2048)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !4106, file: !4056, line: 87, baseType: !336, size: 64, offset: 2112)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !4106, file: !4056, line: 88, baseType: !336, size: 64, offset: 2176)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4106, file: !4056, line: 89, baseType: !4131, size: 704, offset: 2240)
!4131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1382, line: 111, size: 704, elements: !4132)
!4132 = !{!4133, !4134, !4135, !4136}
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4131, file: !1382, line: 112, baseType: !1381, size: 256)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4131, file: !1382, line: 113, baseType: !2983, size: 320, offset: 256)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4131, file: !1382, line: 116, baseType: !3290, size: 64, offset: 576)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4131, file: !1382, line: 117, baseType: !109, size: 32, offset: 640)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !4106, file: !4056, line: 90, baseType: !4054, size: 64, offset: 2944)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !182, file: !6, line: 515, baseType: !4139, size: 64, offset: 8064)
!4139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4140, size: 64)
!4140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !4141, line: 117, size: 128, elements: !4142)
!4141 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!4142 = !{!4143, !4144, !4145}
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4140, file: !4141, line: 118, baseType: !825, size: 32)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !4140, file: !4141, line: 119, baseType: !825, size: 32, offset: 32)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4140, file: !4141, line: 120, baseType: !322, size: 64, offset: 64)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !182, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !182, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !182, file: !6, line: 520, baseType: !4149, size: 64, offset: 8192)
!4149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !182, file: !6, line: 523, baseType: !4151, size: 64, offset: 8256)
!4151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4152, size: 64)
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4153, size: 64)
!4153 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !182, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !182, file: !6, line: 525, baseType: !4156, size: 64, offset: 8384)
!4156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4157, size: 64)
!4157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4158, size: 64)
!4158 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !182, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !182, file: !6, line: 533, baseType: !358, size: 64, offset: 8512)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !182, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !182, file: !6, line: 535, baseType: !4163, size: 64, offset: 8640)
!4163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !182, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !182, file: !6, line: 539, baseType: !109, size: 32, offset: 8736)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !182, file: !6, line: 540, baseType: !4167, size: 64, offset: 8768)
!4167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4168, size: 64)
!4168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !4169, line: 32, size: 64, elements: !4170)
!4169 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!4170 = !{!4171, !4172}
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4168, file: !4169, line: 33, baseType: !825, size: 32)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4168, file: !4169, line: 34, baseType: !825, size: 32, offset: 32)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !182, file: !6, line: 563, baseType: !186, size: 128, offset: 8832)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !182, file: !6, line: 565, baseType: !186, size: 128, offset: 8960)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !182, file: !6, line: 568, baseType: !4176, size: 64, offset: 9088)
!4176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !182, file: !6, line: 570, baseType: !236, size: 32, offset: 9152)
!4178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4179, size: 64)
!4179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4180)
!4180 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !190)
!4181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4180, size: 64)
!4182 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !187, line: 149, baseType: !440)
!4183 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !187, line: 42, baseType: !336)
!4184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!4185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4186, size: 64)
!4186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4187)
!4187 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !530)
!4188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4189, size: 64)
!4189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_pool_type", file: !4190, line: 49, size: 448, elements: !4191)
!4190 = !DIFile(filename: "./include/drm/ttm/ttm_pool.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6613193a1a6bffece87937e591b2c286")
!4191 = !{!4192, !4658, !4659, !4660, !4661, !4662}
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !4189, file: !4190, line: 50, baseType: !4193, size: 64)
!4193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4194, size: 64)
!4194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_pool", file: !4190, line: 69, size: 14912, elements: !4195)
!4195 = !{!4196, !4647, !4648, !4649, !4650}
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4194, file: !4190, line: 70, baseType: !4197, size: 64)
!4197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4198, size: 64)
!4198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !94, line: 705, size: 5824, elements: !4199)
!4199 = !{!4200, !4201, !4202, !4205, !4206, !4259, !4329, !4330, !4331, !4332, !4333, !4340, !4432, !4445, !4455, !4459, !4461, !4462, !4463, !4467, !4474, !4475, !4478, !4481, !4485, !4589, !4590, !4591, !4592, !4593, !4594, !4624, !4625, !4626, !4629, !4632, !4641, !4642, !4643, !4644, !4645, !4646}
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4198, file: !94, line: 706, baseType: !201, size: 512)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4198, file: !94, line: 707, baseType: !4197, size: 64, offset: 512)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4198, file: !94, line: 709, baseType: !4203, size: 64, offset: 576)
!4203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4204, size: 64)
!4204 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !94, line: 37, flags: DIFlagFwdDecl)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4198, file: !94, line: 711, baseType: !205, size: 64, offset: 640)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4198, file: !94, line: 712, baseType: !4207, size: 64, offset: 704)
!4207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4208, size: 64)
!4208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4209)
!4209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !94, line: 89, size: 384, elements: !4210)
!4210 = !{!4211, !4212, !4213, !4219, !4224, !4228}
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4209, file: !94, line: 90, baseType: !205, size: 64)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4209, file: !94, line: 91, baseType: !338, size: 64, offset: 64)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4209, file: !94, line: 92, baseType: !4214, size: 64, offset: 128)
!4214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4215, size: 64)
!4215 = !DISubroutineType(types: !4216)
!4216 = !{!109, !4217, !281}
!4217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4218, size: 64)
!4218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4198)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4209, file: !94, line: 93, baseType: !4220, size: 64, offset: 192)
!4220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4221, size: 64)
!4221 = !DISubroutineType(types: !4222)
!4222 = !{!286, !4217, !4223, !3745, !3746}
!4223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4209, file: !94, line: 95, baseType: !4225, size: 64, offset: 256)
!4225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4226, size: 64)
!4226 = !DISubroutineType(types: !4227)
!4227 = !{null, !4197}
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4209, file: !94, line: 97, baseType: !4229, size: 64, offset: 320)
!4229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4230, size: 64)
!4230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4231)
!4231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !101, line: 286, size: 1472, elements: !4232)
!4232 = !{!4233, !4237, !4238, !4239, !4240, !4241, !4242, !4243, !4244, !4245, !4246, !4247, !4248, !4249, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258}
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4231, file: !101, line: 287, baseType: !4234, size: 64)
!4234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4235, size: 64)
!4235 = !DISubroutineType(types: !4236)
!4236 = !{!109, !4197}
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4231, file: !101, line: 288, baseType: !4225, size: 64, offset: 64)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4231, file: !101, line: 289, baseType: !4234, size: 64, offset: 128)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4231, file: !101, line: 290, baseType: !4234, size: 64, offset: 192)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4231, file: !101, line: 291, baseType: !4234, size: 64, offset: 256)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4231, file: !101, line: 292, baseType: !4234, size: 64, offset: 320)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4231, file: !101, line: 293, baseType: !4234, size: 64, offset: 384)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4231, file: !101, line: 294, baseType: !4234, size: 64, offset: 448)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4231, file: !101, line: 295, baseType: !4234, size: 64, offset: 512)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4231, file: !101, line: 296, baseType: !4234, size: 64, offset: 576)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4231, file: !101, line: 297, baseType: !4234, size: 64, offset: 640)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4231, file: !101, line: 298, baseType: !4234, size: 64, offset: 704)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4231, file: !101, line: 299, baseType: !4234, size: 64, offset: 768)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4231, file: !101, line: 300, baseType: !4234, size: 64, offset: 832)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4231, file: !101, line: 301, baseType: !4234, size: 64, offset: 896)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4231, file: !101, line: 302, baseType: !4234, size: 64, offset: 960)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4231, file: !101, line: 303, baseType: !4234, size: 64, offset: 1024)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4231, file: !101, line: 304, baseType: !4234, size: 64, offset: 1088)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4231, file: !101, line: 305, baseType: !4234, size: 64, offset: 1152)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4231, file: !101, line: 306, baseType: !4234, size: 64, offset: 1216)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4231, file: !101, line: 307, baseType: !4234, size: 64, offset: 1280)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4231, file: !101, line: 308, baseType: !4234, size: 64, offset: 1344)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4231, file: !101, line: 309, baseType: !4234, size: 64, offset: 1408)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4198, file: !94, line: 714, baseType: !4260, size: 64, offset: 768)
!4260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4261, size: 64)
!4261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4262)
!4262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4263, line: 80, size: 1344, elements: !4264)
!4263 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4264 = !{!4265, !4266, !4267, !4268, !4269, !4270, !4311, !4312, !4313, !4314, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4324, !4328}
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4262, file: !4263, line: 81, baseType: !205, size: 64)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4262, file: !4263, line: 82, baseType: !205, size: 64, offset: 64)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4262, file: !4263, line: 83, baseType: !338, size: 64, offset: 128)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4262, file: !4263, line: 84, baseType: !338, size: 64, offset: 192)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4262, file: !4263, line: 85, baseType: !338, size: 64, offset: 256)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4262, file: !4263, line: 87, baseType: !4271, size: 64, offset: 320)
!4271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4272, size: 64)
!4272 = !DISubroutineType(types: !4273)
!4273 = !{!109, !4197, !4274}
!4274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4275, size: 64)
!4275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !88, line: 96, size: 1152, elements: !4276)
!4276 = !{!4277, !4278, !4279, !4280, !4281, !4282, !4283, !4287, !4291, !4292, !4293, !4294, !4295, !4303, !4304, !4305, !4306, !4307, !4308}
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4275, file: !88, line: 97, baseType: !205, size: 64)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4275, file: !88, line: 98, baseType: !4260, size: 64, offset: 64)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4275, file: !88, line: 100, baseType: !181, size: 64, offset: 128)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4275, file: !88, line: 101, baseType: !205, size: 64, offset: 192)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4275, file: !88, line: 103, baseType: !899, size: 8, offset: 256)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4275, file: !88, line: 104, baseType: !87, size: 32, offset: 288)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4275, file: !88, line: 106, baseType: !4284, size: 64, offset: 320)
!4284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4285, size: 64)
!4285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4286)
!4286 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !88, line: 106, flags: DIFlagFwdDecl)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4275, file: !88, line: 107, baseType: !4288, size: 64, offset: 384)
!4288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4289, size: 64)
!4289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4290)
!4290 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !88, line: 107, flags: DIFlagFwdDecl)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4275, file: !88, line: 109, baseType: !4234, size: 64, offset: 448)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4275, file: !88, line: 110, baseType: !4225, size: 64, offset: 512)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4275, file: !88, line: 111, baseType: !4234, size: 64, offset: 576)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4275, file: !88, line: 112, baseType: !4225, size: 64, offset: 640)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4275, file: !88, line: 113, baseType: !4296, size: 64, offset: 704)
!4296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4297, size: 64)
!4297 = !DISubroutineType(types: !4298)
!4298 = !{!109, !4197, !4299}
!4299 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !101, line: 60, baseType: !4300)
!4300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !101, line: 58, size: 32, elements: !4301)
!4301 = !{!4302}
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4300, file: !101, line: 59, baseType: !109, size: 32)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4275, file: !88, line: 114, baseType: !4234, size: 64, offset: 768)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4275, file: !88, line: 115, baseType: !338, size: 64, offset: 832)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4275, file: !88, line: 116, baseType: !338, size: 64, offset: 896)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4275, file: !88, line: 118, baseType: !4229, size: 64, offset: 960)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4275, file: !88, line: 119, baseType: !4225, size: 64, offset: 1024)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4275, file: !88, line: 121, baseType: !4309, size: 64, offset: 1088)
!4309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4310, size: 64)
!4310 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !88, line: 121, flags: DIFlagFwdDecl)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4262, file: !4263, line: 88, baseType: !4214, size: 64, offset: 384)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4262, file: !4263, line: 89, baseType: !4234, size: 64, offset: 448)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4262, file: !4263, line: 90, baseType: !4225, size: 64, offset: 512)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4262, file: !4263, line: 91, baseType: !4225, size: 64, offset: 576)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4262, file: !4263, line: 92, baseType: !4225, size: 64, offset: 640)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4262, file: !4263, line: 94, baseType: !4234, size: 64, offset: 704)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4262, file: !4263, line: 95, baseType: !4234, size: 64, offset: 768)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4262, file: !4263, line: 97, baseType: !4296, size: 64, offset: 832)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4262, file: !4263, line: 98, baseType: !4234, size: 64, offset: 896)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4262, file: !4263, line: 100, baseType: !4234, size: 64, offset: 960)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4262, file: !4263, line: 102, baseType: !4234, size: 64, offset: 1024)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4262, file: !4263, line: 103, baseType: !4225, size: 64, offset: 1088)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4262, file: !4263, line: 105, baseType: !4229, size: 64, offset: 1152)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4262, file: !4263, line: 107, baseType: !4325, size: 64, offset: 1216)
!4325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4326, size: 64)
!4326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4327)
!4327 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4263, line: 107, flags: DIFlagFwdDecl)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4262, file: !4263, line: 109, baseType: !899, size: 8, offset: 1280)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4198, file: !94, line: 715, baseType: !4274, size: 64, offset: 832)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4198, file: !94, line: 717, baseType: !358, size: 64, offset: 896)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4198, file: !94, line: 719, baseType: !358, size: 64, offset: 960)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4198, file: !94, line: 721, baseType: !652, size: 256, offset: 1024)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4198, file: !94, line: 725, baseType: !4334, size: 448, offset: 1280)
!4334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !94, line: 517, size: 448, elements: !4335)
!4335 = !{!4336, !4337, !4338, !4339}
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4334, file: !94, line: 518, baseType: !186, size: 128)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4334, file: !94, line: 519, baseType: !186, size: 128, offset: 128)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4334, file: !94, line: 520, baseType: !186, size: 128, offset: 256)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4334, file: !94, line: 521, baseType: !93, size: 32, offset: 384)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4198, file: !94, line: 726, baseType: !4341, size: 2496, offset: 1728)
!4341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !101, line: 663, size: 2496, elements: !4342)
!4342 = !{!4343, !4344, !4345, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4357, !4358, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4425, !4429}
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4341, file: !101, line: 664, baseType: !4299, size: 32)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4341, file: !101, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4341, file: !101, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4341, file: !101, line: 667, baseType: !899, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4341, file: !101, line: 668, baseType: !899, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4341, file: !101, line: 669, baseType: !899, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4341, file: !101, line: 670, baseType: !899, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4341, file: !101, line: 671, baseType: !899, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4341, file: !101, line: 672, baseType: !899, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4341, file: !101, line: 673, baseType: !899, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4341, file: !101, line: 674, baseType: !899, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4341, file: !101, line: 675, baseType: !436, size: 32, offset: 64)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4341, file: !101, line: 676, baseType: !216, size: 32, offset: 96)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4341, file: !101, line: 678, baseType: !186, size: 128, offset: 128)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4341, file: !101, line: 679, baseType: !1178, size: 256, offset: 256)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4341, file: !101, line: 680, baseType: !4359, size: 64, offset: 512)
!4359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4360, size: 64)
!4360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4361, line: 43, size: 1536, elements: !4362)
!4361 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4362 = !{!4363, !4364, !4365, !4366, !4367, !4370, !4371, !4372, !4373, !4374, !4375, !4376, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4384}
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4360, file: !4361, line: 44, baseType: !205, size: 64)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4360, file: !4361, line: 45, baseType: !109, size: 32, offset: 64)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4360, file: !4361, line: 46, baseType: !186, size: 128, offset: 128)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4360, file: !4361, line: 47, baseType: !216, size: 32, offset: 256)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4360, file: !4361, line: 48, baseType: !4368, size: 64, offset: 320)
!4368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4369, size: 64)
!4369 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !101, line: 629, flags: DIFlagFwdDecl)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4360, file: !4361, line: 49, baseType: !2983, size: 320, offset: 384)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4360, file: !4361, line: 50, baseType: !336, size: 64, offset: 704)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4360, file: !4361, line: 51, baseType: !2158, size: 64, offset: 768)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4360, file: !4361, line: 52, baseType: !2158, size: 64, offset: 832)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4360, file: !4361, line: 53, baseType: !2158, size: 64, offset: 896)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4360, file: !4361, line: 54, baseType: !2158, size: 64, offset: 960)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4360, file: !4361, line: 55, baseType: !2158, size: 64, offset: 1024)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4360, file: !4361, line: 56, baseType: !336, size: 64, offset: 1088)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4360, file: !4361, line: 57, baseType: !336, size: 64, offset: 1152)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4360, file: !4361, line: 58, baseType: !336, size: 64, offset: 1216)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4360, file: !4361, line: 59, baseType: !336, size: 64, offset: 1280)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4360, file: !4361, line: 60, baseType: !336, size: 64, offset: 1344)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4360, file: !4361, line: 61, baseType: !4197, size: 64, offset: 1408)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4360, file: !4361, line: 62, baseType: !899, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4360, file: !4361, line: 63, baseType: !899, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4341, file: !101, line: 681, baseType: !899, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4341, file: !101, line: 682, baseType: !899, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4341, file: !101, line: 683, baseType: !899, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4341, file: !101, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4341, file: !101, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4341, file: !101, line: 690, baseType: !2150, size: 512, offset: 640)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4341, file: !101, line: 691, baseType: !440, size: 64, offset: 1152)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4341, file: !101, line: 692, baseType: !1381, size: 256, offset: 1216)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4341, file: !101, line: 693, baseType: !768, size: 192, offset: 1472)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4341, file: !101, line: 694, baseType: !4368, size: 64, offset: 1664)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4341, file: !101, line: 695, baseType: !236, size: 32, offset: 1728)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4341, file: !101, line: 696, baseType: !236, size: 32, offset: 1760)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4341, file: !101, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4341, file: !101, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4341, file: !101, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4341, file: !101, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4341, file: !101, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4341, file: !101, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4341, file: !101, line: 703, baseType: !899, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4341, file: !101, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4341, file: !101, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4341, file: !101, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4341, file: !101, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4341, file: !101, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4341, file: !101, line: 709, baseType: !7, size: 32, offset: 1824)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4341, file: !101, line: 710, baseType: !100, size: 32, offset: 1856)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4341, file: !101, line: 711, baseType: !108, size: 32, offset: 1888)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4341, file: !101, line: 712, baseType: !108, size: 32, offset: 1920)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4341, file: !101, line: 713, baseType: !109, size: 32, offset: 1952)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4341, file: !101, line: 714, baseType: !109, size: 32, offset: 1984)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4341, file: !101, line: 715, baseType: !440, size: 64, offset: 2048)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4341, file: !101, line: 716, baseType: !440, size: 64, offset: 2112)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4341, file: !101, line: 717, baseType: !440, size: 64, offset: 2176)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4341, file: !101, line: 718, baseType: !440, size: 64, offset: 2240)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4341, file: !101, line: 720, baseType: !4420, size: 64, offset: 2304)
!4420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4421, size: 64)
!4421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !101, line: 632, size: 64, elements: !4422)
!4422 = !{!4423, !4424}
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4421, file: !101, line: 633, baseType: !216, size: 32)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4421, file: !101, line: 634, baseType: !7, size: 32, offset: 32)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4341, file: !101, line: 721, baseType: !4426, size: 64, offset: 2368)
!4426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4427, size: 64)
!4427 = !DISubroutineType(types: !4428)
!4428 = !{null, !4197, !825}
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4341, file: !101, line: 722, baseType: !4430, size: 64, offset: 2432)
!4430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4431, size: 64)
!4431 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !101, line: 722, flags: DIFlagFwdDecl)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4198, file: !94, line: 727, baseType: !4433, size: 64, offset: 4224)
!4433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4434, size: 64)
!4434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !101, line: 742, size: 1792, elements: !4435)
!4435 = !{!4436, !4437, !4438, !4442, !4443, !4444}
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4434, file: !101, line: 743, baseType: !4231, size: 1472)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4434, file: !101, line: 744, baseType: !4234, size: 64, offset: 1472)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4434, file: !101, line: 745, baseType: !4439, size: 64, offset: 1536)
!4439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4440, size: 64)
!4440 = !DISubroutineType(types: !4441)
!4441 = !{null, !4197, !899}
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4434, file: !101, line: 746, baseType: !4234, size: 64, offset: 1600)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4434, file: !101, line: 747, baseType: !4225, size: 64, offset: 1664)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4434, file: !101, line: 748, baseType: !4225, size: 64, offset: 1728)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4198, file: !94, line: 736, baseType: !4446, size: 128, offset: 4288)
!4446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !94, line: 529, size: 128, elements: !4447)
!4447 = !{!4448, !4452}
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4446, file: !94, line: 531, baseType: !4449, size: 64)
!4449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4450, size: 64)
!4450 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4451, line: 13, flags: DIFlagFwdDecl)
!4451 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4446, file: !94, line: 532, baseType: !4453, size: 64, offset: 64)
!4453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4454, size: 64)
!4454 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !94, line: 49, flags: DIFlagFwdDecl)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4198, file: !94, line: 738, baseType: !4456, size: 64, offset: 4416)
!4456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4457, size: 64)
!4457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4458)
!4458 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !94, line: 738, flags: DIFlagFwdDecl)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4198, file: !94, line: 740, baseType: !4460, size: 64, offset: 4480)
!4460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4198, file: !94, line: 741, baseType: !440, size: 64, offset: 4544)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4198, file: !94, line: 746, baseType: !440, size: 64, offset: 4608)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4198, file: !94, line: 747, baseType: !4464, size: 64, offset: 4672)
!4464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4465, size: 64)
!4465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4466)
!4466 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !94, line: 747, flags: DIFlagFwdDecl)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4198, file: !94, line: 749, baseType: !4468, size: 64, offset: 4736)
!4468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4469, size: 64)
!4469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !94, line: 428, size: 128, elements: !4470)
!4470 = !{!4471, !4472, !4473}
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4469, file: !94, line: 433, baseType: !7, size: 32)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4469, file: !94, line: 434, baseType: !7, size: 32, offset: 32)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4469, file: !94, line: 435, baseType: !336, size: 64, offset: 64)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4198, file: !94, line: 751, baseType: !186, size: 128, offset: 4800)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4198, file: !94, line: 762, baseType: !4476, size: 64, offset: 4928)
!4476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4477, size: 64)
!4477 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !94, line: 762, flags: DIFlagFwdDecl)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4198, file: !94, line: 770, baseType: !4479, offset: 4992)
!4479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4480, line: 5, elements: !571)
!4480 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4198, file: !94, line: 772, baseType: !4482, size: 64, offset: 4992)
!4482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4483, size: 64)
!4483 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4484, line: 18, flags: DIFlagFwdDecl)
!4484 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4198, file: !94, line: 773, baseType: !4486, size: 64, offset: 5056)
!4486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4487, size: 64)
!4487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4488, line: 41, size: 512, elements: !4489)
!4488 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4489 = !{!4490, !4491, !4585, !4586, !4587, !4588}
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4487, file: !4488, line: 42, baseType: !4486, size: 64)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4487, file: !4488, line: 43, baseType: !4492, size: 64, offset: 64)
!4492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4493, size: 64)
!4493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4494)
!4494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4488, line: 125, size: 1408, elements: !4495)
!4495 = !{!4496, !4500, !4504, !4510, !4514, !4515, !4520, !4524, !4528, !4532, !4536, !4537, !4541, !4545, !4549, !4560, !4561, !4562, !4563, !4573, !4577, !4581}
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4494, file: !4488, line: 126, baseType: !4497, size: 64)
!4497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4498, size: 64)
!4498 = !DISubroutineType(types: !4499)
!4499 = !{!4486, !4486}
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4494, file: !4488, line: 127, baseType: !4501, size: 64, offset: 64)
!4501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4502, size: 64)
!4502 = !DISubroutineType(types: !4503)
!4503 = !{null, !4486}
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4494, file: !4488, line: 128, baseType: !4505, size: 64, offset: 128)
!4505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4506, size: 64)
!4506 = !DISubroutineType(types: !4507)
!4507 = !{!899, !4508}
!4508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4509, size: 64)
!4509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4487)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4494, file: !4488, line: 129, baseType: !4511, size: 64, offset: 192)
!4511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4512, size: 64)
!4512 = !DISubroutineType(types: !4513)
!4513 = !{!1342, !4508, !4217}
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4494, file: !4488, line: 131, baseType: !4505, size: 64, offset: 256)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4494, file: !4488, line: 133, baseType: !4516, size: 64, offset: 320)
!4516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4517, size: 64)
!4517 = !DISubroutineType(types: !4518)
!4518 = !{!4519, !4508}
!4519 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4488, line: 132, flags: DIFlagFwdDecl)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4494, file: !4488, line: 134, baseType: !4521, size: 64, offset: 384)
!4521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4522, size: 64)
!4522 = !DISubroutineType(types: !4523)
!4523 = !{!899, !4508, !205}
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4494, file: !4488, line: 136, baseType: !4525, size: 64, offset: 448)
!4525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4526, size: 64)
!4526 = !DISubroutineType(types: !4527)
!4527 = !{!109, !4508, !205, !7, !358, !333}
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4494, file: !4488, line: 141, baseType: !4529, size: 64, offset: 512)
!4529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4530, size: 64)
!4530 = !DISubroutineType(types: !4531)
!4531 = !{!109, !4508, !205, !4149, !333}
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4494, file: !4488, line: 144, baseType: !4533, size: 64, offset: 576)
!4533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4534, size: 64)
!4534 = !DISubroutineType(types: !4535)
!4535 = !{!205, !4508}
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4494, file: !4488, line: 145, baseType: !4533, size: 64, offset: 640)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4494, file: !4488, line: 146, baseType: !4538, size: 64, offset: 704)
!4538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4539, size: 64)
!4539 = !DISubroutineType(types: !4540)
!4540 = !{!4486, !4508}
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4494, file: !4488, line: 148, baseType: !4542, size: 64, offset: 768)
!4542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4543, size: 64)
!4543 = !DISubroutineType(types: !4544)
!4544 = !{!4486, !4508, !4486}
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4494, file: !4488, line: 151, baseType: !4546, size: 64, offset: 832)
!4546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4547, size: 64)
!4547 = !DISubroutineType(types: !4548)
!4548 = !{!4486, !4508, !205}
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4494, file: !4488, line: 153, baseType: !4550, size: 64, offset: 896)
!4550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4551, size: 64)
!4551 = !DISubroutineType(types: !4552)
!4552 = !{!109, !4508, !205, !205, !7, !7, !4553}
!4553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4554, size: 64)
!4554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4488, line: 94, size: 640, elements: !4555)
!4555 = !{!4556, !4557, !4558}
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4554, file: !4488, line: 95, baseType: !4486, size: 64)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4554, file: !4488, line: 96, baseType: !7, size: 32, offset: 64)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4554, file: !4488, line: 97, baseType: !4559, size: 512, offset: 128)
!4559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !440, size: 512, elements: !2193)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4494, file: !4488, line: 158, baseType: !4542, size: 64, offset: 960)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4494, file: !4488, line: 161, baseType: !4538, size: 64, offset: 1024)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4494, file: !4488, line: 163, baseType: !4497, size: 64, offset: 1088)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4494, file: !4488, line: 164, baseType: !4564, size: 64, offset: 1152)
!4564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4565, size: 64)
!4565 = !DISubroutineType(types: !4566)
!4566 = !{!109, !4508, !4567}
!4567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4568, size: 64)
!4568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4488, line: 73, size: 128, elements: !4569)
!4569 = !{!4570, !4571, !4572}
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4568, file: !4488, line: 74, baseType: !7, size: 32)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4568, file: !4488, line: 75, baseType: !7, size: 32, offset: 32)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4568, file: !4488, line: 76, baseType: !4508, size: 64, offset: 64)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4494, file: !4488, line: 166, baseType: !4574, size: 64, offset: 1216)
!4574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4575, size: 64)
!4575 = !DISubroutineType(types: !4576)
!4576 = !{!358, !4486, !109}
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4494, file: !4488, line: 167, baseType: !4578, size: 64, offset: 1280)
!4578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4579, size: 64)
!4579 = !DISubroutineType(types: !4580)
!4580 = !{!109, !4508, !7}
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4494, file: !4488, line: 168, baseType: !4582, size: 64, offset: 1344)
!4582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4583, size: 64)
!4583 = !DISubroutineType(types: !4584)
!4584 = !{!109, !4486}
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4487, file: !4488, line: 44, baseType: !4197, size: 64, offset: 128)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4487, file: !4488, line: 45, baseType: !186, size: 128, offset: 192)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4487, file: !4488, line: 46, baseType: !186, size: 128, offset: 320)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4487, file: !4488, line: 47, baseType: !244, size: 8, offset: 448)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4198, file: !94, line: 776, baseType: !109, size: 32, offset: 5120)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4198, file: !94, line: 778, baseType: !523, size: 32, offset: 5152)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4198, file: !94, line: 779, baseType: !436, size: 32, offset: 5184)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4198, file: !94, line: 781, baseType: !216, size: 32, offset: 5216)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4198, file: !94, line: 782, baseType: !186, size: 128, offset: 5248)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4198, file: !94, line: 784, baseType: !4595, size: 64, offset: 5376)
!4595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4596, size: 64)
!4596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4597)
!4597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4598, line: 52, size: 768, elements: !4599)
!4598 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4599 = !{!4600, !4601, !4602, !4603, !4604, !4608, !4612, !4613, !4614, !4615, !4619, !4623}
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4597, file: !4598, line: 53, baseType: !205, size: 64)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4597, file: !4598, line: 55, baseType: !338, size: 64, offset: 64)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4597, file: !4598, line: 56, baseType: !338, size: 64, offset: 128)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4597, file: !4598, line: 58, baseType: !4214, size: 64, offset: 192)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4597, file: !4598, line: 59, baseType: !4605, size: 64, offset: 256)
!4605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4606, size: 64)
!4606 = !DISubroutineType(types: !4607)
!4607 = !{!286, !4217, !4223}
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4597, file: !4598, line: 61, baseType: !4609, size: 64, offset: 320)
!4609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4610, size: 64)
!4610 = !DISubroutineType(types: !4611)
!4611 = !{null, !4595}
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4597, file: !4598, line: 62, baseType: !4225, size: 64, offset: 384)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4597, file: !4598, line: 64, baseType: !4234, size: 64, offset: 448)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4597, file: !4598, line: 66, baseType: !3713, size: 64, offset: 512)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4597, file: !4598, line: 67, baseType: !4616, size: 64, offset: 576)
!4616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4617, size: 64)
!4617 = !DISubroutineType(types: !4618)
!4618 = !{!1342, !4217}
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4597, file: !4598, line: 69, baseType: !4620, size: 64, offset: 640)
!4620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4621, size: 64)
!4621 = !DISubroutineType(types: !4622)
!4622 = !{null, !4217, !3745, !3746}
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4597, file: !4598, line: 71, baseType: !4229, size: 64, offset: 704)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4198, file: !94, line: 785, baseType: !338, size: 64, offset: 5440)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4198, file: !94, line: 787, baseType: !4225, size: 64, offset: 5504)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4198, file: !94, line: 788, baseType: !4627, size: 64, offset: 5568)
!4627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4628, size: 64)
!4628 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !94, line: 46, flags: DIFlagFwdDecl)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4198, file: !94, line: 789, baseType: !4630, size: 64, offset: 5632)
!4630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4631, size: 64)
!4631 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !94, line: 48, flags: DIFlagFwdDecl)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4198, file: !94, line: 791, baseType: !4633, size: 64, offset: 5696)
!4633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4634, size: 64)
!4634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !94, line: 597, size: 128, elements: !4635)
!4635 = !{!4636, !4637, !4638, !4639, !4640}
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4634, file: !94, line: 598, baseType: !116, size: 32)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4634, file: !94, line: 599, baseType: !125, size: 32, offset: 32)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4634, file: !94, line: 600, baseType: !130, size: 32, offset: 64)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4634, file: !94, line: 601, baseType: !899, size: 8, offset: 96)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4634, file: !94, line: 602, baseType: !899, size: 8, offset: 104)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4198, file: !94, line: 793, baseType: !135, size: 32, offset: 5760)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4198, file: !94, line: 795, baseType: !899, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4198, file: !94, line: 796, baseType: !899, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4198, file: !94, line: 797, baseType: !899, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4198, file: !94, line: 798, baseType: !899, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4198, file: !94, line: 799, baseType: !899, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !4194, file: !4190, line: 71, baseType: !109, size: 32, offset: 64)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "use_dma_alloc", scope: !4194, file: !4190, line: 73, baseType: !899, size: 8, offset: 96)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "use_dma32", scope: !4194, file: !4190, line: 74, baseType: !899, size: 8, offset: 104)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "caching", scope: !4194, file: !4190, line: 78, baseType: !4651, size: 14784, offset: 128)
!4651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4652, size: 14784, elements: !287)
!4652 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4194, file: !4190, line: 76, size: 4928, elements: !4653)
!4653 = !{!4654}
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "orders", scope: !4652, file: !4190, line: 77, baseType: !4655, size: 4928)
!4655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4189, size: 4928, elements: !4656)
!4656 = !{!4657}
!4657 = !DISubrange(count: 11)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !4189, file: !4190, line: 51, baseType: !7, size: 32, offset: 64)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "caching", scope: !4189, file: !4190, line: 52, baseType: !141, size: 32, offset: 96)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "shrinker_list", scope: !4189, file: !4190, line: 54, baseType: !186, size: 128, offset: 128)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4189, file: !4190, line: 56, baseType: !216, size: 32, offset: 256)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !4189, file: !4190, line: 57, baseType: !186, size: 128, offset: 320)
!4663 = !{!0, !4664, !4666, !4671, !4676, !4678, !4680, !4682, !4684, !4686, !4691, !4694, !4696, !4698, !4700, !4705, !4710, !4715, !4717, !4719, !4721, !4723, !4725, !4727, !4729, !4731, !4733, !4738, !4744, !4749, !4751, !4754, !4757, !4759, !4764, !4766, !4768, !4770, !4772}
!4664 = !DIGlobalVariableExpression(var: !4665, expr: !DIExpression())
!4665 = distinct !DIGlobalVariable(name: "__param_page_pool_size", scope: !2, file: !3, line: 64, type: !3910, isLocal: true, isDefinition: true, align: 64)
!4666 = !DIGlobalVariableExpression(var: !4667, expr: !DIExpression())
!4667 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_page_pool_sizetype330", scope: !2, file: !3, line: 64, type: !4668, isLocal: true, isDefinition: true, align: 8)
!4668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 272, elements: !4669)
!4669 = !{!4670}
!4670 = !DISubrange(count: 34)
!4671 = !DIGlobalVariableExpression(var: !4672, expr: !DIExpression())
!4672 = distinct !DIGlobalVariable(scope: null, file: !3, line: 439, type: !4673, isLocal: true, isDefinition: true)
!4673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 248, elements: !4674)
!4674 = !{!4675}
!4675 = !DISubrange(count: 31)
!4676 = !DIGlobalVariableExpression(var: !4677, expr: !DIExpression())
!4677 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ttm_pool_alloc336", scope: !2, file: !3, line: 530, type: !358, isLocal: true, isDefinition: true)
!4678 = !DIGlobalVariableExpression(var: !4679, expr: !DIExpression())
!4679 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ttm_pool_free337", scope: !2, file: !3, line: 547, type: !358, isLocal: true, isDefinition: true)
!4680 = !DIGlobalVariableExpression(var: !4681, expr: !DIExpression())
!4681 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ttm_pool_init338", scope: !2, file: !3, line: 585, type: !358, isLocal: true, isDefinition: true)
!4682 = !DIGlobalVariableExpression(var: !4683, expr: !DIExpression())
!4683 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ttm_pool_fini339", scope: !2, file: !3, line: 616, type: !358, isLocal: true, isDefinition: true)
!4684 = !DIGlobalVariableExpression(var: !4685, expr: !DIExpression())
!4685 = distinct !DIGlobalVariable(scope: null, file: !3, line: 720, type: !2792, isLocal: true, isDefinition: true)
!4686 = !DIGlobalVariableExpression(var: !4687, expr: !DIExpression())
!4687 = distinct !DIGlobalVariable(scope: null, file: !3, line: 728, type: !4688, isLocal: true, isDefinition: true)
!4688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 40, elements: !4689)
!4689 = !{!4690}
!4690 = !DISubrange(count: 5)
!4691 = !DIGlobalVariableExpression(var: !4692, expr: !DIExpression())
!4692 = distinct !DIGlobalVariable(scope: null, file: !3, line: 731, type: !4693, isLocal: true, isDefinition: true)
!4693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 24, elements: !287)
!4694 = !DIGlobalVariableExpression(var: !4695, expr: !DIExpression())
!4695 = distinct !DIGlobalVariable(scope: null, file: !3, line: 734, type: !4688, isLocal: true, isDefinition: true)
!4696 = !DIGlobalVariableExpression(var: !4697, expr: !DIExpression())
!4697 = distinct !DIGlobalVariable(scope: null, file: !3, line: 737, type: !4688, isLocal: true, isDefinition: true)
!4698 = !DIGlobalVariableExpression(var: !4699, expr: !DIExpression())
!4699 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ttm_pool_debugfs340", scope: !2, file: !3, line: 747, type: !358, isLocal: true, isDefinition: true)
!4700 = !DIGlobalVariableExpression(var: !4701, expr: !DIExpression())
!4701 = distinct !DIGlobalVariable(scope: null, file: !3, line: 794, type: !4702, isLocal: true, isDefinition: true)
!4702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 80, elements: !4703)
!4703 = !{!4704}
!4704 = !DISubrange(count: 10)
!4705 = !DIGlobalVariableExpression(var: !4706, expr: !DIExpression())
!4706 = distinct !DIGlobalVariable(scope: null, file: !3, line: 796, type: !4707, isLocal: true, isDefinition: true)
!4707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 136, elements: !4708)
!4708 = !{!4709}
!4709 = !DISubrange(count: 17)
!4710 = !DIGlobalVariableExpression(var: !4711, expr: !DIExpression())
!4711 = distinct !DIGlobalVariable(scope: null, file: !3, line: 803, type: !4712, isLocal: true, isDefinition: true)
!4712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 104, elements: !4713)
!4713 = !{!4714}
!4714 = !DISubrange(count: 13)
!4715 = !DIGlobalVariableExpression(var: !4716, expr: !DIExpression())
!4716 = distinct !DIGlobalVariable(name: "page_pool_size", scope: !2, file: !3, line: 61, type: !336, isLocal: true, isDefinition: true)
!4717 = !DIGlobalVariableExpression(var: !4718, expr: !DIExpression())
!4718 = distinct !DIGlobalVariable(name: "allocated_pages", scope: !2, file: !3, line: 66, type: !656, isLocal: true, isDefinition: true)
!4719 = !DIGlobalVariableExpression(var: !4720, expr: !DIExpression())
!4720 = distinct !DIGlobalVariable(name: "global_write_combined", scope: !2, file: !3, line: 68, type: !4655, isLocal: true, isDefinition: true)
!4721 = !DIGlobalVariableExpression(var: !4722, expr: !DIExpression())
!4722 = distinct !DIGlobalVariable(name: "global_uncached", scope: !2, file: !3, line: 69, type: !4655, isLocal: true, isDefinition: true)
!4723 = !DIGlobalVariableExpression(var: !4724, expr: !DIExpression())
!4724 = distinct !DIGlobalVariable(name: "global_dma32_write_combined", scope: !2, file: !3, line: 71, type: !4655, isLocal: true, isDefinition: true)
!4725 = !DIGlobalVariableExpression(var: !4726, expr: !DIExpression())
!4726 = distinct !DIGlobalVariable(name: "global_dma32_uncached", scope: !2, file: !3, line: 72, type: !4655, isLocal: true, isDefinition: true)
!4727 = !DIGlobalVariableExpression(var: !4728, expr: !DIExpression())
!4728 = distinct !DIGlobalVariable(name: "shrinker_lock", scope: !2, file: !3, line: 74, type: !216, isLocal: true, isDefinition: true)
!4729 = !DIGlobalVariableExpression(var: !4730, expr: !DIExpression())
!4730 = distinct !DIGlobalVariable(name: "shrinker_list", scope: !2, file: !3, line: 75, type: !186, isLocal: true, isDefinition: true)
!4731 = !DIGlobalVariableExpression(var: !4732, expr: !DIExpression())
!4732 = distinct !DIGlobalVariable(name: "mm_shrinker", scope: !2, file: !3, line: 76, type: !3271, isLocal: true, isDefinition: true)
!4733 = !DIGlobalVariableExpression(var: !4734, expr: !DIExpression())
!4734 = distinct !DIGlobalVariable(name: "__param_str_page_pool_size", scope: !2, file: !3, line: 64, type: !4735, isLocal: true, isDefinition: true)
!4735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 152, elements: !4736)
!4736 = !{!4737}
!4737 = !DISubrange(count: 19)
!4738 = !DIGlobalVariableExpression(var: !4739, expr: !DIExpression())
!4739 = distinct !DIGlobalVariable(scope: null, file: !4740, line: 223, type: !4741, isLocal: true, isDefinition: true)
!4740 = !DIFile(filename: "./include/linux/gfp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9839e6e1390b3a0e2df74dd95101fbc5")
!4741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 320, elements: !4742)
!4742 = !{!4743}
!4743 = !DISubrange(count: 40)
!4744 = !DIGlobalVariableExpression(var: !4745, expr: !DIExpression())
!4745 = distinct !DIGlobalVariable(scope: null, file: !171, line: 480, type: !4746, isLocal: true, isDefinition: true)
!4746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 168, elements: !4747)
!4747 = !{!4748}
!4748 = !DISubrange(count: 21)
!4749 = !DIGlobalVariableExpression(var: !4750, expr: !DIExpression())
!4750 = distinct !DIGlobalVariable(scope: null, file: !3, line: 661, type: !4693, isLocal: true, isDefinition: true)
!4751 = !DIGlobalVariableExpression(var: !4752, expr: !DIExpression())
!4752 = distinct !DIGlobalVariable(scope: null, file: !3, line: 663, type: !4753, isLocal: true, isDefinition: true)
!4753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 88, elements: !4656)
!4754 = !DIGlobalVariableExpression(var: !4755, expr: !DIExpression())
!4755 = distinct !DIGlobalVariable(scope: null, file: !3, line: 664, type: !4756, isLocal: true, isDefinition: true)
!4756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 16, elements: !2548)
!4757 = !DIGlobalVariableExpression(var: !4758, expr: !DIExpression())
!4758 = distinct !DIGlobalVariable(scope: null, file: !3, line: 674, type: !4688, isLocal: true, isDefinition: true)
!4759 = !DIGlobalVariableExpression(var: !4760, expr: !DIExpression())
!4760 = distinct !DIGlobalVariable(scope: null, file: !3, line: 681, type: !4761, isLocal: true, isDefinition: true)
!4761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 184, elements: !4762)
!4762 = !{!4763}
!4763 = !DISubrange(count: 23)
!4764 = !DIGlobalVariableExpression(var: !4765, expr: !DIExpression())
!4765 = distinct !DIGlobalVariable(name: "ttm_pool_debugfs_globals_fops", scope: !2, file: !3, line: 705, type: !1019, isLocal: true, isDefinition: true)
!4766 = !DIGlobalVariableExpression(var: !4767, expr: !DIExpression())
!4767 = distinct !DIGlobalVariable(scope: null, file: !3, line: 695, type: !2792, isLocal: true, isDefinition: true)
!4768 = !DIGlobalVariableExpression(var: !4769, expr: !DIExpression())
!4769 = distinct !DIGlobalVariable(scope: null, file: !3, line: 697, type: !2792, isLocal: true, isDefinition: true)
!4770 = !DIGlobalVariableExpression(var: !4771, expr: !DIExpression())
!4771 = distinct !DIGlobalVariable(name: "ttm_pool_debugfs_shrink_fops", scope: !2, file: !3, line: 761, type: !1019, isLocal: true, isDefinition: true)
!4772 = !DIGlobalVariableExpression(var: !4773, expr: !DIExpression())
!4773 = distinct !DIGlobalVariable(scope: null, file: !3, line: 755, type: !4774, isLocal: true, isDefinition: true)
!4774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 72, elements: !4775)
!4775 = !{!4776}
!4776 = !DISubrange(count: 9)
!4777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 496, elements: !4778)
!4778 = !{!4779}
!4779 = !DISubrange(count: 62)
!4780 = !{!"rsp"}
!4781 = !{i32 7, !"Dwarf Version", i32 5}
!4782 = !{i32 2, !"Debug Info Version", i32 3}
!4783 = !{i32 1, !"wchar_size", i32 2}
!4784 = !{i32 8, !"cf-protection-branch", i32 1}
!4785 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4786 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4787 = !{i32 1, !"Code Model", i32 2}
!4788 = !{i32 1, !"override-stack-alignment", i32 8}
!4789 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4790 = distinct !DISubprogram(name: "ttm_pool_alloc", scope: !3, file: !3, line: 425, type: !4791, scopeLine: 427, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4854)
!4791 = !DISubroutineType(types: !4792)
!4792 = !{!109, !4193, !4793, !4821}
!4793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4794, size: 64)
!4794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_tt", file: !4795, line: 46, size: 384, elements: !4796)
!4795 = !DIFile(filename: "./include/drm/ttm/ttm_tt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a8611f3b3c85a1444200cb28e58947d5")
!4796 = !{!4797, !4798, !4799, !4800, !4817, !4819, !4820}
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !4794, file: !4795, line: 48, baseType: !3004, size: 64)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "page_flags", scope: !4794, file: !4795, line: 99, baseType: !864, size: 32, offset: 64)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "num_pages", scope: !4794, file: !4795, line: 101, baseType: !864, size: 32, offset: 96)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "sg", scope: !4794, file: !4795, line: 103, baseType: !4801, size: 64, offset: 128)
!4801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4802, size: 64)
!4802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sg_table", file: !4803, line: 39, size: 128, elements: !4804)
!4803 = !DIFile(filename: "./include/linux/scatterlist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc5d709d01f4c0a80a46fc78d63fc593")
!4804 = !{!4805, !4815, !4816}
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "sgl", scope: !4802, file: !4803, line: 40, baseType: !4806, size: 64)
!4806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4807, size: 64)
!4807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !4803, line: 11, size: 256, elements: !4808)
!4808 = !{!4809, !4810, !4811, !4812, !4813, !4814}
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "page_link", scope: !4807, file: !4803, line: 12, baseType: !336, size: 64)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4807, file: !4803, line: 13, baseType: !7, size: 32, offset: 64)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4807, file: !4803, line: 14, baseType: !7, size: 32, offset: 96)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address", scope: !4807, file: !4803, line: 15, baseType: !4182, size: 64, offset: 128)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "dma_length", scope: !4807, file: !4803, line: 17, baseType: !7, size: 32, offset: 192)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "dma_flags", scope: !4807, file: !4803, line: 20, baseType: !7, size: 32, offset: 224)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "nents", scope: !4802, file: !4803, line: 41, baseType: !7, size: 32, offset: 64)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "orig_nents", scope: !4802, file: !4803, line: 42, baseType: !7, size: 32, offset: 96)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address", scope: !4794, file: !4795, line: 105, baseType: !4818, size: 64, offset: 192)
!4818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4182, size: 64)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "swap_storage", scope: !4794, file: !4795, line: 107, baseType: !1027, size: 64, offset: 256)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "caching", scope: !4794, file: !4795, line: 112, baseType: !141, size: 32, offset: 320)
!4821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4822, size: 64)
!4822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_operation_ctx", file: !4823, line: 178, size: 192, elements: !4824)
!4823 = !DIFile(filename: "./include/drm/ttm/ttm_bo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2f81fca0b8181781f1c758cd81feeff")
!4824 = !{!4825, !4826, !4827, !4828, !4829, !4830, !4852}
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "interruptible", scope: !4822, file: !4823, line: 179, baseType: !899, size: 8)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "no_wait_gpu", scope: !4822, file: !4823, line: 180, baseType: !899, size: 8, offset: 8)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_retry_mayfail", scope: !4822, file: !4823, line: 181, baseType: !899, size: 8, offset: 16)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "allow_res_evict", scope: !4822, file: !4823, line: 182, baseType: !899, size: 8, offset: 24)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "force_alloc", scope: !4822, file: !4823, line: 183, baseType: !899, size: 8, offset: 32)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !4822, file: !4823, line: 184, baseType: !4831, size: 64, offset: 64)
!4831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4832, size: 64)
!4832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_resv", file: !4833, line: 155, size: 384, elements: !4834)
!4833 = !DIFile(filename: "./include/linux/dma-resv.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "33eb7b47491fa42a2c4bcb5c661d5780")
!4834 = !{!4835, !4849}
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4832, file: !4833, line: 166, baseType: !4836, size: 320)
!4836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_mutex", file: !4837, line: 47, size: 320, elements: !4838)
!4837 = !DIFile(filename: "./include/linux/ww_mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a05845e2a030669ed50c8f228f8c6582")
!4838 = !{!4839, !4840}
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4836, file: !4837, line: 48, baseType: !652, size: 256)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4836, file: !4837, line: 49, baseType: !4841, size: 64, offset: 256)
!4841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4842, size: 64)
!4842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_acquire_ctx", file: !4837, line: 55, size: 192, elements: !4843)
!4843 = !{!4844, !4845, !4846, !4847, !4848}
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4842, file: !4837, line: 56, baseType: !2039, size: 64)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "stamp", scope: !4842, file: !4837, line: 57, baseType: !336, size: 64, offset: 64)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "acquired", scope: !4842, file: !4837, line: 58, baseType: !7, size: 32, offset: 128)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "wounded", scope: !4842, file: !4837, line: 59, baseType: !256, size: 16, offset: 160)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "is_wait_die", scope: !4842, file: !4837, line: 60, baseType: !256, size: 16, offset: 176)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "fences", scope: !4832, file: !4833, line: 178, baseType: !4850, size: 64, offset: 320)
!4850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4851, size: 64)
!4851 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_resv_list", file: !4833, line: 50, flags: DIFlagFwdDecl)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_moved", scope: !4822, file: !4823, line: 185, baseType: !4853, size: 64, offset: 128)
!4853 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !187, line: 113, baseType: !440)
!4854 = !{!4855, !4856, !4857, !4858, !4859, !4860, !4861, !4862, !4863, !4864, !4865, !4866, !4867, !4868, !4870, !4873, !4875, !4878, !4881, !4882, !4885, !4887, !4888, !4889}
!4855 = !DILocalVariable(name: "pool", arg: 1, scope: !4790, file: !3, line: 425, type: !4193)
!4856 = !DILocalVariable(name: "tt", arg: 2, scope: !4790, file: !3, line: 425, type: !4793)
!4857 = !DILocalVariable(name: "ctx", arg: 3, scope: !4790, file: !3, line: 426, type: !4821)
!4858 = !DILocalVariable(name: "num_pages", scope: !4790, file: !3, line: 428, type: !336)
!4859 = !DILocalVariable(name: "dma_addr", scope: !4790, file: !3, line: 429, type: !4818)
!4860 = !DILocalVariable(name: "caching", scope: !4790, file: !3, line: 430, type: !3004)
!4861 = !DILocalVariable(name: "pages", scope: !4790, file: !3, line: 431, type: !3004)
!4862 = !DILocalVariable(name: "page_caching", scope: !4790, file: !3, line: 432, type: !141)
!4863 = !DILocalVariable(name: "gfp_flags", scope: !4790, file: !3, line: 433, type: !1490)
!4864 = !DILocalVariable(name: "caching_divide", scope: !4790, file: !3, line: 434, type: !336)
!4865 = !DILocalVariable(name: "order", scope: !4790, file: !3, line: 435, type: !7)
!4866 = !DILocalVariable(name: "p", scope: !4790, file: !3, line: 436, type: !1200)
!4867 = !DILocalVariable(name: "r", scope: !4790, file: !3, line: 437, type: !109)
!4868 = !DILocalVariable(name: "__ret_warn_on", scope: !4869, file: !3, line: 439, type: !109)
!4869 = distinct !DILexicalBlock(scope: !4790, file: !3, line: 439, column: 2)
!4870 = !DILocalVariable(name: "__flags", scope: !4871, file: !3, line: 439, type: !109)
!4871 = distinct !DILexicalBlock(scope: !4872, file: !3, line: 439, column: 2)
!4872 = distinct !DILexicalBlock(scope: !4869, file: !3, line: 439, column: 2)
!4873 = !DILocalVariable(name: "__ret_warn_on", scope: !4874, file: !3, line: 440, type: !109)
!4874 = distinct !DILexicalBlock(scope: !4790, file: !3, line: 440, column: 2)
!4875 = !DILocalVariable(name: "__flags", scope: !4876, file: !3, line: 440, type: !109)
!4876 = distinct !DILexicalBlock(scope: !4877, file: !3, line: 440, column: 2)
!4877 = distinct !DILexicalBlock(scope: !4874, file: !3, line: 440, column: 2)
!4878 = !DILocalVariable(name: "__UNIQUE_ID___x332", scope: !4879, file: !3, line: 453, type: !7)
!4879 = distinct !DILexicalBlock(scope: !4880, file: !3, line: 453, column: 15)
!4880 = distinct !DILexicalBlock(scope: !4790, file: !3, line: 453, column: 2)
!4881 = !DILocalVariable(name: "__UNIQUE_ID___y333", scope: !4879, file: !3, line: 453, type: !7)
!4882 = !DILocalVariable(name: "pt", scope: !4883, file: !3, line: 456, type: !4188)
!4883 = distinct !DILexicalBlock(scope: !4884, file: !3, line: 455, column: 61)
!4884 = distinct !DILexicalBlock(scope: !4880, file: !3, line: 453, column: 2)
!4885 = !DILocalVariable(name: "__UNIQUE_ID___x334", scope: !4886, file: !3, line: 455, type: !7)
!4886 = distinct !DILexicalBlock(scope: !4884, file: !3, line: 455, column: 15)
!4887 = !DILocalVariable(name: "__UNIQUE_ID___y335", scope: !4886, file: !3, line: 455, type: !7)
!4888 = !DILabel(scope: !4790, name: "error_free_page", file: !3, line: 519)
!4889 = !DILabel(scope: !4790, name: "error_free_all", file: !3, line: 522)
!4890 = !DILocation(line: 425, column: 37, scope: !4790)
!4891 = !DILocation(line: 425, column: 58, scope: !4790)
!4892 = !DILocation(line: 426, column: 32, scope: !4790)
!4893 = !DILocation(line: 428, column: 2, scope: !4790)
!4894 = !DILocation(line: 428, column: 10, scope: !4790)
!4895 = !DILocation(line: 428, column: 22, scope: !4790)
!4896 = !DILocation(line: 428, column: 26, scope: !4790)
!4897 = !DILocation(line: 429, column: 2, scope: !4790)
!4898 = !DILocation(line: 429, column: 14, scope: !4790)
!4899 = !DILocation(line: 429, column: 25, scope: !4790)
!4900 = !DILocation(line: 429, column: 29, scope: !4790)
!4901 = !DILocation(line: 430, column: 2, scope: !4790)
!4902 = !DILocation(line: 430, column: 16, scope: !4790)
!4903 = !DILocation(line: 430, column: 26, scope: !4790)
!4904 = !DILocation(line: 430, column: 30, scope: !4790)
!4905 = !DILocation(line: 431, column: 2, scope: !4790)
!4906 = !DILocation(line: 431, column: 16, scope: !4790)
!4907 = !DILocation(line: 431, column: 24, scope: !4790)
!4908 = !DILocation(line: 431, column: 28, scope: !4790)
!4909 = !DILocation(line: 432, column: 2, scope: !4790)
!4910 = !DILocation(line: 432, column: 19, scope: !4790)
!4911 = !DILocation(line: 433, column: 2, scope: !4790)
!4912 = !DILocation(line: 433, column: 8, scope: !4790)
!4913 = !DILocation(line: 434, column: 2, scope: !4790)
!4914 = !DILocation(line: 434, column: 10, scope: !4790)
!4915 = !DILocation(line: 435, column: 2, scope: !4790)
!4916 = !DILocation(line: 435, column: 15, scope: !4790)
!4917 = !DILocation(line: 436, column: 2, scope: !4790)
!4918 = !DILocation(line: 436, column: 15, scope: !4790)
!4919 = !DILocation(line: 437, column: 2, scope: !4790)
!4920 = !DILocation(line: 437, column: 6, scope: !4790)
!4921 = !DILocation(line: 439, column: 2, scope: !4869)
!4922 = !DILocation(line: 439, column: 2, scope: !4872)
!4923 = !DILocation(line: 439, column: 2, scope: !4871)
!4924 = !DILocation(line: 439, column: 2, scope: !4925)
!4925 = distinct !DILexicalBlock(scope: !4871, file: !3, line: 439, column: 2)
!4926 = !DILocation(line: 439, column: 2, scope: !4927)
!4927 = distinct !DILexicalBlock(scope: !4871, file: !3, line: 439, column: 2)
!4928 = !{i64 2155233110, i64 2155233139, i64 2155233185, i64 2155233243, i64 2155233297, i64 2155233351, i64 2155233406, i64 2155233437, i64 2155233745, i64 2155233751, i64 2155233798, i64 2155233821, i64 2155233847}
!4929 = !DILocation(line: 439, column: 2, scope: !4930)
!4930 = distinct !DILexicalBlock(scope: !4871, file: !3, line: 439, column: 2)
!4931 = !DILocation(line: 439, column: 2, scope: !4790)
!4932 = !DILocation(line: 440, column: 2, scope: !4874)
!4933 = !DILocation(line: 0, scope: !4874)
!4934 = !DILocation(line: 440, column: 2, scope: !4877)
!4935 = !DILocation(line: 440, column: 2, scope: !4876)
!4936 = !DILocation(line: 440, column: 2, scope: !4937)
!4937 = distinct !DILexicalBlock(scope: !4876, file: !3, line: 440, column: 2)
!4938 = !DILocation(line: 440, column: 2, scope: !4939)
!4939 = distinct !DILexicalBlock(scope: !4876, file: !3, line: 440, column: 2)
!4940 = !{i64 2155234626, i64 2155234655, i64 2155234701, i64 2155234759, i64 2155234813, i64 2155234867, i64 2155234922, i64 2155234953, i64 2155235261, i64 2155235267, i64 2155235314, i64 2155235337, i64 2155235363}
!4941 = !DILocation(line: 440, column: 2, scope: !4942)
!4942 = distinct !DILexicalBlock(scope: !4876, file: !3, line: 440, column: 2)
!4943 = !DILocation(line: 440, column: 2, scope: !4790)
!4944 = !DILocation(line: 442, column: 6, scope: !4945)
!4945 = distinct !DILexicalBlock(scope: !4790, file: !3, line: 442, column: 6)
!4946 = !DILocation(line: 442, column: 10, scope: !4945)
!4947 = !DILocation(line: 442, column: 21, scope: !4945)
!4948 = !DILocation(line: 442, column: 6, scope: !4790)
!4949 = !DILocation(line: 443, column: 13, scope: !4945)
!4950 = !DILocation(line: 443, column: 3, scope: !4945)
!4951 = !DILocation(line: 445, column: 6, scope: !4952)
!4952 = distinct !DILexicalBlock(scope: !4790, file: !3, line: 445, column: 6)
!4953 = !DILocation(line: 445, column: 11, scope: !4952)
!4954 = !{i8 0, i8 2}
!4955 = !DILocation(line: 445, column: 6, scope: !4790)
!4956 = !DILocation(line: 446, column: 13, scope: !4952)
!4957 = !DILocation(line: 446, column: 3, scope: !4952)
!4958 = !DILocation(line: 448, column: 6, scope: !4959)
!4959 = distinct !DILexicalBlock(scope: !4790, file: !3, line: 448, column: 6)
!4960 = !DILocation(line: 448, column: 12, scope: !4959)
!4961 = !DILocation(line: 448, column: 6, scope: !4790)
!4962 = !DILocation(line: 449, column: 13, scope: !4959)
!4963 = !DILocation(line: 449, column: 3, scope: !4959)
!4964 = !DILocation(line: 451, column: 13, scope: !4959)
!4965 = !DILocation(line: 453, column: 15, scope: !4879)
!4966 = !DILocation(line: 453, column: 15, scope: !4880)
!4967 = !DILocation(line: 453, column: 13, scope: !4880)
!4968 = !DILocation(line: 453, column: 7, scope: !4880)
!4969 = !DILocation(line: 454, column: 7, scope: !4884)
!4970 = !DILocation(line: 453, column: 2, scope: !4880)
!4971 = !DILocation(line: 456, column: 3, scope: !4883)
!4972 = !DILocation(line: 456, column: 25, scope: !4883)
!4973 = !DILocation(line: 458, column: 18, scope: !4883)
!4974 = !DILocation(line: 458, column: 22, scope: !4883)
!4975 = !DILocation(line: 458, column: 16, scope: !4883)
!4976 = !DILocation(line: 459, column: 29, scope: !4883)
!4977 = !DILocation(line: 459, column: 35, scope: !4883)
!4978 = !DILocation(line: 459, column: 39, scope: !4883)
!4979 = !DILocation(line: 459, column: 48, scope: !4883)
!4980 = !DILocation(line: 459, column: 8, scope: !4883)
!4981 = !DILocation(line: 459, column: 6, scope: !4883)
!4982 = !DILocation(line: 460, column: 7, scope: !4883)
!4983 = !DILocation(line: 460, column: 31, scope: !4883)
!4984 = !DILocation(line: 460, column: 12, scope: !4883)
!4985 = !DILocation(line: 460, column: 5, scope: !4883)
!4986 = !DILocation(line: 461, column: 7, scope: !4987)
!4987 = distinct !DILexicalBlock(scope: !4883, file: !3, line: 461, column: 7)
!4988 = !DILocation(line: 461, column: 7, scope: !4883)
!4989 = !DILocation(line: 462, column: 31, scope: !4990)
!4990 = distinct !DILexicalBlock(scope: !4987, file: !3, line: 461, column: 10)
!4991 = !DILocation(line: 462, column: 40, scope: !4990)
!4992 = !DILocation(line: 463, column: 10, scope: !4990)
!4993 = !DILocation(line: 463, column: 14, scope: !4990)
!4994 = !DILocation(line: 462, column: 8, scope: !4990)
!4995 = !DILocation(line: 462, column: 6, scope: !4990)
!4996 = !DILocation(line: 464, column: 8, scope: !4997)
!4997 = distinct !DILexicalBlock(scope: !4990, file: !3, line: 464, column: 8)
!4998 = !DILocation(line: 464, column: 8, scope: !4990)
!4999 = !DILocation(line: 465, column: 5, scope: !4997)
!5000 = !DILocation(line: 467, column: 14, scope: !4990)
!5001 = !DILocation(line: 467, column: 12, scope: !4990)
!5002 = !DILocation(line: 468, column: 4, scope: !4990)
!5003 = !DILocation(line: 469, column: 33, scope: !5004)
!5004 = distinct !DILexicalBlock(scope: !4990, file: !3, line: 468, column: 7)
!5005 = !DILocation(line: 469, column: 39, scope: !5004)
!5006 = !DILocation(line: 469, column: 46, scope: !5004)
!5007 = !DILocation(line: 469, column: 9, scope: !5004)
!5008 = !DILocation(line: 469, column: 7, scope: !5004)
!5009 = !DILocation(line: 473, column: 9, scope: !5010)
!5010 = distinct !DILexicalBlock(scope: !5004, file: !3, line: 473, column: 9)
!5011 = !DILocation(line: 473, column: 9, scope: !5004)
!5012 = !DILocation(line: 474, column: 6, scope: !5010)
!5013 = !DILocation(line: 476, column: 15, scope: !5004)
!5014 = !DILocation(line: 476, column: 13, scope: !5004)
!5015 = !DILocation(line: 477, column: 9, scope: !5016)
!5016 = distinct !DILexicalBlock(scope: !5004, file: !3, line: 477, column: 9)
!5017 = !DILocation(line: 477, column: 27, scope: !5016)
!5018 = !DILocation(line: 477, column: 24, scope: !5016)
!5019 = !DILocation(line: 477, column: 21, scope: !5016)
!5020 = !DILocation(line: 477, column: 19, scope: !5016)
!5021 = !DILocation(line: 477, column: 9, scope: !5004)
!5022 = !DILocation(line: 478, column: 6, scope: !5016)
!5023 = !DILocation(line: 480, column: 28, scope: !5004)
!5024 = !DILocation(line: 480, column: 9, scope: !5004)
!5025 = !DILocation(line: 480, column: 7, scope: !5004)
!5026 = !DILocation(line: 481, column: 4, scope: !5004)
!5027 = !DILocation(line: 481, column: 13, scope: !4990)
!5028 = distinct !{!5028, !5002, !5029, !5030, !5031}
!5029 = !DILocation(line: 481, column: 14, scope: !4990)
!5030 = !{!"llvm.loop.mustprogress"}
!5031 = !{!"llvm.loop.unroll.disable"}
!5032 = !DILocation(line: 482, column: 3, scope: !4990)
!5033 = !DILocation(line: 484, column: 16, scope: !4883)
!5034 = !DILocation(line: 485, column: 3, scope: !4883)
!5035 = !DILocation(line: 485, column: 10, scope: !4883)
!5036 = !DILocation(line: 485, column: 29, scope: !4883)
!5037 = !DILocation(line: 485, column: 26, scope: !4883)
!5038 = !DILocation(line: 485, column: 23, scope: !4883)
!5039 = !DILocation(line: 485, column: 20, scope: !4883)
!5040 = !DILocation(line: 485, column: 36, scope: !4883)
!5041 = !DILocation(line: 486, column: 35, scope: !4883)
!5042 = !DILocation(line: 486, column: 41, scope: !4883)
!5043 = !DILocation(line: 486, column: 52, scope: !4883)
!5044 = !DILocation(line: 486, column: 15, scope: !4883)
!5045 = !DILocation(line: 486, column: 13, scope: !4883)
!5046 = !DILocation(line: 0, scope: !4883)
!5047 = !DILocation(line: 488, column: 20, scope: !5048)
!5048 = distinct !DILexicalBlock(scope: !5049, file: !3, line: 488, column: 8)
!5049 = distinct !DILexicalBlock(scope: !4883, file: !3, line: 486, column: 61)
!5050 = !DILocation(line: 488, column: 8, scope: !5048)
!5051 = !DILocation(line: 488, column: 8, scope: !5049)
!5052 = !DILocation(line: 489, column: 32, scope: !5053)
!5053 = distinct !DILexicalBlock(scope: !5048, file: !3, line: 488, column: 24)
!5054 = !DILocation(line: 489, column: 41, scope: !5053)
!5055 = !DILocation(line: 490, column: 11, scope: !5053)
!5056 = !DILocation(line: 490, column: 15, scope: !5053)
!5057 = !DILocation(line: 489, column: 9, scope: !5053)
!5058 = !DILocation(line: 489, column: 7, scope: !5053)
!5059 = !DILocation(line: 491, column: 9, scope: !5060)
!5060 = distinct !DILexicalBlock(scope: !5053, file: !3, line: 491, column: 9)
!5061 = !DILocation(line: 491, column: 9, scope: !5053)
!5062 = !DILocation(line: 492, column: 6, scope: !5060)
!5063 = !DILocation(line: 493, column: 15, scope: !5053)
!5064 = !DILocation(line: 493, column: 13, scope: !5053)
!5065 = !DILocation(line: 494, column: 4, scope: !5053)
!5066 = !DILocation(line: 495, column: 32, scope: !5049)
!5067 = !DILocation(line: 495, column: 38, scope: !5049)
!5068 = !DILocation(line: 495, column: 45, scope: !5049)
!5069 = !DILocation(line: 495, column: 8, scope: !5049)
!5070 = !DILocation(line: 495, column: 6, scope: !5049)
!5071 = !DILocation(line: 497, column: 8, scope: !5072)
!5072 = distinct !DILexicalBlock(scope: !5049, file: !3, line: 497, column: 8)
!5073 = !DILocation(line: 497, column: 8, scope: !5049)
!5074 = !DILocation(line: 498, column: 5, scope: !5072)
!5075 = !DILocation(line: 499, column: 20, scope: !5076)
!5076 = distinct !DILexicalBlock(scope: !5049, file: !3, line: 499, column: 8)
!5077 = !DILocation(line: 499, column: 8, scope: !5076)
!5078 = !DILocation(line: 499, column: 8, scope: !5049)
!5079 = !DILocation(line: 500, column: 15, scope: !5076)
!5080 = !DILocation(line: 500, column: 13, scope: !5076)
!5081 = !DILocation(line: 500, column: 5, scope: !5076)
!5082 = distinct !{!5082, !5034, !5083, !5030, !5031}
!5083 = !DILocation(line: 501, column: 3, scope: !4883)
!5084 = !DILocation(line: 503, column: 8, scope: !5085)
!5085 = distinct !DILexicalBlock(scope: !4883, file: !3, line: 503, column: 7)
!5086 = !DILocation(line: 503, column: 7, scope: !4883)
!5087 = !DILocation(line: 504, column: 8, scope: !5088)
!5088 = distinct !DILexicalBlock(scope: !5089, file: !3, line: 504, column: 8)
!5089 = distinct !DILexicalBlock(scope: !5085, file: !3, line: 503, column: 11)
!5090 = !DILocation(line: 504, column: 8, scope: !5089)
!5091 = !DILocation(line: 505, column: 5, scope: !5092)
!5092 = distinct !DILexicalBlock(scope: !5088, file: !3, line: 504, column: 15)
!5093 = !DILocation(line: 506, column: 5, scope: !5092)
!5094 = !DILocation(line: 508, column: 6, scope: !5089)
!5095 = !DILocation(line: 509, column: 4, scope: !5089)
!5096 = !DILocation(line: 511, column: 2, scope: !4884)
!5097 = !DILocation(line: 511, column: 2, scope: !4883)
!5098 = !DILocation(line: 455, column: 15, scope: !4886)
!5099 = !DILocation(line: 455, column: 15, scope: !4884)
!5100 = !DILocation(line: 455, column: 13, scope: !4884)
!5101 = !DILocation(line: 453, column: 2, scope: !4884)
!5102 = distinct !{!5102, !4970, !5103, !5030, !5031}
!5103 = !DILocation(line: 511, column: 2, scope: !4880)
!5104 = !DILocation(line: 513, column: 29, scope: !4790)
!5105 = !DILocation(line: 513, column: 38, scope: !4790)
!5106 = !DILocation(line: 513, column: 45, scope: !4790)
!5107 = !DILocation(line: 513, column: 49, scope: !4790)
!5108 = !DILocation(line: 513, column: 6, scope: !4790)
!5109 = !DILocation(line: 513, column: 4, scope: !4790)
!5110 = !DILocation(line: 514, column: 6, scope: !5111)
!5111 = distinct !DILexicalBlock(scope: !4790, file: !3, line: 514, column: 6)
!5112 = !DILocation(line: 514, column: 6, scope: !4790)
!5113 = !DILocation(line: 515, column: 3, scope: !5111)
!5114 = !DILocation(line: 517, column: 2, scope: !4790)
!5115 = !DILocation(line: 519, column: 1, scope: !4790)
!5116 = !DILocation(line: 520, column: 21, scope: !4790)
!5117 = !DILocation(line: 520, column: 27, scope: !4790)
!5118 = !DILocation(line: 520, column: 41, scope: !4790)
!5119 = !DILocation(line: 520, column: 48, scope: !4790)
!5120 = !DILocation(line: 520, column: 2, scope: !4790)
!5121 = !DILocation(line: 522, column: 1, scope: !4790)
!5122 = !DILocation(line: 523, column: 14, scope: !4790)
!5123 = !DILocation(line: 523, column: 18, scope: !4790)
!5124 = !DILocation(line: 523, column: 30, scope: !4790)
!5125 = !DILocation(line: 523, column: 28, scope: !4790)
!5126 = !DILocation(line: 523, column: 12, scope: !4790)
!5127 = !DILocation(line: 524, column: 19, scope: !4790)
!5128 = !DILocation(line: 524, column: 29, scope: !4790)
!5129 = !DILocation(line: 524, column: 33, scope: !4790)
!5130 = !DILocation(line: 524, column: 27, scope: !4790)
!5131 = !DILocation(line: 524, column: 17, scope: !4790)
!5132 = !DILocation(line: 525, column: 22, scope: !4790)
!5133 = !DILocation(line: 525, column: 28, scope: !4790)
!5134 = !DILocation(line: 525, column: 32, scope: !4790)
!5135 = !DILocation(line: 525, column: 36, scope: !4790)
!5136 = !DILocation(line: 525, column: 48, scope: !4790)
!5137 = !DILocation(line: 525, column: 2, scope: !4790)
!5138 = !DILocation(line: 526, column: 22, scope: !4790)
!5139 = !DILocation(line: 526, column: 28, scope: !4790)
!5140 = !DILocation(line: 526, column: 44, scope: !4790)
!5141 = !DILocation(line: 526, column: 60, scope: !4790)
!5142 = !DILocation(line: 526, column: 2, scope: !4790)
!5143 = !DILocation(line: 528, column: 9, scope: !4790)
!5144 = !DILocation(line: 528, column: 2, scope: !4790)
!5145 = !DILocation(line: 529, column: 1, scope: !4790)
!5146 = distinct !DISubprogram(name: "ttm_tt_is_populated", scope: !4795, file: !4795, line: 127, type: !5147, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5149)
!5147 = !DISubroutineType(types: !5148)
!5148 = !{!899, !4793}
!5149 = !{!5150}
!5150 = !DILocalVariable(name: "tt", arg: 1, scope: !5146, file: !4795, line: 127, type: !4793)
!5151 = !DILocation(line: 127, column: 55, scope: !5146)
!5152 = !DILocation(line: 129, column: 9, scope: !5146)
!5153 = !DILocation(line: 129, column: 13, scope: !5146)
!5154 = !DILocation(line: 129, column: 24, scope: !5146)
!5155 = !DILocation(line: 129, column: 2, scope: !5146)
!5156 = distinct !DISubprogram(name: "__fls", scope: !5157, file: !5157, line: 294, type: !5158, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5160)
!5157 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!5158 = !DISubroutineType(types: !5159)
!5159 = !{!336, !336}
!5160 = !{!5161}
!5161 = !DILocalVariable(name: "word", arg: 1, scope: !5156, file: !5157, line: 294, type: !336)
!5162 = !DILocation(line: 294, column: 58, scope: !5156)
!5163 = !DILocation(line: 298, column: 14, scope: !5156)
!5164 = !DILocation(line: 296, column: 2, scope: !5156)
!5165 = !{i64 857583}
!5166 = !DILocation(line: 299, column: 9, scope: !5156)
!5167 = !DILocation(line: 299, column: 2, scope: !5156)
!5168 = distinct !DISubprogram(name: "ttm_pool_select_type", scope: !3, file: !3, line: 286, type: !5169, scopeLine: 289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5171)
!5169 = !DISubroutineType(types: !5170)
!5170 = !{!4188, !4193, !141, !7}
!5171 = !{!5172, !5173, !5174}
!5172 = !DILocalVariable(name: "pool", arg: 1, scope: !5168, file: !3, line: 286, type: !4193)
!5173 = !DILocalVariable(name: "caching", arg: 2, scope: !5168, file: !3, line: 287, type: !141)
!5174 = !DILocalVariable(name: "order", arg: 3, scope: !5168, file: !3, line: 288, type: !7)
!5175 = !DILocation(line: 286, column: 68, scope: !5168)
!5176 = !DILocation(line: 287, column: 26, scope: !5168)
!5177 = !DILocation(line: 288, column: 22, scope: !5168)
!5178 = !DILocation(line: 290, column: 6, scope: !5179)
!5179 = distinct !DILexicalBlock(scope: !5168, file: !3, line: 290, column: 6)
!5180 = !DILocation(line: 290, column: 12, scope: !5179)
!5181 = !DILocation(line: 290, column: 6, scope: !5168)
!5182 = !DILocation(line: 291, column: 11, scope: !5179)
!5183 = !DILocation(line: 291, column: 17, scope: !5179)
!5184 = !DILocation(line: 291, column: 25, scope: !5179)
!5185 = !DILocation(line: 291, column: 34, scope: !5179)
!5186 = !DILocation(line: 291, column: 41, scope: !5179)
!5187 = !DILocation(line: 291, column: 3, scope: !5179)
!5188 = !DILocation(line: 294, column: 10, scope: !5168)
!5189 = !DILocation(line: 294, column: 2, scope: !5168)
!5190 = !DILocation(line: 296, column: 7, scope: !5191)
!5191 = distinct !DILexicalBlock(scope: !5192, file: !3, line: 296, column: 7)
!5192 = distinct !DILexicalBlock(scope: !5168, file: !3, line: 294, column: 19)
!5193 = !DILocation(line: 296, column: 13, scope: !5191)
!5194 = !DILocation(line: 296, column: 17, scope: !5191)
!5195 = !DILocation(line: 296, column: 7, scope: !5192)
!5196 = !DILocation(line: 297, column: 12, scope: !5191)
!5197 = !DILocation(line: 297, column: 18, scope: !5191)
!5198 = !DILocation(line: 297, column: 26, scope: !5191)
!5199 = !DILocation(line: 297, column: 35, scope: !5191)
!5200 = !DILocation(line: 297, column: 42, scope: !5191)
!5201 = !DILocation(line: 297, column: 4, scope: !5191)
!5202 = !DILocation(line: 299, column: 7, scope: !5203)
!5203 = distinct !DILexicalBlock(scope: !5192, file: !3, line: 299, column: 7)
!5204 = !DILocation(line: 299, column: 13, scope: !5203)
!5205 = !DILocation(line: 299, column: 7, scope: !5192)
!5206 = !DILocation(line: 300, column: 40, scope: !5203)
!5207 = !DILocation(line: 300, column: 12, scope: !5203)
!5208 = !DILocation(line: 300, column: 4, scope: !5203)
!5209 = !DILocation(line: 302, column: 33, scope: !5192)
!5210 = !DILocation(line: 302, column: 11, scope: !5192)
!5211 = !DILocation(line: 302, column: 3, scope: !5192)
!5212 = !DILocation(line: 304, column: 7, scope: !5213)
!5213 = distinct !DILexicalBlock(scope: !5192, file: !3, line: 304, column: 7)
!5214 = !DILocation(line: 304, column: 13, scope: !5213)
!5215 = !DILocation(line: 304, column: 17, scope: !5213)
!5216 = !DILocation(line: 304, column: 7, scope: !5192)
!5217 = !DILocation(line: 305, column: 12, scope: !5213)
!5218 = !DILocation(line: 305, column: 18, scope: !5213)
!5219 = !DILocation(line: 305, column: 26, scope: !5213)
!5220 = !DILocation(line: 305, column: 35, scope: !5213)
!5221 = !DILocation(line: 305, column: 42, scope: !5213)
!5222 = !DILocation(line: 305, column: 4, scope: !5213)
!5223 = !DILocation(line: 307, column: 7, scope: !5224)
!5224 = distinct !DILexicalBlock(scope: !5192, file: !3, line: 307, column: 7)
!5225 = !DILocation(line: 307, column: 13, scope: !5224)
!5226 = !DILocation(line: 307, column: 7, scope: !5192)
!5227 = !DILocation(line: 308, column: 34, scope: !5224)
!5228 = !DILocation(line: 308, column: 12, scope: !5224)
!5229 = !DILocation(line: 308, column: 4, scope: !5224)
!5230 = !DILocation(line: 310, column: 27, scope: !5192)
!5231 = !DILocation(line: 310, column: 11, scope: !5192)
!5232 = !DILocation(line: 310, column: 3, scope: !5192)
!5233 = !DILocation(line: 312, column: 3, scope: !5192)
!5234 = !DILocation(line: 316, column: 2, scope: !5168)
!5235 = !DILocation(line: 317, column: 1, scope: !5168)
!5236 = distinct !DISubprogram(name: "ttm_pool_type_take", scope: !3, file: !3, line: 242, type: !5237, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5239)
!5237 = !DISubroutineType(types: !5238)
!5238 = !{!1200, !4188}
!5239 = !{!5240, !5241, !5242, !5244, !5245}
!5240 = !DILocalVariable(name: "pt", arg: 1, scope: !5236, file: !3, line: 242, type: !4188)
!5241 = !DILocalVariable(name: "p", scope: !5236, file: !3, line: 244, type: !1200)
!5242 = !DILocalVariable(name: "head__", scope: !5243, file: !3, line: 247, type: !190)
!5243 = distinct !DILexicalBlock(scope: !5236, file: !3, line: 247, column: 6)
!5244 = !DILocalVariable(name: "pos__", scope: !5243, file: !3, line: 247, type: !190)
!5245 = !DILocalVariable(name: "__mptr", scope: !5246, file: !3, line: 247, type: !358)
!5246 = distinct !DILexicalBlock(scope: !5243, file: !3, line: 247, column: 6)
!5247 = !DILocation(line: 242, column: 62, scope: !5236)
!5248 = !DILocation(line: 244, column: 2, scope: !5236)
!5249 = !DILocation(line: 244, column: 15, scope: !5236)
!5250 = !DILocation(line: 246, column: 13, scope: !5236)
!5251 = !DILocation(line: 246, column: 17, scope: !5236)
!5252 = !DILocation(line: 246, column: 2, scope: !5236)
!5253 = !DILocation(line: 247, column: 6, scope: !5243)
!5254 = !DILocation(line: 247, column: 6, scope: !5255)
!5255 = distinct !DILexicalBlock(scope: !5243, file: !3, line: 247, column: 6)
!5256 = !DILocation(line: 247, column: 6, scope: !5257)
!5257 = distinct !DILexicalBlock(scope: !5255, file: !3, line: 247, column: 6)
!5258 = !DILocation(line: 247, column: 6, scope: !5246)
!5259 = !DILocation(line: 247, column: 6, scope: !5236)
!5260 = !DILocation(line: 247, column: 4, scope: !5236)
!5261 = !DILocation(line: 248, column: 6, scope: !5262)
!5262 = distinct !DILexicalBlock(scope: !5236, file: !3, line: 248, column: 6)
!5263 = !DILocation(line: 248, column: 6, scope: !5236)
!5264 = !DILocation(line: 249, column: 24, scope: !5265)
!5265 = distinct !DILexicalBlock(scope: !5262, file: !3, line: 248, column: 9)
!5266 = !DILocation(line: 249, column: 28, scope: !5265)
!5267 = !DILocation(line: 249, column: 21, scope: !5265)
!5268 = !DILocation(line: 249, column: 19, scope: !5265)
!5269 = !DILocation(line: 249, column: 3, scope: !5265)
!5270 = !DILocation(line: 250, column: 13, scope: !5265)
!5271 = !DILocation(line: 250, column: 16, scope: !5265)
!5272 = !DILocation(line: 250, column: 3, scope: !5265)
!5273 = !DILocation(line: 251, column: 2, scope: !5265)
!5274 = !DILocation(line: 252, column: 15, scope: !5236)
!5275 = !DILocation(line: 252, column: 19, scope: !5236)
!5276 = !DILocation(line: 252, column: 2, scope: !5236)
!5277 = !DILocation(line: 254, column: 9, scope: !5236)
!5278 = !DILocation(line: 255, column: 1, scope: !5236)
!5279 = !DILocation(line: 254, column: 2, scope: !5236)
!5280 = distinct !DISubprogram(name: "ttm_pool_apply_caching", scope: !3, file: !3, line: 163, type: !5281, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5283)
!5281 = !DISubroutineType(types: !5282)
!5282 = !{!109, !3004, !3004, !141}
!5283 = !{!5284, !5285, !5286, !5287}
!5284 = !DILocalVariable(name: "first", arg: 1, scope: !5280, file: !3, line: 163, type: !3004)
!5285 = !DILocalVariable(name: "last", arg: 2, scope: !5280, file: !3, line: 163, type: !3004)
!5286 = !DILocalVariable(name: "caching", arg: 3, scope: !5280, file: !3, line: 164, type: !141)
!5287 = !DILocalVariable(name: "num_pages", scope: !5280, file: !3, line: 167, type: !7)
!5288 = !DILocation(line: 163, column: 49, scope: !5280)
!5289 = !DILocation(line: 163, column: 70, scope: !5280)
!5290 = !DILocation(line: 164, column: 24, scope: !5280)
!5291 = !DILocation(line: 167, column: 2, scope: !5280)
!5292 = !DILocation(line: 167, column: 15, scope: !5280)
!5293 = !DILocation(line: 167, column: 27, scope: !5280)
!5294 = !DILocation(line: 167, column: 34, scope: !5280)
!5295 = !DILocation(line: 167, column: 32, scope: !5280)
!5296 = !DILocation(line: 169, column: 7, scope: !5297)
!5297 = distinct !DILexicalBlock(scope: !5280, file: !3, line: 169, column: 6)
!5298 = !DILocation(line: 169, column: 6, scope: !5280)
!5299 = !DILocation(line: 170, column: 3, scope: !5297)
!5300 = !DILocation(line: 172, column: 10, scope: !5280)
!5301 = !DILocation(line: 172, column: 2, scope: !5280)
!5302 = !DILocation(line: 176, column: 29, scope: !5303)
!5303 = distinct !DILexicalBlock(scope: !5280, file: !3, line: 172, column: 19)
!5304 = !DILocation(line: 176, column: 36, scope: !5303)
!5305 = !DILocation(line: 176, column: 10, scope: !5303)
!5306 = !DILocation(line: 176, column: 3, scope: !5303)
!5307 = !DILocation(line: 178, column: 29, scope: !5303)
!5308 = !DILocation(line: 178, column: 36, scope: !5303)
!5309 = !DILocation(line: 178, column: 10, scope: !5303)
!5310 = !DILocation(line: 178, column: 3, scope: !5303)
!5311 = !DILocation(line: 181, column: 2, scope: !5280)
!5312 = !DILocation(line: 182, column: 1, scope: !5280)
!5313 = distinct !DISubprogram(name: "ttm_pool_page_allocated", scope: !3, file: !3, line: 355, type: !5314, scopeLine: 359, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5318)
!5314 = !DISubroutineType(types: !5315)
!5315 = !{!109, !4193, !7, !1200, !5316, !4163, !5317}
!5316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4818, size: 64)
!5317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!5318 = !{!5319, !5320, !5321, !5322, !5323, !5324, !5325, !5326}
!5319 = !DILocalVariable(name: "pool", arg: 1, scope: !5313, file: !3, line: 355, type: !4193)
!5320 = !DILocalVariable(name: "order", arg: 2, scope: !5313, file: !3, line: 355, type: !7)
!5321 = !DILocalVariable(name: "p", arg: 3, scope: !5313, file: !3, line: 356, type: !1200)
!5322 = !DILocalVariable(name: "dma_addr", arg: 4, scope: !5313, file: !3, line: 356, type: !5316)
!5323 = !DILocalVariable(name: "num_pages", arg: 5, scope: !5313, file: !3, line: 357, type: !4163)
!5324 = !DILocalVariable(name: "pages", arg: 6, scope: !5313, file: !3, line: 358, type: !5317)
!5325 = !DILocalVariable(name: "i", scope: !5313, file: !3, line: 360, type: !7)
!5326 = !DILocalVariable(name: "r", scope: !5313, file: !3, line: 361, type: !109)
!5327 = !DILocation(line: 355, column: 53, scope: !5313)
!5328 = !DILocation(line: 355, column: 72, scope: !5313)
!5329 = !DILocation(line: 356, column: 21, scope: !5313)
!5330 = !DILocation(line: 356, column: 37, scope: !5313)
!5331 = !DILocation(line: 357, column: 23, scope: !5313)
!5332 = !DILocation(line: 358, column: 23, scope: !5313)
!5333 = !DILocation(line: 360, column: 2, scope: !5313)
!5334 = !DILocation(line: 360, column: 15, scope: !5313)
!5335 = !DILocation(line: 361, column: 2, scope: !5313)
!5336 = !DILocation(line: 361, column: 6, scope: !5313)
!5337 = !DILocation(line: 363, column: 7, scope: !5338)
!5338 = distinct !DILexicalBlock(scope: !5313, file: !3, line: 363, column: 6)
!5339 = !DILocation(line: 363, column: 6, scope: !5338)
!5340 = !DILocation(line: 363, column: 6, scope: !5313)
!5341 = !DILocation(line: 364, column: 20, scope: !5342)
!5342 = distinct !DILexicalBlock(scope: !5338, file: !3, line: 363, column: 17)
!5343 = !DILocation(line: 364, column: 26, scope: !5342)
!5344 = !DILocation(line: 364, column: 33, scope: !5342)
!5345 = !DILocation(line: 364, column: 36, scope: !5342)
!5346 = !DILocation(line: 364, column: 7, scope: !5342)
!5347 = !DILocation(line: 364, column: 5, scope: !5342)
!5348 = !DILocation(line: 365, column: 7, scope: !5349)
!5349 = distinct !DILexicalBlock(scope: !5342, file: !3, line: 365, column: 7)
!5350 = !DILocation(line: 365, column: 7, scope: !5342)
!5351 = !DILocation(line: 366, column: 11, scope: !5349)
!5352 = !DILocation(line: 366, column: 4, scope: !5349)
!5353 = !DILocation(line: 367, column: 2, scope: !5342)
!5354 = !DILocation(line: 369, column: 21, scope: !5313)
!5355 = !DILocation(line: 369, column: 18, scope: !5313)
!5356 = !DILocation(line: 369, column: 16, scope: !5313)
!5357 = !DILocation(line: 369, column: 3, scope: !5313)
!5358 = !DILocation(line: 369, column: 13, scope: !5313)
!5359 = !DILocation(line: 370, column: 16, scope: !5360)
!5360 = distinct !DILexicalBlock(scope: !5313, file: !3, line: 370, column: 2)
!5361 = !DILocation(line: 370, column: 13, scope: !5360)
!5362 = !DILocation(line: 370, column: 9, scope: !5360)
!5363 = !DILocation(line: 370, column: 7, scope: !5360)
!5364 = !DILocation(line: 370, column: 23, scope: !5365)
!5365 = distinct !DILexicalBlock(scope: !5360, file: !3, line: 370, column: 2)
!5366 = !DILocation(line: 370, column: 2, scope: !5360)
!5367 = !DILocation(line: 371, column: 13, scope: !5365)
!5368 = !DILocation(line: 371, column: 5, scope: !5365)
!5369 = !DILocation(line: 371, column: 4, scope: !5365)
!5370 = !DILocation(line: 371, column: 11, scope: !5365)
!5371 = !DILocation(line: 371, column: 3, scope: !5365)
!5372 = !DILocation(line: 370, column: 26, scope: !5365)
!5373 = !DILocation(line: 370, column: 35, scope: !5365)
!5374 = !DILocation(line: 370, column: 31, scope: !5365)
!5375 = !DILocation(line: 370, column: 43, scope: !5365)
!5376 = !DILocation(line: 370, column: 2, scope: !5365)
!5377 = distinct !{!5377, !5366, !5378, !5030, !5031}
!5378 = !DILocation(line: 371, column: 13, scope: !5360)
!5379 = !DILocation(line: 373, column: 2, scope: !5313)
!5380 = !DILocation(line: 374, column: 1, scope: !5313)
!5381 = distinct !DISubprogram(name: "ttm_pool_alloc_page", scope: !3, file: !3, line: 79, type: !5382, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5384)
!5382 = !DISubroutineType(types: !5383)
!5383 = !{!1200, !4193, !1490, !7}
!5384 = !{!5385, !5386, !5387, !5388, !5389, !5395, !5396, !5397}
!5385 = !DILocalVariable(name: "pool", arg: 1, scope: !5381, file: !3, line: 79, type: !4193)
!5386 = !DILocalVariable(name: "gfp_flags", arg: 2, scope: !5381, file: !3, line: 79, type: !1490)
!5387 = !DILocalVariable(name: "order", arg: 3, scope: !5381, file: !3, line: 80, type: !7)
!5388 = !DILocalVariable(name: "attr", scope: !5381, file: !3, line: 82, type: !336)
!5389 = !DILocalVariable(name: "dma", scope: !5381, file: !3, line: 83, type: !5390)
!5390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5391, size: 64)
!5391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_pool_dma", file: !3, line: 56, size: 128, elements: !5392)
!5392 = !{!5393, !5394}
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !5391, file: !3, line: 57, baseType: !4182, size: 64)
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !5391, file: !3, line: 58, baseType: !336, size: 64, offset: 64)
!5395 = !DILocalVariable(name: "p", scope: !5381, file: !3, line: 84, type: !1200)
!5396 = !DILocalVariable(name: "vaddr", scope: !5381, file: !3, line: 85, type: !358)
!5397 = !DILabel(scope: !5381, name: "error_free", file: !3, line: 126)
!5398 = !DILocation(line: 79, column: 58, scope: !5381)
!5399 = !DILocation(line: 79, column: 70, scope: !5381)
!5400 = !DILocation(line: 80, column: 19, scope: !5381)
!5401 = !DILocation(line: 82, column: 2, scope: !5381)
!5402 = !DILocation(line: 82, column: 16, scope: !5381)
!5403 = !DILocation(line: 83, column: 2, scope: !5381)
!5404 = !DILocation(line: 83, column: 23, scope: !5381)
!5405 = !DILocation(line: 84, column: 2, scope: !5381)
!5406 = !DILocation(line: 84, column: 15, scope: !5381)
!5407 = !DILocation(line: 85, column: 2, scope: !5381)
!5408 = !DILocation(line: 85, column: 8, scope: !5381)
!5409 = !DILocation(line: 91, column: 6, scope: !5410)
!5410 = distinct !DILexicalBlock(scope: !5381, file: !3, line: 91, column: 6)
!5411 = !DILocation(line: 91, column: 6, scope: !5381)
!5412 = !DILocation(line: 92, column: 13, scope: !5410)
!5413 = !DILocation(line: 92, column: 3, scope: !5410)
!5414 = !DILocation(line: 95, column: 7, scope: !5415)
!5415 = distinct !DILexicalBlock(scope: !5381, file: !3, line: 95, column: 6)
!5416 = !DILocation(line: 95, column: 13, scope: !5415)
!5417 = !DILocation(line: 95, column: 6, scope: !5381)
!5418 = !DILocation(line: 96, column: 24, scope: !5419)
!5419 = distinct !DILexicalBlock(scope: !5415, file: !3, line: 95, column: 28)
!5420 = !DILocation(line: 96, column: 30, scope: !5419)
!5421 = !DILocation(line: 96, column: 35, scope: !5419)
!5422 = !DILocation(line: 96, column: 46, scope: !5419)
!5423 = !DILocation(line: 96, column: 7, scope: !5419)
!5424 = !DILocation(line: 96, column: 5, scope: !5419)
!5425 = !DILocation(line: 97, column: 7, scope: !5426)
!5426 = distinct !DILexicalBlock(scope: !5419, file: !3, line: 97, column: 7)
!5427 = !DILocation(line: 97, column: 7, scope: !5419)
!5428 = !DILocation(line: 98, column: 17, scope: !5426)
!5429 = !DILocation(line: 98, column: 4, scope: !5426)
!5430 = !DILocation(line: 98, column: 7, scope: !5426)
!5431 = !DILocation(line: 98, column: 15, scope: !5426)
!5432 = !DILocation(line: 99, column: 10, scope: !5419)
!5433 = !DILocation(line: 99, column: 3, scope: !5419)
!5434 = !DILocation(line: 102, column: 8, scope: !5381)
!5435 = !DILocation(line: 102, column: 6, scope: !5381)
!5436 = !DILocation(line: 103, column: 7, scope: !5437)
!5437 = distinct !DILexicalBlock(scope: !5381, file: !3, line: 103, column: 6)
!5438 = !DILocation(line: 103, column: 6, scope: !5381)
!5439 = !DILocation(line: 104, column: 3, scope: !5437)
!5440 = !DILocation(line: 106, column: 6, scope: !5441)
!5441 = distinct !DILexicalBlock(scope: !5381, file: !3, line: 106, column: 6)
!5442 = !DILocation(line: 106, column: 6, scope: !5381)
!5443 = !DILocation(line: 107, column: 8, scope: !5441)
!5444 = !DILocation(line: 107, column: 3, scope: !5441)
!5445 = !DILocation(line: 109, column: 26, scope: !5381)
!5446 = !DILocation(line: 109, column: 32, scope: !5381)
!5447 = !DILocation(line: 109, column: 46, scope: !5381)
!5448 = !DILocation(line: 109, column: 43, scope: !5381)
!5449 = !DILocation(line: 109, column: 53, scope: !5381)
!5450 = !DILocation(line: 110, column: 6, scope: !5381)
!5451 = !DILocation(line: 110, column: 11, scope: !5381)
!5452 = !DILocation(line: 110, column: 17, scope: !5381)
!5453 = !DILocation(line: 110, column: 28, scope: !5381)
!5454 = !DILocation(line: 109, column: 10, scope: !5381)
!5455 = !DILocation(line: 109, column: 8, scope: !5381)
!5456 = !DILocation(line: 111, column: 7, scope: !5457)
!5457 = distinct !DILexicalBlock(scope: !5381, file: !3, line: 111, column: 6)
!5458 = !DILocation(line: 111, column: 6, scope: !5381)
!5459 = !DILocation(line: 112, column: 3, scope: !5457)
!5460 = !DILocation(line: 117, column: 22, scope: !5461)
!5461 = distinct !DILexicalBlock(scope: !5381, file: !3, line: 117, column: 6)
!5462 = !DILocation(line: 117, column: 6, scope: !5461)
!5463 = !DILocation(line: 117, column: 6, scope: !5381)
!5464 = !DILocation(line: 118, column: 23, scope: !5461)
!5465 = !DILocation(line: 118, column: 7, scope: !5461)
!5466 = !DILocation(line: 118, column: 5, scope: !5461)
!5467 = !DILocation(line: 118, column: 3, scope: !5461)
!5468 = !DILocation(line: 120, column: 7, scope: !5461)
!5469 = !DILocation(line: 120, column: 5, scope: !5461)
!5470 = !DILocation(line: 122, column: 30, scope: !5381)
!5471 = !DILocation(line: 122, column: 15, scope: !5381)
!5472 = !DILocation(line: 122, column: 38, scope: !5381)
!5473 = !DILocation(line: 122, column: 36, scope: !5381)
!5474 = !DILocation(line: 122, column: 2, scope: !5381)
!5475 = !DILocation(line: 122, column: 7, scope: !5381)
!5476 = !DILocation(line: 122, column: 13, scope: !5381)
!5477 = !DILocation(line: 123, column: 30, scope: !5381)
!5478 = !DILocation(line: 123, column: 15, scope: !5381)
!5479 = !DILocation(line: 123, column: 2, scope: !5381)
!5480 = !DILocation(line: 123, column: 5, scope: !5381)
!5481 = !DILocation(line: 123, column: 13, scope: !5381)
!5482 = !DILocation(line: 124, column: 9, scope: !5381)
!5483 = !DILocation(line: 124, column: 2, scope: !5381)
!5484 = !DILocation(line: 126, column: 1, scope: !5381)
!5485 = !DILocation(line: 127, column: 8, scope: !5381)
!5486 = !DILocation(line: 127, column: 2, scope: !5381)
!5487 = !DILocation(line: 128, column: 2, scope: !5381)
!5488 = !DILocation(line: 129, column: 1, scope: !5381)
!5489 = distinct !DISubprogram(name: "PageHighMem", scope: !5490, file: !5490, line: 551, type: !5491, scopeLine: 551, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5495)
!5490 = !DIFile(filename: "./include/linux/page-flags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "303e043415a1e5da18ffd489677b4d01")
!5491 = !DISubroutineType(types: !5492)
!5492 = !{!109, !5493}
!5493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5494, size: 64)
!5494 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1094)
!5495 = !{!5496}
!5496 = !DILocalVariable(name: "page", arg: 1, scope: !5489, file: !5490, line: 551, type: !5493)
!5497 = !DILocation(line: 551, column: 1, scope: !5489)
!5498 = distinct !DISubprogram(name: "ttm_pool_free_page", scope: !3, file: !3, line: 132, type: !5499, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5501)
!5499 = !DISubroutineType(types: !5500)
!5500 = !{null, !4193, !141, !7, !1200}
!5501 = !{!5502, !5503, !5504, !5505, !5506, !5507, !5508}
!5502 = !DILocalVariable(name: "pool", arg: 1, scope: !5498, file: !3, line: 132, type: !4193)
!5503 = !DILocalVariable(name: "caching", arg: 2, scope: !5498, file: !3, line: 132, type: !141)
!5504 = !DILocalVariable(name: "order", arg: 3, scope: !5498, file: !3, line: 133, type: !7)
!5505 = !DILocalVariable(name: "p", arg: 4, scope: !5498, file: !3, line: 133, type: !1200)
!5506 = !DILocalVariable(name: "attr", scope: !5498, file: !3, line: 135, type: !336)
!5507 = !DILocalVariable(name: "dma", scope: !5498, file: !3, line: 136, type: !5390)
!5508 = !DILocalVariable(name: "vaddr", scope: !5498, file: !3, line: 137, type: !358)
!5509 = !DILocation(line: 132, column: 49, scope: !5498)
!5510 = !DILocation(line: 132, column: 72, scope: !5498)
!5511 = !DILocation(line: 133, column: 24, scope: !5498)
!5512 = !DILocation(line: 133, column: 44, scope: !5498)
!5513 = !DILocation(line: 135, column: 2, scope: !5498)
!5514 = !DILocation(line: 135, column: 16, scope: !5498)
!5515 = !DILocation(line: 136, column: 2, scope: !5498)
!5516 = !DILocation(line: 136, column: 23, scope: !5498)
!5517 = !DILocation(line: 137, column: 2, scope: !5498)
!5518 = !DILocation(line: 137, column: 8, scope: !5498)
!5519 = !DILocation(line: 143, column: 6, scope: !5520)
!5520 = distinct !DILexicalBlock(scope: !5498, file: !3, line: 143, column: 6)
!5521 = !DILocation(line: 143, column: 14, scope: !5520)
!5522 = !DILocation(line: 143, column: 28, scope: !5520)
!5523 = !DILocation(line: 143, column: 44, scope: !5520)
!5524 = !DILocation(line: 143, column: 32, scope: !5520)
!5525 = !DILocation(line: 143, column: 6, scope: !5498)
!5526 = !DILocation(line: 144, column: 16, scope: !5520)
!5527 = !DILocation(line: 144, column: 24, scope: !5520)
!5528 = !DILocation(line: 144, column: 21, scope: !5520)
!5529 = !DILocation(line: 144, column: 3, scope: !5520)
!5530 = !DILocation(line: 147, column: 7, scope: !5531)
!5531 = distinct !DILexicalBlock(scope: !5498, file: !3, line: 147, column: 6)
!5532 = !DILocation(line: 147, column: 12, scope: !5531)
!5533 = !DILocation(line: 147, column: 16, scope: !5531)
!5534 = !DILocation(line: 147, column: 22, scope: !5531)
!5535 = !DILocation(line: 147, column: 6, scope: !5498)
!5536 = !DILocation(line: 148, column: 16, scope: !5537)
!5537 = distinct !DILexicalBlock(scope: !5531, file: !3, line: 147, column: 37)
!5538 = !DILocation(line: 148, column: 19, scope: !5537)
!5539 = !DILocation(line: 148, column: 3, scope: !5537)
!5540 = !DILocation(line: 149, column: 3, scope: !5537)
!5541 = !DILocation(line: 152, column: 6, scope: !5542)
!5542 = distinct !DILexicalBlock(scope: !5498, file: !3, line: 152, column: 6)
!5543 = !DILocation(line: 152, column: 6, scope: !5498)
!5544 = !DILocation(line: 153, column: 8, scope: !5542)
!5545 = !DILocation(line: 153, column: 3, scope: !5542)
!5546 = !DILocation(line: 155, column: 16, scope: !5498)
!5547 = !DILocation(line: 155, column: 19, scope: !5498)
!5548 = !DILocation(line: 155, column: 8, scope: !5498)
!5549 = !DILocation(line: 155, column: 6, scope: !5498)
!5550 = !DILocation(line: 156, column: 19, scope: !5498)
!5551 = !DILocation(line: 156, column: 24, scope: !5498)
!5552 = !DILocation(line: 156, column: 30, scope: !5498)
!5553 = !DILocation(line: 156, column: 10, scope: !5498)
!5554 = !DILocation(line: 156, column: 8, scope: !5498)
!5555 = !DILocation(line: 157, column: 17, scope: !5498)
!5556 = !DILocation(line: 157, column: 23, scope: !5498)
!5557 = !DILocation(line: 157, column: 36, scope: !5498)
!5558 = !DILocation(line: 157, column: 33, scope: !5498)
!5559 = !DILocation(line: 157, column: 43, scope: !5498)
!5560 = !DILocation(line: 157, column: 56, scope: !5498)
!5561 = !DILocation(line: 157, column: 63, scope: !5498)
!5562 = !DILocation(line: 157, column: 68, scope: !5498)
!5563 = !DILocation(line: 158, column: 10, scope: !5498)
!5564 = !DILocation(line: 157, column: 2, scope: !5498)
!5565 = !DILocation(line: 159, column: 8, scope: !5498)
!5566 = !DILocation(line: 159, column: 2, scope: !5498)
!5567 = !DILocation(line: 160, column: 1, scope: !5498)
!5568 = distinct !DISubprogram(name: "ttm_pool_free_range", scope: !3, file: !3, line: 389, type: !5569, scopeLine: 392, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5571)
!5569 = !DISubroutineType(types: !5570)
!5570 = !{null, !4193, !4793, !141, !336, !336}
!5571 = !{!5572, !5573, !5574, !5575, !5576, !5577, !5578, !5579, !5580, !5581}
!5572 = !DILocalVariable(name: "pool", arg: 1, scope: !5568, file: !3, line: 389, type: !4193)
!5573 = !DILocalVariable(name: "tt", arg: 2, scope: !5568, file: !3, line: 389, type: !4793)
!5574 = !DILocalVariable(name: "caching", arg: 3, scope: !5568, file: !3, line: 390, type: !141)
!5575 = !DILocalVariable(name: "start_page", arg: 4, scope: !5568, file: !3, line: 391, type: !336)
!5576 = !DILocalVariable(name: "end_page", arg: 5, scope: !5568, file: !3, line: 391, type: !336)
!5577 = !DILocalVariable(name: "pages", scope: !5568, file: !3, line: 393, type: !3004)
!5578 = !DILocalVariable(name: "order", scope: !5568, file: !3, line: 394, type: !7)
!5579 = !DILocalVariable(name: "i", scope: !5568, file: !3, line: 395, type: !336)
!5580 = !DILocalVariable(name: "nr", scope: !5568, file: !3, line: 395, type: !336)
!5581 = !DILocalVariable(name: "pt", scope: !5582, file: !3, line: 398, type: !4188)
!5582 = distinct !DILexicalBlock(scope: !5583, file: !3, line: 397, column: 59)
!5583 = distinct !DILexicalBlock(scope: !5584, file: !3, line: 397, column: 2)
!5584 = distinct !DILexicalBlock(scope: !5568, file: !3, line: 397, column: 2)
!5585 = !DILocation(line: 389, column: 50, scope: !5568)
!5586 = !DILocation(line: 389, column: 71, scope: !5568)
!5587 = !DILocation(line: 390, column: 22, scope: !5568)
!5588 = !DILocation(line: 391, column: 13, scope: !5568)
!5589 = !DILocation(line: 391, column: 33, scope: !5568)
!5590 = !DILocation(line: 393, column: 2, scope: !5568)
!5591 = !DILocation(line: 393, column: 16, scope: !5568)
!5592 = !DILocation(line: 393, column: 25, scope: !5568)
!5593 = !DILocation(line: 393, column: 29, scope: !5568)
!5594 = !DILocation(line: 393, column: 35, scope: !5568)
!5595 = !DILocation(line: 394, column: 2, scope: !5568)
!5596 = !DILocation(line: 394, column: 15, scope: !5568)
!5597 = !DILocation(line: 395, column: 2, scope: !5568)
!5598 = !DILocation(line: 395, column: 10, scope: !5568)
!5599 = !DILocation(line: 395, column: 13, scope: !5568)
!5600 = !DILocation(line: 397, column: 11, scope: !5584)
!5601 = !DILocation(line: 397, column: 9, scope: !5584)
!5602 = !DILocation(line: 397, column: 7, scope: !5584)
!5603 = !DILocation(line: 397, column: 23, scope: !5583)
!5604 = !DILocation(line: 397, column: 27, scope: !5583)
!5605 = !DILocation(line: 397, column: 25, scope: !5583)
!5606 = !DILocation(line: 397, column: 2, scope: !5584)
!5607 = !DILocation(line: 398, column: 3, scope: !5582)
!5608 = !DILocation(line: 398, column: 25, scope: !5582)
!5609 = !DILocation(line: 400, column: 31, scope: !5582)
!5610 = !DILocation(line: 400, column: 38, scope: !5582)
!5611 = !DILocation(line: 400, column: 37, scope: !5582)
!5612 = !DILocation(line: 400, column: 11, scope: !5582)
!5613 = !DILocation(line: 400, column: 9, scope: !5582)
!5614 = !DILocation(line: 401, column: 16, scope: !5582)
!5615 = !DILocation(line: 401, column: 13, scope: !5582)
!5616 = !DILocation(line: 401, column: 6, scope: !5582)
!5617 = !DILocation(line: 402, column: 7, scope: !5618)
!5618 = distinct !DILexicalBlock(scope: !5582, file: !3, line: 402, column: 7)
!5619 = !DILocation(line: 402, column: 11, scope: !5618)
!5620 = !DILocation(line: 402, column: 7, scope: !5582)
!5621 = !DILocation(line: 403, column: 19, scope: !5618)
!5622 = !DILocation(line: 403, column: 25, scope: !5618)
!5623 = !DILocation(line: 403, column: 29, scope: !5618)
!5624 = !DILocation(line: 403, column: 41, scope: !5618)
!5625 = !DILocation(line: 403, column: 45, scope: !5618)
!5626 = !DILocation(line: 403, column: 4, scope: !5618)
!5627 = !DILocation(line: 405, column: 29, scope: !5582)
!5628 = !DILocation(line: 405, column: 35, scope: !5582)
!5629 = !DILocation(line: 405, column: 44, scope: !5582)
!5630 = !DILocation(line: 405, column: 8, scope: !5582)
!5631 = !DILocation(line: 405, column: 6, scope: !5582)
!5632 = !DILocation(line: 406, column: 7, scope: !5633)
!5633 = distinct !DILexicalBlock(scope: !5582, file: !3, line: 406, column: 7)
!5634 = !DILocation(line: 406, column: 7, scope: !5582)
!5635 = !DILocation(line: 407, column: 23, scope: !5633)
!5636 = !DILocation(line: 407, column: 28, scope: !5633)
!5637 = !DILocation(line: 407, column: 27, scope: !5633)
!5638 = !DILocation(line: 407, column: 4, scope: !5633)
!5639 = !DILocation(line: 409, column: 23, scope: !5633)
!5640 = !DILocation(line: 409, column: 29, scope: !5633)
!5641 = !DILocation(line: 409, column: 38, scope: !5633)
!5642 = !DILocation(line: 409, column: 46, scope: !5633)
!5643 = !DILocation(line: 409, column: 45, scope: !5633)
!5644 = !DILocation(line: 409, column: 4, scope: !5633)
!5645 = !DILocation(line: 410, column: 2, scope: !5583)
!5646 = !DILocation(line: 410, column: 2, scope: !5582)
!5647 = !DILocation(line: 397, column: 42, scope: !5583)
!5648 = !DILocation(line: 397, column: 39, scope: !5583)
!5649 = !DILocation(line: 397, column: 55, scope: !5583)
!5650 = !DILocation(line: 397, column: 52, scope: !5583)
!5651 = !DILocation(line: 397, column: 2, scope: !5583)
!5652 = distinct !{!5652, !5606, !5653, !5030, !5031}
!5653 = !DILocation(line: 410, column: 2, scope: !5584)
!5654 = !DILocation(line: 411, column: 1, scope: !5568)
!5655 = distinct !DISubprogram(name: "ttm_pool_free", scope: !3, file: !3, line: 540, type: !5656, scopeLine: 541, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5658)
!5656 = !DISubroutineType(types: !5657)
!5657 = !{null, !4193, !4793}
!5658 = !{!5659, !5660}
!5659 = !DILocalVariable(name: "pool", arg: 1, scope: !5655, file: !3, line: 540, type: !4193)
!5660 = !DILocalVariable(name: "tt", arg: 2, scope: !5655, file: !3, line: 540, type: !4793)
!5661 = !DILocation(line: 540, column: 37, scope: !5655)
!5662 = !DILocation(line: 540, column: 58, scope: !5655)
!5663 = !DILocation(line: 542, column: 22, scope: !5655)
!5664 = !DILocation(line: 542, column: 28, scope: !5655)
!5665 = !DILocation(line: 542, column: 32, scope: !5655)
!5666 = !DILocation(line: 542, column: 36, scope: !5655)
!5667 = !DILocation(line: 542, column: 48, scope: !5655)
!5668 = !DILocation(line: 542, column: 52, scope: !5655)
!5669 = !DILocation(line: 542, column: 2, scope: !5655)
!5670 = !DILocation(line: 544, column: 2, scope: !5655)
!5671 = !DILocation(line: 544, column: 9, scope: !5655)
!5672 = !DILocation(line: 544, column: 46, scope: !5655)
!5673 = !DILocation(line: 544, column: 44, scope: !5655)
!5674 = !DILocation(line: 545, column: 3, scope: !5655)
!5675 = distinct !{!5675, !5670, !5676, !5030, !5031}
!5676 = !DILocation(line: 545, column: 19, scope: !5655)
!5677 = !DILocation(line: 546, column: 1, scope: !5655)
!5678 = distinct !DISubprogram(name: "atomic_long_read", scope: !5679, file: !5679, line: 3158, type: !5680, scopeLine: 3159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5684)
!5679 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!5680 = !DISubroutineType(types: !5681)
!5681 = !{!322, !5682}
!5682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5683, size: 64)
!5683 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !656)
!5684 = !{!5685}
!5685 = !DILocalVariable(name: "v", arg: 1, scope: !5678, file: !5679, line: 3158, type: !5682)
!5686 = !DILocation(line: 3158, column: 39, scope: !5678)
!5687 = !DILocation(line: 3160, column: 25, scope: !5678)
!5688 = !DILocation(line: 3160, column: 2, scope: !5678)
!5689 = !DILocation(line: 3161, column: 30, scope: !5678)
!5690 = !DILocation(line: 3161, column: 9, scope: !5678)
!5691 = !DILocation(line: 3161, column: 2, scope: !5678)
!5692 = distinct !DISubprogram(name: "ttm_pool_shrink", scope: !3, file: !3, line: 320, type: !5693, scopeLine: 321, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5695)
!5693 = !DISubroutineType(types: !5694)
!5694 = !{!7}
!5695 = !{!5696, !5697, !5698, !5699}
!5696 = !DILocalVariable(name: "pt", scope: !5692, file: !3, line: 322, type: !4188)
!5697 = !DILocalVariable(name: "num_pages", scope: !5692, file: !3, line: 323, type: !7)
!5698 = !DILocalVariable(name: "p", scope: !5692, file: !3, line: 324, type: !1200)
!5699 = !DILocalVariable(name: "__mptr", scope: !5700, file: !3, line: 327, type: !358)
!5700 = distinct !DILexicalBlock(scope: !5692, file: !3, line: 327, column: 7)
!5701 = !DILocation(line: 322, column: 2, scope: !5692)
!5702 = !DILocation(line: 322, column: 24, scope: !5692)
!5703 = !DILocation(line: 323, column: 2, scope: !5692)
!5704 = !DILocation(line: 323, column: 15, scope: !5692)
!5705 = !DILocation(line: 324, column: 2, scope: !5692)
!5706 = !DILocation(line: 324, column: 15, scope: !5692)
!5707 = !DILocation(line: 326, column: 2, scope: !5692)
!5708 = !DILocation(line: 327, column: 7, scope: !5700)
!5709 = !DILocation(line: 327, column: 7, scope: !5692)
!5710 = !DILocation(line: 327, column: 5, scope: !5692)
!5711 = !DILocation(line: 328, column: 18, scope: !5692)
!5712 = !DILocation(line: 328, column: 22, scope: !5692)
!5713 = !DILocation(line: 328, column: 2, scope: !5692)
!5714 = !DILocation(line: 329, column: 2, scope: !5692)
!5715 = !DILocation(line: 331, column: 25, scope: !5692)
!5716 = !DILocation(line: 331, column: 6, scope: !5692)
!5717 = !DILocation(line: 331, column: 4, scope: !5692)
!5718 = !DILocation(line: 332, column: 6, scope: !5719)
!5719 = distinct !DILexicalBlock(scope: !5692, file: !3, line: 332, column: 6)
!5720 = !DILocation(line: 332, column: 6, scope: !5692)
!5721 = !DILocation(line: 333, column: 22, scope: !5722)
!5722 = distinct !DILexicalBlock(scope: !5719, file: !3, line: 332, column: 9)
!5723 = !DILocation(line: 333, column: 26, scope: !5722)
!5724 = !DILocation(line: 333, column: 32, scope: !5722)
!5725 = !DILocation(line: 333, column: 36, scope: !5722)
!5726 = !DILocation(line: 333, column: 45, scope: !5722)
!5727 = !DILocation(line: 333, column: 49, scope: !5722)
!5728 = !DILocation(line: 333, column: 56, scope: !5722)
!5729 = !DILocation(line: 333, column: 3, scope: !5722)
!5730 = !DILocation(line: 334, column: 20, scope: !5722)
!5731 = !DILocation(line: 334, column: 24, scope: !5722)
!5732 = !DILocation(line: 334, column: 17, scope: !5722)
!5733 = !DILocation(line: 334, column: 13, scope: !5722)
!5734 = !DILocation(line: 335, column: 2, scope: !5722)
!5735 = !DILocation(line: 336, column: 13, scope: !5736)
!5736 = distinct !DILexicalBlock(scope: !5719, file: !3, line: 335, column: 9)
!5737 = !DILocation(line: 339, column: 9, scope: !5692)
!5738 = !DILocation(line: 340, column: 1, scope: !5692)
!5739 = !DILocation(line: 339, column: 2, scope: !5692)
!5740 = distinct !DISubprogram(name: "ttm_pool_init", scope: !3, file: !3, line: 560, type: !5741, scopeLine: 562, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5743)
!5741 = !DISubroutineType(types: !5742)
!5742 = !{null, !4193, !4197, !109, !899, !899}
!5743 = !{!5744, !5745, !5746, !5747, !5748, !5749, !5750, !5751, !5753, !5756}
!5744 = !DILocalVariable(name: "pool", arg: 1, scope: !5740, file: !3, line: 560, type: !4193)
!5745 = !DILocalVariable(name: "dev", arg: 2, scope: !5740, file: !3, line: 560, type: !4197)
!5746 = !DILocalVariable(name: "nid", arg: 3, scope: !5740, file: !3, line: 561, type: !109)
!5747 = !DILocalVariable(name: "use_dma_alloc", arg: 4, scope: !5740, file: !3, line: 561, type: !899)
!5748 = !DILocalVariable(name: "use_dma32", arg: 5, scope: !5740, file: !3, line: 561, type: !899)
!5749 = !DILocalVariable(name: "i", scope: !5740, file: !3, line: 563, type: !7)
!5750 = !DILocalVariable(name: "j", scope: !5740, file: !3, line: 563, type: !7)
!5751 = !DILocalVariable(name: "__ret_warn_on", scope: !5752, file: !3, line: 565, type: !109)
!5752 = distinct !DILexicalBlock(scope: !5740, file: !3, line: 565, column: 2)
!5753 = !DILocalVariable(name: "__flags", scope: !5754, file: !3, line: 565, type: !109)
!5754 = distinct !DILexicalBlock(scope: !5755, file: !3, line: 565, column: 2)
!5755 = distinct !DILexicalBlock(scope: !5752, file: !3, line: 565, column: 2)
!5756 = !DILocalVariable(name: "pt", scope: !5757, file: !3, line: 574, type: !4188)
!5757 = distinct !DILexicalBlock(scope: !5758, file: !3, line: 573, column: 40)
!5758 = distinct !DILexicalBlock(scope: !5759, file: !3, line: 573, column: 3)
!5759 = distinct !DILexicalBlock(scope: !5760, file: !3, line: 573, column: 3)
!5760 = distinct !DILexicalBlock(scope: !5761, file: !3, line: 572, column: 46)
!5761 = distinct !DILexicalBlock(scope: !5762, file: !3, line: 572, column: 2)
!5762 = distinct !DILexicalBlock(scope: !5740, file: !3, line: 572, column: 2)
!5763 = !DILocation(line: 560, column: 37, scope: !5740)
!5764 = !DILocation(line: 560, column: 58, scope: !5740)
!5765 = !DILocation(line: 561, column: 10, scope: !5740)
!5766 = !DILocation(line: 561, column: 20, scope: !5740)
!5767 = !DILocation(line: 561, column: 40, scope: !5740)
!5768 = !DILocation(line: 563, column: 2, scope: !5740)
!5769 = !DILocation(line: 563, column: 15, scope: !5740)
!5770 = !DILocation(line: 563, column: 18, scope: !5740)
!5771 = !DILocation(line: 565, column: 2, scope: !5752)
!5772 = !DILocation(line: 0, scope: !5752)
!5773 = !DILocation(line: 565, column: 2, scope: !5755)
!5774 = !DILocation(line: 565, column: 2, scope: !5754)
!5775 = !DILocation(line: 565, column: 2, scope: !5776)
!5776 = distinct !DILexicalBlock(scope: !5754, file: !3, line: 565, column: 2)
!5777 = !DILocation(line: 565, column: 2, scope: !5778)
!5778 = distinct !DILexicalBlock(scope: !5754, file: !3, line: 565, column: 2)
!5779 = !{i64 2155262251, i64 2155262280, i64 2155262326, i64 2155262384, i64 2155262438, i64 2155262492, i64 2155262547, i64 2155262578, i64 2155262886, i64 2155262892, i64 2155262939, i64 2155262962, i64 2155262988}
!5780 = !DILocation(line: 565, column: 2, scope: !5781)
!5781 = distinct !DILexicalBlock(scope: !5754, file: !3, line: 565, column: 2)
!5782 = !DILocation(line: 565, column: 2, scope: !5740)
!5783 = !DILocation(line: 567, column: 14, scope: !5740)
!5784 = !DILocation(line: 567, column: 2, scope: !5740)
!5785 = !DILocation(line: 567, column: 8, scope: !5740)
!5786 = !DILocation(line: 567, column: 12, scope: !5740)
!5787 = !DILocation(line: 568, column: 14, scope: !5740)
!5788 = !DILocation(line: 568, column: 2, scope: !5740)
!5789 = !DILocation(line: 568, column: 8, scope: !5740)
!5790 = !DILocation(line: 568, column: 12, scope: !5740)
!5791 = !DILocation(line: 569, column: 24, scope: !5740)
!5792 = !DILocation(line: 569, column: 2, scope: !5740)
!5793 = !DILocation(line: 569, column: 8, scope: !5740)
!5794 = !DILocation(line: 569, column: 22, scope: !5740)
!5795 = !DILocation(line: 570, column: 20, scope: !5740)
!5796 = !DILocation(line: 570, column: 2, scope: !5740)
!5797 = !DILocation(line: 570, column: 8, scope: !5740)
!5798 = !DILocation(line: 570, column: 18, scope: !5740)
!5799 = !DILocation(line: 572, column: 9, scope: !5762)
!5800 = !DILocation(line: 572, column: 7, scope: !5762)
!5801 = !DILocation(line: 572, column: 14, scope: !5761)
!5802 = !DILocation(line: 572, column: 16, scope: !5761)
!5803 = !DILocation(line: 572, column: 2, scope: !5762)
!5804 = !DILocation(line: 573, column: 10, scope: !5759)
!5805 = !DILocation(line: 573, column: 8, scope: !5759)
!5806 = !DILocation(line: 573, column: 15, scope: !5758)
!5807 = !DILocation(line: 573, column: 17, scope: !5758)
!5808 = !DILocation(line: 573, column: 3, scope: !5759)
!5809 = !DILocation(line: 574, column: 4, scope: !5757)
!5810 = !DILocation(line: 574, column: 26, scope: !5757)
!5811 = !DILocation(line: 577, column: 30, scope: !5757)
!5812 = !DILocation(line: 577, column: 36, scope: !5757)
!5813 = !DILocation(line: 577, column: 39, scope: !5757)
!5814 = !DILocation(line: 577, column: 9, scope: !5757)
!5815 = !DILocation(line: 577, column: 7, scope: !5757)
!5816 = !DILocation(line: 578, column: 8, scope: !5817)
!5817 = distinct !DILexicalBlock(scope: !5757, file: !3, line: 578, column: 8)
!5818 = !DILocation(line: 578, column: 15, scope: !5817)
!5819 = !DILocation(line: 578, column: 21, scope: !5817)
!5820 = !DILocation(line: 578, column: 29, scope: !5817)
!5821 = !DILocation(line: 578, column: 32, scope: !5817)
!5822 = !DILocation(line: 578, column: 39, scope: !5817)
!5823 = !DILocation(line: 578, column: 11, scope: !5817)
!5824 = !DILocation(line: 578, column: 8, scope: !5757)
!5825 = !DILocation(line: 579, column: 5, scope: !5817)
!5826 = !DILocation(line: 581, column: 23, scope: !5757)
!5827 = !DILocation(line: 581, column: 27, scope: !5757)
!5828 = !DILocation(line: 581, column: 33, scope: !5757)
!5829 = !DILocation(line: 581, column: 36, scope: !5757)
!5830 = !DILocation(line: 581, column: 4, scope: !5757)
!5831 = !DILocation(line: 582, column: 3, scope: !5758)
!5832 = !DILocation(line: 582, column: 3, scope: !5757)
!5833 = !DILocation(line: 573, column: 35, scope: !5758)
!5834 = !DILocation(line: 573, column: 3, scope: !5758)
!5835 = distinct !{!5835, !5808, !5836, !5030, !5031}
!5836 = !DILocation(line: 582, column: 3, scope: !5759)
!5837 = !DILocation(line: 583, column: 2, scope: !5760)
!5838 = !DILocation(line: 572, column: 41, scope: !5761)
!5839 = !DILocation(line: 572, column: 2, scope: !5761)
!5840 = distinct !{!5840, !5803, !5841, !5030, !5031}
!5841 = !DILocation(line: 583, column: 2, scope: !5762)
!5842 = !DILocation(line: 584, column: 1, scope: !5740)
!5843 = distinct !DISubprogram(name: "ttm_pool_type_init", scope: !3, file: !3, line: 258, type: !5844, scopeLine: 260, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5846)
!5844 = !DISubroutineType(types: !5845)
!5845 = !{null, !4188, !4193, !141, !7}
!5846 = !{!5847, !5848, !5849, !5850}
!5847 = !DILocalVariable(name: "pt", arg: 1, scope: !5843, file: !3, line: 258, type: !4188)
!5848 = !DILocalVariable(name: "pool", arg: 2, scope: !5843, file: !3, line: 258, type: !4193)
!5849 = !DILocalVariable(name: "caching", arg: 3, scope: !5843, file: !3, line: 259, type: !141)
!5850 = !DILocalVariable(name: "order", arg: 4, scope: !5843, file: !3, line: 259, type: !7)
!5851 = !DILocation(line: 258, column: 54, scope: !5843)
!5852 = !DILocation(line: 258, column: 75, scope: !5843)
!5853 = !DILocation(line: 259, column: 28, scope: !5843)
!5854 = !DILocation(line: 259, column: 50, scope: !5843)
!5855 = !DILocation(line: 261, column: 13, scope: !5843)
!5856 = !DILocation(line: 261, column: 2, scope: !5843)
!5857 = !DILocation(line: 261, column: 6, scope: !5843)
!5858 = !DILocation(line: 261, column: 11, scope: !5843)
!5859 = !DILocation(line: 262, column: 16, scope: !5843)
!5860 = !DILocation(line: 262, column: 2, scope: !5843)
!5861 = !DILocation(line: 262, column: 6, scope: !5843)
!5862 = !DILocation(line: 262, column: 14, scope: !5843)
!5863 = !DILocation(line: 263, column: 14, scope: !5843)
!5864 = !DILocation(line: 263, column: 2, scope: !5843)
!5865 = !DILocation(line: 263, column: 6, scope: !5843)
!5866 = !DILocation(line: 263, column: 12, scope: !5843)
!5867 = !DILocation(line: 264, column: 2, scope: !5843)
!5868 = !DILocation(line: 264, column: 2, scope: !5869)
!5869 = distinct !DILexicalBlock(scope: !5843, file: !3, line: 264, column: 2)
!5870 = !DILocation(line: 265, column: 18, scope: !5843)
!5871 = !DILocation(line: 265, column: 22, scope: !5843)
!5872 = !DILocation(line: 265, column: 2, scope: !5843)
!5873 = !DILocation(line: 267, column: 2, scope: !5843)
!5874 = !DILocation(line: 268, column: 17, scope: !5843)
!5875 = !DILocation(line: 268, column: 21, scope: !5843)
!5876 = !DILocation(line: 268, column: 2, scope: !5843)
!5877 = !DILocation(line: 269, column: 2, scope: !5843)
!5878 = !DILocation(line: 270, column: 1, scope: !5843)
!5879 = distinct !DISubprogram(name: "ttm_pool_fini", scope: !3, file: !3, line: 595, type: !5880, scopeLine: 596, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5882)
!5880 = !DISubroutineType(types: !5881)
!5881 = !{null, !4193}
!5882 = !{!5883, !5884, !5885, !5886}
!5883 = !DILocalVariable(name: "pool", arg: 1, scope: !5879, file: !3, line: 595, type: !4193)
!5884 = !DILocalVariable(name: "i", scope: !5879, file: !3, line: 597, type: !7)
!5885 = !DILocalVariable(name: "j", scope: !5879, file: !3, line: 597, type: !7)
!5886 = !DILocalVariable(name: "pt", scope: !5887, file: !3, line: 601, type: !4188)
!5887 = distinct !DILexicalBlock(scope: !5888, file: !3, line: 600, column: 40)
!5888 = distinct !DILexicalBlock(scope: !5889, file: !3, line: 600, column: 3)
!5889 = distinct !DILexicalBlock(scope: !5890, file: !3, line: 600, column: 3)
!5890 = distinct !DILexicalBlock(scope: !5891, file: !3, line: 599, column: 46)
!5891 = distinct !DILexicalBlock(scope: !5892, file: !3, line: 599, column: 2)
!5892 = distinct !DILexicalBlock(scope: !5879, file: !3, line: 599, column: 2)
!5893 = !DILocation(line: 595, column: 37, scope: !5879)
!5894 = !DILocation(line: 597, column: 2, scope: !5879)
!5895 = !DILocation(line: 597, column: 15, scope: !5879)
!5896 = !DILocation(line: 597, column: 18, scope: !5879)
!5897 = !DILocation(line: 599, column: 9, scope: !5892)
!5898 = !DILocation(line: 599, column: 7, scope: !5892)
!5899 = !DILocation(line: 599, column: 14, scope: !5891)
!5900 = !DILocation(line: 599, column: 16, scope: !5891)
!5901 = !DILocation(line: 599, column: 2, scope: !5892)
!5902 = !DILocation(line: 600, column: 10, scope: !5889)
!5903 = !DILocation(line: 600, column: 8, scope: !5889)
!5904 = !DILocation(line: 600, column: 15, scope: !5888)
!5905 = !DILocation(line: 600, column: 17, scope: !5888)
!5906 = !DILocation(line: 600, column: 3, scope: !5889)
!5907 = !DILocation(line: 601, column: 4, scope: !5887)
!5908 = !DILocation(line: 601, column: 26, scope: !5887)
!5909 = !DILocation(line: 603, column: 30, scope: !5887)
!5910 = !DILocation(line: 603, column: 36, scope: !5887)
!5911 = !DILocation(line: 603, column: 39, scope: !5887)
!5912 = !DILocation(line: 603, column: 9, scope: !5887)
!5913 = !DILocation(line: 603, column: 7, scope: !5887)
!5914 = !DILocation(line: 604, column: 8, scope: !5915)
!5915 = distinct !DILexicalBlock(scope: !5887, file: !3, line: 604, column: 8)
!5916 = !DILocation(line: 604, column: 15, scope: !5915)
!5917 = !DILocation(line: 604, column: 21, scope: !5915)
!5918 = !DILocation(line: 604, column: 29, scope: !5915)
!5919 = !DILocation(line: 604, column: 32, scope: !5915)
!5920 = !DILocation(line: 604, column: 39, scope: !5915)
!5921 = !DILocation(line: 604, column: 11, scope: !5915)
!5922 = !DILocation(line: 604, column: 8, scope: !5887)
!5923 = !DILocation(line: 605, column: 5, scope: !5915)
!5924 = !DILocation(line: 607, column: 23, scope: !5887)
!5925 = !DILocation(line: 607, column: 4, scope: !5887)
!5926 = !DILocation(line: 608, column: 3, scope: !5888)
!5927 = !DILocation(line: 608, column: 3, scope: !5887)
!5928 = !DILocation(line: 600, column: 35, scope: !5888)
!5929 = !DILocation(line: 600, column: 3, scope: !5888)
!5930 = distinct !{!5930, !5906, !5931, !5030, !5031}
!5931 = !DILocation(line: 608, column: 3, scope: !5889)
!5932 = !DILocation(line: 609, column: 2, scope: !5890)
!5933 = !DILocation(line: 599, column: 41, scope: !5891)
!5934 = !DILocation(line: 599, column: 2, scope: !5891)
!5935 = distinct !{!5935, !5901, !5936, !5030, !5031}
!5936 = !DILocation(line: 609, column: 2, scope: !5892)
!5937 = !DILocation(line: 614, column: 2, scope: !5879)
!5938 = !DILocation(line: 615, column: 1, scope: !5879)
!5939 = distinct !DISubprogram(name: "ttm_pool_type_fini", scope: !3, file: !3, line: 273, type: !5940, scopeLine: 274, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5942)
!5940 = !DISubroutineType(types: !5941)
!5941 = !{null, !4188}
!5942 = !{!5943, !5944}
!5943 = !DILocalVariable(name: "pt", arg: 1, scope: !5939, file: !3, line: 273, type: !4188)
!5944 = !DILocalVariable(name: "p", scope: !5939, file: !3, line: 275, type: !1200)
!5945 = !DILocation(line: 273, column: 54, scope: !5939)
!5946 = !DILocation(line: 275, column: 2, scope: !5939)
!5947 = !DILocation(line: 275, column: 15, scope: !5939)
!5948 = !DILocation(line: 277, column: 2, scope: !5939)
!5949 = !DILocation(line: 278, column: 12, scope: !5939)
!5950 = !DILocation(line: 278, column: 16, scope: !5939)
!5951 = !DILocation(line: 278, column: 2, scope: !5939)
!5952 = !DILocation(line: 279, column: 2, scope: !5939)
!5953 = !DILocation(line: 281, column: 2, scope: !5939)
!5954 = !DILocation(line: 281, column: 33, scope: !5939)
!5955 = !DILocation(line: 281, column: 14, scope: !5939)
!5956 = !DILocation(line: 281, column: 12, scope: !5939)
!5957 = !DILocation(line: 282, column: 22, scope: !5939)
!5958 = !DILocation(line: 282, column: 26, scope: !5939)
!5959 = !DILocation(line: 282, column: 32, scope: !5939)
!5960 = !DILocation(line: 282, column: 36, scope: !5939)
!5961 = !DILocation(line: 282, column: 45, scope: !5939)
!5962 = !DILocation(line: 282, column: 49, scope: !5939)
!5963 = !DILocation(line: 282, column: 56, scope: !5939)
!5964 = !DILocation(line: 282, column: 3, scope: !5939)
!5965 = distinct !{!5965, !5953, !5966, !5030, !5031}
!5966 = !DILocation(line: 282, column: 57, scope: !5939)
!5967 = !DILocation(line: 283, column: 1, scope: !5939)
!5968 = !DISubprogram(name: "synchronize_shrinkers", scope: !1801, file: !1801, line: 106, type: !2662, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5969 = distinct !DISubprogram(name: "ttm_pool_debugfs", scope: !3, file: !3, line: 715, type: !5970, scopeLine: 716, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5972)
!5970 = !DISubroutineType(types: !5971)
!5971 = !{!109, !4193, !640}
!5972 = !{!5973, !5974, !5975}
!5973 = !DILocalVariable(name: "pool", arg: 1, scope: !5969, file: !3, line: 715, type: !4193)
!5974 = !DILocalVariable(name: "m", arg: 2, scope: !5969, file: !3, line: 715, type: !640)
!5975 = !DILocalVariable(name: "i", scope: !5969, file: !3, line: 717, type: !7)
!5976 = !DILocation(line: 715, column: 39, scope: !5969)
!5977 = !DILocation(line: 715, column: 62, scope: !5969)
!5978 = !DILocation(line: 717, column: 2, scope: !5969)
!5979 = !DILocation(line: 717, column: 15, scope: !5969)
!5980 = !DILocation(line: 719, column: 7, scope: !5981)
!5981 = distinct !DILexicalBlock(scope: !5969, file: !3, line: 719, column: 6)
!5982 = !DILocation(line: 719, column: 13, scope: !5981)
!5983 = !DILocation(line: 719, column: 6, scope: !5969)
!5984 = !DILocation(line: 720, column: 12, scope: !5985)
!5985 = distinct !DILexicalBlock(scope: !5981, file: !3, line: 719, column: 28)
!5986 = !DILocation(line: 720, column: 3, scope: !5985)
!5987 = !DILocation(line: 721, column: 3, scope: !5985)
!5988 = !DILocation(line: 724, column: 26, scope: !5969)
!5989 = !DILocation(line: 724, column: 2, scope: !5969)
!5990 = !DILocation(line: 726, column: 2, scope: !5969)
!5991 = !DILocation(line: 727, column: 9, scope: !5992)
!5992 = distinct !DILexicalBlock(scope: !5969, file: !3, line: 727, column: 2)
!5993 = !DILocation(line: 727, column: 7, scope: !5992)
!5994 = !DILocation(line: 727, column: 14, scope: !5995)
!5995 = distinct !DILexicalBlock(scope: !5992, file: !3, line: 727, column: 2)
!5996 = !DILocation(line: 727, column: 16, scope: !5995)
!5997 = !DILocation(line: 727, column: 2, scope: !5992)
!5998 = !DILocation(line: 728, column: 12, scope: !5999)
!5999 = distinct !DILexicalBlock(scope: !5995, file: !3, line: 727, column: 46)
!6000 = !DILocation(line: 728, column: 3, scope: !5999)
!6001 = !DILocation(line: 729, column: 11, scope: !5999)
!6002 = !DILocation(line: 729, column: 3, scope: !5999)
!6003 = !DILocation(line: 731, column: 13, scope: !6004)
!6004 = distinct !DILexicalBlock(scope: !5999, file: !3, line: 729, column: 14)
!6005 = !DILocation(line: 731, column: 4, scope: !6004)
!6006 = !DILocation(line: 732, column: 4, scope: !6004)
!6007 = !DILocation(line: 734, column: 13, scope: !6004)
!6008 = !DILocation(line: 734, column: 4, scope: !6004)
!6009 = !DILocation(line: 735, column: 4, scope: !6004)
!6010 = !DILocation(line: 737, column: 13, scope: !6004)
!6011 = !DILocation(line: 737, column: 4, scope: !6004)
!6012 = !DILocation(line: 738, column: 4, scope: !6004)
!6013 = !DILocation(line: 740, column: 27, scope: !5999)
!6014 = !DILocation(line: 740, column: 33, scope: !5999)
!6015 = !DILocation(line: 740, column: 41, scope: !5999)
!6016 = !DILocation(line: 740, column: 44, scope: !5999)
!6017 = !DILocation(line: 740, column: 52, scope: !5999)
!6018 = !DILocation(line: 740, column: 3, scope: !5999)
!6019 = !DILocation(line: 741, column: 2, scope: !5999)
!6020 = !DILocation(line: 727, column: 41, scope: !5995)
!6021 = !DILocation(line: 727, column: 2, scope: !5995)
!6022 = distinct !{!6022, !5997, !6023, !5030, !5031}
!6023 = !DILocation(line: 741, column: 2, scope: !5992)
!6024 = !DILocation(line: 742, column: 2, scope: !5969)
!6025 = !DILocation(line: 744, column: 26, scope: !5969)
!6026 = !DILocation(line: 744, column: 2, scope: !5969)
!6027 = !DILocation(line: 745, column: 2, scope: !5969)
!6028 = !DILocation(line: 746, column: 1, scope: !5969)
!6029 = !DISubprogram(name: "seq_puts", scope: !642, file: !642, line: 121, type: !6030, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6030 = !DISubroutineType(types: !6031)
!6031 = !{null, !640, !205}
!6032 = distinct !DISubprogram(name: "ttm_pool_debugfs_header", scope: !3, file: !3, line: 657, type: !6033, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6035)
!6033 = !DISubroutineType(types: !6034)
!6034 = !{null, !640}
!6035 = !{!6036, !6037}
!6036 = !DILocalVariable(name: "m", arg: 1, scope: !6032, file: !3, line: 657, type: !640)
!6037 = !DILocalVariable(name: "i", scope: !6032, file: !3, line: 659, type: !7)
!6038 = !DILocation(line: 657, column: 54, scope: !6032)
!6039 = !DILocation(line: 659, column: 2, scope: !6032)
!6040 = !DILocation(line: 659, column: 15, scope: !6032)
!6041 = !DILocation(line: 661, column: 11, scope: !6032)
!6042 = !DILocation(line: 661, column: 2, scope: !6032)
!6043 = !DILocation(line: 662, column: 9, scope: !6044)
!6044 = distinct !DILexicalBlock(scope: !6032, file: !3, line: 662, column: 2)
!6045 = !DILocation(line: 662, column: 7, scope: !6044)
!6046 = !DILocation(line: 662, column: 14, scope: !6047)
!6047 = distinct !DILexicalBlock(scope: !6044, file: !3, line: 662, column: 2)
!6048 = !DILocation(line: 662, column: 16, scope: !6047)
!6049 = !DILocation(line: 662, column: 2, scope: !6044)
!6050 = !DILocation(line: 663, column: 14, scope: !6047)
!6051 = !DILocation(line: 663, column: 31, scope: !6047)
!6052 = !DILocation(line: 663, column: 3, scope: !6047)
!6053 = !DILocation(line: 662, column: 34, scope: !6047)
!6054 = !DILocation(line: 662, column: 2, scope: !6047)
!6055 = distinct !{!6055, !6049, !6056, !5030, !5031}
!6056 = !DILocation(line: 663, column: 32, scope: !6044)
!6057 = !DILocation(line: 664, column: 11, scope: !6032)
!6058 = !DILocation(line: 664, column: 2, scope: !6032)
!6059 = !DILocation(line: 665, column: 1, scope: !6032)
!6060 = distinct !DISubprogram(name: "spin_lock", scope: !6061, file: !6061, line: 349, type: !6062, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6064)
!6061 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!6062 = !DISubroutineType(types: !6063)
!6063 = !{null, !1524}
!6064 = !{!6065}
!6065 = !DILocalVariable(name: "lock", arg: 1, scope: !6060, file: !6061, line: 349, type: !1524)
!6066 = !DILocation(line: 349, column: 51, scope: !6060)
!6067 = !DILocation(line: 351, column: 2, scope: !6060)
!6068 = !DILocation(line: 352, column: 1, scope: !6060)
!6069 = distinct !DISubprogram(name: "ttm_pool_debugfs_orders", scope: !3, file: !3, line: 668, type: !6070, scopeLine: 670, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6072)
!6070 = !DISubroutineType(types: !6071)
!6071 = !{null, !4188, !640}
!6072 = !{!6073, !6074, !6075}
!6073 = !DILocalVariable(name: "pt", arg: 1, scope: !6069, file: !3, line: 668, type: !4188)
!6074 = !DILocalVariable(name: "m", arg: 2, scope: !6069, file: !3, line: 669, type: !640)
!6075 = !DILocalVariable(name: "i", scope: !6069, file: !3, line: 671, type: !7)
!6076 = !DILocation(line: 668, column: 59, scope: !6069)
!6077 = !DILocation(line: 669, column: 26, scope: !6069)
!6078 = !DILocation(line: 671, column: 2, scope: !6069)
!6079 = !DILocation(line: 671, column: 15, scope: !6069)
!6080 = !DILocation(line: 673, column: 9, scope: !6081)
!6081 = distinct !DILexicalBlock(scope: !6069, file: !3, line: 673, column: 2)
!6082 = !DILocation(line: 673, column: 7, scope: !6081)
!6083 = !DILocation(line: 673, column: 14, scope: !6084)
!6084 = distinct !DILexicalBlock(scope: !6081, file: !3, line: 673, column: 2)
!6085 = !DILocation(line: 673, column: 16, scope: !6084)
!6086 = !DILocation(line: 673, column: 2, scope: !6081)
!6087 = !DILocation(line: 674, column: 14, scope: !6084)
!6088 = !DILocation(line: 674, column: 46, scope: !6084)
!6089 = !DILocation(line: 674, column: 49, scope: !6084)
!6090 = !DILocation(line: 674, column: 25, scope: !6084)
!6091 = !DILocation(line: 674, column: 3, scope: !6084)
!6092 = !DILocation(line: 673, column: 34, scope: !6084)
!6093 = !DILocation(line: 673, column: 2, scope: !6084)
!6094 = distinct !{!6094, !6086, !6095, !5030, !5031}
!6095 = !DILocation(line: 674, column: 52, scope: !6081)
!6096 = !DILocation(line: 675, column: 11, scope: !6069)
!6097 = !DILocation(line: 675, column: 2, scope: !6069)
!6098 = !DILocation(line: 676, column: 1, scope: !6069)
!6099 = distinct !DISubprogram(name: "spin_unlock", scope: !6061, file: !6061, line: 389, type: !6062, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6100)
!6100 = !{!6101}
!6101 = !DILocalVariable(name: "lock", arg: 1, scope: !6099, file: !6061, line: 389, type: !1524)
!6102 = !DILocation(line: 389, column: 53, scope: !6099)
!6103 = !DILocation(line: 391, column: 2, scope: !6099)
!6104 = !DILocation(line: 392, column: 1, scope: !6099)
!6105 = distinct !DISubprogram(name: "ttm_pool_debugfs_footer", scope: !3, file: !3, line: 679, type: !6033, scopeLine: 680, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6106)
!6106 = !{!6107}
!6107 = !DILocalVariable(name: "m", arg: 1, scope: !6105, file: !3, line: 679, type: !640)
!6108 = !DILocation(line: 679, column: 54, scope: !6105)
!6109 = !DILocation(line: 681, column: 13, scope: !6105)
!6110 = !DILocation(line: 682, column: 6, scope: !6105)
!6111 = !DILocation(line: 682, column: 42, scope: !6105)
!6112 = !DILocation(line: 681, column: 2, scope: !6105)
!6113 = !DILocation(line: 683, column: 1, scope: !6105)
!6114 = distinct !DISubprogram(name: "ttm_pool_mgr_init", scope: !3, file: !3, line: 772, type: !6115, scopeLine: 773, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6117)
!6115 = !DISubroutineType(types: !6116)
!6116 = !{!109, !336}
!6117 = !{!6118, !6119}
!6118 = !DILocalVariable(name: "num_pages", arg: 1, scope: !6114, file: !3, line: 772, type: !336)
!6119 = !DILocalVariable(name: "i", scope: !6114, file: !3, line: 774, type: !7)
!6120 = !DILocation(line: 772, column: 37, scope: !6114)
!6121 = !DILocation(line: 774, column: 2, scope: !6114)
!6122 = !DILocation(line: 774, column: 15, scope: !6114)
!6123 = !DILocation(line: 776, column: 7, scope: !6124)
!6124 = distinct !DILexicalBlock(scope: !6114, file: !3, line: 776, column: 6)
!6125 = !DILocation(line: 776, column: 6, scope: !6114)
!6126 = !DILocation(line: 777, column: 20, scope: !6124)
!6127 = !DILocation(line: 777, column: 18, scope: !6124)
!6128 = !DILocation(line: 777, column: 3, scope: !6124)
!6129 = !DILocation(line: 779, column: 2, scope: !6114)
!6130 = !DILocation(line: 779, column: 2, scope: !6131)
!6131 = distinct !DILexicalBlock(scope: !6114, file: !3, line: 779, column: 2)
!6132 = !DILocation(line: 780, column: 2, scope: !6114)
!6133 = !DILocation(line: 782, column: 9, scope: !6134)
!6134 = distinct !DILexicalBlock(scope: !6114, file: !3, line: 782, column: 2)
!6135 = !DILocation(line: 782, column: 7, scope: !6134)
!6136 = !DILocation(line: 782, column: 14, scope: !6137)
!6137 = distinct !DILexicalBlock(scope: !6134, file: !3, line: 782, column: 2)
!6138 = !DILocation(line: 782, column: 16, scope: !6137)
!6139 = !DILocation(line: 782, column: 2, scope: !6134)
!6140 = !DILocation(line: 783, column: 45, scope: !6141)
!6141 = distinct !DILexicalBlock(scope: !6137, file: !3, line: 782, column: 39)
!6142 = !DILocation(line: 783, column: 23, scope: !6141)
!6143 = !DILocation(line: 784, column: 28, scope: !6141)
!6144 = !DILocation(line: 783, column: 3, scope: !6141)
!6145 = !DILocation(line: 785, column: 39, scope: !6141)
!6146 = !DILocation(line: 785, column: 23, scope: !6141)
!6147 = !DILocation(line: 785, column: 63, scope: !6141)
!6148 = !DILocation(line: 785, column: 3, scope: !6141)
!6149 = !DILocation(line: 787, column: 51, scope: !6141)
!6150 = !DILocation(line: 787, column: 23, scope: !6141)
!6151 = !DILocation(line: 788, column: 28, scope: !6141)
!6152 = !DILocation(line: 787, column: 3, scope: !6141)
!6153 = !DILocation(line: 789, column: 45, scope: !6141)
!6154 = !DILocation(line: 789, column: 23, scope: !6141)
!6155 = !DILocation(line: 790, column: 22, scope: !6141)
!6156 = !DILocation(line: 789, column: 3, scope: !6141)
!6157 = !DILocation(line: 791, column: 2, scope: !6141)
!6158 = !DILocation(line: 782, column: 34, scope: !6137)
!6159 = !DILocation(line: 782, column: 2, scope: !6137)
!6160 = distinct !{!6160, !6139, !6161, !5030, !5031}
!6161 = !DILocation(line: 791, column: 2, scope: !6134)
!6162 = !DILocation(line: 794, column: 41, scope: !6114)
!6163 = !DILocation(line: 794, column: 2, scope: !6114)
!6164 = !DILocation(line: 796, column: 48, scope: !6114)
!6165 = !DILocation(line: 796, column: 2, scope: !6114)
!6166 = !DILocation(line: 800, column: 28, scope: !6114)
!6167 = !DILocation(line: 801, column: 27, scope: !6114)
!6168 = !DILocation(line: 802, column: 20, scope: !6114)
!6169 = !DILocation(line: 803, column: 9, scope: !6114)
!6170 = !DILocation(line: 804, column: 1, scope: !6114)
!6171 = !DILocation(line: 803, column: 2, scope: !6114)
!6172 = distinct !DISubprogram(name: "spinlock_check", scope: !6061, file: !6061, line: 324, type: !6173, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6176)
!6173 = !DISubroutineType(types: !6174)
!6174 = !{!6175, !1524}
!6175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!6176 = !{!6177}
!6177 = !DILocalVariable(name: "lock", arg: 1, scope: !6172, file: !6061, line: 324, type: !1524)
!6178 = !DILocation(line: 324, column: 67, scope: !6172)
!6179 = !DILocation(line: 326, column: 10, scope: !6172)
!6180 = !DILocation(line: 326, column: 16, scope: !6172)
!6181 = !DILocation(line: 326, column: 2, scope: !6172)
!6182 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !6183, file: !6183, line: 35, type: !6184, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6186)
!6183 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!6184 = !DISubroutineType(types: !6185)
!6185 = !{null, !190}
!6186 = !{!6187}
!6187 = !DILocalVariable(name: "list", arg: 1, scope: !6182, file: !6183, line: 35, type: !190)
!6188 = !DILocation(line: 35, column: 53, scope: !6182)
!6189 = !DILocation(line: 37, column: 2, scope: !6182)
!6190 = !DILocation(line: 37, column: 2, scope: !6191)
!6191 = distinct !DILexicalBlock(scope: !6182, file: !6183, line: 37, column: 2)
!6192 = !DILocation(line: 37, column: 2, scope: !6193)
!6193 = distinct !DILexicalBlock(scope: !6191, file: !6183, line: 37, column: 2)
!6194 = !DILocation(line: 37, column: 2, scope: !6195)
!6195 = distinct !DILexicalBlock(scope: !6191, file: !6183, line: 37, column: 2)
!6196 = !DILocation(line: 38, column: 2, scope: !6182)
!6197 = !DILocation(line: 38, column: 2, scope: !6198)
!6198 = distinct !DILexicalBlock(scope: !6182, file: !6183, line: 38, column: 2)
!6199 = !DILocation(line: 38, column: 2, scope: !6200)
!6200 = distinct !DILexicalBlock(scope: !6198, file: !6183, line: 38, column: 2)
!6201 = !DILocation(line: 38, column: 2, scope: !6202)
!6202 = distinct !DILexicalBlock(scope: !6198, file: !6183, line: 38, column: 2)
!6203 = !DILocation(line: 39, column: 1, scope: !6182)
!6204 = !DISubprogram(name: "debugfs_create_file", scope: !6205, file: !6205, line: 75, type: !6206, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6205 = !DIFile(filename: "./include/linux/debugfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6e6228d229e8266f5bff9327360d42a5")
!6206 = !DISubroutineType(types: !6207)
!6207 = !{!402, !205, !328, !402, !358, !1018}
!6208 = distinct !DISubprogram(name: "ttm_pool_shrinker_count", scope: !3, file: !3, line: 632, type: !3275, scopeLine: 634, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6209)
!6209 = !{!6210, !6211, !6212}
!6210 = !DILocalVariable(name: "shrink", arg: 1, scope: !6208, file: !3, line: 632, type: !3277)
!6211 = !DILocalVariable(name: "sc", arg: 2, scope: !6208, file: !3, line: 633, type: !1799)
!6212 = !DILocalVariable(name: "num_pages", scope: !6208, file: !3, line: 635, type: !336)
!6213 = !DILocation(line: 632, column: 63, scope: !6208)
!6214 = !DILocation(line: 633, column: 34, scope: !6208)
!6215 = !DILocation(line: 635, column: 2, scope: !6208)
!6216 = !DILocation(line: 635, column: 16, scope: !6208)
!6217 = !DILocation(line: 635, column: 28, scope: !6208)
!6218 = !DILocation(line: 637, column: 9, scope: !6208)
!6219 = !DILocation(line: 637, column: 21, scope: !6208)
!6220 = !DILocation(line: 638, column: 1, scope: !6208)
!6221 = !DILocation(line: 637, column: 2, scope: !6208)
!6222 = distinct !DISubprogram(name: "ttm_pool_shrinker_scan", scope: !3, file: !3, line: 619, type: !3275, scopeLine: 621, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6223)
!6223 = !{!6224, !6225, !6226}
!6224 = !DILocalVariable(name: "shrink", arg: 1, scope: !6222, file: !3, line: 619, type: !3277)
!6225 = !DILocalVariable(name: "sc", arg: 2, scope: !6222, file: !3, line: 620, type: !1799)
!6226 = !DILocalVariable(name: "num_freed", scope: !6222, file: !3, line: 622, type: !336)
!6227 = !DILocation(line: 619, column: 62, scope: !6222)
!6228 = !DILocation(line: 620, column: 33, scope: !6222)
!6229 = !DILocation(line: 622, column: 2, scope: !6222)
!6230 = !DILocation(line: 622, column: 16, scope: !6222)
!6231 = !DILocation(line: 624, column: 2, scope: !6222)
!6232 = !DILocation(line: 625, column: 16, scope: !6222)
!6233 = !DILocation(line: 625, column: 13, scope: !6222)
!6234 = !DILocation(line: 625, column: 3, scope: !6222)
!6235 = !DILocation(line: 626, column: 10, scope: !6222)
!6236 = !DILocation(line: 626, column: 20, scope: !6222)
!6237 = !DILocation(line: 626, column: 23, scope: !6222)
!6238 = !DILocation(line: 0, scope: !6222)
!6239 = distinct !{!6239, !6231, !6240, !5030, !5031}
!6240 = !DILocation(line: 626, column: 57, scope: !6222)
!6241 = !DILocation(line: 628, column: 9, scope: !6222)
!6242 = !DILocation(line: 629, column: 1, scope: !6222)
!6243 = !DILocation(line: 628, column: 2, scope: !6222)
!6244 = !DISubprogram(name: "register_shrinker", scope: !1801, file: !1801, line: 102, type: !6245, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6245 = !DISubroutineType(types: !6246)
!6246 = !{!109, !3277, !205, null}
!6247 = distinct !DISubprogram(name: "ttm_pool_mgr_fini", scope: !3, file: !3, line: 811, type: !2662, scopeLine: 812, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6248)
!6248 = !{!6249, !6250, !6252}
!6249 = !DILocalVariable(name: "i", scope: !6247, file: !3, line: 813, type: !7)
!6250 = !DILocalVariable(name: "__ret_warn_on", scope: !6251, file: !3, line: 824, type: !109)
!6251 = distinct !DILexicalBlock(scope: !6247, file: !3, line: 824, column: 2)
!6252 = !DILocalVariable(name: "__flags", scope: !6253, file: !3, line: 824, type: !109)
!6253 = distinct !DILexicalBlock(scope: !6254, file: !3, line: 824, column: 2)
!6254 = distinct !DILexicalBlock(scope: !6251, file: !3, line: 824, column: 2)
!6255 = !DILocation(line: 813, column: 2, scope: !6247)
!6256 = !DILocation(line: 813, column: 15, scope: !6247)
!6257 = !DILocation(line: 815, column: 9, scope: !6258)
!6258 = distinct !DILexicalBlock(scope: !6247, file: !3, line: 815, column: 2)
!6259 = !DILocation(line: 815, column: 7, scope: !6258)
!6260 = !DILocation(line: 815, column: 14, scope: !6261)
!6261 = distinct !DILexicalBlock(scope: !6258, file: !3, line: 815, column: 2)
!6262 = !DILocation(line: 815, column: 16, scope: !6261)
!6263 = !DILocation(line: 815, column: 2, scope: !6258)
!6264 = !DILocation(line: 816, column: 45, scope: !6265)
!6265 = distinct !DILexicalBlock(scope: !6261, file: !3, line: 815, column: 39)
!6266 = !DILocation(line: 816, column: 23, scope: !6265)
!6267 = !DILocation(line: 816, column: 3, scope: !6265)
!6268 = !DILocation(line: 817, column: 39, scope: !6265)
!6269 = !DILocation(line: 817, column: 23, scope: !6265)
!6270 = !DILocation(line: 817, column: 3, scope: !6265)
!6271 = !DILocation(line: 819, column: 51, scope: !6265)
!6272 = !DILocation(line: 819, column: 23, scope: !6265)
!6273 = !DILocation(line: 819, column: 3, scope: !6265)
!6274 = !DILocation(line: 820, column: 45, scope: !6265)
!6275 = !DILocation(line: 820, column: 23, scope: !6265)
!6276 = !DILocation(line: 820, column: 3, scope: !6265)
!6277 = !DILocation(line: 821, column: 2, scope: !6265)
!6278 = !DILocation(line: 815, column: 34, scope: !6261)
!6279 = !DILocation(line: 815, column: 2, scope: !6261)
!6280 = distinct !{!6280, !6263, !6281, !5030, !5031}
!6281 = !DILocation(line: 821, column: 2, scope: !6258)
!6282 = !DILocation(line: 823, column: 2, scope: !6247)
!6283 = !DILocation(line: 824, column: 2, scope: !6251)
!6284 = !DILocation(line: 824, column: 2, scope: !6254)
!6285 = !DILocation(line: 824, column: 2, scope: !6253)
!6286 = !DILocation(line: 824, column: 2, scope: !6287)
!6287 = distinct !DILexicalBlock(scope: !6253, file: !3, line: 824, column: 2)
!6288 = !DILocation(line: 824, column: 2, scope: !6289)
!6289 = distinct !DILexicalBlock(scope: !6253, file: !3, line: 824, column: 2)
!6290 = !{i64 2155274199, i64 2155274228, i64 2155274274, i64 2155274332, i64 2155274386, i64 2155274440, i64 2155274495, i64 2155274526, i64 2155274834, i64 2155274840, i64 2155274887, i64 2155274910, i64 2155274936}
!6291 = !DILocation(line: 824, column: 2, scope: !6292)
!6292 = distinct !DILexicalBlock(scope: !6253, file: !3, line: 824, column: 2)
!6293 = !DILocation(line: 824, column: 2, scope: !6247)
!6294 = !DILocation(line: 825, column: 1, scope: !6247)
!6295 = !DISubprogram(name: "unregister_shrinker", scope: !1801, file: !1801, line: 104, type: !6296, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6296 = !DISubroutineType(types: !6297)
!6297 = !{null, !3277}
!6298 = distinct !DISubprogram(name: "list_empty", scope: !6183, file: !6183, line: 371, type: !6299, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6303)
!6299 = !DISubroutineType(types: !6300)
!6300 = !{!109, !6301}
!6301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6302, size: 64)
!6302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !186)
!6303 = !{!6304}
!6304 = !DILocalVariable(name: "head", arg: 1, scope: !6298, file: !6183, line: 371, type: !6301)
!6305 = !DILocation(line: 371, column: 54, scope: !6298)
!6306 = !DILocation(line: 373, column: 9, scope: !6307)
!6307 = distinct !DILexicalBlock(scope: !6298, file: !6183, line: 373, column: 9)
!6308 = !DILocation(line: 373, column: 9, scope: !6309)
!6309 = distinct !DILexicalBlock(scope: !6307, file: !6183, line: 373, column: 9)
!6310 = !DILocation(line: 373, column: 34, scope: !6298)
!6311 = !DILocation(line: 373, column: 31, scope: !6298)
!6312 = !DILocation(line: 373, column: 2, scope: !6298)
!6313 = distinct !DISubprogram(name: "atomic_long_sub", scope: !5679, file: !5679, line: 3396, type: !6314, scopeLine: 3397, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6316)
!6314 = !DISubroutineType(types: !6315)
!6315 = !{null, !322, !3284}
!6316 = !{!6317, !6318}
!6317 = !DILocalVariable(name: "i", arg: 1, scope: !6313, file: !5679, line: 3396, type: !322)
!6318 = !DILocalVariable(name: "v", arg: 2, scope: !6313, file: !5679, line: 3396, type: !3284)
!6319 = !DILocation(line: 3396, column: 22, scope: !6313)
!6320 = !DILocation(line: 3396, column: 40, scope: !6313)
!6321 = !DILocation(line: 3398, column: 31, scope: !6313)
!6322 = !DILocation(line: 3398, column: 2, scope: !6313)
!6323 = !DILocation(line: 3399, column: 22, scope: !6313)
!6324 = !DILocation(line: 3399, column: 25, scope: !6313)
!6325 = !DILocation(line: 3399, column: 2, scope: !6313)
!6326 = !DILocation(line: 3400, column: 1, scope: !6313)
!6327 = distinct !DISubprogram(name: "list_del", scope: !6183, file: !6183, line: 227, type: !6184, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6328)
!6328 = !{!6329}
!6329 = !DILocalVariable(name: "entry", arg: 1, scope: !6327, file: !6183, line: 227, type: !190)
!6330 = !DILocation(line: 227, column: 47, scope: !6327)
!6331 = !DILocation(line: 229, column: 19, scope: !6327)
!6332 = !DILocation(line: 229, column: 2, scope: !6327)
!6333 = !DILocation(line: 230, column: 2, scope: !6327)
!6334 = !DILocation(line: 230, column: 9, scope: !6327)
!6335 = !DILocation(line: 230, column: 14, scope: !6327)
!6336 = !DILocation(line: 231, column: 2, scope: !6327)
!6337 = !DILocation(line: 231, column: 9, scope: !6327)
!6338 = !DILocation(line: 231, column: 14, scope: !6327)
!6339 = !DILocation(line: 232, column: 1, scope: !6327)
!6340 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !6341, file: !6341, line: 94, type: !6342, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6347)
!6341 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6342 = !DISubroutineType(types: !6343)
!6343 = !{null, !6344, !333}
!6344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6345, size: 64)
!6345 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6346)
!6346 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6347 = !{!6348, !6349}
!6348 = !DILocalVariable(name: "v", arg: 1, scope: !6340, file: !6341, line: 94, type: !6344)
!6349 = !DILocalVariable(name: "size", arg: 2, scope: !6340, file: !6341, line: 94, type: !333)
!6350 = !DILocation(line: 94, column: 79, scope: !6340)
!6351 = !DILocation(line: 94, column: 89, scope: !6340)
!6352 = !DILocation(line: 96, column: 20, scope: !6340)
!6353 = !DILocation(line: 96, column: 23, scope: !6340)
!6354 = !DILocation(line: 96, column: 2, scope: !6340)
!6355 = !DILocation(line: 97, column: 2, scope: !6340)
!6356 = !DILocation(line: 98, column: 1, scope: !6340)
!6357 = distinct !DISubprogram(name: "raw_atomic_long_sub", scope: !657, file: !657, line: 307, type: !6314, scopeLine: 308, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6358)
!6358 = !{!6359, !6360}
!6359 = !DILocalVariable(name: "i", arg: 1, scope: !6357, file: !657, line: 307, type: !322)
!6360 = !DILocalVariable(name: "v", arg: 2, scope: !6357, file: !657, line: 307, type: !3284)
!6361 = !DILocation(line: 307, column: 26, scope: !6357)
!6362 = !DILocation(line: 307, column: 44, scope: !6357)
!6363 = !DILocation(line: 310, column: 19, scope: !6357)
!6364 = !DILocation(line: 310, column: 22, scope: !6357)
!6365 = !DILocation(line: 310, column: 2, scope: !6357)
!6366 = !DILocation(line: 314, column: 1, scope: !6357)
!6367 = distinct !DISubprogram(name: "kasan_check_write", scope: !6368, file: !6368, line: 44, type: !6369, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6371)
!6368 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6369 = !DISubroutineType(types: !6370)
!6370 = !{!899, !6344, !7}
!6371 = !{!6372, !6373}
!6372 = !DILocalVariable(name: "p", arg: 1, scope: !6367, file: !6368, line: 44, type: !6344)
!6373 = !DILocalVariable(name: "size", arg: 2, scope: !6367, file: !6368, line: 44, type: !7)
!6374 = !DILocation(line: 44, column: 59, scope: !6367)
!6375 = !DILocation(line: 44, column: 75, scope: !6367)
!6376 = !DILocation(line: 46, column: 2, scope: !6367)
!6377 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6378, file: !6378, line: 229, type: !6379, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6381)
!6378 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6379 = !DISubroutineType(types: !6380)
!6380 = !{null, !6344, !333, !109}
!6381 = !{!6382, !6383, !6384}
!6382 = !DILocalVariable(name: "ptr", arg: 1, scope: !6377, file: !6378, line: 229, type: !6344)
!6383 = !DILocalVariable(name: "size", arg: 2, scope: !6377, file: !6378, line: 229, type: !333)
!6384 = !DILocalVariable(name: "type", arg: 3, scope: !6377, file: !6378, line: 230, type: !109)
!6385 = !DILocation(line: 229, column: 60, scope: !6377)
!6386 = !DILocation(line: 229, column: 72, scope: !6377)
!6387 = !DILocation(line: 230, column: 15, scope: !6377)
!6388 = !DILocation(line: 230, column: 23, scope: !6377)
!6389 = distinct !DISubprogram(name: "raw_atomic64_sub", scope: !6390, file: !6390, line: 2866, type: !6391, scopeLine: 2867, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6394)
!6390 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!6391 = !DISubroutineType(types: !6392)
!6392 = !{null, !662, !6393}
!6393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!6394 = !{!6395, !6396}
!6395 = !DILocalVariable(name: "i", arg: 1, scope: !6389, file: !6390, line: 2866, type: !662)
!6396 = !DILocalVariable(name: "v", arg: 2, scope: !6389, file: !6390, line: 2866, type: !6393)
!6397 = !DILocation(line: 2866, column: 22, scope: !6389)
!6398 = !DILocation(line: 2866, column: 37, scope: !6389)
!6399 = !DILocation(line: 2868, column: 20, scope: !6389)
!6400 = !DILocation(line: 2868, column: 23, scope: !6389)
!6401 = !DILocation(line: 2868, column: 2, scope: !6389)
!6402 = !DILocation(line: 2869, column: 1, scope: !6389)
!6403 = distinct !DISubprogram(name: "arch_atomic64_sub", scope: !6404, file: !6404, line: 30, type: !6391, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6405)
!6404 = !DIFile(filename: "./arch/x86/include/asm/atomic64_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e491f305c5821f66703047d9c813539")
!6405 = !{!6406, !6407}
!6406 = !DILocalVariable(name: "i", arg: 1, scope: !6403, file: !6404, line: 30, type: !662)
!6407 = !DILocalVariable(name: "v", arg: 2, scope: !6403, file: !6404, line: 30, type: !6393)
!6408 = !DILocation(line: 30, column: 51, scope: !6403)
!6409 = !DILocation(line: 30, column: 66, scope: !6403)
!6410 = !DILocation(line: 33, column: 16, scope: !6403)
!6411 = !DILocation(line: 33, column: 19, scope: !6403)
!6412 = !DILocation(line: 34, column: 16, scope: !6403)
!6413 = !DILocation(line: 34, column: 25, scope: !6403)
!6414 = !DILocation(line: 34, column: 28, scope: !6403)
!6415 = !DILocation(line: 32, column: 2, scope: !6403)
!6416 = !{i64 2148829812, i64 2148829851, i64 2148829872, i64 2148829909, i64 2148829932, i64 2148829802}
!6417 = !DILocation(line: 35, column: 1, scope: !6403)
!6418 = distinct !DISubprogram(name: "__list_del_entry", scope: !6183, file: !6183, line: 213, type: !6184, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6419)
!6419 = !{!6420}
!6420 = !DILocalVariable(name: "entry", arg: 1, scope: !6418, file: !6183, line: 213, type: !190)
!6421 = !DILocation(line: 213, column: 55, scope: !6418)
!6422 = !DILocation(line: 215, column: 30, scope: !6423)
!6423 = distinct !DILexicalBlock(scope: !6418, file: !6183, line: 215, column: 6)
!6424 = !DILocation(line: 215, column: 7, scope: !6423)
!6425 = !DILocation(line: 215, column: 6, scope: !6418)
!6426 = !DILocation(line: 216, column: 3, scope: !6423)
!6427 = !DILocation(line: 218, column: 13, scope: !6418)
!6428 = !DILocation(line: 218, column: 20, scope: !6418)
!6429 = !DILocation(line: 218, column: 26, scope: !6418)
!6430 = !DILocation(line: 218, column: 33, scope: !6418)
!6431 = !DILocation(line: 218, column: 2, scope: !6418)
!6432 = !DILocation(line: 219, column: 1, scope: !6418)
!6433 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !6183, file: !6183, line: 134, type: !6434, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6436)
!6434 = !DISubroutineType(types: !6435)
!6435 = !{!899, !190}
!6436 = !{!6437}
!6437 = !DILocalVariable(name: "entry", arg: 1, scope: !6433, file: !6183, line: 134, type: !190)
!6438 = !DILocation(line: 134, column: 61, scope: !6433)
!6439 = !DILocation(line: 136, column: 2, scope: !6433)
!6440 = distinct !DISubprogram(name: "__list_del", scope: !6183, file: !6183, line: 193, type: !6441, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6443)
!6441 = !DISubroutineType(types: !6442)
!6442 = !{null, !190, !190}
!6443 = !{!6444, !6445}
!6444 = !DILocalVariable(name: "prev", arg: 1, scope: !6440, file: !6183, line: 193, type: !190)
!6445 = !DILocalVariable(name: "next", arg: 2, scope: !6440, file: !6183, line: 193, type: !190)
!6446 = !DILocation(line: 193, column: 50, scope: !6440)
!6447 = !DILocation(line: 193, column: 75, scope: !6440)
!6448 = !DILocation(line: 195, column: 15, scope: !6440)
!6449 = !DILocation(line: 195, column: 2, scope: !6440)
!6450 = !DILocation(line: 195, column: 8, scope: !6440)
!6451 = !DILocation(line: 195, column: 13, scope: !6440)
!6452 = !DILocation(line: 196, column: 2, scope: !6440)
!6453 = !DILocation(line: 196, column: 2, scope: !6454)
!6454 = distinct !DILexicalBlock(scope: !6440, file: !6183, line: 196, column: 2)
!6455 = !DILocation(line: 196, column: 2, scope: !6456)
!6456 = distinct !DILexicalBlock(scope: !6454, file: !6183, line: 196, column: 2)
!6457 = !DILocation(line: 196, column: 2, scope: !6458)
!6458 = distinct !DILexicalBlock(scope: !6454, file: !6183, line: 196, column: 2)
!6459 = !DILocation(line: 197, column: 1, scope: !6440)
!6460 = !DISubprogram(name: "set_pages_array_wc", scope: !6461, file: !6461, line: 58, type: !6462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6461 = !DIFile(filename: "./arch/x86/include/asm/set_memory.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5ed4c9c9f9b5c1359158a637c4326a39")
!6462 = !DISubroutineType(types: !6463)
!6463 = !{!109, !3004, !109}
!6464 = !DISubprogram(name: "set_pages_array_uc", scope: !6461, file: !6461, line: 57, type: !6462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6465 = distinct !DISubprogram(name: "ttm_pool_map", scope: !3, file: !3, line: 185, type: !6466, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6468)
!6466 = !DISubroutineType(types: !6467)
!6467 = !{!109, !4193, !7, !1200, !5316}
!6468 = !{!6469, !6470, !6471, !6472, !6473, !6474, !6475, !6478}
!6469 = !DILocalVariable(name: "pool", arg: 1, scope: !6465, file: !3, line: 185, type: !4193)
!6470 = !DILocalVariable(name: "order", arg: 2, scope: !6465, file: !3, line: 185, type: !7)
!6471 = !DILocalVariable(name: "p", arg: 3, scope: !6465, file: !3, line: 186, type: !1200)
!6472 = !DILocalVariable(name: "dma_addr", arg: 4, scope: !6465, file: !3, line: 186, type: !5316)
!6473 = !DILocalVariable(name: "addr", scope: !6465, file: !3, line: 188, type: !4182)
!6474 = !DILocalVariable(name: "i", scope: !6465, file: !3, line: 189, type: !7)
!6475 = !DILocalVariable(name: "dma", scope: !6476, file: !3, line: 192, type: !5390)
!6476 = distinct !DILexicalBlock(scope: !6477, file: !3, line: 191, column: 27)
!6477 = distinct !DILexicalBlock(scope: !6465, file: !3, line: 191, column: 6)
!6478 = !DILocalVariable(name: "size", scope: !6479, file: !3, line: 196, type: !333)
!6479 = distinct !DILexicalBlock(scope: !6477, file: !3, line: 195, column: 9)
!6480 = !DILocation(line: 185, column: 42, scope: !6465)
!6481 = !DILocation(line: 185, column: 61, scope: !6465)
!6482 = !DILocation(line: 186, column: 17, scope: !6465)
!6483 = !DILocation(line: 186, column: 33, scope: !6465)
!6484 = !DILocation(line: 188, column: 2, scope: !6465)
!6485 = !DILocation(line: 188, column: 13, scope: !6465)
!6486 = !DILocation(line: 189, column: 2, scope: !6465)
!6487 = !DILocation(line: 189, column: 15, scope: !6465)
!6488 = !DILocation(line: 191, column: 6, scope: !6477)
!6489 = !DILocation(line: 191, column: 12, scope: !6477)
!6490 = !DILocation(line: 191, column: 6, scope: !6465)
!6491 = !DILocation(line: 192, column: 3, scope: !6476)
!6492 = !DILocation(line: 192, column: 24, scope: !6476)
!6493 = !DILocation(line: 192, column: 38, scope: !6476)
!6494 = !DILocation(line: 192, column: 41, scope: !6476)
!6495 = !DILocation(line: 192, column: 30, scope: !6476)
!6496 = !DILocation(line: 194, column: 10, scope: !6476)
!6497 = !DILocation(line: 194, column: 15, scope: !6476)
!6498 = !DILocation(line: 194, column: 8, scope: !6476)
!6499 = !DILocation(line: 195, column: 2, scope: !6477)
!6500 = !DILocation(line: 195, column: 2, scope: !6476)
!6501 = !DILocation(line: 196, column: 3, scope: !6479)
!6502 = !DILocation(line: 196, column: 10, scope: !6479)
!6503 = !DILocation(line: 196, column: 26, scope: !6479)
!6504 = !DILocation(line: 196, column: 23, scope: !6479)
!6505 = !DILocation(line: 196, column: 33, scope: !6479)
!6506 = !DILocation(line: 198, column: 10, scope: !6479)
!6507 = !DILocation(line: 198, column: 8, scope: !6479)
!6508 = !DILocation(line: 199, column: 25, scope: !6509)
!6509 = distinct !DILexicalBlock(scope: !6479, file: !3, line: 199, column: 7)
!6510 = !DILocation(line: 199, column: 31, scope: !6509)
!6511 = !DILocation(line: 199, column: 36, scope: !6509)
!6512 = !DILocation(line: 199, column: 7, scope: !6509)
!6513 = !DILocation(line: 199, column: 7, scope: !6479)
!6514 = !DILocation(line: 200, column: 4, scope: !6509)
!6515 = !DILocation(line: 201, column: 2, scope: !6477)
!6516 = !DILocation(line: 203, column: 16, scope: !6517)
!6517 = distinct !DILexicalBlock(scope: !6465, file: !3, line: 203, column: 2)
!6518 = !DILocation(line: 203, column: 13, scope: !6517)
!6519 = !DILocation(line: 203, column: 9, scope: !6517)
!6520 = !DILocation(line: 203, column: 7, scope: !6517)
!6521 = !DILocation(line: 203, column: 23, scope: !6522)
!6522 = distinct !DILexicalBlock(scope: !6517, file: !3, line: 203, column: 2)
!6523 = !DILocation(line: 203, column: 2, scope: !6517)
!6524 = !DILocation(line: 204, column: 20, scope: !6525)
!6525 = distinct !DILexicalBlock(scope: !6522, file: !3, line: 203, column: 32)
!6526 = !DILocation(line: 204, column: 6, scope: !6525)
!6527 = !DILocation(line: 204, column: 15, scope: !6525)
!6528 = !DILocation(line: 204, column: 18, scope: !6525)
!6529 = !DILocation(line: 205, column: 8, scope: !6525)
!6530 = !DILocation(line: 206, column: 2, scope: !6525)
!6531 = !DILocation(line: 203, column: 27, scope: !6522)
!6532 = !DILocation(line: 203, column: 2, scope: !6522)
!6533 = distinct !{!6533, !6523, !6534, !5030, !5031}
!6534 = !DILocation(line: 206, column: 2, scope: !6517)
!6535 = !DILocation(line: 208, column: 2, scope: !6465)
!6536 = !DILocation(line: 209, column: 1, scope: !6465)
!6537 = !DISubprogram(name: "dma_map_page_attrs", scope: !6538, file: !6538, line: 104, type: !6539, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6538 = !DIFile(filename: "./include/linux/dma-mapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b6d71421f89fccf9a1ad0866e8178cd1")
!6539 = !DISubroutineType(types: !6540)
!6540 = !{!4182, !4197, !1200, !333, !333, !152, !336}
!6541 = distinct !DISubprogram(name: "dma_mapping_error", scope: !6538, file: !6538, line: 95, type: !6542, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6544)
!6542 = !DISubroutineType(types: !6543)
!6543 = !{!109, !4197, !4182}
!6544 = !{!6545, !6546}
!6545 = !DILocalVariable(name: "dev", arg: 1, scope: !6541, file: !6538, line: 95, type: !4197)
!6546 = !DILocalVariable(name: "dma_addr", arg: 2, scope: !6541, file: !6538, line: 95, type: !4182)
!6547 = !DILocation(line: 95, column: 52, scope: !6541)
!6548 = !DILocation(line: 95, column: 68, scope: !6541)
!6549 = !DILocation(line: 97, column: 26, scope: !6541)
!6550 = !DILocation(line: 97, column: 31, scope: !6541)
!6551 = !DILocation(line: 97, column: 2, scope: !6541)
!6552 = !DILocation(line: 99, column: 6, scope: !6553)
!6553 = distinct !DILexicalBlock(scope: !6541, file: !6538, line: 99, column: 6)
!6554 = !DILocation(line: 99, column: 6, scope: !6541)
!6555 = !DILocation(line: 100, column: 3, scope: !6553)
!6556 = !DILocation(line: 101, column: 2, scope: !6541)
!6557 = !DILocation(line: 102, column: 1, scope: !6541)
!6558 = distinct !DISubprogram(name: "debug_dma_mapping_error", scope: !6538, file: !6538, line: 84, type: !6559, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6561)
!6559 = !DISubroutineType(types: !6560)
!6560 = !{null, !4197, !4182}
!6561 = !{!6562, !6563}
!6562 = !DILocalVariable(name: "dev", arg: 1, scope: !6558, file: !6538, line: 84, type: !4197)
!6563 = !DILocalVariable(name: "dma_addr", arg: 2, scope: !6558, file: !6538, line: 85, type: !4182)
!6564 = !DILocation(line: 84, column: 59, scope: !6558)
!6565 = !DILocation(line: 85, column: 14, scope: !6558)
!6566 = !DILocation(line: 87, column: 1, scope: !6558)
!6567 = distinct !DISubprogram(name: "alloc_pages_node", scope: !4740, file: !4740, line: 254, type: !6568, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6570)
!6568 = !DISubroutineType(types: !6569)
!6569 = !{!1200, !109, !1490, !7}
!6570 = !{!6571, !6572, !6573}
!6571 = !DILocalVariable(name: "nid", arg: 1, scope: !6567, file: !4740, line: 254, type: !109)
!6572 = !DILocalVariable(name: "gfp_mask", arg: 2, scope: !6567, file: !4740, line: 254, type: !1490)
!6573 = !DILocalVariable(name: "order", arg: 3, scope: !6567, file: !4740, line: 255, type: !7)
!6574 = !DILocation(line: 254, column: 49, scope: !6567)
!6575 = !DILocation(line: 254, column: 60, scope: !6567)
!6576 = !DILocation(line: 255, column: 20, scope: !6567)
!6577 = !DILocation(line: 257, column: 6, scope: !6578)
!6578 = distinct !DILexicalBlock(scope: !6567, file: !4740, line: 257, column: 6)
!6579 = !DILocation(line: 257, column: 10, scope: !6578)
!6580 = !DILocation(line: 257, column: 6, scope: !6567)
!6581 = !DILocation(line: 258, column: 9, scope: !6578)
!6582 = !DILocation(line: 258, column: 7, scope: !6578)
!6583 = !DILocation(line: 258, column: 3, scope: !6578)
!6584 = !DILocation(line: 260, column: 28, scope: !6567)
!6585 = !DILocation(line: 260, column: 33, scope: !6567)
!6586 = !DILocation(line: 260, column: 43, scope: !6567)
!6587 = !DILocation(line: 260, column: 9, scope: !6567)
!6588 = !DILocation(line: 260, column: 2, scope: !6567)
!6589 = distinct !DISubprogram(name: "kmalloc", scope: !171, file: !171, line: 591, type: !6590, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6592)
!6590 = !DISubroutineType(types: !6591)
!6591 = !{!358, !333, !1490}
!6592 = !{!6593, !6594, !6595}
!6593 = !DILocalVariable(name: "size", arg: 1, scope: !6589, file: !171, line: 591, type: !333)
!6594 = !DILocalVariable(name: "flags", arg: 2, scope: !6589, file: !171, line: 591, type: !1490)
!6595 = !DILocalVariable(name: "index", scope: !6596, file: !171, line: 594, type: !7)
!6596 = distinct !DILexicalBlock(scope: !6597, file: !171, line: 593, column: 42)
!6597 = distinct !DILexicalBlock(scope: !6589, file: !171, line: 593, column: 6)
!6598 = !DILocation(line: 591, column: 61, scope: !6589)
!6599 = !DILocation(line: 591, column: 73, scope: !6589)
!6600 = !DILocation(line: 593, column: 27, scope: !6597)
!6601 = !DILocation(line: 593, column: 6, scope: !6597)
!6602 = !DILocation(line: 593, column: 33, scope: !6597)
!6603 = !DILocation(line: 593, column: 36, scope: !6597)
!6604 = !DILocation(line: 593, column: 6, scope: !6589)
!6605 = !DILocation(line: 594, column: 3, scope: !6596)
!6606 = !DILocation(line: 594, column: 16, scope: !6596)
!6607 = !DILocation(line: 596, column: 7, scope: !6608)
!6608 = distinct !DILexicalBlock(scope: !6596, file: !171, line: 596, column: 7)
!6609 = !DILocation(line: 596, column: 12, scope: !6608)
!6610 = !DILocation(line: 596, column: 7, scope: !6596)
!6611 = !DILocation(line: 597, column: 25, scope: !6608)
!6612 = !DILocation(line: 597, column: 31, scope: !6608)
!6613 = !DILocation(line: 597, column: 11, scope: !6608)
!6614 = !DILocation(line: 597, column: 4, scope: !6608)
!6615 = !DILocation(line: 599, column: 11, scope: !6596)
!6616 = !DILocation(line: 599, column: 9, scope: !6596)
!6617 = !DILocation(line: 601, column: 33, scope: !6596)
!6618 = !DILocation(line: 601, column: 40, scope: !6596)
!6619 = !DILocation(line: 601, column: 20, scope: !6596)
!6620 = !DILocation(line: 601, column: 5, scope: !6596)
!6621 = !DILocation(line: 601, column: 51, scope: !6596)
!6622 = !DILocation(line: 602, column: 5, scope: !6596)
!6623 = !DILocation(line: 602, column: 12, scope: !6596)
!6624 = !DILocation(line: 600, column: 10, scope: !6596)
!6625 = !DILocation(line: 600, column: 3, scope: !6596)
!6626 = !DILocation(line: 603, column: 2, scope: !6597)
!6627 = !DILocation(line: 604, column: 19, scope: !6589)
!6628 = !DILocation(line: 604, column: 25, scope: !6589)
!6629 = !DILocation(line: 604, column: 9, scope: !6589)
!6630 = !DILocation(line: 604, column: 2, scope: !6589)
!6631 = !DILocation(line: 605, column: 1, scope: !6589)
!6632 = !DISubprogram(name: "dma_alloc_attrs", scope: !6538, file: !6538, line: 128, type: !6633, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6633 = !DISubroutineType(types: !6634)
!6634 = !{!358, !4197, !333, !4818, !1490, !336}
!6635 = !DISubprogram(name: "is_vmalloc_addr", scope: !1208, file: !1208, line: 1148, type: !6636, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6636 = !DISubroutineType(types: !6637)
!6637 = !{!899, !1342}
!6638 = !DISubprogram(name: "vmalloc_to_page", scope: !1208, file: !1208, line: 1138, type: !6639, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6639 = !DISubroutineType(types: !6640)
!6640 = !{!1200, !1342}
!6641 = distinct !DISubprogram(name: "__phys_addr_nodebug", scope: !6642, file: !6642, line: 22, type: !5158, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6643)
!6642 = !DIFile(filename: "./arch/x86/include/asm/page_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e8642b887a42f979954681cc5f73dc7c")
!6643 = !{!6644, !6645}
!6644 = !DILocalVariable(name: "x", arg: 1, scope: !6641, file: !6642, line: 22, type: !336)
!6645 = !DILocalVariable(name: "y", scope: !6641, file: !6642, line: 24, type: !336)
!6646 = !DILocation(line: 22, column: 72, scope: !6641)
!6647 = !DILocation(line: 24, column: 2, scope: !6641)
!6648 = !DILocation(line: 24, column: 16, scope: !6641)
!6649 = !DILocation(line: 24, column: 20, scope: !6641)
!6650 = !DILocation(line: 24, column: 22, scope: !6641)
!6651 = !DILocation(line: 27, column: 6, scope: !6641)
!6652 = !DILocation(line: 27, column: 12, scope: !6641)
!6653 = !DILocation(line: 27, column: 16, scope: !6641)
!6654 = !DILocation(line: 27, column: 14, scope: !6641)
!6655 = !DILocation(line: 27, column: 11, scope: !6641)
!6656 = !DILocation(line: 27, column: 21, scope: !6641)
!6657 = !DILocation(line: 27, column: 55, scope: !6641)
!6658 = !DILocation(line: 27, column: 53, scope: !6641)
!6659 = !DILocation(line: 27, column: 8, scope: !6641)
!6660 = !DILocation(line: 27, column: 4, scope: !6641)
!6661 = !DILocation(line: 29, column: 9, scope: !6641)
!6662 = !DILocation(line: 30, column: 1, scope: !6641)
!6663 = !DILocation(line: 29, column: 2, scope: !6641)
!6664 = !DISubprogram(name: "kfree", scope: !171, file: !171, line: 227, type: !6665, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6665 = !DISubroutineType(types: !6666)
!6666 = !{null, !1342}
!6667 = distinct !DISubprogram(name: "numa_mem_id", scope: !6668, file: !6668, line: 168, type: !3961, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6668 = !DIFile(filename: "./include/linux/topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cc15680d35900f366282ea60d185adfa")
!6669 = !DILocation(line: 170, column: 9, scope: !6667)
!6670 = !DILocation(line: 170, column: 2, scope: !6667)
!6671 = distinct !DISubprogram(name: "__alloc_pages_node", scope: !4740, file: !4740, line: 232, type: !6568, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6672)
!6672 = !{!6673, !6674, !6675}
!6673 = !DILocalVariable(name: "nid", arg: 1, scope: !6671, file: !4740, line: 232, type: !109)
!6674 = !DILocalVariable(name: "gfp_mask", arg: 2, scope: !6671, file: !4740, line: 232, type: !1490)
!6675 = !DILocalVariable(name: "order", arg: 3, scope: !6671, file: !4740, line: 232, type: !7)
!6676 = !DILocation(line: 232, column: 24, scope: !6671)
!6677 = !DILocation(line: 232, column: 35, scope: !6671)
!6678 = !DILocation(line: 232, column: 58, scope: !6671)
!6679 = !DILocation(line: 235, column: 23, scope: !6671)
!6680 = !DILocation(line: 235, column: 28, scope: !6671)
!6681 = !DILocation(line: 235, column: 2, scope: !6671)
!6682 = !DILocation(line: 237, column: 23, scope: !6671)
!6683 = !DILocation(line: 237, column: 33, scope: !6671)
!6684 = !DILocation(line: 237, column: 40, scope: !6671)
!6685 = !DILocation(line: 237, column: 9, scope: !6671)
!6686 = !DILocation(line: 237, column: 2, scope: !6671)
!6687 = distinct !DISubprogram(name: "numa_node_id", scope: !6668, file: !6668, line: 87, type: !3961, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6688)
!6688 = !{!6689, !6691, !6693}
!6689 = !DILocalVariable(name: "pscr_ret__", scope: !6690, file: !6668, line: 89, type: !109)
!6690 = distinct !DILexicalBlock(scope: !6687, file: !6668, line: 89, column: 9)
!6691 = !DILocalVariable(name: "__vpp_verify", scope: !6692, file: !6668, line: 89, type: !1342)
!6692 = distinct !DILexicalBlock(scope: !6690, file: !6668, line: 89, column: 9)
!6693 = !DILocalVariable(name: "pfo_val__", scope: !6694, file: !6668, line: 89, type: !436)
!6694 = distinct !DILexicalBlock(scope: !6690, file: !6668, line: 89, column: 9)
!6695 = !DILocation(line: 89, column: 9, scope: !6690)
!6696 = !DILocation(line: 89, column: 9, scope: !6692)
!6697 = !DILocation(line: 89, column: 9, scope: !6694)
!6698 = !{i64 2151341032}
!6699 = !DILocation(line: 89, column: 9, scope: !6687)
!6700 = !DILocation(line: 89, column: 2, scope: !6687)
!6701 = distinct !DISubprogram(name: "warn_if_node_offline", scope: !4740, file: !4740, line: 213, type: !6702, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6704)
!6702 = !DISubroutineType(types: !6703)
!6703 = !{null, !109, !1490}
!6704 = !{!6705, !6706, !6707}
!6705 = !DILocalVariable(name: "this_node", arg: 1, scope: !6701, file: !4740, line: 213, type: !109)
!6706 = !DILocalVariable(name: "gfp_mask", arg: 2, scope: !6701, file: !4740, line: 213, type: !1490)
!6707 = !DILocalVariable(name: "warn_gfp", scope: !6701, file: !4740, line: 215, type: !1490)
!6708 = !DILocation(line: 213, column: 45, scope: !6701)
!6709 = !DILocation(line: 213, column: 62, scope: !6701)
!6710 = !DILocation(line: 215, column: 2, scope: !6701)
!6711 = !DILocation(line: 215, column: 8, scope: !6701)
!6712 = !DILocation(line: 215, column: 19, scope: !6701)
!6713 = !DILocation(line: 215, column: 28, scope: !6701)
!6714 = !DILocation(line: 217, column: 6, scope: !6715)
!6715 = distinct !DILexicalBlock(scope: !6701, file: !4740, line: 217, column: 6)
!6716 = !DILocation(line: 217, column: 15, scope: !6715)
!6717 = !DILocation(line: 217, column: 6, scope: !6701)
!6718 = !DILocation(line: 218, column: 3, scope: !6715)
!6719 = !DILocation(line: 220, column: 6, scope: !6720)
!6720 = distinct !DILexicalBlock(scope: !6701, file: !4740, line: 220, column: 6)
!6721 = !DILocation(line: 220, column: 6, scope: !6701)
!6722 = !DILocation(line: 221, column: 3, scope: !6720)
!6723 = !DILocation(line: 223, column: 2, scope: !6724)
!6724 = distinct !DILexicalBlock(scope: !6701, file: !4740, line: 223, column: 2)
!6725 = !DILocation(line: 223, column: 2, scope: !6726)
!6726 = distinct !DILexicalBlock(scope: !6724, file: !4740, line: 223, column: 2)
!6727 = !DILocation(line: 224, column: 2, scope: !6701)
!6728 = !DILocation(line: 225, column: 1, scope: !6701)
!6729 = !DISubprogram(name: "__alloc_pages", scope: !4740, file: !4740, line: 177, type: !6730, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6730 = !DISubroutineType(types: !6731)
!6731 = !{!1200, !1490, !7, !109, !6732}
!6732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!6733 = distinct !DISubprogram(name: "node_state", scope: !160, file: !160, line: 421, type: !6734, scopeLine: 422, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6736)
!6734 = !DISubroutineType(types: !6735)
!6735 = !{!109, !109, !159}
!6736 = !{!6737, !6738}
!6737 = !DILocalVariable(name: "node", arg: 1, scope: !6733, file: !160, line: 421, type: !109)
!6738 = !DILocalVariable(name: "state", arg: 2, scope: !6733, file: !160, line: 421, type: !159)
!6739 = !DILocation(line: 421, column: 34, scope: !6733)
!6740 = !DILocation(line: 421, column: 57, scope: !6733)
!6741 = !DILocation(line: 423, column: 9, scope: !6733)
!6742 = !DILocation(line: 423, column: 2, scope: !6733)
!6743 = !DISubprogram(name: "_printk", scope: !6744, file: !6744, line: 153, type: !6745, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6744 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!6745 = !DISubroutineType(types: !6746)
!6746 = !{!109, !205, null}
!6747 = !DISubprogram(name: "dump_stack", scope: !6744, file: !6744, line: 193, type: !2662, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6748 = distinct !DISubprogram(name: "const_test_bit", scope: !6749, file: !6749, line: 166, type: !6750, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6755)
!6749 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!6750 = !DISubroutineType(types: !6751)
!6751 = !{!899, !336, !6752}
!6752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6753, size: 64)
!6753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6754)
!6754 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !336)
!6755 = !{!6756, !6757, !6758, !6759, !6760}
!6756 = !DILocalVariable(name: "nr", arg: 1, scope: !6748, file: !6749, line: 166, type: !336)
!6757 = !DILocalVariable(name: "addr", arg: 2, scope: !6748, file: !6749, line: 166, type: !6752)
!6758 = !DILocalVariable(name: "p", scope: !6748, file: !6749, line: 168, type: !4184)
!6759 = !DILocalVariable(name: "mask", scope: !6748, file: !6749, line: 169, type: !336)
!6760 = !DILocalVariable(name: "val", scope: !6748, file: !6749, line: 170, type: !336)
!6761 = !DILocation(line: 166, column: 30, scope: !6748)
!6762 = !DILocation(line: 166, column: 64, scope: !6748)
!6763 = !DILocation(line: 168, column: 2, scope: !6748)
!6764 = !DILocation(line: 168, column: 23, scope: !6748)
!6765 = !DILocation(line: 168, column: 50, scope: !6748)
!6766 = !DILocation(line: 168, column: 57, scope: !6748)
!6767 = !DILocation(line: 168, column: 55, scope: !6748)
!6768 = !DILocation(line: 169, column: 2, scope: !6748)
!6769 = !DILocation(line: 169, column: 16, scope: !6748)
!6770 = !DILocation(line: 169, column: 23, scope: !6748)
!6771 = !DILocation(line: 170, column: 2, scope: !6748)
!6772 = !DILocation(line: 170, column: 16, scope: !6748)
!6773 = !DILocation(line: 170, column: 23, scope: !6748)
!6774 = !DILocation(line: 170, column: 22, scope: !6748)
!6775 = !DILocation(line: 172, column: 12, scope: !6748)
!6776 = !DILocation(line: 172, column: 18, scope: !6748)
!6777 = !DILocation(line: 172, column: 16, scope: !6748)
!6778 = !DILocation(line: 172, column: 10, scope: !6748)
!6779 = !DILocation(line: 172, column: 9, scope: !6748)
!6780 = !DILocation(line: 173, column: 1, scope: !6748)
!6781 = !DILocation(line: 172, column: 2, scope: !6748)
!6782 = distinct !DISubprogram(name: "_test_bit", scope: !6783, file: !6783, line: 139, type: !6750, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6784)
!6783 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!6784 = !{!6785, !6786}
!6785 = !DILocalVariable(name: "nr", arg: 1, scope: !6782, file: !6783, line: 139, type: !336)
!6786 = !DILocalVariable(name: "addr", arg: 2, scope: !6782, file: !6783, line: 139, type: !6752)
!6787 = !DILocation(line: 139, column: 25, scope: !6782)
!6788 = !DILocation(line: 139, column: 59, scope: !6782)
!6789 = !DILocation(line: 141, column: 25, scope: !6782)
!6790 = !DILocation(line: 141, column: 32, scope: !6782)
!6791 = !DILocation(line: 141, column: 30, scope: !6782)
!6792 = !DILocation(line: 141, column: 2, scope: !6782)
!6793 = !DILocation(line: 142, column: 23, scope: !6782)
!6794 = !DILocation(line: 142, column: 27, scope: !6782)
!6795 = !DILocation(line: 142, column: 9, scope: !6782)
!6796 = !DILocation(line: 142, column: 2, scope: !6782)
!6797 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !6341, file: !6341, line: 66, type: !6342, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6798)
!6798 = !{!6799, !6800}
!6799 = !DILocalVariable(name: "v", arg: 1, scope: !6797, file: !6341, line: 66, type: !6344)
!6800 = !DILocalVariable(name: "size", arg: 2, scope: !6797, file: !6341, line: 66, type: !333)
!6801 = !DILocation(line: 66, column: 73, scope: !6797)
!6802 = !DILocation(line: 66, column: 83, scope: !6797)
!6803 = !DILocation(line: 68, column: 19, scope: !6797)
!6804 = !DILocation(line: 68, column: 22, scope: !6797)
!6805 = !DILocation(line: 68, column: 2, scope: !6797)
!6806 = !DILocation(line: 69, column: 2, scope: !6797)
!6807 = !DILocation(line: 70, column: 1, scope: !6797)
!6808 = distinct !DISubprogram(name: "arch_test_bit", scope: !5157, file: !5157, line: 237, type: !6750, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6809)
!6809 = !{!6810, !6811}
!6810 = !DILocalVariable(name: "nr", arg: 1, scope: !6808, file: !5157, line: 237, type: !336)
!6811 = !DILocalVariable(name: "addr", arg: 2, scope: !6808, file: !5157, line: 237, type: !6752)
!6812 = !DILocation(line: 237, column: 29, scope: !6808)
!6813 = !DILocation(line: 237, column: 63, scope: !6808)
!6814 = !DILocation(line: 239, column: 30, scope: !6808)
!6815 = !DILocation(line: 239, column: 9, scope: !6808)
!6816 = !DILocation(line: 239, column: 54, scope: !6808)
!6817 = !DILocation(line: 239, column: 58, scope: !6808)
!6818 = !DILocation(line: 239, column: 36, scope: !6808)
!6819 = !DILocation(line: 240, column: 26, scope: !6808)
!6820 = !DILocation(line: 240, column: 30, scope: !6808)
!6821 = !DILocation(line: 240, column: 8, scope: !6808)
!6822 = !DILocation(line: 239, column: 2, scope: !6808)
!6823 = distinct !DISubprogram(name: "kasan_check_read", scope: !6368, file: !6368, line: 40, type: !6369, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6824)
!6824 = !{!6825, !6826}
!6825 = !DILocalVariable(name: "p", arg: 1, scope: !6823, file: !6368, line: 40, type: !6344)
!6826 = !DILocalVariable(name: "size", arg: 2, scope: !6823, file: !6368, line: 40, type: !7)
!6827 = !DILocation(line: 40, column: 58, scope: !6823)
!6828 = !DILocation(line: 40, column: 74, scope: !6823)
!6829 = !DILocation(line: 42, column: 2, scope: !6823)
!6830 = distinct !DISubprogram(name: "constant_test_bit", scope: !5157, file: !5157, line: 204, type: !6831, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6833)
!6831 = !DISubroutineType(types: !6832)
!6832 = !{!899, !322, !6752}
!6833 = !{!6834, !6835}
!6834 = !DILocalVariable(name: "nr", arg: 1, scope: !6830, file: !5157, line: 204, type: !322)
!6835 = !DILocalVariable(name: "addr", arg: 2, scope: !6830, file: !5157, line: 204, type: !6752)
!6836 = !DILocation(line: 204, column: 52, scope: !6830)
!6837 = !DILocation(line: 204, column: 86, scope: !6830)
!6838 = !DILocation(line: 206, column: 19, scope: !6830)
!6839 = !DILocation(line: 206, column: 22, scope: !6830)
!6840 = !DILocation(line: 206, column: 15, scope: !6830)
!6841 = !DILocation(line: 207, column: 4, scope: !6830)
!6842 = !DILocation(line: 207, column: 9, scope: !6830)
!6843 = !DILocation(line: 207, column: 12, scope: !6830)
!6844 = !DILocation(line: 206, column: 44, scope: !6830)
!6845 = !DILocation(line: 207, column: 37, scope: !6830)
!6846 = !DILocation(line: 206, column: 2, scope: !6830)
!6847 = distinct !DISubprogram(name: "variable_test_bit", scope: !5157, file: !5157, line: 224, type: !6831, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6848)
!6848 = !{!6849, !6850, !6851}
!6849 = !DILocalVariable(name: "nr", arg: 1, scope: !6847, file: !5157, line: 224, type: !322)
!6850 = !DILocalVariable(name: "addr", arg: 2, scope: !6847, file: !5157, line: 224, type: !6752)
!6851 = !DILocalVariable(name: "oldbit", scope: !6847, file: !5157, line: 226, type: !899)
!6852 = !DILocation(line: 224, column: 52, scope: !6847)
!6853 = !DILocation(line: 224, column: 86, scope: !6847)
!6854 = !DILocation(line: 226, column: 2, scope: !6847)
!6855 = !DILocation(line: 226, column: 7, scope: !6847)
!6856 = !DILocation(line: 231, column: 33, scope: !6847)
!6857 = !DILocation(line: 231, column: 46, scope: !6847)
!6858 = !DILocation(line: 228, column: 2, scope: !6847)
!6859 = !{i64 2148361532, i64 2148361606}
!6860 = !DILocation(line: 233, column: 9, scope: !6847)
!6861 = !DILocation(line: 234, column: 1, scope: !6847)
!6862 = !DILocation(line: 233, column: 2, scope: !6847)
!6863 = !DISubprogram(name: "kmalloc_large", scope: !171, file: !171, line: 531, type: !6590, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6864 = distinct !DISubprogram(name: "__kmalloc_index", scope: !171, file: !171, line: 444, type: !6865, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6867)
!6865 = !DISubroutineType(types: !6866)
!6866 = !{!7, !333, !899}
!6867 = !{!6868, !6869}
!6868 = !DILocalVariable(name: "size", arg: 1, scope: !6864, file: !171, line: 444, type: !333)
!6869 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6864, file: !171, line: 445, type: !899)
!6870 = !DILocation(line: 444, column: 60, scope: !6864)
!6871 = !DILocation(line: 445, column: 16, scope: !6864)
!6872 = !DILocation(line: 447, column: 7, scope: !6873)
!6873 = distinct !DILexicalBlock(scope: !6864, file: !171, line: 447, column: 6)
!6874 = !DILocation(line: 447, column: 6, scope: !6864)
!6875 = !DILocation(line: 448, column: 3, scope: !6873)
!6876 = !DILocation(line: 450, column: 6, scope: !6877)
!6877 = distinct !DILexicalBlock(scope: !6864, file: !171, line: 450, column: 6)
!6878 = !DILocation(line: 450, column: 11, scope: !6877)
!6879 = !DILocation(line: 450, column: 6, scope: !6864)
!6880 = !DILocation(line: 451, column: 3, scope: !6877)
!6881 = !DILocation(line: 453, column: 32, scope: !6882)
!6882 = distinct !DILexicalBlock(scope: !6864, file: !171, line: 453, column: 6)
!6883 = !DILocation(line: 453, column: 37, scope: !6882)
!6884 = !DILocation(line: 453, column: 42, scope: !6882)
!6885 = !DILocation(line: 453, column: 45, scope: !6882)
!6886 = !DILocation(line: 453, column: 50, scope: !6882)
!6887 = !DILocation(line: 453, column: 6, scope: !6864)
!6888 = !DILocation(line: 454, column: 3, scope: !6882)
!6889 = !DILocation(line: 455, column: 32, scope: !6890)
!6890 = distinct !DILexicalBlock(scope: !6864, file: !171, line: 455, column: 6)
!6891 = !DILocation(line: 455, column: 37, scope: !6890)
!6892 = !DILocation(line: 455, column: 43, scope: !6890)
!6893 = !DILocation(line: 455, column: 46, scope: !6890)
!6894 = !DILocation(line: 455, column: 51, scope: !6890)
!6895 = !DILocation(line: 455, column: 6, scope: !6864)
!6896 = !DILocation(line: 456, column: 3, scope: !6890)
!6897 = !DILocation(line: 457, column: 6, scope: !6898)
!6898 = distinct !DILexicalBlock(scope: !6864, file: !171, line: 457, column: 6)
!6899 = !DILocation(line: 457, column: 11, scope: !6898)
!6900 = !DILocation(line: 457, column: 6, scope: !6864)
!6901 = !DILocation(line: 457, column: 26, scope: !6898)
!6902 = !DILocation(line: 458, column: 6, scope: !6903)
!6903 = distinct !DILexicalBlock(scope: !6864, file: !171, line: 458, column: 6)
!6904 = !DILocation(line: 458, column: 11, scope: !6903)
!6905 = !DILocation(line: 458, column: 6, scope: !6864)
!6906 = !DILocation(line: 458, column: 26, scope: !6903)
!6907 = !DILocation(line: 459, column: 6, scope: !6908)
!6908 = distinct !DILexicalBlock(scope: !6864, file: !171, line: 459, column: 6)
!6909 = !DILocation(line: 459, column: 11, scope: !6908)
!6910 = !DILocation(line: 459, column: 6, scope: !6864)
!6911 = !DILocation(line: 459, column: 26, scope: !6908)
!6912 = !DILocation(line: 460, column: 6, scope: !6913)
!6913 = distinct !DILexicalBlock(scope: !6864, file: !171, line: 460, column: 6)
!6914 = !DILocation(line: 460, column: 11, scope: !6913)
!6915 = !DILocation(line: 460, column: 6, scope: !6864)
!6916 = !DILocation(line: 460, column: 26, scope: !6913)
!6917 = !DILocation(line: 461, column: 6, scope: !6918)
!6918 = distinct !DILexicalBlock(scope: !6864, file: !171, line: 461, column: 6)
!6919 = !DILocation(line: 461, column: 11, scope: !6918)
!6920 = !DILocation(line: 461, column: 6, scope: !6864)
!6921 = !DILocation(line: 461, column: 26, scope: !6918)
!6922 = !DILocation(line: 462, column: 6, scope: !6923)
!6923 = distinct !DILexicalBlock(scope: !6864, file: !171, line: 462, column: 6)
!6924 = !DILocation(line: 462, column: 11, scope: !6923)
!6925 = !DILocation(line: 462, column: 6, scope: !6864)
!6926 = !DILocation(line: 462, column: 26, scope: !6923)
!6927 = !DILocation(line: 463, column: 6, scope: !6928)
!6928 = distinct !DILexicalBlock(scope: !6864, file: !171, line: 463, column: 6)
!6929 = !DILocation(line: 463, column: 11, scope: !6928)
!6930 = !DILocation(line: 463, column: 6, scope: !6864)
!6931 = !DILocation(line: 463, column: 26, scope: !6928)
!6932 = !DILocation(line: 464, column: 6, scope: !6933)
!6933 = distinct !DILexicalBlock(scope: !6864, file: !171, line: 464, column: 6)
!6934 = !DILocation(line: 464, column: 11, scope: !6933)
!6935 = !DILocation(line: 464, column: 6, scope: !6864)
!6936 = !DILocation(line: 464, column: 26, scope: !6933)
!6937 = !DILocation(line: 465, column: 6, scope: !6938)
!6938 = distinct !DILexicalBlock(scope: !6864, file: !171, line: 465, column: 6)
!6939 = !DILocation(line: 465, column: 11, scope: !6938)
!6940 = !DILocation(line: 465, column: 6, scope: !6864)
!6941 = !DILocation(line: 465, column: 26, scope: !6938)
!6942 = !DILocation(line: 466, column: 6, scope: !6943)
!6943 = distinct !DILexicalBlock(scope: !6864, file: !171, line: 466, column: 6)
!6944 = !DILocation(line: 466, column: 11, scope: !6943)
!6945 = !DILocation(line: 466, column: 6, scope: !6864)
!6946 = !DILocation(line: 466, column: 26, scope: !6943)
!6947 = !DILocation(line: 467, column: 6, scope: !6948)
!6948 = distinct !DILexicalBlock(scope: !6864, file: !171, line: 467, column: 6)
!6949 = !DILocation(line: 467, column: 11, scope: !6948)
!6950 = !DILocation(line: 467, column: 6, scope: !6864)
!6951 = !DILocation(line: 467, column: 26, scope: !6948)
!6952 = !DILocation(line: 468, column: 6, scope: !6953)
!6953 = distinct !DILexicalBlock(scope: !6864, file: !171, line: 468, column: 6)
!6954 = !DILocation(line: 468, column: 11, scope: !6953)
!6955 = !DILocation(line: 468, column: 6, scope: !6864)
!6956 = !DILocation(line: 468, column: 26, scope: !6953)
!6957 = !DILocation(line: 469, column: 6, scope: !6958)
!6958 = distinct !DILexicalBlock(scope: !6864, file: !171, line: 469, column: 6)
!6959 = !DILocation(line: 469, column: 11, scope: !6958)
!6960 = !DILocation(line: 469, column: 6, scope: !6864)
!6961 = !DILocation(line: 469, column: 26, scope: !6958)
!6962 = !DILocation(line: 470, column: 6, scope: !6963)
!6963 = distinct !DILexicalBlock(scope: !6864, file: !171, line: 470, column: 6)
!6964 = !DILocation(line: 470, column: 11, scope: !6963)
!6965 = !DILocation(line: 470, column: 6, scope: !6864)
!6966 = !DILocation(line: 470, column: 26, scope: !6963)
!6967 = !DILocation(line: 471, column: 6, scope: !6968)
!6968 = distinct !DILexicalBlock(scope: !6864, file: !171, line: 471, column: 6)
!6969 = !DILocation(line: 471, column: 11, scope: !6968)
!6970 = !DILocation(line: 471, column: 6, scope: !6864)
!6971 = !DILocation(line: 471, column: 26, scope: !6968)
!6972 = !DILocation(line: 472, column: 6, scope: !6973)
!6973 = distinct !DILexicalBlock(scope: !6864, file: !171, line: 472, column: 6)
!6974 = !DILocation(line: 472, column: 11, scope: !6973)
!6975 = !DILocation(line: 472, column: 6, scope: !6864)
!6976 = !DILocation(line: 472, column: 26, scope: !6973)
!6977 = !DILocation(line: 473, column: 6, scope: !6978)
!6978 = distinct !DILexicalBlock(scope: !6864, file: !171, line: 473, column: 6)
!6979 = !DILocation(line: 473, column: 11, scope: !6978)
!6980 = !DILocation(line: 473, column: 6, scope: !6864)
!6981 = !DILocation(line: 473, column: 26, scope: !6978)
!6982 = !DILocation(line: 474, column: 6, scope: !6983)
!6983 = distinct !DILexicalBlock(scope: !6864, file: !171, line: 474, column: 6)
!6984 = !DILocation(line: 474, column: 11, scope: !6983)
!6985 = !DILocation(line: 474, column: 6, scope: !6864)
!6986 = !DILocation(line: 474, column: 27, scope: !6983)
!6987 = !DILocation(line: 475, column: 6, scope: !6988)
!6988 = distinct !DILexicalBlock(scope: !6864, file: !171, line: 475, column: 6)
!6989 = !DILocation(line: 475, column: 11, scope: !6988)
!6990 = !DILocation(line: 475, column: 6, scope: !6864)
!6991 = !DILocation(line: 475, column: 32, scope: !6988)
!6992 = !DILocation(line: 477, column: 50, scope: !6993)
!6993 = distinct !DILexicalBlock(scope: !6864, file: !171, line: 477, column: 6)
!6994 = !DILocation(line: 477, column: 6, scope: !6864)
!6995 = !DILocation(line: 478, column: 3, scope: !6993)
!6996 = !DILocation(line: 478, column: 3, scope: !6997)
!6997 = distinct !DILexicalBlock(scope: !6998, file: !171, line: 478, column: 3)
!6998 = distinct !DILexicalBlock(scope: !6993, file: !171, line: 478, column: 3)
!6999 = !{i32 -2141569876}
!7000 = !DILocation(line: 478, column: 3, scope: !6998)
!7001 = !DILocation(line: 480, column: 3, scope: !6993)
!7002 = !DILocation(line: 480, column: 3, scope: !7003)
!7003 = distinct !DILexicalBlock(scope: !6993, file: !171, line: 480, column: 3)
!7004 = !DILocation(line: 480, column: 3, scope: !7005)
!7005 = distinct !DILexicalBlock(scope: !7003, file: !171, line: 480, column: 3)
!7006 = !DILocation(line: 480, column: 3, scope: !7007)
!7007 = distinct !DILexicalBlock(scope: !7003, file: !171, line: 480, column: 3)
!7008 = !{i64 2153397623, i64 2153397652, i64 2153397698, i64 2153397756, i64 2153397810, i64 2153397864, i64 2153397919, i64 2153397950}
!7009 = !DILocation(line: 483, column: 2, scope: !6864)
!7010 = !DILocation(line: 484, column: 1, scope: !6864)
!7011 = !DISubprogram(name: "kmalloc_trace", scope: !171, file: !171, line: 525, type: !7012, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7012 = !DISubroutineType(types: !7013)
!7013 = !{!358, !7014, !1490, !333}
!7014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7015, size: 64)
!7015 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !7016, line: 11, flags: DIFlagFwdDecl)
!7016 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!7017 = distinct !DISubprogram(name: "kmalloc_type", scope: !171, file: !171, line: 401, type: !7018, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7020)
!7018 = !DISubroutineType(types: !7019)
!7019 = !{!170, !1490, !336}
!7020 = !{!7021, !7022}
!7021 = !DILocalVariable(name: "flags", arg: 1, scope: !7017, file: !171, line: 401, type: !1490)
!7022 = !DILocalVariable(name: "caller", arg: 2, scope: !7017, file: !171, line: 401, type: !336)
!7023 = !DILocation(line: 401, column: 67, scope: !7017)
!7024 = !DILocation(line: 401, column: 88, scope: !7017)
!7025 = !DILocation(line: 407, column: 6, scope: !7026)
!7026 = distinct !DILexicalBlock(scope: !7017, file: !171, line: 407, column: 6)
!7027 = !DILocation(line: 407, column: 6, scope: !7017)
!7028 = !DILocation(line: 413, column: 3, scope: !7026)
!7029 = !DILocation(line: 423, column: 38, scope: !7030)
!7030 = distinct !DILexicalBlock(scope: !7017, file: !171, line: 423, column: 6)
!7031 = !DILocation(line: 423, column: 44, scope: !7030)
!7032 = !DILocation(line: 423, column: 6, scope: !7017)
!7033 = !DILocation(line: 424, column: 3, scope: !7030)
!7034 = !DILocation(line: 426, column: 3, scope: !7035)
!7035 = distinct !DILexicalBlock(scope: !7017, file: !171, line: 425, column: 6)
!7036 = !DILocation(line: 429, column: 1, scope: !7017)
!7037 = !DISubprogram(name: "__kmalloc", scope: !171, file: !171, line: 488, type: !6590, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7038 = !DISubprogram(name: "__compiletime_assert_229", scope: !171, file: !171, line: 478, type: !2662, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!7039 = !DISubprogram(name: "set_pages_wb", scope: !6461, file: !6461, line: 82, type: !7040, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7040 = !DISubroutineType(types: !7041)
!7041 = !{!109, !1200, !109}
!7042 = !DISubprogram(name: "__free_pages", scope: !4740, file: !4740, line: 302, type: !7043, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7043 = !DISubroutineType(types: !7044)
!7044 = !{null, !1200, !7}
!7045 = !DISubprogram(name: "dma_free_attrs", scope: !6538, file: !6538, line: 130, type: !7046, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7046 = !DISubroutineType(types: !7047)
!7047 = !{null, !4197, !333, !358, !4182, !336}
!7048 = distinct !DISubprogram(name: "ttm_pool_page_order", scope: !3, file: !3, line: 343, type: !7049, scopeLine: 344, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7051)
!7049 = !DISubroutineType(types: !7050)
!7050 = !{!7, !4193, !1200}
!7051 = !{!7052, !7053, !7054}
!7052 = !DILocalVariable(name: "pool", arg: 1, scope: !7048, file: !3, line: 343, type: !4193)
!7053 = !DILocalVariable(name: "p", arg: 2, scope: !7048, file: !3, line: 343, type: !1200)
!7054 = !DILocalVariable(name: "dma", scope: !7055, file: !3, line: 346, type: !5390)
!7055 = distinct !DILexicalBlock(scope: !7056, file: !3, line: 345, column: 27)
!7056 = distinct !DILexicalBlock(scope: !7048, file: !3, line: 345, column: 6)
!7057 = !DILocation(line: 343, column: 58, scope: !7048)
!7058 = !DILocation(line: 343, column: 77, scope: !7048)
!7059 = !DILocation(line: 345, column: 6, scope: !7056)
!7060 = !DILocation(line: 345, column: 12, scope: !7056)
!7061 = !DILocation(line: 345, column: 6, scope: !7048)
!7062 = !DILocation(line: 346, column: 3, scope: !7055)
!7063 = !DILocation(line: 346, column: 24, scope: !7055)
!7064 = !DILocation(line: 346, column: 38, scope: !7055)
!7065 = !DILocation(line: 346, column: 41, scope: !7055)
!7066 = !DILocation(line: 346, column: 30, scope: !7055)
!7067 = !DILocation(line: 348, column: 10, scope: !7055)
!7068 = !DILocation(line: 348, column: 15, scope: !7055)
!7069 = !DILocation(line: 348, column: 21, scope: !7055)
!7070 = !DILocation(line: 348, column: 3, scope: !7055)
!7071 = !DILocation(line: 349, column: 2, scope: !7056)
!7072 = !DILocation(line: 351, column: 9, scope: !7048)
!7073 = !DILocation(line: 351, column: 12, scope: !7048)
!7074 = !DILocation(line: 351, column: 2, scope: !7048)
!7075 = !DILocation(line: 352, column: 1, scope: !7048)
!7076 = distinct !DISubprogram(name: "ttm_pool_unmap", scope: !3, file: !3, line: 212, type: !7077, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7079)
!7077 = !DISubroutineType(types: !7078)
!7078 = !{null, !4193, !4182, !7}
!7079 = !{!7080, !7081, !7082}
!7080 = !DILocalVariable(name: "pool", arg: 1, scope: !7076, file: !3, line: 212, type: !4193)
!7081 = !DILocalVariable(name: "dma_addr", arg: 2, scope: !7076, file: !3, line: 212, type: !4182)
!7082 = !DILocalVariable(name: "num_pages", arg: 3, scope: !7076, file: !3, line: 213, type: !7)
!7083 = !DILocation(line: 212, column: 45, scope: !7076)
!7084 = !DILocation(line: 212, column: 62, scope: !7076)
!7085 = !DILocation(line: 213, column: 20, scope: !7076)
!7086 = !DILocation(line: 216, column: 6, scope: !7087)
!7087 = distinct !DILexicalBlock(scope: !7076, file: !3, line: 216, column: 6)
!7088 = !DILocation(line: 216, column: 12, scope: !7087)
!7089 = !DILocation(line: 216, column: 6, scope: !7076)
!7090 = !DILocation(line: 217, column: 3, scope: !7087)
!7091 = !DILocation(line: 219, column: 2, scope: !7076)
!7092 = !DILocation(line: 221, column: 1, scope: !7076)
!7093 = distinct !DISubprogram(name: "ttm_pool_type_give", scope: !3, file: !3, line: 224, type: !7094, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7096)
!7094 = !DISubroutineType(types: !7095)
!7095 = !{null, !4188, !1200}
!7096 = !{!7097, !7098, !7099, !7100}
!7097 = !DILocalVariable(name: "pt", arg: 1, scope: !7093, file: !3, line: 224, type: !4188)
!7098 = !DILocalVariable(name: "p", arg: 2, scope: !7093, file: !3, line: 224, type: !1200)
!7099 = !DILocalVariable(name: "i", scope: !7093, file: !3, line: 226, type: !7)
!7100 = !DILocalVariable(name: "num_pages", scope: !7093, file: !3, line: 226, type: !7)
!7101 = !DILocation(line: 224, column: 54, scope: !7093)
!7102 = !DILocation(line: 224, column: 71, scope: !7093)
!7103 = !DILocation(line: 226, column: 2, scope: !7093)
!7104 = !DILocation(line: 226, column: 15, scope: !7093)
!7105 = !DILocation(line: 226, column: 18, scope: !7093)
!7106 = !DILocation(line: 226, column: 35, scope: !7093)
!7107 = !DILocation(line: 226, column: 39, scope: !7093)
!7108 = !DILocation(line: 226, column: 32, scope: !7093)
!7109 = !DILocation(line: 228, column: 9, scope: !7110)
!7110 = distinct !DILexicalBlock(scope: !7093, file: !3, line: 228, column: 2)
!7111 = !DILocation(line: 228, column: 7, scope: !7110)
!7112 = !DILocation(line: 228, column: 14, scope: !7113)
!7113 = distinct !DILexicalBlock(scope: !7110, file: !3, line: 228, column: 2)
!7114 = !DILocation(line: 228, column: 18, scope: !7113)
!7115 = !DILocation(line: 228, column: 16, scope: !7113)
!7116 = !DILocation(line: 228, column: 2, scope: !7110)
!7117 = !DILocation(line: 229, column: 19, scope: !7118)
!7118 = distinct !DILexicalBlock(scope: !7119, file: !3, line: 229, column: 7)
!7119 = distinct !DILexicalBlock(scope: !7113, file: !3, line: 228, column: 34)
!7120 = !DILocation(line: 229, column: 7, scope: !7118)
!7121 = !DILocation(line: 229, column: 7, scope: !7119)
!7122 = !DILocation(line: 230, column: 19, scope: !7118)
!7123 = !DILocation(line: 230, column: 23, scope: !7118)
!7124 = !DILocation(line: 230, column: 21, scope: !7118)
!7125 = !DILocation(line: 230, column: 4, scope: !7118)
!7126 = !DILocation(line: 232, column: 15, scope: !7118)
!7127 = !DILocation(line: 232, column: 4, scope: !7118)
!7128 = !DILocation(line: 233, column: 2, scope: !7119)
!7129 = !DILocation(line: 228, column: 29, scope: !7113)
!7130 = !DILocation(line: 228, column: 2, scope: !7113)
!7131 = distinct !{!7131, !7116, !7132, !5030, !5031}
!7132 = !DILocation(line: 233, column: 2, scope: !7110)
!7133 = !DILocation(line: 235, column: 13, scope: !7093)
!7134 = !DILocation(line: 235, column: 17, scope: !7093)
!7135 = !DILocation(line: 235, column: 2, scope: !7093)
!7136 = !DILocation(line: 236, column: 12, scope: !7093)
!7137 = !DILocation(line: 236, column: 15, scope: !7093)
!7138 = !DILocation(line: 236, column: 21, scope: !7093)
!7139 = !DILocation(line: 236, column: 25, scope: !7093)
!7140 = !DILocation(line: 236, column: 2, scope: !7093)
!7141 = !DILocation(line: 237, column: 15, scope: !7093)
!7142 = !DILocation(line: 237, column: 19, scope: !7093)
!7143 = !DILocation(line: 237, column: 2, scope: !7093)
!7144 = !DILocation(line: 238, column: 23, scope: !7093)
!7145 = !DILocation(line: 238, column: 27, scope: !7093)
!7146 = !DILocation(line: 238, column: 20, scope: !7093)
!7147 = !DILocation(line: 238, column: 18, scope: !7093)
!7148 = !DILocation(line: 238, column: 2, scope: !7093)
!7149 = !DILocation(line: 239, column: 1, scope: !7093)
!7150 = !DISubprogram(name: "dma_unmap_page_attrs", scope: !6538, file: !6538, line: 107, type: !7151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7151 = !DISubroutineType(types: !7152)
!7152 = !{null, !4197, !4182, !333, !152, !336}
!7153 = distinct !DISubprogram(name: "clear_highpage", scope: !7154, file: !7154, line: 237, type: !1198, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7155)
!7154 = !DIFile(filename: "./include/linux/highmem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "44cc22a6674afa1c65f9d65e2d0f07bb")
!7155 = !{!7156, !7157}
!7156 = !DILocalVariable(name: "page", arg: 1, scope: !7153, file: !7154, line: 237, type: !1200)
!7157 = !DILocalVariable(name: "kaddr", scope: !7153, file: !7154, line: 239, type: !358)
!7158 = !DILocation(line: 237, column: 48, scope: !7153)
!7159 = !DILocation(line: 239, column: 2, scope: !7153)
!7160 = !DILocation(line: 239, column: 8, scope: !7153)
!7161 = !DILocation(line: 239, column: 32, scope: !7153)
!7162 = !DILocation(line: 239, column: 16, scope: !7153)
!7163 = !DILocation(line: 240, column: 13, scope: !7153)
!7164 = !DILocation(line: 240, column: 2, scope: !7153)
!7165 = !DILocation(line: 241, column: 2, scope: !7153)
!7166 = !DILocation(line: 241, column: 2, scope: !7167)
!7167 = distinct !DILexicalBlock(scope: !7153, file: !7154, line: 241, column: 2)
!7168 = !DILocation(line: 241, column: 2, scope: !7169)
!7169 = distinct !DILexicalBlock(scope: !7167, file: !7154, line: 241, column: 2)
!7170 = !DILocation(line: 242, column: 1, scope: !7153)
!7171 = distinct !DISubprogram(name: "clear_page", scope: !6642, file: !6642, line: 47, type: !3360, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7172)
!7172 = !{!7173}
!7173 = !DILocalVariable(name: "page", arg: 1, scope: !7171, file: !6642, line: 47, type: !358)
!7174 = !DILocation(line: 47, column: 37, scope: !7171)
!7175 = !DILocation(line: 53, column: 24, scope: !7171)
!7176 = !DILocation(line: 53, column: 2, scope: !7171)
!7177 = !DILocation(line: 54, column: 2, scope: !7171)
!7178 = !{i64 2148599980, i64 2148600013, i64 2148600019, i64 2148600035, i64 2148600054, i64 2148600085, i64 2148601044, i64 2148599619, i64 2148601050, i64 2148601098, i64 2148601162, i64 2148601226, i64 2148601283, i64 2148601490, i64 2148601538, i64 2148601602, i64 2148601666, i64 2148601723, i64 2148599737, i64 2148599762, i64 2148601930, i64 2148602059, i64 2148601991, i64 2148602073, i64 2148602087, i64 2148602216, i64 2148602148, i64 2148602230, i64 2148599896}
!7179 = !DILocation(line: 60, column: 1, scope: !7171)
!7180 = distinct !DISubprogram(name: "lowmem_page_address", scope: !1208, file: !1208, line: 2176, type: !7181, scopeLine: 2177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7183)
!7181 = !DISubroutineType(types: !7182)
!7182 = !{!358, !5493}
!7183 = !{!7184}
!7184 = !DILocalVariable(name: "page", arg: 1, scope: !7180, file: !1208, line: 2176, type: !5493)
!7185 = !DILocation(line: 2176, column: 69, scope: !7180)
!7186 = !DILocation(line: 2178, column: 9, scope: !7180)
!7187 = !DILocation(line: 2178, column: 2, scope: !7180)
!7188 = distinct !DISubprogram(name: "list_add", scope: !6183, file: !6183, line: 167, type: !6441, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7189)
!7189 = !{!7190, !7191}
!7190 = !DILocalVariable(name: "new", arg: 1, scope: !7188, file: !6183, line: 167, type: !190)
!7191 = !DILocalVariable(name: "head", arg: 2, scope: !7188, file: !6183, line: 167, type: !190)
!7192 = !DILocation(line: 167, column: 47, scope: !7188)
!7193 = !DILocation(line: 167, column: 70, scope: !7188)
!7194 = !DILocation(line: 169, column: 13, scope: !7188)
!7195 = !DILocation(line: 169, column: 18, scope: !7188)
!7196 = !DILocation(line: 169, column: 24, scope: !7188)
!7197 = !DILocation(line: 169, column: 30, scope: !7188)
!7198 = !DILocation(line: 169, column: 2, scope: !7188)
!7199 = !DILocation(line: 170, column: 1, scope: !7188)
!7200 = distinct !DISubprogram(name: "atomic_long_add", scope: !5679, file: !5679, line: 3230, type: !6314, scopeLine: 3231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7201)
!7201 = !{!7202, !7203}
!7202 = !DILocalVariable(name: "i", arg: 1, scope: !7200, file: !5679, line: 3230, type: !322)
!7203 = !DILocalVariable(name: "v", arg: 2, scope: !7200, file: !5679, line: 3230, type: !3284)
!7204 = !DILocation(line: 3230, column: 22, scope: !7200)
!7205 = !DILocation(line: 3230, column: 40, scope: !7200)
!7206 = !DILocation(line: 3232, column: 31, scope: !7200)
!7207 = !DILocation(line: 3232, column: 2, scope: !7200)
!7208 = !DILocation(line: 3233, column: 22, scope: !7200)
!7209 = !DILocation(line: 3233, column: 25, scope: !7200)
!7210 = !DILocation(line: 3233, column: 2, scope: !7200)
!7211 = !DILocation(line: 3234, column: 1, scope: !7200)
!7212 = distinct !DISubprogram(name: "kmap_local_page", scope: !7213, file: !7213, line: 183, type: !7214, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7216)
!7213 = !DIFile(filename: "./include/linux/highmem-internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ae7838583c7018843a11d0e374eeb3")
!7214 = !DISubroutineType(types: !7215)
!7215 = !{!358, !1200}
!7216 = !{!7217}
!7217 = !DILocalVariable(name: "page", arg: 1, scope: !7212, file: !7213, line: 183, type: !1200)
!7218 = !DILocation(line: 183, column: 50, scope: !7212)
!7219 = !DILocation(line: 185, column: 9, scope: !7212)
!7220 = !DILocation(line: 185, column: 2, scope: !7212)
!7221 = distinct !DISubprogram(name: "__kunmap_local", scope: !7213, file: !7213, line: 203, type: !6665, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7222)
!7222 = !{!7223}
!7223 = !DILocalVariable(name: "addr", arg: 1, scope: !7221, file: !7213, line: 203, type: !1342)
!7224 = !DILocation(line: 203, column: 47, scope: !7221)
!7225 = !DILocation(line: 208, column: 1, scope: !7221)
!7226 = distinct !DISubprogram(name: "kmsan_unpoison_memory", scope: !7227, file: !7227, line: 70, type: !7228, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7230)
!7227 = !DIFile(filename: "./include/linux/kmsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cfeb6fcb47441b7815b086def457771")
!7228 = !DISubroutineType(types: !7229)
!7229 = !{null, !1342, !333}
!7230 = !{!7231, !7232}
!7231 = !DILocalVariable(name: "address", arg: 1, scope: !7226, file: !7227, line: 70, type: !1342)
!7232 = !DILocalVariable(name: "size", arg: 2, scope: !7226, file: !7227, line: 70, type: !333)
!7233 = !DILocation(line: 70, column: 54, scope: !7226)
!7234 = !DILocation(line: 70, column: 70, scope: !7226)
!7235 = !DILocation(line: 72, column: 1, scope: !7226)
!7236 = distinct !DISubprogram(name: "__list_add", scope: !6183, file: !6183, line: 146, type: !7237, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7239)
!7237 = !DISubroutineType(types: !7238)
!7238 = !{null, !190, !190, !190}
!7239 = !{!7240, !7241, !7242}
!7240 = !DILocalVariable(name: "new", arg: 1, scope: !7236, file: !6183, line: 146, type: !190)
!7241 = !DILocalVariable(name: "prev", arg: 2, scope: !7236, file: !6183, line: 147, type: !190)
!7242 = !DILocalVariable(name: "next", arg: 3, scope: !7236, file: !6183, line: 148, type: !190)
!7243 = !DILocation(line: 146, column: 49, scope: !7236)
!7244 = !DILocation(line: 147, column: 28, scope: !7236)
!7245 = !DILocation(line: 148, column: 28, scope: !7236)
!7246 = !DILocation(line: 150, column: 24, scope: !7247)
!7247 = distinct !DILexicalBlock(scope: !7236, file: !6183, line: 150, column: 6)
!7248 = !DILocation(line: 150, column: 29, scope: !7247)
!7249 = !DILocation(line: 150, column: 35, scope: !7247)
!7250 = !DILocation(line: 150, column: 7, scope: !7247)
!7251 = !DILocation(line: 150, column: 6, scope: !7236)
!7252 = !DILocation(line: 151, column: 3, scope: !7247)
!7253 = !DILocation(line: 153, column: 15, scope: !7236)
!7254 = !DILocation(line: 153, column: 2, scope: !7236)
!7255 = !DILocation(line: 153, column: 8, scope: !7236)
!7256 = !DILocation(line: 153, column: 13, scope: !7236)
!7257 = !DILocation(line: 154, column: 14, scope: !7236)
!7258 = !DILocation(line: 154, column: 2, scope: !7236)
!7259 = !DILocation(line: 154, column: 7, scope: !7236)
!7260 = !DILocation(line: 154, column: 12, scope: !7236)
!7261 = !DILocation(line: 155, column: 14, scope: !7236)
!7262 = !DILocation(line: 155, column: 2, scope: !7236)
!7263 = !DILocation(line: 155, column: 7, scope: !7236)
!7264 = !DILocation(line: 155, column: 12, scope: !7236)
!7265 = !DILocation(line: 156, column: 2, scope: !7236)
!7266 = !DILocation(line: 156, column: 2, scope: !7267)
!7267 = distinct !DILexicalBlock(scope: !7236, file: !6183, line: 156, column: 2)
!7268 = !DILocation(line: 156, column: 2, scope: !7269)
!7269 = distinct !DILexicalBlock(scope: !7267, file: !6183, line: 156, column: 2)
!7270 = !DILocation(line: 156, column: 2, scope: !7271)
!7271 = distinct !DILexicalBlock(scope: !7267, file: !6183, line: 156, column: 2)
!7272 = !DILocation(line: 157, column: 1, scope: !7236)
!7273 = distinct !DISubprogram(name: "__list_add_valid", scope: !6183, file: !6183, line: 128, type: !7274, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7276)
!7274 = !DISubroutineType(types: !7275)
!7275 = !{!899, !190, !190, !190}
!7276 = !{!7277, !7278, !7279}
!7277 = !DILocalVariable(name: "new", arg: 1, scope: !7273, file: !6183, line: 128, type: !190)
!7278 = !DILocalVariable(name: "prev", arg: 2, scope: !7273, file: !6183, line: 129, type: !190)
!7279 = !DILocalVariable(name: "next", arg: 3, scope: !7273, file: !6183, line: 130, type: !190)
!7280 = !DILocation(line: 128, column: 55, scope: !7273)
!7281 = !DILocation(line: 129, column: 23, scope: !7273)
!7282 = !DILocation(line: 130, column: 23, scope: !7273)
!7283 = !DILocation(line: 132, column: 2, scope: !7273)
!7284 = distinct !DISubprogram(name: "raw_atomic_long_add", scope: !657, file: !657, line: 118, type: !6314, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7285)
!7285 = !{!7286, !7287}
!7286 = !DILocalVariable(name: "i", arg: 1, scope: !7284, file: !657, line: 118, type: !322)
!7287 = !DILocalVariable(name: "v", arg: 2, scope: !7284, file: !657, line: 118, type: !3284)
!7288 = !DILocation(line: 118, column: 26, scope: !7284)
!7289 = !DILocation(line: 118, column: 44, scope: !7284)
!7290 = !DILocation(line: 121, column: 19, scope: !7284)
!7291 = !DILocation(line: 121, column: 22, scope: !7284)
!7292 = !DILocation(line: 121, column: 2, scope: !7284)
!7293 = !DILocation(line: 125, column: 1, scope: !7284)
!7294 = distinct !DISubprogram(name: "raw_atomic64_add", scope: !6390, file: !6390, line: 2643, type: !6391, scopeLine: 2644, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7295)
!7295 = !{!7296, !7297}
!7296 = !DILocalVariable(name: "i", arg: 1, scope: !7294, file: !6390, line: 2643, type: !662)
!7297 = !DILocalVariable(name: "v", arg: 2, scope: !7294, file: !6390, line: 2643, type: !6393)
!7298 = !DILocation(line: 2643, column: 22, scope: !7294)
!7299 = !DILocation(line: 2643, column: 37, scope: !7294)
!7300 = !DILocation(line: 2645, column: 20, scope: !7294)
!7301 = !DILocation(line: 2645, column: 23, scope: !7294)
!7302 = !DILocation(line: 2645, column: 2, scope: !7294)
!7303 = !DILocation(line: 2646, column: 1, scope: !7294)
!7304 = distinct !DISubprogram(name: "arch_atomic64_add", scope: !6404, file: !6404, line: 23, type: !6391, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7305)
!7305 = !{!7306, !7307}
!7306 = !DILocalVariable(name: "i", arg: 1, scope: !7304, file: !6404, line: 23, type: !662)
!7307 = !DILocalVariable(name: "v", arg: 2, scope: !7304, file: !6404, line: 23, type: !6393)
!7308 = !DILocation(line: 23, column: 51, scope: !7304)
!7309 = !DILocation(line: 23, column: 66, scope: !7304)
!7310 = !DILocation(line: 26, column: 16, scope: !7304)
!7311 = !DILocation(line: 26, column: 19, scope: !7304)
!7312 = !DILocation(line: 27, column: 16, scope: !7304)
!7313 = !DILocation(line: 27, column: 25, scope: !7304)
!7314 = !DILocation(line: 27, column: 28, scope: !7304)
!7315 = !DILocation(line: 25, column: 2, scope: !7304)
!7316 = !{i64 2148829449, i64 2148829488, i64 2148829509, i64 2148829546, i64 2148829569, i64 2148829439}
!7317 = !DILocation(line: 28, column: 1, scope: !7304)
!7318 = distinct !DISubprogram(name: "raw_atomic_long_read", scope: !657, file: !657, line: 35, type: !5680, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7319)
!7319 = !{!7320}
!7320 = !DILocalVariable(name: "v", arg: 1, scope: !7318, file: !657, line: 35, type: !5682)
!7321 = !DILocation(line: 35, column: 43, scope: !7318)
!7322 = !DILocation(line: 38, column: 27, scope: !7318)
!7323 = !DILocation(line: 38, column: 9, scope: !7318)
!7324 = !DILocation(line: 38, column: 2, scope: !7318)
!7325 = distinct !DISubprogram(name: "raw_atomic64_read", scope: !6390, file: !6390, line: 2554, type: !7326, scopeLine: 2555, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7330)
!7326 = !DISubroutineType(types: !7327)
!7327 = !{!662, !7328}
!7328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7329, size: 64)
!7329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !658)
!7330 = !{!7331}
!7331 = !DILocalVariable(name: "v", arg: 1, scope: !7325, file: !6390, line: 2554, type: !7328)
!7332 = !DILocation(line: 2554, column: 37, scope: !7325)
!7333 = !DILocation(line: 2556, column: 28, scope: !7325)
!7334 = !DILocation(line: 2556, column: 9, scope: !7325)
!7335 = !DILocation(line: 2556, column: 2, scope: !7325)
!7336 = distinct !DISubprogram(name: "arch_atomic64_read", scope: !6404, file: !6404, line: 13, type: !7326, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7337)
!7337 = !{!7338}
!7338 = !DILocalVariable(name: "v", arg: 1, scope: !7336, file: !6404, line: 13, type: !7328)
!7339 = !DILocation(line: 13, column: 65, scope: !7336)
!7340 = !DILocation(line: 15, column: 9, scope: !7336)
!7341 = !DILocation(line: 15, column: 2, scope: !7336)
!7342 = distinct !DISubprogram(name: "list_move_tail", scope: !6183, file: !6183, line: 307, type: !6441, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7343)
!7343 = !{!7344, !7345}
!7344 = !DILocalVariable(name: "list", arg: 1, scope: !7342, file: !6183, line: 307, type: !190)
!7345 = !DILocalVariable(name: "head", arg: 2, scope: !7342, file: !6183, line: 308, type: !190)
!7346 = !DILocation(line: 307, column: 53, scope: !7342)
!7347 = !DILocation(line: 308, column: 25, scope: !7342)
!7348 = !DILocation(line: 310, column: 19, scope: !7342)
!7349 = !DILocation(line: 310, column: 2, scope: !7342)
!7350 = !DILocation(line: 311, column: 16, scope: !7342)
!7351 = !DILocation(line: 311, column: 22, scope: !7342)
!7352 = !DILocation(line: 311, column: 2, scope: !7342)
!7353 = !DILocation(line: 312, column: 1, scope: !7342)
!7354 = distinct !DISubprogram(name: "list_add_tail", scope: !6183, file: !6183, line: 181, type: !6441, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7355)
!7355 = !{!7356, !7357}
!7356 = !DILocalVariable(name: "new", arg: 1, scope: !7354, file: !6183, line: 181, type: !190)
!7357 = !DILocalVariable(name: "head", arg: 2, scope: !7354, file: !6183, line: 181, type: !190)
!7358 = !DILocation(line: 181, column: 52, scope: !7354)
!7359 = !DILocation(line: 181, column: 75, scope: !7354)
!7360 = !DILocation(line: 183, column: 13, scope: !7354)
!7361 = !DILocation(line: 183, column: 18, scope: !7354)
!7362 = !DILocation(line: 183, column: 24, scope: !7354)
!7363 = !DILocation(line: 183, column: 30, scope: !7354)
!7364 = !DILocation(line: 183, column: 2, scope: !7354)
!7365 = !DILocation(line: 184, column: 1, scope: !7354)
!7366 = !DISubprogram(name: "seq_printf", scope: !642, file: !642, line: 119, type: !7367, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7367 = !DISubroutineType(types: !7368)
!7368 = !{null, !640, !205, null}
!7369 = !DISubprogram(name: "_raw_spin_lock", scope: !7370, file: !7370, line: 22, type: !7371, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7370 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!7371 = !DISubroutineType(types: !7372)
!7372 = !{null, !6175}
!7373 = distinct !DISubprogram(name: "ttm_pool_type_count", scope: !3, file: !3, line: 642, type: !7374, scopeLine: 643, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7376)
!7374 = !DISubroutineType(types: !7375)
!7375 = !{!7, !4188}
!7376 = !{!7377, !7378, !7379, !7380, !7383}
!7377 = !DILocalVariable(name: "pt", arg: 1, scope: !7373, file: !3, line: 642, type: !4188)
!7378 = !DILocalVariable(name: "count", scope: !7373, file: !3, line: 644, type: !7)
!7379 = !DILocalVariable(name: "p", scope: !7373, file: !3, line: 645, type: !1200)
!7380 = !DILocalVariable(name: "__mptr", scope: !7381, file: !3, line: 649, type: !358)
!7381 = distinct !DILexicalBlock(scope: !7382, file: !3, line: 649, column: 2)
!7382 = distinct !DILexicalBlock(scope: !7373, file: !3, line: 649, column: 2)
!7383 = !DILocalVariable(name: "__mptr", scope: !7384, file: !3, line: 649, type: !358)
!7384 = distinct !DILexicalBlock(scope: !7385, file: !3, line: 649, column: 2)
!7385 = distinct !DILexicalBlock(scope: !7382, file: !3, line: 649, column: 2)
!7386 = !DILocation(line: 642, column: 63, scope: !7373)
!7387 = !DILocation(line: 644, column: 2, scope: !7373)
!7388 = !DILocation(line: 644, column: 15, scope: !7373)
!7389 = !DILocation(line: 645, column: 2, scope: !7373)
!7390 = !DILocation(line: 645, column: 15, scope: !7373)
!7391 = !DILocation(line: 647, column: 13, scope: !7373)
!7392 = !DILocation(line: 647, column: 17, scope: !7373)
!7393 = !DILocation(line: 647, column: 2, scope: !7373)
!7394 = !DILocation(line: 649, column: 2, scope: !7381)
!7395 = !DILocation(line: 649, column: 2, scope: !7382)
!7396 = !DILocation(line: 649, column: 2, scope: !7385)
!7397 = !DILocation(line: 650, column: 3, scope: !7385)
!7398 = !DILocation(line: 649, column: 2, scope: !7384)
!7399 = distinct !{!7399, !7395, !7400, !5030, !5031}
!7400 = !DILocation(line: 650, column: 5, scope: !7382)
!7401 = !DILocation(line: 651, column: 15, scope: !7373)
!7402 = !DILocation(line: 651, column: 19, scope: !7373)
!7403 = !DILocation(line: 651, column: 2, scope: !7373)
!7404 = !DILocation(line: 653, column: 9, scope: !7373)
!7405 = !DILocation(line: 654, column: 1, scope: !7373)
!7406 = !DILocation(line: 653, column: 2, scope: !7373)
!7407 = !DISubprogram(name: "_raw_spin_unlock", scope: !7370, file: !7370, line: 39, type: !7371, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7408 = distinct !DISubprogram(name: "ttm_pool_debugfs_globals_open", scope: !3, file: !3, line: 705, type: !1650, scopeLine: 705, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7409)
!7409 = !{!7410, !7411}
!7410 = !DILocalVariable(name: "inode", arg: 1, scope: !7408, file: !3, line: 705, type: !367)
!7411 = !DILocalVariable(name: "file", arg: 2, scope: !7408, file: !3, line: 705, type: !1027)
!7412 = !DILocation(line: 705, column: 1, scope: !7408)
!7413 = !DISubprogram(name: "single_open", scope: !642, file: !642, line: 166, type: !7414, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7414 = !DISubroutineType(types: !7415)
!7415 = !{!109, !1027, !691, !358}
!7416 = distinct !DISubprogram(name: "ttm_pool_debugfs_globals_show", scope: !3, file: !3, line: 686, type: !692, scopeLine: 687, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7417)
!7417 = !{!7418, !7419}
!7418 = !DILocalVariable(name: "m", arg: 1, scope: !7416, file: !3, line: 686, type: !640)
!7419 = !DILocalVariable(name: "data", arg: 2, scope: !7416, file: !3, line: 686, type: !358)
!7420 = !DILocation(line: 686, column: 59, scope: !7416)
!7421 = !DILocation(line: 686, column: 68, scope: !7416)
!7422 = !DILocation(line: 688, column: 26, scope: !7416)
!7423 = !DILocation(line: 688, column: 2, scope: !7416)
!7424 = !DILocation(line: 690, column: 2, scope: !7416)
!7425 = !DILocation(line: 691, column: 11, scope: !7416)
!7426 = !DILocation(line: 691, column: 2, scope: !7416)
!7427 = !DILocation(line: 692, column: 49, scope: !7416)
!7428 = !DILocation(line: 692, column: 2, scope: !7416)
!7429 = !DILocation(line: 693, column: 11, scope: !7416)
!7430 = !DILocation(line: 693, column: 2, scope: !7416)
!7431 = !DILocation(line: 694, column: 43, scope: !7416)
!7432 = !DILocation(line: 694, column: 2, scope: !7416)
!7433 = !DILocation(line: 695, column: 11, scope: !7416)
!7434 = !DILocation(line: 695, column: 2, scope: !7416)
!7435 = !DILocation(line: 696, column: 55, scope: !7416)
!7436 = !DILocation(line: 696, column: 2, scope: !7416)
!7437 = !DILocation(line: 697, column: 11, scope: !7416)
!7438 = !DILocation(line: 697, column: 2, scope: !7416)
!7439 = !DILocation(line: 698, column: 49, scope: !7416)
!7440 = !DILocation(line: 698, column: 2, scope: !7416)
!7441 = !DILocation(line: 699, column: 2, scope: !7416)
!7442 = !DILocation(line: 701, column: 26, scope: !7416)
!7443 = !DILocation(line: 701, column: 2, scope: !7416)
!7444 = !DILocation(line: 703, column: 2, scope: !7416)
!7445 = distinct !DISubprogram(name: "ttm_pool_debugfs_shrink_open", scope: !3, file: !3, line: 761, type: !1650, scopeLine: 761, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7446)
!7446 = !{!7447, !7448}
!7447 = !DILocalVariable(name: "inode", arg: 1, scope: !7445, file: !3, line: 761, type: !367)
!7448 = !DILocalVariable(name: "file", arg: 2, scope: !7445, file: !3, line: 761, type: !1027)
!7449 = !DILocation(line: 761, column: 1, scope: !7445)
!7450 = distinct !DISubprogram(name: "ttm_pool_debugfs_shrink_show", scope: !3, file: !3, line: 750, type: !692, scopeLine: 751, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7451)
!7451 = !{!7452, !7453, !7454}
!7452 = !DILocalVariable(name: "m", arg: 1, scope: !7450, file: !3, line: 750, type: !640)
!7453 = !DILocalVariable(name: "data", arg: 2, scope: !7450, file: !3, line: 750, type: !358)
!7454 = !DILocalVariable(name: "sc", scope: !7450, file: !3, line: 752, type: !1800)
!7455 = !DILocation(line: 750, column: 58, scope: !7450)
!7456 = !DILocation(line: 750, column: 67, scope: !7450)
!7457 = !DILocation(line: 752, column: 2, scope: !7450)
!7458 = !DILocation(line: 752, column: 24, scope: !7450)
!7459 = !DILocation(line: 754, column: 2, scope: !7450)
!7460 = !DILocation(line: 755, column: 13, scope: !7450)
!7461 = !DILocation(line: 755, column: 29, scope: !7450)
!7462 = !DILocation(line: 756, column: 6, scope: !7450)
!7463 = !DILocation(line: 755, column: 2, scope: !7450)
!7464 = !DILocation(line: 757, column: 2, scope: !7450)
!7465 = !DILocation(line: 760, column: 1, scope: !7450)
!7466 = !DILocation(line: 759, column: 2, scope: !7450)
!7467 = distinct !DISubprogram(name: "fs_reclaim_acquire", scope: !7468, file: !7468, line: 263, type: !7469, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7471)
!7468 = !DIFile(filename: "./include/linux/sched/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2bdb17d42d55a8ac5ff9bf0c87450707")
!7469 = !DISubroutineType(types: !7470)
!7470 = !{null, !1490}
!7471 = !{!7472}
!7472 = !DILocalVariable(name: "gfp_mask", arg: 1, scope: !7467, file: !7468, line: 263, type: !1490)
!7473 = !DILocation(line: 263, column: 45, scope: !7467)
!7474 = !DILocation(line: 263, column: 57, scope: !7467)
!7475 = distinct !DISubprogram(name: "fs_reclaim_release", scope: !7468, file: !7468, line: 264, type: !7469, scopeLine: 264, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7476)
!7476 = !{!7477}
!7477 = !DILocalVariable(name: "gfp_mask", arg: 1, scope: !7475, file: !7468, line: 264, type: !1490)
!7478 = !DILocation(line: 264, column: 45, scope: !7475)
!7479 = !DILocation(line: 264, column: 57, scope: !7475)
