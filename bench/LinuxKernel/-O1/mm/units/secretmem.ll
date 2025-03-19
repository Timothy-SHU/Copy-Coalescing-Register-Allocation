; ModuleID = 'mm/secretmem.c'
source_filename = "mm/secretmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall5.init..kmod_secretmem__352_295_secretmem_init\22, \22a\22\09\09"
module asm "__initcall__kmod_secretmem__352_295_secretmem_init5:\09\09\09"
module asm ".long\09__initstub__kmod_secretmem__352_295_secretmem_init5 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.20 }
%union.anon.20 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [56 x i8] }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type {}
%struct.vm_area_struct = type { %union.anon.21, ptr, %struct.pgprot, %union.anon.23, i32, ptr, i8, %struct.anon.24, %struct.list_head, ptr, ptr, i64, ptr, ptr, %struct.atomic64_t, ptr, %struct.vm_userfaultfd_ctx }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { i64, i64 }
%struct.pgprot = type { i64 }
%union.anon.23 = type { i64 }
%struct.anon.24 = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.folio = type { %union.anon.32, %union.anon.47, %union.anon.49 }
%union.anon.32 = type { %struct.page }
%struct.page = type { i64, %union.anon.37, %union.anon.46, %struct.atomic_t, [8 x i8] }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { %union.anon.39, ptr, %union.anon.41, i64 }
%union.anon.39 = type { %struct.list_head }
%union.anon.41 = type { i64 }
%union.anon.46 = type { %struct.atomic_t }
%union.anon.47 = type { %struct.page }
%union.anon.49 = type { %struct.page }
%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %union.anon.25, i64, i64, %union.anon.26 }
%union.anon.25 = type { i64 }
%union.anon.26 = type { i64 }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.vm_fault = type { %struct.anon.30, i32, ptr, ptr, %union.anon.31, ptr, ptr, ptr, ptr, ptr }
%struct.anon.30 = type { ptr, i32, i64, i64, i64 }
%union.anon.31 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.file = type { %union.anon.27, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.27 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.28, %struct.qspinlock }
%union.anon.28 = type { %struct.atomic_t }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.path = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.52, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.53, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.54, ptr, %struct.address_space, %struct.list_head, %union.anon.55, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.52 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.53 = type { %struct.callback_head }
%union.anon.54 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.55 = type { ptr }
%struct.anon.33 = type { i64, %union.anon.34, ptr, i64, %union.anon.36, %struct.atomic_t, %struct.atomic_t }
%union.anon.34 = type { %struct.list_head }
%union.anon.36 = type { ptr }
%struct.anon.48 = type { i64, i64, i64, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32 }
%struct.qstr = type { %union.anon.56, ptr }
%union.anon.56 = type { i64 }
%struct.anon.57 = type { i32, i32 }
%struct.vma_lock = type { %struct.rw_semaphore }
%struct.mm_struct = type { %struct.anon.58, [0 x i64] }
%struct.anon.58 = type { %struct.anon.59, %struct.maple_tree, ptr, i64, i64, i64, i64, i64, ptr, %struct.atomic_t, %struct.atomic_t, ptr, i64, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [52 x i64], [4 x %struct.percpu_counter], ptr, %struct.mm_context_t, i64, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, %struct.uprobes_state, %struct.atomic64_t, %struct.work_struct, [48 x i8] }
%struct.anon.59 = type { %struct.atomic_t, [60 x i8] }
%struct.maple_tree = type { %union.anon.60, i32, ptr }
%union.anon.60 = type { %struct.spinlock }
%struct.seqcount = type { i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.mm_context_t = type { i64, %struct.atomic64_t, i64, %struct.rw_semaphore, ptr, i64, %struct.mutex, ptr, ptr, %struct.atomic_t, i16, i16 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.iattr = type { i32, i16, %union.anon.61, %union.anon.62, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%union.anon.61 = type { %struct.kuid_t }
%union.anon.62 = type { %struct.kgid_t }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [32 x i8], %struct.lockref, ptr, ptr, i64, ptr, %union.anon.65, %struct.list_head, %struct.list_head, %union.anon.66 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.lockref = type { %union.anon.63 }
%union.anon.63 = type { i64 }
%union.anon.65 = type { %struct.list_head }
%union.anon.66 = type { %struct.hlist_node }

@__param_str_enable = internal constant [17 x i8] c"secretmem.enable\00", align 16, !dbg !0
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 8
@secretmem_enable = internal global i8 1, section ".data..ro_after_init", align 1, !dbg !6380
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.20 { ptr @secretmem_enable } }, section "__param", align 8, !dbg !6362
@__UNIQUE_ID_enabletype349 = internal constant [31 x i8] c"secretmem.parmtype=enable:bool\00", section ".modinfo", align 1, !dbg !6364
@__UNIQUE_ID_secretmem_enable350 = internal constant [81 x i8] c"secretmem.parm=secretmem_enable:Enable secretmem and memfd_secret(2) system call\00", section ".modinfo", align 1, !dbg !6369
@secretmem_users = internal global %struct.atomic_t zeroinitializer, align 4, !dbg !6378
@secretmem_vm_ops = internal constant %struct.vm_operations_struct { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @secretmem_fault, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !6382
@secretmem_aops = hidden constant %struct.address_space_operations { ptr null, ptr null, ptr null, ptr @noop_dirty_folio, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @secretmem_free_folio, ptr null, ptr @secretmem_migrate_folio, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !6374
@__UNIQUE_ID___addressable___initstub__kmod_secretmem__352_295_secretmem_init5353 = internal global ptr @__initstub__kmod_secretmem__352_295_secretmem_init5, section ".discard.addressable", align 8, !dbg !6376
@vmemmap_base = external dso_local global i64, align 8
@page_offset_base = external dso_local global i64, align 8
@.str = private unnamed_addr constant [24 x i8] c"include/linux/highmem.h\00", align 1, !dbg !6384
@.str.1 = private unnamed_addr constant [12 x i8] c"[secretmem]\00", align 1, !dbg !6390
@secretmem_mnt = internal global ptr null, align 8, !dbg !6396
@.str.2 = private unnamed_addr constant [10 x i8] c"secretmem\00", align 1, !dbg !6393
@secretmem_fops = internal constant %struct.file_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @secretmem_mmap, i64 0, ptr null, ptr null, ptr @secretmem_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !6398
@secretmem_iops = internal constant %struct.inode_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @secretmem_setattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [56 x i8] undef }, align 64, !dbg !6400
@secretmem_fs = internal global %struct.file_system_type { ptr @.str.2, i32 0, ptr @secretmem_init_fs_context, ptr null, ptr null, ptr @kill_anon_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, align 8, !dbg !6402
@llvm.compiler.used = appending global [4 x ptr] [ptr @__param_enable, ptr @__UNIQUE_ID_enabletype349, ptr @__UNIQUE_ID_secretmem_enable350, ptr @__UNIQUE_ID___addressable___initstub__kmod_secretmem__352_295_secretmem_init5353], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @secretmem_active() #0 align 16 !dbg !6416 {
entry:
  %call = call i32 @atomic_read(ptr noundef @secretmem_users) #11, !dbg !6417
  %tobool = icmp ne i32 %call, 0, !dbg !6418
  %lnot = xor i1 %tobool, true, !dbg !6418
  %lnot1 = xor i1 %lnot, true, !dbg !6419
  ret i1 %lnot1, !dbg !6420
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #1 align 16 !dbg !6421 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6428, metadata !DIExpression()), !dbg !6429
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6430
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #11, !dbg !6431
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6432
  %call = call i32 @raw_atomic_read(ptr noundef %1) #11, !dbg !6433
  ret i32 %call, !dbg !6434
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @vma_is_secretmem(ptr noundef %vma) #0 align 16 !dbg !6435 {
entry:
  %vma.addr = alloca ptr, align 8
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !6439, metadata !DIExpression()), !dbg !6440
  %0 = load ptr, ptr %vma.addr, align 8, !dbg !6441
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 10, !dbg !6442
  %1 = load ptr, ptr %vm_ops, align 8, !dbg !6442
  %cmp = icmp eq ptr %1, @secretmem_vm_ops, !dbg !6443
  ret i1 %cmp, !dbg !6444
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @noop_dirty_folio(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @secretmem_free_folio(ptr noundef %folio) #0 align 16 !dbg !6445 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6447, metadata !DIExpression()), !dbg !6448
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !6449
  %1 = getelementptr inbounds %struct.folio, ptr %0, i32 0, i32 0, !dbg !6450
  %call = call i32 @set_direct_map_default_noflush(ptr noundef %1) #11, !dbg !6451
  %2 = load ptr, ptr %folio.addr, align 8, !dbg !6452
  %3 = load ptr, ptr %folio.addr, align 8, !dbg !6453
  %call1 = call i64 @folio_size(ptr noundef %3) #11, !dbg !6454
  call void @folio_zero_segment(ptr noundef %2, i64 noundef 0, i64 noundef %call1) #11, !dbg !6455
  ret void, !dbg !6456
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @secretmem_migrate_folio(ptr noundef %mapping, ptr noundef %dst, ptr noundef %src, i32 noundef %mode) #0 align 16 !dbg !6457 {
entry:
  %mapping.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %mode.addr = alloca i32, align 4
  store ptr %mapping, ptr %mapping.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mapping.addr, metadata !6459, metadata !DIExpression()), !dbg !6463
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !6460, metadata !DIExpression()), !dbg !6464
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !6461, metadata !DIExpression()), !dbg !6465
  store i32 %mode, ptr %mode.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !6462, metadata !DIExpression()), !dbg !6466
  ret i32 -16, !dbg !6467
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__x64_sys_memfd_secret(ptr noundef %regs) #0 align 16 !dbg !6468 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6474, metadata !DIExpression()), !dbg !6475
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6475
  %di = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 14, !dbg !6475
  %1 = load i64, ptr %di, align 8, !dbg !6475
  %call = call i64 @__se_sys_memfd_secret(i64 noundef %1) #11, !dbg !6475
  ret i64 %call, !dbg !6475
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_sys_memfd_secret(i64 noundef %flags) #0 align 16 !dbg !6476 {
entry:
  %flags.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6480, metadata !DIExpression()), !dbg !6482
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #12, !dbg !6482
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6481, metadata !DIExpression()), !dbg !6482
  %0 = load i64, ptr %flags.addr, align 8, !dbg !6482
  %conv = trunc i64 %0 to i32, !dbg !6482
  %call = call i64 @__do_sys_memfd_secret(i32 noundef %conv) #11, !dbg !6482
  store i64 %call, ptr %ret, align 8, !dbg !6482
  br label %do.body, !dbg !6482

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6483

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6483

do.end:                                           ; preds = %do.cond
  %1 = load i64, ptr %ret, align 8, !dbg !6482
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #12, !dbg !6482
  ret i64 %1, !dbg !6482
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_sys_memfd_secret(ptr noundef %regs) #0 align 16 !dbg !6485 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6487, metadata !DIExpression()), !dbg !6488
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6488
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !6488
  %1 = load i64, ptr %bx, align 8, !dbg !6488
  %conv = trunc i64 %1 to i32, !dbg !6488
  %conv1 = zext i32 %conv to i64, !dbg !6488
  %call = call i64 @__se_sys_memfd_secret(i64 noundef %conv1) #11, !dbg !6488
  ret i64 %call, !dbg !6488
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_secretmem__352_295_secretmem_init5() #4 section ".init.text" align 16 !dbg !6489 {
entry:
  %call = call i32 @secretmem_init() #13, !dbg !6490
  ret i32 %call, !dbg !6490
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @secretmem_init() #4 section ".init.text" align 16 !dbg !6491 {
entry:
  %retval = alloca i32, align 4
  %0 = load i8, ptr @secretmem_enable, align 1, !dbg !6492, !range !6494, !noundef !1172
  %tobool = trunc i8 %0 to i1, !dbg !6492
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !6495

lor.lhs.false:                                    ; preds = %entry
  %call = call zeroext i1 @can_set_direct_map() #11, !dbg !6496
  br i1 %call, label %if.end, label %if.then, !dbg !6497

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4, !dbg !6498
  br label %return, !dbg !6498

if.end:                                           ; preds = %lor.lhs.false
  %call1 = call ptr @kern_mount(ptr noundef @secretmem_fs) #11, !dbg !6499
  store ptr %call1, ptr @secretmem_mnt, align 8, !dbg !6500
  %1 = load ptr, ptr @secretmem_mnt, align 8, !dbg !6501
  %call2 = call zeroext i1 @IS_ERR(ptr noundef %1) #11, !dbg !6503
  br i1 %call2, label %if.then3, label %if.end5, !dbg !6504

if.then3:                                         ; preds = %if.end
  %2 = load ptr, ptr @secretmem_mnt, align 8, !dbg !6505
  %call4 = call i64 @PTR_ERR(ptr noundef %2) #11, !dbg !6506
  %conv = trunc i64 %call4 to i32, !dbg !6506
  store i32 %conv, ptr %retval, align 4, !dbg !6507
  br label %return, !dbg !6507

if.end5:                                          ; preds = %if.end
  %3 = load ptr, ptr @secretmem_mnt, align 8, !dbg !6508
  %mnt_flags = getelementptr inbounds %struct.vfsmount, ptr %3, i32 0, i32 2, !dbg !6509
  %4 = load i32, ptr %mnt_flags, align 8, !dbg !6510
  %or = or i32 %4, 4, !dbg !6510
  store i32 %or, ptr %mnt_flags, align 8, !dbg !6510
  store i32 0, ptr %retval, align 4, !dbg !6511
  br label %return, !dbg !6511

return:                                           ; preds = %if.end5, %if.then3, %if.then
  %5 = load i32, ptr %retval, align 4, !dbg !6512
  ret i32 %5, !dbg !6512
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #1 align 16 !dbg !6513 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6521, metadata !DIExpression()), !dbg !6523
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6522, metadata !DIExpression()), !dbg !6524
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6525
  %1 = load i64, ptr %size.addr, align 8, !dbg !6526
  %conv = trunc i64 %1 to i32, !dbg !6526
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #11, !dbg !6527
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6528
  %3 = load i64, ptr %size.addr, align 8, !dbg !6528
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #11, !dbg !6528
  ret void, !dbg !6529
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #1 align 16 !dbg !6530 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6533, metadata !DIExpression()), !dbg !6534
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6535
  %call = call i32 @arch_atomic_read(ptr noundef %0) #11, !dbg !6536
  ret i32 %call, !dbg !6537
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !6538 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6543, metadata !DIExpression()), !dbg !6545
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6544, metadata !DIExpression()), !dbg !6546
  ret i1 true, !dbg !6547
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #5 align 16 !dbg !6548 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6553, metadata !DIExpression()), !dbg !6556
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6554, metadata !DIExpression()), !dbg !6557
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6555, metadata !DIExpression()), !dbg !6558
  ret void, !dbg !6559
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #1 align 16 !dbg !6560 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6563, metadata !DIExpression()), !dbg !6564
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6565
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !6565
  %1 = load volatile i32, ptr %counter, align 4, !dbg !6565
  ret i32 %1, !dbg !6566
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @secretmem_fault(ptr noundef %vmf) #0 align 16 !dbg !6567 {
entry:
  %retval = alloca i32, align 4
  %vmf.addr = alloca ptr, align 8
  %mapping = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %offset = alloca i64, align 8
  %gfp = alloca i32, align 4
  %addr = alloca i64, align 8
  %page = alloca ptr, align 8
  %folio = alloca ptr, align 8
  %ret = alloca i32, align 4
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %vmf, ptr %vmf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vmf.addr, metadata !6569, metadata !DIExpression()), !dbg !6581
  call void @llvm.lifetime.start.p0(i64 8, ptr %mapping) #12, !dbg !6582
  call void @llvm.dbg.declare(metadata ptr %mapping, metadata !6570, metadata !DIExpression()), !dbg !6583
  %0 = load ptr, ptr %vmf.addr, align 8, !dbg !6584
  %1 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 0, !dbg !6585
  %vma = getelementptr inbounds %struct.anon.30, ptr %1, i32 0, i32 0, !dbg !6585
  %2 = load ptr, ptr %vma, align 8, !dbg !6585
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 12, !dbg !6586
  %3 = load ptr, ptr %vm_file, align 8, !dbg !6586
  %f_mapping = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 17, !dbg !6587
  %4 = load ptr, ptr %f_mapping, align 8, !dbg !6587
  store ptr %4, ptr %mapping, align 8, !dbg !6583
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #12, !dbg !6588
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !6571, metadata !DIExpression()), !dbg !6589
  %5 = load ptr, ptr %vmf.addr, align 8, !dbg !6590
  %6 = getelementptr inbounds %struct.vm_fault, ptr %5, i32 0, i32 0, !dbg !6591
  %vma1 = getelementptr inbounds %struct.anon.30, ptr %6, i32 0, i32 0, !dbg !6591
  %7 = load ptr, ptr %vma1, align 8, !dbg !6591
  %vm_file2 = getelementptr inbounds %struct.vm_area_struct, ptr %7, i32 0, i32 12, !dbg !6592
  %8 = load ptr, ptr %vm_file2, align 8, !dbg !6592
  %call = call ptr @file_inode(ptr noundef %8) #11, !dbg !6593
  store ptr %call, ptr %inode, align 8, !dbg !6589
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #12, !dbg !6594
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !6572, metadata !DIExpression()), !dbg !6595
  %9 = load ptr, ptr %vmf.addr, align 8, !dbg !6596
  %10 = getelementptr inbounds %struct.vm_fault, ptr %9, i32 0, i32 0, !dbg !6597
  %pgoff = getelementptr inbounds %struct.anon.30, ptr %10, i32 0, i32 2, !dbg !6597
  %11 = load i64, ptr %pgoff, align 8, !dbg !6597
  store i64 %11, ptr %offset, align 8, !dbg !6595
  call void @llvm.lifetime.start.p0(i64 4, ptr %gfp) #12, !dbg !6598
  call void @llvm.dbg.declare(metadata ptr %gfp, metadata !6573, metadata !DIExpression()), !dbg !6599
  %12 = load ptr, ptr %vmf.addr, align 8, !dbg !6600
  %13 = getelementptr inbounds %struct.vm_fault, ptr %12, i32 0, i32 0, !dbg !6601
  %gfp_mask = getelementptr inbounds %struct.anon.30, ptr %13, i32 0, i32 1, !dbg !6601
  %14 = load i32, ptr %gfp_mask, align 8, !dbg !6601
  store i32 %14, ptr %gfp, align 4, !dbg !6599
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr) #12, !dbg !6602
  call void @llvm.dbg.declare(metadata ptr %addr, metadata !6574, metadata !DIExpression()), !dbg !6603
  call void @llvm.lifetime.start.p0(i64 8, ptr %page) #12, !dbg !6604
  call void @llvm.dbg.declare(metadata ptr %page, metadata !6575, metadata !DIExpression()), !dbg !6605
  call void @llvm.lifetime.start.p0(i64 8, ptr %folio) #12, !dbg !6606
  call void @llvm.dbg.declare(metadata ptr %folio, metadata !6576, metadata !DIExpression()), !dbg !6607
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #12, !dbg !6608
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6577, metadata !DIExpression()), !dbg !6609
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #12, !dbg !6610
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6578, metadata !DIExpression()), !dbg !6611
  %15 = load ptr, ptr %vmf.addr, align 8, !dbg !6612
  %16 = getelementptr inbounds %struct.vm_fault, ptr %15, i32 0, i32 0, !dbg !6614
  %pgoff3 = getelementptr inbounds %struct.anon.30, ptr %16, i32 0, i32 2, !dbg !6614
  %17 = load i64, ptr %pgoff3, align 8, !dbg !6614
  %shl = shl i64 %17, 12, !dbg !6615
  %18 = load ptr, ptr %inode, align 8, !dbg !6616
  %call4 = call i64 @i_size_read(ptr noundef %18) #11, !dbg !6617
  %cmp = icmp sge i64 %shl, %call4, !dbg !6618
  br i1 %cmp, label %if.then, label %if.end, !dbg !6619

if.then:                                          ; preds = %entry
  %call5 = call i32 @vmf_error(i32 noundef -22) #11, !dbg !6620
  store i32 %call5, ptr %retval, align 4, !dbg !6621
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6621

if.end:                                           ; preds = %entry
  %19 = load ptr, ptr %mapping, align 8, !dbg !6622
  call void @filemap_invalidate_lock_shared(ptr noundef %19) #11, !dbg !6623
  br label %retry, !dbg !6623

retry:                                            ; preds = %if.then25, %if.end
  call void @llvm.dbg.label(metadata !6579), !dbg !6624
  %20 = load ptr, ptr %mapping, align 8, !dbg !6625
  %21 = load i64, ptr %offset, align 8, !dbg !6626
  %call6 = call ptr @find_lock_page(ptr noundef %20, i64 noundef %21) #11, !dbg !6627
  store ptr %call6, ptr %page, align 8, !dbg !6628
  %22 = load ptr, ptr %page, align 8, !dbg !6629
  %tobool = icmp ne ptr %22, null, !dbg !6629
  br i1 %tobool, label %if.end30, label %if.then7, !dbg !6631

if.then7:                                         ; preds = %retry
  %23 = load i32, ptr %gfp, align 4, !dbg !6632
  %or = or i32 %23, 256, !dbg !6634
  %call8 = call ptr @folio_alloc(i32 noundef %or, i32 noundef 0) #11, !dbg !6635
  store ptr %call8, ptr %folio, align 8, !dbg !6636
  %24 = load ptr, ptr %folio, align 8, !dbg !6637
  %tobool9 = icmp ne ptr %24, null, !dbg !6637
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !6639

if.then10:                                        ; preds = %if.then7
  store i32 1, ptr %ret, align 4, !dbg !6640
  br label %out, !dbg !6642

if.end11:                                         ; preds = %if.then7
  %25 = load ptr, ptr %folio, align 8, !dbg !6643
  %26 = getelementptr inbounds %struct.folio, ptr %25, i32 0, i32 0, !dbg !6644
  store ptr %26, ptr %page, align 8, !dbg !6645
  %27 = load ptr, ptr %page, align 8, !dbg !6646
  %call12 = call i32 @set_direct_map_invalid_noflush(ptr noundef %27) #11, !dbg !6647
  store i32 %call12, ptr %err, align 4, !dbg !6648
  %28 = load i32, ptr %err, align 4, !dbg !6649
  %tobool13 = icmp ne i32 %28, 0, !dbg !6649
  br i1 %tobool13, label %if.then14, label %if.end16, !dbg !6651

if.then14:                                        ; preds = %if.end11
  %29 = load ptr, ptr %folio, align 8, !dbg !6652
  call void @folio_put(ptr noundef %29) #11, !dbg !6654
  %30 = load i32, ptr %err, align 4, !dbg !6655
  %call15 = call i32 @vmf_error(i32 noundef %30) #11, !dbg !6656
  store i32 %call15, ptr %ret, align 4, !dbg !6657
  br label %out, !dbg !6658

if.end16:                                         ; preds = %if.end11
  %31 = load ptr, ptr %folio, align 8, !dbg !6659
  call void @__folio_mark_uptodate(ptr noundef %31) #11, !dbg !6660
  %32 = load ptr, ptr %mapping, align 8, !dbg !6661
  %33 = load ptr, ptr %folio, align 8, !dbg !6662
  %34 = load i64, ptr %offset, align 8, !dbg !6663
  %35 = load i32, ptr %gfp, align 4, !dbg !6664
  %call17 = call i32 @filemap_add_folio(ptr noundef %32, ptr noundef %33, i64 noundef %34, i32 noundef %35) #11, !dbg !6665
  store i32 %call17, ptr %err, align 4, !dbg !6666
  %36 = load i32, ptr %err, align 4, !dbg !6667
  %tobool18 = icmp ne i32 %36, 0, !dbg !6667
  %lnot = xor i1 %tobool18, true, !dbg !6667
  %lnot19 = xor i1 %lnot, true, !dbg !6667
  %lnot.ext = zext i1 %lnot19 to i32, !dbg !6667
  %conv = sext i32 %lnot.ext to i64, !dbg !6667
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6667
  %tobool20 = icmp ne i64 %expval, 0, !dbg !6667
  br i1 %tobool20, label %if.then21, label %if.end28, !dbg !6669

if.then21:                                        ; preds = %if.end16
  %37 = load ptr, ptr %folio, align 8, !dbg !6670
  call void @folio_put(ptr noundef %37) #11, !dbg !6672
  %38 = load ptr, ptr %page, align 8, !dbg !6673
  %call22 = call i32 @set_direct_map_default_noflush(ptr noundef %38) #11, !dbg !6674
  %39 = load i32, ptr %err, align 4, !dbg !6675
  %cmp23 = icmp eq i32 %39, -17, !dbg !6677
  br i1 %cmp23, label %if.then25, label %if.end26, !dbg !6678

if.then25:                                        ; preds = %if.then21
  br label %retry, !dbg !6679

if.end26:                                         ; preds = %if.then21
  %40 = load i32, ptr %err, align 4, !dbg !6680
  %call27 = call i32 @vmf_error(i32 noundef %40) #11, !dbg !6681
  store i32 %call27, ptr %ret, align 4, !dbg !6682
  br label %out, !dbg !6683

if.end28:                                         ; preds = %if.end16
  %41 = load ptr, ptr %page, align 8, !dbg !6684
  %call29 = call ptr @lowmem_page_address(ptr noundef %41) #11, !dbg !6684
  %42 = ptrtoint ptr %call29 to i64, !dbg !6685
  store i64 %42, ptr %addr, align 8, !dbg !6686
  %43 = load i64, ptr %addr, align 8, !dbg !6687
  %44 = load i64, ptr %addr, align 8, !dbg !6688
  %add = add i64 %44, 4096, !dbg !6689
  call void @flush_tlb_kernel_range(i64 noundef %43, i64 noundef %add) #11, !dbg !6690
  br label %if.end30, !dbg !6691

if.end30:                                         ; preds = %if.end28, %retry
  %45 = load ptr, ptr %page, align 8, !dbg !6692
  %46 = load ptr, ptr %vmf.addr, align 8, !dbg !6693
  %page31 = getelementptr inbounds %struct.vm_fault, ptr %46, i32 0, i32 6, !dbg !6694
  store ptr %45, ptr %page31, align 8, !dbg !6695
  store i32 512, ptr %ret, align 4, !dbg !6696
  br label %out, !dbg !6697

out:                                              ; preds = %if.end30, %if.end26, %if.then14, %if.then10
  call void @llvm.dbg.label(metadata !6580), !dbg !6698
  %47 = load ptr, ptr %mapping, align 8, !dbg !6699
  call void @filemap_invalidate_unlock_shared(ptr noundef %47) #11, !dbg !6700
  %48 = load i32, ptr %ret, align 4, !dbg !6701
  store i32 %48, ptr %retval, align 4, !dbg !6702
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6702

cleanup:                                          ; preds = %out, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #12, !dbg !6703
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #12, !dbg !6703
  call void @llvm.lifetime.end.p0(i64 8, ptr %folio) #12, !dbg !6703
  call void @llvm.lifetime.end.p0(i64 8, ptr %page) #12, !dbg !6703
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr) #12, !dbg !6703
  call void @llvm.lifetime.end.p0(i64 4, ptr %gfp) #12, !dbg !6703
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #12, !dbg !6703
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #12, !dbg !6703
  call void @llvm.lifetime.end.p0(i64 8, ptr %mapping) #12, !dbg !6703
  %49 = load i32, ptr %retval, align 4, !dbg !6703
  ret i32 %49, !dbg !6703
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @file_inode(ptr noundef %f) #5 align 16 !dbg !6704 {
entry:
  %f.addr = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !6708, metadata !DIExpression()), !dbg !6709
  %0 = load ptr, ptr %f.addr, align 8, !dbg !6710
  %f_inode = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 11, !dbg !6711
  %1 = load ptr, ptr %f_inode, align 8, !dbg !6711
  ret ptr %1, !dbg !6712
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @i_size_read(ptr noundef %inode) #5 align 16 !dbg !6713 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6717, metadata !DIExpression()), !dbg !6718
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !6719
  %i_size = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 15, !dbg !6720
  %1 = load i64, ptr %i_size, align 8, !dbg !6720
  ret i64 %1, !dbg !6721
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @vmf_error(i32 noundef %err) #5 align 16 !dbg !6722 {
entry:
  %retval = alloca i32, align 4
  %err.addr = alloca i32, align 4
  store i32 %err, ptr %err.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !6726, metadata !DIExpression()), !dbg !6727
  %0 = load i32, ptr %err.addr, align 4, !dbg !6728
  %cmp = icmp eq i32 %0, -12, !dbg !6730
  br i1 %cmp, label %if.then, label %if.else, !dbg !6731

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !6732
  br label %return, !dbg !6732

if.else:                                          ; preds = %entry
  %1 = load i32, ptr %err.addr, align 4, !dbg !6733
  %cmp1 = icmp eq i32 %1, -133, !dbg !6735
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !6736

if.then2:                                         ; preds = %if.else
  store i32 16, ptr %retval, align 4, !dbg !6737
  br label %return, !dbg !6737

if.end:                                           ; preds = %if.else
  br label %if.end3

if.end3:                                          ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6738
  br label %return, !dbg !6738

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6739
  ret i32 %2, !dbg !6739
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @filemap_invalidate_lock_shared(ptr noundef %mapping) #5 align 16 !dbg !6740 {
entry:
  %mapping.addr = alloca ptr, align 8
  store ptr %mapping, ptr %mapping.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mapping.addr, metadata !6744, metadata !DIExpression()), !dbg !6745
  %0 = load ptr, ptr %mapping.addr, align 8, !dbg !6746
  %invalidate_lock = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 2, !dbg !6747
  call void @down_read(ptr noundef %invalidate_lock) #11, !dbg !6748
  ret void, !dbg !6749
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @find_lock_page(ptr noundef %mapping, i64 noundef %index) #5 align 16 !dbg !6750 {
entry:
  %mapping.addr = alloca ptr, align 8
  %index.addr = alloca i64, align 8
  store ptr %mapping, ptr %mapping.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mapping.addr, metadata !6754, metadata !DIExpression()), !dbg !6756
  store i64 %index, ptr %index.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !6755, metadata !DIExpression()), !dbg !6757
  %0 = load ptr, ptr %mapping.addr, align 8, !dbg !6758
  %1 = load i64, ptr %index.addr, align 8, !dbg !6759
  %call = call ptr @pagecache_get_page(ptr noundef %0, i64 noundef %1, i32 noundef 2, i32 noundef 0) #11, !dbg !6760
  ret ptr %call, !dbg !6761
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6762 dso_local ptr @folio_alloc(i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6766 dso_local i32 @set_direct_map_invalid_noflush(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @folio_put(ptr noundef %folio) #5 align 16 !dbg !6770 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6772, metadata !DIExpression()), !dbg !6773
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !6774
  %call = call i32 @folio_put_testzero(ptr noundef %0) #11, !dbg !6776
  %tobool = icmp ne i32 %call, 0, !dbg !6776
  br i1 %tobool, label %if.then, label %if.end, !dbg !6777

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %folio.addr, align 8, !dbg !6778
  call void @__folio_put(ptr noundef %1) #11, !dbg !6779
  br label %if.end, !dbg !6779

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6780
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__folio_mark_uptodate(ptr noundef %folio) #1 align 16 !dbg !6781 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6783, metadata !DIExpression()), !dbg !6784
  br label %do.body, !dbg !6785

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6786

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !6788

do.end:                                           ; preds = %do.body1
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !6786, !srcloc !6790
  br label %do.end2, !dbg !6786

do.end2:                                          ; preds = %do.end
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !6791
  %call = call ptr @folio_flags(ptr noundef %0, i32 noundef 0) #11, !dbg !6791
  call void @___set_bit(i64 noundef 3, ptr noundef %call) #11, !dbg !6791
  ret void, !dbg !6792
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6793 dso_local i32 @filemap_add_folio(ptr noundef, ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6796 dso_local i32 @set_direct_map_default_noflush(ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @lowmem_page_address(ptr noundef %page) #1 align 16 !dbg !6797 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6803, metadata !DIExpression()), !dbg !6804
  %0 = load ptr, ptr %page.addr, align 8, !dbg !6805
  %1 = load i64, ptr @vmemmap_base, align 8, !dbg !6805
  %2 = inttoptr i64 %1 to ptr, !dbg !6805
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !6805
  %sub.ptr.rhs.cast = ptrtoint ptr %2 to i64, !dbg !6805
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !6805
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 64, !dbg !6805
  %shl = shl i64 %sub.ptr.div, 12, !dbg !6805
  %3 = load i64, ptr @page_offset_base, align 8, !dbg !6805
  %add = add i64 %shl, %3, !dbg !6805
  %4 = inttoptr i64 %add to ptr, !dbg !6805
  ret ptr %4, !dbg !6806
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6807 dso_local void @flush_tlb_kernel_range(i64 noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @filemap_invalidate_unlock_shared(ptr noundef %mapping) #5 align 16 !dbg !6811 {
entry:
  %mapping.addr = alloca ptr, align 8
  store ptr %mapping, ptr %mapping.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mapping.addr, metadata !6813, metadata !DIExpression()), !dbg !6814
  %0 = load ptr, ptr %mapping.addr, align 8, !dbg !6815
  %invalidate_lock = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 2, !dbg !6816
  call void @up_read(ptr noundef %invalidate_lock) #11, !dbg !6817
  ret void, !dbg !6818
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6819 dso_local void @down_read(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6823 dso_local ptr @pagecache_get_page(ptr noundef, i64 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @folio_put_testzero(ptr noundef %folio) #5 align 16 !dbg !6826 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6828, metadata !DIExpression()), !dbg !6829
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !6830
  %1 = getelementptr inbounds %struct.folio, ptr %0, i32 0, i32 0, !dbg !6831
  %call = call i32 @put_page_testzero(ptr noundef %1) #11, !dbg !6832
  ret i32 %call, !dbg !6833
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6834 dso_local void @__folio_put(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @put_page_testzero(ptr noundef %page) #5 align 16 !dbg !6835 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6837, metadata !DIExpression()), !dbg !6838
  %0 = load ptr, ptr %page.addr, align 8, !dbg !6839
  %call = call i32 @page_ref_dec_and_test(ptr noundef %0) #11, !dbg !6840
  ret i32 %call, !dbg !6841
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @page_ref_dec_and_test(ptr noundef %page) #5 align 16 !dbg !6842 {
entry:
  %page.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6845, metadata !DIExpression()), !dbg !6847
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #12, !dbg !6848
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6846, metadata !DIExpression()), !dbg !6849
  %0 = load ptr, ptr %page.addr, align 8, !dbg !6850
  %_refcount = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 3, !dbg !6851
  %call = call zeroext i1 @atomic_dec_and_test(ptr noundef %_refcount) #11, !dbg !6852
  %conv = zext i1 %call to i32, !dbg !6852
  store i32 %conv, ptr %ret, align 4, !dbg !6849
  %1 = load i32, ptr %ret, align 4, !dbg !6853
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #12, !dbg !6854
  ret i32 %1, !dbg !6855
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_dec_and_test(ptr noundef %v) #1 align 16 !dbg !6856 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6861, metadata !DIExpression()), !dbg !6862
  br label %do.body, !dbg !6863

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6864

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6866
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #11, !dbg !6867
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6868
  %call = call zeroext i1 @raw_atomic_dec_and_test(ptr noundef %1) #11, !dbg !6869
  ret i1 %call, !dbg !6870
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #1 align 16 !dbg !6871 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6873, metadata !DIExpression()), !dbg !6875
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6874, metadata !DIExpression()), !dbg !6876
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6877
  %1 = load i64, ptr %size.addr, align 8, !dbg !6878
  %conv = trunc i64 %1 to i32, !dbg !6878
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #11, !dbg !6879
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6880
  %3 = load i64, ptr %size.addr, align 8, !dbg !6880
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #11, !dbg !6880
  ret void, !dbg !6881
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_dec_and_test(ptr noundef %v) #1 align 16 !dbg !6882 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6884, metadata !DIExpression()), !dbg !6885
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6886
  %call = call zeroext i1 @arch_atomic_dec_and_test(ptr noundef %0) #11, !dbg !6887
  ret i1 %call, !dbg !6888
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !6889 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6891, metadata !DIExpression()), !dbg !6893
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6892, metadata !DIExpression()), !dbg !6894
  ret i1 true, !dbg !6895
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic_dec_and_test(ptr noundef %v) #1 align 16 !dbg !6896 {
entry:
  %v.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6898, metadata !DIExpression()), !dbg !6901
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #12, !dbg !6902
  call void @llvm.dbg.declare(metadata ptr %c, metadata !6899, metadata !DIExpression()), !dbg !6902
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6902
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !6902
  %1 = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; decl $0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #12, !dbg !6902, !srcloc !6903
  %2 = icmp ult i8 %1, 2, !dbg !6902
  call void @llvm.assume(i1 %2), !dbg !6902
  store i8 %1, ptr %c, align 1, !dbg !6902
  %3 = load i8, ptr %c, align 1, !dbg !6902, !range !6494, !noundef !1172
  %tobool = trunc i8 %3 to i1, !dbg !6902
  %frombool = zext i1 %tobool to i8, !dbg !6902
  store i8 %frombool, ptr %tmp, align 1, !dbg !6902
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #12, !dbg !6904
  %4 = load i8, ptr %tmp, align 1, !dbg !6902, !range !6494, !noundef !1172
  %tobool1 = trunc i8 %4 to i1, !dbg !6902
  ret i1 %tobool1, !dbg !6905
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @___set_bit(i64 noundef %nr, ptr noundef %addr) #1 align 16 !dbg !6906 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6913, metadata !DIExpression()), !dbg !6915
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6914, metadata !DIExpression()), !dbg !6916
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6917
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6918
  %div = udiv i64 %1, 64, !dbg !6918
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6919
  call void @instrument_write(ptr noundef %add.ptr, i64 noundef 8) #11, !dbg !6920
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6921
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6922
  call void @arch___set_bit(i64 noundef %2, ptr noundef %3) #11, !dbg !6923
  ret void, !dbg !6924
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @folio_flags(ptr noundef %folio, i32 noundef %n) #0 align 16 !dbg !6925 {
entry:
  %folio.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %page = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6929, metadata !DIExpression()), !dbg !6932
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6930, metadata !DIExpression()), !dbg !6933
  call void @llvm.lifetime.start.p0(i64 8, ptr %page) #12, !dbg !6934
  call void @llvm.dbg.declare(metadata ptr %page, metadata !6931, metadata !DIExpression()), !dbg !6935
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !6936
  %1 = getelementptr inbounds %struct.folio, ptr %0, i32 0, i32 0, !dbg !6937
  store ptr %1, ptr %page, align 8, !dbg !6935
  %2 = load ptr, ptr %page, align 8, !dbg !6938
  %3 = load i32, ptr %n.addr, align 4, !dbg !6939
  %idxprom = zext i32 %3 to i64, !dbg !6938
  %arrayidx = getelementptr %struct.page, ptr %2, i64 %idxprom, !dbg !6938
  %flags = getelementptr inbounds %struct.page, ptr %arrayidx, i32 0, i32 0, !dbg !6940
  call void @llvm.lifetime.end.p0(i64 8, ptr %page) #12, !dbg !6941
  ret ptr %flags, !dbg !6942
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_write(ptr noundef %v, i64 noundef %size) #1 align 16 !dbg !6943 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6945, metadata !DIExpression()), !dbg !6947
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6946, metadata !DIExpression()), !dbg !6948
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6949
  %1 = load i64, ptr %size.addr, align 8, !dbg !6950
  %conv = trunc i64 %1 to i32, !dbg !6950
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #11, !dbg !6951
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6952
  %3 = load i64, ptr %size.addr, align 8, !dbg !6952
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 1) #11, !dbg !6952
  ret void, !dbg !6953
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch___set_bit(i64 noundef %nr, ptr noundef %addr) #1 align 16 !dbg !6954 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6957, metadata !DIExpression()), !dbg !6959
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6958, metadata !DIExpression()), !dbg !6960
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6961
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6962
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #12, !dbg !6963, !srcloc !6964
  ret void, !dbg !6965
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6966 dso_local void @up_read(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @folio_zero_segment(ptr noundef %folio, i64 noundef %start, i64 noundef %xend) #5 align 16 !dbg !6967 {
entry:
  %folio.addr = alloca ptr, align 8
  %start.addr = alloca i64, align 8
  %xend.addr = alloca i64, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6969, metadata !DIExpression()), !dbg !6972
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !6970, metadata !DIExpression()), !dbg !6973
  store i64 %xend, ptr %xend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %xend.addr, metadata !6971, metadata !DIExpression()), !dbg !6974
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !6975
  %1 = getelementptr inbounds %struct.folio, ptr %0, i32 0, i32 0, !dbg !6976
  %2 = load i64, ptr %start.addr, align 8, !dbg !6977
  %conv = trunc i64 %2 to i32, !dbg !6977
  %3 = load i64, ptr %xend.addr, align 8, !dbg !6978
  %conv1 = trunc i64 %3 to i32, !dbg !6978
  call void @zero_user_segments(ptr noundef %1, i32 noundef %conv, i32 noundef %conv1, i32 noundef 0, i32 noundef 0) #11, !dbg !6979
  ret void, !dbg !6980
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @folio_size(ptr noundef %folio) #5 align 16 !dbg !6981 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6985, metadata !DIExpression()), !dbg !6986
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !6987
  %call = call i32 @folio_order(ptr noundef %0) #11, !dbg !6988
  %sh_prom = zext i32 %call to i64, !dbg !6989
  %shl = shl i64 4096, %sh_prom, !dbg !6989
  ret i64 %shl, !dbg !6990
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @zero_user_segments(ptr noundef %page, i32 noundef %start1, i32 noundef %end1, i32 noundef %start2, i32 noundef %end2) #5 align 16 !dbg !6991 {
entry:
  %page.addr = alloca ptr, align 8
  %start1.addr = alloca i32, align 4
  %end1.addr = alloca i32, align 4
  %start2.addr = alloca i32, align 4
  %end2.addr = alloca i32, align 4
  %kaddr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6995, metadata !DIExpression()), !dbg !7002
  store i32 %start1, ptr %start1.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %start1.addr, metadata !6996, metadata !DIExpression()), !dbg !7003
  store i32 %end1, ptr %end1.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %end1.addr, metadata !6997, metadata !DIExpression()), !dbg !7004
  store i32 %start2, ptr %start2.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %start2.addr, metadata !6998, metadata !DIExpression()), !dbg !7005
  store i32 %end2, ptr %end2.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %end2.addr, metadata !6999, metadata !DIExpression()), !dbg !7006
  call void @llvm.lifetime.start.p0(i64 8, ptr %kaddr) #12, !dbg !7007
  call void @llvm.dbg.declare(metadata ptr %kaddr, metadata !7000, metadata !DIExpression()), !dbg !7008
  %0 = load ptr, ptr %page.addr, align 8, !dbg !7009
  %call = call ptr @kmap_local_page(ptr noundef %0) #11, !dbg !7010
  store ptr %call, ptr %kaddr, align 8, !dbg !7008
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !7011
  call void @llvm.dbg.declare(metadata ptr %i, metadata !7001, metadata !DIExpression()), !dbg !7012
  br label %do.body, !dbg !7013

do.body:                                          ; preds = %entry
  %1 = load i32, ptr %end1.addr, align 4, !dbg !7014
  %conv = zext i32 %1 to i64, !dbg !7014
  %2 = load ptr, ptr %page.addr, align 8, !dbg !7014
  %call1 = call i64 @page_size(ptr noundef %2) #11, !dbg !7014
  %cmp = icmp ugt i64 %conv, %call1, !dbg !7014
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !7014

lor.rhs:                                          ; preds = %do.body
  %3 = load i32, ptr %end2.addr, align 4, !dbg !7014
  %conv3 = zext i32 %3 to i64, !dbg !7014
  %4 = load ptr, ptr %page.addr, align 8, !dbg !7014
  %call4 = call i64 @page_size(ptr noundef %4) #11, !dbg !7014
  %cmp5 = icmp ugt i64 %conv3, %call4, !dbg !7014
  br label %lor.end, !dbg !7014

lor.end:                                          ; preds = %lor.rhs, %do.body
  %5 = phi i1 [ true, %do.body ], [ %cmp5, %lor.rhs ]
  %lnot = xor i1 %5, true, !dbg !7014
  %lnot7 = xor i1 %lnot, true, !dbg !7014
  %lnot.ext = zext i1 %lnot7 to i32, !dbg !7014
  %conv8 = sext i32 %lnot.ext to i64, !dbg !7014
  %expval = call i64 @llvm.expect.i64(i64 %conv8, i64 0), !dbg !7014
  %tobool = icmp ne i64 %expval, 0, !dbg !7014
  br i1 %tobool, label %if.then, label %if.end, !dbg !7017

if.then:                                          ; preds = %lor.end
  br label %do.body9, !dbg !7014

do.body9:                                         ; preds = %if.then
  br label %do.body10, !dbg !7018

do.body10:                                        ; preds = %do.body9
  br label %do.cond, !dbg !7020

do.cond:                                          ; preds = %do.body10
  br label %do.end, !dbg !7020

do.end:                                           ; preds = %do.cond
  br label %do.body11, !dbg !7018

do.body11:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 275, i32 0, i64 12) #12, !dbg !7022, !srcloc !7024
  br label %do.cond12, !dbg !7022

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !7022

do.end13:                                         ; preds = %do.cond12
  unreachable, !dbg !7018

do.cond14:                                        ; No predecessors!
  br label %do.end15, !dbg !7018

do.end15:                                         ; preds = %do.cond14
  br label %if.end, !dbg !7018

if.end:                                           ; preds = %do.end15, %lor.end
  br label %do.cond16, !dbg !7017

do.cond16:                                        ; preds = %if.end
  br label %do.end17, !dbg !7017

do.end17:                                         ; preds = %do.cond16
  %6 = load i32, ptr %end1.addr, align 4, !dbg !7025
  %7 = load i32, ptr %start1.addr, align 4, !dbg !7027
  %cmp18 = icmp ugt i32 %6, %7, !dbg !7028
  br i1 %cmp18, label %if.then20, label %if.end22, !dbg !7029

if.then20:                                        ; preds = %do.end17
  %8 = load ptr, ptr %kaddr, align 8, !dbg !7030
  %9 = load i32, ptr %start1.addr, align 4, !dbg !7031
  %idx.ext = zext i32 %9 to i64, !dbg !7032
  %add.ptr = getelementptr i8, ptr %8, i64 %idx.ext, !dbg !7032
  %10 = load i32, ptr %end1.addr, align 4, !dbg !7033
  %11 = load i32, ptr %start1.addr, align 4, !dbg !7034
  %sub = sub i32 %10, %11, !dbg !7035
  %conv21 = zext i32 %sub to i64, !dbg !7033
  call void @llvm.memset.p0.i64(ptr align 1 %add.ptr, i8 0, i64 %conv21, i1 false), !dbg !7036
  br label %if.end22, !dbg !7036

if.end22:                                         ; preds = %if.then20, %do.end17
  %12 = load i32, ptr %end2.addr, align 4, !dbg !7037
  %13 = load i32, ptr %start2.addr, align 4, !dbg !7039
  %cmp23 = icmp ugt i32 %12, %13, !dbg !7040
  br i1 %cmp23, label %if.then25, label %if.end30, !dbg !7041

if.then25:                                        ; preds = %if.end22
  %14 = load ptr, ptr %kaddr, align 8, !dbg !7042
  %15 = load i32, ptr %start2.addr, align 4, !dbg !7043
  %idx.ext26 = zext i32 %15 to i64, !dbg !7044
  %add.ptr27 = getelementptr i8, ptr %14, i64 %idx.ext26, !dbg !7044
  %16 = load i32, ptr %end2.addr, align 4, !dbg !7045
  %17 = load i32, ptr %start2.addr, align 4, !dbg !7046
  %sub28 = sub i32 %16, %17, !dbg !7047
  %conv29 = zext i32 %sub28 to i64, !dbg !7045
  call void @llvm.memset.p0.i64(ptr align 1 %add.ptr27, i8 0, i64 %conv29, i1 false), !dbg !7048
  br label %if.end30, !dbg !7048

if.end30:                                         ; preds = %if.then25, %if.end22
  br label %do.body31, !dbg !7049

do.body31:                                        ; preds = %if.end30
  br label %do.body32, !dbg !7050

do.body32:                                        ; preds = %do.body31
  br label %do.cond33, !dbg !7052

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !7052

do.end34:                                         ; preds = %do.cond33
  %18 = load ptr, ptr %kaddr, align 8, !dbg !7050
  call void @__kunmap_local(ptr noundef %18) #11, !dbg !7050
  br label %do.cond35, !dbg !7050

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !7050

do.end36:                                         ; preds = %do.cond35
  store i32 0, ptr %i, align 4, !dbg !7054
  br label %for.cond, !dbg !7056

for.cond:                                         ; preds = %for.inc, %do.end36
  %19 = load i32, ptr %i, align 4, !dbg !7057
  %conv37 = zext i32 %19 to i64, !dbg !7057
  %20 = load ptr, ptr %page.addr, align 8, !dbg !7059
  %call38 = call i64 @compound_nr(ptr noundef %20) #11, !dbg !7060
  %cmp39 = icmp ult i64 %conv37, %call38, !dbg !7061
  br i1 %cmp39, label %for.body, label %for.end, !dbg !7062

for.body:                                         ; preds = %for.cond
  %21 = load ptr, ptr %page.addr, align 8, !dbg !7063
  %22 = load i32, ptr %i, align 4, !dbg !7064
  %idx.ext41 = zext i32 %22 to i64, !dbg !7065
  %add.ptr42 = getelementptr %struct.page, ptr %21, i64 %idx.ext41, !dbg !7065
  call void @flush_dcache_page(ptr noundef %add.ptr42) #11, !dbg !7066
  br label %for.inc, !dbg !7066

for.inc:                                          ; preds = %for.body
  %23 = load i32, ptr %i, align 4, !dbg !7067
  %inc = add i32 %23, 1, !dbg !7067
  store i32 %inc, ptr %i, align 4, !dbg !7067
  br label %for.cond, !dbg !7068, !llvm.loop !7069

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !7073
  call void @llvm.lifetime.end.p0(i64 8, ptr %kaddr) #12, !dbg !7073
  ret void, !dbg !7073
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kmap_local_page(ptr noundef %page) #5 align 16 !dbg !7074 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !7079, metadata !DIExpression()), !dbg !7080
  %0 = load ptr, ptr %page.addr, align 8, !dbg !7081
  %call = call ptr @lowmem_page_address(ptr noundef %0) #11, !dbg !7081
  ret ptr %call, !dbg !7082
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @page_size(ptr noundef %page) #5 align 16 !dbg !7083 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !7087, metadata !DIExpression()), !dbg !7088
  %0 = load ptr, ptr %page.addr, align 8, !dbg !7089
  %call = call i32 @compound_order(ptr noundef %0) #11, !dbg !7090
  %sh_prom = zext i32 %call to i64, !dbg !7091
  %shl = shl i64 4096, %sh_prom, !dbg !7091
  ret i64 %shl, !dbg !7092
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__kunmap_local(ptr noundef %addr) #5 align 16 !dbg !7093 {
entry:
  %addr.addr = alloca ptr, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7097, metadata !DIExpression()), !dbg !7098
  ret void, !dbg !7099
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @compound_nr(ptr noundef %page) #5 align 16 !dbg !7100 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %folio = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !7102, metadata !DIExpression()), !dbg !7104
  call void @llvm.lifetime.start.p0(i64 8, ptr %folio) #12, !dbg !7105
  call void @llvm.dbg.declare(metadata ptr %folio, metadata !7103, metadata !DIExpression()), !dbg !7106
  %0 = load ptr, ptr %page.addr, align 8, !dbg !7107
  store ptr %0, ptr %folio, align 8, !dbg !7106
  %1 = load ptr, ptr %folio, align 8, !dbg !7108
  %2 = getelementptr inbounds %struct.folio, ptr %1, i32 0, i32 0, !dbg !7108
  %flags = getelementptr inbounds %struct.anon.33, ptr %2, i32 0, i32 0, !dbg !7108
  %3 = ptrtoint ptr %flags to i64, !dbg !7108
  %cmp = icmp ne i64 %3, 0, !dbg !7108
  %conv = zext i1 %cmp to i32, !dbg !7108
  %4 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !7108
  br i1 %4, label %land.lhs.true, label %cond.false, !dbg !7108

land.lhs.true:                                    ; preds = %entry
  %5 = load ptr, ptr %folio, align 8, !dbg !7108
  %6 = getelementptr inbounds %struct.folio, ptr %5, i32 0, i32 0, !dbg !7108
  %flags1 = getelementptr inbounds %struct.anon.33, ptr %6, i32 0, i32 0, !dbg !7108
  %7 = ptrtoint ptr %flags1 to i64, !dbg !7108
  %cmp2 = icmp ne i64 %7, 0, !dbg !7108
  br i1 %cmp2, label %land.lhs.true4, label %cond.false, !dbg !7108

land.lhs.true4:                                   ; preds = %land.lhs.true
  %8 = load ptr, ptr %folio, align 8, !dbg !7108
  %9 = getelementptr inbounds %struct.folio, ptr %8, i32 0, i32 0, !dbg !7108
  %flags5 = getelementptr inbounds %struct.anon.33, ptr %9, i32 0, i32 0, !dbg !7108
  %10 = load i64, ptr %flags5, align 16, !dbg !7108
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !7108
  br i1 %11, label %cond.true, label %cond.false, !dbg !7110

cond.true:                                        ; preds = %land.lhs.true4
  %12 = load ptr, ptr %folio, align 8, !dbg !7108
  %13 = getelementptr inbounds %struct.folio, ptr %12, i32 0, i32 0, !dbg !7108
  %flags6 = getelementptr inbounds %struct.anon.33, ptr %13, i32 0, i32 0, !dbg !7108
  %call = call zeroext i1 @const_test_bit(i64 noundef 6, ptr noundef %flags6) #11, !dbg !7108
  br i1 %call, label %if.end, label %if.then, !dbg !7108

cond.false:                                       ; preds = %land.lhs.true4, %land.lhs.true, %entry
  %14 = load ptr, ptr %folio, align 8, !dbg !7108
  %15 = getelementptr inbounds %struct.folio, ptr %14, i32 0, i32 0, !dbg !7108
  %flags8 = getelementptr inbounds %struct.anon.33, ptr %15, i32 0, i32 0, !dbg !7108
  %call9 = call zeroext i1 @_test_bit(i64 noundef 6, ptr noundef %flags8) #11, !dbg !7108
  br i1 %call9, label %if.end, label %if.then, !dbg !7110

if.then:                                          ; preds = %cond.false, %cond.true
  store i64 1, ptr %retval, align 8, !dbg !7111
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7111

if.end:                                           ; preds = %cond.false, %cond.true
  %16 = load ptr, ptr %folio, align 8, !dbg !7112
  %17 = getelementptr inbounds %struct.folio, ptr %16, i32 0, i32 1, !dbg !7113
  %_folio_nr_pages = getelementptr inbounds %struct.anon.48, ptr %17, i32 0, i32 6, !dbg !7113
  %18 = load i32, ptr %_folio_nr_pages, align 4, !dbg !7113
  %conv11 = zext i32 %18 to i64, !dbg !7112
  store i64 %conv11, ptr %retval, align 8, !dbg !7114
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7114

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %folio) #12, !dbg !7115
  %19 = load i64, ptr %retval, align 8, !dbg !7115
  ret i64 %19, !dbg !7115
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @flush_dcache_page(ptr noundef %page) #5 align 16 !dbg !7116 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !7119, metadata !DIExpression()), !dbg !7120
  ret void, !dbg !7121
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @compound_order(ptr noundef %page) #5 align 16 !dbg !7122 {
entry:
  %retval = alloca i32, align 4
  %page.addr = alloca ptr, align 8
  %folio = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !7126, metadata !DIExpression()), !dbg !7128
  call void @llvm.lifetime.start.p0(i64 8, ptr %folio) #12, !dbg !7129
  call void @llvm.dbg.declare(metadata ptr %folio, metadata !7127, metadata !DIExpression()), !dbg !7130
  %0 = load ptr, ptr %page.addr, align 8, !dbg !7131
  store ptr %0, ptr %folio, align 8, !dbg !7130
  %1 = load ptr, ptr %folio, align 8, !dbg !7132
  %2 = getelementptr inbounds %struct.folio, ptr %1, i32 0, i32 0, !dbg !7132
  %flags = getelementptr inbounds %struct.anon.33, ptr %2, i32 0, i32 0, !dbg !7132
  %3 = ptrtoint ptr %flags to i64, !dbg !7132
  %cmp = icmp ne i64 %3, 0, !dbg !7132
  %conv = zext i1 %cmp to i32, !dbg !7132
  %4 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !7132
  br i1 %4, label %land.lhs.true, label %cond.false, !dbg !7132

land.lhs.true:                                    ; preds = %entry
  %5 = load ptr, ptr %folio, align 8, !dbg !7132
  %6 = getelementptr inbounds %struct.folio, ptr %5, i32 0, i32 0, !dbg !7132
  %flags1 = getelementptr inbounds %struct.anon.33, ptr %6, i32 0, i32 0, !dbg !7132
  %7 = ptrtoint ptr %flags1 to i64, !dbg !7132
  %cmp2 = icmp ne i64 %7, 0, !dbg !7132
  br i1 %cmp2, label %land.lhs.true4, label %cond.false, !dbg !7132

land.lhs.true4:                                   ; preds = %land.lhs.true
  %8 = load ptr, ptr %folio, align 8, !dbg !7132
  %9 = getelementptr inbounds %struct.folio, ptr %8, i32 0, i32 0, !dbg !7132
  %flags5 = getelementptr inbounds %struct.anon.33, ptr %9, i32 0, i32 0, !dbg !7132
  %10 = load i64, ptr %flags5, align 16, !dbg !7132
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !7132
  br i1 %11, label %cond.true, label %cond.false, !dbg !7134

cond.true:                                        ; preds = %land.lhs.true4
  %12 = load ptr, ptr %folio, align 8, !dbg !7132
  %13 = getelementptr inbounds %struct.folio, ptr %12, i32 0, i32 0, !dbg !7132
  %flags6 = getelementptr inbounds %struct.anon.33, ptr %13, i32 0, i32 0, !dbg !7132
  %call = call zeroext i1 @const_test_bit(i64 noundef 6, ptr noundef %flags6) #11, !dbg !7132
  br i1 %call, label %if.end, label %if.then, !dbg !7132

cond.false:                                       ; preds = %land.lhs.true4, %land.lhs.true, %entry
  %14 = load ptr, ptr %folio, align 8, !dbg !7132
  %15 = getelementptr inbounds %struct.folio, ptr %14, i32 0, i32 0, !dbg !7132
  %flags8 = getelementptr inbounds %struct.anon.33, ptr %15, i32 0, i32 0, !dbg !7132
  %call9 = call zeroext i1 @_test_bit(i64 noundef 6, ptr noundef %flags8) #11, !dbg !7132
  br i1 %call9, label %if.end, label %if.then, !dbg !7134

if.then:                                          ; preds = %cond.false, %cond.true
  store i32 0, ptr %retval, align 4, !dbg !7135
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7135

if.end:                                           ; preds = %cond.false, %cond.true
  %16 = load ptr, ptr %folio, align 8, !dbg !7136
  %17 = getelementptr inbounds %struct.folio, ptr %16, i32 0, i32 1, !dbg !7137
  %_flags_1 = getelementptr inbounds %struct.anon.48, ptr %17, i32 0, i32 0, !dbg !7137
  %18 = load i64, ptr %_flags_1, align 16, !dbg !7137
  %and = and i64 %18, 255, !dbg !7138
  %conv11 = trunc i64 %and to i32, !dbg !7136
  store i32 %conv11, ptr %retval, align 4, !dbg !7139
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7139

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %folio) #12, !dbg !7140
  %19 = load i32, ptr %retval, align 4, !dbg !7140
  ret i32 %19, !dbg !7140
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #10

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #1 align 16 !dbg !7141 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7148, metadata !DIExpression()), !dbg !7153
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7149, metadata !DIExpression()), !dbg !7154
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #12, !dbg !7155
  call void @llvm.dbg.declare(metadata ptr %p, metadata !7150, metadata !DIExpression()), !dbg !7156
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7157
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7158
  %div = udiv i64 %1, 64, !dbg !7158
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !7159
  store ptr %add.ptr, ptr %p, align 8, !dbg !7156
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #12, !dbg !7160
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !7151, metadata !DIExpression()), !dbg !7161
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7162
  %rem = urem i64 %2, 64, !dbg !7162
  %shl = shl i64 1, %rem, !dbg !7162
  store i64 %shl, ptr %mask, align 8, !dbg !7161
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #12, !dbg !7163
  call void @llvm.dbg.declare(metadata ptr %val, metadata !7152, metadata !DIExpression()), !dbg !7164
  %3 = load ptr, ptr %p, align 8, !dbg !7165
  %4 = load i64, ptr %3, align 8, !dbg !7166
  store i64 %4, ptr %val, align 8, !dbg !7164
  %5 = load i64, ptr %val, align 8, !dbg !7167
  %6 = load i64, ptr %mask, align 8, !dbg !7168
  %and = and i64 %5, %6, !dbg !7169
  %tobool = icmp ne i64 %and, 0, !dbg !7170
  %lnot = xor i1 %tobool, true, !dbg !7170
  %lnot1 = xor i1 %lnot, true, !dbg !7171
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #12, !dbg !7172
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #12, !dbg !7172
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #12, !dbg !7172
  ret i1 %lnot1, !dbg !7173
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #1 align 16 !dbg !7174 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7176, metadata !DIExpression()), !dbg !7178
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7177, metadata !DIExpression()), !dbg !7179
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7180
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7181
  %div = udiv i64 %1, 64, !dbg !7181
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !7182
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #11, !dbg !7183
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7184
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !7185
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #11, !dbg !7186
  ret i1 %call, !dbg !7187
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #1 align 16 !dbg !7188 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7190, metadata !DIExpression()), !dbg !7192
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7191, metadata !DIExpression()), !dbg !7193
  %0 = load i64, ptr %nr.addr, align 8, !dbg !7194
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !7195
  br i1 %1, label %cond.true, label %cond.false, !dbg !7195

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7196
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !7197
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #11, !dbg !7198
  %conv = zext i1 %call to i32, !dbg !7198
  br label %cond.end, !dbg !7195

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !7199
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !7200
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #11, !dbg !7201
  %conv2 = zext i1 %call1 to i32, !dbg !7201
  br label %cond.end, !dbg !7195

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !7195
  %tobool = icmp ne i32 %cond, 0, !dbg !7195
  ret i1 %tobool, !dbg !7202
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #1 align 16 !dbg !7203 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7207, metadata !DIExpression()), !dbg !7209
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7208, metadata !DIExpression()), !dbg !7210
  %0 = load i64, ptr %nr.addr, align 8, !dbg !7211
  %and = and i64 %0, 63, !dbg !7212
  %shl = shl i64 1, %and, !dbg !7213
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !7214
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7215
  %shr = ashr i64 %2, 6, !dbg !7216
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !7214
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !7214
  %and1 = and i64 %shl, %3, !dbg !7217
  %cmp = icmp ne i64 %and1, 0, !dbg !7218
  ret i1 %cmp, !dbg !7219
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #1 align 16 !dbg !7220 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7222, metadata !DIExpression()), !dbg !7225
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7223, metadata !DIExpression()), !dbg !7226
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #12, !dbg !7227
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !7224, metadata !DIExpression()), !dbg !7228
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7229
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7230
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #12, !dbg !7231, !srcloc !7232
  %3 = icmp ult i8 %2, 2, !dbg !7231
  call void @llvm.assume(i1 %3), !dbg !7231
  store i8 %2, ptr %oldbit, align 1, !dbg !7231
  %4 = load i8, ptr %oldbit, align 1, !dbg !7233, !range !6494, !noundef !1172
  %tobool = trunc i8 %4 to i1, !dbg !7233
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #12, !dbg !7234
  ret i1 %tobool, !dbg !7235
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @folio_order(ptr noundef %folio) #5 align 16 !dbg !7236 {
entry:
  %retval = alloca i32, align 4
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !7240, metadata !DIExpression()), !dbg !7241
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !7242
  %call = call zeroext i1 @folio_test_large(ptr noundef %0) #11, !dbg !7244
  br i1 %call, label %if.end, label %if.then, !dbg !7245

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !7246
  br label %return, !dbg !7246

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %folio.addr, align 8, !dbg !7247
  %2 = getelementptr inbounds %struct.folio, ptr %1, i32 0, i32 1, !dbg !7248
  %_flags_1 = getelementptr inbounds %struct.anon.48, ptr %2, i32 0, i32 0, !dbg !7248
  %3 = load i64, ptr %_flags_1, align 16, !dbg !7248
  %and = and i64 %3, 255, !dbg !7249
  %conv = trunc i64 %and to i32, !dbg !7247
  store i32 %conv, ptr %retval, align 4, !dbg !7250
  br label %return, !dbg !7250

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, ptr %retval, align 4, !dbg !7251
  ret i32 %4, !dbg !7251
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @folio_test_large(ptr noundef %folio) #5 align 16 !dbg !7252 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !7256, metadata !DIExpression()), !dbg !7257
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !7258
  %call = call zeroext i1 @folio_test_head(ptr noundef %0) #11, !dbg !7259
  ret i1 %call, !dbg !7260
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @folio_test_head(ptr noundef %folio) #1 align 16 !dbg !7261 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !7263, metadata !DIExpression()), !dbg !7264
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !7265
  %call = call ptr @folio_flags(ptr noundef %0, i32 noundef 0) #11, !dbg !7265
  %call1 = call zeroext i1 @_test_bit(i64 noundef 6, ptr noundef %call) #11, !dbg !7265
  ret i1 %call1, !dbg !7266
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_sys_memfd_secret(i32 noundef %flags) #5 align 16 !dbg !7267 {
entry:
  %retval = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %file = alloca ptr, align 8
  %fd = alloca i32, align 4
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7271, metadata !DIExpression()), !dbg !7276
  call void @llvm.lifetime.start.p0(i64 8, ptr %file) #12, !dbg !7277
  call void @llvm.dbg.declare(metadata ptr %file, metadata !7272, metadata !DIExpression()), !dbg !7278
  call void @llvm.lifetime.start.p0(i64 4, ptr %fd) #12, !dbg !7279
  call void @llvm.dbg.declare(metadata ptr %fd, metadata !7273, metadata !DIExpression()), !dbg !7280
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #12, !dbg !7279
  call void @llvm.dbg.declare(metadata ptr %err, metadata !7274, metadata !DIExpression()), !dbg !7281
  br label %do.body, !dbg !7282

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !7283

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !7283

do.end:                                           ; preds = %do.cond
  %0 = load i8, ptr @secretmem_enable, align 1, !dbg !7285, !range !6494, !noundef !1172
  %tobool = trunc i8 %0 to i1, !dbg !7285
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !7287

lor.lhs.false:                                    ; preds = %do.end
  %call = call zeroext i1 @can_set_direct_map() #11, !dbg !7288
  br i1 %call, label %if.end, label %if.then, !dbg !7289

if.then:                                          ; preds = %lor.lhs.false, %do.end
  store i64 -38, ptr %retval, align 8, !dbg !7290
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7290

if.end:                                           ; preds = %lor.lhs.false
  %1 = load i32, ptr %flags.addr, align 4, !dbg !7291
  %and = and i32 %1, -524289, !dbg !7293
  %tobool1 = icmp ne i32 %and, 0, !dbg !7293
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !7294

if.then2:                                         ; preds = %if.end
  store i64 -22, ptr %retval, align 8, !dbg !7295
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7295

if.end3:                                          ; preds = %if.end
  %call4 = call i32 @atomic_read(ptr noundef @secretmem_users) #11, !dbg !7296
  %cmp = icmp slt i32 %call4, 0, !dbg !7298
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !7299

if.then5:                                         ; preds = %if.end3
  store i64 -23, ptr %retval, align 8, !dbg !7300
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7300

if.end6:                                          ; preds = %if.end3
  %2 = load i32, ptr %flags.addr, align 4, !dbg !7301
  %and7 = and i32 %2, 524288, !dbg !7302
  %call8 = call i32 @get_unused_fd_flags(i32 noundef %and7) #11, !dbg !7303
  store i32 %call8, ptr %fd, align 4, !dbg !7304
  %3 = load i32, ptr %fd, align 4, !dbg !7305
  %cmp9 = icmp slt i32 %3, 0, !dbg !7307
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !7308

if.then10:                                        ; preds = %if.end6
  %4 = load i32, ptr %fd, align 4, !dbg !7309
  %conv = sext i32 %4 to i64, !dbg !7309
  store i64 %conv, ptr %retval, align 8, !dbg !7310
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7310

if.end11:                                         ; preds = %if.end6
  %5 = load i32, ptr %flags.addr, align 4, !dbg !7311
  %conv12 = zext i32 %5 to i64, !dbg !7311
  %call13 = call ptr @secretmem_file_create(i64 noundef %conv12) #11, !dbg !7312
  store ptr %call13, ptr %file, align 8, !dbg !7313
  %6 = load ptr, ptr %file, align 8, !dbg !7314
  %call14 = call zeroext i1 @IS_ERR(ptr noundef %6) #11, !dbg !7316
  br i1 %call14, label %if.then15, label %if.end18, !dbg !7317

if.then15:                                        ; preds = %if.end11
  %7 = load ptr, ptr %file, align 8, !dbg !7318
  %call16 = call i64 @PTR_ERR(ptr noundef %7) #11, !dbg !7320
  %conv17 = trunc i64 %call16 to i32, !dbg !7320
  store i32 %conv17, ptr %err, align 4, !dbg !7321
  br label %err_put_fd, !dbg !7322

if.end18:                                         ; preds = %if.end11
  %8 = load ptr, ptr %file, align 8, !dbg !7323
  %f_flags = getelementptr inbounds %struct.file, ptr %8, i32 0, i32 6, !dbg !7324
  %9 = load i32, ptr %f_flags, align 8, !dbg !7325
  %or = or i32 %9, 32768, !dbg !7325
  store i32 %or, ptr %f_flags, align 8, !dbg !7325
  call void @atomic_inc(ptr noundef @secretmem_users) #11, !dbg !7326
  %10 = load i32, ptr %fd, align 4, !dbg !7327
  %11 = load ptr, ptr %file, align 8, !dbg !7328
  call void @fd_install(i32 noundef %10, ptr noundef %11) #11, !dbg !7329
  %12 = load i32, ptr %fd, align 4, !dbg !7330
  %conv19 = sext i32 %12 to i64, !dbg !7330
  store i64 %conv19, ptr %retval, align 8, !dbg !7331
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7331

err_put_fd:                                       ; preds = %if.then15
  call void @llvm.dbg.label(metadata !7275), !dbg !7332
  %13 = load i32, ptr %fd, align 4, !dbg !7333
  call void @put_unused_fd(i32 noundef %13) #11, !dbg !7334
  %14 = load i32, ptr %err, align 4, !dbg !7335
  %conv20 = sext i32 %14 to i64, !dbg !7335
  store i64 %conv20, ptr %retval, align 8, !dbg !7336
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7336

cleanup:                                          ; preds = %err_put_fd, %if.end18, %if.then10, %if.then5, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #12, !dbg !7337
  call void @llvm.lifetime.end.p0(i64 4, ptr %fd) #12, !dbg !7337
  call void @llvm.lifetime.end.p0(i64 8, ptr %file) #12, !dbg !7337
  %15 = load i64, ptr %retval, align 8, !dbg !7337
  ret i64 %15, !dbg !7337
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @can_set_direct_map() #5 align 16 !dbg !7338 {
entry:
  ret i1 true, !dbg !7340
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7341 dso_local i32 @get_unused_fd_flags(i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @secretmem_file_create(i64 noundef %flags) #0 align 16 !dbg !7345 {
entry:
  %retval = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %file = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %anon_name = alloca ptr, align 8
  %qname = alloca %struct.qstr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7349, metadata !DIExpression()), !dbg !7356
  call void @llvm.lifetime.start.p0(i64 8, ptr %file) #12, !dbg !7357
  call void @llvm.dbg.declare(metadata ptr %file, metadata !7350, metadata !DIExpression()), !dbg !7358
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #12, !dbg !7359
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !7351, metadata !DIExpression()), !dbg !7360
  call void @llvm.lifetime.start.p0(i64 8, ptr %anon_name) #12, !dbg !7361
  call void @llvm.dbg.declare(metadata ptr %anon_name, metadata !7352, metadata !DIExpression()), !dbg !7362
  store ptr @.str.1, ptr %anon_name, align 8, !dbg !7362
  call void @llvm.lifetime.start.p0(i64 16, ptr %qname) #12, !dbg !7363
  call void @llvm.dbg.declare(metadata ptr %qname, metadata !7353, metadata !DIExpression()), !dbg !7364
  %0 = getelementptr inbounds %struct.qstr, ptr %qname, i32 0, i32 0, !dbg !7365
  %hash = getelementptr inbounds %struct.anon.57, ptr %0, i32 0, i32 0, !dbg !7365
  store i32 0, ptr %hash, align 8, !dbg !7365
  %len = getelementptr inbounds %struct.anon.57, ptr %0, i32 0, i32 1, !dbg !7365
  %1 = load ptr, ptr %anon_name, align 8, !dbg !7365
  %call = call i64 @strlen(ptr noundef %1) #11, !dbg !7365
  %conv = trunc i64 %call to i32, !dbg !7365
  store i32 %conv, ptr %len, align 4, !dbg !7365
  %name = getelementptr inbounds %struct.qstr, ptr %qname, i32 0, i32 1, !dbg !7365
  %2 = load ptr, ptr %anon_name, align 8, !dbg !7365
  store ptr %2, ptr %name, align 8, !dbg !7365
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #12, !dbg !7366
  call void @llvm.dbg.declare(metadata ptr %err, metadata !7354, metadata !DIExpression()), !dbg !7367
  %3 = load ptr, ptr @secretmem_mnt, align 8, !dbg !7368
  %mnt_sb = getelementptr inbounds %struct.vfsmount, ptr %3, i32 0, i32 1, !dbg !7369
  %4 = load ptr, ptr %mnt_sb, align 8, !dbg !7369
  %call1 = call ptr @alloc_anon_inode(ptr noundef %4) #11, !dbg !7370
  store ptr %call1, ptr %inode, align 8, !dbg !7371
  %5 = load ptr, ptr %inode, align 8, !dbg !7372
  %call2 = call zeroext i1 @IS_ERR(ptr noundef %5) #11, !dbg !7374
  br i1 %call2, label %if.then, label %if.end, !dbg !7375

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %inode, align 8, !dbg !7376
  %call3 = call ptr @ERR_CAST(ptr noundef %6) #11, !dbg !7377
  store ptr %call3, ptr %retval, align 8, !dbg !7378
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7378

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %inode, align 8, !dbg !7379
  %call4 = call i32 @security_inode_init_security_anon(ptr noundef %7, ptr noundef %qname, ptr noundef null) #11, !dbg !7380
  store i32 %call4, ptr %err, align 4, !dbg !7381
  %8 = load i32, ptr %err, align 4, !dbg !7382
  %tobool = icmp ne i32 %8, 0, !dbg !7382
  br i1 %tobool, label %if.then5, label %if.end8, !dbg !7384

if.then5:                                         ; preds = %if.end
  %9 = load i32, ptr %err, align 4, !dbg !7385
  %conv6 = sext i32 %9 to i64, !dbg !7385
  %call7 = call ptr @ERR_PTR(i64 noundef %conv6) #11, !dbg !7387
  store ptr %call7, ptr %file, align 8, !dbg !7388
  br label %err_free_inode, !dbg !7389

if.end8:                                          ; preds = %if.end
  %10 = load ptr, ptr %inode, align 8, !dbg !7390
  %11 = load ptr, ptr @secretmem_mnt, align 8, !dbg !7391
  %call9 = call ptr @alloc_file_pseudo(ptr noundef %10, ptr noundef %11, ptr noundef @.str.2, i32 noundef 2, ptr noundef @secretmem_fops) #11, !dbg !7392
  store ptr %call9, ptr %file, align 8, !dbg !7393
  %12 = load ptr, ptr %file, align 8, !dbg !7394
  %call10 = call zeroext i1 @IS_ERR(ptr noundef %12) #11, !dbg !7396
  br i1 %call10, label %if.then11, label %if.end12, !dbg !7397

if.then11:                                        ; preds = %if.end8
  br label %err_free_inode, !dbg !7398

if.end12:                                         ; preds = %if.end8
  %13 = load ptr, ptr %inode, align 8, !dbg !7399
  %i_mapping = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 10, !dbg !7400
  %14 = load ptr, ptr %i_mapping, align 8, !dbg !7400
  call void @mapping_set_gfp_mask(ptr noundef %14, i32 noundef 1051842) #11, !dbg !7401
  %15 = load ptr, ptr %inode, align 8, !dbg !7402
  %i_mapping13 = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 10, !dbg !7403
  %16 = load ptr, ptr %i_mapping13, align 8, !dbg !7403
  call void @mapping_set_unevictable(ptr noundef %16) #11, !dbg !7404
  %17 = load ptr, ptr %inode, align 8, !dbg !7405
  %i_op = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 8, !dbg !7406
  store ptr @secretmem_iops, ptr %i_op, align 8, !dbg !7407
  %18 = load ptr, ptr %inode, align 8, !dbg !7408
  %i_mapping14 = getelementptr inbounds %struct.inode, ptr %18, i32 0, i32 10, !dbg !7409
  %19 = load ptr, ptr %i_mapping14, align 8, !dbg !7409
  %a_ops = getelementptr inbounds %struct.address_space, ptr %19, i32 0, i32 8, !dbg !7410
  store ptr @secretmem_aops, ptr %a_ops, align 8, !dbg !7411
  %20 = load ptr, ptr %inode, align 8, !dbg !7412
  %i_mode = getelementptr inbounds %struct.inode, ptr %20, i32 0, i32 0, !dbg !7413
  %21 = load i16, ptr %i_mode, align 8, !dbg !7414
  %conv15 = zext i16 %21 to i32, !dbg !7414
  %or = or i32 %conv15, 32768, !dbg !7414
  %conv16 = trunc i32 %or to i16, !dbg !7414
  store i16 %conv16, ptr %i_mode, align 8, !dbg !7414
  %22 = load ptr, ptr %inode, align 8, !dbg !7415
  %i_size = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 15, !dbg !7416
  store i64 0, ptr %i_size, align 8, !dbg !7417
  %23 = load ptr, ptr %file, align 8, !dbg !7418
  store ptr %23, ptr %retval, align 8, !dbg !7419
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7419

err_free_inode:                                   ; preds = %if.then11, %if.then5
  call void @llvm.dbg.label(metadata !7355), !dbg !7420
  %24 = load ptr, ptr %inode, align 8, !dbg !7421
  call void @iput(ptr noundef %24) #11, !dbg !7422
  %25 = load ptr, ptr %file, align 8, !dbg !7423
  store ptr %25, ptr %retval, align 8, !dbg !7424
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7424

cleanup:                                          ; preds = %err_free_inode, %if.end12, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #12, !dbg !7425
  call void @llvm.lifetime.end.p0(i64 16, ptr %qname) #12, !dbg !7425
  call void @llvm.lifetime.end.p0(i64 8, ptr %anon_name) #12, !dbg !7425
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #12, !dbg !7425
  call void @llvm.lifetime.end.p0(i64 8, ptr %file) #12, !dbg !7425
  %26 = load ptr, ptr %retval, align 8, !dbg !7425
  ret ptr %26, !dbg !7425
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #5 align 16 !dbg !7426 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !7431, metadata !DIExpression()), !dbg !7432
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !7433
  %1 = ptrtoint ptr %0 to i64, !dbg !7433
  %2 = inttoptr i64 %1 to ptr, !dbg !7433
  %3 = ptrtoint ptr %2 to i64, !dbg !7433
  %cmp = icmp uge i64 %3, -4095, !dbg !7433
  %lnot = xor i1 %cmp, true, !dbg !7433
  %lnot1 = xor i1 %lnot, true, !dbg !7433
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7433
  %conv = sext i32 %lnot.ext to i64, !dbg !7433
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7433
  %tobool = icmp ne i64 %expval, 0, !dbg !7433
  ret i1 %tobool, !dbg !7434
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #5 align 16 !dbg !7435 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !7439, metadata !DIExpression()), !dbg !7440
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !7441
  %1 = ptrtoint ptr %0 to i64, !dbg !7442
  ret i64 %1, !dbg !7443
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_inc(ptr noundef %v) #1 align 16 !dbg !7444 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7448, metadata !DIExpression()), !dbg !7449
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7450
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #11, !dbg !7451
  %1 = load ptr, ptr %v.addr, align 8, !dbg !7452
  call void @raw_atomic_inc(ptr noundef %1) #11, !dbg !7453
  ret void, !dbg !7454
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7455 dso_local void @fd_install(i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7458 dso_local void @put_unused_fd(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7461 dso_local i64 @strlen(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7465 dso_local ptr @alloc_anon_inode(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_CAST(ptr noundef %ptr) #5 align 16 !dbg !7466 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !7470, metadata !DIExpression()), !dbg !7471
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !7472
  ret ptr %0, !dbg !7473
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7474 dso_local i32 @security_inode_init_security_anon(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #5 align 16 !dbg !7478 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !7482, metadata !DIExpression()), !dbg !7483
  %0 = load i64, ptr %error.addr, align 8, !dbg !7484
  %1 = inttoptr i64 %0 to ptr, !dbg !7485
  ret ptr %1, !dbg !7486
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7487 dso_local ptr @alloc_file_pseudo(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mapping_set_gfp_mask(ptr noundef %m, i32 noundef %mask) #5 align 16 !dbg !7490 {
entry:
  %m.addr = alloca ptr, align 8
  %mask.addr = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !7494, metadata !DIExpression()), !dbg !7496
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !7495, metadata !DIExpression()), !dbg !7497
  %0 = load i32, ptr %mask.addr, align 4, !dbg !7498
  %1 = load ptr, ptr %m.addr, align 8, !dbg !7499
  %gfp_mask = getelementptr inbounds %struct.address_space, ptr %1, i32 0, i32 3, !dbg !7500
  store i32 %0, ptr %gfp_mask, align 8, !dbg !7501
  ret void, !dbg !7502
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mapping_set_unevictable(ptr noundef %mapping) #5 align 16 !dbg !7503 {
entry:
  %mapping.addr = alloca ptr, align 8
  store ptr %mapping, ptr %mapping.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mapping.addr, metadata !7505, metadata !DIExpression()), !dbg !7506
  %0 = load ptr, ptr %mapping.addr, align 8, !dbg !7507
  %flags = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 9, !dbg !7508
  call void @set_bit(i64 noundef 3, ptr noundef %flags) #11, !dbg !7509
  ret void, !dbg !7510
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7511 dso_local void @iput(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @secretmem_mmap(ptr noundef %file, ptr noundef %vma) #0 align 16 !dbg !7512 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %vma.addr = alloca ptr, align 8
  %len = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !7514, metadata !DIExpression()), !dbg !7517
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !7515, metadata !DIExpression()), !dbg !7518
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #12, !dbg !7519
  call void @llvm.dbg.declare(metadata ptr %len, metadata !7516, metadata !DIExpression()), !dbg !7520
  %0 = load ptr, ptr %vma.addr, align 8, !dbg !7521
  %1 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 0, !dbg !7522
  %vm_end = getelementptr inbounds %struct.anon.22, ptr %1, i32 0, i32 1, !dbg !7522
  %2 = load i64, ptr %vm_end, align 8, !dbg !7522
  %3 = load ptr, ptr %vma.addr, align 8, !dbg !7523
  %4 = getelementptr inbounds %struct.vm_area_struct, ptr %3, i32 0, i32 0, !dbg !7524
  %vm_start = getelementptr inbounds %struct.anon.22, ptr %4, i32 0, i32 0, !dbg !7524
  %5 = load i64, ptr %vm_start, align 8, !dbg !7524
  %sub = sub i64 %2, %5, !dbg !7525
  store i64 %sub, ptr %len, align 8, !dbg !7520
  %6 = load ptr, ptr %vma.addr, align 8, !dbg !7526
  %7 = getelementptr inbounds %struct.vm_area_struct, ptr %6, i32 0, i32 3, !dbg !7528
  %8 = load i64, ptr %7, align 8, !dbg !7528
  %and = and i64 %8, 136, !dbg !7529
  %cmp = icmp eq i64 %and, 0, !dbg !7530
  br i1 %cmp, label %if.then, label %if.end, !dbg !7531

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !7532
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7532

if.end:                                           ; preds = %entry
  %9 = load ptr, ptr %vma.addr, align 8, !dbg !7533
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %9, i32 0, i32 1, !dbg !7535
  %10 = load ptr, ptr %vm_mm, align 8, !dbg !7535
  %11 = load ptr, ptr %vma.addr, align 8, !dbg !7536
  %12 = getelementptr inbounds %struct.vm_area_struct, ptr %11, i32 0, i32 3, !dbg !7537
  %13 = load i64, ptr %12, align 8, !dbg !7537
  %or = or i64 %13, 8192, !dbg !7538
  %14 = load i64, ptr %len, align 8, !dbg !7539
  %call = call zeroext i1 @mlock_future_ok(ptr noundef %10, i64 noundef %or, i64 noundef %14) #11, !dbg !7540
  br i1 %call, label %if.end2, label %if.then1, !dbg !7541

if.then1:                                         ; preds = %if.end
  store i32 -11, ptr %retval, align 4, !dbg !7542
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7542

if.end2:                                          ; preds = %if.end
  %15 = load ptr, ptr %vma.addr, align 8, !dbg !7543
  call void @vm_flags_set(ptr noundef %15, i64 noundef 67117056) #11, !dbg !7544
  %16 = load ptr, ptr %vma.addr, align 8, !dbg !7545
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %16, i32 0, i32 10, !dbg !7546
  store ptr @secretmem_vm_ops, ptr %vm_ops, align 8, !dbg !7547
  store i32 0, ptr %retval, align 4, !dbg !7548
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7548

cleanup:                                          ; preds = %if.end2, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #12, !dbg !7549
  %17 = load i32, ptr %retval, align 4, !dbg !7549
  ret i32 %17, !dbg !7549
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @secretmem_release(ptr noundef %inode, ptr noundef %file) #0 align 16 !dbg !7550 {
entry:
  %inode.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !7552, metadata !DIExpression()), !dbg !7554
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !7553, metadata !DIExpression()), !dbg !7555
  call void @atomic_dec(ptr noundef @secretmem_users) #11, !dbg !7556
  ret i32 0, !dbg !7557
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7558 dso_local zeroext i1 @mlock_future_ok(ptr noundef, i64 noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @vm_flags_set(ptr noundef %vma, i64 noundef %flags) #5 align 16 !dbg !7561 {
entry:
  %vma.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !7565, metadata !DIExpression()), !dbg !7567
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7566, metadata !DIExpression()), !dbg !7568
  %0 = load ptr, ptr %vma.addr, align 8, !dbg !7569
  call void @vma_start_write(ptr noundef %0) #11, !dbg !7570
  %1 = load i64, ptr %flags.addr, align 8, !dbg !7571
  %2 = load ptr, ptr %vma.addr, align 8, !dbg !7572
  %3 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 3, !dbg !7572
  %4 = load i64, ptr %3, align 8, !dbg !7573
  %or = or i64 %4, %1, !dbg !7573
  store i64 %or, ptr %3, align 8, !dbg !7573
  ret void, !dbg !7574
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @vma_start_write(ptr noundef %vma) #5 align 16 !dbg !7575 {
entry:
  %vma.addr = alloca ptr, align 8
  %mm_lock_seq = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !7577, metadata !DIExpression()), !dbg !7579
  call void @llvm.lifetime.start.p0(i64 4, ptr %mm_lock_seq) #12, !dbg !7580
  call void @llvm.dbg.declare(metadata ptr %mm_lock_seq, metadata !7578, metadata !DIExpression()), !dbg !7581
  %0 = load ptr, ptr %vma.addr, align 8, !dbg !7582
  %call = call zeroext i1 @__is_vma_write_locked(ptr noundef %0, ptr noundef %mm_lock_seq) #11, !dbg !7584
  br i1 %call, label %if.then, label %if.end, !dbg !7585

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7586

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %vma.addr, align 8, !dbg !7587
  %vm_lock = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 5, !dbg !7588
  %2 = load ptr, ptr %vm_lock, align 8, !dbg !7588
  %lock = getelementptr inbounds %struct.vma_lock, ptr %2, i32 0, i32 0, !dbg !7589
  call void @down_write(ptr noundef %lock) #11, !dbg !7590
  br label %do.body, !dbg !7591

do.body:                                          ; preds = %if.end
  br label %do.body1, !dbg !7592

do.body1:                                         ; preds = %do.body
  br label %do.cond, !dbg !7594

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !7594

do.end:                                           ; preds = %do.cond
  br label %do.body2, !dbg !7592

do.body2:                                         ; preds = %do.end
  %3 = load i32, ptr %mm_lock_seq, align 4, !dbg !7596
  %4 = load ptr, ptr %vma.addr, align 8, !dbg !7596
  %vm_lock_seq = getelementptr inbounds %struct.vm_area_struct, ptr %4, i32 0, i32 4, !dbg !7596
  store volatile i32 %3, ptr %vm_lock_seq, align 8, !dbg !7596
  br label %do.cond3, !dbg !7596

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !7596

do.end4:                                          ; preds = %do.cond3
  br label %do.cond5, !dbg !7592

do.cond5:                                         ; preds = %do.end4
  br label %do.end6, !dbg !7592

do.end6:                                          ; preds = %do.cond5
  %5 = load ptr, ptr %vma.addr, align 8, !dbg !7598
  %vm_lock7 = getelementptr inbounds %struct.vm_area_struct, ptr %5, i32 0, i32 5, !dbg !7599
  %6 = load ptr, ptr %vm_lock7, align 8, !dbg !7599
  %lock8 = getelementptr inbounds %struct.vma_lock, ptr %6, i32 0, i32 0, !dbg !7600
  call void @up_write(ptr noundef %lock8) #11, !dbg !7601
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !7602
  br label %cleanup, !dbg !7602

cleanup:                                          ; preds = %do.end6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %mm_lock_seq) #12, !dbg !7602
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !7602

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__is_vma_write_locked(ptr noundef %vma, ptr noundef %mm_lock_seq) #0 align 16 !dbg !7603 {
entry:
  %vma.addr = alloca ptr, align 8
  %mm_lock_seq.addr = alloca ptr, align 8
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !7607, metadata !DIExpression()), !dbg !7609
  store ptr %mm_lock_seq, ptr %mm_lock_seq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm_lock_seq.addr, metadata !7608, metadata !DIExpression()), !dbg !7610
  %0 = load ptr, ptr %vma.addr, align 8, !dbg !7611
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 1, !dbg !7612
  %1 = load ptr, ptr %vm_mm, align 8, !dbg !7612
  call void @mmap_assert_write_locked(ptr noundef %1) #11, !dbg !7613
  %2 = load ptr, ptr %vma.addr, align 8, !dbg !7614
  %vm_mm1 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 1, !dbg !7615
  %3 = load ptr, ptr %vm_mm1, align 8, !dbg !7615
  %4 = getelementptr inbounds %struct.mm_struct, ptr %3, i32 0, i32 0, !dbg !7616
  %mm_lock_seq2 = getelementptr inbounds %struct.anon.58, ptr %4, i32 0, i32 18, !dbg !7616
  %5 = load i32, ptr %mm_lock_seq2, align 8, !dbg !7616
  %6 = load ptr, ptr %mm_lock_seq.addr, align 8, !dbg !7617
  store i32 %5, ptr %6, align 4, !dbg !7618
  %7 = load ptr, ptr %vma.addr, align 8, !dbg !7619
  %vm_lock_seq = getelementptr inbounds %struct.vm_area_struct, ptr %7, i32 0, i32 4, !dbg !7620
  %8 = load i32, ptr %vm_lock_seq, align 8, !dbg !7620
  %9 = load ptr, ptr %mm_lock_seq.addr, align 8, !dbg !7621
  %10 = load i32, ptr %9, align 4, !dbg !7622
  %cmp = icmp eq i32 %8, %10, !dbg !7623
  ret i1 %cmp, !dbg !7624
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7625 dso_local void @down_write(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7626 dso_local void @up_write(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mmap_assert_write_locked(ptr noundef %mm) #5 align 16 !dbg !7627 {
entry:
  %mm.addr = alloca ptr, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !7632, metadata !DIExpression()), !dbg !7633
  br label %do.body, !dbg !7634

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !7635
  %1 = getelementptr inbounds %struct.mm_struct, ptr %0, i32 0, i32 0, !dbg !7635
  %mmap_lock = getelementptr inbounds %struct.anon.58, ptr %1, i32 0, i32 16, !dbg !7635
  br label %do.end, !dbg !7635

do.end:                                           ; preds = %do.body
  ret void, !dbg !7637
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_dec(ptr noundef %v) #1 align 16 !dbg !7638 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7640, metadata !DIExpression()), !dbg !7641
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7642
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #11, !dbg !7643
  %1 = load ptr, ptr %v.addr, align 8, !dbg !7644
  call void @raw_atomic_dec(ptr noundef %1) #11, !dbg !7645
  ret void, !dbg !7646
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_dec(ptr noundef %v) #1 align 16 !dbg !7647 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7649, metadata !DIExpression()), !dbg !7650
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7651
  call void @arch_atomic_dec(ptr noundef %0) #11, !dbg !7652
  ret void, !dbg !7653
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_dec(ptr noundef %v) #1 align 16 !dbg !7654 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7656, metadata !DIExpression()), !dbg !7657
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7658
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !7659
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #12, !dbg !7660, !srcloc !7661
  ret void, !dbg !7662
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #1 align 16 !dbg !7663 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7668, metadata !DIExpression()), !dbg !7670
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7669, metadata !DIExpression()), !dbg !7671
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7672
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7673
  %div = sdiv i64 %1, 64, !dbg !7673
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !7674
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #11, !dbg !7675
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7676
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !7677
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #11, !dbg !7678
  ret void, !dbg !7679
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #1 align 16 !dbg !7680 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7682, metadata !DIExpression()), !dbg !7684
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7683, metadata !DIExpression()), !dbg !7685
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7686
  %1 = load i64, ptr %size.addr, align 8, !dbg !7687
  %conv = trunc i64 %1 to i32, !dbg !7687
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #11, !dbg !7688
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7689
  %3 = load i64, ptr %size.addr, align 8, !dbg !7689
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #11, !dbg !7689
  ret void, !dbg !7690
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #1 align 16 !dbg !7691 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7693, metadata !DIExpression()), !dbg !7695
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7694, metadata !DIExpression()), !dbg !7696
  %0 = load i64, ptr %nr.addr, align 8, !dbg !7697
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !7699
  br i1 %1, label %if.then, label %if.else, !dbg !7700

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !7701
  %3 = load i64, ptr %nr.addr, align 8, !dbg !7701
  %shr = ashr i64 %3, 3, !dbg !7701
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !7701
  %4 = load i64, ptr %nr.addr, align 8, !dbg !7703
  %and = and i64 %4, 7, !dbg !7703
  %sh_prom = trunc i64 %and to i32, !dbg !7703
  %shl = shl i32 1, %sh_prom, !dbg !7703
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #12, !dbg !7704, !srcloc !7705
  br label %if.end, !dbg !7706

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !7707
  %6 = load i64, ptr %nr.addr, align 8, !dbg !7709
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #12, !dbg !7710, !srcloc !7711
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !7712
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @secretmem_setattr(ptr noundef %idmap, ptr noundef %dentry, ptr noundef %iattr) #0 align 16 !dbg !7713 {
entry:
  %idmap.addr = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  %iattr.addr = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %mapping = alloca ptr, align 8
  %ia_valid = alloca i32, align 4
  %ret = alloca i32, align 4
  store ptr %idmap, ptr %idmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idmap.addr, metadata !7715, metadata !DIExpression()), !dbg !7722
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !7716, metadata !DIExpression()), !dbg !7723
  store ptr %iattr, ptr %iattr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iattr.addr, metadata !7717, metadata !DIExpression()), !dbg !7724
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #12, !dbg !7725
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !7718, metadata !DIExpression()), !dbg !7726
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !7727
  %call = call ptr @d_inode(ptr noundef %0) #11, !dbg !7728
  store ptr %call, ptr %inode, align 8, !dbg !7726
  call void @llvm.lifetime.start.p0(i64 8, ptr %mapping) #12, !dbg !7729
  call void @llvm.dbg.declare(metadata ptr %mapping, metadata !7719, metadata !DIExpression()), !dbg !7730
  %1 = load ptr, ptr %inode, align 8, !dbg !7731
  %i_mapping = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10, !dbg !7732
  %2 = load ptr, ptr %i_mapping, align 8, !dbg !7732
  store ptr %2, ptr %mapping, align 8, !dbg !7730
  call void @llvm.lifetime.start.p0(i64 4, ptr %ia_valid) #12, !dbg !7733
  call void @llvm.dbg.declare(metadata ptr %ia_valid, metadata !7720, metadata !DIExpression()), !dbg !7734
  %3 = load ptr, ptr %iattr.addr, align 8, !dbg !7735
  %ia_valid1 = getelementptr inbounds %struct.iattr, ptr %3, i32 0, i32 0, !dbg !7736
  %4 = load i32, ptr %ia_valid1, align 8, !dbg !7736
  store i32 %4, ptr %ia_valid, align 4, !dbg !7734
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #12, !dbg !7737
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !7721, metadata !DIExpression()), !dbg !7738
  %5 = load ptr, ptr %mapping, align 8, !dbg !7739
  call void @filemap_invalidate_lock(ptr noundef %5) #11, !dbg !7740
  %6 = load i32, ptr %ia_valid, align 4, !dbg !7741
  %and = and i32 %6, 8, !dbg !7743
  %tobool = icmp ne i32 %and, 0, !dbg !7743
  br i1 %tobool, label %land.lhs.true, label %if.else, !dbg !7744

land.lhs.true:                                    ; preds = %entry
  %7 = load ptr, ptr %inode, align 8, !dbg !7745
  %i_size = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 15, !dbg !7746
  %8 = load i64, ptr %i_size, align 8, !dbg !7746
  %tobool2 = icmp ne i64 %8, 0, !dbg !7745
  br i1 %tobool2, label %if.then, label %if.else, !dbg !7747

if.then:                                          ; preds = %land.lhs.true
  store i32 -22, ptr %ret, align 4, !dbg !7748
  br label %if.end, !dbg !7749

if.else:                                          ; preds = %land.lhs.true, %entry
  %9 = load ptr, ptr %idmap.addr, align 8, !dbg !7750
  %10 = load ptr, ptr %dentry.addr, align 8, !dbg !7751
  %11 = load ptr, ptr %iattr.addr, align 8, !dbg !7752
  %call3 = call i32 @simple_setattr(ptr noundef %9, ptr noundef %10, ptr noundef %11) #11, !dbg !7753
  store i32 %call3, ptr %ret, align 4, !dbg !7754
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load ptr, ptr %mapping, align 8, !dbg !7755
  call void @filemap_invalidate_unlock(ptr noundef %12) #11, !dbg !7756
  %13 = load i32, ptr %ret, align 4, !dbg !7757
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #12, !dbg !7758
  call void @llvm.lifetime.end.p0(i64 4, ptr %ia_valid) #12, !dbg !7758
  call void @llvm.lifetime.end.p0(i64 8, ptr %mapping) #12, !dbg !7758
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #12, !dbg !7758
  ret i32 %13, !dbg !7759
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @d_inode(ptr noundef %dentry) #5 align 16 !dbg !7760 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !7764, metadata !DIExpression()), !dbg !7765
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !7766
  %d_inode = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5, !dbg !7767
  %1 = load ptr, ptr %d_inode, align 8, !dbg !7767
  ret ptr %1, !dbg !7768
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @filemap_invalidate_lock(ptr noundef %mapping) #5 align 16 !dbg !7769 {
entry:
  %mapping.addr = alloca ptr, align 8
  store ptr %mapping, ptr %mapping.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mapping.addr, metadata !7771, metadata !DIExpression()), !dbg !7772
  %0 = load ptr, ptr %mapping.addr, align 8, !dbg !7773
  %invalidate_lock = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 2, !dbg !7774
  call void @down_write(ptr noundef %invalidate_lock) #11, !dbg !7775
  ret void, !dbg !7776
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7777 dso_local i32 @simple_setattr(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @filemap_invalidate_unlock(ptr noundef %mapping) #5 align 16 !dbg !7778 {
entry:
  %mapping.addr = alloca ptr, align 8
  store ptr %mapping, ptr %mapping.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mapping.addr, metadata !7780, metadata !DIExpression()), !dbg !7781
  %0 = load ptr, ptr %mapping.addr, align 8, !dbg !7782
  %invalidate_lock = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 2, !dbg !7783
  call void @up_write(ptr noundef %invalidate_lock) #11, !dbg !7784
  ret void, !dbg !7785
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_inc(ptr noundef %v) #1 align 16 !dbg !7786 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7788, metadata !DIExpression()), !dbg !7789
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7790
  call void @arch_atomic_inc(ptr noundef %0) #11, !dbg !7791
  ret void, !dbg !7792
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_inc(ptr noundef %v) #1 align 16 !dbg !7793 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7795, metadata !DIExpression()), !dbg !7796
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7797
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !7798
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #12, !dbg !7799, !srcloc !7800
  ret void, !dbg !7801
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7802 dso_local ptr @kern_mount(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @secretmem_init_fs_context(ptr noundef %fc) #0 align 16 !dbg !7805 {
entry:
  %fc.addr = alloca ptr, align 8
  store ptr %fc, ptr %fc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fc.addr, metadata !7807, metadata !DIExpression()), !dbg !7808
  %0 = load ptr, ptr %fc.addr, align 8, !dbg !7809
  %call = call ptr @init_pseudo(ptr noundef %0, i64 noundef 1397048141) #11, !dbg !7810
  %tobool = icmp ne ptr %call, null, !dbg !7810
  %1 = zext i1 %tobool to i64, !dbg !7810
  %cond = select i1 %tobool, i32 0, i32 -12, !dbg !7810
  ret i32 %cond, !dbg !7811
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kill_anon_super(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7812 dso_local ptr @init_pseudo(ptr noundef, i64 noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noredzone }
attributes #12 = { nounwind }
attributes #13 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!6407, !6408, !6409, !6410, !6411, !6412, !6413, !6414}
!llvm.ident = !{!6415}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__param_str_enable", scope: !2, file: !3, line: 39, type: !6404, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF mm/.secretmem.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22mm/secretmem\22 -D KBUILD_BASENAME=\22secretmem\22 -D KBUILD_MODNAME=\22secretmem\22 -D __KBUILD_MODNAME=kmod_secretmem -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o mm/secretmem.ll mm/secretmem.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !383, globals: !6361, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "mm/secretmem.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09cedb8aa540a2b5fc8b75599b2d435c")
!4 = !{!5, !13, !22, !27, !123, !129, !145, !153, !161, !168, !175, !181, !188, !196, !203, !209, !218, !223, !228, !234, !243, !254, !260, !268, !273, !282, !287, !292, !298, !310, !315, !331, !371}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !6, line: 312, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!10 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!11 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!12 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fs_value_type", file: !14, line: 51, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/fs_context.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "58f4e15024eca636c2bdb50c4534d2c5")
!15 = !{!16, !17, !18, !19, !20, !21}
!16 = !DIEnumerator(name: "fs_value_is_undefined", value: 0)
!17 = !DIEnumerator(name: "fs_value_is_flag", value: 1)
!18 = !DIEnumerator(name: "fs_value_is_string", value: 2)
!19 = !DIEnumerator(name: "fs_value_is_blob", value: 3)
!20 = !DIEnumerator(name: "fs_value_is_filename", value: 4)
!21 = !DIEnumerator(name: "fs_value_is_file", value: 5)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !23, line: 65, baseType: !7, size: 32, elements: !24)
!23 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!24 = !{!25, !26}
!25 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!26 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !29, file: !28, line: 147, baseType: !7, size: 32, elements: !120)
!28 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !28, line: 135, size: 512, elements: !30)
!30 = !{!31, !35, !37, !39, !43, !44, !60, !118, !119}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !29, file: !28, line: 136, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!34 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !29, file: !28, line: 137, baseType: !36, size: 64, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !29, file: !28, line: 138, baseType: !38, size: 32, offset: 128)
!38 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !29, file: !28, line: 139, baseType: !40, size: 16, offset: 160)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !41, line: 24, baseType: !42)
!41 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!42 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !29, file: !28, line: 150, baseType: !27, size: 32, offset: 192)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !29, file: !28, line: 151, baseType: !45, size: 64, offset: 256)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !28, line: 64, baseType: !47)
!47 = !DISubroutineType(types: !48)
!48 = !{!38, !49, !38, !36, !50, !56}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !41, line: 61, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !53, line: 72, baseType: !54)
!53 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !53, line: 16, baseType: !55)
!55 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !41, line: 52, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !53, line: 88, baseType: !59)
!59 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !29, file: !28, line: 152, baseType: !61, size: 64, offset: 320)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !28, line: 117, size: 256, elements: !63)
!63 = !{!64, !69}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !62, file: !28, line: 118, baseType: !65, size: 32)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !41, line: 174, baseType: !66)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !41, line: 172, size: 32, elements: !67)
!67 = !{!68}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !66, file: !41, line: 173, baseType: !38, size: 32)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !62, file: !28, line: 119, baseType: !70, size: 192, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !71, line: 41, baseType: !72)
!71 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !71, line: 37, size: 192, elements: !73)
!73 = !{!74, !112}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !72, file: !71, line: 38, baseType: !75, size: 32)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !76, line: 29, baseType: !77)
!76 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !76, line: 17, size: 32, elements: !78)
!78 = !{!79}
!79 = !DIDerivedType(tag: DW_TAG_member, scope: !77, file: !76, line: 18, baseType: !80, size: 32)
!80 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !77, file: !76, line: 18, size: 32, elements: !81)
!81 = !{!82}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !80, file: !76, line: 19, baseType: !83, size: 32)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !84, line: 14, size: 32, elements: !85)
!84 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!85 = !{!86}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !83, file: !84, line: 15, baseType: !87, size: 32)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !88, line: 44, baseType: !89)
!88 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !88, line: 14, size: 32, elements: !90)
!90 = !{!91}
!91 = !DIDerivedType(tag: DW_TAG_member, scope: !89, file: !88, line: 15, baseType: !92, size: 32)
!92 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !89, file: !88, line: 15, size: 32, elements: !93)
!93 = !{!94, !95, !105}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !92, file: !88, line: 16, baseType: !65, size: 32)
!95 = !DIDerivedType(tag: DW_TAG_member, scope: !92, file: !88, line: 24, baseType: !96, size: 16)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !92, file: !88, line: 24, size: 16, elements: !97)
!97 = !{!98, !104}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !96, file: !88, line: 25, baseType: !99, size: 8)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !100, line: 17, baseType: !101)
!100 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !102, line: 21, baseType: !103)
!102 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!103 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !96, file: !88, line: 26, baseType: !99, size: 8, offset: 8)
!105 = !DIDerivedType(tag: DW_TAG_member, scope: !92, file: !88, line: 28, baseType: !106, size: 32)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !92, file: !88, line: 28, size: 32, elements: !107)
!107 = !{!108, !111}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !106, file: !88, line: 29, baseType: !109, size: 16)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !100, line: 19, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !102, line: 24, baseType: !42)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !106, file: !88, line: 30, baseType: !109, size: 16, offset: 16)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !72, file: !71, line: 39, baseType: !113, size: 128, offset: 64)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !41, line: 190, size: 128, elements: !114)
!114 = !{!115, !117}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !113, file: !41, line: 191, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !113, file: !41, line: 191, baseType: !116, size: 64, offset: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !29, file: !28, line: 153, baseType: !36, size: 64, offset: 384)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !29, file: !28, line: 154, baseType: !36, size: 64, offset: 448)
!120 = !{!121, !122}
!121 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!122 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!123 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !124, line: 16, baseType: !7, size: 32, elements: !125)
!124 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!125 = !{!126, !127, !128}
!126 = !DIEnumerator(name: "TT_NONE", value: 0)
!127 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!128 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!129 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !130, line: 1325, baseType: !7, size: 32, elements: !131)
!130 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!131 = !{!132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144}
!132 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!133 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!134 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!135 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!136 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!137 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!138 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!139 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!140 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!141 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!142 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!143 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!144 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!145 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !146, line: 68, baseType: !7, size: 32, elements: !147)
!146 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!147 = !{!148, !149, !150, !151, !152}
!148 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!149 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!150 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!151 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!152 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!153 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "zone_type", file: !154, line: 720, baseType: !7, size: 32, elements: !155)
!154 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e018db7b4c78b2d835997a33e792065c")
!155 = !{!156, !157, !158, !159, !160}
!156 = !DIEnumerator(name: "ZONE_DMA", value: 0)
!157 = !DIEnumerator(name: "ZONE_DMA32", value: 1)
!158 = !DIEnumerator(name: "ZONE_NORMAL", value: 2)
!159 = !DIEnumerator(name: "ZONE_MOVABLE", value: 3)
!160 = !DIEnumerator(name: "__MAX_NR_ZONES", value: 4)
!161 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !162, line: 15, baseType: !7, size: 32, elements: !163)
!162 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!163 = !{!164, !165, !166, !167}
!164 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!165 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!166 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!167 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!168 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !169, line: 51, baseType: !7, size: 32, elements: !170)
!169 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!170 = !{!171, !172, !173, !174}
!171 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!172 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!173 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!174 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!175 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !176, line: 45, baseType: !7, size: 32, elements: !177)
!176 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!177 = !{!178, !179, !180}
!178 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!179 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!180 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!181 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !182, line: 487, baseType: !7, size: 32, elements: !183)
!182 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!183 = !{!184, !185, !186, !187}
!184 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!185 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!186 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!187 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!188 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !189, line: 620, baseType: !7, size: 32, elements: !190)
!189 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!190 = !{!191, !192, !193, !194, !195}
!191 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!192 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!193 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!194 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!195 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!196 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !189, line: 597, baseType: !38, size: 32, elements: !197)
!197 = !{!198, !199, !200, !201, !202}
!198 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!199 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!200 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!201 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!202 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!203 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !204, line: 26, baseType: !7, size: 32, elements: !205)
!204 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!205 = !{!206, !207, !208}
!206 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!207 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!208 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!209 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !182, line: 547, baseType: !7, size: 32, elements: !210)
!210 = !{!211, !212, !213, !214, !215, !216, !217}
!211 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!212 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!213 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!214 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!215 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!216 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!217 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!218 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !182, line: 564, baseType: !7, size: 32, elements: !219)
!219 = !{!220, !221, !222}
!220 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!221 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!222 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!223 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !182, line: 577, baseType: !7, size: 32, elements: !224)
!224 = !{!225, !226, !227}
!225 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!226 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!227 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!228 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !182, line: 503, baseType: !7, size: 32, elements: !229)
!229 = !{!230, !231, !232, !233}
!230 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!231 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!232 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!233 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!234 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "perf_event_state", file: !235, line: 593, baseType: !38, size: 32, elements: !236)
!235 = !DIFile(filename: "./include/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5ce692f6af4d2c300194824e4904b29b")
!236 = !{!237, !238, !239, !240, !241, !242}
!237 = !DIEnumerator(name: "PERF_EVENT_STATE_DEAD", value: -4)
!238 = !DIEnumerator(name: "PERF_EVENT_STATE_EXIT", value: -3)
!239 = !DIEnumerator(name: "PERF_EVENT_STATE_ERROR", value: -2)
!240 = !DIEnumerator(name: "PERF_EVENT_STATE_OFF", value: -1)
!241 = !DIEnumerator(name: "PERF_EVENT_STATE_INACTIVE", value: 0)
!242 = !DIEnumerator(name: "PERF_EVENT_STATE_ACTIVE", value: 1)
!243 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "trace_reg", file: !244, line: 253, baseType: !7, size: 32, elements: !245)
!244 = !DIFile(filename: "./include/linux/trace_events.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85bf8311371fd36a6792d4cca4559454")
!245 = !{!246, !247, !248, !249, !250, !251, !252, !253}
!246 = !DIEnumerator(name: "TRACE_REG_REGISTER", value: 0)
!247 = !DIEnumerator(name: "TRACE_REG_UNREGISTER", value: 1)
!248 = !DIEnumerator(name: "TRACE_REG_PERF_REGISTER", value: 2)
!249 = !DIEnumerator(name: "TRACE_REG_PERF_UNREGISTER", value: 3)
!250 = !DIEnumerator(name: "TRACE_REG_PERF_OPEN", value: 4)
!251 = !DIEnumerator(name: "TRACE_REG_PERF_CLOSE", value: 5)
!252 = !DIEnumerator(name: "TRACE_REG_PERF_ADD", value: 6)
!253 = !DIEnumerator(name: "TRACE_REG_PERF_DEL", value: 7)
!254 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "print_line_t", file: !244, line: 158, baseType: !7, size: 32, elements: !255)
!255 = !{!256, !257, !258, !259}
!256 = !DIEnumerator(name: "TRACE_TYPE_PARTIAL_LINE", value: 0)
!257 = !DIEnumerator(name: "TRACE_TYPE_HANDLED", value: 1)
!258 = !DIEnumerator(name: "TRACE_TYPE_UNHANDLED", value: 2)
!259 = !DIEnumerator(name: "TRACE_TYPE_NO_CONSUME", value: 3)
!260 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !261, line: 9, baseType: !7, size: 32, elements: !262)
!261 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!262 = !{!263, !264, !265, !266, !267}
!263 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!264 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!265 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!266 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!267 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!268 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fs_context_purpose", file: !14, line: 29, baseType: !7, size: 32, elements: !269)
!269 = !{!270, !271, !272}
!270 = !DIEnumerator(name: "FS_CONTEXT_FOR_MOUNT", value: 0)
!271 = !DIEnumerator(name: "FS_CONTEXT_FOR_SUBMOUNT", value: 1)
!272 = !DIEnumerator(name: "FS_CONTEXT_FOR_RECONFIGURE", value: 2)
!273 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fs_context_phase", file: !14, line: 38, baseType: !7, size: 32, elements: !274)
!274 = !{!275, !276, !277, !278, !279, !280, !281}
!275 = !DIEnumerator(name: "FS_CONTEXT_CREATE_PARAMS", value: 0)
!276 = !DIEnumerator(name: "FS_CONTEXT_CREATING", value: 1)
!277 = !DIEnumerator(name: "FS_CONTEXT_AWAITING_MOUNT", value: 2)
!278 = !DIEnumerator(name: "FS_CONTEXT_AWAITING_RECONF", value: 3)
!279 = !DIEnumerator(name: "FS_CONTEXT_RECONF_PARAMS", value: 4)
!280 = !DIEnumerator(name: "FS_CONTEXT_RECONFIGURING", value: 5)
!281 = !DIEnumerator(name: "FS_CONTEXT_FAILED", value: 6)
!282 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writeback_sync_modes", file: !283, line: 32, baseType: !7, size: 32, elements: !284)
!283 = !DIFile(filename: "./include/linux/writeback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "529df0d846991cd3030ee9505d2aaa60")
!284 = !{!285, !286}
!285 = !DIEnumerator(name: "WB_SYNC_NONE", value: 0)
!286 = !DIEnumerator(name: "WB_SYNC_ALL", value: 1)
!287 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !288, line: 2052, baseType: !7, size: 32, elements: !289)
!288 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!289 = !{!290, !291}
!290 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!291 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!292 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !293, line: 54, baseType: !7, size: 32, elements: !294)
!293 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!294 = !{!295, !296, !297}
!295 = !DIEnumerator(name: "USRQUOTA", value: 0)
!296 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!297 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!298 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "wb_reason", file: !299, line: 44, baseType: !7, size: 32, elements: !300)
!299 = !DIFile(filename: "./include/linux/backing-dev-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48876dd2050c245a6230a2e03c4bc3c9")
!300 = !{!301, !302, !303, !304, !305, !306, !307, !308, !309}
!301 = !DIEnumerator(name: "WB_REASON_BACKGROUND", value: 0)
!302 = !DIEnumerator(name: "WB_REASON_VMSCAN", value: 1)
!303 = !DIEnumerator(name: "WB_REASON_SYNC", value: 2)
!304 = !DIEnumerator(name: "WB_REASON_PERIODIC", value: 3)
!305 = !DIEnumerator(name: "WB_REASON_LAPTOP_TIMER", value: 4)
!306 = !DIEnumerator(name: "WB_REASON_FS_FREE_SPACE", value: 5)
!307 = !DIEnumerator(name: "WB_REASON_FORKER_THREAD", value: 6)
!308 = !DIEnumerator(name: "WB_REASON_FOREIGN_FLUSH", value: 7)
!309 = !DIEnumerator(name: "WB_REASON_MAX", value: 8)
!310 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !311, line: 10, baseType: !7, size: 32, elements: !312)
!311 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!312 = !{!313, !314}
!313 = !DIEnumerator(name: "false", value: 0)
!314 = !DIEnumerator(name: "true", value: 1)
!315 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "vm_fault_reason", file: !130, line: 1211, baseType: !7, size: 32, elements: !316)
!316 = !{!317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330}
!317 = !DIEnumerator(name: "VM_FAULT_OOM", value: 1)
!318 = !DIEnumerator(name: "VM_FAULT_SIGBUS", value: 2)
!319 = !DIEnumerator(name: "VM_FAULT_MAJOR", value: 4)
!320 = !DIEnumerator(name: "VM_FAULT_HWPOISON", value: 16)
!321 = !DIEnumerator(name: "VM_FAULT_HWPOISON_LARGE", value: 32)
!322 = !DIEnumerator(name: "VM_FAULT_SIGSEGV", value: 64)
!323 = !DIEnumerator(name: "VM_FAULT_NOPAGE", value: 256)
!324 = !DIEnumerator(name: "VM_FAULT_LOCKED", value: 512)
!325 = !DIEnumerator(name: "VM_FAULT_RETRY", value: 1024)
!326 = !DIEnumerator(name: "VM_FAULT_FALLBACK", value: 2048)
!327 = !DIEnumerator(name: "VM_FAULT_DONE_COW", value: 4096)
!328 = !DIEnumerator(name: "VM_FAULT_NEEDDSYNC", value: 8192)
!329 = !DIEnumerator(name: "VM_FAULT_COMPLETED", value: 16384)
!330 = !DIEnumerator(name: "VM_FAULT_HINDEX_MASK", value: 983040)
!331 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pageflags", file: !332, line: 100, baseType: !7, size: 32, elements: !333)
!332 = !DIFile(filename: "./include/linux/page-flags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "303e043415a1e5da18ffd489677b4d01")
!333 = !{!334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370}
!334 = !DIEnumerator(name: "PG_locked", value: 0)
!335 = !DIEnumerator(name: "PG_writeback", value: 1)
!336 = !DIEnumerator(name: "PG_referenced", value: 2)
!337 = !DIEnumerator(name: "PG_uptodate", value: 3)
!338 = !DIEnumerator(name: "PG_dirty", value: 4)
!339 = !DIEnumerator(name: "PG_lru", value: 5)
!340 = !DIEnumerator(name: "PG_head", value: 6)
!341 = !DIEnumerator(name: "PG_waiters", value: 7)
!342 = !DIEnumerator(name: "PG_active", value: 8)
!343 = !DIEnumerator(name: "PG_workingset", value: 9)
!344 = !DIEnumerator(name: "PG_error", value: 10)
!345 = !DIEnumerator(name: "PG_slab", value: 11)
!346 = !DIEnumerator(name: "PG_owner_priv_1", value: 12)
!347 = !DIEnumerator(name: "PG_arch_1", value: 13)
!348 = !DIEnumerator(name: "PG_reserved", value: 14)
!349 = !DIEnumerator(name: "PG_private", value: 15)
!350 = !DIEnumerator(name: "PG_private_2", value: 16)
!351 = !DIEnumerator(name: "PG_mappedtodisk", value: 17)
!352 = !DIEnumerator(name: "PG_reclaim", value: 18)
!353 = !DIEnumerator(name: "PG_swapbacked", value: 19)
!354 = !DIEnumerator(name: "PG_unevictable", value: 20)
!355 = !DIEnumerator(name: "PG_mlocked", value: 21)
!356 = !DIEnumerator(name: "PG_uncached", value: 22)
!357 = !DIEnumerator(name: "__NR_PAGEFLAGS", value: 23)
!358 = !DIEnumerator(name: "PG_readahead", value: 18)
!359 = !DIEnumerator(name: "PG_anon_exclusive", value: 17)
!360 = !DIEnumerator(name: "PG_checked", value: 12)
!361 = !DIEnumerator(name: "PG_swapcache", value: 12)
!362 = !DIEnumerator(name: "PG_fscache", value: 16)
!363 = !DIEnumerator(name: "PG_pinned", value: 12)
!364 = !DIEnumerator(name: "PG_savepinned", value: 4)
!365 = !DIEnumerator(name: "PG_foreign", value: 12)
!366 = !DIEnumerator(name: "PG_xen_remapped", value: 12)
!367 = !DIEnumerator(name: "PG_isolated", value: 18)
!368 = !DIEnumerator(name: "PG_reported", value: 3)
!369 = !DIEnumerator(name: "PG_has_hwpoisoned", value: 10)
!370 = !DIEnumerator(name: "PG_large_rmappable", value: 9)
!371 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mapping_flags", file: !372, line: 197, baseType: !7, size: 32, elements: !373)
!372 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!373 = !{!374, !375, !376, !377, !378, !379, !380, !381, !382}
!374 = !DIEnumerator(name: "AS_EIO", value: 0)
!375 = !DIEnumerator(name: "AS_ENOSPC", value: 1)
!376 = !DIEnumerator(name: "AS_MM_ALL_LOCKS", value: 2)
!377 = !DIEnumerator(name: "AS_UNEVICTABLE", value: 3)
!378 = !DIEnumerator(name: "AS_EXITING", value: 4)
!379 = !DIEnumerator(name: "AS_NO_WRITEBACK_TAGS", value: 5)
!380 = !DIEnumerator(name: "AS_LARGE_FOLIO_SUPPORT", value: 6)
!381 = !DIEnumerator(name: "AS_RELEASE_ALWAYS", value: 7)
!382 = !DIEnumerator(name: "AS_STABLE_WRITES", value: 8)
!383 = !{!384, !7, !36, !6349, !57, !849, !55, !6352, !6353, !6355, !2103, !4785, !6356, !6357, !6341, !38, !6358, !6359, !473}
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !386)
!386 = !{!387, !388, !389, !393, !6052, !6078, !6079, !6080, !6081, !6085, !6088, !6089, !6090, !6139, !6140, !6141, !6142, !6143, !6144, !6145, !6146, !6154, !6155, !6173, !6190, !6191, !6192, !6193, !6202, !6225, !6226, !6229, !6232, !6233, !6234, !6235, !6236, !6237, !6238, !6241, !6242, !6320, !6321, !6322, !6323, !6325, !6327, !6328, !6337, !6338, !6339, !6340, !6342, !6343, !6344, !6345, !6346, !6347, !6348}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !385, file: !6, line: 403, baseType: !5, size: 32)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !385, file: !6, line: 406, baseType: !113, size: 128, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !385, file: !6, line: 409, baseType: !390, size: 448, offset: 192)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 448, elements: !391)
!391 = !{!392}
!392 = !DISubrange(count: 56)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !385, file: !6, line: 417, baseType: !394, size: 768, offset: 640)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !395)
!395 = !{!396, !6046, !6047, !6048, !6051}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !394, file: !6, line: 46, baseType: !397, size: 512)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !398, line: 64, size: 512, elements: !399)
!398 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!399 = !{!400, !401, !402, !404, !451, !6039, !6040, !6041, !6042, !6043, !6044, !6045}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !397, file: !398, line: 65, baseType: !32, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !397, file: !398, line: 66, baseType: !113, size: 128, offset: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !397, file: !398, line: 67, baseType: !403, size: 64, offset: 192)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !397, file: !398, line: 68, baseType: !405, size: 64, offset: 256)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !398, line: 168, size: 768, elements: !407)
!407 = !{!408, !409, !410, !411}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !406, file: !398, line: 169, baseType: !113, size: 128)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !406, file: !398, line: 170, baseType: !75, size: 32, offset: 128)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !406, file: !398, line: 171, baseType: !397, size: 512, offset: 192)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !406, file: !398, line: 172, baseType: !412, size: 64, offset: 704)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !414)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !398, line: 133, size: 192, elements: !415)
!415 = !{!416, !423, !428}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !414, file: !398, line: 134, baseType: !417, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !418)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DISubroutineType(types: !420)
!420 = !{!38, !421}
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !397)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !414, file: !398, line: 135, baseType: !424, size: 64, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !425)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DISubroutineType(types: !427)
!427 = !{!32, !421}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !414, file: !398, line: 136, baseType: !429, size: 64, offset: 128)
!429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !430)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DISubroutineType(types: !432)
!432 = !{!38, !421, !433}
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !398, line: 125, size: 20736, elements: !435)
!435 = !{!436, !441, !445, !446, !450}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !434, file: !398, line: 126, baseType: !437, size: 192)
!437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !438, size: 192, elements: !439)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!439 = !{!440}
!440 = !DISubrange(count: 3)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !434, file: !398, line: 127, baseType: !442, size: 4096, offset: 192)
!442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !438, size: 4096, elements: !443)
!443 = !{!444}
!444 = !DISubrange(count: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !434, file: !398, line: 128, baseType: !38, size: 32, offset: 4288)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !434, file: !398, line: 129, baseType: !447, size: 16384, offset: 4320)
!447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 16384, elements: !448)
!448 = !{!449}
!449 = !DISubrange(count: 2048)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !434, file: !398, line: 130, baseType: !38, size: 32, offset: 20704)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !397, file: !398, line: 69, baseType: !452, size: 64, offset: 320)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !454)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !398, line: 116, size: 384, elements: !455)
!455 = !{!456, !460, !483, !6027, !6031, !6035}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !454, file: !398, line: 117, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DISubroutineType(types: !459)
!459 = !{null, !403}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !454, file: !398, line: 118, baseType: !461, size: 64, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !463)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !464, line: 254, size: 128, elements: !465)
!464 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!465 = !{!466, !479}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !463, file: !464, line: 255, baseType: !467, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{!470, !403, !474, !438}
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !41, line: 66, baseType: !471)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !53, line: 73, baseType: !472)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !53, line: 15, baseType: !473)
!473 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !464, line: 30, size: 128, elements: !476)
!476 = !{!477, !478}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !475, file: !464, line: 31, baseType: !32, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !475, file: !464, line: 32, baseType: !40, size: 16, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !463, file: !464, line: 256, baseType: !480, size: 64, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{!470, !403, !474, !32, !51}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !454, file: !398, line: 119, baseType: !484, size: 64, offset: 128)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !487)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !464, line: 84, size: 320, elements: !488)
!488 = !{!489, !490, !494, !6023, !6025}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !487, file: !464, line: 85, baseType: !32, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !487, file: !464, line: 86, baseType: !491, size: 64, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DISubroutineType(types: !493)
!493 = !{!40, !403, !474, !38}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !487, file: !464, line: 88, baseType: !495, size: 64, offset: 128)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DISubroutineType(types: !497)
!497 = !{!40, !403, !498, !38}
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !464, line: 175, size: 512, elements: !500)
!500 = !{!501, !502, !503, !504, !6014, !6018, !6019}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !499, file: !464, line: 176, baseType: !475, size: 128)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !499, file: !464, line: 177, baseType: !51, size: 64, offset: 128)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !499, file: !464, line: 178, baseType: !36, size: 64, offset: 192)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !499, file: !464, line: 179, baseType: !505, size: 64, offset: 256)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DISubroutineType(types: !507)
!507 = !{!508}
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !288, line: 472, size: 1536, align: 64, elements: !510)
!510 = !{!511, !5860, !5861, !5862, !5863, !5864, !5865, !5866, !5867, !6008, !6009, !6010, !6011, !6012, !6013}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !509, file: !288, line: 473, baseType: !512, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !288, line: 641, size: 4800, elements: !514)
!514 = !{!515, !516, !517, !525, !526, !533, !534, !537, !538, !5799, !5800, !5801, !5802, !5803, !5808, !5809, !5810, !5811, !5812, !5813, !5814, !5815, !5816, !5817, !5818, !5819, !5820, !5821, !5822, !5823, !5824, !5825, !5826, !5831, !5832, !5833, !5834, !5835, !5836, !5837, !5842, !5845, !5846, !5847, !5856, !5857, !5858, !5859}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !513, file: !288, line: 642, baseType: !40, size: 16)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !513, file: !288, line: 643, baseType: !42, size: 16, offset: 16)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !513, file: !288, line: 644, baseType: !518, size: 32, offset: 32)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !519, line: 23, baseType: !520)
!519 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !519, line: 21, size: 32, elements: !521)
!521 = !{!522}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !520, file: !519, line: 22, baseType: !523, size: 32)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !41, line: 37, baseType: !524)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !53, line: 49, baseType: !7)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !513, file: !288, line: 645, baseType: !113, size: 128, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !513, file: !288, line: 646, baseType: !527, size: 32, offset: 192)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !519, line: 28, baseType: !528)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !519, line: 26, size: 32, elements: !529)
!529 = !{!530}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !528, file: !519, line: 27, baseType: !531, size: 32)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !41, line: 38, baseType: !532)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !53, line: 50, baseType: !7)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !513, file: !288, line: 647, baseType: !7, size: 32, offset: 224)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !513, file: !288, line: 650, baseType: !535, size: 64, offset: 256)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !288, line: 607, flags: DIFlagFwdDecl)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !513, file: !288, line: 651, baseType: !535, size: 64, offset: 320)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !513, file: !288, line: 654, baseType: !539, size: 64, offset: 384)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !541)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !288, line: 1966, size: 2048, align: 512, elements: !542)
!542 = !{!543, !5633, !5643, !5647, !5651, !5655, !5659, !5663, !5667, !5671, !5675, !5676, !5680, !5684, !5721, !5750, !5754, !5760, !5764, !5768, !5772, !5776, !5780, !5786, !5790}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !541, file: !288, line: 1967, baseType: !544, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{!547, !512, !547, !7}
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !549, line: 82, size: 1536, elements: !550)
!549 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!550 = !{!551, !552, !562, !570, !571, !591, !592, !596, !609, !5617, !5618, !5619, !5620, !5625, !5626, !5627}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !548, file: !549, line: 84, baseType: !7, size: 32)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !548, file: !549, line: 85, baseType: !553, size: 32, offset: 32)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !554, line: 275, baseType: !555)
!554 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !554, line: 275, size: 32, elements: !556)
!556 = !{!557}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !555, file: !554, line: 275, baseType: !558, size: 32)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !554, line: 69, baseType: !559)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !554, line: 64, size: 32, elements: !560)
!560 = !{!561}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !559, file: !554, line: 65, baseType: !7, size: 32)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !548, file: !549, line: 86, baseType: !563, size: 128, offset: 64)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !564, line: 38, size: 128, elements: !565)
!564 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!565 = !{!566, !568}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !563, file: !564, line: 39, baseType: !567, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !563, file: !564, line: 39, baseType: !569, size: 64, offset: 64)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !548, file: !549, line: 87, baseType: !547, size: 64, offset: 192)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !548, file: !549, line: 88, baseType: !572, size: 128, offset: 256)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !549, line: 49, size: 128, elements: !573)
!573 = !{!574, !588}
!574 = !DIDerivedType(tag: DW_TAG_member, scope: !572, file: !549, line: 50, baseType: !575, size: 64)
!575 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !572, file: !549, line: 50, size: 64, elements: !576)
!576 = !{!577, !584}
!577 = !DIDerivedType(tag: DW_TAG_member, scope: !575, file: !549, line: 51, baseType: !578, size: 64)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !575, file: !549, line: 51, size: 64, elements: !579)
!579 = !{!580, !583}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !578, file: !549, line: 52, baseType: !581, size: 32)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !100, line: 21, baseType: !582)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !102, line: 27, baseType: !7)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !578, file: !549, line: 52, baseType: !581, size: 32, offset: 32)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !575, file: !549, line: 54, baseType: !585, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !100, line: 23, baseType: !586)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !102, line: 31, baseType: !587)
!587 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !572, file: !549, line: 56, baseType: !589, size: 64, offset: 64)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !548, file: !549, line: 89, baseType: !512, size: 64, offset: 384)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !548, file: !549, line: 91, baseType: !593, size: 256, offset: 448)
!593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 256, elements: !594)
!594 = !{!595}
!595 = !DISubrange(count: 32)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !548, file: !549, line: 94, baseType: !597, size: 64, offset: 704)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !598, line: 25, size: 64, elements: !599)
!598 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!599 = !{!600}
!600 = !DIDerivedType(tag: DW_TAG_member, scope: !597, file: !598, line: 26, baseType: !601, size: 64)
!601 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !597, file: !598, line: 26, size: 64, elements: !602)
!602 = !{!603, !604}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !601, file: !598, line: 28, baseType: !586, size: 64, align: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, scope: !601, file: !598, line: 30, baseType: !605, size: 64)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !601, file: !598, line: 30, size: 64, elements: !606)
!606 = !{!607, !608}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !605, file: !598, line: 31, baseType: !75, size: 32)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !605, file: !598, line: 32, baseType: !38, size: 32, offset: 32)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !548, file: !549, line: 95, baseType: !610, size: 64, offset: 768)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !612)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !549, line: 128, size: 1024, align: 512, elements: !613)
!613 = !{!614, !618, !619, !626, !632, !636, !640, !644, !645, !649, !653, !5607, !5611}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !612, file: !549, line: 129, baseType: !615, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DISubroutineType(types: !617)
!617 = !{!38, !547, !7}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !612, file: !549, line: 130, baseType: !615, size: 64, offset: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !612, file: !549, line: 131, baseType: !620, size: 64, offset: 128)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DISubroutineType(types: !622)
!622 = !{!38, !623, !625}
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !548)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !612, file: !549, line: 132, baseType: !627, size: 64, offset: 192)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{!38, !623, !7, !32, !630}
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !572)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !612, file: !549, line: 134, baseType: !633, size: 64, offset: 256)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DISubroutineType(types: !635)
!635 = !{!38, !623}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !612, file: !549, line: 135, baseType: !637, size: 64, offset: 320)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{!38, !547}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !612, file: !549, line: 136, baseType: !641, size: 64, offset: 384)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DISubroutineType(types: !643)
!643 = !{null, !547}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !612, file: !549, line: 137, baseType: !641, size: 64, offset: 448)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !612, file: !549, line: 138, baseType: !646, size: 64, offset: 512)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DISubroutineType(types: !648)
!648 = !{null, !547, !512}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !612, file: !549, line: 139, baseType: !650, size: 64, offset: 576)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DISubroutineType(types: !652)
!652 = !{!438, !547, !438, !38}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !612, file: !549, line: 140, baseType: !654, size: 64, offset: 640)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{!657, !5606}
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !659, line: 70, size: 256, elements: !660)
!659 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!660 = !{!661, !662, !5602, !5603}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !658, file: !659, line: 71, baseType: !547, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !658, file: !659, line: 72, baseType: !663, size: 64, offset: 64)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !288, line: 1190, size: 10752, elements: !665)
!665 = !{!666, !667, !670, !671, !672, !673, !5057, !5209, !5249, !5334, !5338, !5339, !5340, !5341, !5342, !5343, !5344, !5345, !5346, !5351, !5355, !5356, !5397, !5400, !5467, !5470, !5471, !5472, !5513, !5536, !5537, !5538, !5539, !5540, !5541, !5544, !5545, !5552, !5553, !5554, !5555, !5556, !5571, !5572, !5573, !5574, !5575, !5576, !5577, !5578, !5593, !5594, !5595, !5596, !5597, !5598, !5599, !5600, !5601}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !664, file: !288, line: 1191, baseType: !113, size: 128)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !664, file: !288, line: 1192, baseType: !668, size: 32, offset: 128)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !41, line: 21, baseType: !669)
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !41, line: 18, baseType: !581)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !664, file: !288, line: 1193, baseType: !103, size: 8, offset: 160)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !664, file: !288, line: 1194, baseType: !55, size: 64, offset: 192)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !664, file: !288, line: 1195, baseType: !57, size: 64, offset: 256)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !664, file: !288, line: 1196, baseType: !674, size: 64, offset: 320)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !288, line: 2366, size: 576, elements: !676)
!676 = !{!677, !678, !679, !5031, !5035, !5039, !5043, !5044, !5045, !5046, !5049, !5050, !5051, !5053, !5054, !5055, !5056}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !675, file: !288, line: 2367, baseType: !32, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !675, file: !288, line: 2368, baseType: !38, size: 32, offset: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !675, file: !288, line: 2376, baseType: !680, size: 64, offset: 128)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DISubroutineType(types: !682)
!682 = !{!38, !683}
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !14, line: 90, size: 1216, elements: !685)
!685 = !{!686, !4996, !4997, !4998, !4999, !5000, !5001, !5002, !5003, !5004, !5019, !5020, !5021, !5022, !5023, !5024, !5025, !5026, !5027, !5028, !5029, !5030}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !684, file: !14, line: 91, baseType: !687, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !689)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context_operations", file: !14, line: 115, size: 384, elements: !690)
!690 = !{!691, !695, !699, !4990, !4994, !4995}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !689, file: !14, line: 116, baseType: !692, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DISubroutineType(types: !694)
!694 = !{null, !683}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !689, file: !14, line: 117, baseType: !696, size: 64, offset: 64)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DISubroutineType(types: !698)
!698 = !{!38, !683, !683}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "parse_param", scope: !689, file: !14, line: 118, baseType: !700, size: 64, offset: 128)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DISubroutineType(types: !702)
!702 = !{!38, !683, !703}
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter", file: !14, line: 63, size: 320, elements: !705)
!705 = !{!706, !707, !708, !4988, !4989}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !704, file: !14, line: 64, baseType: !32, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !704, file: !14, line: 65, baseType: !13, size: 8, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!708 = !DIDerivedType(tag: DW_TAG_member, scope: !704, file: !14, line: 66, baseType: !709, size: 64, offset: 128)
!709 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !704, file: !14, line: 66, size: 64, elements: !710)
!710 = !{!711, !712, !713, !727}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !709, file: !14, line: 67, baseType: !438, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !709, file: !14, line: 68, baseType: !36, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !709, file: !14, line: 69, baseType: !714, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "filename", file: !288, line: 2470, size: 256, elements: !716)
!716 = !{!717, !718, !719, !720, !723}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !715, file: !288, line: 2471, baseType: !32, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "uptr", scope: !715, file: !288, line: 2472, baseType: !32, size: 64, offset: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !715, file: !288, line: 2473, baseType: !65, size: 32, offset: 128)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "aname", scope: !715, file: !288, line: 2474, baseType: !721, size: 64, offset: 192)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_names", file: !288, line: 2469, flags: DIFlagFwdDecl)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "iname", scope: !715, file: !288, line: 2475, baseType: !724, offset: 256)
!724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, elements: !725)
!725 = !{!726}
!726 = !DISubrange(count: -1)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !709, file: !14, line: 70, baseType: !728, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !288, line: 994, size: 1856, align: 64, elements: !730)
!730 = !{!731, !750, !751, !753, !762, !775, !776, !777, !4726, !4727, !4736, !4742, !4743, !4979, !4980, !4981, !4982, !4983, !4984, !4987}
!731 = !DIDerivedType(tag: DW_TAG_member, scope: !729, file: !288, line: 995, baseType: !732, size: 128)
!732 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !729, file: !288, line: 995, size: 128, elements: !733)
!733 = !{!734, !740, !749}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !732, file: !288, line: 996, baseType: !735, size: 64)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !736, line: 60, size: 64, elements: !737)
!736 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!737 = !{!738}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !735, file: !736, line: 61, baseType: !739, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !732, file: !288, line: 997, baseType: !741, size: 128, align: 64)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !41, line: 232, size: 128, align: 64, elements: !742)
!742 = !{!743, !745}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !741, file: !41, line: 233, baseType: !744, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !741, file: !41, line: 234, baseType: !746, size: 64, offset: 64)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DISubroutineType(types: !748)
!748 = !{null, !744}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !732, file: !288, line: 998, baseType: !7, size: 32)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !729, file: !288, line: 1005, baseType: !75, size: 32, offset: 128)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !729, file: !288, line: 1006, baseType: !752, size: 32, offset: 160)
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !41, line: 156, baseType: !7)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !729, file: !288, line: 1007, baseType: !754, size: 64, offset: 192)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !755, line: 13, baseType: !756)
!755 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !41, line: 181, baseType: !757)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !41, line: 179, size: 64, elements: !758)
!758 = !{!759}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !757, file: !41, line: 180, baseType: !760, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !100, line: 22, baseType: !761)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !102, line: 30, baseType: !59)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !729, file: !288, line: 1008, baseType: !763, size: 256, offset: 256)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !764, line: 66, size: 256, elements: !765)
!764 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!765 = !{!766, !767, !769, !774}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !763, file: !764, line: 67, baseType: !754, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !763, file: !764, line: 68, baseType: !768, size: 32, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !84, line: 23, baseType: !83)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !763, file: !764, line: 70, baseType: !770, size: 32, offset: 96)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !771, line: 15, size: 32, elements: !772)
!771 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!772 = !{!773}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !770, file: !771, line: 20, baseType: !65, size: 32)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !763, file: !764, line: 72, baseType: !113, size: 128, offset: 128)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !729, file: !288, line: 1009, baseType: !57, size: 64, offset: 512)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !729, file: !288, line: 1010, baseType: !7, size: 32, offset: 576)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !729, file: !288, line: 1011, baseType: !778, size: 256, offset: 640)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !288, line: 948, size: 256, elements: !779)
!779 = !{!780, !801, !4722, !4723, !4724, !4725}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !778, file: !288, line: 949, baseType: !781, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !782, line: 34, baseType: !783)
!782 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !782, line: 25, size: 64, elements: !784)
!784 = !{!785}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !783, file: !782, line: 26, baseType: !786, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !787, line: 27, baseType: !788)
!787 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !787, line: 13, size: 64, elements: !789)
!789 = !{!790, !800}
!790 = !DIDerivedType(tag: DW_TAG_member, scope: !788, file: !787, line: 14, baseType: !791, size: 32)
!791 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !788, file: !787, line: 14, size: 32, elements: !792)
!792 = !{!793, !794}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !791, file: !787, line: 15, baseType: !65, size: 32)
!794 = !DIDerivedType(tag: DW_TAG_member, scope: !791, file: !787, line: 16, baseType: !795, size: 32)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !791, file: !787, line: 16, size: 32, elements: !796)
!796 = !{!797, !798}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !795, file: !787, line: 18, baseType: !99, size: 8)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !795, file: !787, line: 19, baseType: !799, size: 24, offset: 8)
!799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 24, elements: !439)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !788, file: !787, line: 26, baseType: !87, size: 32, offset: 32)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !778, file: !288, line: 950, baseType: !802, size: 64, offset: 64)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !261, line: 59, size: 768, elements: !804)
!804 = !{!805, !811, !812, !813, !826, !827, !828, !829}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !803, file: !261, line: 61, baseType: !806, size: 32)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !807, line: 113, baseType: !808)
!807 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !807, line: 111, size: 32, elements: !809)
!809 = !{!810}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !808, file: !807, line: 112, baseType: !65, size: 32)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !803, file: !261, line: 62, baseType: !7, size: 32, offset: 32)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !803, file: !261, line: 63, baseType: !75, size: 32, offset: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !803, file: !261, line: 65, baseType: !814, size: 256, offset: 128)
!814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !815, size: 256, elements: !824)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !41, line: 194, size: 64, elements: !816)
!816 = !{!817}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !815, file: !41, line: 195, baseType: !818, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !41, line: 198, size: 128, elements: !820)
!820 = !{!821, !822}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !819, file: !41, line: 199, baseType: !818, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !819, file: !41, line: 199, baseType: !823, size: 64, offset: 64)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!824 = !{!825}
!825 = !DISubrange(count: 4)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !803, file: !261, line: 66, baseType: !815, size: 64, offset: 384)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !803, file: !261, line: 68, baseType: !70, size: 192, offset: 448)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !803, file: !261, line: 69, baseType: !741, size: 128, align: 64, offset: 640)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !803, file: !261, line: 70, baseType: !830, offset: 768)
!830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !831, elements: !725)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !261, line: 54, size: 128, elements: !832)
!832 = !{!833, !834}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !831, file: !261, line: 55, baseType: !38, size: 32)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !831, file: !261, line: 56, baseType: !835, size: 64, offset: 64)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !837, line: 26, size: 1152, elements: !838)
!837 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!838 = !{!839, !853, !854, !855, !4711, !4712, !4713, !4714, !4717, !4718, !4719, !4720, !4721}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !836, file: !837, line: 27, baseType: !840, size: 192)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !841, line: 19, size: 192, elements: !842)
!841 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!842 = !{!843, !851, !852}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !840, file: !841, line: 20, baseType: !844, size: 128)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !845, line: 296, size: 128, elements: !846)
!845 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!846 = !{!847, !848, !850}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !844, file: !845, line: 297, baseType: !75, size: 32)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !844, file: !845, line: 299, baseType: !849, size: 32, offset: 32)
!849 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !41, line: 154, baseType: !7)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !844, file: !845, line: 300, baseType: !36, size: 64, offset: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !840, file: !841, line: 21, baseType: !7, size: 32, offset: 128)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !840, file: !841, line: 22, baseType: !7, size: 32, offset: 160)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !836, file: !837, line: 28, baseType: !741, size: 128, align: 64, offset: 192)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !836, file: !837, line: 29, baseType: !7, size: 32, offset: 320)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !836, file: !837, line: 30, baseType: !856, size: 64, offset: 384)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !858, line: 746, size: 58368, elements: !859)
!858 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!859 = !{!860, !868, !869, !870, !871, !872, !873, !874, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !947, !958, !1053, !1057, !1060, !1091, !1092, !1093, !1094, !1105, !1107, !1108, !1109, !1110, !1111, !1112, !1123, !1124, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1141, !1142, !1149, !1150, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1671, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1686, !1687, !1688, !1689, !1691, !1692, !1693, !1694, !1695, !1696, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1720, !1726, !1796, !1797, !1798, !1799, !1803, !1806, !1813, !1818, !1821, !1824, !1827, !2566, !2767, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2805, !2806, !2807, !2816, !2824, !2825, !2826, !2827, !2828, !2833, !2834, !2835, !2838, !2839, !2842, !2845, !2851, !2859, !3044, !3045, !3131, !3132, !3133, !3134, !3135, !3141, !3142, !3143, !3144, !3145, !3146, !3149, !3152, !3153, !3156, !3157, !3158, !3196, !3197, !3198, !3199, !3200, !3201, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3233, !3236, !3242, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3254, !3326, !3328, !3329, !3330, !3331, !3332, !3333, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3350, !3351, !3352}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !857, file: !858, line: 752, baseType: !861, size: 192)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !862, line: 56, size: 192, elements: !863)
!862 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!863 = !{!864, !865, !866, !867}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !861, file: !862, line: 57, baseType: !55, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !861, file: !862, line: 58, baseType: !55, size: 64, offset: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !861, file: !862, line: 59, baseType: !581, size: 32, offset: 128)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !861, file: !862, line: 61, baseType: !581, size: 32, offset: 160)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !857, file: !858, line: 754, baseType: !7, size: 32, offset: 192)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !857, file: !858, line: 767, baseType: !36, size: 64, offset: 256)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !857, file: !858, line: 768, baseType: !806, size: 32, offset: 320)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !857, file: !858, line: 770, baseType: !7, size: 32, offset: 352)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !857, file: !858, line: 771, baseType: !7, size: 32, offset: 384)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !857, file: !858, line: 774, baseType: !38, size: 32, offset: 416)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !857, file: !858, line: 775, baseType: !875, size: 128, offset: 448)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !876, line: 58, size: 128, elements: !877)
!876 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!877 = !{!878, !879, !884, !885}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !875, file: !876, line: 59, baseType: !735, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, scope: !875, file: !876, line: 60, baseType: !880, size: 32, offset: 64)
!880 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !875, file: !876, line: 60, size: 32, elements: !881)
!881 = !{!882, !883}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !880, file: !876, line: 61, baseType: !7, size: 32)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !880, file: !876, line: 62, baseType: !65, size: 32)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !875, file: !876, line: 65, baseType: !109, size: 16, offset: 96)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !875, file: !876, line: 65, baseType: !109, size: 16, offset: 112)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !857, file: !858, line: 776, baseType: !7, size: 32, offset: 576)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !857, file: !858, line: 777, baseType: !55, size: 64, offset: 640)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !857, file: !858, line: 778, baseType: !856, size: 64, offset: 704)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !857, file: !858, line: 787, baseType: !38, size: 32, offset: 768)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !857, file: !858, line: 788, baseType: !38, size: 32, offset: 800)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !857, file: !858, line: 790, baseType: !38, size: 32, offset: 832)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !857, file: !858, line: 792, baseType: !38, size: 32, offset: 864)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !857, file: !858, line: 793, baseType: !38, size: 32, offset: 896)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !857, file: !858, line: 794, baseType: !38, size: 32, offset: 928)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !857, file: !858, line: 795, baseType: !7, size: 32, offset: 960)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !857, file: !858, line: 797, baseType: !897, size: 2048, offset: 1024)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !858, line: 551, size: 2048, elements: !898)
!898 = !{!899, !904, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !926, !929, !930, !931}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !897, file: !858, line: 553, baseType: !900, size: 128)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !858, line: 411, size: 128, elements: !901)
!901 = !{!902, !903}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !900, file: !858, line: 412, baseType: !55, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !900, file: !858, line: 413, baseType: !581, size: 32, offset: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !897, file: !858, line: 554, baseType: !905, size: 192, align: 64, offset: 128)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !906, line: 5, size: 192, align: 64, elements: !907)
!906 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!907 = !{!908, !909, !911}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !905, file: !906, line: 6, baseType: !55, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !905, file: !906, line: 7, baseType: !910, size: 64, offset: 64)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !905, file: !906, line: 8, baseType: !910, size: 64, offset: 128)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !897, file: !858, line: 555, baseType: !585, size: 64, offset: 320)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !897, file: !858, line: 556, baseType: !585, size: 64, offset: 384)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !897, file: !858, line: 558, baseType: !113, size: 128, offset: 448)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !897, file: !858, line: 559, baseType: !7, size: 32, offset: 576)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !897, file: !858, line: 561, baseType: !585, size: 64, offset: 640)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !897, file: !858, line: 562, baseType: !585, size: 64, offset: 704)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !897, file: !858, line: 563, baseType: !585, size: 64, offset: 768)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !897, file: !858, line: 564, baseType: !585, size: 64, offset: 832)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !897, file: !858, line: 565, baseType: !760, size: 64, offset: 896)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !897, file: !858, line: 566, baseType: !585, size: 64, offset: 960)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !897, file: !858, line: 568, baseType: !585, size: 64, offset: 1024)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !897, file: !858, line: 571, baseType: !38, size: 32, offset: 1088)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !897, file: !858, line: 572, baseType: !925, size: 64, offset: 1152)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !897, file: !858, line: 574, baseType: !927, size: 64, offset: 1216)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !858, line: 49, flags: DIFlagFwdDecl)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !897, file: !858, line: 576, baseType: !927, size: 64, offset: 1280)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !897, file: !858, line: 578, baseType: !55, size: 64, offset: 1344)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !897, file: !858, line: 588, baseType: !932, size: 512, align: 512, offset: 1536)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !858, line: 497, size: 512, align: 512, elements: !933)
!933 = !{!934, !935, !936, !937, !938, !939, !940, !941, !942}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !932, file: !858, line: 498, baseType: !585, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !932, file: !858, line: 499, baseType: !585, size: 64, offset: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !932, file: !858, line: 500, baseType: !585, size: 64, offset: 128)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !932, file: !858, line: 501, baseType: !581, size: 32, offset: 192)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !932, file: !858, line: 502, baseType: !581, size: 32, offset: 224)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !932, file: !858, line: 503, baseType: !55, size: 64, offset: 256)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !932, file: !858, line: 504, baseType: !55, size: 64, offset: 320)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !932, file: !858, line: 505, baseType: !55, size: 64, offset: 384)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !932, file: !858, line: 506, baseType: !943, size: 64, align: 64, offset: 448)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !858, line: 445, size: 64, align: 64, elements: !944)
!944 = !{!945, !946}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !943, file: !858, line: 446, baseType: !7, size: 32)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !943, file: !858, line: 447, baseType: !7, size: 32, offset: 32)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !857, file: !858, line: 798, baseType: !948, size: 384, offset: 3072)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !858, line: 592, size: 384, elements: !949)
!949 = !{!950, !951, !952, !953, !954, !955, !956}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !948, file: !858, line: 593, baseType: !113, size: 128)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !948, file: !858, line: 594, baseType: !55, size: 64, offset: 128)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !948, file: !858, line: 595, baseType: !55, size: 64, offset: 192)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !948, file: !858, line: 596, baseType: !7, size: 32, offset: 256)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !948, file: !858, line: 597, baseType: !42, size: 16, offset: 288)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !948, file: !858, line: 598, baseType: !42, size: 16, offset: 304)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !948, file: !858, line: 600, baseType: !957, size: 64, offset: 320)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !857, file: !858, line: 799, baseType: !959, size: 1792, offset: 3456)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !858, line: 610, size: 1792, elements: !960)
!960 = !{!961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !1050, !1051}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !959, file: !858, line: 611, baseType: !905, size: 192, align: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !959, file: !858, line: 618, baseType: !585, size: 64, offset: 192)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !959, file: !858, line: 619, baseType: !585, size: 64, offset: 256)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !959, file: !858, line: 620, baseType: !585, size: 64, offset: 320)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !959, file: !858, line: 621, baseType: !585, size: 64, offset: 384)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !959, file: !858, line: 622, baseType: !585, size: 64, offset: 448)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !959, file: !858, line: 629, baseType: !760, size: 64, offset: 512)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !959, file: !858, line: 630, baseType: !585, size: 64, offset: 576)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !959, file: !858, line: 631, baseType: !7, size: 32, offset: 640)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !959, file: !858, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !959, file: !858, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !959, file: !858, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !959, file: !858, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !959, file: !858, line: 662, baseType: !975, size: 512, offset: 704)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !23, line: 118, size: 512, elements: !976)
!976 = !{!977, !985, !986, !991, !1046, !1047, !1048, !1049}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !975, file: !23, line: 119, baseType: !978, size: 256)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !979, line: 9, size: 256, elements: !980)
!979 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!980 = !{!981, !982}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !978, file: !979, line: 10, baseType: !905, size: 192, align: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !978, file: !979, line: 11, baseType: !983, size: 64, offset: 192)
!983 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !984, line: 29, baseType: !760)
!984 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!985 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !975, file: !23, line: 120, baseType: !983, size: 64, offset: 256)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !975, file: !23, line: 121, baseType: !987, size: 64, offset: 320)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DISubroutineType(types: !989)
!989 = !{!22, !990}
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !975, file: !23, line: 122, baseType: !992, size: 64, offset: 384)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !23, line: 159, size: 512, align: 512, elements: !994)
!994 = !{!995, !1020, !1021, !1024, !1029, !1030, !1041, !1045}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !993, file: !23, line: 160, baseType: !996, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !23, line: 215, size: 4608, align: 512, elements: !998)
!998 = !{!999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !997, file: !23, line: 216, baseType: !768, size: 32)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !997, file: !23, line: 217, baseType: !7, size: 32, offset: 32)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !997, file: !23, line: 218, baseType: !7, size: 32, offset: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !997, file: !23, line: 219, baseType: !7, size: 32, offset: 96)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !997, file: !23, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !997, file: !23, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !997, file: !23, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !997, file: !23, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !997, file: !23, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !997, file: !23, line: 226, baseType: !7, size: 32, offset: 160)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !997, file: !23, line: 227, baseType: !42, size: 16, offset: 192)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !997, file: !23, line: 228, baseType: !42, size: 16, offset: 208)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !997, file: !23, line: 229, baseType: !7, size: 32, offset: 224)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !997, file: !23, line: 235, baseType: !983, size: 64, offset: 256)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !997, file: !23, line: 236, baseType: !990, size: 64, offset: 320)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !997, file: !23, line: 237, baseType: !983, size: 64, offset: 384)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !997, file: !23, line: 238, baseType: !990, size: 64, offset: 448)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !997, file: !23, line: 239, baseType: !1017, size: 4096, align: 512, offset: 512)
!1017 = !DICompositeType(tag: DW_TAG_array_type, baseType: !993, size: 4096, align: 512, elements: !1018)
!1018 = !{!1019}
!1019 = !DISubrange(count: 8)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !993, file: !23, line: 161, baseType: !7, size: 32, offset: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !993, file: !23, line: 162, baseType: !1022, size: 32, offset: 96)
!1022 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !41, line: 32, baseType: !1023)
!1023 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !53, line: 96, baseType: !38)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !993, file: !23, line: 163, baseType: !1025, size: 32, offset: 128)
!1025 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !554, line: 274, baseType: !1026)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !554, line: 274, size: 32, elements: !1027)
!1027 = !{!1028}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1026, file: !554, line: 274, baseType: !558, size: 32)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !993, file: !23, line: 164, baseType: !990, size: 64, offset: 192)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !993, file: !23, line: 165, baseType: !1031, size: 128, offset: 256)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !979, line: 14, size: 128, elements: !1032)
!1032 = !{!1033}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1031, file: !979, line: 15, baseType: !1034, size: 128)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !906, line: 26, size: 128, elements: !1035)
!1035 = !{!1036, !1040}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1034, file: !906, line: 27, baseType: !1037, size: 64)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !906, line: 12, size: 64, elements: !1038)
!1038 = !{!1039}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1037, file: !906, line: 13, baseType: !910, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1034, file: !906, line: 28, baseType: !910, size: 64, offset: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !993, file: !23, line: 166, baseType: !1042, size: 64, offset: 384)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!983}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !993, file: !23, line: 167, baseType: !983, size: 64, offset: 448)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !975, file: !23, line: 123, baseType: !99, size: 8, offset: 448)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !975, file: !23, line: 124, baseType: !99, size: 8, offset: 456)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !975, file: !23, line: 125, baseType: !99, size: 8, offset: 464)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !975, file: !23, line: 126, baseType: !99, size: 8, offset: 472)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !959, file: !858, line: 671, baseType: !975, size: 512, offset: 1216)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !959, file: !858, line: 679, baseType: !1052, size: 64, offset: 1728)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !857, file: !858, line: 800, baseType: !1054, size: 64, offset: 5248)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1056)
!1056 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !858, line: 800, flags: DIFlagFwdDecl)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !857, file: !858, line: 809, baseType: !1058, size: 64, offset: 5312)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !858, line: 70, flags: DIFlagFwdDecl)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !857, file: !858, line: 825, baseType: !1061, size: 2048, align: 512, offset: 5632)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !858, line: 509, size: 2048, align: 512, elements: !1062)
!1062 = !{!1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1061, file: !858, line: 511, baseType: !585, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1061, file: !858, line: 512, baseType: !585, size: 64, offset: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1061, file: !858, line: 513, baseType: !585, size: 64, offset: 128)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1061, file: !858, line: 514, baseType: !585, size: 64, offset: 192)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1061, file: !858, line: 515, baseType: !585, size: 64, offset: 256)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1061, file: !858, line: 516, baseType: !585, size: 64, offset: 320)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1061, file: !858, line: 518, baseType: !585, size: 64, offset: 384)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1061, file: !858, line: 519, baseType: !585, size: 64, offset: 448)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1061, file: !858, line: 520, baseType: !760, size: 64, offset: 512)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1061, file: !858, line: 522, baseType: !585, size: 64, offset: 576)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1061, file: !858, line: 523, baseType: !585, size: 64, offset: 640)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1061, file: !858, line: 524, baseType: !760, size: 64, offset: 704)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1061, file: !858, line: 526, baseType: !760, size: 64, offset: 768)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1061, file: !858, line: 527, baseType: !585, size: 64, offset: 832)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1061, file: !858, line: 529, baseType: !585, size: 64, offset: 896)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1061, file: !858, line: 530, baseType: !585, size: 64, offset: 960)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1061, file: !858, line: 531, baseType: !585, size: 64, offset: 1024)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1061, file: !858, line: 532, baseType: !585, size: 64, offset: 1088)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1061, file: !858, line: 533, baseType: !585, size: 64, offset: 1152)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1061, file: !858, line: 535, baseType: !585, size: 64, offset: 1216)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1061, file: !858, line: 536, baseType: !585, size: 64, offset: 1280)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1061, file: !858, line: 537, baseType: !585, size: 64, offset: 1344)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1061, file: !858, line: 538, baseType: !585, size: 64, offset: 1408)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1061, file: !858, line: 539, baseType: !585, size: 64, offset: 1472)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1061, file: !858, line: 540, baseType: !585, size: 64, offset: 1536)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1061, file: !858, line: 541, baseType: !585, size: 64, offset: 1600)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1061, file: !858, line: 542, baseType: !585, size: 64, offset: 1664)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1061, file: !858, line: 543, baseType: !585, size: 64, offset: 1728)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !857, file: !858, line: 833, baseType: !7, size: 32, offset: 7680)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !857, file: !858, line: 836, baseType: !7, size: 32, offset: 7712)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !857, file: !858, line: 837, baseType: !38, size: 32, offset: 7744)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !857, file: !858, line: 838, baseType: !1095, size: 64, offset: 7808)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1097)
!1097 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1098, line: 19, baseType: !1099)
!1098 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1098, line: 19, size: 64, elements: !1100)
!1100 = !{!1101}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1099, file: !1098, line: 19, baseType: !1102, size: 64)
!1102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 64, elements: !1103)
!1103 = !{!1104}
!1104 = !DISubrange(count: 1)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !857, file: !858, line: 839, baseType: !1106, size: 64, offset: 7872)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !857, file: !858, line: 840, baseType: !1097, size: 64, offset: 7936)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !857, file: !858, line: 841, baseType: !36, size: 64, offset: 8000)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !857, file: !858, line: 843, baseType: !42, size: 16, offset: 8064)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !857, file: !858, line: 845, baseType: !42, size: 16, offset: 8080)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !857, file: !858, line: 848, baseType: !38, size: 32, offset: 8096)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !857, file: !858, line: 849, baseType: !1113, size: 32, offset: 8128)
!1113 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !858, line: 718, size: 32, elements: !1114)
!1114 = !{!1115, !1122}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1113, file: !858, line: 724, baseType: !1116, size: 32)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1113, file: !858, line: 719, size: 32, elements: !1117)
!1117 = !{!1118, !1119, !1120, !1121}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1116, file: !858, line: 720, baseType: !99, size: 8)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1116, file: !858, line: 721, baseType: !99, size: 8, offset: 8)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1116, file: !858, line: 722, baseType: !99, size: 8, offset: 16)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1116, file: !858, line: 723, baseType: !99, size: 8, offset: 24)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1113, file: !858, line: 725, baseType: !581, size: 32)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !857, file: !858, line: 850, baseType: !113, size: 128, offset: 8192)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !857, file: !858, line: 851, baseType: !1125, size: 64, offset: 8320)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !858, line: 60, flags: DIFlagFwdDecl)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !857, file: !858, line: 855, baseType: !55, size: 64, offset: 8384)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !857, file: !858, line: 856, baseType: !99, size: 8, offset: 8448)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !857, file: !858, line: 857, baseType: !99, size: 8, offset: 8456)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !857, file: !858, line: 858, baseType: !38, size: 32, offset: 8480)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !857, file: !858, line: 859, baseType: !113, size: 128, offset: 8512)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !857, file: !858, line: 860, baseType: !38, size: 32, offset: 8640)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !857, file: !858, line: 861, baseType: !113, size: 128, offset: 8704)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !857, file: !858, line: 873, baseType: !1135, size: 256, offset: 8832)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !858, line: 376, size: 256, elements: !1136)
!1136 = !{!1137, !1138, !1139, !1140}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1135, file: !858, line: 381, baseType: !55, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1135, file: !858, line: 384, baseType: !587, size: 64, offset: 64)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1135, file: !858, line: 389, baseType: !587, size: 64, offset: 128)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1135, file: !858, line: 392, baseType: !587, size: 64, offset: 192)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !857, file: !858, line: 875, baseType: !113, size: 128, offset: 9088)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !857, file: !858, line: 877, baseType: !1143, size: 320, offset: 9216)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1144, line: 86, size: 320, elements: !1145)
!1144 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1145 = !{!1146, !1147, !1148}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1143, file: !1144, line: 87, baseType: !38, size: 32)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1143, file: !1144, line: 88, baseType: !113, size: 128, offset: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1143, file: !1144, line: 89, baseType: !113, size: 128, offset: 192)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !857, file: !858, line: 878, baseType: !905, size: 192, align: 64, offset: 9536)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !857, file: !858, line: 881, baseType: !1151, size: 64, offset: 9728)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !130, line: 733, size: 10240, elements: !1153)
!1153 = !{!1154, !1585}
!1154 = !DIDerivedType(tag: DW_TAG_member, scope: !1152, file: !130, line: 734, baseType: !1155, size: 10240)
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1152, file: !130, line: 734, size: 10240, elements: !1156)
!1156 = !{!1157, !1161, !1175, !1179, !1180, !1181, !1182, !1183, !1184, !1193, !1194, !1195, !1201, !1202, !1203, !1204, !1205, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1242, !1254, !1257, !1305, !1306, !1307, !1310, !1571, !1572, !1575, !1576, !1577, !1583, !1584}
!1157 = !DIDerivedType(tag: DW_TAG_member, scope: !1155, file: !130, line: 739, baseType: !1158, size: 512, align: 512)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1155, file: !130, line: 739, size: 512, align: 512, elements: !1159)
!1159 = !{!1160}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1158, file: !130, line: 747, baseType: !65, size: 32)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1155, file: !130, line: 750, baseType: !1162, size: 128, offset: 512)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1163, line: 218, size: 128, elements: !1164)
!1163 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1164 = !{!1165, !1173, !1174}
!1165 = !DIDerivedType(tag: DW_TAG_member, scope: !1162, file: !1163, line: 219, baseType: !1166, size: 32)
!1166 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1162, file: !1163, line: 219, size: 32, elements: !1167)
!1167 = !{!1168, !1169}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1166, file: !1163, line: 220, baseType: !75, size: 32)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1166, file: !1163, line: 221, baseType: !1170)
!1170 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1163, line: 197, baseType: !1171)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1163, line: 197, elements: !1172)
!1172 = !{}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1162, file: !1163, line: 223, baseType: !7, size: 32, offset: 32)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1162, file: !1163, line: 224, baseType: !36, size: 64, offset: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1155, file: !130, line: 752, baseType: !1176, size: 64, offset: 640)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!55, !728, !55, !55, !55, !55}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1155, file: !130, line: 756, baseType: !55, size: 64, offset: 704)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1155, file: !130, line: 757, baseType: !55, size: 64, offset: 768)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1155, file: !130, line: 760, baseType: !55, size: 64, offset: 832)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1155, file: !130, line: 761, baseType: !55, size: 64, offset: 896)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1155, file: !130, line: 763, baseType: !55, size: 64, offset: 960)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1155, file: !130, line: 764, baseType: !1185, size: 64, offset: 1024)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1187, line: 299, baseType: !1188)
!1187 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1187, line: 299, size: 64, elements: !1189)
!1189 = !{!1190}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1188, file: !1187, line: 299, baseType: !1191, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1192, line: 18, baseType: !55)
!1192 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1155, file: !130, line: 773, baseType: !65, size: 32, offset: 1088)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1155, file: !130, line: 785, baseType: !65, size: 32, offset: 1120)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1155, file: !130, line: 795, baseType: !1196, size: 64, offset: 1152)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !130, line: 726, size: 128, elements: !1198)
!1198 = !{!1199, !1200}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1197, file: !130, line: 727, baseType: !585, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1197, file: !130, line: 728, baseType: !38, size: 32, offset: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1155, file: !130, line: 801, baseType: !55, size: 64, offset: 1216)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1155, file: !130, line: 804, baseType: !754, size: 64, offset: 1280)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1155, file: !130, line: 806, baseType: !38, size: 32, offset: 1344)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1155, file: !130, line: 808, baseType: !75, size: 32, offset: 1376)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1155, file: !130, line: 823, baseType: !1206, size: 320, offset: 1408)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1207, line: 48, size: 320, elements: !1208)
!1207 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1208 = !{!1209, !1210, !1211, !1212, !1213}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1206, file: !1207, line: 49, baseType: !754, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1206, file: !1207, line: 55, baseType: !754, size: 64, offset: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1206, file: !1207, line: 57, baseType: !770, size: 32, offset: 128)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1206, file: !1207, line: 59, baseType: !768, size: 32, offset: 160)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1206, file: !1207, line: 60, baseType: !113, size: 128, offset: 192)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1155, file: !130, line: 825, baseType: !113, size: 128, offset: 1728)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1155, file: !130, line: 845, baseType: !38, size: 32, offset: 1856)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1155, file: !130, line: 849, baseType: !55, size: 64, offset: 1920)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1155, file: !130, line: 850, baseType: !55, size: 64, offset: 1984)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1155, file: !130, line: 852, baseType: !55, size: 64, offset: 2048)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1155, file: !130, line: 853, baseType: !55, size: 64, offset: 2112)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1155, file: !130, line: 854, baseType: !756, size: 64, offset: 2176)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1155, file: !130, line: 855, baseType: !55, size: 64, offset: 2240)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1155, file: !130, line: 856, baseType: !55, size: 64, offset: 2304)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1155, file: !130, line: 857, baseType: !55, size: 64, offset: 2368)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1155, file: !130, line: 858, baseType: !55, size: 64, offset: 2432)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1155, file: !130, line: 865, baseType: !558, size: 32, offset: 2496)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1155, file: !130, line: 867, baseType: !75, size: 32, offset: 2528)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1155, file: !130, line: 869, baseType: !55, size: 64, offset: 2560)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1155, file: !130, line: 869, baseType: !55, size: 64, offset: 2624)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1155, file: !130, line: 869, baseType: !55, size: 64, offset: 2688)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1155, file: !130, line: 869, baseType: !55, size: 64, offset: 2752)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1155, file: !130, line: 870, baseType: !55, size: 64, offset: 2816)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1155, file: !130, line: 870, baseType: !55, size: 64, offset: 2880)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1155, file: !130, line: 870, baseType: !55, size: 64, offset: 2944)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1155, file: !130, line: 871, baseType: !55, size: 64, offset: 3008)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1155, file: !130, line: 871, baseType: !55, size: 64, offset: 3072)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1155, file: !130, line: 871, baseType: !55, size: 64, offset: 3136)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1155, file: !130, line: 871, baseType: !55, size: 64, offset: 3200)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1155, file: !130, line: 873, baseType: !1239, size: 3328, offset: 3264)
!1239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 3328, elements: !1240)
!1240 = !{!1241}
!1241 = !DISubrange(count: 52)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1155, file: !130, line: 875, baseType: !1243, size: 1280, offset: 6592)
!1243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1244, size: 1280, elements: !824)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1245, line: 22, size: 320, elements: !1246)
!1245 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1246 = !{!1247, !1248, !1249, !1250}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1244, file: !1245, line: 23, baseType: !768, size: 32)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1244, file: !1245, line: 24, baseType: !760, size: 64, offset: 64)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1244, file: !1245, line: 26, baseType: !113, size: 128, offset: 128)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1244, file: !1245, line: 28, baseType: !1251, size: 64, offset: 256)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !100, line: 20, baseType: !1253)
!1253 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !102, line: 26, baseType: !38)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1155, file: !130, line: 877, baseType: !1255, size: 64, offset: 7872)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !130, line: 877, flags: DIFlagFwdDecl)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1155, file: !130, line: 880, baseType: !1258, size: 1088, offset: 7936)
!1258 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1259, line: 72, baseType: !1260)
!1259 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1259, line: 23, size: 1088, elements: !1261)
!1261 = !{!1262, !1263, !1264, !1265, !1266, !1269, !1270, !1271, !1272, !1299, !1300, !1301}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1260, file: !1259, line: 28, baseType: !585, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1260, file: !1259, line: 38, baseType: !756, size: 64, offset: 64)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1260, file: !1259, line: 40, baseType: !55, size: 64, offset: 128)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1260, file: !1259, line: 43, baseType: !1206, size: 320, offset: 192)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1260, file: !1259, line: 44, baseType: !1267, size: 64, offset: 512)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1259, line: 44, flags: DIFlagFwdDecl)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1260, file: !1259, line: 48, baseType: !55, size: 64, offset: 576)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1260, file: !1259, line: 59, baseType: !763, size: 256, offset: 640)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1260, file: !1259, line: 60, baseType: !36, size: 64, offset: 896)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1260, file: !1259, line: 61, baseType: !1273, size: 64, offset: 960)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1275)
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1276, line: 13, size: 1216, elements: !1277)
!1276 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1277 = !{!1278, !1279, !1280, !1281, !1282, !1283, !1284, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1275, file: !1276, line: 14, baseType: !36, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1275, file: !1276, line: 15, baseType: !55, size: 64, offset: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1275, file: !1276, line: 17, baseType: !55, size: 64, offset: 128)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1275, file: !1276, line: 17, baseType: !55, size: 64, offset: 192)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1275, file: !1276, line: 18, baseType: !55, size: 64, offset: 256)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1275, file: !1276, line: 18, baseType: !55, size: 64, offset: 320)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1275, file: !1276, line: 19, baseType: !1285, size: 64, offset: 384)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1275, file: !1276, line: 21, baseType: !473, size: 64, offset: 448)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1275, file: !1276, line: 23, baseType: !473, size: 64, offset: 512)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1275, file: !1276, line: 24, baseType: !473, size: 64, offset: 576)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1275, file: !1276, line: 25, baseType: !473, size: 64, offset: 640)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1275, file: !1276, line: 26, baseType: !473, size: 64, offset: 704)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1275, file: !1276, line: 27, baseType: !473, size: 64, offset: 768)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1275, file: !1276, line: 28, baseType: !473, size: 64, offset: 832)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1275, file: !1276, line: 29, baseType: !473, size: 64, offset: 896)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1275, file: !1276, line: 30, baseType: !473, size: 64, offset: 960)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1275, file: !1276, line: 31, baseType: !473, size: 64, offset: 1024)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1275, file: !1276, line: 32, baseType: !473, size: 64, offset: 1088)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1275, file: !1276, line: 33, baseType: !473, size: 64, offset: 1152)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1260, file: !1259, line: 63, baseType: !65, size: 32, offset: 1024)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1260, file: !1259, line: 69, baseType: !109, size: 16, offset: 1056)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1260, file: !1259, line: 70, baseType: !1302, size: 16, offset: 1072)
!1302 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !100, line: 18, baseType: !1303)
!1303 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !102, line: 23, baseType: !1304)
!1304 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1155, file: !130, line: 882, baseType: !55, size: 64, offset: 9024)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1155, file: !130, line: 885, baseType: !75, size: 32, offset: 9088)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1155, file: !130, line: 886, baseType: !1308, size: 64, offset: 9152)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !130, line: 732, flags: DIFlagFwdDecl)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1155, file: !130, line: 901, baseType: !1311, size: 64, offset: 9216)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1313, line: 68, size: 4800, elements: !1314)
!1313 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!1314 = !{!1315, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1354, !1355, !1358, !1359, !1469, !1470, !1482, !1552, !1553, !1567, !1569}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !1312, file: !1313, line: 69, baseType: !1316, size: 576)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !1313, line: 23, size: 576, elements: !1317)
!1317 = !{!1318, !1319}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !1316, file: !1313, line: 24, baseType: !581, size: 32)
!1319 = !DIDerivedType(tag: DW_TAG_member, scope: !1316, file: !1313, line: 25, baseType: !1320, size: 512, offset: 64)
!1320 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1316, file: !1313, line: 25, size: 512, elements: !1321)
!1321 = !{!1322, !1331}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !1320, file: !1313, line: 26, baseType: !1323, size: 480)
!1323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1324, size: 480, elements: !1329)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !1313, line: 17, size: 96, elements: !1325)
!1325 = !{!1326, !1327, !1328}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1324, file: !1313, line: 18, baseType: !581, size: 32)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !1324, file: !1313, line: 19, baseType: !581, size: 32, offset: 32)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1324, file: !1313, line: 20, baseType: !581, size: 32, offset: 64)
!1329 = !{!1330}
!1330 = !DISubrange(count: 5)
!1331 = !DIDerivedType(tag: DW_TAG_member, scope: !1320, file: !1313, line: 27, baseType: !1332, size: 128)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1320, file: !1313, line: 27, size: 128, elements: !1333)
!1333 = !{!1334, !1336}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !1332, file: !1313, line: 28, baseType: !1335, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !1332, file: !1313, line: 29, baseType: !1335, size: 64, offset: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !1312, file: !1313, line: 70, baseType: !1316, size: 576, offset: 576)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !1312, file: !1313, line: 71, baseType: !1316, size: 576, offset: 1152)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1312, file: !1313, line: 72, baseType: !1311, size: 64, offset: 1728)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1312, file: !1313, line: 73, baseType: !38, size: 32, offset: 1792)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1312, file: !1313, line: 74, baseType: !518, size: 32, offset: 1824)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !1312, file: !1313, line: 75, baseType: !527, size: 32, offset: 1856)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1312, file: !1313, line: 76, baseType: !1344, size: 192, offset: 1920)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1345, line: 9, size: 192, elements: !1346)
!1345 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!1346 = !{!1347, !1348, !1352, !1353}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1344, file: !1345, line: 10, baseType: !754, size: 64)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1344, file: !1345, line: 11, baseType: !1349, size: 64, offset: 64)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1351)
!1351 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1345, line: 7, flags: DIFlagFwdDecl)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1344, file: !1345, line: 12, baseType: !7, size: 32, offset: 128)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1344, file: !1345, line: 13, baseType: !806, size: 32, offset: 160)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1312, file: !1313, line: 77, baseType: !55, size: 64, offset: 2112)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !1312, file: !1313, line: 80, baseType: !1356, size: 8, offset: 2176)
!1356 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !41, line: 35, baseType: !1357)
!1357 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !1312, file: !1313, line: 88, baseType: !113, size: 128, offset: 2240)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !1312, file: !1313, line: 89, baseType: !1360, size: 64, offset: 2368)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1362, line: 195, size: 1728, elements: !1363)
!1362 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1363 = !{!1364, !1365, !1368, !1373, !1374, !1377, !1378, !1385, !1386, !1387, !1388, !1391, !1392, !1393, !1394, !1395, !1433, !1454}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1361, file: !1362, line: 196, baseType: !806, size: 32)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1361, file: !1362, line: 197, baseType: !1366, size: 32, offset: 32)
!1366 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1362, line: 28, baseType: !1367)
!1367 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !41, line: 104, baseType: !1252)
!1368 = !DIDerivedType(tag: DW_TAG_member, scope: !1361, file: !1362, line: 198, baseType: !1369, size: 192, offset: 64)
!1369 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1361, file: !1362, line: 198, size: 192, elements: !1370)
!1370 = !{!1371, !1372}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1369, file: !1362, line: 199, baseType: !113, size: 128)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1369, file: !1362, line: 200, baseType: !905, size: 192, align: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1361, file: !1362, line: 205, baseType: !1206, size: 320, offset: 256)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1361, file: !1362, line: 206, baseType: !1375, size: 64, offset: 576)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1362, line: 206, flags: DIFlagFwdDecl)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1361, file: !1362, line: 207, baseType: !36, size: 64, offset: 640)
!1378 = !DIDerivedType(tag: DW_TAG_member, scope: !1361, file: !1362, line: 208, baseType: !1379, size: 64, offset: 704)
!1379 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1361, file: !1362, line: 208, size: 64, elements: !1380)
!1380 = !{!1381, !1384}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1379, file: !1362, line: 209, baseType: !1382, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1383, line: 8, baseType: !761)
!1383 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1379, file: !1362, line: 210, baseType: !1382, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1361, file: !1362, line: 212, baseType: !1382, size: 64, offset: 768)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1361, file: !1362, line: 213, baseType: !518, size: 32, offset: 832)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1361, file: !1362, line: 214, baseType: !527, size: 32, offset: 864)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1361, file: !1362, line: 215, baseType: !1389, size: 32, offset: 896)
!1389 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1362, line: 31, baseType: !1390)
!1390 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !41, line: 110, baseType: !581)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1361, file: !1362, line: 216, baseType: !42, size: 16, offset: 928)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1361, file: !1362, line: 217, baseType: !42, size: 16, offset: 944)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1361, file: !1362, line: 221, baseType: !1304, size: 16, offset: 960)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1361, file: !1362, line: 228, baseType: !55, size: 64, offset: 1024)
!1395 = !DIDerivedType(tag: DW_TAG_member, scope: !1361, file: !1362, line: 245, baseType: !1396, size: 320, offset: 1088)
!1396 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1361, file: !1362, line: 245, size: 320, elements: !1397)
!1397 = !{!1398, !1425}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1396, file: !1362, line: 246, baseType: !1399, size: 320)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1362, line: 114, size: 320, elements: !1400)
!1400 = !{!1401, !1402, !1414, !1417, !1424}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1399, file: !1362, line: 116, baseType: !55, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, scope: !1399, file: !1362, line: 117, baseType: !1403, size: 64, offset: 64)
!1403 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1399, file: !1362, line: 117, size: 64, elements: !1404)
!1404 = !{!1405, !1413}
!1405 = !DIDerivedType(tag: DW_TAG_member, scope: !1403, file: !1362, line: 118, baseType: !1406, size: 64)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1403, file: !1362, line: 118, size: 64, elements: !1407)
!1407 = !{!1408, !1409}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1406, file: !1362, line: 120, baseType: !109, size: 16)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1406, file: !1362, line: 121, baseType: !1410, size: 48, offset: 16)
!1410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 48, elements: !1411)
!1411 = !{!1412}
!1412 = !DISubrange(count: 6)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1403, file: !1362, line: 127, baseType: !55, size: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1399, file: !1362, line: 129, baseType: !1415, size: 64, offset: 128)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1362, line: 102, flags: DIFlagFwdDecl)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1399, file: !1362, line: 130, baseType: !1418, size: 64, offset: 192)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1362, line: 108, size: 192, elements: !1420)
!1420 = !{!1421, !1422, !1423}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1419, file: !1362, line: 109, baseType: !741, size: 128, align: 64)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1419, file: !1362, line: 110, baseType: !806, size: 32, offset: 128)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1419, file: !1362, line: 111, baseType: !1356, size: 8, offset: 160)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1399, file: !1362, line: 131, baseType: !32, size: 64, offset: 256)
!1425 = !DIDerivedType(tag: DW_TAG_member, scope: !1396, file: !1362, line: 247, baseType: !1426, size: 320)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1396, file: !1362, line: 247, size: 320, elements: !1427)
!1427 = !{!1428, !1429, !1430, !1431, !1432}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1426, file: !1362, line: 248, baseType: !55, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1426, file: !1362, line: 249, baseType: !55, size: 64, offset: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1426, file: !1362, line: 250, baseType: !1415, size: 64, offset: 128)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1426, file: !1362, line: 251, baseType: !1418, size: 64, offset: 192)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1426, file: !1362, line: 252, baseType: !438, size: 64, offset: 256)
!1433 = !DIDerivedType(tag: DW_TAG_member, scope: !1361, file: !1362, line: 260, baseType: !1434, size: 256, offset: 1408)
!1434 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1361, file: !1362, line: 260, size: 256, elements: !1435)
!1435 = !{!1436, !1442}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1434, file: !1362, line: 261, baseType: !1437, size: 256)
!1437 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1362, line: 134, size: 256, elements: !1438)
!1438 = !{!1439, !1440}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1437, file: !1362, line: 135, baseType: !36, size: 64)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1437, file: !1362, line: 136, baseType: !1441, size: 256)
!1441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 256, elements: !824)
!1442 = !DIDerivedType(tag: DW_TAG_member, scope: !1434, file: !1362, line: 262, baseType: !1443, size: 256)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1434, file: !1362, line: 262, size: 256, elements: !1444)
!1444 = !{!1445, !1446}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1443, file: !1362, line: 264, baseType: !113, size: 128)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1443, file: !1362, line: 265, baseType: !1447, size: 128, offset: 128)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1448, line: 22, size: 128, elements: !1449)
!1448 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1449 = !{!1450, !1453}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1447, file: !1448, line: 23, baseType: !1451, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1448, line: 23, flags: DIFlagFwdDecl)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1447, file: !1448, line: 24, baseType: !55, size: 64, offset: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1361, file: !1362, line: 280, baseType: !1455, size: 64, offset: 1664)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1362, line: 176, size: 192, elements: !1457)
!1457 = !{!1458, !1467, !1468}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1456, file: !1362, line: 177, baseType: !1459, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1362, line: 171, baseType: !1460)
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1461 = !DISubroutineType(types: !1462)
!1462 = !{!38, !1360, !1463, !1465, !1360}
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1416)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1437)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1456, file: !1362, line: 178, baseType: !1360, size: 64, offset: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1456, file: !1362, line: 179, baseType: !1415, size: 64, offset: 128)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !1312, file: !1313, line: 90, baseType: !1206, size: 320, offset: 2432)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1312, file: !1313, line: 97, baseType: !1471, size: 256, offset: 2752)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1472, line: 98, size: 256, elements: !1473)
!1472 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1473 = !{!1474, !1475, !1476}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1471, file: !1472, line: 99, baseType: !754, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1471, file: !1472, line: 100, baseType: !113, size: 128, offset: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1471, file: !1472, line: 101, baseType: !1477, size: 64, offset: 192)
!1477 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1472, line: 21, baseType: !1478)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{null, !1481}
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1312, file: !1313, line: 99, baseType: !1483, size: 768, offset: 3008)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !28, line: 199, size: 768, elements: !1484)
!1484 = !{!1485, !1490}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !1483, file: !28, line: 200, baseType: !1486, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = !DISubroutineType(types: !1488)
!1488 = !{!38, !1489}
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1483, file: !28, line: 201, baseType: !1491, size: 704, offset: 64)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !28, line: 193, size: 704, elements: !1492)
!1492 = !{!1493, !1551}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1491, file: !28, line: 195, baseType: !1494, size: 640)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !28, line: 173, size: 640, elements: !1495)
!1495 = !{!1496, !1508, !1520, !1521, !1541, !1542, !1544, !1550}
!1496 = !DIDerivedType(tag: DW_TAG_member, scope: !1494, file: !28, line: 174, baseType: !1497, size: 192)
!1497 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1494, file: !28, line: 174, size: 192, elements: !1498)
!1498 = !{!1499, !1507}
!1499 = !DIDerivedType(tag: DW_TAG_member, scope: !1497, file: !28, line: 175, baseType: !1500, size: 192)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1497, file: !28, line: 175, size: 192, elements: !1501)
!1501 = !{!1502, !1503, !1504, !1505, !1506}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1500, file: !28, line: 176, baseType: !49, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1500, file: !28, line: 177, baseType: !38, size: 32, offset: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1500, file: !28, line: 178, baseType: !38, size: 32, offset: 96)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1500, file: !28, line: 179, baseType: !38, size: 32, offset: 128)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1500, file: !28, line: 180, baseType: !38, size: 32, offset: 160)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1497, file: !28, line: 182, baseType: !741, size: 128, align: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1494, file: !28, line: 184, baseType: !1509, size: 64, offset: 192)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1511, line: 26, size: 256, elements: !1512)
!1511 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1512 = !{!1513, !1514}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1510, file: !1511, line: 27, baseType: !7, size: 32)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1510, file: !1511, line: 28, baseType: !1515, size: 192, offset: 64)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1516, line: 43, size: 192, elements: !1517)
!1516 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1517 = !{!1518, !1519}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1515, file: !1516, line: 44, baseType: !768, size: 32)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1515, file: !1516, line: 45, baseType: !113, size: 128, offset: 64)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1494, file: !28, line: 185, baseType: !49, size: 64, offset: 256)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1494, file: !28, line: 186, baseType: !1522, size: 64, offset: 320)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !28, line: 204, size: 960, elements: !1524)
!1524 = !{!1525, !1526, !1530, !1537}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1523, file: !28, line: 205, baseType: !1483, size: 768)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1523, file: !28, line: 206, baseType: !1527, size: 64, offset: 768)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{!1489, !1522}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1523, file: !28, line: 207, baseType: !1531, size: 64, offset: 832)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DISubroutineType(types: !1533)
!1533 = !{null, !1534, !1535, !1536}
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1523, file: !28, line: 209, baseType: !1538, size: 64, offset: 896)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = !DISubroutineType(types: !1540)
!1540 = !{!38, !1534, !49}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1494, file: !28, line: 187, baseType: !1489, size: 64, offset: 384)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1494, file: !28, line: 188, baseType: !1543, size: 64, offset: 448)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1494, file: !28, line: 189, baseType: !1545, size: 64, offset: 512)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !28, line: 157, size: 256, elements: !1547)
!1547 = !{!1548, !1549}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1546, file: !28, line: 158, baseType: !905, size: 192, align: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1546, file: !28, line: 159, baseType: !1534, size: 64, offset: 192)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1494, file: !28, line: 190, baseType: !815, size: 64, offset: 576)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1491, file: !28, line: 196, baseType: !1037, size: 64, offset: 640)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !1312, file: !1313, line: 100, baseType: !1534, size: 64, offset: 3776)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1312, file: !1313, line: 102, baseType: !1554, size: 64, offset: 3840)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1313, line: 107, size: 1152, elements: !1556)
!1556 = !{!1557, !1558, !1559, !1560, !1561, !1565}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1555, file: !1313, line: 108, baseType: !819, size: 128)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1555, file: !1313, line: 109, baseType: !1311, size: 64, offset: 128)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1555, file: !1313, line: 110, baseType: !518, size: 32, offset: 192)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1555, file: !1313, line: 111, baseType: !65, size: 32, offset: 224)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1555, file: !1313, line: 112, baseType: !1562, size: 640, offset: 256)
!1562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !754, size: 640, elements: !1563)
!1563 = !{!1564}
!1564 = !DISubrange(count: 10)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1555, file: !1313, line: 113, baseType: !1566, size: 256, offset: 896)
!1566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !754, size: 256, elements: !824)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !1312, file: !1313, line: 103, baseType: !1568, size: 640, offset: 3904)
!1568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !473, size: 640, elements: !1563)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !1312, file: !1313, line: 104, baseType: !1570, size: 256, offset: 4544)
!1570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !473, size: 256, elements: !824)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1155, file: !130, line: 904, baseType: !728, size: 64, offset: 9280)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1155, file: !130, line: 906, baseType: !1573, size: 64, offset: 9344)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !130, line: 906, flags: DIFlagFwdDecl)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1155, file: !130, line: 930, baseType: !65, size: 32, offset: 9408)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1155, file: !130, line: 933, baseType: !65, size: 32, offset: 9440)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1155, file: !130, line: 935, baseType: !1578, size: 64, offset: 9472)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !169, line: 103, size: 64, elements: !1579)
!1579 = !{!1580}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1578, file: !169, line: 104, baseType: !1581, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !169, line: 101, flags: DIFlagFwdDecl)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1155, file: !130, line: 940, baseType: !754, size: 64, offset: 9536)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1155, file: !130, line: 942, baseType: !1471, size: 256, offset: 9600)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1152, file: !130, line: 986, baseType: !1586, offset: 10240)
!1586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, elements: !725)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !857, file: !858, line: 882, baseType: !1151, size: 64, offset: 9792)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !857, file: !858, line: 884, baseType: !38, size: 32, offset: 9856)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !857, file: !858, line: 885, baseType: !38, size: 32, offset: 9888)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !857, file: !858, line: 886, baseType: !38, size: 32, offset: 9920)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !857, file: !858, line: 888, baseType: !38, size: 32, offset: 9952)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !857, file: !858, line: 890, baseType: !55, size: 64, offset: 9984)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !857, file: !858, line: 893, baseType: !7, size: 32, offset: 10048)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !857, file: !858, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !857, file: !858, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !857, file: !858, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !857, file: !858, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !857, file: !858, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !857, file: !858, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !857, file: !858, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !857, file: !858, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !857, file: !858, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !857, file: !858, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !857, file: !858, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !857, file: !858, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !857, file: !858, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !857, file: !858, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !857, file: !858, line: 969, baseType: !55, size: 64, offset: 10176)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !857, file: !858, line: 971, baseType: !1610, size: 448, offset: 10240)
!1610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !124, line: 25, size: 448, elements: !1611)
!1611 = !{!1612, !1613, !1618}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1610, file: !124, line: 26, baseType: !55, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1610, file: !124, line: 27, baseType: !1614, size: 64, offset: 64)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!473, !1617}
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1618 = !DIDerivedType(tag: DW_TAG_member, scope: !1610, file: !124, line: 28, baseType: !1619, size: 320, offset: 128)
!1619 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1610, file: !124, line: 28, size: 320, elements: !1620)
!1620 = !{!1621, !1631, !1656}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1619, file: !124, line: 37, baseType: !1622, size: 320)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1619, file: !124, line: 30, size: 320, elements: !1623)
!1623 = !{!1624, !1626, !1627, !1628, !1629, !1630}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1622, file: !124, line: 31, baseType: !1625, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1622, file: !124, line: 32, baseType: !581, size: 32, offset: 64)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1622, file: !124, line: 33, baseType: !581, size: 32, offset: 96)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1622, file: !124, line: 34, baseType: !581, size: 32, offset: 128)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1622, file: !124, line: 35, baseType: !585, size: 64, offset: 192)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1622, file: !124, line: 36, baseType: !1625, size: 64, offset: 256)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1619, file: !124, line: 47, baseType: !1632, size: 192)
!1632 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1619, file: !124, line: 39, size: 192, elements: !1633)
!1633 = !{!1634, !1635, !1636, !1655}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1632, file: !124, line: 40, baseType: !1022, size: 32)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1632, file: !124, line: 41, baseType: !123, size: 32, offset: 32)
!1636 = !DIDerivedType(tag: DW_TAG_member, scope: !1632, file: !124, line: 42, baseType: !1637, size: 64, offset: 64)
!1637 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1632, file: !124, line: 42, size: 64, elements: !1638)
!1638 = !{!1639, !1647}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1637, file: !124, line: 43, baseType: !1640, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1642, line: 7, size: 128, elements: !1643)
!1642 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1643 = !{!1644, !1646}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1641, file: !1642, line: 8, baseType: !1645, size: 64)
!1645 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !53, line: 93, baseType: !59)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1641, file: !1642, line: 9, baseType: !59, size: 64, offset: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1637, file: !124, line: 44, baseType: !1648, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1650, line: 7, size: 64, elements: !1651)
!1650 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1651 = !{!1652, !1654}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1649, file: !1650, line: 8, baseType: !1653, size: 32)
!1653 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1650, line: 5, baseType: !1252)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1649, file: !1650, line: 9, baseType: !1252, size: 32, offset: 32)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1632, file: !124, line: 46, baseType: !585, size: 64, offset: 128)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1619, file: !124, line: 55, baseType: !1657, size: 256)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1619, file: !124, line: 49, size: 256, elements: !1658)
!1658 = !{!1659, !1667, !1668, !1669, !1670}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1657, file: !124, line: 50, baseType: !1660, size: 64)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1662, line: 36, size: 64, elements: !1663)
!1662 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!1663 = !{!1664, !1665, !1666}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1661, file: !1662, line: 37, baseType: !38, size: 32)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1661, file: !1662, line: 38, baseType: !1304, size: 16, offset: 32)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1661, file: !1662, line: 39, baseType: !1304, size: 16, offset: 48)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1657, file: !124, line: 51, baseType: !38, size: 32, offset: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1657, file: !124, line: 52, baseType: !38, size: 32, offset: 96)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1657, file: !124, line: 53, baseType: !55, size: 64, offset: 128)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1657, file: !124, line: 54, baseType: !55, size: 64, offset: 192)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !857, file: !858, line: 973, baseType: !1672, size: 32, offset: 10688)
!1672 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !41, line: 27, baseType: !1673)
!1673 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !53, line: 28, baseType: !38)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !857, file: !858, line: 974, baseType: !1672, size: 32, offset: 10720)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !857, file: !858, line: 978, baseType: !55, size: 64, offset: 10752)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !857, file: !858, line: 987, baseType: !856, size: 64, offset: 10816)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !857, file: !858, line: 990, baseType: !856, size: 64, offset: 10880)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !857, file: !858, line: 995, baseType: !113, size: 128, offset: 10944)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !857, file: !858, line: 996, baseType: !113, size: 128, offset: 11072)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !857, file: !858, line: 997, baseType: !856, size: 64, offset: 11200)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !857, file: !858, line: 1005, baseType: !113, size: 128, offset: 11264)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !857, file: !858, line: 1006, baseType: !113, size: 128, offset: 11392)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !857, file: !858, line: 1009, baseType: !802, size: 64, offset: 11520)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !857, file: !858, line: 1010, baseType: !1685, size: 512, offset: 11584)
!1685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !819, size: 512, elements: !824)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !857, file: !858, line: 1011, baseType: !113, size: 128, offset: 12096)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !857, file: !858, line: 1012, baseType: !113, size: 128, offset: 12224)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !857, file: !858, line: 1014, baseType: !1509, size: 64, offset: 12352)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !857, file: !858, line: 1017, baseType: !1690, size: 64, offset: 12416)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !857, file: !858, line: 1020, baseType: !1690, size: 64, offset: 12480)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !857, file: !858, line: 1023, baseType: !36, size: 64, offset: 12544)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !857, file: !858, line: 1025, baseType: !585, size: 64, offset: 12608)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !857, file: !858, line: 1026, baseType: !585, size: 64, offset: 12672)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !857, file: !858, line: 1031, baseType: !585, size: 64, offset: 12736)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !857, file: !858, line: 1032, baseType: !1697, size: 192, offset: 12800)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !858, line: 324, size: 192, elements: !1698)
!1698 = !{!1699, !1700, !1701}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1697, file: !858, line: 326, baseType: !585, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1697, file: !858, line: 327, baseType: !585, size: 64, offset: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1697, file: !858, line: 328, baseType: !768, size: 32, offset: 128)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !857, file: !858, line: 1041, baseType: !55, size: 64, offset: 12992)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !857, file: !858, line: 1042, baseType: !55, size: 64, offset: 13056)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !857, file: !858, line: 1045, baseType: !585, size: 64, offset: 13120)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !857, file: !858, line: 1048, baseType: !585, size: 64, offset: 13184)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !857, file: !858, line: 1051, baseType: !55, size: 64, offset: 13248)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !857, file: !858, line: 1052, baseType: !55, size: 64, offset: 13312)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !857, file: !858, line: 1055, baseType: !1709, size: 640, offset: 13376)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1710, line: 132, size: 640, elements: !1711)
!1710 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1711 = !{!1712, !1718, !1719}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1709, file: !1710, line: 133, baseType: !1713, size: 576)
!1713 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1714, size: 576, elements: !439)
!1714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1710, line: 117, size: 192, elements: !1715)
!1715 = !{!1716, !1717}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1714, file: !1710, line: 118, baseType: !585, size: 64)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1714, file: !1710, line: 119, baseType: !1031, size: 128, offset: 64)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1709, file: !1710, line: 134, baseType: !7, size: 32, offset: 576)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1709, file: !1710, line: 135, baseType: !7, size: 32, offset: 608)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !857, file: !858, line: 1058, baseType: !1721, size: 448, offset: 14016)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1710, line: 144, size: 448, elements: !1722)
!1722 = !{!1723, !1724, !1725}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1721, file: !1710, line: 145, baseType: !741, size: 128, align: 64)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1721, file: !1710, line: 146, baseType: !763, size: 256, offset: 128)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1721, file: !1710, line: 147, baseType: !7, size: 32, offset: 384)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !857, file: !858, line: 1064, baseType: !1727, size: 64, offset: 14464)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1729)
!1729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1730, line: 110, size: 1472, elements: !1731)
!1730 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1731 = !{!1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1781, !1782, !1783, !1791}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1729, file: !1730, line: 111, baseType: !754, size: 64)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1729, file: !1730, line: 112, baseType: !518, size: 32, offset: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1729, file: !1730, line: 113, baseType: !527, size: 32, offset: 96)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1729, file: !1730, line: 114, baseType: !518, size: 32, offset: 128)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1729, file: !1730, line: 115, baseType: !527, size: 32, offset: 160)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1729, file: !1730, line: 116, baseType: !518, size: 32, offset: 192)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1729, file: !1730, line: 117, baseType: !527, size: 32, offset: 224)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1729, file: !1730, line: 118, baseType: !518, size: 32, offset: 256)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1729, file: !1730, line: 119, baseType: !527, size: 32, offset: 288)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1729, file: !1730, line: 120, baseType: !7, size: 32, offset: 320)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1729, file: !1730, line: 121, baseType: !1743, size: 64, offset: 384)
!1743 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1744, line: 24, baseType: !1745)
!1744 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1745 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1744, line: 24, size: 64, elements: !1746)
!1746 = !{!1747}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1745, file: !1744, line: 24, baseType: !585, size: 64)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1729, file: !1730, line: 122, baseType: !1743, size: 64, offset: 448)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1729, file: !1730, line: 123, baseType: !1743, size: 64, offset: 512)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1729, file: !1730, line: 124, baseType: !1743, size: 64, offset: 576)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1729, file: !1730, line: 125, baseType: !1743, size: 64, offset: 640)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1729, file: !1730, line: 127, baseType: !103, size: 8, offset: 704)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1729, file: !1730, line: 129, baseType: !1360, size: 64, offset: 768)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1729, file: !1730, line: 130, baseType: !1360, size: 64, offset: 832)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1729, file: !1730, line: 131, baseType: !1360, size: 64, offset: 896)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1729, file: !1730, line: 132, baseType: !1360, size: 64, offset: 960)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1729, file: !1730, line: 135, baseType: !36, size: 64, offset: 1024)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1729, file: !1730, line: 137, baseType: !1759, size: 64, offset: 1088)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1761, line: 14, size: 1088, elements: !1762)
!1761 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1762 = !{!1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1760, file: !1761, line: 15, baseType: !806, size: 32)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1760, file: !1761, line: 17, baseType: !1244, size: 320, offset: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1760, file: !1761, line: 19, baseType: !55, size: 64, offset: 384)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1760, file: !1761, line: 20, baseType: !754, size: 64, offset: 448)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1760, file: !1761, line: 23, baseType: !819, size: 128, offset: 512)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1760, file: !1761, line: 24, baseType: !518, size: 32, offset: 640)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1760, file: !1761, line: 29, baseType: !754, size: 64, offset: 704)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1760, file: !1761, line: 36, baseType: !1771, size: 320, offset: 768)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1772, line: 15, size: 320, elements: !1773)
!1772 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1773 = !{!1774, !1775, !1776, !1777, !1778, !1779, !1780}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1771, file: !1772, line: 16, baseType: !768, size: 32)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1771, file: !1772, line: 18, baseType: !38, size: 32, offset: 32)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1771, file: !1772, line: 19, baseType: !38, size: 32, offset: 64)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1771, file: !1772, line: 20, baseType: !38, size: 32, offset: 96)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1771, file: !1772, line: 21, baseType: !38, size: 32, offset: 128)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1771, file: !1772, line: 22, baseType: !55, size: 64, offset: 192)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1771, file: !1772, line: 23, baseType: !55, size: 64, offset: 256)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1729, file: !1730, line: 138, baseType: !1311, size: 64, offset: 1152)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1729, file: !1730, line: 139, baseType: !1554, size: 64, offset: 1216)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1729, file: !1730, line: 140, baseType: !1784, size: 64, offset: 1280)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1730, line: 25, size: 64, elements: !1786)
!1786 = !{!1787, !1788, !1789}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1785, file: !1730, line: 26, baseType: !65, size: 32)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1785, file: !1730, line: 27, baseType: !38, size: 32, offset: 32)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1785, file: !1730, line: 28, baseType: !1790, offset: 64)
!1790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !527, elements: !725)
!1791 = !DIDerivedType(tag: DW_TAG_member, scope: !1729, file: !1730, line: 142, baseType: !1792, size: 128, offset: 1344)
!1792 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1729, file: !1730, line: 142, size: 128, elements: !1793)
!1793 = !{!1794, !1795}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1792, file: !1730, line: 143, baseType: !38, size: 32)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1792, file: !1730, line: 144, baseType: !741, size: 128, align: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !857, file: !858, line: 1067, baseType: !1727, size: 64, offset: 14528)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !857, file: !858, line: 1070, baseType: !1727, size: 64, offset: 14592)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !857, file: !858, line: 1074, baseType: !1360, size: 64, offset: 14656)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !857, file: !858, line: 1084, baseType: !1800, size: 128, offset: 14720)
!1800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 128, elements: !1801)
!1801 = !{!1802}
!1802 = !DISubrange(count: 16)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !857, file: !858, line: 1086, baseType: !1804, size: 64, offset: 14848)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !858, line: 55, flags: DIFlagFwdDecl)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !857, file: !858, line: 1089, baseType: !1807, size: 64, offset: 14912)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1808, line: 12, size: 64, elements: !1809)
!1808 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1809 = !{!1810}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1807, file: !1808, line: 13, baseType: !1811, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1808, line: 8, flags: DIFlagFwdDecl)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !857, file: !858, line: 1090, baseType: !1814, size: 128, offset: 14976)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1815, line: 13, size: 128, elements: !1816)
!1815 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1816 = !{!1817}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1814, file: !1815, line: 14, baseType: !113, size: 128)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !857, file: !858, line: 1097, baseType: !1819, size: 64, offset: 15104)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !858, line: 50, flags: DIFlagFwdDecl)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !857, file: !858, line: 1100, baseType: !1822, size: 64, offset: 15168)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !858, line: 1100, flags: DIFlagFwdDecl)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !857, file: !858, line: 1103, baseType: !1825, size: 64, offset: 15232)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !858, line: 53, flags: DIFlagFwdDecl)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !857, file: !858, line: 1107, baseType: !1828, size: 64, offset: 15296)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1830, line: 31, size: 576, elements: !1831)
!1830 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!1831 = !{!1832, !1833, !1836, !1839, !1842, !1843, !1846, !1849, !1850}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1829, file: !1830, line: 32, baseType: !806, size: 32)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !1829, file: !1830, line: 33, baseType: !1834, size: 64, offset: 64)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !1830, line: 9, flags: DIFlagFwdDecl)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !1829, file: !1830, line: 34, baseType: !1837, size: 64, offset: 128)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !1830, line: 10, flags: DIFlagFwdDecl)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !1829, file: !1830, line: 35, baseType: !1840, size: 64, offset: 192)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !1830, line: 8, flags: DIFlagFwdDecl)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !1829, file: !1830, line: 36, baseType: !835, size: 64, offset: 256)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !1829, file: !1830, line: 37, baseType: !1844, size: 64, offset: 320)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1362, line: 34, flags: DIFlagFwdDecl)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !1829, file: !1830, line: 38, baseType: !1847, size: 64, offset: 384)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !1830, line: 38, flags: DIFlagFwdDecl)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !1829, file: !1830, line: 39, baseType: !1847, size: 64, offset: 448)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !1829, file: !1830, line: 40, baseType: !1851, size: 64, offset: 512)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !1853, line: 771, size: 384, elements: !1854)
!1853 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!1854 = !{!1855, !1856, !1857, !1858}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1852, file: !1853, line: 772, baseType: !1344, size: 192)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1852, file: !1853, line: 773, baseType: !1311, size: 64, offset: 192)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1852, file: !1853, line: 774, baseType: !1554, size: 64, offset: 256)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !1852, file: !1853, line: 775, baseType: !1859, size: 64, offset: 320)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1861, line: 209, size: 4736, elements: !1862)
!1861 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!1862 = !{!1863, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !1860, file: !1861, line: 215, baseType: !1864, size: 896)
!1864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1865, size: 896, elements: !2370)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !1861, line: 152, size: 1600, elements: !1867)
!1867 = !{!1868, !2421, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2544}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !1866, file: !1861, line: 154, baseType: !1869, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !1861, line: 389, size: 7872, elements: !1871)
!1871 = !{!1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !2321, !2338, !2339, !2343, !2344, !2345, !2346, !2347, !2348, !2367, !2368, !2372, !2373, !2374, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2408, !2411, !2412, !2419}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !1870, file: !1861, line: 391, baseType: !1866, size: 1600)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1870, file: !1861, line: 393, baseType: !55, size: 64, offset: 1600)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1870, file: !1861, line: 401, baseType: !38, size: 32, offset: 1664)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !1870, file: !1861, line: 404, baseType: !38, size: 32, offset: 1696)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !1870, file: !1861, line: 417, baseType: !38, size: 32, offset: 1728)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !1870, file: !1861, line: 418, baseType: !38, size: 32, offset: 1760)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !1870, file: !1861, line: 419, baseType: !38, size: 32, offset: 1792)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !1870, file: !1861, line: 432, baseType: !38, size: 32, offset: 1824)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !1870, file: !1861, line: 433, baseType: !38, size: 32, offset: 1856)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !1870, file: !1861, line: 434, baseType: !38, size: 32, offset: 1888)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !1870, file: !1861, line: 436, baseType: !38, size: 32, offset: 1920)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !1870, file: !1861, line: 439, baseType: !7, size: 32, offset: 1952)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1870, file: !1861, line: 441, baseType: !1885, size: 64, offset: 1984)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1887, line: 190, size: 1152, elements: !1888)
!1887 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1888 = !{!1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !2313, !2314, !2315, !2316, !2317, !2320}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1886, file: !1887, line: 191, baseType: !65, size: 32)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1886, file: !1887, line: 192, baseType: !65, size: 32, offset: 32)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1886, file: !1887, line: 202, baseType: !1885, size: 64, offset: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1886, file: !1887, line: 203, baseType: !32, size: 64, offset: 128)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1886, file: !1887, line: 205, baseType: !905, size: 192, align: 64, offset: 192)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1886, file: !1887, line: 207, baseType: !1285, size: 64, offset: 384)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1886, file: !1887, line: 208, baseType: !7, size: 32, offset: 448)
!1896 = !DIDerivedType(tag: DW_TAG_member, scope: !1886, file: !1887, line: 209, baseType: !1897, size: 256, offset: 512)
!1897 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1886, file: !1887, line: 209, size: 256, elements: !1898)
!1898 = !{!1899, !1908, !1912}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1897, file: !1887, line: 210, baseType: !1900, size: 256)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1887, line: 153, size: 256, elements: !1901)
!1901 = !{!1902, !1903, !1904, !1907}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1900, file: !1887, line: 154, baseType: !55, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1900, file: !1887, line: 156, baseType: !1037, size: 64, offset: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1900, file: !1887, line: 162, baseType: !1905, size: 64, offset: 128)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1887, line: 162, flags: DIFlagFwdDecl)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1900, file: !1887, line: 167, baseType: !55, size: 64, offset: 192)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1897, file: !1887, line: 211, baseType: !1909, size: 64)
!1909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1887, line: 170, size: 64, elements: !1910)
!1910 = !{!1911}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1909, file: !1887, line: 171, baseType: !1885, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1897, file: !1887, line: 212, baseType: !1913, size: 256)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1887, line: 174, size: 256, elements: !1914)
!1914 = !{!1915, !2308, !2311, !2312}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1913, file: !1887, line: 175, baseType: !1916, size: 64)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1918)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1887, line: 271, size: 768, elements: !1919)
!1919 = !{!1920, !2272, !2276, !2277, !2278, !2279, !2280, !2284, !2285, !2286, !2287, !2304}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1918, file: !1887, line: 276, baseType: !1921, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{!38, !1924}
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1887, line: 251, size: 1216, elements: !1926)
!1926 = !{!1927, !1928, !1929, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1925, file: !1887, line: 253, baseType: !1885, size: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1925, file: !1887, line: 254, baseType: !728, size: 64, offset: 64)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1925, file: !1887, line: 255, baseType: !1930, size: 64, offset: 128)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1932, line: 17, size: 960, elements: !1933)
!1932 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1933 = !{!1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1963, !1964, !1967}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1931, file: !1932, line: 18, baseType: !438, size: 64)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1931, file: !1932, line: 19, baseType: !51, size: 64, offset: 64)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1931, file: !1932, line: 20, baseType: !51, size: 64, offset: 128)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1931, file: !1932, line: 21, baseType: !51, size: 64, offset: 192)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1931, file: !1932, line: 22, baseType: !51, size: 64, offset: 256)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1931, file: !1932, line: 23, baseType: !57, size: 64, offset: 320)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1931, file: !1932, line: 24, baseType: !57, size: 64, offset: 384)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1931, file: !1932, line: 25, baseType: !763, size: 256, offset: 448)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1931, file: !1932, line: 26, baseType: !1943, size: 64, offset: 704)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1945)
!1945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1932, line: 32, size: 256, elements: !1946)
!1946 = !{!1947, !1951, !1955, !1959}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1945, file: !1932, line: 33, baseType: !1948, size: 64)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{!36, !1930, !56}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1945, file: !1932, line: 34, baseType: !1952, size: 64, offset: 64)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{null, !1930, !36}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1945, file: !1932, line: 35, baseType: !1956, size: 64, offset: 128)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{!36, !1930, !36, !56}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1945, file: !1932, line: 36, baseType: !1960, size: 64, offset: 192)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{!38, !1930, !36}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1931, file: !1932, line: 27, baseType: !38, size: 32, offset: 768)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1931, file: !1932, line: 28, baseType: !1965, size: 64, offset: 832)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !729)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1931, file: !1932, line: 29, baseType: !36, size: 64, offset: 896)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1925, file: !1887, line: 256, baseType: !36, size: 64, offset: 192)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1925, file: !1887, line: 259, baseType: !763, size: 256, offset: 256)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1925, file: !1887, line: 260, baseType: !763, size: 256, offset: 512)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1925, file: !1887, line: 261, baseType: !38, size: 32, offset: 768)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1925, file: !1887, line: 262, baseType: !113, size: 128, offset: 832)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1925, file: !1887, line: 263, baseType: !438, size: 64, offset: 960)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1925, file: !1887, line: 265, baseType: !51, size: 64, offset: 1024)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1925, file: !1887, line: 266, baseType: !1356, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1925, file: !1887, line: 267, baseType: !1356, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1925, file: !1887, line: 268, baseType: !1978, size: 64, offset: 1152)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1980)
!1980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1981, line: 563, size: 1024, elements: !1982)
!1981 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1982 = !{!1983, !2048, !2049, !2053, !2057, !2061, !2238, !2242, !2246, !2250, !2251, !2252, !2256, !2260, !2264, !2268}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1980, file: !1981, line: 564, baseType: !1984, size: 64)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DISubroutineType(types: !1986)
!1986 = !{null, !1987}
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !130, line: 625, size: 1344, elements: !1989)
!1989 = !{!1990, !1999, !2000, !2006, !2013, !2014, !2019, !2020, !2025, !2026, !2038, !2039, !2040, !2041, !2042, !2043, !2046}
!1990 = !DIDerivedType(tag: DW_TAG_member, scope: !1988, file: !130, line: 628, baseType: !1991, size: 128)
!1991 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1988, file: !130, line: 628, size: 128, elements: !1992)
!1992 = !{!1993, !1998}
!1993 = !DIDerivedType(tag: DW_TAG_member, scope: !1991, file: !130, line: 629, baseType: !1994, size: 128)
!1994 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1991, file: !130, line: 629, size: 128, elements: !1995)
!1995 = !{!1996, !1997}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1994, file: !130, line: 631, baseType: !55, size: 64)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1994, file: !130, line: 632, baseType: !55, size: 64, offset: 64)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1991, file: !130, line: 635, baseType: !741, size: 128, align: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1988, file: !130, line: 639, baseType: !1151, size: 64, offset: 128)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1988, file: !130, line: 640, baseType: !2001, size: 64, offset: 192)
!2001 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1187, line: 297, baseType: !2002)
!2002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1187, line: 297, size: 64, elements: !2003)
!2003 = !{!2004}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2002, file: !1187, line: 297, baseType: !2005, size: 64)
!2005 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1192, line: 19, baseType: !55)
!2006 = !DIDerivedType(tag: DW_TAG_member, scope: !1988, file: !130, line: 646, baseType: !2007, size: 64, offset: 256)
!2007 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1988, file: !130, line: 646, size: 64, elements: !2008)
!2008 = !{!2009, !2012}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2007, file: !130, line: 647, baseType: !2010, size: 64)
!2010 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2011)
!2011 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !130, line: 542, baseType: !55)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2007, file: !130, line: 648, baseType: !2011, size: 64)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1988, file: !130, line: 666, baseType: !38, size: 32, offset: 320)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1988, file: !130, line: 667, baseType: !2015, size: 64, offset: 384)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !130, line: 579, size: 320, elements: !2017)
!2017 = !{!2018}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2016, file: !130, line: 580, baseType: !1206, size: 320)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1988, file: !130, line: 670, baseType: !1356, size: 8, offset: 448)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1988, file: !130, line: 681, baseType: !2021, size: 256, offset: 512)
!2021 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1988, file: !130, line: 678, size: 256, elements: !2022)
!2022 = !{!2023, !2024}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2021, file: !130, line: 679, baseType: !905, size: 192, align: 64)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2021, file: !130, line: 680, baseType: !55, size: 64, offset: 192)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1988, file: !130, line: 689, baseType: !113, size: 128, offset: 768)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1988, file: !130, line: 691, baseType: !2027, size: 64, offset: 896)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !2029, line: 31, size: 768, elements: !2030)
!2029 = !DIFile(filename: "./include/linux/rmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "424c17c81581cd4481af59c84df2437d")
!2030 = !{!2031, !2032, !2033, !2034, !2035, !2036, !2037}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2028, file: !2029, line: 32, baseType: !2027, size: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !2028, file: !2029, line: 33, baseType: !1206, size: 320, offset: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2028, file: !2029, line: 41, baseType: !65, size: 32, offset: 384)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "num_children", scope: !2028, file: !2029, line: 50, baseType: !55, size: 64, offset: 448)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "num_active_vmas", scope: !2028, file: !2029, line: 52, baseType: !55, size: 64, offset: 512)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2028, file: !2029, line: 54, baseType: !2027, size: 64, offset: 576)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2028, file: !2029, line: 66, baseType: !1034, size: 128, offset: 640)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1988, file: !130, line: 694, baseType: !1978, size: 64, offset: 960)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1988, file: !130, line: 697, baseType: !55, size: 64, offset: 1024)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1988, file: !130, line: 699, baseType: !728, size: 64, offset: 1088)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1988, file: !130, line: 700, baseType: !36, size: 64, offset: 1152)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1988, file: !130, line: 711, baseType: !754, size: 64, offset: 1216)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1988, file: !130, line: 717, baseType: !2044, size: 64, offset: 1280)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !130, line: 717, flags: DIFlagFwdDecl)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1988, file: !130, line: 722, baseType: !2047, offset: 1344)
!2047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !130, line: 570, elements: !1172)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1980, file: !1981, line: 569, baseType: !1984, size: 64, offset: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1980, file: !1981, line: 571, baseType: !2050, size: 64, offset: 128)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DISubroutineType(types: !2052)
!2052 = !{!38, !1987, !55}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1980, file: !1981, line: 572, baseType: !2054, size: 64, offset: 192)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = !DISubroutineType(types: !2056)
!2056 = !{!38, !1987}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1980, file: !1981, line: 578, baseType: !2058, size: 64, offset: 256)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DISubroutineType(types: !2060)
!2060 = !{!38, !1987, !55, !55, !55}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1980, file: !1981, line: 580, baseType: !2062, size: 64, offset: 320)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DISubroutineType(types: !2064)
!2064 = !{!2065, !2066}
!2065 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !130, line: 1184, baseType: !7)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1981, line: 512, size: 896, elements: !2068)
!2068 = !{!2069, !2077, !2078, !2085, !2092, !2102, !2231, !2232, !2234, !2236}
!2069 = !DIDerivedType(tag: DW_TAG_member, scope: !2067, file: !1981, line: 513, baseType: !2070, size: 320)
!2070 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2067, file: !1981, line: 513, size: 320, elements: !2071)
!2071 = !{!2072, !2073, !2074, !2075, !2076}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2070, file: !1981, line: 514, baseType: !1987, size: 64)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2070, file: !1981, line: 515, baseType: !849, size: 32, offset: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2070, file: !1981, line: 516, baseType: !55, size: 64, offset: 128)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2070, file: !1981, line: 517, baseType: !55, size: 64, offset: 192)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2070, file: !1981, line: 518, baseType: !55, size: 64, offset: 256)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2067, file: !1981, line: 520, baseType: !129, size: 32, offset: 320)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2067, file: !1981, line: 522, baseType: !2079, size: 64, offset: 384)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1192, line: 22, baseType: !2081)
!2081 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1192, line: 22, size: 64, elements: !2082)
!2082 = !{!2083}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2081, file: !1192, line: 22, baseType: !2084, size: 64)
!2084 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1192, line: 15, baseType: !55)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2067, file: !1981, line: 524, baseType: !2086, size: 64, offset: 448)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1187, line: 372, baseType: !2088)
!2088 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1187, line: 372, size: 64, elements: !2089)
!2089 = !{!2090}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2088, file: !1187, line: 372, baseType: !2091, size: 64)
!2091 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1192, line: 16, baseType: !55)
!2092 = !DIDerivedType(tag: DW_TAG_member, scope: !2067, file: !1981, line: 527, baseType: !2093, size: 64, offset: 512)
!2093 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2067, file: !1981, line: 527, size: 64, elements: !2094)
!2094 = !{!2095, !2101}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2093, file: !1981, line: 528, baseType: !2096, size: 64)
!2096 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1192, line: 21, baseType: !2097)
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1192, line: 21, size: 64, elements: !2098)
!2098 = !{!2099}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2097, file: !1192, line: 21, baseType: !2100, size: 64)
!2100 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1192, line: 14, baseType: !55)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2093, file: !1981, line: 529, baseType: !2080, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2067, file: !1981, line: 534, baseType: !2103, size: 64, offset: 576)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !130, line: 74, size: 512, align: 128, elements: !2105)
!2105 = !{!2106, !2107, !2225, !2230}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2104, file: !130, line: 75, baseType: !55, size: 64)
!2107 = !DIDerivedType(tag: DW_TAG_member, scope: !2104, file: !130, line: 83, baseType: !2108, size: 320, offset: 64)
!2108 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2104, file: !130, line: 83, size: 320, elements: !2109)
!2109 = !{!2110, !2131, !2145, !2149, !2224}
!2110 = !DIDerivedType(tag: DW_TAG_member, scope: !2108, file: !130, line: 84, baseType: !2111, size: 320)
!2111 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2108, file: !130, line: 84, size: 320, elements: !2112)
!2112 = !{!2113, !2124, !2125, !2130}
!2113 = !DIDerivedType(tag: DW_TAG_member, scope: !2111, file: !130, line: 90, baseType: !2114, size: 128)
!2114 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2111, file: !130, line: 90, size: 128, elements: !2115)
!2115 = !{!2116, !2117, !2122, !2123}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2114, file: !130, line: 91, baseType: !113, size: 128)
!2117 = !DIDerivedType(tag: DW_TAG_member, scope: !2114, file: !130, line: 94, baseType: !2118, size: 128)
!2118 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2114, file: !130, line: 94, size: 128, elements: !2119)
!2119 = !{!2120, !2121}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2118, file: !130, line: 96, baseType: !36, size: 64)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2118, file: !130, line: 98, baseType: !7, size: 32, offset: 64)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2114, file: !130, line: 102, baseType: !113, size: 128)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2114, file: !130, line: 103, baseType: !113, size: 128)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2111, file: !130, line: 106, baseType: !508, size: 64, offset: 128)
!2125 = !DIDerivedType(tag: DW_TAG_member, scope: !2111, file: !130, line: 107, baseType: !2126, size: 64, offset: 192)
!2126 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2111, file: !130, line: 107, size: 64, elements: !2127)
!2127 = !{!2128, !2129}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2126, file: !130, line: 108, baseType: !55, size: 64)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2126, file: !130, line: 109, baseType: !55, size: 64)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2111, file: !130, line: 117, baseType: !55, size: 64, offset: 256)
!2131 = !DIDerivedType(tag: DW_TAG_member, scope: !2108, file: !130, line: 119, baseType: !2132, size: 320)
!2132 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2108, file: !130, line: 119, size: 320, elements: !2133)
!2133 = !{!2134, !2135, !2138, !2139, !2140}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2132, file: !130, line: 124, baseType: !55, size: 64)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2132, file: !130, line: 125, baseType: !2136, size: 64, offset: 64)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !130, line: 125, flags: DIFlagFwdDecl)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2132, file: !130, line: 126, baseType: !55, size: 64, offset: 128)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2132, file: !130, line: 127, baseType: !55, size: 64, offset: 192)
!2140 = !DIDerivedType(tag: DW_TAG_member, scope: !2132, file: !130, line: 128, baseType: !2141, size: 64, offset: 256)
!2141 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2132, file: !130, line: 128, size: 64, elements: !2142)
!2142 = !{!2143, !2144}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2141, file: !130, line: 133, baseType: !55, size: 64)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2141, file: !130, line: 138, baseType: !754, size: 64)
!2145 = !DIDerivedType(tag: DW_TAG_member, scope: !2108, file: !130, line: 141, baseType: !2146, size: 64)
!2146 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2108, file: !130, line: 141, size: 64, elements: !2147)
!2147 = !{!2148}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2146, file: !130, line: 142, baseType: !55, size: 64)
!2149 = !DIDerivedType(tag: DW_TAG_member, scope: !2108, file: !130, line: 144, baseType: !2150, size: 128)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2108, file: !130, line: 144, size: 128, elements: !2151)
!2151 = !{!2152, !2223}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2150, file: !130, line: 146, baseType: !2153, size: 64)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !146, line: 126, size: 1216, elements: !2155)
!2155 = !{!2156, !2166, !2187, !2188, !2189, !2190, !2191, !2205, !2206, !2207}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2154, file: !146, line: 127, baseType: !2157, size: 384)
!2157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !146, line: 21, size: 384, elements: !2158)
!2158 = !{!2159, !2160, !2162, !2163, !2164, !2165}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2157, file: !146, line: 22, baseType: !55, size: 64)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2157, file: !146, line: 23, baseType: !2161, size: 64, offset: 64)
!2161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2157, file: !146, line: 24, baseType: !2161, size: 64, offset: 128)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2157, file: !146, line: 25, baseType: !55, size: 64, offset: 192)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2157, file: !146, line: 26, baseType: !55, size: 64, offset: 256)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2157, file: !146, line: 27, baseType: !55, size: 64, offset: 320)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2154, file: !146, line: 128, baseType: !2167, size: 128, offset: 384)
!2167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2168, line: 105, size: 128, elements: !2169)
!2168 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2169 = !{!2170, !2171}
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2167, file: !2168, line: 110, baseType: !55, size: 64)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2167, file: !2168, line: 118, baseType: !2172, size: 64, offset: 64)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2168, line: 95, size: 448, elements: !2174)
!2174 = !{!2175, !2176, !2182, !2183, !2184, !2185, !2186}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2173, file: !2168, line: 96, baseType: !754, size: 64)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2173, file: !2168, line: 97, baseType: !2177, size: 64, offset: 64)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2168, line: 60, baseType: !2179)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{null, !2181}
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2167, size: 64)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2173, file: !2168, line: 98, baseType: !2177, size: 64, offset: 128)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2173, file: !2168, line: 99, baseType: !1356, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2173, file: !2168, line: 100, baseType: !1356, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2173, file: !2168, line: 101, baseType: !741, size: 128, align: 64, offset: 256)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2173, file: !2168, line: 102, baseType: !2181, size: 64, offset: 384)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2154, file: !146, line: 129, baseType: !1510, size: 256, offset: 512)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2154, file: !146, line: 130, baseType: !145, size: 32, offset: 768)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2154, file: !146, line: 131, baseType: !7, size: 32, offset: 800)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2154, file: !146, line: 132, baseType: !55, size: 64, offset: 832)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2154, file: !146, line: 133, baseType: !2192, size: 64, offset: 896)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2194)
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !146, line: 77, size: 192, elements: !2195)
!2195 = !{!2196, !2200, !2201}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2194, file: !146, line: 83, baseType: !2197, size: 64)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = !DISubroutineType(types: !2199)
!2199 = !{null, !2103}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2194, file: !146, line: 89, baseType: !2062, size: 64, offset: 64)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2194, file: !146, line: 100, baseType: !2202, size: 64, offset: 128)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = !DISubroutineType(types: !2204)
!2204 = !{!38, !2153, !55, !55, !38}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2154, file: !146, line: 134, baseType: !36, size: 64, offset: 960)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2154, file: !146, line: 135, baseType: !38, size: 32, offset: 1024)
!2207 = !DIDerivedType(tag: DW_TAG_member, scope: !2154, file: !146, line: 136, baseType: !2208, size: 128, offset: 1088)
!2208 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2154, file: !146, line: 136, size: 128, elements: !2209)
!2209 = !{!2210, !2216}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2208, file: !146, line: 137, baseType: !2211, size: 128)
!2211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2212, line: 6, size: 128, elements: !2213)
!2212 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2213 = !{!2214, !2215}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2211, file: !2212, line: 7, baseType: !585, size: 64)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2211, file: !2212, line: 8, baseType: !585, size: 64, offset: 64)
!2216 = !DIDerivedType(tag: DW_TAG_member, scope: !2208, file: !146, line: 138, baseType: !2217)
!2217 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2208, file: !146, line: 138, elements: !2218)
!2218 = !{!2219, !2221}
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2217, file: !146, line: 138, baseType: !2220)
!2220 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2217, file: !146, line: 138, elements: !1172)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2217, file: !146, line: 138, baseType: !2222)
!2222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2211, elements: !725)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2150, file: !130, line: 147, baseType: !36, size: 64, offset: 64)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2108, file: !130, line: 161, baseType: !741, size: 128, align: 64)
!2225 = !DIDerivedType(tag: DW_TAG_member, scope: !2104, file: !130, line: 164, baseType: !2226, size: 32, offset: 384)
!2226 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2104, file: !130, line: 164, size: 32, elements: !2227)
!2227 = !{!2228, !2229}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2226, file: !130, line: 169, baseType: !65, size: 32)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2226, file: !130, line: 177, baseType: !7, size: 32)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2104, file: !130, line: 181, baseType: !65, size: 32, offset: 416)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2067, file: !1981, line: 535, baseType: !2103, size: 64, offset: 640)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2067, file: !1981, line: 541, baseType: !2233, size: 64, offset: 704)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2067, file: !1981, line: 545, baseType: !2235, size: 64, offset: 768)
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2067, file: !1981, line: 549, baseType: !2237, size: 64, offset: 832)
!2237 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1187, line: 520, baseType: !2103)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1980, file: !1981, line: 581, baseType: !2239, size: 64, offset: 384)
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2240 = !DISubroutineType(types: !2241)
!2241 = !{!2065, !2066, !7}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1980, file: !1981, line: 582, baseType: !2243, size: 64, offset: 448)
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = !DISubroutineType(types: !2245)
!2245 = !{!2065, !2066, !55, !55}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1980, file: !1981, line: 584, baseType: !2247, size: 64, offset: 512)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{!55, !1987}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1980, file: !1981, line: 588, baseType: !2062, size: 64, offset: 576)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1980, file: !1981, line: 591, baseType: !2062, size: 64, offset: 640)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1980, file: !1981, line: 597, baseType: !2253, size: 64, offset: 704)
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2254 = !DISubroutineType(types: !2255)
!2255 = !{!38, !1987, !55, !36, !38, !38}
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1980, file: !1981, line: 603, baseType: !2257, size: 64, offset: 768)
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2258 = !DISubroutineType(types: !2259)
!2259 = !{!32, !1987}
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1980, file: !1981, line: 613, baseType: !2261, size: 64, offset: 832)
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64)
!2262 = !DISubroutineType(types: !2263)
!2263 = !{!38, !1987, !2044}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1980, file: !1981, line: 625, baseType: !2265, size: 64, offset: 896)
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = !DISubroutineType(types: !2267)
!2267 = !{!2044, !1987, !55}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1980, file: !1981, line: 633, baseType: !2269, size: 64, offset: 960)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = !DISubroutineType(types: !2271)
!2271 = !{!2103, !1987, !55}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1918, file: !1887, line: 277, baseType: !2273, size: 64, offset: 64)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = !DISubroutineType(types: !2275)
!2275 = !{null, !1924}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1918, file: !1887, line: 290, baseType: !1960, size: 64, offset: 128)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1918, file: !1887, line: 292, baseType: !1948, size: 64, offset: 192)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1918, file: !1887, line: 293, baseType: !1956, size: 64, offset: 256)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1918, file: !1887, line: 294, baseType: !1952, size: 64, offset: 320)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1918, file: !1887, line: 296, baseType: !2281, size: 64, offset: 384)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = !DISubroutineType(types: !2283)
!2283 = !{!470, !1924, !438, !51, !57}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1918, file: !1887, line: 306, baseType: !51, size: 64, offset: 448)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1918, file: !1887, line: 313, baseType: !1356, size: 8, offset: 512)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1918, file: !1887, line: 314, baseType: !2281, size: 64, offset: 576)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1918, file: !1887, line: 317, baseType: !2288, size: 64, offset: 640)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = !DISubroutineType(types: !2290)
!2290 = !{!2291, !1924, !2293}
!2291 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2292, line: 59, baseType: !7)
!2292 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2295, line: 37, size: 128, elements: !2296)
!2295 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!2296 = !{!2297, !2303}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2294, file: !2295, line: 38, baseType: !2298, size: 64)
!2298 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2295, line: 31, baseType: !2299)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{null, !728, !2302, !2293}
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2294, file: !2295, line: 39, baseType: !2291, size: 32, offset: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1918, file: !1887, line: 320, baseType: !2305, size: 64, offset: 704)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = !DISubroutineType(types: !2307)
!2307 = !{!38, !1924, !1987}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1913, file: !1887, line: 176, baseType: !2309, size: 64, offset: 64)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1887, line: 35, flags: DIFlagFwdDecl)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1913, file: !1887, line: 177, baseType: !57, size: 64, offset: 128)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1913, file: !1887, line: 178, baseType: !1885, size: 64, offset: 192)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1886, file: !1887, line: 215, baseType: !36, size: 64, offset: 768)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1886, file: !1887, line: 221, baseType: !585, size: 64, offset: 832)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1886, file: !1887, line: 223, baseType: !42, size: 16, offset: 896)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1886, file: !1887, line: 224, baseType: !40, size: 16, offset: 912)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1886, file: !1887, line: 225, baseType: !2318, size: 64, offset: 960)
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1887, line: 36, flags: DIFlagFwdDecl)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1886, file: !1887, line: 227, baseType: !741, size: 128, align: 64, offset: 1024)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !1870, file: !1861, line: 442, baseType: !2322, size: 448, offset: 2048)
!2322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !1861, line: 138, size: 448, elements: !2323)
!2323 = !{!2324, !2325, !2326}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2322, file: !1861, line: 140, baseType: !1885, size: 64)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !2322, file: !1861, line: 141, baseType: !55, size: 64, offset: 64)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !2322, file: !1861, line: 142, baseType: !2327, size: 320, offset: 128)
!2327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2328, line: 11, size: 320, elements: !2329)
!2328 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2329 = !{!2330, !2331, !2332, !2337}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2327, file: !2328, line: 16, baseType: !819, size: 128)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2327, file: !2328, line: 17, baseType: !55, size: 64, offset: 128)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2327, file: !2328, line: 18, baseType: !2333, size: 64, offset: 192)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{null, !2336}
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2327, file: !2328, line: 19, baseType: !581, size: 32, offset: 256)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !1870, file: !1861, line: 443, baseType: !2322, size: 448, offset: 2496)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !1870, file: !1861, line: 446, baseType: !2340, offset: 2944)
!2340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2322, elements: !2341)
!2341 = !{!2342}
!2342 = !DISubrange(count: 0)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !1870, file: !1861, line: 455, baseType: !109, size: 16, offset: 2944)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !1870, file: !1861, line: 456, baseType: !109, size: 16, offset: 2960)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !1870, file: !1861, line: 457, baseType: !109, size: 16, offset: 2976)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !1870, file: !1861, line: 458, baseType: !109, size: 16, offset: 2992)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !1870, file: !1861, line: 461, baseType: !1864, size: 896, offset: 3008)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1870, file: !1861, line: 463, baseType: !2349, size: 64, offset: 3904)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !1861, line: 537, size: 41664, elements: !2351)
!2351 = !{!2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2365}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !2350, file: !1861, line: 538, baseType: !1905, size: 64)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !2350, file: !1861, line: 541, baseType: !7, size: 32, offset: 64)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !2350, file: !1861, line: 544, baseType: !38, size: 32, offset: 96)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !2350, file: !1861, line: 547, baseType: !113, size: 128, offset: 128)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2350, file: !1861, line: 548, baseType: !741, size: 128, align: 64, offset: 256)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !2350, file: !1861, line: 555, baseType: !1870, size: 7872, offset: 384)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !2350, file: !1861, line: 558, baseType: !1869, size: 64, offset: 8256)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !2350, file: !1861, line: 561, baseType: !65, size: 32, offset: 8320)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2350, file: !1861, line: 564, baseType: !7, size: 32, offset: 8352)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !2350, file: !1861, line: 567, baseType: !2362, size: 32768, offset: 8384)
!2362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 32768, elements: !2363)
!2363 = !{!2364}
!2364 = !DISubrange(count: 4096)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2350, file: !1861, line: 570, baseType: !2366, size: 512, offset: 41152)
!2366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 512, elements: !443)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !1870, file: !1861, line: 469, baseType: !113, size: 128, offset: 3968)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !1870, file: !1861, line: 478, baseType: !2369, size: 1792, offset: 4096)
!2369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 1792, elements: !2370)
!2370 = !{!2371}
!2371 = !DISubrange(count: 14)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !1870, file: !1861, line: 487, baseType: !1869, size: 64, offset: 5888)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !1870, file: !1861, line: 488, baseType: !1869, size: 64, offset: 5952)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !1870, file: !1861, line: 491, baseType: !2375, size: 64, offset: 6016)
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !1861, line: 327, size: 896, elements: !2377)
!2377 = !{!2378, !2381, !2391, !2392, !2393, !2394, !2395}
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !2376, file: !1861, line: 332, baseType: !2379)
!2379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !2380, line: 64, elements: !1172)
!2380 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !2376, file: !1861, line: 333, baseType: !2382, size: 192)
!2382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !1861, line: 299, size: 192, elements: !2383)
!2383 = !{!2384}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !2382, file: !1861, line: 300, baseType: !2385, size: 192)
!2385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !2386, line: 17, size: 192, elements: !2387)
!2386 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!2387 = !{!2388, !2389, !2390}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2385, file: !2386, line: 18, baseType: !585, size: 64)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2385, file: !2386, line: 19, baseType: !585, size: 64, offset: 64)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2385, file: !2386, line: 20, baseType: !587, size: 64, offset: 128)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !2376, file: !1861, line: 339, baseType: !2382, size: 192, offset: 192)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !2376, file: !1861, line: 347, baseType: !2382, size: 192, offset: 384)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !2376, file: !1861, line: 353, baseType: !2382, size: 192, offset: 576)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !2376, file: !1861, line: 366, baseType: !1869, size: 64, offset: 768)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !2376, file: !1861, line: 367, baseType: !1869, size: 64, offset: 832)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !1870, file: !1861, line: 492, baseType: !113, size: 128, offset: 6080)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !1870, file: !1861, line: 495, baseType: !2382, size: 192, offset: 6208)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !1870, file: !1861, line: 496, baseType: !2382, size: 192, offset: 6400)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1870, file: !1861, line: 497, baseType: !1697, size: 192, offset: 6592)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !1870, file: !1861, line: 503, baseType: !113, size: 128, offset: 6784)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !1870, file: !1861, line: 504, baseType: !763, size: 256, offset: 6912)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !1870, file: !1861, line: 507, baseType: !70, size: 192, offset: 7168)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !1870, file: !1861, line: 510, baseType: !1471, size: 256, offset: 7360)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !1870, file: !1861, line: 513, baseType: !2405, size: 64, offset: 7616)
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !2407, line: 214, elements: !1172)
!2407 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !1870, file: !1861, line: 516, baseType: !2409, offset: 7680)
!2409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !2410, line: 76, elements: !1172)
!2410 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !1870, file: !1861, line: 519, baseType: !65, size: 32, offset: 7680)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !1870, file: !1861, line: 522, baseType: !2413, size: 128, offset: 7712)
!2413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !1861, line: 370, size: 128, elements: !2414)
!2414 = !{!2415, !2416, !2417, !2418}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2413, file: !1861, line: 372, baseType: !1356, size: 8)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !2413, file: !1861, line: 375, baseType: !38, size: 32, offset: 32)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !2413, file: !1861, line: 380, baseType: !38, size: 32, offset: 64)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !2413, file: !1861, line: 386, baseType: !38, size: 32, offset: 96)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !1870, file: !1861, line: 529, baseType: !2420, offset: 7872)
!2420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1869, elements: !725)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1866, file: !1861, line: 157, baseType: !2422, size: 64, offset: 64)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !1861, line: 669, size: 1984, elements: !2424)
!2424 = !{!2425, !2429, !2433, !2437, !2438, !2439, !2440, !2444, !2448, !2449, !2455, !2459, !2460, !2464, !2468, !2472, !2476, !2477, !2478, !2479, !2480, !2481, !2482, !2483, !2484, !2485, !2486, !2487, !2488, !2525, !2526}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !2423, file: !1861, line: 670, baseType: !2426, size: 64)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = !DISubroutineType(types: !2428)
!2428 = !{!1865, !1865}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !2423, file: !1861, line: 671, baseType: !2430, size: 64, offset: 64)
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{!38, !1865}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !2423, file: !1861, line: 672, baseType: !2434, size: 64, offset: 128)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = !DISubroutineType(types: !2436)
!2436 = !{null, !1865}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !2423, file: !1861, line: 673, baseType: !2434, size: 64, offset: 192)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !2423, file: !1861, line: 674, baseType: !2434, size: 64, offset: 256)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !2423, file: !1861, line: 675, baseType: !2434, size: 64, offset: 320)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !2423, file: !1861, line: 676, baseType: !2441, size: 64, offset: 384)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = !DISubroutineType(types: !2443)
!2443 = !{null, !1865, !38}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !2423, file: !1861, line: 677, baseType: !2445, size: 64, offset: 448)
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2446 = !DISubroutineType(types: !2447)
!2447 = !{!38, !1930, !1865}
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !2423, file: !1861, line: 679, baseType: !2445, size: 64, offset: 512)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !2423, file: !1861, line: 682, baseType: !2450, size: 64, offset: 576)
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{!38, !2453}
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2454 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !1861, line: 30, flags: DIFlagFwdDecl)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !2423, file: !1861, line: 683, baseType: !2456, size: 64, offset: 640)
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2457 = !DISubroutineType(types: !2458)
!2458 = !{null, !2453}
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !2423, file: !1861, line: 684, baseType: !2456, size: 64, offset: 704)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !2423, file: !1861, line: 685, baseType: !2461, size: 64, offset: 768)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = !DISubroutineType(types: !2463)
!2463 = !{null}
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !2423, file: !1861, line: 686, baseType: !2465, size: 64, offset: 832)
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2466 = !DISubroutineType(types: !2467)
!2467 = !{!38, !856, !1859}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !2423, file: !1861, line: 688, baseType: !2469, size: 64, offset: 896)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = !DISubroutineType(types: !2471)
!2471 = !{null, !856, !1859}
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !2423, file: !1861, line: 689, baseType: !2473, size: 64, offset: 960)
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = !DISubroutineType(types: !2475)
!2475 = !{null, !856}
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !2423, file: !1861, line: 690, baseType: !2473, size: 64, offset: 1024)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2423, file: !1861, line: 691, baseType: !2473, size: 64, offset: 1088)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !2423, file: !1861, line: 692, baseType: !2434, size: 64, offset: 1152)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2423, file: !1861, line: 694, baseType: !1356, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !2423, file: !1861, line: 707, baseType: !1356, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !2423, file: !1861, line: 719, baseType: !1356, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2423, file: !1861, line: 722, baseType: !38, size: 32, offset: 1248)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2423, file: !1861, line: 723, baseType: !32, size: 64, offset: 1280)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !2423, file: !1861, line: 726, baseType: !32, size: 64, offset: 1344)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2423, file: !1861, line: 729, baseType: !2349, size: 64, offset: 1408)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !2423, file: !1861, line: 732, baseType: !840, size: 192, offset: 1472)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !2423, file: !1861, line: 738, baseType: !113, size: 128, offset: 1664)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !2423, file: !1861, line: 744, baseType: !2489, size: 64, offset: 1792)
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 64)
!2490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !1861, line: 580, size: 1728, elements: !2491)
!2491 = !{!2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2501, !2502, !2503, !2507, !2511, !2512, !2513, !2514, !2515, !2519, !2523, !2524}
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2490, file: !1861, line: 586, baseType: !2366, size: 512)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2490, file: !1861, line: 587, baseType: !55, size: 64, offset: 512)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !2490, file: !1861, line: 593, baseType: !51, size: 64, offset: 576)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2490, file: !1861, line: 596, baseType: !7, size: 32, offset: 640)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !2490, file: !1861, line: 604, baseType: !7, size: 32, offset: 672)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2490, file: !1861, line: 610, baseType: !2422, size: 64, offset: 704)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2490, file: !1861, line: 611, baseType: !113, size: 128, offset: 768)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !2490, file: !1861, line: 612, baseType: !2500, size: 64, offset: 896)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2490, file: !1861, line: 614, baseType: !1921, size: 64, offset: 960)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2490, file: !1861, line: 615, baseType: !2273, size: 64, offset: 1024)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !2490, file: !1861, line: 621, baseType: !2504, size: 64, offset: 1088)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = !DISubroutineType(types: !2506)
!2506 = !{!585, !1865, !2489}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !2490, file: !1861, line: 625, baseType: !2508, size: 64, offset: 1152)
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = !DISubroutineType(types: !2510)
!2510 = !{!760, !1865, !2489}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2490, file: !1861, line: 628, baseType: !1960, size: 64, offset: 1216)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2490, file: !1861, line: 631, baseType: !1948, size: 64, offset: 1280)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2490, file: !1861, line: 632, baseType: !1956, size: 64, offset: 1344)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2490, file: !1861, line: 633, baseType: !1952, size: 64, offset: 1408)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !2490, file: !1861, line: 640, baseType: !2516, size: 64, offset: 1472)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = !DISubroutineType(types: !2518)
!2518 = !{!38, !1865, !2489, !585}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !2490, file: !1861, line: 645, baseType: !2520, size: 64, offset: 1536)
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{!38, !1865, !2489, !760}
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2490, file: !1861, line: 654, baseType: !2281, size: 64, offset: 1600)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2490, file: !1861, line: 657, baseType: !2288, size: 64, offset: 1664)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !2423, file: !1861, line: 745, baseType: !2489, size: 64, offset: 1856)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !2423, file: !1861, line: 754, baseType: !7, size: 32, offset: 1920)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1866, file: !1861, line: 160, baseType: !2167, size: 128, offset: 128)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1866, file: !1861, line: 163, baseType: !113, size: 128, offset: 256)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1866, file: !1861, line: 164, baseType: !113, size: 128, offset: 384)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !1866, file: !1861, line: 167, baseType: !113, size: 128, offset: 512)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1866, file: !1861, line: 173, baseType: !38, size: 32, offset: 640)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1866, file: !1861, line: 175, baseType: !7, size: 32, offset: 672)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !1866, file: !1861, line: 183, baseType: !585, size: 64, offset: 704)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !1866, file: !1861, line: 189, baseType: !65, size: 32, offset: 768)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1866, file: !1861, line: 192, baseType: !1471, size: 256, offset: 832)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !1866, file: !1861, line: 193, baseType: !2537, size: 448, offset: 1088)
!2537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !1472, line: 120, size: 448, elements: !2538)
!2538 = !{!2539, !2540, !2541}
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2537, file: !1472, line: 121, baseType: !1471, size: 256)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2537, file: !1472, line: 122, baseType: !741, size: 128, align: 64, offset: 256)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2537, file: !1472, line: 125, baseType: !2542, size: 64, offset: 384)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1472, line: 18, flags: DIFlagFwdDecl)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1866, file: !1861, line: 199, baseType: !1865, size: 64, offset: 1536)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1860, file: !1861, line: 218, baseType: !806, size: 32, offset: 896)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !1860, file: !1861, line: 226, baseType: !1859, size: 64, offset: 960)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !1860, file: !1861, line: 229, baseType: !1869, size: 64, offset: 1024)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1860, file: !1861, line: 232, baseType: !38, size: 32, offset: 1088)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1860, file: !1861, line: 241, baseType: !113, size: 128, offset: 1152)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !1860, file: !1861, line: 242, baseType: !113, size: 128, offset: 1280)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !1860, file: !1861, line: 243, baseType: !113, size: 128, offset: 1408)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !1860, file: !1861, line: 246, baseType: !113, size: 128, offset: 1536)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !1860, file: !1861, line: 255, baseType: !2369, size: 1792, offset: 1664)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !1860, file: !1861, line: 258, baseType: !113, size: 128, offset: 3456)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !1860, file: !1861, line: 259, baseType: !113, size: 128, offset: 3584)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !1860, file: !1861, line: 265, baseType: !819, size: 128, offset: 3712)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !1860, file: !1861, line: 271, baseType: !113, size: 128, offset: 3840)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !1860, file: !1861, line: 277, baseType: !113, size: 128, offset: 3968)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !1860, file: !1861, line: 278, baseType: !113, size: 128, offset: 4096)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !1860, file: !1861, line: 279, baseType: !113, size: 128, offset: 4224)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !1860, file: !1861, line: 288, baseType: !1869, size: 64, offset: 4352)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !1860, file: !1861, line: 289, baseType: !1869, size: 64, offset: 4416)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !1860, file: !1861, line: 290, baseType: !1859, size: 64, offset: 4480)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !1860, file: !1861, line: 293, baseType: !1356, size: 8, offset: 4544)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1860, file: !1861, line: 296, baseType: !741, size: 128, align: 64, offset: 4608)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !857, file: !858, line: 1110, baseType: !2567, size: 64, offset: 15360)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2569, line: 93, size: 8768, elements: !2570)
!2569 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2570 = !{!2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2621, !2630, !2631, !2633, !2634, !2635, !2638, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2676, !2677, !2684, !2694, !2757, !2758, !2761, !2762, !2763, !2764, !2765, !2766}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2568, file: !2569, line: 94, baseType: !806, size: 32)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2568, file: !2569, line: 95, baseType: !65, size: 32, offset: 32)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2568, file: !2569, line: 96, baseType: !38, size: 32, offset: 64)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2568, file: !2569, line: 97, baseType: !38, size: 32, offset: 96)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2568, file: !2569, line: 98, baseType: !113, size: 128, offset: 128)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2568, file: !2569, line: 100, baseType: !70, size: 192, offset: 256)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2568, file: !2569, line: 103, baseType: !856, size: 64, offset: 448)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2568, file: !2569, line: 106, baseType: !2579, size: 192, offset: 512)
!2579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2580, line: 32, size: 192, elements: !2581)
!2580 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2581 = !{!2582, !2583}
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2579, file: !2580, line: 33, baseType: !113, size: 128)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2579, file: !2580, line: 34, baseType: !2584, size: 64, offset: 128)
!2584 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2585, line: 25, baseType: !2586)
!2585 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2586 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2585, line: 23, size: 64, elements: !2587)
!2587 = !{!2588}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2586, file: !2585, line: 24, baseType: !1102, size: 64)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2568, file: !2569, line: 109, baseType: !815, size: 64, offset: 704)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2568, file: !2569, line: 112, baseType: !38, size: 32, offset: 768)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2568, file: !2569, line: 114, baseType: !38, size: 32, offset: 800)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2568, file: !2569, line: 115, baseType: !856, size: 64, offset: 832)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2568, file: !2569, line: 118, baseType: !38, size: 32, offset: 896)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2568, file: !2569, line: 119, baseType: !7, size: 32, offset: 928)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2568, file: !2569, line: 121, baseType: !2596, size: 64, offset: 960)
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2597, size: 64)
!2597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2569, line: 80, size: 448, elements: !2598)
!2598 = !{!2599, !2600, !2606}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2597, file: !2569, line: 81, baseType: !65, size: 32)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2597, file: !2569, line: 82, baseType: !2601, size: 128, offset: 64)
!2601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2569, line: 75, size: 128, elements: !2602)
!2602 = !{!2603, !2604}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2601, file: !2569, line: 76, baseType: !856, size: 64)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2601, file: !2569, line: 77, baseType: !2605, size: 64, offset: 64)
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2597, file: !2569, line: 83, baseType: !1510, size: 256, offset: 192)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2568, file: !2569, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2568, file: !2569, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2568, file: !2569, line: 138, baseType: !7, size: 32, offset: 1056)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2568, file: !2569, line: 139, baseType: !113, size: 128, offset: 1088)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2568, file: !2569, line: 142, baseType: !975, size: 512, offset: 1216)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2568, file: !2569, line: 143, baseType: !983, size: 64, offset: 1728)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2568, file: !2569, line: 150, baseType: !2614, size: 256, offset: 1792)
!2614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2615, size: 256, elements: !2619)
!2615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2569, line: 38, size: 128, elements: !2616)
!2616 = !{!2617, !2618}
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2615, file: !2569, line: 39, baseType: !585, size: 64)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2615, file: !2569, line: 40, baseType: !585, size: 64, offset: 64)
!2619 = !{!2620}
!2620 = !DISubrange(count: 2)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2568, file: !2569, line: 156, baseType: !2622, size: 192, offset: 2048)
!2622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2569, line: 66, size: 192, elements: !2623)
!2623 = !{!2624}
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2622, file: !2569, line: 67, baseType: !2625, size: 192)
!2625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2569, line: 47, size: 192, elements: !2626)
!2626 = !{!2627, !2628, !2629}
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2625, file: !2569, line: 48, baseType: !756, size: 64)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2625, file: !2569, line: 49, baseType: !756, size: 64, offset: 64)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2625, file: !2569, line: 50, baseType: !756, size: 64, offset: 128)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2568, file: !2569, line: 160, baseType: !1709, size: 640, offset: 2240)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2568, file: !2569, line: 163, baseType: !2632, size: 256, offset: 2880)
!2632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !802, size: 256, elements: !824)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2568, file: !2569, line: 169, baseType: !802, size: 64, offset: 3136)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2568, file: !2569, line: 172, baseType: !38, size: 32, offset: 3200)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2568, file: !2569, line: 174, baseType: !2636, size: 64, offset: 3264)
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2637 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2569, line: 174, flags: DIFlagFwdDecl)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2568, file: !2569, line: 185, baseType: !2639, size: 64, offset: 3328)
!2639 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !554, line: 860, baseType: !2640)
!2640 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !554, line: 853, size: 64, elements: !2641)
!2641 = !{!2642, !2643}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2640, file: !554, line: 858, baseType: !553, size: 32)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2640, file: !554, line: 859, baseType: !75, size: 32, offset: 32)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2568, file: !2569, line: 186, baseType: !585, size: 64, offset: 3392)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2568, file: !2569, line: 186, baseType: !585, size: 64, offset: 3456)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2568, file: !2569, line: 186, baseType: !585, size: 64, offset: 3520)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2568, file: !2569, line: 186, baseType: !585, size: 64, offset: 3584)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2568, file: !2569, line: 187, baseType: !585, size: 64, offset: 3648)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2568, file: !2569, line: 188, baseType: !585, size: 64, offset: 3712)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2568, file: !2569, line: 189, baseType: !1697, size: 192, offset: 3776)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2568, file: !2569, line: 190, baseType: !55, size: 64, offset: 3968)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2568, file: !2569, line: 190, baseType: !55, size: 64, offset: 4032)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2568, file: !2569, line: 190, baseType: !55, size: 64, offset: 4096)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2568, file: !2569, line: 190, baseType: !55, size: 64, offset: 4160)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2568, file: !2569, line: 191, baseType: !55, size: 64, offset: 4224)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2568, file: !2569, line: 191, baseType: !55, size: 64, offset: 4288)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2568, file: !2569, line: 191, baseType: !55, size: 64, offset: 4352)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2568, file: !2569, line: 191, baseType: !55, size: 64, offset: 4416)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2568, file: !2569, line: 192, baseType: !55, size: 64, offset: 4480)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2568, file: !2569, line: 192, baseType: !55, size: 64, offset: 4544)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2568, file: !2569, line: 192, baseType: !55, size: 64, offset: 4608)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2568, file: !2569, line: 192, baseType: !55, size: 64, offset: 4672)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2568, file: !2569, line: 193, baseType: !55, size: 64, offset: 4736)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2568, file: !2569, line: 193, baseType: !55, size: 64, offset: 4800)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2568, file: !2569, line: 194, baseType: !2666, size: 448, offset: 4864)
!2666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2667, line: 12, size: 448, elements: !2668)
!2667 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2668 = !{!2669, !2670, !2671, !2672, !2673, !2674, !2675}
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2666, file: !2667, line: 15, baseType: !585, size: 64)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2666, file: !2667, line: 17, baseType: !585, size: 64, offset: 64)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2666, file: !2667, line: 19, baseType: !585, size: 64, offset: 128)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2666, file: !2667, line: 21, baseType: !585, size: 64, offset: 192)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2666, file: !2667, line: 29, baseType: !585, size: 64, offset: 256)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2666, file: !2667, line: 35, baseType: !585, size: 64, offset: 320)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2666, file: !2667, line: 44, baseType: !585, size: 64, offset: 384)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2568, file: !2569, line: 202, baseType: !587, size: 64, offset: 5312)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2568, file: !2569, line: 213, baseType: !2678, size: 2048, offset: 5376)
!2678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2679, size: 2048, elements: !1801)
!2679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2680, line: 43, size: 128, elements: !2681)
!2680 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2681 = !{!2682, !2683}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2679, file: !2680, line: 44, baseType: !54, size: 64)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2679, file: !2680, line: 45, baseType: !54, size: 64, offset: 64)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2568, file: !2569, line: 216, baseType: !2685, size: 448, offset: 7424)
!2685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2569, line: 30, size: 448, elements: !2686)
!2686 = !{!2687, !2688, !2689, !2690, !2691, !2692, !2693}
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2685, file: !2569, line: 31, baseType: !38, size: 32)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2685, file: !2569, line: 32, baseType: !473, size: 64, offset: 64)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2685, file: !2569, line: 33, baseType: !55, size: 64, offset: 128)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2685, file: !2569, line: 34, baseType: !585, size: 64, offset: 192)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2685, file: !2569, line: 34, baseType: !585, size: 64, offset: 256)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2685, file: !2569, line: 35, baseType: !55, size: 64, offset: 320)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2685, file: !2569, line: 35, baseType: !55, size: 64, offset: 384)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2568, file: !2569, line: 219, baseType: !2695, size: 64, offset: 7872)
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2697, line: 41, size: 3456, elements: !2698)
!2697 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!2698 = !{!2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2713, !2714, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2696, file: !2697, line: 47, baseType: !110, size: 16)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2696, file: !2697, line: 48, baseType: !582, size: 32, offset: 32)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2696, file: !2697, line: 54, baseType: !101, size: 8, offset: 64)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !2696, file: !2697, line: 55, baseType: !101, size: 8, offset: 72)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !2696, file: !2697, line: 73, baseType: !586, size: 64, align: 64, offset: 128)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !2696, file: !2697, line: 74, baseType: !586, size: 64, offset: 192)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !2696, file: !2697, line: 81, baseType: !586, size: 64, offset: 256)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !2696, file: !2697, line: 82, baseType: !586, size: 64, offset: 320)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !2696, file: !2697, line: 85, baseType: !586, size: 64, offset: 384)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !2696, file: !2697, line: 86, baseType: !586, size: 64, offset: 448)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !2696, file: !2697, line: 94, baseType: !586, size: 64, offset: 512)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !2696, file: !2697, line: 102, baseType: !586, size: 64, offset: 576)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !2696, file: !2697, line: 107, baseType: !2712, size: 256, offset: 640)
!2712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 256, elements: !594)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !2696, file: !2697, line: 108, baseType: !101, size: 8, align: 64, offset: 896)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !2696, file: !2697, line: 110, baseType: !2715, size: 24, offset: 904)
!2715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 24, elements: !439)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !2696, file: !2697, line: 111, baseType: !582, size: 32, align: 64, offset: 960)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !2696, file: !2697, line: 113, baseType: !582, size: 32, offset: 992)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !2696, file: !2697, line: 114, baseType: !582, size: 32, offset: 1024)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !2696, file: !2697, line: 115, baseType: !582, size: 32, offset: 1056)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !2696, file: !2697, line: 117, baseType: !582, size: 32, offset: 1088)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !2696, file: !2697, line: 118, baseType: !586, size: 64, align: 64, offset: 1152)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2696, file: !2697, line: 120, baseType: !586, size: 64, offset: 1216)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2696, file: !2697, line: 121, baseType: !586, size: 64, offset: 1280)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2696, file: !2697, line: 122, baseType: !586, size: 64, offset: 1344)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2696, file: !2697, line: 123, baseType: !586, size: 64, offset: 1408)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !2696, file: !2697, line: 133, baseType: !586, size: 64, offset: 1472)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !2696, file: !2697, line: 137, baseType: !586, size: 64, offset: 1536)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !2696, file: !2697, line: 142, baseType: !586, size: 64, offset: 1600)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !2696, file: !2697, line: 143, baseType: !586, size: 64, offset: 1664)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !2696, file: !2697, line: 146, baseType: !586, size: 64, offset: 1728)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !2696, file: !2697, line: 147, baseType: !586, size: 64, offset: 1792)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !2696, file: !2697, line: 148, baseType: !586, size: 64, offset: 1856)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !2696, file: !2697, line: 149, baseType: !586, size: 64, offset: 1920)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2696, file: !2697, line: 154, baseType: !586, size: 64, offset: 1984)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2696, file: !2697, line: 155, baseType: !586, size: 64, offset: 2048)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2696, file: !2697, line: 156, baseType: !586, size: 64, offset: 2112)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2696, file: !2697, line: 158, baseType: !586, size: 64, offset: 2176)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2696, file: !2697, line: 159, baseType: !586, size: 64, offset: 2240)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !2696, file: !2697, line: 162, baseType: !586, size: 64, offset: 2304)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !2696, file: !2697, line: 163, baseType: !586, size: 64, offset: 2368)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !2696, file: !2697, line: 164, baseType: !586, size: 64, offset: 2432)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !2696, file: !2697, line: 167, baseType: !586, size: 64, offset: 2496)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !2696, file: !2697, line: 168, baseType: !586, size: 64, offset: 2560)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !2696, file: !2697, line: 171, baseType: !586, size: 64, offset: 2624)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !2696, file: !2697, line: 172, baseType: !586, size: 64, offset: 2688)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !2696, file: !2697, line: 175, baseType: !586, size: 64, offset: 2752)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !2696, file: !2697, line: 178, baseType: !586, size: 64, offset: 2816)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !2696, file: !2697, line: 179, baseType: !586, size: 64, offset: 2880)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !2696, file: !2697, line: 182, baseType: !582, size: 32, offset: 2944)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !2696, file: !2697, line: 186, baseType: !586, size: 64, align: 64, offset: 3008)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !2696, file: !2697, line: 194, baseType: !586, size: 64, offset: 3072)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !2696, file: !2697, line: 195, baseType: !586, size: 64, offset: 3136)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !2696, file: !2697, line: 199, baseType: !586, size: 64, offset: 3200)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !2696, file: !2697, line: 200, baseType: !586, size: 64, offset: 3264)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !2696, file: !2697, line: 203, baseType: !586, size: 64, offset: 3328)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !2696, file: !2697, line: 204, baseType: !586, size: 64, offset: 3392)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2568, file: !2569, line: 222, baseType: !7, size: 32, offset: 7936)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2568, file: !2569, line: 223, baseType: !2759, size: 64, offset: 8000)
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!2760 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2569, line: 223, flags: DIFlagFwdDecl)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2568, file: !2569, line: 230, baseType: !1356, size: 8, offset: 8064)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2568, file: !2569, line: 231, baseType: !1304, size: 16, offset: 8080)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2568, file: !2569, line: 232, baseType: !1304, size: 16, offset: 8096)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2568, file: !2569, line: 234, baseType: !1151, size: 64, offset: 8128)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2568, file: !2569, line: 237, baseType: !763, size: 256, offset: 8192)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2568, file: !2569, line: 243, baseType: !1206, size: 320, offset: 8448)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !857, file: !858, line: 1111, baseType: !2768, size: 64, offset: 15424)
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2569, line: 20, size: 16640, elements: !2770)
!2770 = !{!2771, !2772, !2773, !2774}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2769, file: !2569, line: 21, baseType: !75, size: 32)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2769, file: !2569, line: 22, baseType: !806, size: 32, offset: 32)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2769, file: !2569, line: 23, baseType: !70, size: 192, offset: 64)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2769, file: !2569, line: 24, baseType: !2775, size: 16384, offset: 256)
!2775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2776, size: 16384, elements: !443)
!2776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2580, line: 51, size: 256, elements: !2777)
!2777 = !{!2778}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2776, file: !2580, line: 52, baseType: !2779, size: 256)
!2779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2580, line: 37, size: 256, elements: !2780)
!2780 = !{!2781, !2788, !2789, !2793}
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2779, file: !2580, line: 39, baseType: !2782, size: 64)
!2782 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2783, line: 83, baseType: !2784)
!2783 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2785 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2783, line: 82, baseType: !2786)
!2786 = !DISubroutineType(types: !2787)
!2787 = !{null, !38}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2779, file: !2580, line: 40, baseType: !55, size: 64, offset: 64)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2779, file: !2580, line: 46, baseType: !2790, size: 64, offset: 128)
!2790 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2783, line: 86, baseType: !2791)
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2792, size: 64)
!2792 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2783, line: 85, baseType: !2462)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2779, file: !2580, line: 48, baseType: !2584, size: 64, offset: 192)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !857, file: !858, line: 1112, baseType: !2584, size: 64, offset: 15488)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !857, file: !858, line: 1113, baseType: !2584, size: 64, offset: 15552)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !857, file: !858, line: 1115, baseType: !2584, size: 64, offset: 15616)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !857, file: !858, line: 1116, baseType: !2579, size: 192, offset: 15680)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !857, file: !858, line: 1117, baseType: !55, size: 64, offset: 15872)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !857, file: !858, line: 1118, baseType: !51, size: 64, offset: 15936)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !857, file: !858, line: 1119, baseType: !7, size: 32, offset: 16000)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !857, file: !858, line: 1121, baseType: !744, size: 64, offset: 16064)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !857, file: !858, line: 1125, baseType: !2803, size: 64, offset: 16128)
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2804 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !858, line: 43, flags: DIFlagFwdDecl)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !857, file: !858, line: 1127, baseType: !518, size: 32, offset: 16192)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !857, file: !858, line: 1128, baseType: !7, size: 32, offset: 16224)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !857, file: !858, line: 1130, baseType: !2808, size: 128, offset: 16256)
!2808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2809, line: 37, size: 128, elements: !2810)
!2809 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2810 = !{!2811, !2812, !2813}
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2808, file: !2809, line: 38, baseType: !38, size: 32)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2808, file: !2809, line: 39, baseType: !65, size: 32, offset: 32)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2808, file: !2809, line: 40, baseType: !2814, size: 64, offset: 64)
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2815, size: 64)
!2815 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2809, line: 24, flags: DIFlagFwdDecl)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !857, file: !858, line: 1131, baseType: !2817, size: 256, offset: 16384)
!2817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2818, line: 12, size: 256, elements: !2819)
!2818 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2819 = !{!2820, !2821, !2822, !2823}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2817, file: !2818, line: 13, baseType: !438, size: 64)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2817, file: !2818, line: 14, baseType: !55, size: 64, offset: 64)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2817, file: !2818, line: 15, baseType: !55, size: 64, offset: 128)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2817, file: !2818, line: 16, baseType: !1356, size: 8, offset: 192)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !857, file: !858, line: 1134, baseType: !585, size: 64, offset: 16640)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !857, file: !858, line: 1135, baseType: !585, size: 64, offset: 16704)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !857, file: !858, line: 1138, baseType: !75, size: 32, offset: 16768)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !857, file: !858, line: 1141, baseType: !768, size: 32, offset: 16800)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !857, file: !858, line: 1143, baseType: !2829, size: 64, offset: 16832)
!2829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !858, line: 735, size: 64, elements: !2830)
!2830 = !{!2831}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2829, file: !858, line: 736, baseType: !2832, size: 64)
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !857, file: !858, line: 1147, baseType: !1034, size: 128, offset: 16896)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !857, file: !858, line: 1149, baseType: !856, size: 64, offset: 17024)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !857, file: !858, line: 1151, baseType: !2836, size: 64, offset: 17088)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !858, line: 1151, flags: DIFlagFwdDecl)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !857, file: !858, line: 1188, baseType: !36, size: 64, offset: 17152)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !857, file: !858, line: 1191, baseType: !2840, size: 64, offset: 17216)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2841 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !858, line: 44, flags: DIFlagFwdDecl)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !857, file: !858, line: 1194, baseType: !2843, size: 64, offset: 17280)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !858, line: 45, flags: DIFlagFwdDecl)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !857, file: !858, line: 1197, baseType: !2846, size: 64, offset: 17344)
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !2848, line: 155, size: 64, elements: !2849)
!2848 = !DIFile(filename: "./include/linux/swap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b48f968c4d3c1313a5ba7451c8be5b79")
!2849 = !{!2850}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "reclaimed", scope: !2847, file: !2848, line: 157, baseType: !55, size: 64)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !857, file: !858, line: 1199, baseType: !2852, size: 64, offset: 17408)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2854, line: 99, size: 128, elements: !2855)
!2854 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2855 = !{!2856, !2857, !2858}
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2853, file: !2854, line: 100, baseType: !754, size: 64)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2853, file: !2854, line: 101, baseType: !65, size: 32, offset: 64)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2853, file: !2854, line: 103, baseType: !42, size: 16, offset: 96)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !857, file: !858, line: 1202, baseType: !2860, size: 64, offset: 17472)
!2860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2861, size: 64)
!2861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !2862, line: 588, size: 128, elements: !2863)
!2862 = !DIFile(filename: "mm/internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "59e6069cd469a2e9f5955693d212ff63")
!2863 = !{!2864, !3043}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "cc", scope: !2861, file: !2862, line: 589, baseType: !2865, size: 64)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compact_control", file: !2862, line: 544, size: 1024, elements: !2867)
!2867 = !{!2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !3021, !3022, !3023, !3024, !3025, !3027, !3028, !3029, !3031, !3033, !3034, !3035, !3036, !3037, !3038, !3039, !3040, !3041, !3042}
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "freepages", scope: !2866, file: !2862, line: 545, baseType: !113, size: 128)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "migratepages", scope: !2866, file: !2862, line: 546, baseType: !113, size: 128, offset: 128)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "nr_freepages", scope: !2866, file: !2862, line: 547, baseType: !7, size: 32, offset: 256)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migratepages", scope: !2866, file: !2862, line: 548, baseType: !7, size: 32, offset: 288)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "free_pfn", scope: !2866, file: !2862, line: 549, baseType: !55, size: 64, offset: 320)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_pfn", scope: !2866, file: !2862, line: 556, baseType: !55, size: 64, offset: 384)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "fast_start_pfn", scope: !2866, file: !2862, line: 557, baseType: !55, size: 64, offset: 448)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "zone", scope: !2866, file: !2862, line: 558, baseType: !2876, size: 64, offset: 512)
!2876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2877, size: 64)
!2877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zone", file: !154, line: 815, size: 9728, align: 512, elements: !2878)
!2878 = !{!2879, !2881, !2882, !2883, !2884, !2885, !2963, !2977, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !2994, !2995, !3004, !3005, !3006, !3007, !3008, !3009, !3010, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3018, !3019}
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "_watermark", scope: !2877, file: !154, line: 819, baseType: !2880, size: 256)
!2880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 256, elements: !824)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "watermark_boost", scope: !2877, file: !154, line: 820, baseType: !55, size: 64, offset: 256)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "nr_reserved_highatomic", scope: !2877, file: !154, line: 822, baseType: !55, size: 64, offset: 320)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "lowmem_reserve", scope: !2877, file: !154, line: 833, baseType: !1570, size: 256, offset: 384)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2877, file: !154, line: 836, baseType: !38, size: 32, offset: 640)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "zone_pgdat", scope: !2877, file: !154, line: 838, baseType: !2886, size: 64, offset: 704)
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2887, size: 64)
!2887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pglist_data", file: !154, line: 1266, size: 112128, elements: !2888)
!2888 = !{!2889, !2891, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2932, !2944, !2945, !2946, !2958, !2960}
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "node_zones", scope: !2887, file: !154, line: 1272, baseType: !2890, size: 38912, align: 512)
!2890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2877, size: 38912, align: 512, elements: !824)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "node_zonelists", scope: !2887, file: !154, line: 1279, baseType: !2892, size: 65792, offset: 38912)
!2892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2893, size: 65792, elements: !2619)
!2893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zonelist", file: !154, line: 1214, size: 32896, elements: !2894)
!2894 = !{!2895}
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "_zonerefs", scope: !2893, file: !154, line: 1215, baseType: !2896, size: 32896)
!2896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2897, size: 32896, elements: !2901)
!2897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zoneref", file: !154, line: 1195, size: 128, elements: !2898)
!2898 = !{!2899, !2900}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "zone", scope: !2897, file: !154, line: 1196, baseType: !2876, size: 64)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "zone_idx", scope: !2897, file: !154, line: 1197, baseType: !38, size: 32, offset: 64)
!2901 = !{!2902}
!2902 = !DISubrange(count: 257)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "nr_zones", scope: !2887, file: !154, line: 1281, baseType: !38, size: 32, offset: 104704)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "node_start_pfn", scope: !2887, file: !154, line: 1303, baseType: !55, size: 64, offset: 104768)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "node_present_pages", scope: !2887, file: !154, line: 1304, baseType: !55, size: 64, offset: 104832)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "node_spanned_pages", scope: !2887, file: !154, line: 1305, baseType: !55, size: 64, offset: 104896)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2887, file: !154, line: 1307, baseType: !38, size: 32, offset: 104960)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "kswapd_wait", scope: !2887, file: !154, line: 1308, baseType: !70, size: 192, offset: 105024)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "pfmemalloc_wait", scope: !2887, file: !154, line: 1309, baseType: !70, size: 192, offset: 105216)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_wait", scope: !2887, file: !154, line: 1312, baseType: !2911, size: 768, offset: 105408)
!2911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 768, elements: !824)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "nr_writeback_throttled", scope: !2887, file: !154, line: 1314, baseType: !65, size: 32, offset: 106176)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "nr_reclaim_start", scope: !2887, file: !154, line: 1315, baseType: !55, size: 64, offset: 106240)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "kswapd", scope: !2887, file: !154, line: 1320, baseType: !856, size: 64, offset: 106304)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "kswapd_order", scope: !2887, file: !154, line: 1321, baseType: !38, size: 32, offset: 106368)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "kswapd_highest_zoneidx", scope: !2887, file: !154, line: 1322, baseType: !153, size: 32, offset: 106400)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "kswapd_failures", scope: !2887, file: !154, line: 1324, baseType: !38, size: 32, offset: 106432)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "kcompactd_max_order", scope: !2887, file: !154, line: 1327, baseType: !38, size: 32, offset: 106464)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "kcompactd_highest_zoneidx", scope: !2887, file: !154, line: 1328, baseType: !153, size: 32, offset: 106496)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "kcompactd_wait", scope: !2887, file: !154, line: 1329, baseType: !70, size: 192, offset: 106560)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "kcompactd", scope: !2887, file: !154, line: 1330, baseType: !856, size: 64, offset: 106752)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "proactive_compact_trigger", scope: !2887, file: !154, line: 1331, baseType: !1356, size: 8, offset: 106816)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "totalreserve_pages", scope: !2887, file: !154, line: 1337, baseType: !55, size: 64, offset: 106880)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "min_unmapped_pages", scope: !2887, file: !154, line: 1343, baseType: !55, size: 64, offset: 106944)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "min_slab_pages", scope: !2887, file: !154, line: 1344, baseType: !55, size: 64, offset: 107008)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "_pad1_", scope: !2887, file: !154, line: 1348, baseType: !2927, align: 512, offset: 107520)
!2927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cacheline_padding", file: !2928, line: 93, align: 512, elements: !2929)
!2928 = !DIFile(filename: "./include/linux/cache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "599edcbe9a1f0cbc1eddd4ed9f4096ef")
!2929 = !{!2930}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !2927, file: !2928, line: 94, baseType: !2931)
!2931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, elements: !2341)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "__lruvec", scope: !2887, file: !154, line: 1384, baseType: !2933, size: 1088, offset: 107520)
!2933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lruvec", file: !154, line: 620, size: 1088, elements: !2934)
!2934 = !{!2935, !2937, !2938, !2939, !2940, !2941, !2943}
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "lists", scope: !2933, file: !154, line: 621, baseType: !2936, size: 640)
!2936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 640, elements: !1329)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "lru_lock", scope: !2933, file: !154, line: 623, baseType: !75, size: 32, offset: 640)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "anon_cost", scope: !2933, file: !154, line: 629, baseType: !55, size: 64, offset: 704)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "file_cost", scope: !2933, file: !154, line: 630, baseType: !55, size: 64, offset: 768)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "nonresident_age", scope: !2933, file: !154, line: 632, baseType: !754, size: 64, offset: 832)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "refaults", scope: !2933, file: !154, line: 634, baseType: !2942, size: 128, offset: 896)
!2942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 128, elements: !2619)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2933, file: !154, line: 636, baseType: !55, size: 64, offset: 1024)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2887, file: !154, line: 1386, baseType: !55, size: 64, offset: 108608)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "_pad2_", scope: !2887, file: !154, line: 1395, baseType: !2927, align: 512, offset: 109056)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "per_cpu_nodestats", scope: !2887, file: !154, line: 1398, baseType: !2947, size: 64, offset: 109056)
!2947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2948, size: 64)
!2948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "per_cpu_nodestat", file: !154, line: 713, size: 336, elements: !2949)
!2949 = !{!2950, !2954}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "stat_threshold", scope: !2948, file: !154, line: 714, baseType: !2951, size: 8)
!2951 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !100, line: 16, baseType: !2952)
!2952 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !102, line: 20, baseType: !2953)
!2953 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "vm_node_stat_diff", scope: !2948, file: !154, line: 715, baseType: !2955, size: 328, offset: 8)
!2955 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2951, size: 328, elements: !2956)
!2956 = !{!2957}
!2957 = !DISubrange(count: 41)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "vm_stat", scope: !2887, file: !154, line: 1399, baseType: !2959, size: 2624, offset: 109120)
!2959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !754, size: 2624, elements: !2956)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "memtier", scope: !2887, file: !154, line: 1401, baseType: !2961, size: 64, offset: 111744)
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = !DICompositeType(tag: DW_TAG_structure_type, name: "memory_tier", file: !154, line: 1401, flags: DIFlagFwdDecl)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "per_cpu_pageset", scope: !2877, file: !154, line: 839, baseType: !2964, size: 64, offset: 768)
!2964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2965, size: 64)
!2965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "per_cpu_pages", file: !154, line: 684, size: 2048, align: 512, elements: !2966)
!2966 = !{!2967, !2968, !2969, !2970, !2971, !2972, !2973}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2965, file: !154, line: 685, baseType: !75, size: 32)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2965, file: !154, line: 686, baseType: !38, size: 32, offset: 32)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !2965, file: !154, line: 687, baseType: !38, size: 32, offset: 64)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2965, file: !154, line: 688, baseType: !38, size: 32, offset: 96)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "free_factor", scope: !2965, file: !154, line: 689, baseType: !1304, size: 16, offset: 128)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "expire", scope: !2965, file: !154, line: 691, baseType: !1304, size: 16, offset: 144)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "lists", scope: !2965, file: !154, line: 695, baseType: !2974, size: 1536, offset: 192)
!2974 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 1536, elements: !2975)
!2975 = !{!2976}
!2976 = !DISubrange(count: 12)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "per_cpu_zonestats", scope: !2877, file: !154, line: 840, baseType: !2978, size: 64, offset: 832)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "per_cpu_zonestat", file: !154, line: 698, size: 512, elements: !2980)
!2980 = !{!2981, !2983, !2984}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "vm_stat_diff", scope: !2979, file: !154, line: 700, baseType: !2982, size: 80)
!2982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2951, size: 80, elements: !1563)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "stat_threshold", scope: !2979, file: !154, line: 701, baseType: !2951, size: 8, offset: 80)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "vm_numa_event", scope: !2979, file: !154, line: 709, baseType: !2985, size: 384, offset: 128)
!2985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 384, elements: !1411)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "pageset_high", scope: !2877, file: !154, line: 845, baseType: !38, size: 32, offset: 896)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "pageset_batch", scope: !2877, file: !154, line: 846, baseType: !38, size: 32, offset: 928)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "zone_start_pfn", scope: !2877, file: !154, line: 857, baseType: !55, size: 64, offset: 960)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "managed_pages", scope: !2877, file: !154, line: 901, baseType: !754, size: 64, offset: 1024)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "spanned_pages", scope: !2877, file: !154, line: 902, baseType: !55, size: 64, offset: 1088)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "present_pages", scope: !2877, file: !154, line: 903, baseType: !55, size: 64, offset: 1152)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2877, file: !154, line: 911, baseType: !32, size: 64, offset: 1216)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !2877, file: !154, line: 927, baseType: !38, size: 32, offset: 1280)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "_pad1_", scope: !2877, file: !154, line: 930, baseType: !2927, align: 512, offset: 1536)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "free_area", scope: !2877, file: !154, line: 933, baseType: !2996, size: 6336, offset: 1536)
!2996 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2997, size: 6336, elements: !3002)
!2997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "free_area", file: !154, line: 113, size: 576, elements: !2998)
!2998 = !{!2999, !3001}
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "free_list", scope: !2997, file: !154, line: 114, baseType: !3000, size: 512)
!3000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 512, elements: !824)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "nr_free", scope: !2997, file: !154, line: 115, baseType: !55, size: 64, offset: 512)
!3002 = !{!3003}
!3003 = !DISubrange(count: 11)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2877, file: !154, line: 941, baseType: !55, size: 64, offset: 7872)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2877, file: !154, line: 944, baseType: !75, size: 32, offset: 7936)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "_pad2_", scope: !2877, file: !154, line: 947, baseType: !2927, align: 512, offset: 8192)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_drift_mark", scope: !2877, file: !154, line: 954, baseType: !55, size: 64, offset: 8192)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "compact_cached_free_pfn", scope: !2877, file: !154, line: 958, baseType: !55, size: 64, offset: 8256)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "compact_cached_migrate_pfn", scope: !2877, file: !154, line: 960, baseType: !2942, size: 128, offset: 8320)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "compact_init_migrate_pfn", scope: !2877, file: !154, line: 961, baseType: !55, size: 64, offset: 8448)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "compact_init_free_pfn", scope: !2877, file: !154, line: 962, baseType: !55, size: 64, offset: 8512)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "compact_considered", scope: !2877, file: !154, line: 972, baseType: !7, size: 32, offset: 8576)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "compact_defer_shift", scope: !2877, file: !154, line: 973, baseType: !7, size: 32, offset: 8608)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "compact_order_failed", scope: !2877, file: !154, line: 974, baseType: !38, size: 32, offset: 8640)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "compact_blockskip_flush", scope: !2877, file: !154, line: 979, baseType: !1356, size: 8, offset: 8672)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "contiguous", scope: !2877, file: !154, line: 982, baseType: !1356, size: 8, offset: 8680)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "_pad3_", scope: !2877, file: !154, line: 984, baseType: !2927, align: 512, offset: 8704)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "vm_stat", scope: !2877, file: !154, line: 986, baseType: !1562, size: 640, offset: 8704)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "vm_numa_event", scope: !2877, file: !154, line: 987, baseType: !3020, size: 384, offset: 9344)
!3020 = !DICompositeType(tag: DW_TAG_array_type, baseType: !754, size: 384, elements: !1411)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "total_migrate_scanned", scope: !2866, file: !2862, line: 559, baseType: !55, size: 64, offset: 576)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "total_free_scanned", scope: !2866, file: !2862, line: 560, baseType: !55, size: 64, offset: 640)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "fast_search_fail", scope: !2866, file: !2862, line: 561, baseType: !42, size: 16, offset: 704)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "search_order", scope: !2866, file: !2862, line: 562, baseType: !1304, size: 16, offset: 720)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2866, file: !2862, line: 563, baseType: !3026, size: 32, offset: 736)
!3026 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !849)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !2866, file: !2862, line: 564, baseType: !38, size: 32, offset: 768)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "migratetype", scope: !2866, file: !2862, line: 565, baseType: !38, size: 32, offset: 800)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_flags", scope: !2866, file: !2862, line: 566, baseType: !3030, size: 32, offset: 832)
!3030 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "highest_zoneidx", scope: !2866, file: !2862, line: 567, baseType: !3032, size: 32, offset: 864)
!3032 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2866, file: !2862, line: 568, baseType: !161, size: 32, offset: 896)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_skip_hint", scope: !2866, file: !2862, line: 569, baseType: !1356, size: 8, offset: 928)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "no_set_skip_hint", scope: !2866, file: !2862, line: 570, baseType: !1356, size: 8, offset: 936)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_block_suitable", scope: !2866, file: !2862, line: 571, baseType: !1356, size: 8, offset: 944)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "direct_compaction", scope: !2866, file: !2862, line: 572, baseType: !1356, size: 8, offset: 952)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "proactive_compaction", scope: !2866, file: !2862, line: 573, baseType: !1356, size: 8, offset: 960)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "whole_zone", scope: !2866, file: !2862, line: 574, baseType: !1356, size: 8, offset: 968)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "contended", scope: !2866, file: !2862, line: 575, baseType: !1356, size: 8, offset: 976)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "finish_pageblock", scope: !2866, file: !2862, line: 576, baseType: !1356, size: 8, offset: 984)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_contig", scope: !2866, file: !2862, line: 581, baseType: !1356, size: 8, offset: 992)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2861, file: !2862, line: 590, baseType: !2103, size: 64, offset: 64)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !857, file: !858, line: 1205, baseType: !55, size: 64, offset: 17536)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !857, file: !858, line: 1206, baseType: !3046, size: 64, offset: 17600)
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3047, size: 64)
!3047 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2580, line: 14, baseType: !3048)
!3048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2580, line: 12, size: 384, elements: !3049)
!3049 = !{!3050}
!3050 = !DIDerivedType(tag: DW_TAG_member, scope: !3048, file: !2580, line: 13, baseType: !3051, size: 384)
!3051 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3048, file: !2580, line: 13, size: 384, elements: !3052)
!3052 = !{!3053, !3054, !3055, !3056}
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3051, file: !2580, line: 13, baseType: !38, size: 32)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3051, file: !2580, line: 13, baseType: !38, size: 32, offset: 32)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3051, file: !2580, line: 13, baseType: !38, size: 32, offset: 64)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3051, file: !2580, line: 13, baseType: !3057, size: 256, offset: 128)
!3057 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3058, line: 37, size: 256, elements: !3059)
!3058 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3059 = !{!3060, !3065, !3078, !3084, !3093, !3120, !3125}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3057, file: !3058, line: 42, baseType: !3061, size: 64)
!3061 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3057, file: !3058, line: 39, size: 64, elements: !3062)
!3062 = !{!3063, !3064}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3061, file: !3058, line: 40, baseType: !1673, size: 32)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3061, file: !3058, line: 41, baseType: !524, size: 32, offset: 32)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3057, file: !3058, line: 50, baseType: !3066, size: 192)
!3066 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3057, file: !3058, line: 45, size: 192, elements: !3067)
!3067 = !{!3068, !3070, !3071, !3077}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3066, file: !3058, line: 46, baseType: !3069, size: 32)
!3069 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !53, line: 95, baseType: !38)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3066, file: !3058, line: 47, baseType: !38, size: 32, offset: 32)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3066, file: !3058, line: 48, baseType: !3072, size: 64, offset: 64)
!3072 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3058, line: 11, baseType: !3073)
!3073 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3058, line: 8, size: 64, elements: !3074)
!3074 = !{!3075, !3076}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3073, file: !3058, line: 9, baseType: !38, size: 32)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3073, file: !3058, line: 10, baseType: !36, size: 64)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3066, file: !3058, line: 49, baseType: !38, size: 32, offset: 128)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3057, file: !3058, line: 57, baseType: !3079, size: 128)
!3079 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3057, file: !3058, line: 53, size: 128, elements: !3080)
!3080 = !{!3081, !3082, !3083}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3079, file: !3058, line: 54, baseType: !1673, size: 32)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3079, file: !3058, line: 55, baseType: !524, size: 32, offset: 32)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3079, file: !3058, line: 56, baseType: !3072, size: 64, offset: 64)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3057, file: !3058, line: 66, baseType: !3085, size: 256)
!3085 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3057, file: !3058, line: 60, size: 256, elements: !3086)
!3086 = !{!3087, !3088, !3089, !3090, !3092}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3085, file: !3058, line: 61, baseType: !1673, size: 32)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3085, file: !3058, line: 62, baseType: !524, size: 32, offset: 32)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3085, file: !3058, line: 63, baseType: !38, size: 32, offset: 64)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3085, file: !3058, line: 64, baseType: !3091, size: 64, offset: 128)
!3091 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !53, line: 94, baseType: !472)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3085, file: !3058, line: 65, baseType: !3091, size: 64, offset: 192)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3057, file: !3058, line: 105, baseType: !3094, size: 256)
!3094 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3057, file: !3058, line: 69, size: 256, elements: !3095)
!3095 = !{!3096, !3097}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3094, file: !3058, line: 70, baseType: !36, size: 64)
!3097 = !DIDerivedType(tag: DW_TAG_member, scope: !3094, file: !3058, line: 79, baseType: !3098, size: 192, offset: 64)
!3098 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3094, file: !3058, line: 79, size: 192, elements: !3099)
!3099 = !{!3100, !3101, !3102, !3109, !3114}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3098, file: !3058, line: 81, baseType: !38, size: 32)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3098, file: !3058, line: 86, baseType: !1304, size: 16)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3098, file: !3058, line: 92, baseType: !3103, size: 192)
!3103 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3098, file: !3058, line: 88, size: 192, elements: !3104)
!3104 = !{!3105, !3107, !3108}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3103, file: !3058, line: 89, baseType: !3106, size: 64)
!3106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 64, elements: !1018)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3103, file: !3058, line: 90, baseType: !36, size: 64, offset: 64)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3103, file: !3058, line: 91, baseType: !36, size: 64, offset: 128)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3098, file: !3058, line: 97, baseType: !3110, size: 96)
!3110 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3098, file: !3058, line: 94, size: 96, elements: !3111)
!3111 = !{!3112, !3113}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3110, file: !3058, line: 95, baseType: !3106, size: 64)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3110, file: !3058, line: 96, baseType: !582, size: 32, offset: 64)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3098, file: !3058, line: 103, baseType: !3115, size: 128)
!3115 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3098, file: !3058, line: 99, size: 128, elements: !3116)
!3116 = !{!3117, !3118, !3119}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3115, file: !3058, line: 100, baseType: !55, size: 64)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3115, file: !3058, line: 101, baseType: !582, size: 32, offset: 64)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3115, file: !3058, line: 102, baseType: !582, size: 32, offset: 96)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3057, file: !3058, line: 111, baseType: !3121, size: 128)
!3121 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3057, file: !3058, line: 108, size: 128, elements: !3122)
!3122 = !{!3123, !3124}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3121, file: !3058, line: 109, baseType: !473, size: 64)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3121, file: !3058, line: 110, baseType: !38, size: 32, offset: 64)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3057, file: !3058, line: 118, baseType: !3126, size: 128)
!3126 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3057, file: !3058, line: 114, size: 128, elements: !3127)
!3127 = !{!3128, !3129, !3130}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3126, file: !3058, line: 115, baseType: !36, size: 64)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3126, file: !3058, line: 116, baseType: !38, size: 32, offset: 64)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3126, file: !3058, line: 117, baseType: !7, size: 32, offset: 96)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !857, file: !858, line: 1208, baseType: !2666, size: 448, offset: 17664)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !857, file: !858, line: 1215, baseType: !585, size: 64, offset: 18112)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !857, file: !858, line: 1217, baseType: !585, size: 64, offset: 18176)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !857, file: !858, line: 1219, baseType: !585, size: 64, offset: 18240)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !857, file: !858, line: 1223, baseType: !3136, size: 64, offset: 18304)
!3136 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3137, line: 99, baseType: !3138)
!3137 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3138 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3137, line: 99, size: 64, elements: !3139)
!3139 = !{!3140}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3138, file: !3137, line: 99, baseType: !1102, size: 64)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !857, file: !858, line: 1225, baseType: !553, size: 32, offset: 18368)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !857, file: !858, line: 1226, baseType: !38, size: 32, offset: 18400)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !857, file: !858, line: 1227, baseType: !38, size: 32, offset: 18432)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !857, file: !858, line: 1231, baseType: !1859, size: 64, offset: 18496)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !857, file: !858, line: 1233, baseType: !113, size: 128, offset: 18560)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !857, file: !858, line: 1240, baseType: !3147, size: 64, offset: 18688)
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3148 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !858, line: 62, flags: DIFlagFwdDecl)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !857, file: !858, line: 1242, baseType: !3150, size: 64, offset: 18752)
!3150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3151, size: 64)
!3151 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !858, line: 1242, flags: DIFlagFwdDecl)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !857, file: !858, line: 1244, baseType: !113, size: 128, offset: 18816)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !857, file: !858, line: 1245, baseType: !3154, size: 64, offset: 18944)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3155 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !858, line: 51, flags: DIFlagFwdDecl)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !857, file: !858, line: 1246, baseType: !763, size: 256, offset: 19008)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !857, file: !858, line: 1247, baseType: !7, size: 32, offset: 19264)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !857, file: !858, line: 1250, baseType: !3159, size: 64, offset: 19328)
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 64)
!3160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !235, line: 912, size: 1792, elements: !3161)
!3161 = !{!3162, !3163, !3164, !3165, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3186, !3187, !3188, !3189, !3190}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3160, file: !235, line: 917, baseType: !768, size: 32)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3160, file: !235, line: 923, baseType: !763, size: 256, offset: 64)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_list", scope: !3160, file: !235, line: 925, baseType: !113, size: 128, offset: 320)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_groups", scope: !3160, file: !235, line: 926, baseType: !3166, size: 128, offset: 448)
!3166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_groups", file: !235, line: 901, size: 128, elements: !3167)
!3167 = !{!3168, !3169}
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !3166, file: !235, line: 902, baseType: !1037, size: 64)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3166, file: !235, line: 903, baseType: !585, size: 64, offset: 64)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_groups", scope: !3160, file: !235, line: 927, baseType: !3166, size: 128, offset: 576)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !3160, file: !235, line: 928, baseType: !113, size: 128, offset: 704)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3160, file: !235, line: 930, baseType: !38, size: 32, offset: 832)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "nr_user", scope: !3160, file: !235, line: 931, baseType: !38, size: 32, offset: 864)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "is_active", scope: !3160, file: !235, line: 932, baseType: !38, size: 32, offset: 896)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "nr_task_data", scope: !3160, file: !235, line: 934, baseType: !38, size: 32, offset: 928)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "nr_stat", scope: !3160, file: !235, line: 935, baseType: !38, size: 32, offset: 960)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "nr_freq", scope: !3160, file: !235, line: 936, baseType: !38, size: 32, offset: 992)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_disable", scope: !3160, file: !235, line: 937, baseType: !38, size: 32, offset: 1024)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3160, file: !235, line: 939, baseType: !806, size: 32, offset: 1056)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3160, file: !235, line: 940, baseType: !856, size: 64, offset: 1088)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3160, file: !235, line: 945, baseType: !585, size: 64, offset: 1152)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3160, file: !235, line: 946, baseType: !585, size: 64, offset: 1216)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !3160, file: !235, line: 947, baseType: !585, size: 64, offset: 1280)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "parent_ctx", scope: !3160, file: !235, line: 953, baseType: !3159, size: 64, offset: 1344)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "parent_gen", scope: !3160, file: !235, line: 954, baseType: !585, size: 64, offset: 1408)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !3160, file: !235, line: 955, baseType: !585, size: 64, offset: 1472)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "pin_count", scope: !3160, file: !235, line: 956, baseType: !38, size: 32, offset: 1536)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3160, file: !235, line: 958, baseType: !38, size: 32, offset: 1568)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3160, file: !235, line: 960, baseType: !741, size: 128, align: 64, offset: 1600)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pending", scope: !3160, file: !235, line: 968, baseType: !3191, size: 64, offset: 1728)
!3191 = !DIDerivedType(tag: DW_TAG_typedef, name: "local_t", file: !3192, line: 12, baseType: !3193)
!3192 = !DIFile(filename: "./arch/x86/include/asm/local.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1295a17343a8a36946da0822a5548474")
!3193 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3192, line: 10, size: 64, elements: !3194)
!3194 = !{!3195}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3193, file: !3192, line: 11, baseType: !754, size: 64)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !857, file: !858, line: 1251, baseType: !763, size: 256, offset: 19392)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !857, file: !858, line: 1252, baseType: !113, size: 128, offset: 19648)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !857, file: !858, line: 1259, baseType: !2044, size: 64, offset: 19776)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !857, file: !858, line: 1260, baseType: !1304, size: 16, offset: 19840)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !857, file: !858, line: 1261, baseType: !1304, size: 16, offset: 19856)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !857, file: !858, line: 1314, baseType: !3202, size: 64, offset: 19904)
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3203, size: 64)
!3203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3204, line: 62, size: 256, align: 256, elements: !3205)
!3204 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3205 = !{!3206, !3207, !3208, !3209, !3210, !3211, !3212}
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3203, file: !3204, line: 75, baseType: !582, size: 32)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3203, file: !3204, line: 90, baseType: !582, size: 32, offset: 32)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3203, file: !3204, line: 112, baseType: !586, size: 64, offset: 64)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3203, file: !3204, line: 132, baseType: !582, size: 32, offset: 128)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3203, file: !3204, line: 140, baseType: !582, size: 32, offset: 160)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3203, file: !3204, line: 149, baseType: !582, size: 32, offset: 192)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3203, file: !3204, line: 154, baseType: !3213, offset: 224)
!3213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, elements: !725)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !857, file: !858, line: 1315, baseType: !581, size: 32, offset: 19968)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !857, file: !858, line: 1316, baseType: !581, size: 32, offset: 20000)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !857, file: !858, line: 1321, baseType: !55, size: 64, offset: 20032)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !857, file: !858, line: 1325, baseType: !38, size: 32, offset: 20096)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !857, file: !858, line: 1326, baseType: !38, size: 32, offset: 20128)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !857, file: !858, line: 1327, baseType: !38, size: 32, offset: 20160)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !857, file: !858, line: 1328, baseType: !38, size: 32, offset: 20192)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !857, file: !858, line: 1329, baseType: !741, size: 128, align: 64, offset: 20224)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !857, file: !858, line: 1332, baseType: !3223, size: 128, offset: 20352)
!3223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3224, line: 51, size: 128, elements: !3225)
!3224 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3225 = !{!3226, !3231, !3232}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3223, file: !3224, line: 60, baseType: !3227, size: 64)
!3227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3228, line: 7, size: 64, elements: !3229)
!3228 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3229 = !{!3230}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3227, file: !3228, line: 12, baseType: !1099, size: 64)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3223, file: !3224, line: 63, baseType: !1356, size: 8, offset: 64)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3223, file: !3224, line: 70, baseType: !1356, size: 8, offset: 72)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !857, file: !858, line: 1335, baseType: !3234, size: 64, offset: 20480)
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3235 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !858, line: 59, flags: DIFlagFwdDecl)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !857, file: !858, line: 1337, baseType: !3237, size: 128, offset: 20544)
!3237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3224, line: 39, size: 128, elements: !3238)
!3238 = !{!3239, !3240, !3241}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3237, file: !3224, line: 40, baseType: !2103, size: 64)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3237, file: !3224, line: 42, baseType: !582, size: 32, offset: 64)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3237, file: !3224, line: 43, baseType: !582, size: 32, offset: 96)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !857, file: !858, line: 1340, baseType: !3243, size: 64, offset: 20672)
!3243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3244, size: 64)
!3244 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !858, line: 69, flags: DIFlagFwdDecl)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !857, file: !858, line: 1351, baseType: !38, size: 32, offset: 20736)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !857, file: !858, line: 1352, baseType: !38, size: 32, offset: 20768)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !857, file: !858, line: 1354, baseType: !55, size: 64, offset: 20800)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !857, file: !858, line: 1364, baseType: !585, size: 64, offset: 20864)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !857, file: !858, line: 1365, baseType: !585, size: 64, offset: 20928)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !857, file: !858, line: 1412, baseType: !55, size: 64, offset: 20992)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !857, file: !858, line: 1453, baseType: !3252, size: 64, offset: 21056)
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3253 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !858, line: 1453, flags: DIFlagFwdDecl)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !857, file: !858, line: 1457, baseType: !3255, size: 64, offset: 21120)
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3256, size: 64)
!3256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !169, line: 61, size: 576, elements: !3257)
!3257 = !{!3258, !3259, !3278, !3281, !3282, !3315, !3325}
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3256, file: !169, line: 62, baseType: !168, size: 32)
!3259 = !DIDerivedType(tag: DW_TAG_member, scope: !3256, file: !169, line: 64, baseType: !3260, size: 192, offset: 64)
!3260 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3256, file: !169, line: 64, size: 192, elements: !3261)
!3261 = !{!3262, !3273}
!3262 = !DIDerivedType(tag: DW_TAG_member, scope: !3260, file: !169, line: 65, baseType: !3263, size: 192)
!3263 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3260, file: !169, line: 65, size: 192, elements: !3264)
!3264 = !{!3265, !3272}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3263, file: !169, line: 66, baseType: !3266, size: 128)
!3266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3267, line: 50, size: 128, elements: !3268)
!3267 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3268 = !{!3269, !3270, !3271}
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3266, file: !3267, line: 52, baseType: !55, size: 64)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3266, file: !3267, line: 54, baseType: !7, size: 32, offset: 64)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3266, file: !3267, line: 55, baseType: !7, size: 32, offset: 96)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3263, file: !169, line: 67, baseType: !55, size: 64, offset: 128)
!3273 = !DIDerivedType(tag: DW_TAG_member, scope: !3260, file: !169, line: 70, baseType: !3274, size: 192)
!3274 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3260, file: !169, line: 70, size: 192, elements: !3275)
!3275 = !{!3276, !3277}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3274, file: !169, line: 71, baseType: !741, size: 128, align: 64)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3274, file: !169, line: 72, baseType: !55, size: 64, offset: 128)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3256, file: !169, line: 76, baseType: !3279, size: 64, offset: 256)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !169, line: 76, flags: DIFlagFwdDecl)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3256, file: !169, line: 77, baseType: !55, size: 64, offset: 320)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3256, file: !169, line: 79, baseType: !3283, size: 64, offset: 384)
!3283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3284, size: 64)
!3284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3267, line: 25, size: 256, elements: !3285)
!3285 = !{!3286, !3292, !3296}
!3286 = !DIDerivedType(tag: DW_TAG_member, scope: !3284, file: !3267, line: 26, baseType: !3287, size: 128)
!3287 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3284, file: !3267, line: 26, size: 128, elements: !3288)
!3288 = !{!3289, !3291}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3287, file: !3267, line: 27, baseType: !3290, size: 128)
!3290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 128, elements: !1801)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3287, file: !3267, line: 28, baseType: !3290, size: 128)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3284, file: !3267, line: 31, baseType: !3293, size: 64, offset: 128)
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3295)
!3295 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3267, line: 23, flags: DIFlagFwdDecl)
!3296 = !DIDerivedType(tag: DW_TAG_member, scope: !3284, file: !3267, line: 33, baseType: !3297, size: 64, offset: 192)
!3297 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3284, file: !3267, line: 33, size: 64, elements: !3298)
!3298 = !{!3299, !3305, !3310}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3297, file: !3267, line: 38, baseType: !3300, size: 64)
!3300 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3297, file: !3267, line: 34, size: 64, elements: !3301)
!3301 = !{!3302, !3303, !3304}
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3300, file: !3267, line: 35, baseType: !1252, size: 32)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3300, file: !3267, line: 36, baseType: !99, size: 8, offset: 32)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3300, file: !3267, line: 37, baseType: !99, size: 8, offset: 40)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3297, file: !3267, line: 42, baseType: !3306, size: 16)
!3306 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3297, file: !3267, line: 39, size: 16, elements: !3307)
!3307 = !{!3308, !3309}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3306, file: !3267, line: 40, baseType: !99, size: 8)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3306, file: !3267, line: 41, baseType: !99, size: 8, offset: 8)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3297, file: !3267, line: 46, baseType: !3311, size: 16)
!3311 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3297, file: !3267, line: 43, size: 16, elements: !3312)
!3312 = !{!3313, !3314}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3311, file: !3267, line: 44, baseType: !99, size: 8)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3311, file: !3267, line: 45, baseType: !99, size: 8, offset: 8)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3256, file: !169, line: 81, baseType: !3316, size: 64, offset: 448)
!3316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3317, size: 64)
!3317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !169, line: 85, size: 384, elements: !3318)
!3318 = !{!3319, !3320, !3321, !3322, !3323, !3324}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3317, file: !169, line: 86, baseType: !3279, size: 64)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3317, file: !169, line: 87, baseType: !55, size: 64, offset: 64)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3317, file: !169, line: 88, baseType: !55, size: 64, offset: 128)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3317, file: !169, line: 89, baseType: !55, size: 64, offset: 192)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3317, file: !169, line: 90, baseType: !1356, size: 8, offset: 256)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3317, file: !169, line: 92, baseType: !3316, size: 64, offset: 320)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3256, file: !169, line: 82, baseType: !7, size: 32, offset: 512)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !857, file: !858, line: 1463, baseType: !3327, offset: 21184)
!3327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !858, line: 739, elements: !1172)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !857, file: !858, line: 1470, baseType: !741, size: 128, align: 64, offset: 21184)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !857, file: !858, line: 1471, baseType: !806, size: 32, offset: 21312)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !857, file: !858, line: 1472, baseType: !38, size: 32, offset: 21344)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !857, file: !858, line: 1474, baseType: !856, size: 64, offset: 21376)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !857, file: !858, line: 1475, baseType: !2327, size: 320, offset: 21440)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !857, file: !858, line: 1478, baseType: !3334, size: 64, offset: 21760)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !858, line: 1478, flags: DIFlagFwdDecl)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !857, file: !858, line: 1482, baseType: !806, size: 32, offset: 21824)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !857, file: !858, line: 1489, baseType: !36, size: 64, offset: 21888)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !857, file: !858, line: 1504, baseType: !36, size: 64, offset: 21952)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !857, file: !858, line: 1505, baseType: !586, size: 64, offset: 22016)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !857, file: !858, line: 1506, baseType: !585, size: 64, offset: 22080)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !857, file: !858, line: 1507, baseType: !586, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !857, file: !858, line: 1508, baseType: !586, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !857, file: !858, line: 1509, baseType: !586, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !857, file: !858, line: 1510, baseType: !741, size: 128, align: 64, offset: 22208)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !857, file: !858, line: 1511, baseType: !38, size: 32, offset: 22336)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !857, file: !858, line: 1515, baseType: !3347, size: 64, offset: 22400)
!3347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !736, line: 56, size: 64, elements: !3348)
!3348 = !{!3349}
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3347, file: !736, line: 57, baseType: !739, size: 64)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !857, file: !858, line: 1518, baseType: !3347, size: 64, offset: 22464)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !857, file: !858, line: 1528, baseType: !741, size: 128, align: 64, offset: 22528)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !857, file: !858, line: 1552, baseType: !3353, size: 35328, offset: 23040)
!3353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3354, line: 430, size: 35328, elements: !3355)
!3354 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3355 = !{!3356, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !4579, !4580, !4581, !4582, !4583, !4584, !4587, !4588, !4589, !4590}
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3353, file: !3354, line: 432, baseType: !3357, size: 192)
!3357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3358, size: 192, elements: !439)
!3358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3359, line: 16, size: 64, elements: !3360)
!3359 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3360 = !{!3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3358, file: !3359, line: 17, baseType: !109, size: 16)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3358, file: !3359, line: 18, baseType: !109, size: 16, offset: 16)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3358, file: !3359, line: 19, baseType: !109, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3358, file: !3359, line: 19, baseType: !109, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3358, file: !3359, line: 19, baseType: !109, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3358, file: !3359, line: 19, baseType: !109, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3358, file: !3359, line: 19, baseType: !109, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3358, file: !3359, line: 20, baseType: !109, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3358, file: !3359, line: 20, baseType: !109, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3358, file: !3359, line: 20, baseType: !109, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3358, file: !3359, line: 20, baseType: !109, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3358, file: !3359, line: 20, baseType: !109, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3358, file: !3359, line: 20, baseType: !109, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3353, file: !3354, line: 436, baseType: !55, size: 64, offset: 192)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3353, file: !3354, line: 440, baseType: !42, size: 16, offset: 256)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3353, file: !3354, line: 441, baseType: !42, size: 16, offset: 272)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3353, file: !3354, line: 442, baseType: !42, size: 16, offset: 288)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3353, file: !3354, line: 443, baseType: !42, size: 16, offset: 304)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3353, file: !3354, line: 447, baseType: !55, size: 64, offset: 320)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3353, file: !3354, line: 448, baseType: !55, size: 64, offset: 384)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3353, file: !3354, line: 459, baseType: !3382, size: 256, offset: 448)
!3382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3383, size: 256, elements: !824)
!3383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3384, size: 64)
!3384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !235, line: 671, size: 8512, elements: !3385)
!3385 = !{!3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3912, !3913, !3914, !3915, !3921, !3922, !3923, !3924, !3925, !4009, !4010, !4011, !4012, !4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4132, !4133, !4134, !4135, !4136, !4137, !4152, !4153, !4154, !4155, !4156, !4162, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4179, !4350, !4351, !4562, !4563, !4576, !4577, !4578}
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "event_entry", scope: !3384, file: !235, line: 678, baseType: !113, size: 128)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_list", scope: !3384, file: !235, line: 684, baseType: !113, size: 128, offset: 128)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "active_list", scope: !3384, file: !235, line: 685, baseType: !113, size: 128, offset: 256)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !3384, file: !235, line: 689, baseType: !905, size: 192, align: 64, offset: 384)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "group_index", scope: !3384, file: !235, line: 690, baseType: !585, size: 64, offset: 576)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_entry", scope: !3384, file: !235, line: 696, baseType: !113, size: 128, offset: 640)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "hlist_entry", scope: !3384, file: !235, line: 698, baseType: !819, size: 128, offset: 768)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "active_entry", scope: !3384, file: !235, line: 699, baseType: !113, size: 128, offset: 896)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "nr_siblings", scope: !3384, file: !235, line: 700, baseType: !38, size: 32, offset: 1024)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "event_caps", scope: !3384, file: !235, line: 703, baseType: !38, size: 32, offset: 1056)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "group_caps", scope: !3384, file: !235, line: 705, baseType: !38, size: 32, offset: 1088)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "group_generation", scope: !3384, file: !235, line: 707, baseType: !7, size: 32, offset: 1120)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !3384, file: !235, line: 708, baseType: !3383, size: 64, offset: 1152)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !3384, file: !235, line: 714, baseType: !3400, size: 64, offset: 1216)
!3400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3401, size: 64)
!3401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pmu", file: !235, line: 302, size: 2432, elements: !3402)
!3402 = !{!3403, !3404, !3405, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3818, !3819, !3820, !3821, !3822, !3826, !3827, !3831, !3835, !3836, !3840, !3844, !3845, !3846, !3850, !3854, !3858, !3859, !3860, !3864, !3868, !3872, !3877, !3878, !3898, !3902, !3903, !3904, !3908}
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3401, file: !235, line: 303, baseType: !113, size: 128)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !3401, file: !235, line: 305, baseType: !384, size: 64, offset: 128)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3401, file: !235, line: 306, baseType: !3406, size: 64, offset: 192)
!3406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3407, size: 64)
!3407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !182, line: 705, size: 5824, elements: !3408)
!3408 = !{!3409, !3410, !3411, !3414, !3415, !3468, !3538, !3539, !3540, !3541, !3542, !3549, !3641, !3654, !3664, !3668, !3670, !3671, !3672, !3676, !3683, !3684, !3687, !3690, !3694, !3697, !3698, !3699, !3700, !3701, !3702, !3759, !3760, !3761, !3764, !3767, !3776, !3777, !3778, !3779, !3780, !3781}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3407, file: !182, line: 706, baseType: !397, size: 512)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3407, file: !182, line: 707, baseType: !3406, size: 64, offset: 512)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3407, file: !182, line: 709, baseType: !3412, size: 64, offset: 576)
!3412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3413, size: 64)
!3413 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !182, line: 37, flags: DIFlagFwdDecl)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3407, file: !182, line: 711, baseType: !32, size: 64, offset: 640)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3407, file: !182, line: 712, baseType: !3416, size: 64, offset: 704)
!3416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3417, size: 64)
!3417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3418)
!3418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !182, line: 89, size: 384, elements: !3419)
!3419 = !{!3420, !3421, !3422, !3428, !3433, !3437}
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3418, file: !182, line: 90, baseType: !32, size: 64)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3418, file: !182, line: 91, baseType: !484, size: 64, offset: 64)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3418, file: !182, line: 92, baseType: !3423, size: 64, offset: 128)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = !DISubroutineType(types: !3425)
!3425 = !{!38, !3426, !433}
!3426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3427, size: 64)
!3427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3407)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3418, file: !182, line: 93, baseType: !3429, size: 64, offset: 192)
!3429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3430, size: 64)
!3430 = !DISubroutineType(types: !3431)
!3431 = !{!438, !3426, !3432, !1535, !1536}
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3418, file: !182, line: 95, baseType: !3434, size: 64, offset: 256)
!3434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3435, size: 64)
!3435 = !DISubroutineType(types: !3436)
!3436 = !{null, !3406}
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3418, file: !182, line: 97, baseType: !3438, size: 64, offset: 320)
!3438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3439, size: 64)
!3439 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3440)
!3440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !189, line: 286, size: 1472, elements: !3441)
!3441 = !{!3442, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467}
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3440, file: !189, line: 287, baseType: !3443, size: 64)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = !DISubroutineType(types: !3445)
!3445 = !{!38, !3406}
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3440, file: !189, line: 288, baseType: !3434, size: 64, offset: 64)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3440, file: !189, line: 289, baseType: !3443, size: 64, offset: 128)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3440, file: !189, line: 290, baseType: !3443, size: 64, offset: 192)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3440, file: !189, line: 291, baseType: !3443, size: 64, offset: 256)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3440, file: !189, line: 292, baseType: !3443, size: 64, offset: 320)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3440, file: !189, line: 293, baseType: !3443, size: 64, offset: 384)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3440, file: !189, line: 294, baseType: !3443, size: 64, offset: 448)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3440, file: !189, line: 295, baseType: !3443, size: 64, offset: 512)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3440, file: !189, line: 296, baseType: !3443, size: 64, offset: 576)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3440, file: !189, line: 297, baseType: !3443, size: 64, offset: 640)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3440, file: !189, line: 298, baseType: !3443, size: 64, offset: 704)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3440, file: !189, line: 299, baseType: !3443, size: 64, offset: 768)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3440, file: !189, line: 300, baseType: !3443, size: 64, offset: 832)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3440, file: !189, line: 301, baseType: !3443, size: 64, offset: 896)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3440, file: !189, line: 302, baseType: !3443, size: 64, offset: 960)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3440, file: !189, line: 303, baseType: !3443, size: 64, offset: 1024)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3440, file: !189, line: 304, baseType: !3443, size: 64, offset: 1088)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3440, file: !189, line: 305, baseType: !3443, size: 64, offset: 1152)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3440, file: !189, line: 306, baseType: !3443, size: 64, offset: 1216)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3440, file: !189, line: 307, baseType: !3443, size: 64, offset: 1280)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3440, file: !189, line: 308, baseType: !3443, size: 64, offset: 1344)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3440, file: !189, line: 309, baseType: !3443, size: 64, offset: 1408)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3407, file: !182, line: 714, baseType: !3469, size: 64, offset: 768)
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3470, size: 64)
!3470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3471)
!3471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3472, line: 80, size: 1344, elements: !3473)
!3472 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!3473 = !{!3474, !3475, !3476, !3477, !3478, !3479, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3537}
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3471, file: !3472, line: 81, baseType: !32, size: 64)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3471, file: !3472, line: 82, baseType: !32, size: 64, offset: 64)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3471, file: !3472, line: 83, baseType: !484, size: 64, offset: 128)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3471, file: !3472, line: 84, baseType: !484, size: 64, offset: 192)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3471, file: !3472, line: 85, baseType: !484, size: 64, offset: 256)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3471, file: !3472, line: 87, baseType: !3480, size: 64, offset: 320)
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3481 = !DISubroutineType(types: !3482)
!3482 = !{!38, !3406, !3483}
!3483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3484, size: 64)
!3484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !176, line: 96, size: 1152, elements: !3485)
!3485 = !{!3486, !3487, !3488, !3489, !3490, !3491, !3492, !3496, !3500, !3501, !3502, !3503, !3504, !3512, !3513, !3514, !3515, !3516, !3517}
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3484, file: !176, line: 97, baseType: !32, size: 64)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3484, file: !176, line: 98, baseType: !3469, size: 64, offset: 64)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3484, file: !176, line: 100, baseType: !384, size: 64, offset: 128)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3484, file: !176, line: 101, baseType: !32, size: 64, offset: 192)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3484, file: !176, line: 103, baseType: !1356, size: 8, offset: 256)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3484, file: !176, line: 104, baseType: !175, size: 32, offset: 288)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3484, file: !176, line: 106, baseType: !3493, size: 64, offset: 320)
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3494, size: 64)
!3494 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3495)
!3495 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !176, line: 106, flags: DIFlagFwdDecl)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3484, file: !176, line: 107, baseType: !3497, size: 64, offset: 384)
!3497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3498, size: 64)
!3498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3499)
!3499 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !176, line: 107, flags: DIFlagFwdDecl)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3484, file: !176, line: 109, baseType: !3443, size: 64, offset: 448)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3484, file: !176, line: 110, baseType: !3434, size: 64, offset: 512)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3484, file: !176, line: 111, baseType: !3443, size: 64, offset: 576)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3484, file: !176, line: 112, baseType: !3434, size: 64, offset: 640)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3484, file: !176, line: 113, baseType: !3505, size: 64, offset: 704)
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3506, size: 64)
!3506 = !DISubroutineType(types: !3507)
!3507 = !{!38, !3406, !3508}
!3508 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !189, line: 60, baseType: !3509)
!3509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !189, line: 58, size: 32, elements: !3510)
!3510 = !{!3511}
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3509, file: !189, line: 59, baseType: !38, size: 32)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3484, file: !176, line: 114, baseType: !3443, size: 64, offset: 768)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3484, file: !176, line: 115, baseType: !484, size: 64, offset: 832)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3484, file: !176, line: 116, baseType: !484, size: 64, offset: 896)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3484, file: !176, line: 118, baseType: !3438, size: 64, offset: 960)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3484, file: !176, line: 119, baseType: !3434, size: 64, offset: 1024)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3484, file: !176, line: 121, baseType: !3518, size: 64, offset: 1088)
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3519, size: 64)
!3519 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !176, line: 121, flags: DIFlagFwdDecl)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3471, file: !3472, line: 88, baseType: !3423, size: 64, offset: 384)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3471, file: !3472, line: 89, baseType: !3443, size: 64, offset: 448)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3471, file: !3472, line: 90, baseType: !3434, size: 64, offset: 512)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3471, file: !3472, line: 91, baseType: !3434, size: 64, offset: 576)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3471, file: !3472, line: 92, baseType: !3434, size: 64, offset: 640)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3471, file: !3472, line: 94, baseType: !3443, size: 64, offset: 704)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3471, file: !3472, line: 95, baseType: !3443, size: 64, offset: 768)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3471, file: !3472, line: 97, baseType: !3505, size: 64, offset: 832)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3471, file: !3472, line: 98, baseType: !3443, size: 64, offset: 896)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3471, file: !3472, line: 100, baseType: !3443, size: 64, offset: 960)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3471, file: !3472, line: 102, baseType: !3443, size: 64, offset: 1024)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !3471, file: !3472, line: 103, baseType: !3434, size: 64, offset: 1088)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3471, file: !3472, line: 105, baseType: !3438, size: 64, offset: 1152)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3471, file: !3472, line: 107, baseType: !3534, size: 64, offset: 1216)
!3534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3535, size: 64)
!3535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3536)
!3536 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3472, line: 107, flags: DIFlagFwdDecl)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3471, file: !3472, line: 109, baseType: !1356, size: 8, offset: 1280)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3407, file: !182, line: 715, baseType: !3483, size: 64, offset: 832)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3407, file: !182, line: 717, baseType: !36, size: 64, offset: 896)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3407, file: !182, line: 719, baseType: !36, size: 64, offset: 960)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3407, file: !182, line: 721, baseType: !763, size: 256, offset: 1024)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3407, file: !182, line: 725, baseType: !3543, size: 448, offset: 1280)
!3543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !182, line: 517, size: 448, elements: !3544)
!3544 = !{!3545, !3546, !3547, !3548}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3543, file: !182, line: 518, baseType: !113, size: 128)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3543, file: !182, line: 519, baseType: !113, size: 128, offset: 128)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !3543, file: !182, line: 520, baseType: !113, size: 128, offset: 256)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3543, file: !182, line: 521, baseType: !181, size: 32, offset: 384)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3407, file: !182, line: 726, baseType: !3550, size: 2496, offset: 1728)
!3550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !189, line: 663, size: 2496, elements: !3551)
!3551 = !{!3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3634, !3638}
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3550, file: !189, line: 664, baseType: !3508, size: 32)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3550, file: !189, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3550, file: !189, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3550, file: !189, line: 667, baseType: !1356, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3550, file: !189, line: 668, baseType: !1356, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3550, file: !189, line: 669, baseType: !1356, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3550, file: !189, line: 670, baseType: !1356, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3550, file: !189, line: 671, baseType: !1356, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3550, file: !189, line: 672, baseType: !1356, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3550, file: !189, line: 673, baseType: !1356, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3550, file: !189, line: 674, baseType: !1356, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3550, file: !189, line: 675, baseType: !581, size: 32, offset: 64)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3550, file: !189, line: 676, baseType: !75, size: 32, offset: 96)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3550, file: !189, line: 678, baseType: !113, size: 128, offset: 128)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3550, file: !189, line: 679, baseType: !1510, size: 256, offset: 256)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3550, file: !189, line: 680, baseType: !3568, size: 64, offset: 512)
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3569, size: 64)
!3569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3570, line: 43, size: 1536, elements: !3571)
!3570 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!3571 = !{!3572, !3573, !3574, !3575, !3576, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593}
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3569, file: !3570, line: 44, baseType: !32, size: 64)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3569, file: !3570, line: 45, baseType: !38, size: 32, offset: 64)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3569, file: !3570, line: 46, baseType: !113, size: 128, offset: 128)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3569, file: !3570, line: 47, baseType: !75, size: 32, offset: 256)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3569, file: !3570, line: 48, baseType: !3577, size: 64, offset: 320)
!3577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3578, size: 64)
!3578 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !189, line: 629, flags: DIFlagFwdDecl)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3569, file: !3570, line: 49, baseType: !2327, size: 320, offset: 384)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3569, file: !3570, line: 50, baseType: !55, size: 64, offset: 704)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3569, file: !3570, line: 51, baseType: !983, size: 64, offset: 768)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3569, file: !3570, line: 52, baseType: !983, size: 64, offset: 832)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3569, file: !3570, line: 53, baseType: !983, size: 64, offset: 896)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3569, file: !3570, line: 54, baseType: !983, size: 64, offset: 960)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3569, file: !3570, line: 55, baseType: !983, size: 64, offset: 1024)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3569, file: !3570, line: 56, baseType: !55, size: 64, offset: 1088)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3569, file: !3570, line: 57, baseType: !55, size: 64, offset: 1152)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3569, file: !3570, line: 58, baseType: !55, size: 64, offset: 1216)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3569, file: !3570, line: 59, baseType: !55, size: 64, offset: 1280)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3569, file: !3570, line: 60, baseType: !55, size: 64, offset: 1344)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3569, file: !3570, line: 61, baseType: !3406, size: 64, offset: 1408)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3569, file: !3570, line: 62, baseType: !1356, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3569, file: !3570, line: 63, baseType: !1356, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3550, file: !189, line: 681, baseType: !1356, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3550, file: !189, line: 682, baseType: !1356, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3550, file: !189, line: 683, baseType: !1356, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3550, file: !189, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3550, file: !189, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3550, file: !189, line: 690, baseType: !975, size: 512, offset: 640)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3550, file: !189, line: 691, baseType: !585, size: 64, offset: 1152)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3550, file: !189, line: 692, baseType: !1471, size: 256, offset: 1216)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3550, file: !189, line: 693, baseType: !70, size: 192, offset: 1472)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3550, file: !189, line: 694, baseType: !3577, size: 64, offset: 1664)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3550, file: !189, line: 695, baseType: !65, size: 32, offset: 1728)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3550, file: !189, line: 696, baseType: !65, size: 32, offset: 1760)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3550, file: !189, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3550, file: !189, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3550, file: !189, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3550, file: !189, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !3550, file: !189, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3550, file: !189, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3550, file: !189, line: 703, baseType: !1356, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3550, file: !189, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3550, file: !189, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3550, file: !189, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3550, file: !189, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3550, file: !189, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3550, file: !189, line: 709, baseType: !7, size: 32, offset: 1824)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3550, file: !189, line: 710, baseType: !188, size: 32, offset: 1856)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3550, file: !189, line: 711, baseType: !196, size: 32, offset: 1888)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !3550, file: !189, line: 712, baseType: !196, size: 32, offset: 1920)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3550, file: !189, line: 713, baseType: !38, size: 32, offset: 1952)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3550, file: !189, line: 714, baseType: !38, size: 32, offset: 1984)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3550, file: !189, line: 715, baseType: !585, size: 64, offset: 2048)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3550, file: !189, line: 716, baseType: !585, size: 64, offset: 2112)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3550, file: !189, line: 717, baseType: !585, size: 64, offset: 2176)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3550, file: !189, line: 718, baseType: !585, size: 64, offset: 2240)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3550, file: !189, line: 720, baseType: !3629, size: 64, offset: 2304)
!3629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3630, size: 64)
!3630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !189, line: 632, size: 64, elements: !3631)
!3631 = !{!3632, !3633}
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3630, file: !189, line: 633, baseType: !75, size: 32)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3630, file: !189, line: 634, baseType: !7, size: 32, offset: 32)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3550, file: !189, line: 721, baseType: !3635, size: 64, offset: 2368)
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3636 = !DISubroutineType(types: !3637)
!3637 = !{null, !3406, !1252}
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3550, file: !189, line: 722, baseType: !3639, size: 64, offset: 2432)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !189, line: 722, flags: DIFlagFwdDecl)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3407, file: !182, line: 727, baseType: !3642, size: 64, offset: 4224)
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !189, line: 742, size: 1792, elements: !3644)
!3644 = !{!3645, !3646, !3647, !3651, !3652, !3653}
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3643, file: !189, line: 743, baseType: !3440, size: 1472)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3643, file: !189, line: 744, baseType: !3443, size: 64, offset: 1472)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3643, file: !189, line: 745, baseType: !3648, size: 64, offset: 1536)
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3649 = !DISubroutineType(types: !3650)
!3650 = !{null, !3406, !1356}
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3643, file: !189, line: 746, baseType: !3443, size: 64, offset: 1600)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3643, file: !189, line: 747, baseType: !3434, size: 64, offset: 1664)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3643, file: !189, line: 748, baseType: !3434, size: 64, offset: 1728)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !3407, file: !182, line: 736, baseType: !3655, size: 128, offset: 4288)
!3655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !182, line: 529, size: 128, elements: !3656)
!3656 = !{!3657, !3661}
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3655, file: !182, line: 531, baseType: !3658, size: 64)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3660, line: 13, flags: DIFlagFwdDecl)
!3660 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3655, file: !182, line: 532, baseType: !3662, size: 64, offset: 64)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !182, line: 49, flags: DIFlagFwdDecl)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3407, file: !182, line: 738, baseType: !3665, size: 64, offset: 4416)
!3665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3666, size: 64)
!3666 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3667)
!3667 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !182, line: 738, flags: DIFlagFwdDecl)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3407, file: !182, line: 740, baseType: !3669, size: 64, offset: 4480)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3407, file: !182, line: 741, baseType: !585, size: 64, offset: 4544)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3407, file: !182, line: 746, baseType: !585, size: 64, offset: 4608)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3407, file: !182, line: 747, baseType: !3673, size: 64, offset: 4672)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3675)
!3675 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !182, line: 747, flags: DIFlagFwdDecl)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3407, file: !182, line: 749, baseType: !3677, size: 64, offset: 4736)
!3677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3678, size: 64)
!3678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !182, line: 428, size: 128, elements: !3679)
!3679 = !{!3680, !3681, !3682}
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3678, file: !182, line: 433, baseType: !7, size: 32)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3678, file: !182, line: 434, baseType: !7, size: 32, offset: 32)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3678, file: !182, line: 435, baseType: !55, size: 64, offset: 64)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3407, file: !182, line: 751, baseType: !113, size: 128, offset: 4800)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !3407, file: !182, line: 762, baseType: !3685, size: 64, offset: 4928)
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3686, size: 64)
!3686 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !182, line: 762, flags: DIFlagFwdDecl)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3407, file: !182, line: 770, baseType: !3688, offset: 4992)
!3688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3689, line: 5, elements: !1172)
!3689 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3407, file: !182, line: 772, baseType: !3691, size: 64, offset: 4992)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3693, line: 18, flags: DIFlagFwdDecl)
!3693 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3407, file: !182, line: 773, baseType: !3695, size: 64, offset: 5056)
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3472, line: 22, flags: DIFlagFwdDecl)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !3407, file: !182, line: 776, baseType: !38, size: 32, offset: 5120)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3407, file: !182, line: 778, baseType: !668, size: 32, offset: 5152)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3407, file: !182, line: 779, baseType: !581, size: 32, offset: 5184)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3407, file: !182, line: 781, baseType: !75, size: 32, offset: 5216)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3407, file: !182, line: 782, baseType: !113, size: 128, offset: 5248)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3407, file: !182, line: 784, baseType: !3703, size: 64, offset: 5376)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3705)
!3705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3706, line: 52, size: 768, elements: !3707)
!3706 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3707 = !{!3708, !3709, !3710, !3711, !3712, !3716, !3720, !3721, !3722, !3750, !3754, !3758}
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3705, file: !3706, line: 53, baseType: !32, size: 64)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3705, file: !3706, line: 55, baseType: !484, size: 64, offset: 64)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3705, file: !3706, line: 56, baseType: !484, size: 64, offset: 128)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3705, file: !3706, line: 58, baseType: !3423, size: 64, offset: 192)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3705, file: !3706, line: 59, baseType: !3713, size: 64, offset: 256)
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3714 = !DISubroutineType(types: !3715)
!3715 = !{!438, !3426, !3432}
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3705, file: !3706, line: 61, baseType: !3717, size: 64, offset: 320)
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = !DISubroutineType(types: !3719)
!3719 = !{null, !3703}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3705, file: !3706, line: 62, baseType: !3434, size: 64, offset: 384)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3705, file: !3706, line: 64, baseType: !3443, size: 64, offset: 448)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3705, file: !3706, line: 66, baseType: !3723, size: 64, offset: 512)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3725)
!3725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !204, line: 39, size: 384, elements: !3726)
!3726 = !{!3727, !3728, !3732, !3736, !3742, !3746}
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3725, file: !204, line: 40, baseType: !203, size: 32)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3725, file: !204, line: 41, baseType: !3729, size: 64, offset: 64)
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{!1356}
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3725, file: !204, line: 42, baseType: !3733, size: 64, offset: 128)
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3734 = !DISubroutineType(types: !3735)
!3735 = !{!36}
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3725, file: !204, line: 43, baseType: !3737, size: 64, offset: 192)
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3738, size: 64)
!3738 = !DISubroutineType(types: !3739)
!3739 = !{!1285, !3740}
!3740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3741, size: 64)
!3741 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !204, line: 19, flags: DIFlagFwdDecl)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3725, file: !204, line: 44, baseType: !3743, size: 64, offset: 256)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = !DISubroutineType(types: !3745)
!3745 = !{!1285}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3725, file: !204, line: 45, baseType: !3747, size: 64, offset: 320)
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = !DISubroutineType(types: !3749)
!3749 = !{null, !36}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3705, file: !3706, line: 67, baseType: !3751, size: 64, offset: 576)
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3752, size: 64)
!3752 = !DISubroutineType(types: !3753)
!3753 = !{!1285, !3426}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3705, file: !3706, line: 69, baseType: !3755, size: 64, offset: 640)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = !DISubroutineType(types: !3757)
!3757 = !{null, !3426, !1535, !1536}
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3705, file: !3706, line: 71, baseType: !3438, size: 64, offset: 704)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3407, file: !182, line: 785, baseType: !484, size: 64, offset: 5440)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3407, file: !182, line: 787, baseType: !3434, size: 64, offset: 5504)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3407, file: !182, line: 788, baseType: !3762, size: 64, offset: 5568)
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3763, size: 64)
!3763 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !182, line: 46, flags: DIFlagFwdDecl)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3407, file: !182, line: 789, baseType: !3765, size: 64, offset: 5632)
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3766, size: 64)
!3766 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !182, line: 48, flags: DIFlagFwdDecl)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !3407, file: !182, line: 791, baseType: !3768, size: 64, offset: 5696)
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !182, line: 597, size: 128, elements: !3770)
!3770 = !{!3771, !3772, !3773, !3774, !3775}
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3769, file: !182, line: 598, baseType: !209, size: 32)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3769, file: !182, line: 599, baseType: !218, size: 32, offset: 32)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3769, file: !182, line: 600, baseType: !223, size: 32, offset: 64)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3769, file: !182, line: 601, baseType: !1356, size: 8, offset: 96)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3769, file: !182, line: 602, baseType: !1356, size: 8, offset: 104)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !3407, file: !182, line: 793, baseType: !228, size: 32, offset: 5760)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3407, file: !182, line: 795, baseType: !1356, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3407, file: !182, line: 796, baseType: !1356, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3407, file: !182, line: 797, baseType: !1356, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3407, file: !182, line: 798, baseType: !1356, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !3407, file: !182, line: 799, baseType: !1356, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3401, file: !235, line: 307, baseType: !3406, size: 64, offset: 256)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "attr_groups", scope: !3401, file: !235, line: 308, baseType: !484, size: 64, offset: 320)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "attr_update", scope: !3401, file: !235, line: 309, baseType: !484, size: 64, offset: 384)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3401, file: !235, line: 310, baseType: !32, size: 64, offset: 448)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3401, file: !235, line: 311, baseType: !38, size: 32, offset: 512)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !3401, file: !235, line: 316, baseType: !38, size: 32, offset: 544)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable_count", scope: !3401, file: !235, line: 318, baseType: !1690, size: 64, offset: 576)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_pmu_context", scope: !3401, file: !235, line: 319, baseType: !3790, size: 64, offset: 640)
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cpu_pmu_context", file: !235, line: 977, size: 1856, elements: !3792)
!3792 = !{!3793, !3808, !3810, !3811, !3812, !3813, !3814, !3815, !3816, !3817}
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "epc", scope: !3791, file: !235, line: 978, baseType: !3794, size: 896)
!3794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_pmu_context", file: !235, line: 873, size: 896, elements: !3795)
!3795 = !{!3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !3794, file: !235, line: 874, baseType: !3400, size: 64)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3794, file: !235, line: 875, baseType: !3159, size: 64, offset: 64)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_entry", scope: !3794, file: !235, line: 877, baseType: !113, size: 128, offset: 128)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_active", scope: !3794, file: !235, line: 879, baseType: !113, size: 128, offset: 256)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_active", scope: !3794, file: !235, line: 880, baseType: !113, size: 128, offset: 384)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "embedded", scope: !3794, file: !235, line: 883, baseType: !7, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3794, file: !235, line: 885, baseType: !7, size: 32, offset: 544)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3794, file: !235, line: 886, baseType: !7, size: 32, offset: 576)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3794, file: !235, line: 888, baseType: !65, size: 32, offset: 608)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3794, file: !235, line: 889, baseType: !741, size: 128, align: 64, offset: 640)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_data", scope: !3794, file: !235, line: 891, baseType: !36, size: 64, offset: 768)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_necessary", scope: !3794, file: !235, line: 898, baseType: !38, size: 32, offset: 832)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "task_epc", scope: !3791, file: !235, line: 979, baseType: !3809, size: 64, offset: 896)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_entry", scope: !3791, file: !235, line: 981, baseType: !113, size: 128, offset: 960)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_usage", scope: !3791, file: !235, line: 982, baseType: !38, size: 32, offset: 1088)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "active_oncpu", scope: !3791, file: !235, line: 984, baseType: !38, size: 32, offset: 1120)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3791, file: !235, line: 985, baseType: !38, size: 32, offset: 1152)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_lock", scope: !3791, file: !235, line: 987, baseType: !768, size: 32, offset: 1184)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3791, file: !235, line: 988, baseType: !975, size: 512, offset: 1216)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval", scope: !3791, file: !235, line: 989, baseType: !983, size: 64, offset: 1728)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_active", scope: !3791, file: !235, line: 990, baseType: !7, size: 32, offset: 1792)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive_cnt", scope: !3401, file: !235, line: 320, baseType: !65, size: 32, offset: 704)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_nr", scope: !3401, file: !235, line: 321, baseType: !38, size: 32, offset: 736)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval_ms", scope: !3401, file: !235, line: 322, baseType: !38, size: 32, offset: 768)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "nr_addr_filters", scope: !3401, file: !235, line: 325, baseType: !7, size: 32, offset: 800)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_enable", scope: !3401, file: !235, line: 331, baseType: !3823, size: 64, offset: 832)
!3823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3824, size: 64)
!3824 = !DISubroutineType(types: !3825)
!3825 = !{null, !3400}
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable", scope: !3401, file: !235, line: 332, baseType: !3823, size: 64, offset: 896)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "event_init", scope: !3401, file: !235, line: 350, baseType: !3828, size: 64, offset: 960)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = !DISubroutineType(types: !3830)
!3830 = !{!38, !3383}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "event_mapped", scope: !3401, file: !235, line: 356, baseType: !3832, size: 64, offset: 1024)
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = !DISubroutineType(types: !3834)
!3834 = !{null, !3383, !1151}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "event_unmapped", scope: !3401, file: !235, line: 357, baseType: !3832, size: 64, offset: 1088)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !3401, file: !235, line: 385, baseType: !3837, size: 64, offset: 1152)
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3838, size: 64)
!3838 = !DISubroutineType(types: !3839)
!3839 = !{!38, !3383, !38}
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "del", scope: !3401, file: !235, line: 386, baseType: !3841, size: 64, offset: 1216)
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = !DISubroutineType(types: !3843)
!3843 = !{null, !3383, !38}
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3401, file: !235, line: 406, baseType: !3841, size: 64, offset: 1280)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !3401, file: !235, line: 407, baseType: !3841, size: 64, offset: 1344)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3401, file: !235, line: 415, baseType: !3847, size: 64, offset: 1408)
!3847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3848, size: 64)
!3848 = !DISubroutineType(types: !3849)
!3849 = !{null, !3383}
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "start_txn", scope: !3401, file: !235, line: 427, baseType: !3851, size: 64, offset: 1472)
!3851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3852, size: 64)
!3852 = !DISubroutineType(types: !3853)
!3853 = !{null, !3400, !7}
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "commit_txn", scope: !3401, file: !235, line: 436, baseType: !3855, size: 64, offset: 1536)
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3856, size: 64)
!3856 = !DISubroutineType(types: !3857)
!3857 = !{!38, !3400}
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_txn", scope: !3401, file: !235, line: 443, baseType: !3823, size: 64, offset: 1600)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "event_idx", scope: !3401, file: !235, line: 450, baseType: !3828, size: 64, offset: 1664)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task", scope: !3401, file: !235, line: 455, baseType: !3861, size: 64, offset: 1728)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = !DISubroutineType(types: !3863)
!3863 = !{null, !3809, !1356}
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_cache", scope: !3401, file: !235, line: 461, baseType: !3865, size: 64, offset: 1792)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3867, line: 11, flags: DIFlagFwdDecl)
!3867 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "swap_task_ctx", scope: !3401, file: !235, line: 469, baseType: !3869, size: 64, offset: 1856)
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = !DISubroutineType(types: !3871)
!3871 = !{null, !3809, !3809}
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "setup_aux", scope: !3401, file: !235, line: 476, baseType: !3873, size: 64, offset: 1920)
!3873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3874, size: 64)
!3874 = !DISubroutineType(types: !3875)
!3875 = !{!36, !3383, !3876, !38, !1356}
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "free_aux", scope: !3401, file: !235, line: 483, baseType: !3747, size: 64, offset: 1984)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot_aux", scope: !3401, file: !235, line: 494, baseType: !3879, size: 64, offset: 2048)
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = !DISubroutineType(types: !3881)
!3881 = !{!473, !3383, !3882, !55}
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_output_handle", file: !235, line: 1014, size: 448, elements: !3884)
!3884 = !{!3885, !3886, !3889, !3890, !3891, !3892, !3897}
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3883, file: !235, line: 1015, baseType: !3383, size: 64)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3883, file: !235, line: 1016, baseType: !3887, size: 64, offset: 64)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_buffer", file: !235, line: 641, flags: DIFlagFwdDecl)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3883, file: !235, line: 1017, baseType: !55, size: 64, offset: 128)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3883, file: !235, line: 1018, baseType: !55, size: 64, offset: 192)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "aux_flags", scope: !3883, file: !235, line: 1019, baseType: !585, size: 64, offset: 256)
!3892 = !DIDerivedType(tag: DW_TAG_member, scope: !3883, file: !235, line: 1020, baseType: !3893, size: 64, offset: 320)
!3893 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3883, file: !235, line: 1020, size: 64, elements: !3894)
!3894 = !{!3895, !3896}
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3893, file: !235, line: 1021, baseType: !36, size: 64)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3893, file: !235, line: 1022, baseType: !55, size: 64)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3883, file: !235, line: 1024, baseType: !38, size: 32, offset: 384)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_validate", scope: !3401, file: !235, line: 506, baseType: !3899, size: 64, offset: 2112)
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3900, size: 64)
!3900 = !DISubroutineType(types: !3901)
!3901 = !{!38, !116}
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_sync", scope: !3401, file: !235, line: 520, baseType: !3847, size: 64, offset: 2176)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output_match", scope: !3401, file: !235, line: 530, baseType: !3828, size: 64, offset: 2240)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3401, file: !235, line: 537, baseType: !3905, size: 64, offset: 2304)
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3906, size: 64)
!3906 = !DISubroutineType(types: !3907)
!3907 = !{!1356, !3400, !38}
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "check_period", scope: !3401, file: !235, line: 542, baseType: !3909, size: 64, offset: 2368)
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3910, size: 64)
!3910 = !DISubroutineType(types: !3911)
!3911 = !{!38, !3383, !585}
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_private", scope: !3384, file: !235, line: 715, baseType: !36, size: 64, offset: 1280)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3384, file: !235, line: 717, baseType: !234, size: 32, offset: 1344)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "attach_state", scope: !3384, file: !235, line: 718, baseType: !7, size: 32, offset: 1376)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3384, file: !235, line: 719, baseType: !3916, size: 64, offset: 1408)
!3916 = !DIDerivedType(tag: DW_TAG_typedef, name: "local64_t", file: !3917, line: 26, baseType: !3918)
!3917 = !DIFile(filename: "./include/asm-generic/local64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df4d146c32c49eaacbf0050bc72e4892")
!3918 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3917, line: 24, size: 64, elements: !3919)
!3919 = !{!3920}
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3918, file: !3917, line: 25, baseType: !3191, size: 64)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3384, file: !235, line: 720, baseType: !756, size: 64, offset: 1472)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_enabled", scope: !3384, file: !235, line: 728, baseType: !585, size: 64, offset: 1536)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_running", scope: !3384, file: !235, line: 729, baseType: !585, size: 64, offset: 1600)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp", scope: !3384, file: !235, line: 730, baseType: !585, size: 64, offset: 1664)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3384, file: !235, line: 732, baseType: !3926, size: 1088, offset: 1728)
!3926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_attr", file: !3927, line: 385, size: 1088, elements: !3928)
!3927 = !DIFile(filename: "./include/uapi/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bcad89ece8f79f502358c5429db5ebf0")
!3928 = !{!3929, !3930, !3931, !3932, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3982, !3983, !3990, !3997, !3998, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4006, !4007, !4008}
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3926, file: !3927, line: 390, baseType: !582, size: 32)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3926, file: !3927, line: 395, baseType: !582, size: 32, offset: 32)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3926, file: !3927, line: 400, baseType: !586, size: 64, offset: 64)
!3932 = !DIDerivedType(tag: DW_TAG_member, scope: !3926, file: !3927, line: 402, baseType: !3933, size: 64, offset: 128)
!3933 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3926, file: !3927, line: 402, size: 64, elements: !3934)
!3934 = !{!3935, !3936}
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3933, file: !3927, line: 403, baseType: !586, size: 64)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "sample_freq", scope: !3933, file: !3927, line: 404, baseType: !586, size: 64)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "sample_type", scope: !3926, file: !3927, line: 407, baseType: !586, size: 64, offset: 192)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "read_format", scope: !3926, file: !3927, line: 408, baseType: !586, size: 64, offset: 256)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "disabled", scope: !3926, file: !3927, line: 410, baseType: !586, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "inherit", scope: !3926, file: !3927, line: 411, baseType: !586, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "pinned", scope: !3926, file: !3927, line: 412, baseType: !586, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3926, file: !3927, line: 413, baseType: !586, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_user", scope: !3926, file: !3927, line: 414, baseType: !586, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_kernel", scope: !3926, file: !3927, line: 415, baseType: !586, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_hv", scope: !3926, file: !3927, line: 416, baseType: !586, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_idle", scope: !3926, file: !3927, line: 417, baseType: !586, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3926, file: !3927, line: 418, baseType: !586, size: 1, offset: 328, flags: DIFlagBitField, extraData: i64 320)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3926, file: !3927, line: 419, baseType: !586, size: 1, offset: 329, flags: DIFlagBitField, extraData: i64 320)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !3926, file: !3927, line: 420, baseType: !586, size: 1, offset: 330, flags: DIFlagBitField, extraData: i64 320)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_stat", scope: !3926, file: !3927, line: 421, baseType: !586, size: 1, offset: 331, flags: DIFlagBitField, extraData: i64 320)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "enable_on_exec", scope: !3926, file: !3927, line: 422, baseType: !586, size: 1, offset: 332, flags: DIFlagBitField, extraData: i64 320)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3926, file: !3927, line: 423, baseType: !586, size: 1, offset: 333, flags: DIFlagBitField, extraData: i64 320)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "watermark", scope: !3926, file: !3927, line: 424, baseType: !586, size: 1, offset: 334, flags: DIFlagBitField, extraData: i64 320)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "precise_ip", scope: !3926, file: !3927, line: 435, baseType: !586, size: 2, offset: 335, flags: DIFlagBitField, extraData: i64 320)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_data", scope: !3926, file: !3927, line: 436, baseType: !586, size: 1, offset: 337, flags: DIFlagBitField, extraData: i64 320)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "sample_id_all", scope: !3926, file: !3927, line: 437, baseType: !586, size: 1, offset: 338, flags: DIFlagBitField, extraData: i64 320)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_host", scope: !3926, file: !3927, line: 439, baseType: !586, size: 1, offset: 339, flags: DIFlagBitField, extraData: i64 320)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_guest", scope: !3926, file: !3927, line: 440, baseType: !586, size: 1, offset: 340, flags: DIFlagBitField, extraData: i64 320)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_kernel", scope: !3926, file: !3927, line: 442, baseType: !586, size: 1, offset: 341, flags: DIFlagBitField, extraData: i64 320)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_user", scope: !3926, file: !3927, line: 443, baseType: !586, size: 1, offset: 342, flags: DIFlagBitField, extraData: i64 320)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "mmap2", scope: !3926, file: !3927, line: 444, baseType: !586, size: 1, offset: 343, flags: DIFlagBitField, extraData: i64 320)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "comm_exec", scope: !3926, file: !3927, line: 445, baseType: !586, size: 1, offset: 344, flags: DIFlagBitField, extraData: i64 320)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "use_clockid", scope: !3926, file: !3927, line: 446, baseType: !586, size: 1, offset: 345, flags: DIFlagBitField, extraData: i64 320)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "context_switch", scope: !3926, file: !3927, line: 447, baseType: !586, size: 1, offset: 346, flags: DIFlagBitField, extraData: i64 320)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "write_backward", scope: !3926, file: !3927, line: 448, baseType: !586, size: 1, offset: 347, flags: DIFlagBitField, extraData: i64 320)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "namespaces", scope: !3926, file: !3927, line: 449, baseType: !586, size: 1, offset: 348, flags: DIFlagBitField, extraData: i64 320)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "ksymbol", scope: !3926, file: !3927, line: 450, baseType: !586, size: 1, offset: 349, flags: DIFlagBitField, extraData: i64 320)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "bpf_event", scope: !3926, file: !3927, line: 451, baseType: !586, size: 1, offset: 350, flags: DIFlagBitField, extraData: i64 320)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output", scope: !3926, file: !3927, line: 452, baseType: !586, size: 1, offset: 351, flags: DIFlagBitField, extraData: i64 320)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3926, file: !3927, line: 453, baseType: !586, size: 1, offset: 352, flags: DIFlagBitField, extraData: i64 320)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "text_poke", scope: !3926, file: !3927, line: 454, baseType: !586, size: 1, offset: 353, flags: DIFlagBitField, extraData: i64 320)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "build_id", scope: !3926, file: !3927, line: 455, baseType: !586, size: 1, offset: 354, flags: DIFlagBitField, extraData: i64 320)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_thread", scope: !3926, file: !3927, line: 456, baseType: !586, size: 1, offset: 355, flags: DIFlagBitField, extraData: i64 320)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "remove_on_exec", scope: !3926, file: !3927, line: 457, baseType: !586, size: 1, offset: 356, flags: DIFlagBitField, extraData: i64 320)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "sigtrap", scope: !3926, file: !3927, line: 458, baseType: !586, size: 1, offset: 357, flags: DIFlagBitField, extraData: i64 320)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_1", scope: !3926, file: !3927, line: 459, baseType: !586, size: 26, offset: 358, flags: DIFlagBitField, extraData: i64 320)
!3977 = !DIDerivedType(tag: DW_TAG_member, scope: !3926, file: !3927, line: 461, baseType: !3978, size: 32, offset: 384)
!3978 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3926, file: !3927, line: 461, size: 32, elements: !3979)
!3979 = !{!3980, !3981}
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_events", scope: !3978, file: !3927, line: 462, baseType: !582, size: 32)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_watermark", scope: !3978, file: !3927, line: 463, baseType: !582, size: 32)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "bp_type", scope: !3926, file: !3927, line: 466, baseType: !582, size: 32, offset: 416)
!3983 = !DIDerivedType(tag: DW_TAG_member, scope: !3926, file: !3927, line: 467, baseType: !3984, size: 64, offset: 448)
!3984 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3926, file: !3927, line: 467, size: 64, elements: !3985)
!3985 = !{!3986, !3987, !3988, !3989}
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "bp_addr", scope: !3984, file: !3927, line: 468, baseType: !586, size: 64)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_func", scope: !3984, file: !3927, line: 469, baseType: !586, size: 64)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe_path", scope: !3984, file: !3927, line: 470, baseType: !586, size: 64)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "config1", scope: !3984, file: !3927, line: 471, baseType: !586, size: 64)
!3990 = !DIDerivedType(tag: DW_TAG_member, scope: !3926, file: !3927, line: 473, baseType: !3991, size: 64, offset: 512)
!3991 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3926, file: !3927, line: 473, size: 64, elements: !3992)
!3992 = !{!3993, !3994, !3995, !3996}
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "bp_len", scope: !3991, file: !3927, line: 474, baseType: !586, size: 64)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_addr", scope: !3991, file: !3927, line: 475, baseType: !586, size: 64)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "probe_offset", scope: !3991, file: !3927, line: 476, baseType: !586, size: 64)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "config2", scope: !3991, file: !3927, line: 477, baseType: !586, size: 64)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "branch_sample_type", scope: !3926, file: !3927, line: 479, baseType: !586, size: 64, offset: 576)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_user", scope: !3926, file: !3927, line: 485, baseType: !586, size: 64, offset: 640)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "sample_stack_user", scope: !3926, file: !3927, line: 490, baseType: !582, size: 32, offset: 704)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3926, file: !3927, line: 492, baseType: !1253, size: 32, offset: 736)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_intr", scope: !3926, file: !3927, line: 501, baseType: !586, size: 64, offset: 768)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "aux_watermark", scope: !3926, file: !3927, line: 506, baseType: !582, size: 32, offset: 832)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "sample_max_stack", scope: !3926, file: !3927, line: 507, baseType: !110, size: 16, offset: 864)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_2", scope: !3926, file: !3927, line: 508, baseType: !110, size: 16, offset: 880)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "aux_sample_size", scope: !3926, file: !3927, line: 509, baseType: !582, size: 32, offset: 896)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_3", scope: !3926, file: !3927, line: 510, baseType: !582, size: 32, offset: 928)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "sig_data", scope: !3926, file: !3927, line: 518, baseType: !586, size: 64, offset: 960)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "config3", scope: !3926, file: !3927, line: 520, baseType: !586, size: 64, offset: 1024)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !3384, file: !235, line: 733, baseType: !109, size: 16, offset: 2816)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "id_header_size", scope: !3384, file: !235, line: 734, baseType: !109, size: 16, offset: 2832)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "read_size", scope: !3384, file: !235, line: 735, baseType: !109, size: 16, offset: 2848)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !3384, file: !235, line: 736, baseType: !4013, size: 1536, offset: 2880)
!4013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event", file: !235, line: 155, size: 1536, elements: !4014)
!4014 = !{!4015, !4080, !4081, !4082, !4083, !4084, !4085, !4086, !4099, !4100, !4101, !4102}
!4015 = !DIDerivedType(tag: DW_TAG_member, scope: !4013, file: !235, line: 157, baseType: !4016, size: 768)
!4016 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4013, file: !235, line: 157, size: 768, elements: !4017)
!4017 = !{!4018, !4037, !4041, !4045, !4050, !4072}
!4018 = !DIDerivedType(tag: DW_TAG_member, scope: !4016, file: !235, line: 158, baseType: !4019, size: 768)
!4019 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4016, file: !235, line: 158, size: 768, elements: !4020)
!4020 = !{!4021, !4022, !4023, !4024, !4025, !4026, !4027, !4028, !4029, !4036}
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !4019, file: !235, line: 159, baseType: !585, size: 64)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "last_tag", scope: !4019, file: !235, line: 160, baseType: !585, size: 64, offset: 64)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "config_base", scope: !4019, file: !235, line: 161, baseType: !55, size: 64, offset: 128)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "event_base", scope: !4019, file: !235, line: 162, baseType: !55, size: 64, offset: 192)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "event_base_rdpmc", scope: !4019, file: !235, line: 163, baseType: !38, size: 32, offset: 256)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !4019, file: !235, line: 164, baseType: !38, size: 32, offset: 288)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4019, file: !235, line: 165, baseType: !38, size: 32, offset: 320)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4019, file: !235, line: 166, baseType: !38, size: 32, offset: 352)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "extra_reg", scope: !4019, file: !235, line: 168, baseType: !4030, size: 192, offset: 384)
!4030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event_extra", file: !235, line: 134, size: 192, elements: !4031)
!4031 = !{!4032, !4033, !4034, !4035}
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !4030, file: !235, line: 135, baseType: !585, size: 64)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !4030, file: !235, line: 136, baseType: !7, size: 32, offset: 64)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !4030, file: !235, line: 137, baseType: !38, size: 32, offset: 96)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !4030, file: !235, line: 138, baseType: !38, size: 32, offset: 128)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "branch_reg", scope: !4019, file: !235, line: 169, baseType: !4030, size: 192, offset: 576)
!4037 = !DIDerivedType(tag: DW_TAG_member, scope: !4016, file: !235, line: 171, baseType: !4038, size: 512)
!4038 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4016, file: !235, line: 171, size: 512, elements: !4039)
!4039 = !{!4040}
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !4038, file: !235, line: 172, baseType: !975, size: 512)
!4041 = !DIDerivedType(tag: DW_TAG_member, scope: !4016, file: !235, line: 174, baseType: !4042, size: 128)
!4042 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4016, file: !235, line: 174, size: 128, elements: !4043)
!4043 = !{!4044}
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "tp_list", scope: !4042, file: !235, line: 176, baseType: !113, size: 128)
!4045 = !DIDerivedType(tag: DW_TAG_member, scope: !4016, file: !235, line: 178, baseType: !4046, size: 128)
!4046 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4016, file: !235, line: 178, size: 128, elements: !4047)
!4047 = !{!4048, !4049}
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "pwr_acc", scope: !4046, file: !235, line: 179, baseType: !585, size: 64)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "ptsc", scope: !4046, file: !235, line: 180, baseType: !585, size: 64, offset: 64)
!4050 = !DIDerivedType(tag: DW_TAG_member, scope: !4016, file: !235, line: 183, baseType: !4051, size: 320)
!4051 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4016, file: !235, line: 183, size: 320, elements: !4052)
!4052 = !{!4053, !4061}
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4051, file: !235, line: 189, baseType: !4054, size: 192)
!4054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_hw_breakpoint", file: !4055, line: 14, size: 192, elements: !4056)
!4055 = !DIFile(filename: "./arch/x86/include/asm/hw_breakpoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "107c509acefbbe18efeb522731cf3028")
!4056 = !{!4057, !4058, !4059, !4060}
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !4054, file: !4055, line: 15, baseType: !55, size: 64)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4054, file: !4055, line: 16, baseType: !55, size: 64, offset: 64)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4054, file: !4055, line: 17, baseType: !99, size: 8, offset: 128)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4054, file: !4055, line: 18, baseType: !99, size: 8, offset: 136)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "bp_list", scope: !4051, file: !235, line: 190, baseType: !4062, size: 128, offset: 192)
!4062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhlist_head", file: !4063, line: 21, size: 128, elements: !4064)
!4063 = !DIFile(filename: "./include/linux/rhashtable-types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99b3652a01a9d39bb1c8b53f50a53014")
!4064 = !{!4065, !4070}
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "rhead", scope: !4062, file: !4063, line: 22, baseType: !4066, size: 64)
!4066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhash_head", file: !4063, line: 17, size: 64, elements: !4067)
!4067 = !{!4068}
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4066, file: !4063, line: 18, baseType: !4069, size: 64)
!4069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4066, size: 64)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4062, file: !4063, line: 23, baseType: !4071, size: 64, offset: 64)
!4071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4062, size: 64)
!4072 = !DIDerivedType(tag: DW_TAG_member, scope: !4016, file: !235, line: 193, baseType: !4073, size: 192)
!4073 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4016, file: !235, line: 193, size: 192, elements: !4074)
!4074 = !{!4075, !4076, !4077, !4078, !4079}
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_bank", scope: !4073, file: !235, line: 194, baseType: !99, size: 8)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_cntr", scope: !4073, file: !235, line: 195, baseType: !99, size: 8, offset: 8)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4073, file: !235, line: 196, baseType: !109, size: 16, offset: 16)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !4073, file: !235, line: 197, baseType: !585, size: 64, offset: 64)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "conf1", scope: !4073, file: !235, line: 198, baseType: !585, size: 64, offset: 128)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !4013, file: !235, line: 205, baseType: !856, size: 64, offset: 768)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !4013, file: !235, line: 211, baseType: !36, size: 64, offset: 832)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !4013, file: !235, line: 214, baseType: !55, size: 64, offset: 896)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4013, file: !235, line: 223, baseType: !38, size: 32, offset: 960)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "prev_count", scope: !4013, file: !235, line: 229, baseType: !3916, size: 64, offset: 1024)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !4013, file: !235, line: 234, baseType: !585, size: 64, offset: 1088)
!4086 = !DIDerivedType(tag: DW_TAG_member, scope: !4013, file: !235, line: 236, baseType: !4087, size: 128, offset: 1152)
!4087 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4013, file: !235, line: 236, size: 128, elements: !4088)
!4088 = !{!4089, !4094}
!4089 = !DIDerivedType(tag: DW_TAG_member, scope: !4087, file: !235, line: 237, baseType: !4090, size: 128)
!4090 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4087, file: !235, line: 237, size: 128, elements: !4091)
!4091 = !{!4092, !4093}
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "last_period", scope: !4090, file: !235, line: 241, baseType: !585, size: 64)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "period_left", scope: !4090, file: !235, line: 249, baseType: !3916, size: 64, offset: 64)
!4094 = !DIDerivedType(tag: DW_TAG_member, scope: !4087, file: !235, line: 251, baseType: !4095, size: 128)
!4095 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4087, file: !235, line: 251, size: 128, elements: !4096)
!4096 = !{!4097, !4098}
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "saved_metric", scope: !4095, file: !235, line: 252, baseType: !585, size: 64)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "saved_slots", scope: !4095, file: !235, line: 253, baseType: !585, size: 64, offset: 64)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts_seq", scope: !4013, file: !235, line: 261, baseType: !585, size: 64, offset: 1280)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !4013, file: !235, line: 262, baseType: !585, size: 64, offset: 1344)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "freq_time_stamp", scope: !4013, file: !235, line: 268, baseType: !585, size: 64, offset: 1408)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "freq_count_stamp", scope: !4013, file: !235, line: 269, baseType: !585, size: 64, offset: 1472)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3384, file: !235, line: 738, baseType: !3159, size: 64, offset: 4416)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx", scope: !3384, file: !235, line: 744, baseType: !3809, size: 64, offset: 4480)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3384, file: !235, line: 745, baseType: !754, size: 64, offset: 4544)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_enabled", scope: !3384, file: !235, line: 751, baseType: !756, size: 64, offset: 4608)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_running", scope: !3384, file: !235, line: 752, baseType: !756, size: 64, offset: 4672)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "child_mutex", scope: !3384, file: !235, line: 757, baseType: !763, size: 256, offset: 4736)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "child_list", scope: !3384, file: !235, line: 758, baseType: !113, size: 128, offset: 4992)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3384, file: !235, line: 759, baseType: !3383, size: 64, offset: 5120)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "oncpu", scope: !3384, file: !235, line: 761, baseType: !38, size: 32, offset: 5184)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3384, file: !235, line: 762, baseType: !38, size: 32, offset: 5216)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "owner_entry", scope: !3384, file: !235, line: 764, baseType: !113, size: 128, offset: 5248)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3384, file: !235, line: 765, baseType: !856, size: 64, offset: 5376)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_mutex", scope: !3384, file: !235, line: 768, baseType: !763, size: 256, offset: 5440)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_count", scope: !3384, file: !235, line: 769, baseType: !65, size: 32, offset: 5696)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3384, file: !235, line: 771, baseType: !3887, size: 64, offset: 5760)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "rb_entry", scope: !3384, file: !235, line: 772, baseType: !113, size: 128, offset: 5824)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_batches", scope: !3384, file: !235, line: 773, baseType: !55, size: 64, offset: 5952)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_pending", scope: !3384, file: !235, line: 774, baseType: !38, size: 32, offset: 6016)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !3384, file: !235, line: 777, baseType: !70, size: 192, offset: 6080)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3384, file: !235, line: 778, baseType: !4123, size: 64, offset: 6272)
!4123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4124, size: 64)
!4124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !288, line: 1083, size: 384, elements: !4125)
!4125 = !{!4126, !4127, !4128, !4129, !4130, !4131}
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !4124, file: !288, line: 1084, baseType: !781, size: 64)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !4124, file: !288, line: 1085, baseType: !38, size: 32, offset: 64)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !4124, file: !288, line: 1086, baseType: !38, size: 32, offset: 96)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !4124, file: !288, line: 1087, baseType: !4123, size: 64, offset: 128)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !4124, file: !288, line: 1088, baseType: !728, size: 64, offset: 192)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !4124, file: !288, line: 1089, baseType: !741, size: 128, align: 64, offset: 256)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "pending_wakeup", scope: !3384, file: !235, line: 781, baseType: !7, size: 32, offset: 6336)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "pending_kill", scope: !3384, file: !235, line: 782, baseType: !7, size: 32, offset: 6368)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "pending_disable", scope: !3384, file: !235, line: 783, baseType: !7, size: 32, offset: 6400)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "pending_sigtrap", scope: !3384, file: !235, line: 784, baseType: !7, size: 32, offset: 6432)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "pending_addr", scope: !3384, file: !235, line: 785, baseType: !55, size: 64, offset: 6464)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "pending_irq", scope: !3384, file: !235, line: 786, baseType: !4138, size: 256, offset: 6528)
!4138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_work", file: !4139, line: 17, size: 256, elements: !4140)
!4139 = !DIFile(filename: "./include/linux/irq_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "897aa98b7525a8c43c93f11203b0d4f0")
!4140 = !{!4141, !4142, !4147}
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4138, file: !4139, line: 18, baseType: !875, size: 128)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4138, file: !4139, line: 19, baseType: !4143, size: 64, offset: 128)
!4143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4144, size: 64)
!4144 = !DISubroutineType(types: !4145)
!4145 = !{null, !4146}
!4146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "irqwait", scope: !4138, file: !4139, line: 20, baseType: !4148, size: 64, offset: 192)
!4148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !4149, line: 16, size: 64, elements: !4150)
!4149 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!4150 = !{!4151}
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4148, file: !4149, line: 17, baseType: !856, size: 64)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "pending_task", scope: !3384, file: !235, line: 787, baseType: !741, size: 128, align: 64, offset: 6784)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work", scope: !3384, file: !235, line: 788, baseType: !7, size: 32, offset: 6912)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work_wait", scope: !3384, file: !235, line: 789, baseType: !4148, size: 64, offset: 6976)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "event_limit", scope: !3384, file: !235, line: 791, baseType: !65, size: 32, offset: 7040)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !3384, file: !235, line: 794, baseType: !4157, size: 192, offset: 7104)
!4157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filters_head", file: !235, line: 579, size: 192, elements: !4158)
!4158 = !{!4159, !4160, !4161}
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4157, file: !235, line: 580, baseType: !113, size: 128)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4157, file: !235, line: 581, baseType: !768, size: 32, offset: 128)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "nr_file_filters", scope: !4157, file: !235, line: 582, baseType: !7, size: 32, offset: 160)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filter_ranges", scope: !3384, file: !235, line: 796, baseType: !4163, size: 64, offset: 7296)
!4163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4164, size: 64)
!4164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filter_range", file: !235, line: 585, size: 128, elements: !4165)
!4165 = !{!4166, !4167}
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4164, file: !235, line: 586, baseType: !55, size: 64)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4164, file: !235, line: 587, baseType: !55, size: 64, offset: 64)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !3384, file: !235, line: 797, baseType: !55, size: 64, offset: 7360)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "aux_event", scope: !3384, file: !235, line: 800, baseType: !3383, size: 64, offset: 7424)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !3384, file: !235, line: 802, baseType: !3847, size: 64, offset: 7488)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3384, file: !235, line: 803, baseType: !741, size: 128, align: 64, offset: 7552)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3384, file: !235, line: 805, baseType: !835, size: 64, offset: 7680)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3384, file: !235, line: 806, baseType: !585, size: 64, offset: 7744)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "lost_samples", scope: !3384, file: !235, line: 808, baseType: !756, size: 64, offset: 7808)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !3384, file: !235, line: 810, baseType: !4176, size: 64, offset: 7872)
!4176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4177, size: 64)
!4177 = !DISubroutineType(types: !4178)
!4178 = !{!585}
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler", scope: !3384, file: !235, line: 811, baseType: !4180, size: 64, offset: 7936)
!4180 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_overflow_handler_t", file: !235, line: 605, baseType: !4181)
!4181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4182, size: 64)
!4182 = !DISubroutineType(types: !4183)
!4183 = !{null, !3383, !4184, !4289}
!4184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4185, size: 64)
!4185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_sample_data", file: !235, line: 1148, size: 2048, align: 512, elements: !4186)
!4186 = !{!4187, !4188, !4189, !4190, !4191, !4196, !4197, !4198, !4203, !4204, !4211, !4232, !4254, !4264, !4282, !4283, !4341, !4342, !4343, !4344, !4345, !4346, !4347, !4348, !4349}
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "sample_flags", scope: !4185, file: !235, line: 1153, baseType: !585, size: 64)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !4185, file: !235, line: 1154, baseType: !585, size: 64, offset: 64)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "dyn_size", scope: !4185, file: !235, line: 1155, baseType: !585, size: 64, offset: 128)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4185, file: !235, line: 1161, baseType: !585, size: 64, offset: 192)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "tid_entry", scope: !4185, file: !235, line: 1165, baseType: !4192, size: 64, offset: 256)
!4192 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4185, file: !235, line: 1162, size: 64, elements: !4193)
!4193 = !{!4194, !4195}
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !4192, file: !235, line: 1163, baseType: !581, size: 32)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !4192, file: !235, line: 1164, baseType: !581, size: 32, offset: 32)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4185, file: !235, line: 1166, baseType: !585, size: 64, offset: 320)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4185, file: !235, line: 1167, baseType: !585, size: 64, offset: 384)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_entry", scope: !4185, file: !235, line: 1171, baseType: !4199, size: 64, offset: 448)
!4199 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4185, file: !235, line: 1168, size: 64, elements: !4200)
!4200 = !{!4201, !4202}
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4199, file: !235, line: 1169, baseType: !581, size: 32)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4199, file: !235, line: 1170, baseType: !581, size: 32, offset: 32)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4185, file: !235, line: 1177, baseType: !585, size: 64, offset: 512)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "callchain", scope: !4185, file: !235, line: 1178, baseType: !4205, size: 64, offset: 576)
!4205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4206, size: 64)
!4206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_callchain_entry", file: !235, line: 67, size: 64, elements: !4207)
!4207 = !{!4208, !4209}
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !4206, file: !235, line: 68, baseType: !586, size: 64)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4206, file: !235, line: 69, baseType: !4210, offset: 64)
!4210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !586, elements: !725)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !4185, file: !235, line: 1179, baseType: !4212, size: 64, offset: 640)
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_record", file: !235, line: 93, size: 256, elements: !4214)
!4214 = !{!4215, !4231}
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "frag", scope: !4213, file: !235, line: 94, baseType: !4216, size: 224)
!4216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_frag", file: !235, line: 83, size: 224, elements: !4217)
!4217 = !{!4218, !4224, !4229, !4230}
!4218 = !DIDerivedType(tag: DW_TAG_member, scope: !4216, file: !235, line: 84, baseType: !4219, size: 64)
!4219 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4216, file: !235, line: 84, size: 64, elements: !4220)
!4220 = !{!4221, !4223}
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4219, file: !235, line: 85, baseType: !4222, size: 64)
!4222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4216, size: 64)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !4219, file: !235, line: 86, baseType: !55, size: 64)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !4216, file: !235, line: 88, baseType: !4225, size: 64, offset: 64)
!4225 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_copy_f", file: !235, line: 80, baseType: !4226)
!4226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4227, size: 64)
!4227 = !DISubroutineType(types: !4228)
!4228 = !{!55, !36, !1285, !55, !55}
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4216, file: !235, line: 89, baseType: !36, size: 64, offset: 128)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4216, file: !235, line: 90, baseType: !581, size: 32, offset: 192)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4213, file: !235, line: 95, baseType: !581, size: 32, offset: 224)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "br_stack", scope: !4185, file: !235, line: 1180, baseType: !4233, size: 64, offset: 704)
!4233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4234, size: 64)
!4234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_stack", file: !235, line: 123, size: 128, elements: !4235)
!4235 = !{!4236, !4237, !4238}
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !4234, file: !235, line: 124, baseType: !586, size: 64)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "hw_idx", scope: !4234, file: !235, line: 125, baseType: !586, size: 64, offset: 64)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !4234, file: !235, line: 126, baseType: !4239, offset: 128)
!4239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4240, elements: !725)
!4240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_entry", file: !3927, line: 1415, size: 192, elements: !4241)
!4241 = !{!4242, !4243, !4244, !4245, !4246, !4247, !4248, !4249, !4250, !4251, !4252, !4253}
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !4240, file: !3927, line: 1416, baseType: !586, size: 64)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !4240, file: !3927, line: 1417, baseType: !586, size: 64, offset: 64)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "mispred", scope: !4240, file: !3927, line: 1418, baseType: !586, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "predicted", scope: !4240, file: !3927, line: 1419, baseType: !586, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "in_tx", scope: !4240, file: !3927, line: 1420, baseType: !586, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "abort", scope: !4240, file: !3927, line: 1421, baseType: !586, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "cycles", scope: !4240, file: !3927, line: 1422, baseType: !586, size: 16, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4240, file: !3927, line: 1423, baseType: !586, size: 4, offset: 148, flags: DIFlagBitField, extraData: i64 128)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "spec", scope: !4240, file: !3927, line: 1424, baseType: !586, size: 2, offset: 152, flags: DIFlagBitField, extraData: i64 128)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "new_type", scope: !4240, file: !3927, line: 1425, baseType: !586, size: 4, offset: 154, flags: DIFlagBitField, extraData: i64 128)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4240, file: !3927, line: 1426, baseType: !586, size: 3, offset: 158, flags: DIFlagBitField, extraData: i64 128)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4240, file: !3927, line: 1427, baseType: !586, size: 31, offset: 161, flags: DIFlagBitField, extraData: i64 128)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !4185, file: !235, line: 1181, baseType: !4255, size: 64, offset: 768)
!4255 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_sample_weight", file: !3927, line: 1430, size: 64, elements: !4256)
!4256 = !{!4257, !4258}
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !4255, file: !3927, line: 1431, baseType: !586, size: 64)
!4258 = !DIDerivedType(tag: DW_TAG_member, scope: !4255, file: !3927, line: 1433, baseType: !4259, size: 64)
!4259 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4255, file: !3927, line: 1433, size: 64, elements: !4260)
!4260 = !{!4261, !4262, !4263}
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "var1_dw", scope: !4259, file: !3927, line: 1434, baseType: !582, size: 32)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "var2_w", scope: !4259, file: !3927, line: 1435, baseType: !110, size: 16, offset: 32)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "var3_w", scope: !4259, file: !3927, line: 1436, baseType: !110, size: 16, offset: 48)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "data_src", scope: !4185, file: !235, line: 1182, baseType: !4265, size: 64, offset: 832)
!4265 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_mem_data_src", file: !3927, line: 1267, size: 64, elements: !4266)
!4266 = !{!4267, !4268}
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4265, file: !3927, line: 1268, baseType: !586, size: 64)
!4268 = !DIDerivedType(tag: DW_TAG_member, scope: !4265, file: !3927, line: 1269, baseType: !4269, size: 64)
!4269 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4265, file: !3927, line: 1269, size: 64, elements: !4270)
!4270 = !{!4271, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4279, !4280, !4281}
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "mem_op", scope: !4269, file: !3927, line: 1270, baseType: !586, size: 5, flags: DIFlagBitField, extraData: i64 0)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl", scope: !4269, file: !3927, line: 1271, baseType: !586, size: 14, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoop", scope: !4269, file: !3927, line: 1272, baseType: !586, size: 5, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lock", scope: !4269, file: !3927, line: 1273, baseType: !586, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "mem_dtlb", scope: !4269, file: !3927, line: 1274, baseType: !586, size: 7, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl_num", scope: !4269, file: !3927, line: 1275, baseType: !586, size: 4, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "mem_remote", scope: !4269, file: !3927, line: 1276, baseType: !586, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoopx", scope: !4269, file: !3927, line: 1277, baseType: !586, size: 2, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "mem_blk", scope: !4269, file: !3927, line: 1278, baseType: !586, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "mem_hops", scope: !4269, file: !3927, line: 1279, baseType: !586, size: 3, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "mem_rsvd", scope: !4269, file: !3927, line: 1280, baseType: !586, size: 18, offset: 46, flags: DIFlagBitField, extraData: i64 0)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "txn", scope: !4185, file: !235, line: 1183, baseType: !585, size: 64, offset: 896)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "regs_user", scope: !4185, file: !235, line: 1185, baseType: !4284, size: 128, offset: 960)
!4284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_regs", file: !4285, line: 7, size: 128, elements: !4286)
!4285 = !DIFile(filename: "./include/linux/perf_regs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ddec4c01469dcac1787a884df1c79d64")
!4286 = !{!4287, !4288}
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "abi", scope: !4284, file: !4285, line: 8, baseType: !586, size: 64)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4284, file: !4285, line: 9, baseType: !4289, size: 64, offset: 64)
!4289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4290, size: 64)
!4290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4291, line: 103, size: 1344, elements: !4292)
!4291 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4292 = !{!4293, !4294, !4295, !4296, !4297, !4298, !4299, !4300, !4301, !4302, !4303, !4304, !4305, !4306, !4307, !4308, !4309, !4310, !4321, !4322, !4323}
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4290, file: !4291, line: 109, baseType: !55, size: 64)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4290, file: !4291, line: 110, baseType: !55, size: 64, offset: 64)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4290, file: !4291, line: 111, baseType: !55, size: 64, offset: 128)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4290, file: !4291, line: 112, baseType: !55, size: 64, offset: 192)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4290, file: !4291, line: 113, baseType: !55, size: 64, offset: 256)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4290, file: !4291, line: 114, baseType: !55, size: 64, offset: 320)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4290, file: !4291, line: 117, baseType: !55, size: 64, offset: 384)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4290, file: !4291, line: 118, baseType: !55, size: 64, offset: 448)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4290, file: !4291, line: 119, baseType: !55, size: 64, offset: 512)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4290, file: !4291, line: 120, baseType: !55, size: 64, offset: 576)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4290, file: !4291, line: 121, baseType: !55, size: 64, offset: 640)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4290, file: !4291, line: 122, baseType: !55, size: 64, offset: 704)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4290, file: !4291, line: 123, baseType: !55, size: 64, offset: 768)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4290, file: !4291, line: 124, baseType: !55, size: 64, offset: 832)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4290, file: !4291, line: 125, baseType: !55, size: 64, offset: 896)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4290, file: !4291, line: 139, baseType: !55, size: 64, offset: 960)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4290, file: !4291, line: 142, baseType: !55, size: 64, offset: 1024)
!4310 = !DIDerivedType(tag: DW_TAG_member, scope: !4290, file: !4291, line: 144, baseType: !4311, size: 64, offset: 1088)
!4311 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4290, file: !4291, line: 144, size: 64, elements: !4312)
!4312 = !{!4313, !4314, !4315}
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4311, file: !4291, line: 146, baseType: !109, size: 16)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4311, file: !4291, line: 148, baseType: !585, size: 64)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4311, file: !4291, line: 150, baseType: !4316, size: 64)
!4316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4291, line: 59, size: 64, elements: !4317)
!4317 = !{!4318, !4319, !4320}
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4316, file: !4291, line: 61, baseType: !585, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4316, file: !4291, line: 63, baseType: !585, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4316, file: !4291, line: 65, baseType: !585, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4290, file: !4291, line: 153, baseType: !55, size: 64, offset: 1152)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4290, file: !4291, line: 154, baseType: !55, size: 64, offset: 1216)
!4323 = !DIDerivedType(tag: DW_TAG_member, scope: !4290, file: !4291, line: 156, baseType: !4324, size: 64, offset: 1280)
!4324 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4290, file: !4291, line: 156, size: 64, elements: !4325)
!4325 = !{!4326, !4327, !4328}
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4324, file: !4291, line: 158, baseType: !109, size: 16)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4324, file: !4291, line: 160, baseType: !585, size: 64)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4324, file: !4291, line: 162, baseType: !4329, size: 64)
!4329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4291, line: 69, size: 64, elements: !4330)
!4330 = !{!4331, !4332, !4333, !4334, !4335, !4336, !4337, !4338, !4339, !4340}
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4329, file: !4291, line: 71, baseType: !585, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4329, file: !4291, line: 73, baseType: !585, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4329, file: !4291, line: 75, baseType: !585, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4329, file: !4291, line: 77, baseType: !585, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4329, file: !4291, line: 80, baseType: !585, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4329, file: !4291, line: 83, baseType: !585, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4329, file: !4291, line: 86, baseType: !585, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4329, file: !4291, line: 88, baseType: !585, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4329, file: !4291, line: 93, baseType: !585, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4329, file: !4291, line: 100, baseType: !585, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "regs_intr", scope: !4185, file: !235, line: 1186, baseType: !4284, size: 128, offset: 1088)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "stack_user_size", scope: !4185, file: !235, line: 1187, baseType: !585, size: 64, offset: 1216)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !4185, file: !235, line: 1189, baseType: !585, size: 64, offset: 1280)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !4185, file: !235, line: 1190, baseType: !585, size: 64, offset: 1344)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4185, file: !235, line: 1191, baseType: !585, size: 64, offset: 1408)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !4185, file: !235, line: 1192, baseType: !585, size: 64, offset: 1472)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "data_page_size", scope: !4185, file: !235, line: 1193, baseType: !585, size: 64, offset: 1536)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "code_page_size", scope: !4185, file: !235, line: 1194, baseType: !585, size: 64, offset: 1600)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "aux_size", scope: !4185, file: !235, line: 1195, baseType: !585, size: 64, offset: 1664)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler_context", scope: !3384, file: !235, line: 812, baseType: !36, size: 64, offset: 8000)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "tp_event", scope: !3384, file: !235, line: 820, baseType: !4352, size: 64, offset: 8064)
!4352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4353, size: 64)
!4353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !244, line: 372, size: 1024, elements: !4354)
!4354 = !{!4355, !4356, !4395, !4463, !4541, !4542, !4545, !4550, !4551, !4552, !4553, !4555, !4558}
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4353, file: !244, line: 373, baseType: !113, size: 128)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4353, file: !244, line: 374, baseType: !4357, size: 64, offset: 128)
!4357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4358, size: 64)
!4358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_class", file: !244, line: 291, size: 576, elements: !4359)
!4359 = !{!4360, !4361, !4362, !4363, !4367, !4389, !4393, !4394}
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !4358, file: !244, line: 292, baseType: !32, size: 64)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4358, file: !244, line: 293, baseType: !36, size: 64, offset: 64)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "perf_probe", scope: !4358, file: !244, line: 295, baseType: !36, size: 64, offset: 128)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !4358, file: !244, line: 297, baseType: !4364, size: 64, offset: 192)
!4364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4365, size: 64)
!4365 = !DISubroutineType(types: !4366)
!4366 = !{!38, !4352, !243, !36}
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "fields_array", scope: !4358, file: !244, line: 299, baseType: !4368, size: 64, offset: 256)
!4368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4369, size: 64)
!4369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_fields", file: !244, line: 275, size: 320, elements: !4370)
!4370 = !{!4371, !4372}
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4369, file: !244, line: 276, baseType: !32, size: 64)
!4372 = !DIDerivedType(tag: DW_TAG_member, scope: !4369, file: !244, line: 277, baseType: !4373, size: 256, offset: 64)
!4373 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4369, file: !244, line: 277, size: 256, elements: !4374)
!4374 = !{!4375, !4385}
!4375 = !DIDerivedType(tag: DW_TAG_member, scope: !4373, file: !244, line: 278, baseType: !4376, size: 256)
!4376 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4373, file: !244, line: 278, size: 256, elements: !4377)
!4377 = !{!4378, !4379, !4380, !4381, !4382, !4383, !4384}
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4376, file: !244, line: 279, baseType: !32, size: 64)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4376, file: !244, line: 280, baseType: !3032, size: 32, offset: 64)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !4376, file: !244, line: 281, baseType: !3032, size: 32, offset: 96)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "is_signed", scope: !4376, file: !244, line: 282, baseType: !3030, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "needs_test", scope: !4376, file: !244, line: 283, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "filter_type", scope: !4376, file: !244, line: 284, baseType: !3032, size: 32, offset: 160)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4376, file: !244, line: 285, baseType: !3032, size: 32, offset: 192)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "define_fields", scope: !4373, file: !244, line: 287, baseType: !4386, size: 64)
!4386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4387, size: 64)
!4387 = !DISubroutineType(types: !4388)
!4388 = !{!38, !4352}
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "get_fields", scope: !4358, file: !244, line: 300, baseType: !4390, size: 64, offset: 320)
!4390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4391, size: 64)
!4391 = !DISubroutineType(types: !4392)
!4392 = !{!116, !4352}
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !4358, file: !244, line: 301, baseType: !113, size: 128, offset: 384)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "raw_init", scope: !4358, file: !244, line: 302, baseType: !4386, size: 64, offset: 512)
!4395 = !DIDerivedType(tag: DW_TAG_member, scope: !4353, file: !244, line: 375, baseType: !4396, size: 64, offset: 192)
!4396 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4353, file: !244, line: 375, size: 64, elements: !4397)
!4397 = !{!4398, !4399}
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4396, file: !244, line: 376, baseType: !32, size: 64)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "tp", scope: !4396, file: !244, line: 378, baseType: !4400, size: 64)
!4400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4401, size: 64)
!4401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint", file: !4402, line: 32, size: 640, elements: !4403)
!4402 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!4403 = !{!4404, !4405, !4424, !4448, !4449, !4450, !4451, !4455, !4456}
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4401, file: !4402, line: 33, baseType: !32, size: 64)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4401, file: !4402, line: 34, baseType: !4406, size: 128, offset: 64)
!4406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !4407, line: 85, size: 128, elements: !4408)
!4407 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!4408 = !{!4409, !4410}
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !4406, file: !4407, line: 86, baseType: !65, size: 32)
!4410 = !DIDerivedType(tag: DW_TAG_member, scope: !4406, file: !4407, line: 101, baseType: !4411, size: 64, offset: 64)
!4411 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4406, file: !4407, line: 101, size: 64, elements: !4412)
!4412 = !{!4413, !4414, !4421}
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4411, file: !4407, line: 102, baseType: !55, size: 64)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !4411, file: !4407, line: 103, baseType: !4415, size: 64)
!4415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4416, size: 64)
!4416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !4407, line: 117, size: 128, elements: !4417)
!4417 = !{!4418, !4419, !4420}
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4416, file: !4407, line: 118, baseType: !1252, size: 32)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !4416, file: !4407, line: 119, baseType: !1252, size: 32, offset: 32)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4416, file: !4407, line: 120, baseType: !473, size: 64, offset: 64)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4411, file: !4407, line: 104, baseType: !4422, size: 64)
!4422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4423, size: 64)
!4423 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !4407, line: 104, flags: DIFlagFwdDecl)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_key", scope: !4401, file: !4402, line: 35, baseType: !4425, size: 64, offset: 192)
!4425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4426, size: 64)
!4426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_key", file: !4427, line: 61, size: 128, elements: !4428)
!4427 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!4428 = !{!4429, !4430}
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4426, file: !4427, line: 62, baseType: !36, size: 64)
!4430 = !DIDerivedType(tag: DW_TAG_member, scope: !4426, file: !4427, line: 63, baseType: !4431, size: 64, offset: 64)
!4431 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4426, file: !4427, line: 63, size: 64, elements: !4432)
!4432 = !{!4433, !4434, !4447}
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4431, file: !4427, line: 65, baseType: !55, size: 64)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "mods", scope: !4431, file: !4427, line: 66, baseType: !4435, size: 64)
!4435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4436, size: 64)
!4436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_mod", file: !4437, line: 169, size: 192, elements: !4438)
!4437 = !DIFile(filename: "./include/linux/static_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4f20b8b91766caa416ca409c84dcc807")
!4438 = !{!4439, !4440, !4441}
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4436, file: !4437, line: 170, baseType: !4435, size: 64)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4436, file: !4437, line: 171, baseType: !384, size: 64, offset: 64)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !4436, file: !4437, line: 172, baseType: !4442, size: 64, offset: 128)
!4442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4443, size: 64)
!4443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !4427, line: 32, size: 64, elements: !4444)
!4444 = !{!4445, !4446}
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4443, file: !4427, line: 33, baseType: !1252, size: 32)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4443, file: !4427, line: 34, baseType: !1252, size: 32, offset: 32)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !4431, file: !4427, line: 67, baseType: !4442, size: 64)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_tramp", scope: !4401, file: !4402, line: 36, baseType: !36, size: 64, offset: 256)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "iterator", scope: !4401, file: !4402, line: 37, baseType: !36, size: 64, offset: 320)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "probestub", scope: !4401, file: !4402, line: 38, baseType: !36, size: 64, offset: 384)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "regfunc", scope: !4401, file: !4402, line: 39, baseType: !4452, size: 64, offset: 448)
!4452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4453, size: 64)
!4453 = !DISubroutineType(types: !4454)
!4454 = !{!38}
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "unregfunc", scope: !4401, file: !4402, line: 40, baseType: !2461, size: 64, offset: 512)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !4401, file: !4402, line: 41, baseType: !4457, size: 64, offset: 576)
!4457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4458, size: 64)
!4458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint_func", file: !4402, line: 26, size: 192, elements: !4459)
!4459 = !{!4460, !4461, !4462}
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4458, file: !4402, line: 27, baseType: !36, size: 64)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4458, file: !4402, line: 28, baseType: !36, size: 64, offset: 64)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !4458, file: !4402, line: 29, baseType: !38, size: 32, offset: 128)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4353, file: !244, line: 380, baseType: !4464, size: 256, offset: 256)
!4464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event", file: !244, line: 148, size: 256, elements: !4465)
!4465 = !{!4466, !4467, !4468}
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4464, file: !244, line: 149, baseType: !819, size: 128)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4464, file: !244, line: 150, baseType: !38, size: 32, offset: 128)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !4464, file: !244, line: 151, baseType: !4469, size: 64, offset: 192)
!4469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4470, size: 64)
!4470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_functions", file: !244, line: 141, size: 256, elements: !4471)
!4471 = !{!4472, !4538, !4539, !4540}
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !4470, file: !244, line: 142, baseType: !4473, size: 64)
!4473 = !DIDerivedType(tag: DW_TAG_typedef, name: "trace_print_func", file: !244, line: 138, baseType: !4474)
!4474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4475, size: 64)
!4475 = !DISubroutineType(types: !4476)
!4476 = !{!254, !4477, !38, !4537}
!4477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4478, size: 64)
!4478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_iterator", file: !244, line: 93, size: 67776, elements: !4479)
!4479 = !{!4480, !4483, !4486, !4489, !4490, !4491, !4492, !4497, !4498, !4499, !4500, !4501, !4502, !4503, !4517, !4520, !4521, !4522, !4530, !4531, !4532, !4533, !4534, !4535, !4536}
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "tr", scope: !4478, file: !244, line: 94, baseType: !4481, size: 64)
!4481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4482, size: 64)
!4482 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_array", file: !244, line: 13, flags: DIFlagFwdDecl)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !4478, file: !244, line: 95, baseType: !4484, size: 64, offset: 64)
!4484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4485, size: 64)
!4485 = !DICompositeType(tag: DW_TAG_structure_type, name: "tracer", file: !244, line: 15, flags: DIFlagFwdDecl)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "array_buffer", scope: !4478, file: !244, line: 96, baseType: !4487, size: 64, offset: 128)
!4487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4488, size: 64)
!4488 = !DICompositeType(tag: DW_TAG_structure_type, name: "array_buffer", file: !244, line: 14, flags: DIFlagFwdDecl)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4478, file: !244, line: 97, baseType: !36, size: 64, offset: 192)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_file", scope: !4478, file: !244, line: 98, baseType: !38, size: 32, offset: 256)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4478, file: !244, line: 99, baseType: !763, size: 256, offset: 320)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_iter", scope: !4478, file: !244, line: 100, baseType: !4493, size: 64, offset: 576)
!4493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4494, size: 64)
!4494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4495, size: 64)
!4495 = !DICompositeType(tag: DW_TAG_structure_type, name: "ring_buffer_iter", file: !4496, line: 10, flags: DIFlagFwdDecl)
!4496 = !DIFile(filename: "./include/linux/ring_buffer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6b33fcbb5a7a42a82ce834d9b0e18658")
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "iter_flags", scope: !4478, file: !244, line: 101, baseType: !55, size: 64, offset: 640)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !4478, file: !244, line: 102, baseType: !36, size: 64, offset: 704)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "temp_size", scope: !4478, file: !244, line: 103, baseType: !7, size: 32, offset: 768)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !4478, file: !244, line: 104, baseType: !438, size: 64, offset: 832)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "fmt_size", scope: !4478, file: !244, line: 105, baseType: !7, size: 32, offset: 896)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "wait_index", scope: !4478, file: !244, line: 106, baseType: !473, size: 64, offset: 960)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_seq", scope: !4478, file: !244, line: 109, baseType: !4504, size: 33088, offset: 1024)
!4504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_seq", file: !4505, line: 14, size: 33088, elements: !4506)
!4505 = !DIFile(filename: "./include/linux/trace_seq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cf71e515adc12762081b96266f67a26")
!4506 = !{!4507, !4508, !4515, !4516}
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !4504, file: !4505, line: 15, baseType: !2362, size: 32768)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !4504, file: !4505, line: 16, baseType: !4509, size: 192, offset: 32768)
!4509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_buf", file: !4510, line: 18, size: 192, elements: !4511)
!4510 = !DIFile(filename: "./include/linux/seq_buf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ca9012ec0d31d1c4540dcb3f58de70c8")
!4511 = !{!4512, !4513, !4514}
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !4509, file: !4510, line: 19, baseType: !438, size: 64)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4509, file: !4510, line: 20, baseType: !51, size: 64, offset: 64)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4509, file: !4510, line: 21, baseType: !51, size: 64, offset: 128)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "readpos", scope: !4504, file: !4505, line: 17, baseType: !51, size: 64, offset: 32960)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !4504, file: !4505, line: 18, baseType: !38, size: 32, offset: 33024)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "started", scope: !4478, file: !244, line: 111, baseType: !4518, size: 64, offset: 34112)
!4518 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !1098, line: 913, baseType: !4519)
!4519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1099, size: 64, elements: !1103)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot", scope: !4478, file: !244, line: 114, baseType: !1356, size: 8, offset: 34176)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !4478, file: !244, line: 117, baseType: !4504, size: 33088, offset: 34240)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "ent", scope: !4478, file: !244, line: 118, baseType: !4523, size: 64, offset: 67328)
!4523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4524, size: 64)
!4524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_entry", file: !244, line: 79, size: 64, elements: !4525)
!4525 = !{!4526, !4527, !4528, !4529}
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4524, file: !244, line: 80, baseType: !42, size: 16)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4524, file: !244, line: 81, baseType: !103, size: 8, offset: 16)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_count", scope: !4524, file: !244, line: 82, baseType: !103, size: 8, offset: 24)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !4524, file: !244, line: 83, baseType: !38, size: 32, offset: 32)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "lost_events", scope: !4478, file: !244, line: 119, baseType: !55, size: 64, offset: 67392)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "leftover", scope: !4478, file: !244, line: 120, baseType: !38, size: 32, offset: 67456)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "ent_size", scope: !4478, file: !244, line: 121, baseType: !38, size: 32, offset: 67488)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4478, file: !244, line: 122, baseType: !38, size: 32, offset: 67520)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !4478, file: !244, line: 123, baseType: !585, size: 64, offset: 67584)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4478, file: !244, line: 125, baseType: !57, size: 64, offset: 67648)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !4478, file: !244, line: 126, baseType: !473, size: 64, offset: 67712)
!4537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4464, size: 64)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !4470, file: !244, line: 143, baseType: !4473, size: 64, offset: 64)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "hex", scope: !4470, file: !244, line: 144, baseType: !4473, size: 64, offset: 128)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "binary", scope: !4470, file: !244, line: 145, baseType: !4473, size: 64, offset: 192)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "print_fmt", scope: !4353, file: !244, line: 381, baseType: !438, size: 64, offset: 512)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4353, file: !244, line: 382, baseType: !4543, size: 64, offset: 576)
!4543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4544, size: 64)
!4544 = !DICompositeType(tag: DW_TAG_structure_type, name: "event_filter", file: !235, line: 821, flags: DIFlagFwdDecl)
!4545 = !DIDerivedType(tag: DW_TAG_member, scope: !4353, file: !244, line: 387, baseType: !4546, size: 64, offset: 640)
!4546 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4353, file: !244, line: 387, size: 64, elements: !4547)
!4547 = !{!4548, !4549}
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !4546, file: !244, line: 388, baseType: !36, size: 64)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !4546, file: !244, line: 389, baseType: !65, size: 32)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4353, file: !244, line: 391, baseType: !36, size: 64, offset: 704)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4353, file: !244, line: 394, baseType: !38, size: 32, offset: 768)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "perf_refcount", scope: !4353, file: !244, line: 397, baseType: !38, size: 32, offset: 800)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "perf_events", scope: !4353, file: !244, line: 398, baseType: !4554, size: 64, offset: 832)
!4554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "prog_array", scope: !4353, file: !244, line: 399, baseType: !4556, size: 64, offset: 896)
!4556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4557, size: 64)
!4557 = !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_prog_array", file: !244, line: 399, flags: DIFlagFwdDecl)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "perf_perm", scope: !4353, file: !244, line: 401, baseType: !4559, size: 64, offset: 960)
!4559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4560, size: 64)
!4560 = !DISubroutineType(types: !4561)
!4561 = !{!38, !4352, !3383}
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3384, file: !235, line: 821, baseType: !4543, size: 64, offset: 8128)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !3384, file: !235, line: 828, baseType: !4564, size: 64, offset: 8192)
!4564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4565, size: 64)
!4565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup", file: !235, line: 1046, size: 1664, elements: !4566)
!4566 = !{!4567, !4568}
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "css", scope: !4565, file: !235, line: 1047, baseType: !1866, size: 1600)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4565, file: !235, line: 1048, baseType: !4569, size: 64, offset: 1600)
!4569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4570, size: 64)
!4570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup_info", file: !235, line: 1039, size: 256, elements: !4571)
!4571 = !{!4572, !4573, !4574, !4575}
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4570, file: !235, line: 1040, baseType: !585, size: 64)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !4570, file: !235, line: 1041, baseType: !585, size: 64, offset: 64)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !4570, file: !235, line: 1042, baseType: !585, size: 64, offset: 128)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4570, file: !235, line: 1043, baseType: !38, size: 32, offset: 192)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !3384, file: !235, line: 832, baseType: !36, size: 64, offset: 8256)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "sb_list", scope: !3384, file: !235, line: 834, baseType: !113, size: 128, offset: 8320)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !3384, file: !235, line: 842, baseType: !582, size: 32, offset: 8448)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3353, file: !3354, line: 461, baseType: !55, size: 64, offset: 704)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3353, file: !3354, line: 463, baseType: !55, size: 64, offset: 768)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3353, file: !3354, line: 465, baseType: !55, size: 64, offset: 832)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3353, file: !3354, line: 466, baseType: !55, size: 64, offset: 896)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3353, file: !3354, line: 467, baseType: !55, size: 64, offset: 960)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3353, file: !3354, line: 473, baseType: !4585, size: 64, offset: 1024)
!4585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4586, size: 64)
!4586 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3354, line: 10, flags: DIFlagFwdDecl)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3353, file: !3354, line: 480, baseType: !55, size: 64, offset: 1088)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3353, file: !3354, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3353, file: !3354, line: 491, baseType: !581, size: 32, offset: 1184)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3353, file: !3354, line: 501, baseType: !4591, size: 33792, offset: 1536)
!4591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4592, line: 448, size: 33792, elements: !4593)
!4592 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4593 = !{!4594, !4595, !4596, !4702, !4703, !4709, !4710}
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4591, file: !4592, line: 461, baseType: !7, size: 32)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4591, file: !4592, line: 468, baseType: !55, size: 64, offset: 64)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4591, file: !4592, line: 476, baseType: !4597, size: 64, offset: 128)
!4597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4598, size: 64)
!4598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4592, line: 356, size: 33280, align: 512, elements: !4599)
!4599 = !{!4600, !4601, !4602, !4603, !4604, !4605, !4606, !4607, !4608, !4609}
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4598, file: !4592, line: 358, baseType: !7, size: 32)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4598, file: !4592, line: 361, baseType: !7, size: 32, offset: 32)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4598, file: !4592, line: 364, baseType: !585, size: 64, offset: 64)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4598, file: !4592, line: 367, baseType: !585, size: 64, offset: 128)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4598, file: !4592, line: 370, baseType: !585, size: 64, offset: 192)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4598, file: !4592, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4598, file: !4592, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4598, file: !4592, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4598, file: !4592, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4598, file: !4592, line: 397, baseType: !4610, size: 32768, offset: 512)
!4610 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4592, line: 348, size: 32768, elements: !4611)
!4611 = !{!4612, !4627, !4662, !4687, !4700}
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4610, file: !4592, line: 349, baseType: !4613, size: 896)
!4613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4592, line: 12, size: 896, elements: !4614)
!4614 = !{!4615, !4616, !4617, !4618, !4619, !4620, !4621, !4622, !4626}
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4613, file: !4592, line: 13, baseType: !581, size: 32)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4613, file: !4592, line: 14, baseType: !581, size: 32, offset: 32)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4613, file: !4592, line: 15, baseType: !581, size: 32, offset: 64)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4613, file: !4592, line: 16, baseType: !581, size: 32, offset: 96)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4613, file: !4592, line: 17, baseType: !581, size: 32, offset: 128)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4613, file: !4592, line: 18, baseType: !581, size: 32, offset: 160)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4613, file: !4592, line: 19, baseType: !581, size: 32, offset: 192)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4613, file: !4592, line: 22, baseType: !4623, size: 640, offset: 224)
!4623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !581, size: 640, elements: !4624)
!4624 = !{!4625}
!4625 = !DISubrange(count: 20)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4613, file: !4592, line: 25, baseType: !581, size: 32, offset: 864)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4610, file: !4592, line: 350, baseType: !4628, size: 4096, align: 128)
!4628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4592, line: 34, size: 4096, align: 128, elements: !4629)
!4629 = !{!4630, !4631, !4632, !4633, !4634, !4649, !4650, !4651, !4653, !4655, !4657}
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4628, file: !4592, line: 35, baseType: !109, size: 16)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4628, file: !4592, line: 36, baseType: !109, size: 16, offset: 16)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4628, file: !4592, line: 37, baseType: !109, size: 16, offset: 32)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4628, file: !4592, line: 38, baseType: !109, size: 16, offset: 48)
!4634 = !DIDerivedType(tag: DW_TAG_member, scope: !4628, file: !4592, line: 39, baseType: !4635, size: 128, offset: 64)
!4635 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4628, file: !4592, line: 39, size: 128, elements: !4636)
!4636 = !{!4637, !4642}
!4637 = !DIDerivedType(tag: DW_TAG_member, scope: !4635, file: !4592, line: 40, baseType: !4638, size: 128)
!4638 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4635, file: !4592, line: 40, size: 128, elements: !4639)
!4639 = !{!4640, !4641}
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4638, file: !4592, line: 41, baseType: !585, size: 64)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4638, file: !4592, line: 42, baseType: !585, size: 64, offset: 64)
!4642 = !DIDerivedType(tag: DW_TAG_member, scope: !4635, file: !4592, line: 44, baseType: !4643, size: 128)
!4643 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4635, file: !4592, line: 44, size: 128, elements: !4644)
!4644 = !{!4645, !4646, !4647, !4648}
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4643, file: !4592, line: 45, baseType: !581, size: 32)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4643, file: !4592, line: 46, baseType: !581, size: 32, offset: 32)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4643, file: !4592, line: 47, baseType: !581, size: 32, offset: 64)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4643, file: !4592, line: 48, baseType: !581, size: 32, offset: 96)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4628, file: !4592, line: 51, baseType: !581, size: 32, offset: 192)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4628, file: !4592, line: 52, baseType: !581, size: 32, offset: 224)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4628, file: !4592, line: 55, baseType: !4652, size: 1024, offset: 256)
!4652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !581, size: 1024, elements: !594)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4628, file: !4592, line: 58, baseType: !4654, size: 2048, offset: 1280)
!4654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !581, size: 2048, elements: !443)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4628, file: !4592, line: 60, baseType: !4656, size: 384, offset: 3328)
!4656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !581, size: 384, elements: !2975)
!4657 = !DIDerivedType(tag: DW_TAG_member, scope: !4628, file: !4592, line: 62, baseType: !4658, size: 384, offset: 3712)
!4658 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4628, file: !4592, line: 62, size: 384, elements: !4659)
!4659 = !{!4660, !4661}
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4658, file: !4592, line: 63, baseType: !4656, size: 384)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4658, file: !4592, line: 64, baseType: !4656, size: 384)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4610, file: !4592, line: 351, baseType: !4663, size: 1088)
!4663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4592, line: 79, size: 1088, elements: !4664)
!4664 = !{!4665, !4666, !4667, !4668, !4669, !4670, !4671, !4672, !4673, !4674, !4675, !4676, !4677, !4678, !4679, !4686}
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4663, file: !4592, line: 80, baseType: !581, size: 32)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4663, file: !4592, line: 81, baseType: !581, size: 32, offset: 32)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4663, file: !4592, line: 82, baseType: !581, size: 32, offset: 64)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4663, file: !4592, line: 83, baseType: !581, size: 32, offset: 96)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4663, file: !4592, line: 84, baseType: !581, size: 32, offset: 128)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4663, file: !4592, line: 85, baseType: !581, size: 32, offset: 160)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4663, file: !4592, line: 86, baseType: !581, size: 32, offset: 192)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4663, file: !4592, line: 88, baseType: !4623, size: 640, offset: 224)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4663, file: !4592, line: 89, baseType: !99, size: 8, offset: 864)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4663, file: !4592, line: 90, baseType: !99, size: 8, offset: 872)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4663, file: !4592, line: 91, baseType: !99, size: 8, offset: 880)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4663, file: !4592, line: 92, baseType: !99, size: 8, offset: 888)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4663, file: !4592, line: 93, baseType: !99, size: 8, offset: 896)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4663, file: !4592, line: 94, baseType: !99, size: 8, offset: 904)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4663, file: !4592, line: 95, baseType: !4680, size: 64, offset: 960)
!4680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4681, size: 64)
!4681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4682, line: 11, size: 128, elements: !4683)
!4682 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4683 = !{!4684, !4685}
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4681, file: !4682, line: 12, baseType: !473, size: 64)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4681, file: !4682, line: 13, baseType: !4289, size: 64, offset: 64)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4663, file: !4592, line: 96, baseType: !581, size: 32, offset: 1024)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4610, file: !4592, line: 352, baseType: !4688, size: 4608, align: 512)
!4688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4592, line: 333, size: 4608, align: 512, elements: !4689)
!4689 = !{!4690, !4691, !4698}
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4688, file: !4592, line: 334, baseType: !4628, size: 4096, align: 128)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4688, file: !4592, line: 335, baseType: !4692, size: 512, offset: 4096)
!4692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4592, line: 312, size: 512, elements: !4693)
!4693 = !{!4694, !4695, !4696}
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4692, file: !4592, line: 313, baseType: !585, size: 64)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4692, file: !4592, line: 314, baseType: !585, size: 64, offset: 64)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4692, file: !4592, line: 315, baseType: !4697, size: 384, offset: 128)
!4697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !585, size: 384, elements: !1411)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4688, file: !4592, line: 336, baseType: !4699, offset: 4608)
!4699 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, elements: !725)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4610, file: !4592, line: 353, baseType: !4701, size: 32768)
!4701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 32768, elements: !2363)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4591, file: !4592, line: 484, baseType: !4597, size: 64, offset: 192)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4591, file: !4592, line: 491, baseType: !4704, size: 128, offset: 256)
!4704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4592, line: 404, size: 128, elements: !4705)
!4705 = !{!4706, !4707, !4708}
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4704, file: !4592, line: 424, baseType: !585, size: 64)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4704, file: !4592, line: 432, baseType: !7, size: 32, offset: 64)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4704, file: !4592, line: 440, baseType: !7, size: 32, offset: 96)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4591, file: !4592, line: 498, baseType: !4704, size: 128, offset: 384)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4591, file: !4592, line: 508, baseType: !4598, size: 33280, align: 512, offset: 512)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !836, file: !837, line: 31, baseType: !3865, size: 64, offset: 448)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !836, file: !837, line: 32, baseType: !7, size: 32, offset: 512)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !836, file: !837, line: 33, baseType: !835, size: 64, offset: 576)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !836, file: !837, line: 35, baseType: !4715, size: 64, offset: 640)
!4715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4716, size: 64)
!4716 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !837, line: 17, flags: DIFlagFwdDecl)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !836, file: !837, line: 37, baseType: !1311, size: 64, offset: 704)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !836, file: !837, line: 38, baseType: !1554, size: 64, offset: 768)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !836, file: !837, line: 39, baseType: !38, size: 32, offset: 832)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !836, file: !837, line: 40, baseType: !1344, size: 192, offset: 896)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !836, file: !837, line: 42, baseType: !38, size: 32, offset: 1088)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !778, file: !288, line: 951, baseType: !260, size: 32, offset: 128)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !778, file: !288, line: 952, baseType: !518, size: 32, offset: 160)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !778, file: !288, line: 952, baseType: !518, size: 32, offset: 192)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !778, file: !288, line: 953, baseType: !38, size: 32, offset: 224)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !729, file: !288, line: 1012, baseType: !1727, size: 64, offset: 896)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !729, file: !288, line: 1013, baseType: !4728, size: 256, offset: 960)
!4728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !288, line: 970, size: 256, elements: !4729)
!4729 = !{!4730, !4731, !4732, !4733, !4734, !4735}
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4728, file: !288, line: 971, baseType: !55, size: 64)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4728, file: !288, line: 972, baseType: !7, size: 32, offset: 64)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !4728, file: !288, line: 973, baseType: !7, size: 32, offset: 96)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !4728, file: !288, line: 974, baseType: !7, size: 32, offset: 128)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !4728, file: !288, line: 975, baseType: !7, size: 32, offset: 160)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !4728, file: !288, line: 976, baseType: !57, size: 64, offset: 192)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !729, file: !288, line: 1014, baseType: !4737, size: 128, offset: 1216)
!4737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !4738, line: 8, size: 128, elements: !4739)
!4738 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!4739 = !{!4740, !4741}
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !4737, file: !4738, line: 9, baseType: !657, size: 64)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !4737, file: !4738, line: 10, baseType: !547, size: 64, offset: 64)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !729, file: !288, line: 1015, baseType: !512, size: 64, offset: 1344)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !729, file: !288, line: 1016, baseType: !4744, size: 64, offset: 1408)
!4744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4745, size: 64)
!4745 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4746)
!4746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !288, line: 1914, size: 2112, elements: !4747)
!4747 = !{!4748, !4749, !4753, !4757, !4761, !4871, !4872, !4878, !4891, !4895, !4899, !4900, !4904, !4905, !4909, !4914, !4915, !4919, !4923, !4929, !4930, !4934, !4935, !4939, !4943, !4947, !4952, !4956, !4960, !4964, !4968, !4969, !4975}
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4746, file: !288, line: 1915, baseType: !384, size: 64)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !4746, file: !288, line: 1916, baseType: !4750, size: 64, offset: 64)
!4750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4751, size: 64)
!4751 = !DISubroutineType(types: !4752)
!4752 = !{!57, !728, !57, !38}
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4746, file: !288, line: 1917, baseType: !4754, size: 64, offset: 128)
!4754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4755, size: 64)
!4755 = !DISubroutineType(types: !4756)
!4756 = !{!470, !728, !438, !51, !56}
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4746, file: !288, line: 1918, baseType: !4758, size: 64, offset: 192)
!4758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4759, size: 64)
!4759 = !DISubroutineType(types: !4760)
!4760 = !{!470, !728, !32, !51, !56}
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !4746, file: !288, line: 1919, baseType: !4762, size: 64, offset: 256)
!4762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4763, size: 64)
!4763 = !DISubroutineType(types: !4764)
!4764 = !{!470, !4765, !4869}
!4765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4766, size: 64)
!4766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !288, line: 373, size: 384, elements: !4767)
!4767 = !{!4768, !4769, !4770, !4774, !4775, !4776, !4777}
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !4766, file: !288, line: 374, baseType: !728, size: 64)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !4766, file: !288, line: 375, baseType: !57, size: 64, offset: 64)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !4766, file: !288, line: 376, baseType: !4771, size: 64, offset: 128)
!4771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4772, size: 64)
!4772 = !DISubroutineType(types: !4773)
!4773 = !{null, !4765, !473}
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4766, file: !288, line: 377, baseType: !36, size: 64, offset: 192)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !4766, file: !288, line: 378, baseType: !38, size: 32, offset: 256)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !4766, file: !288, line: 379, baseType: !109, size: 16, offset: 288)
!4777 = !DIDerivedType(tag: DW_TAG_member, scope: !4766, file: !288, line: 380, baseType: !4778, size: 64, offset: 320)
!4778 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4766, file: !288, line: 380, size: 64, elements: !4779)
!4779 = !{!4780, !4865}
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !4778, file: !288, line: 386, baseType: !4781, size: 64)
!4781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4782, size: 64)
!4782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !372, line: 998, size: 448, elements: !4783)
!4783 = !{!4784, !4851, !4852}
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !4782, file: !372, line: 999, baseType: !4785, size: 64)
!4785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4786, size: 64)
!4786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !130, line: 293, size: 1536, elements: !4787)
!4787 = !{!4788, !4818, !4832}
!4788 = !DIDerivedType(tag: DW_TAG_member, scope: !4786, file: !130, line: 295, baseType: !4789, size: 512)
!4789 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4786, file: !130, line: 295, size: 512, elements: !4790)
!4790 = !{!4791, !4817}
!4791 = !DIDerivedType(tag: DW_TAG_member, scope: !4789, file: !130, line: 296, baseType: !4792, size: 448)
!4792 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4789, file: !130, line: 296, size: 448, elements: !4793)
!4793 = !{!4794, !4795, !4804, !4805, !4806, !4815, !4816}
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4792, file: !130, line: 298, baseType: !55, size: 64)
!4795 = !DIDerivedType(tag: DW_TAG_member, scope: !4792, file: !130, line: 299, baseType: !4796, size: 128, offset: 64)
!4796 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4792, file: !130, line: 299, size: 128, elements: !4797)
!4797 = !{!4798, !4799}
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4796, file: !130, line: 300, baseType: !113, size: 128)
!4799 = !DIDerivedType(tag: DW_TAG_member, scope: !4796, file: !130, line: 302, baseType: !4800, size: 128)
!4800 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4796, file: !130, line: 302, size: 128, elements: !4801)
!4801 = !{!4802, !4803}
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !4800, file: !130, line: 303, baseType: !36, size: 64)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !4800, file: !130, line: 305, baseType: !7, size: 32, offset: 64)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4792, file: !130, line: 310, baseType: !508, size: 64, offset: 192)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4792, file: !130, line: 311, baseType: !55, size: 64, offset: 256)
!4806 = !DIDerivedType(tag: DW_TAG_member, scope: !4792, file: !130, line: 312, baseType: !4807, size: 64, offset: 320)
!4807 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4792, file: !130, line: 312, size: 64, elements: !4808)
!4808 = !{!4809, !4810}
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4807, file: !130, line: 313, baseType: !36, size: 64)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !4807, file: !130, line: 314, baseType: !4811, size: 64)
!4811 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !130, line: 257, baseType: !4812)
!4812 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !130, line: 255, size: 64, elements: !4813)
!4813 = !{!4814}
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4812, file: !130, line: 256, baseType: !55, size: 64)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4792, file: !130, line: 316, baseType: !65, size: 32, offset: 384)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !4792, file: !130, line: 317, baseType: !65, size: 32, offset: 416)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4789, file: !130, line: 323, baseType: !2104, size: 512, align: 128)
!4818 = !DIDerivedType(tag: DW_TAG_member, scope: !4786, file: !130, line: 325, baseType: !4819, size: 512, offset: 512)
!4819 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4786, file: !130, line: 325, size: 512, elements: !4820)
!4820 = !{!4821, !4831}
!4821 = !DIDerivedType(tag: DW_TAG_member, scope: !4819, file: !130, line: 326, baseType: !4822, size: 320)
!4822 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4819, file: !130, line: 326, size: 320, elements: !4823)
!4823 = !{!4824, !4825, !4826, !4827, !4828, !4829, !4830}
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !4822, file: !130, line: 327, baseType: !55, size: 64)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !4822, file: !130, line: 328, baseType: !55, size: 64, offset: 64)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !4822, file: !130, line: 329, baseType: !55, size: 64, offset: 128)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !4822, file: !130, line: 331, baseType: !65, size: 32, offset: 192)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !4822, file: !130, line: 332, baseType: !65, size: 32, offset: 224)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !4822, file: !130, line: 333, baseType: !65, size: 32, offset: 256)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !4822, file: !130, line: 335, baseType: !7, size: 32, offset: 288)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !4819, file: !130, line: 339, baseType: !2104, size: 512, align: 128)
!4832 = !DIDerivedType(tag: DW_TAG_member, scope: !4786, file: !130, line: 341, baseType: !4833, size: 512, offset: 1024)
!4833 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4786, file: !130, line: 341, size: 512, elements: !4834)
!4834 = !{!4835, !4844, !4850}
!4835 = !DIDerivedType(tag: DW_TAG_member, scope: !4833, file: !130, line: 342, baseType: !4836, size: 384)
!4836 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4833, file: !130, line: 342, size: 384, elements: !4837)
!4837 = !{!4838, !4839, !4840, !4841, !4842, !4843}
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !4836, file: !130, line: 343, baseType: !55, size: 64)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !4836, file: !130, line: 344, baseType: !55, size: 64, offset: 64)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !4836, file: !130, line: 346, baseType: !36, size: 64, offset: 128)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !4836, file: !130, line: 347, baseType: !36, size: 64, offset: 192)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !4836, file: !130, line: 348, baseType: !36, size: 64, offset: 256)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !4836, file: !130, line: 349, baseType: !36, size: 64, offset: 320)
!4844 = !DIDerivedType(tag: DW_TAG_member, scope: !4833, file: !130, line: 352, baseType: !4845, size: 256)
!4845 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4833, file: !130, line: 352, size: 256, elements: !4846)
!4846 = !{!4847, !4848, !4849}
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !4845, file: !130, line: 353, baseType: !55, size: 64)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !4845, file: !130, line: 354, baseType: !55, size: 64, offset: 64)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !4845, file: !130, line: 356, baseType: !113, size: 128, offset: 128)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !4833, file: !130, line: 359, baseType: !2104, size: 512, align: 128)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !4782, file: !372, line: 1000, baseType: !38, size: 32, offset: 64)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !4782, file: !372, line: 1001, baseType: !4853, size: 320, offset: 128)
!4853 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !71, line: 14, baseType: !4854)
!4854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !71, line: 30, size: 320, elements: !4855)
!4855 = !{!4856, !4857, !4858, !4864}
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4854, file: !71, line: 31, baseType: !7, size: 32)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4854, file: !71, line: 32, baseType: !36, size: 64, offset: 64)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4854, file: !71, line: 33, baseType: !4859, size: 64, offset: 128)
!4859 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !71, line: 16, baseType: !4860)
!4860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4861, size: 64)
!4861 = !DISubroutineType(types: !4862)
!4862 = !{!38, !4863, !7, !38, !36}
!4863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4854, size: 64)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4854, file: !71, line: 34, baseType: !113, size: 128, offset: 192)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !4778, file: !288, line: 395, baseType: !4866, size: 64)
!4866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4867, size: 64)
!4867 = !DISubroutineType(types: !4868)
!4868 = !{!470, !36}
!4869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4870, size: 64)
!4870 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !288, line: 69, flags: DIFlagFwdDecl)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !4746, file: !288, line: 1920, baseType: !4762, size: 64, offset: 320)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !4746, file: !288, line: 1921, baseType: !4873, size: 64, offset: 384)
!4873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4874, size: 64)
!4874 = !DISubroutineType(types: !4875)
!4875 = !{!38, !4765, !4876, !7}
!4876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4877, size: 64)
!4877 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !288, line: 53, flags: DIFlagFwdDecl)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !4746, file: !288, line: 1923, baseType: !4879, size: 64, offset: 448)
!4879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4880, size: 64)
!4880 = !DISubroutineType(types: !4881)
!4881 = !{!38, !728, !4882}
!4882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4883, size: 64)
!4883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !288, line: 1858, size: 128, elements: !4884)
!4884 = !{!4885, !4890}
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !4883, file: !288, line: 1859, baseType: !4886, size: 64)
!4886 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !288, line: 1855, baseType: !4887)
!4887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4888, size: 64)
!4888 = !DISubroutineType(types: !4889)
!4889 = !{!1356, !4882, !32, !38, !57, !585, !7}
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4883, file: !288, line: 1860, baseType: !57, size: 64, offset: 64)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4746, file: !288, line: 1924, baseType: !4892, size: 64, offset: 512)
!4892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4893, size: 64)
!4893 = !DISubroutineType(types: !4894)
!4894 = !{!2291, !728, !2293}
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4746, file: !288, line: 1925, baseType: !4896, size: 64, offset: 576)
!4896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4897, size: 64)
!4897 = !DISubroutineType(types: !4898)
!4898 = !{!473, !728, !7, !55}
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4746, file: !288, line: 1926, baseType: !4896, size: 64, offset: 640)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4746, file: !288, line: 1927, baseType: !4901, size: 64, offset: 704)
!4901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4902, size: 64)
!4902 = !DISubroutineType(types: !4903)
!4903 = !{!38, !728, !1987}
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !4746, file: !288, line: 1928, baseType: !55, size: 64, offset: 768)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4746, file: !288, line: 1929, baseType: !4906, size: 64, offset: 832)
!4906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4907, size: 64)
!4907 = !DISubroutineType(types: !4908)
!4908 = !{!38, !512, !728}
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4746, file: !288, line: 1930, baseType: !4910, size: 64, offset: 896)
!4910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4911, size: 64)
!4911 = !DISubroutineType(types: !4912)
!4912 = !{!38, !728, !4913}
!4913 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !288, line: 1061, baseType: !36)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4746, file: !288, line: 1931, baseType: !4906, size: 64, offset: 960)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !4746, file: !288, line: 1932, baseType: !4916, size: 64, offset: 1024)
!4916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4917, size: 64)
!4917 = !DISubroutineType(types: !4918)
!4918 = !{!38, !728, !57, !57, !38}
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !4746, file: !288, line: 1933, baseType: !4920, size: 64, offset: 1088)
!4920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4921, size: 64)
!4921 = !DISubroutineType(types: !4922)
!4922 = !{!38, !38, !728, !38}
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4746, file: !288, line: 1934, baseType: !4924, size: 64, offset: 1152)
!4924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4925, size: 64)
!4925 = !DISubroutineType(types: !4926)
!4926 = !{!38, !728, !38, !4927}
!4927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4928, size: 64)
!4928 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !288, line: 1063, flags: DIFlagFwdDecl)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !4746, file: !288, line: 1935, baseType: !1176, size: 64, offset: 1216)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !4746, file: !288, line: 1936, baseType: !4931, size: 64, offset: 1280)
!4931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4932, size: 64)
!4932 = !DISubroutineType(types: !4933)
!4933 = !{!38, !38}
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !4746, file: !288, line: 1937, baseType: !4924, size: 64, offset: 1344)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !4746, file: !288, line: 1938, baseType: !4936, size: 64, offset: 1408)
!4936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4937, size: 64)
!4937 = !DISubroutineType(types: !4938)
!4938 = !{!470, !3234, !728, !56, !51, !7}
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !4746, file: !288, line: 1939, baseType: !4940, size: 64, offset: 1472)
!4940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4941, size: 64)
!4941 = !DISubroutineType(types: !4942)
!4942 = !{!470, !728, !56, !3234, !51, !7}
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !4746, file: !288, line: 1940, baseType: !4944, size: 64, offset: 1536)
!4944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4945, size: 64)
!4945 = !DISubroutineType(types: !4946)
!4946 = !{null, !728}
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !4746, file: !288, line: 1941, baseType: !4948, size: 64, offset: 1600)
!4948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4949, size: 64)
!4949 = !DISubroutineType(types: !4950)
!4950 = !{!38, !728, !38, !4951, !3876}
!4951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4927, size: 64)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !4746, file: !288, line: 1942, baseType: !4953, size: 64, offset: 1664)
!4953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4954, size: 64)
!4954 = !DISubroutineType(types: !4955)
!4955 = !{!473, !728, !38, !57, !57}
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4746, file: !288, line: 1944, baseType: !4957, size: 64, offset: 1728)
!4957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4958, size: 64)
!4958 = !DISubroutineType(types: !4959)
!4959 = !{null, !1930, !728}
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !4746, file: !288, line: 1948, baseType: !4961, size: 64, offset: 1792)
!4961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4962, size: 64)
!4962 = !DISubroutineType(types: !4963)
!4963 = !{!470, !728, !57, !728, !57, !51, !7}
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !4746, file: !288, line: 1950, baseType: !4965, size: 64, offset: 1856)
!4965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4966, size: 64)
!4966 = !DISubroutineType(types: !4967)
!4967 = !{!57, !728, !57, !728, !57, !57, !7}
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !4746, file: !288, line: 1953, baseType: !4916, size: 64, offset: 1920)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !4746, file: !288, line: 1954, baseType: !4970, size: 64, offset: 1984)
!4970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4971, size: 64)
!4971 = !DISubroutineType(types: !4972)
!4972 = !{!38, !4973, !7}
!4973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4974, size: 64)
!4974 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !288, line: 1911, flags: DIFlagFwdDecl)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !4746, file: !288, line: 1955, baseType: !4976, size: 64, offset: 2048)
!4976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4977, size: 64)
!4977 = !DISubroutineType(types: !4978)
!4978 = !{!38, !4973, !4876, !7}
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !729, file: !288, line: 1018, baseType: !585, size: 64, offset: 1472)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !729, file: !288, line: 1020, baseType: !36, size: 64, offset: 1536)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !729, file: !288, line: 1023, baseType: !36, size: 64, offset: 1600)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !729, file: !288, line: 1027, baseType: !4554, size: 64, offset: 1664)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !729, file: !288, line: 1029, baseType: !508, size: 64, offset: 1728)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !729, file: !288, line: 1030, baseType: !4985, size: 32, offset: 1792)
!4985 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !4986, line: 8, baseType: !581)
!4986 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !729, file: !288, line: 1031, baseType: !4985, size: 32, offset: 1824)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !704, file: !14, line: 72, baseType: !51, size: 64, offset: 192)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "dirfd", scope: !704, file: !14, line: 73, baseType: !38, size: 32, offset: 256)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "parse_monolithic", scope: !689, file: !14, line: 119, baseType: !4991, size: 64, offset: 192)
!4991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4992, size: 64)
!4992 = !DISubroutineType(types: !4993)
!4993 = !{!38, !683, !36}
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "get_tree", scope: !689, file: !14, line: 120, baseType: !680, size: 64, offset: 256)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "reconfigure", scope: !689, file: !14, line: 121, baseType: !680, size: 64, offset: 320)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "uapi_mutex", scope: !684, file: !14, line: 92, baseType: !763, size: 256, offset: 64)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "fs_type", scope: !684, file: !14, line: 93, baseType: !674, size: 64, offset: 320)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "fs_private", scope: !684, file: !14, line: 94, baseType: !36, size: 64, offset: 384)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "sget_key", scope: !684, file: !14, line: 95, baseType: !36, size: 64, offset: 448)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !684, file: !14, line: 96, baseType: !547, size: 64, offset: 512)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !684, file: !14, line: 97, baseType: !1311, size: 64, offset: 576)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !684, file: !14, line: 98, baseType: !1844, size: 64, offset: 640)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !684, file: !14, line: 99, baseType: !1727, size: 64, offset: 704)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !684, file: !14, line: 100, baseType: !5005, size: 128, offset: 768)
!5005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "p_log", file: !14, line: 76, size: 128, elements: !5006)
!5006 = !{!5007, !5008}
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !5005, file: !14, line: 77, baseType: !32, size: 64)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !5005, file: !14, line: 78, baseType: !5009, size: 64, offset: 64)
!5009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5010, size: 64)
!5010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fc_log", file: !14, line: 173, size: 640, elements: !5011)
!5011 = !{!5012, !5013, !5014, !5015, !5016, !5017}
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !5010, file: !14, line: 174, baseType: !806, size: 32)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5010, file: !14, line: 175, baseType: !99, size: 8, offset: 32)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !5010, file: !14, line: 176, baseType: !99, size: 8, offset: 40)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "need_free", scope: !5010, file: !14, line: 177, baseType: !99, size: 8, offset: 48)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5010, file: !14, line: 178, baseType: !384, size: 64, offset: 64)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !5010, file: !14, line: 179, baseType: !5018, size: 512, offset: 128)
!5018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !438, size: 512, elements: !1018)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !684, file: !14, line: 101, baseType: !32, size: 64, offset: 896)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !684, file: !14, line: 102, baseType: !36, size: 64, offset: 960)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !684, file: !14, line: 103, baseType: !36, size: 64, offset: 1024)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "sb_flags", scope: !684, file: !14, line: 104, baseType: !7, size: 32, offset: 1088)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "sb_flags_mask", scope: !684, file: !14, line: 105, baseType: !7, size: 32, offset: 1120)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !684, file: !14, line: 106, baseType: !7, size: 32, offset: 1152)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !684, file: !14, line: 107, baseType: !268, size: 8, offset: 1184, flags: DIFlagBitField, extraData: i64 1184)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !684, file: !14, line: 108, baseType: !273, size: 8, offset: 1192, flags: DIFlagBitField, extraData: i64 1184)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "need_free", scope: !684, file: !14, line: 109, baseType: !1356, size: 1, offset: 1200, flags: DIFlagBitField, extraData: i64 1184)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !684, file: !14, line: 110, baseType: !1356, size: 1, offset: 1201, flags: DIFlagBitField, extraData: i64 1184)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "oldapi", scope: !684, file: !14, line: 111, baseType: !1356, size: 1, offset: 1202, flags: DIFlagBitField, extraData: i64 1184)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !684, file: !14, line: 112, baseType: !1356, size: 1, offset: 1203, flags: DIFlagBitField, extraData: i64 1184)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !675, file: !288, line: 2377, baseType: !5032, size: 64, offset: 192)
!5032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5033, size: 64)
!5033 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5034)
!5034 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !288, line: 75, flags: DIFlagFwdDecl)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !675, file: !288, line: 2378, baseType: !5036, size: 64, offset: 256)
!5036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5037, size: 64)
!5037 = !DISubroutineType(types: !5038)
!5038 = !{!547, !674, !38, !32, !36}
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !675, file: !288, line: 2380, baseType: !5040, size: 64, offset: 320)
!5040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5041, size: 64)
!5041 = !DISubroutineType(types: !5042)
!5042 = !{null, !663}
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !675, file: !288, line: 2381, baseType: !384, size: 64, offset: 384)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !675, file: !288, line: 2382, baseType: !674, size: 64, offset: 448)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !675, file: !288, line: 2383, baseType: !815, size: 64, offset: 512)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !675, file: !288, line: 2385, baseType: !5047, offset: 576)
!5047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !5048, line: 206, elements: !1172)
!5048 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !675, file: !288, line: 2386, baseType: !5047, offset: 576)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !675, file: !288, line: 2387, baseType: !5047, offset: 576)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !675, file: !288, line: 2388, baseType: !5052, offset: 576)
!5052 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5047, elements: !439)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !675, file: !288, line: 2390, baseType: !5047, offset: 576)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !675, file: !288, line: 2391, baseType: !5047, offset: 576)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !675, file: !288, line: 2392, baseType: !5047, offset: 576)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !675, file: !288, line: 2393, baseType: !5047, offset: 576)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !664, file: !288, line: 1197, baseType: !5058, size: 64, offset: 384)
!5058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5059, size: 64)
!5059 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5060)
!5060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !288, line: 2057, size: 1664, elements: !5061)
!5061 = !{!5062, !5066, !5070, !5071, !5075, !5099, !5103, !5104, !5105, !5109, !5113, !5117, !5118, !5119, !5125, !5129, !5130, !5134, !5135, !5136, !5137, !5141, !5145, !5192, !5207, !5208}
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !5060, file: !288, line: 2058, baseType: !5063, size: 64)
!5063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5064, size: 64)
!5064 = !DISubroutineType(types: !5065)
!5065 = !{!512, !663}
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !5060, file: !288, line: 2059, baseType: !5067, size: 64, offset: 64)
!5067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5068, size: 64)
!5068 = !DISubroutineType(types: !5069)
!5069 = !{null, !512}
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !5060, file: !288, line: 2060, baseType: !5067, size: 64, offset: 128)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !5060, file: !288, line: 2062, baseType: !5072, size: 64, offset: 192)
!5072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5073, size: 64)
!5073 = !DISubroutineType(types: !5074)
!5074 = !{null, !512, !38}
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !5060, file: !288, line: 2063, baseType: !5076, size: 64, offset: 256)
!5076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5077, size: 64)
!5077 = !DISubroutineType(types: !5078)
!5078 = !{!38, !512, !5079}
!5079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5080, size: 64)
!5080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !283, line: 42, size: 384, elements: !5081)
!5081 = !{!5082, !5083, !5084, !5085, !5086, !5087, !5088, !5089, !5090, !5091, !5092, !5093, !5094, !5095}
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_write", scope: !5080, file: !283, line: 43, baseType: !473, size: 64)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "pages_skipped", scope: !5080, file: !283, line: 45, baseType: !473, size: 64, offset: 64)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !5080, file: !283, line: 52, baseType: !57, size: 64, offset: 128)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !5080, file: !283, line: 53, baseType: !57, size: 64, offset: 192)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "sync_mode", scope: !5080, file: !283, line: 55, baseType: !282, size: 32, offset: 256)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "for_kupdate", scope: !5080, file: !283, line: 57, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "for_background", scope: !5080, file: !283, line: 58, baseType: !7, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_writepages", scope: !5080, file: !283, line: 59, baseType: !7, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "for_reclaim", scope: !5080, file: !283, line: 60, baseType: !7, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "range_cyclic", scope: !5080, file: !283, line: 61, baseType: !7, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "for_sync", scope: !5080, file: !283, line: 62, baseType: !7, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "unpinned_fscache_wb", scope: !5080, file: !283, line: 63, baseType: !7, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_owner", scope: !5080, file: !283, line: 71, baseType: !7, size: 1, offset: 295, flags: DIFlagBitField, extraData: i64 288)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "swap_plug", scope: !5080, file: !283, line: 78, baseType: !5096, size: 64, offset: 320)
!5096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5097, size: 64)
!5097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5098, size: 64)
!5098 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_iocb", file: !283, line: 78, flags: DIFlagFwdDecl)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !5060, file: !288, line: 2064, baseType: !5100, size: 64, offset: 320)
!5100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5101, size: 64)
!5101 = !DISubroutineType(types: !5102)
!5102 = !{!38, !512}
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !5060, file: !288, line: 2065, baseType: !5067, size: 64, offset: 384)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !5060, file: !288, line: 2066, baseType: !5040, size: 64, offset: 448)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !5060, file: !288, line: 2067, baseType: !5106, size: 64, offset: 512)
!5106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5107, size: 64)
!5107 = !DISubroutineType(types: !5108)
!5108 = !{!38, !663, !38}
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !5060, file: !288, line: 2068, baseType: !5110, size: 64, offset: 576)
!5110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5111, size: 64)
!5111 = !DISubroutineType(types: !5112)
!5112 = !{!38, !663, !287}
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !5060, file: !288, line: 2069, baseType: !5114, size: 64, offset: 640)
!5114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5115, size: 64)
!5115 = !DISubroutineType(types: !5116)
!5116 = !{!38, !663}
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !5060, file: !288, line: 2070, baseType: !5110, size: 64, offset: 704)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !5060, file: !288, line: 2071, baseType: !5114, size: 64, offset: 768)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !5060, file: !288, line: 2072, baseType: !5120, size: 64, offset: 832)
!5120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5121, size: 64)
!5121 = !DISubroutineType(types: !5122)
!5122 = !{!38, !547, !5123}
!5123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5124, size: 64)
!5124 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !288, line: 62, flags: DIFlagFwdDecl)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !5060, file: !288, line: 2073, baseType: !5126, size: 64, offset: 896)
!5126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5127, size: 64)
!5127 = !DISubroutineType(types: !5128)
!5128 = !{!38, !663, !1690, !438}
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !5060, file: !288, line: 2074, baseType: !5040, size: 64, offset: 960)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !5060, file: !288, line: 2076, baseType: !5131, size: 64, offset: 1024)
!5131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5132, size: 64)
!5132 = !DISubroutineType(types: !5133)
!5133 = !{!38, !1930, !547}
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !5060, file: !288, line: 2077, baseType: !5131, size: 64, offset: 1088)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !5060, file: !288, line: 2078, baseType: !5131, size: 64, offset: 1152)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !5060, file: !288, line: 2079, baseType: !5131, size: 64, offset: 1216)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !5060, file: !288, line: 2081, baseType: !5138, size: 64, offset: 1280)
!5138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5139, size: 64)
!5139 = !DISubroutineType(types: !5140)
!5140 = !{!470, !663, !38, !438, !51, !57}
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !5060, file: !288, line: 2082, baseType: !5142, size: 64, offset: 1344)
!5142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5143, size: 64)
!5143 = !DISubroutineType(types: !5144)
!5144 = !{!470, !663, !38, !32, !51, !57}
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !5060, file: !288, line: 2083, baseType: !5146, size: 64, offset: 1408)
!5146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5147, size: 64)
!5147 = !DISubroutineType(types: !5148)
!5148 = !{!5149, !512}
!5149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5150, size: 64)
!5150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5151, size: 64)
!5151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !293, line: 296, size: 1664, elements: !5152)
!5152 = !{!5153, !5154, !5155, !5156, !5157, !5158, !5159, !5160, !5161, !5177, !5178, !5179}
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !5151, file: !293, line: 297, baseType: !819, size: 128)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !5151, file: !293, line: 298, baseType: !113, size: 128, offset: 128)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !5151, file: !293, line: 299, baseType: !113, size: 128, offset: 256)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !5151, file: !293, line: 300, baseType: !113, size: 128, offset: 384)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !5151, file: !293, line: 301, baseType: !763, size: 256, offset: 512)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !5151, file: !293, line: 302, baseType: !75, size: 32, offset: 768)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !5151, file: !293, line: 303, baseType: !65, size: 32, offset: 800)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !5151, file: !293, line: 304, baseType: !663, size: 64, offset: 832)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !5151, file: !293, line: 305, baseType: !5162, size: 64, offset: 896)
!5162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !293, line: 68, size: 64, elements: !5163)
!5163 = !{!5164, !5176}
!5164 = !DIDerivedType(tag: DW_TAG_member, scope: !5162, file: !293, line: 69, baseType: !5165, size: 32)
!5165 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5162, file: !293, line: 69, size: 32, elements: !5166)
!5166 = !{!5167, !5168, !5169}
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !5165, file: !293, line: 70, baseType: !518, size: 32)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !5165, file: !293, line: 71, baseType: !527, size: 32)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !5165, file: !293, line: 72, baseType: !5170, size: 32)
!5170 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !5171, line: 24, baseType: !5172)
!5171 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!5172 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5171, line: 22, size: 32, elements: !5173)
!5173 = !{!5174}
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5172, file: !5171, line: 23, baseType: !5175, size: 32)
!5175 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !5171, line: 20, baseType: !524)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5162, file: !293, line: 74, baseType: !292, size: 32, offset: 32)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !5151, file: !293, line: 306, baseType: !57, size: 64, offset: 960)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !5151, file: !293, line: 307, baseType: !55, size: 64, offset: 1024)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !5151, file: !293, line: 308, baseType: !5180, size: 576, offset: 1088)
!5180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !293, line: 205, size: 576, elements: !5181)
!5181 = !{!5182, !5184, !5185, !5186, !5187, !5188, !5189, !5190, !5191}
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !5180, file: !293, line: 206, baseType: !5183, size: 64)
!5183 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !293, line: 66, baseType: !59)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !5180, file: !293, line: 207, baseType: !5183, size: 64, offset: 64)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !5180, file: !293, line: 208, baseType: !5183, size: 64, offset: 128)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !5180, file: !293, line: 209, baseType: !5183, size: 64, offset: 192)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !5180, file: !293, line: 210, baseType: !5183, size: 64, offset: 256)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !5180, file: !293, line: 211, baseType: !5183, size: 64, offset: 320)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !5180, file: !293, line: 212, baseType: !5183, size: 64, offset: 384)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !5180, file: !293, line: 213, baseType: !1382, size: 64, offset: 448)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !5180, file: !293, line: 214, baseType: !1382, size: 64, offset: 512)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !5060, file: !288, line: 2085, baseType: !5193, size: 64, offset: 1472)
!5193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5194, size: 64)
!5194 = !DISubroutineType(types: !5195)
!5195 = !{!473, !663, !5196}
!5196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5197, size: 64)
!5197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !5198, line: 15, size: 256, elements: !5199)
!5198 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!5199 = !{!5200, !5201, !5202, !5203, !5204}
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !5197, file: !5198, line: 16, baseType: !849, size: 32)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !5197, file: !5198, line: 19, baseType: !38, size: 32, offset: 32)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !5197, file: !5198, line: 26, baseType: !55, size: 64, offset: 64)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !5197, file: !5198, line: 33, baseType: !55, size: 64, offset: 128)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !5197, file: !5198, line: 36, baseType: !5205, size: 64, offset: 192)
!5205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5206, size: 64)
!5206 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !130, line: 33, flags: DIFlagFwdDecl)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !5060, file: !288, line: 2087, baseType: !5193, size: 64, offset: 1536)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !5060, file: !288, line: 2089, baseType: !5040, size: 64, offset: 1600)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !664, file: !288, line: 1198, baseType: !5210, size: 64, offset: 448)
!5210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5211, size: 64)
!5211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5212)
!5212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !293, line: 324, size: 704, elements: !5213)
!5213 = !{!5214, !5218, !5222, !5226, !5227, !5228, !5229, !5230, !5235, !5240, !5244}
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !5212, file: !293, line: 325, baseType: !5215, size: 64)
!5215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5216, size: 64)
!5216 = !DISubroutineType(types: !5217)
!5217 = !{!38, !5150}
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !5212, file: !293, line: 326, baseType: !5219, size: 64, offset: 64)
!5219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5220, size: 64)
!5220 = !DISubroutineType(types: !5221)
!5221 = !{!5150, !663, !38}
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !5212, file: !293, line: 327, baseType: !5223, size: 64, offset: 128)
!5223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5224, size: 64)
!5224 = !DISubroutineType(types: !5225)
!5225 = !{null, !5150}
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !5212, file: !293, line: 328, baseType: !5215, size: 64, offset: 192)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !5212, file: !293, line: 329, baseType: !5215, size: 64, offset: 256)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !5212, file: !293, line: 330, baseType: !5215, size: 64, offset: 320)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !5212, file: !293, line: 331, baseType: !5106, size: 64, offset: 384)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !5212, file: !293, line: 334, baseType: !5231, size: 64, offset: 448)
!5231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5232, size: 64)
!5232 = !DISubroutineType(types: !5233)
!5233 = !{!5234, !512}
!5234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5183, size: 64)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !5212, file: !293, line: 335, baseType: !5236, size: 64, offset: 512)
!5236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5237, size: 64)
!5237 = !DISubroutineType(types: !5238)
!5238 = !{!38, !512, !5239}
!5239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5170, size: 64)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !5212, file: !293, line: 337, baseType: !5241, size: 64, offset: 576)
!5241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5242, size: 64)
!5242 = !DISubroutineType(types: !5243)
!5243 = !{!38, !512, !5234}
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !5212, file: !293, line: 339, baseType: !5245, size: 64, offset: 640)
!5245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5246, size: 64)
!5246 = !DISubroutineType(types: !5247)
!5247 = !{!38, !663, !5248}
!5248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5162, size: 64)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !664, file: !288, line: 1199, baseType: !5250, size: 64, offset: 512)
!5250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5251, size: 64)
!5251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5252)
!5252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !293, line: 430, size: 704, elements: !5253)
!5253 = !{!5254, !5260, !5261, !5265, !5266, !5267, !5282, !5305, !5309, !5310, !5333}
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !5252, file: !293, line: 431, baseType: !5255, size: 64)
!5255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5256, size: 64)
!5256 = !DISubroutineType(types: !5257)
!5257 = !{!38, !663, !38, !38, !5258}
!5258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5259, size: 64)
!5259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4737)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !5252, file: !293, line: 432, baseType: !5106, size: 64, offset: 64)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !5252, file: !293, line: 433, baseType: !5262, size: 64, offset: 128)
!5262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5263, size: 64)
!5263 = !DISubroutineType(types: !5264)
!5264 = !{!38, !663, !7}
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !5252, file: !293, line: 434, baseType: !5262, size: 64, offset: 192)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !5252, file: !293, line: 435, baseType: !5106, size: 64, offset: 256)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !5252, file: !293, line: 436, baseType: !5268, size: 64, offset: 320)
!5268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5269, size: 64)
!5269 = !DISubroutineType(types: !5270)
!5270 = !{!38, !663, !38, !5271}
!5271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5272, size: 64)
!5272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !293, line: 417, size: 256, elements: !5273)
!5273 = !{!5274, !5275, !5276, !5277, !5278, !5279, !5280, !5281}
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !5272, file: !293, line: 418, baseType: !38, size: 32)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !5272, file: !293, line: 419, baseType: !7, size: 32, offset: 32)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !5272, file: !293, line: 420, baseType: !7, size: 32, offset: 64)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !5272, file: !293, line: 422, baseType: !7, size: 32, offset: 96)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !5272, file: !293, line: 423, baseType: !7, size: 32, offset: 128)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !5272, file: !293, line: 424, baseType: !7, size: 32, offset: 160)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !5272, file: !293, line: 425, baseType: !7, size: 32, offset: 192)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !5272, file: !293, line: 426, baseType: !7, size: 32, offset: 224)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !5252, file: !293, line: 437, baseType: !5283, size: 64, offset: 384)
!5283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5284, size: 64)
!5284 = !DISubroutineType(types: !5285)
!5285 = !{!38, !663, !5162, !5286}
!5286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5287, size: 64)
!5287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !293, line: 345, size: 960, elements: !5288)
!5288 = !{!5289, !5290, !5291, !5292, !5293, !5294, !5295, !5296, !5297, !5298, !5299, !5300, !5301, !5302, !5303, !5304}
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !5287, file: !293, line: 346, baseType: !38, size: 32)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !5287, file: !293, line: 347, baseType: !585, size: 64, offset: 64)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !5287, file: !293, line: 348, baseType: !585, size: 64, offset: 128)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !5287, file: !293, line: 349, baseType: !585, size: 64, offset: 192)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !5287, file: !293, line: 350, baseType: !585, size: 64, offset: 256)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !5287, file: !293, line: 351, baseType: !585, size: 64, offset: 320)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !5287, file: !293, line: 352, baseType: !585, size: 64, offset: 384)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !5287, file: !293, line: 353, baseType: !760, size: 64, offset: 448)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !5287, file: !293, line: 355, baseType: !760, size: 64, offset: 512)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !5287, file: !293, line: 356, baseType: !38, size: 32, offset: 576)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !5287, file: !293, line: 357, baseType: !38, size: 32, offset: 608)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !5287, file: !293, line: 358, baseType: !585, size: 64, offset: 640)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !5287, file: !293, line: 359, baseType: !585, size: 64, offset: 704)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !5287, file: !293, line: 360, baseType: !585, size: 64, offset: 768)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !5287, file: !293, line: 361, baseType: !760, size: 64, offset: 832)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !5287, file: !293, line: 362, baseType: !38, size: 32, offset: 896)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !5252, file: !293, line: 438, baseType: !5306, size: 64, offset: 448)
!5306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5307, size: 64)
!5307 = !DISubroutineType(types: !5308)
!5308 = !{!38, !663, !5248, !5286}
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !5252, file: !293, line: 440, baseType: !5283, size: 64, offset: 512)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !5252, file: !293, line: 441, baseType: !5311, size: 64, offset: 576)
!5311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5312, size: 64)
!5312 = !DISubroutineType(types: !5313)
!5313 = !{!38, !663, !5314}
!5314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5315, size: 64)
!5315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !293, line: 411, size: 1408, elements: !5316)
!5316 = !{!5317, !5318}
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !5315, file: !293, line: 412, baseType: !7, size: 32)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !5315, file: !293, line: 413, baseType: !5319, size: 1344, offset: 64)
!5319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5320, size: 1344, elements: !439)
!5320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !293, line: 397, size: 448, elements: !5321)
!5321 = !{!5322, !5323, !5324, !5325, !5326, !5327, !5328, !5329, !5330, !5332}
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5320, file: !293, line: 398, baseType: !7, size: 32)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !5320, file: !293, line: 399, baseType: !7, size: 32, offset: 32)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !5320, file: !293, line: 401, baseType: !7, size: 32, offset: 64)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !5320, file: !293, line: 402, baseType: !7, size: 32, offset: 96)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !5320, file: !293, line: 403, baseType: !7, size: 32, offset: 128)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !5320, file: !293, line: 404, baseType: !7, size: 32, offset: 160)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !5320, file: !293, line: 405, baseType: !7, size: 32, offset: 192)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !5320, file: !293, line: 406, baseType: !587, size: 64, offset: 256)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !5320, file: !293, line: 407, baseType: !5331, size: 64, offset: 320)
!5331 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !41, line: 132, baseType: !585)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !5320, file: !293, line: 408, baseType: !5331, size: 64, offset: 384)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !5252, file: !293, line: 442, baseType: !5262, size: 64, offset: 640)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !664, file: !288, line: 1200, baseType: !5335, size: 64, offset: 576)
!5335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5336, size: 64)
!5336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5337)
!5337 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !288, line: 54, flags: DIFlagFwdDecl)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !664, file: !288, line: 1201, baseType: !55, size: 64, offset: 640)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !664, file: !288, line: 1202, baseType: !55, size: 64, offset: 704)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !664, file: !288, line: 1203, baseType: !55, size: 64, offset: 768)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !664, file: !288, line: 1204, baseType: !547, size: 64, offset: 832)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !664, file: !288, line: 1205, baseType: !1206, size: 320, offset: 896)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !664, file: !288, line: 1206, baseType: !38, size: 32, offset: 1216)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !664, file: !288, line: 1207, baseType: !65, size: 32, offset: 1248)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !664, file: !288, line: 1209, baseType: !36, size: 64, offset: 1280)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !664, file: !288, line: 1211, baseType: !5347, size: 64, offset: 1344)
!5347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5348, size: 64)
!5348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5349, size: 64)
!5349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5350)
!5350 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !288, line: 1211, flags: DIFlagFwdDecl)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !664, file: !288, line: 1223, baseType: !5352, size: 64, offset: 1408)
!5352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !564, line: 34, size: 64, elements: !5353)
!5353 = !{!5354}
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !5352, file: !564, line: 35, baseType: !567, size: 64)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !664, file: !288, line: 1224, baseType: !113, size: 128, offset: 1472)
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !664, file: !288, line: 1225, baseType: !5357, size: 64, offset: 1600)
!5357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5358, size: 64)
!5358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !5359, line: 40, size: 7424, elements: !5360)
!5359 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!5360 = !{!5361, !5363, !5364, !5365, !5368, !5371, !5372, !5373, !5374, !5375, !5376, !5377, !5378, !5379, !5380, !5381, !5382, !5386, !5387, !5388, !5389, !5390, !5391, !5392, !5395, !5396}
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !5358, file: !5359, line: 41, baseType: !5362, size: 64)
!5362 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !41, line: 131, baseType: !585)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !5358, file: !5359, line: 42, baseType: !5362, size: 64, offset: 64)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !5358, file: !5359, line: 43, baseType: !3252, size: 64, offset: 128)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !5358, file: !5359, line: 44, baseType: !5366, size: 64, offset: 192)
!5366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5367, size: 64)
!5367 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2854, line: 74, flags: DIFlagFwdDecl)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !5358, file: !5359, line: 45, baseType: !5369, size: 64, offset: 256)
!5369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5370, size: 64)
!5370 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !5359, line: 45, flags: DIFlagFwdDecl)
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !5358, file: !5359, line: 46, baseType: !55, size: 64, offset: 320)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !5358, file: !5359, line: 47, baseType: !1356, size: 8, offset: 384)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !5358, file: !5359, line: 48, baseType: !99, size: 8, offset: 392)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !5358, file: !5359, line: 49, baseType: !1356, size: 8, offset: 400)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !5358, file: !5359, line: 50, baseType: !1356, size: 8, offset: 408)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !5358, file: !5359, line: 51, baseType: !668, size: 32, offset: 416)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !5358, file: !5359, line: 52, baseType: !65, size: 32, offset: 448)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !5358, file: !5359, line: 53, baseType: !75, size: 32, offset: 480)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !5358, file: !5359, line: 54, baseType: !512, size: 64, offset: 512)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !5358, file: !5359, line: 55, baseType: !36, size: 64, offset: 576)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !5358, file: !5359, line: 56, baseType: !36, size: 64, offset: 640)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !5358, file: !5359, line: 57, baseType: !5383, size: 64, offset: 704)
!5383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5384, size: 64)
!5384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5385)
!5385 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !5359, line: 57, flags: DIFlagFwdDecl)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !5358, file: !5359, line: 58, baseType: !763, size: 256, offset: 768)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !5358, file: !5359, line: 60, baseType: !38, size: 32, offset: 1024)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !5358, file: !5359, line: 61, baseType: !38, size: 32, offset: 1056)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !5358, file: !5359, line: 62, baseType: !403, size: 64, offset: 1088)
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !5358, file: !5359, line: 65, baseType: !763, size: 256, offset: 1152)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !5358, file: !5359, line: 66, baseType: !663, size: 64, offset: 1408)
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !5358, file: !5359, line: 68, baseType: !5393, size: 64, offset: 1472)
!5393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5394, size: 64)
!5394 = !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !5359, line: 68, flags: DIFlagFwdDecl)
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !5358, file: !5359, line: 72, baseType: !1356, size: 8, offset: 1536)
!5396 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !5358, file: !5359, line: 77, baseType: !3407, size: 5824, offset: 1600)
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !664, file: !288, line: 1226, baseType: !5398, size: 64, offset: 1664)
!5398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5399, size: 64)
!5399 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !288, line: 1226, flags: DIFlagFwdDecl)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !664, file: !288, line: 1227, baseType: !5401, size: 64, offset: 1728)
!5401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5402, size: 64)
!5402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !299, line: 163, size: 6848, elements: !5403)
!5403 = !{!5404, !5405, !5406, !5407, !5408, !5409, !5414, !5415, !5416, !5417, !5418, !5419, !5420, !5460, !5461, !5462, !5463, !5464, !5465, !5466}
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5402, file: !299, line: 164, baseType: !585, size: 64)
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !5402, file: !299, line: 165, baseType: !905, size: 192, align: 64, offset: 64)
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !5402, file: !299, line: 166, baseType: !113, size: 128, offset: 256)
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !5402, file: !299, line: 167, baseType: !55, size: 64, offset: 384)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !5402, file: !299, line: 168, baseType: !55, size: 64, offset: 448)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !5402, file: !299, line: 170, baseType: !5410, size: 32, offset: 512)
!5410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !5411, line: 19, size: 32, elements: !5412)
!5411 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!5412 = !{!5413}
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5410, file: !5411, line: 20, baseType: !806, size: 32)
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !5402, file: !299, line: 171, baseType: !7, size: 32, offset: 544)
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !5402, file: !299, line: 172, baseType: !7, size: 32, offset: 576)
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !5402, file: !299, line: 173, baseType: !7, size: 32, offset: 608)
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !5402, file: !299, line: 173, baseType: !7, size: 32, offset: 640)
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !5402, file: !299, line: 179, baseType: !754, size: 64, offset: 704)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "last_bdp_sleep", scope: !5402, file: !299, line: 184, baseType: !55, size: 64, offset: 768)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !5402, file: !299, line: 186, baseType: !5421, size: 4672, offset: 832)
!5421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !299, line: 105, size: 4672, elements: !5422)
!5422 = !{!5423, !5424, !5425, !5426, !5427, !5428, !5429, !5430, !5431, !5432, !5433, !5434, !5435, !5436, !5437, !5438, !5439, !5440, !5447, !5448, !5449, !5450, !5451, !5458, !5459}
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !5421, file: !299, line: 106, baseType: !5401, size: 64)
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5421, file: !299, line: 108, baseType: !55, size: 64, offset: 64)
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !5421, file: !299, line: 109, baseType: !55, size: 64, offset: 128)
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !5421, file: !299, line: 111, baseType: !113, size: 128, offset: 192)
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !5421, file: !299, line: 112, baseType: !113, size: 128, offset: 320)
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !5421, file: !299, line: 113, baseType: !113, size: 128, offset: 448)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !5421, file: !299, line: 114, baseType: !113, size: 128, offset: 576)
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !5421, file: !299, line: 115, baseType: !75, size: 32, offset: 704)
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_inodes", scope: !5421, file: !299, line: 117, baseType: !65, size: 32, offset: 736)
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !5421, file: !299, line: 118, baseType: !1243, size: 1280, offset: 768)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !5421, file: !299, line: 120, baseType: !55, size: 64, offset: 2048)
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !5421, file: !299, line: 121, baseType: !55, size: 64, offset: 2112)
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !5421, file: !299, line: 122, baseType: !55, size: 64, offset: 2176)
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !5421, file: !299, line: 123, baseType: !55, size: 64, offset: 2240)
!5437 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !5421, file: !299, line: 124, baseType: !55, size: 64, offset: 2304)
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !5421, file: !299, line: 132, baseType: !55, size: 64, offset: 2368)
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !5421, file: !299, line: 133, baseType: !55, size: 64, offset: 2432)
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !5421, file: !299, line: 135, baseType: !5441, size: 384, offset: 2496)
!5441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !5442, line: 76, size: 384, elements: !5443)
!5442 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a71374c9cbe54a4b0f3b6bbea75a8cfc")
!5443 = !{!5444, !5445, !5446}
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !5441, file: !5442, line: 78, baseType: !1244, size: 320)
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !5441, file: !5442, line: 80, baseType: !7, size: 32, offset: 320)
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5441, file: !5442, line: 81, baseType: !768, size: 32, offset: 352)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !5421, file: !299, line: 136, baseType: !38, size: 32, offset: 2880)
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !5421, file: !299, line: 137, baseType: !298, size: 32, offset: 2912)
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !5421, file: !299, line: 139, baseType: !75, size: 32, offset: 2944)
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !5421, file: !299, line: 140, baseType: !113, size: 128, offset: 3008)
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !5421, file: !299, line: 141, baseType: !5452, size: 704, offset: 3136)
!5452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1472, line: 111, size: 704, elements: !5453)
!5453 = !{!5454, !5455, !5456, !5457}
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5452, file: !1472, line: 112, baseType: !1471, size: 256)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !5452, file: !1472, line: 113, baseType: !2327, size: 320, offset: 256)
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !5452, file: !1472, line: 116, baseType: !2542, size: 64, offset: 576)
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !5452, file: !1472, line: 117, baseType: !38, size: 32, offset: 640)
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "bw_dwork", scope: !5421, file: !299, line: 142, baseType: !5452, size: 704, offset: 3840)
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !5421, file: !299, line: 144, baseType: !113, size: 128, offset: 4544)
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !5402, file: !299, line: 187, baseType: !113, size: 128, offset: 5504)
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !5402, file: !299, line: 193, baseType: !70, size: 192, offset: 5632)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5402, file: !299, line: 195, baseType: !3406, size: 64, offset: 5824)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !5402, file: !299, line: 196, baseType: !2366, size: 512, offset: 5888)
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5402, file: !299, line: 197, baseType: !3406, size: 64, offset: 6400)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !5402, file: !299, line: 199, baseType: !2327, size: 320, offset: 6464)
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !5402, file: !299, line: 202, baseType: !547, size: 64, offset: 6784)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !664, file: !288, line: 1228, baseType: !5468, size: 64, offset: 1792)
!5468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5469, size: 64)
!5469 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !288, line: 1228, flags: DIFlagFwdDecl)
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !664, file: !288, line: 1229, baseType: !819, size: 128, offset: 1856)
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !664, file: !288, line: 1230, baseType: !7, size: 32, offset: 1984)
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !664, file: !288, line: 1231, baseType: !5473, size: 2496, offset: 2048)
!5473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !293, line: 521, size: 2496, elements: !5474)
!5474 = !{!5475, !5476, !5477, !5479, !5511}
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5473, file: !293, line: 522, baseType: !7, size: 32)
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !5473, file: !293, line: 523, baseType: !1206, size: 320, offset: 64)
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !5473, file: !293, line: 524, baseType: !5478, size: 192, offset: 384)
!5478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !512, size: 192, elements: !439)
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5473, file: !293, line: 525, baseType: !5480, size: 1728, offset: 576)
!5480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5481, size: 1728, elements: !439)
!5481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !293, line: 222, size: 576, elements: !5482)
!5482 = !{!5483, !5503, !5504, !5505, !5506, !5507, !5508, !5509, !5510}
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !5481, file: !293, line: 223, baseType: !5484, size: 64)
!5484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5485, size: 64)
!5485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !293, line: 445, size: 256, elements: !5486)
!5486 = !{!5487, !5488, !5501, !5502}
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !5485, file: !293, line: 446, baseType: !38, size: 32)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !5485, file: !293, line: 447, baseType: !5489, size: 64, offset: 64)
!5489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5490, size: 64)
!5490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5491)
!5491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !293, line: 312, size: 512, elements: !5492)
!5492 = !{!5493, !5494, !5495, !5496, !5497, !5498, !5499, !5500}
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !5491, file: !293, line: 313, baseType: !5106, size: 64)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !5491, file: !293, line: 314, baseType: !5106, size: 64, offset: 64)
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !5491, file: !293, line: 315, baseType: !5106, size: 64, offset: 128)
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !5491, file: !293, line: 316, baseType: !5106, size: 64, offset: 192)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !5491, file: !293, line: 317, baseType: !5215, size: 64, offset: 256)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !5491, file: !293, line: 318, baseType: !5215, size: 64, offset: 320)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !5491, file: !293, line: 319, baseType: !5215, size: 64, offset: 384)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !5491, file: !293, line: 320, baseType: !5245, size: 64, offset: 448)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !5485, file: !293, line: 448, baseType: !384, size: 64, offset: 128)
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !5485, file: !293, line: 449, baseType: !5484, size: 64, offset: 192)
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !5481, file: !293, line: 224, baseType: !38, size: 32, offset: 64)
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !5481, file: !293, line: 226, baseType: !113, size: 128, offset: 128)
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !5481, file: !293, line: 227, baseType: !55, size: 64, offset: 256)
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !5481, file: !293, line: 228, baseType: !7, size: 32, offset: 320)
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !5481, file: !293, line: 229, baseType: !7, size: 32, offset: 352)
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !5481, file: !293, line: 230, baseType: !5183, size: 64, offset: 384)
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !5481, file: !293, line: 231, baseType: !5183, size: 64, offset: 448)
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !5481, file: !293, line: 232, baseType: !36, size: 64, offset: 512)
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5473, file: !293, line: 526, baseType: !5512, size: 192, offset: 2304)
!5512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5489, size: 192, elements: !439)
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !664, file: !288, line: 1233, baseType: !5514, size: 2368, offset: 4544)
!5514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !288, line: 1184, size: 2368, elements: !5515)
!5515 = !{!5516, !5517, !5518}
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !5514, file: !288, line: 1185, baseType: !42, size: 16)
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !5514, file: !288, line: 1186, baseType: !42, size: 16, offset: 16)
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !5514, file: !288, line: 1187, baseType: !5519, size: 2304, offset: 64)
!5519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5520, size: 2304, elements: !439)
!5520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !5521, line: 12, size: 768, elements: !5522)
!5521 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!5522 = !{!5523, !5531, !5533, !5534, !5535}
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !5520, file: !5521, line: 13, baseType: !5524, size: 384)
!5524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !5525, line: 17, size: 384, elements: !5526)
!5525 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!5526 = !{!5527, !5528, !5529, !5530}
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !5524, file: !5525, line: 18, baseType: !38, size: 32)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !5524, file: !5525, line: 19, baseType: !38, size: 32, offset: 32)
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !5524, file: !5525, line: 20, baseType: !70, size: 192, offset: 64)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !5524, file: !5525, line: 22, baseType: !741, size: 128, align: 64, offset: 256)
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !5520, file: !5521, line: 14, baseType: !5532, size: 64, offset: 384)
!5532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!5533 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !5520, file: !5521, line: 15, baseType: !4148, size: 64, offset: 448)
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !5520, file: !5521, line: 16, baseType: !70, size: 192, offset: 512)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !5520, file: !5521, line: 17, baseType: !65, size: 32, offset: 704)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !664, file: !288, line: 1240, baseType: !36, size: 64, offset: 6912)
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !664, file: !288, line: 1243, baseType: !581, size: 32, offset: 6976)
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !664, file: !288, line: 1245, baseType: !1382, size: 64, offset: 7040)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !664, file: !288, line: 1246, baseType: !1382, size: 64, offset: 7104)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !664, file: !288, line: 1248, baseType: !582, size: 32, offset: 7168)
!5541 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !664, file: !288, line: 1249, baseType: !5542, size: 64, offset: 7232)
!5542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5543, size: 64)
!5543 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !288, line: 634, flags: DIFlagFwdDecl)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !664, file: !288, line: 1252, baseType: !2712, size: 256, offset: 7296)
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !664, file: !288, line: 1253, baseType: !5546, size: 128, offset: 7552)
!5546 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !5547, line: 21, baseType: !5548)
!5547 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!5548 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5547, line: 19, size: 128, elements: !5549)
!5549 = !{!5550}
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !5548, file: !5547, line: 20, baseType: !5551, size: 128)
!5551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 128, elements: !1801)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !664, file: !288, line: 1255, baseType: !7, size: 32, offset: 7680)
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !664, file: !288, line: 1261, baseType: !763, size: 256, offset: 7744)
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !664, file: !288, line: 1267, baseType: !32, size: 64, offset: 8000)
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !664, file: !288, line: 1269, baseType: !610, size: 64, offset: 8064)
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !664, file: !288, line: 1271, baseType: !5557, size: 448, offset: 8128)
!5557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !5198, line: 63, size: 448, elements: !5558)
!5558 = !{!5559, !5564, !5565, !5566, !5567, !5568, !5569}
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !5557, file: !5198, line: 64, baseType: !5560, size: 64)
!5560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5561, size: 64)
!5561 = !DISubroutineType(types: !5562)
!5562 = !{!55, !5563, !5196}
!5563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5557, size: 64)
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !5557, file: !5198, line: 66, baseType: !5560, size: 64, offset: 64)
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !5557, file: !5198, line: 69, baseType: !473, size: 64, offset: 128)
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !5557, file: !5198, line: 70, baseType: !38, size: 32, offset: 192)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5557, file: !5198, line: 71, baseType: !7, size: 32, offset: 224)
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5557, file: !5198, line: 74, baseType: !113, size: 128, offset: 256)
!5569 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !5557, file: !5198, line: 85, baseType: !5570, size: 64, offset: 384)
!5570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !664, file: !288, line: 1274, baseType: !754, size: 64, offset: 8576)
!5572 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !664, file: !288, line: 1280, baseType: !754, size: 64, offset: 8640)
!5573 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !664, file: !288, line: 1283, baseType: !38, size: 32, offset: 8704)
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !664, file: !288, line: 1286, baseType: !4985, size: 32, offset: 8736)
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !664, file: !288, line: 1289, baseType: !2542, size: 64, offset: 8768)
!5576 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !664, file: !288, line: 1290, baseType: !815, size: 64, offset: 8832)
!5577 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !664, file: !288, line: 1297, baseType: !1311, size: 64, offset: 8896)
!5578 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !664, file: !288, line: 1304, baseType: !5579, size: 64, offset: 8960)
!5579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !5580, line: 49, size: 64, elements: !5581)
!5580 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!5581 = !{!5582}
!5582 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5579, file: !5580, line: 50, baseType: !5583, size: 64)
!5583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5584, size: 64)
!5584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !5580, line: 41, size: 512, align: 512, elements: !5585)
!5585 = !{!5586, !5587, !5592}
!5586 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5584, file: !5580, line: 43, baseType: !75, size: 32)
!5587 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !5584, file: !5580, line: 45, baseType: !5588, size: 192, offset: 64)
!5588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !5580, line: 29, size: 192, elements: !5589)
!5589 = !{!5590, !5591}
!5590 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5588, file: !5580, line: 30, baseType: !113, size: 128)
!5591 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !5588, file: !5580, line: 32, baseType: !473, size: 64, offset: 128)
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !5584, file: !5580, line: 46, baseType: !473, size: 64, offset: 256)
!5593 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !664, file: !288, line: 1305, baseType: !5579, size: 64, offset: 9024)
!5594 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !664, file: !288, line: 1306, baseType: !741, size: 128, align: 64, offset: 9088)
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !664, file: !288, line: 1307, baseType: !1471, size: 256, offset: 9216)
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !664, file: !288, line: 1309, baseType: !763, size: 256, offset: 9472)
!5597 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !664, file: !288, line: 1314, baseType: !38, size: 32, offset: 9728)
!5598 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !664, file: !288, line: 1317, baseType: !75, size: 32, align: 512, offset: 10240)
!5599 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !664, file: !288, line: 1318, baseType: !113, size: 128, offset: 10304)
!5600 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !664, file: !288, line: 1320, baseType: !75, size: 32, offset: 10432)
!5601 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !664, file: !288, line: 1321, baseType: !113, size: 128, offset: 10496)
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !658, file: !659, line: 73, baseType: !38, size: 32, offset: 128)
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !658, file: !659, line: 74, baseType: !5604, size: 64, offset: 192)
!5604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5605, size: 64)
!5605 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1744, line: 42, flags: DIFlagFwdDecl)
!5606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4737, size: 64)
!5607 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !612, file: !549, line: 141, baseType: !5608, size: 64, offset: 704)
!5608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5609, size: 64)
!5609 = !DISubroutineType(types: !5610)
!5610 = !{!38, !5258, !1356}
!5611 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !612, file: !549, line: 142, baseType: !5612, size: 64, offset: 768)
!5612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5613, size: 64)
!5613 = !DISubroutineType(types: !5614)
!5614 = !{!547, !547, !5615}
!5615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5616, size: 64)
!5616 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !513)
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !548, file: !549, line: 96, baseType: !663, size: 64, offset: 832)
!5618 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !548, file: !549, line: 97, baseType: !55, size: 64, offset: 896)
!5619 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !548, file: !549, line: 98, baseType: !36, size: 64, offset: 960)
!5620 = !DIDerivedType(tag: DW_TAG_member, scope: !548, file: !549, line: 100, baseType: !5621, size: 128, offset: 1024)
!5621 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !548, file: !549, line: 100, size: 128, elements: !5622)
!5622 = !{!5623, !5624}
!5623 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !5621, file: !549, line: 101, baseType: !113, size: 128)
!5624 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !5621, file: !549, line: 102, baseType: !2302, size: 64)
!5625 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !548, file: !549, line: 104, baseType: !113, size: 128, offset: 1152)
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !548, file: !549, line: 105, baseType: !113, size: 128, offset: 1280)
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !548, file: !549, line: 113, baseType: !5628, size: 128, offset: 1408)
!5628 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !548, file: !549, line: 109, size: 128, elements: !5629)
!5629 = !{!5630, !5631, !5632}
!5630 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !5628, file: !549, line: 110, baseType: !819, size: 128)
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !5628, file: !549, line: 111, baseType: !563, size: 128)
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !5628, file: !549, line: 112, baseType: !741, size: 128, align: 64)
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !541, file: !288, line: 1968, baseType: !5634, size: 64, offset: 64)
!5634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5635, size: 64)
!5635 = !DISubroutineType(types: !5636)
!5636 = !{!32, !547, !512, !5637}
!5637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5638, size: 64)
!5638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !5639, line: 10, size: 128, elements: !5640)
!5639 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!5640 = !{!5641, !5642}
!5641 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !5638, file: !5639, line: 11, baseType: !3747, size: 64)
!5642 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !5638, file: !5639, line: 12, baseType: !36, size: 64, offset: 64)
!5643 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !541, file: !288, line: 1969, baseType: !5644, size: 64, offset: 128)
!5644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5645, size: 64)
!5645 = !DISubroutineType(types: !5646)
!5646 = !{!38, !5604, !512, !38}
!5647 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !541, file: !288, line: 1970, baseType: !5648, size: 64, offset: 192)
!5648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5649, size: 64)
!5649 = !DISubroutineType(types: !5650)
!5650 = !{!535, !512, !38, !1356}
!5651 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !541, file: !288, line: 1972, baseType: !5652, size: 64, offset: 256)
!5652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5653, size: 64)
!5653 = !DISubroutineType(types: !5654)
!5654 = !{!38, !547, !438, !38}
!5655 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !541, file: !288, line: 1974, baseType: !5656, size: 64, offset: 320)
!5656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5657, size: 64)
!5657 = !DISubroutineType(types: !5658)
!5658 = !{!38, !5604, !512, !547, !40, !1356}
!5659 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !541, file: !288, line: 1976, baseType: !5660, size: 64, offset: 384)
!5660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5661, size: 64)
!5661 = !DISubroutineType(types: !5662)
!5662 = !{!38, !547, !512, !547}
!5663 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !541, file: !288, line: 1977, baseType: !5664, size: 64, offset: 448)
!5664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5665, size: 64)
!5665 = !DISubroutineType(types: !5666)
!5666 = !{!38, !512, !547}
!5667 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !541, file: !288, line: 1978, baseType: !5668, size: 64, offset: 512)
!5668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5669, size: 64)
!5669 = !DISubroutineType(types: !5670)
!5670 = !{!38, !5604, !512, !547, !32}
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !541, file: !288, line: 1980, baseType: !5672, size: 64, offset: 576)
!5672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5673, size: 64)
!5673 = !DISubroutineType(types: !5674)
!5674 = !{!38, !5604, !512, !547, !40}
!5675 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !541, file: !288, line: 1982, baseType: !5664, size: 64, offset: 640)
!5676 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !541, file: !288, line: 1983, baseType: !5677, size: 64, offset: 704)
!5677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5678, size: 64)
!5678 = !DISubroutineType(types: !5679)
!5679 = !{!38, !5604, !512, !547, !40, !668}
!5680 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !541, file: !288, line: 1985, baseType: !5681, size: 64, offset: 768)
!5681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5682, size: 64)
!5682 = !DISubroutineType(types: !5683)
!5683 = !{!38, !5604, !512, !547, !512, !547, !7}
!5684 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !541, file: !288, line: 1987, baseType: !5685, size: 64, offset: 832)
!5685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5686, size: 64)
!5686 = !DISubroutineType(types: !5687)
!5687 = !{!38, !5604, !547, !5688}
!5688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5689, size: 64)
!5689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !288, line: 226, size: 640, elements: !5690)
!5690 = !{!5691, !5692, !5693, !5703, !5712, !5713, !5718, !5719, !5720}
!5691 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !5689, file: !288, line: 227, baseType: !7, size: 32)
!5692 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !5689, file: !288, line: 228, baseType: !40, size: 16, offset: 32)
!5693 = !DIDerivedType(tag: DW_TAG_member, scope: !5689, file: !288, line: 241, baseType: !5694, size: 32, offset: 64)
!5694 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5689, file: !288, line: 241, size: 32, elements: !5695)
!5695 = !{!5696, !5697}
!5696 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !5694, file: !288, line: 242, baseType: !518, size: 32)
!5697 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !5694, file: !288, line: 243, baseType: !5698, size: 32)
!5698 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !5699, line: 16, baseType: !5700)
!5699 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!5700 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5699, line: 14, size: 32, elements: !5701)
!5701 = !{!5702}
!5702 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5700, file: !5699, line: 15, baseType: !523, size: 32)
!5703 = !DIDerivedType(tag: DW_TAG_member, scope: !5689, file: !288, line: 245, baseType: !5704, size: 32, offset: 96)
!5704 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5689, file: !288, line: 245, size: 32, elements: !5705)
!5705 = !{!5706, !5707}
!5706 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !5704, file: !288, line: 246, baseType: !527, size: 32)
!5707 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !5704, file: !288, line: 247, baseType: !5708, size: 32)
!5708 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !5699, line: 20, baseType: !5709)
!5709 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5699, line: 18, size: 32, elements: !5710)
!5710 = !{!5711}
!5711 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5709, file: !5699, line: 19, baseType: !531, size: 32)
!5712 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !5689, file: !288, line: 249, baseType: !57, size: 64, offset: 128)
!5713 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !5689, file: !288, line: 250, baseType: !5714, size: 128, offset: 192)
!5714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1383, line: 13, size: 128, elements: !5715)
!5715 = !{!5716, !5717}
!5716 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5714, file: !1383, line: 14, baseType: !1382, size: 64)
!5717 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5714, file: !1383, line: 15, baseType: !473, size: 64, offset: 64)
!5718 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !5689, file: !288, line: 251, baseType: !5714, size: 128, offset: 320)
!5719 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !5689, file: !288, line: 252, baseType: !5714, size: 128, offset: 448)
!5720 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !5689, file: !288, line: 259, baseType: !728, size: 64, offset: 576)
!5721 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !541, file: !288, line: 1988, baseType: !5722, size: 64, offset: 896)
!5722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5723, size: 64)
!5723 = !DISubroutineType(types: !5724)
!5724 = !{!38, !5604, !5258, !5725, !581, !7}
!5725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5726, size: 64)
!5726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !5727, line: 22, size: 1280, elements: !5728)
!5727 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!5728 = !{!5729, !5730, !5731, !5732, !5733, !5734, !5735, !5736, !5737, !5738, !5739, !5740, !5741, !5742, !5743, !5744, !5745, !5746, !5747, !5748, !5749}
!5729 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !5726, file: !5727, line: 23, baseType: !581, size: 32)
!5730 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5726, file: !5727, line: 24, baseType: !40, size: 16, offset: 32)
!5731 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !5726, file: !5727, line: 25, baseType: !7, size: 32, offset: 64)
!5732 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !5726, file: !5727, line: 26, baseType: !1390, size: 32, offset: 96)
!5733 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !5726, file: !5727, line: 27, baseType: !585, size: 64, offset: 128)
!5734 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !5726, file: !5727, line: 28, baseType: !585, size: 64, offset: 192)
!5735 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !5726, file: !5727, line: 41, baseType: !585, size: 64, offset: 256)
!5736 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5726, file: !5727, line: 42, baseType: !668, size: 32, offset: 320)
!5737 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !5726, file: !5727, line: 43, baseType: !668, size: 32, offset: 352)
!5738 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !5726, file: !5727, line: 44, baseType: !518, size: 32, offset: 384)
!5739 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !5726, file: !5727, line: 45, baseType: !527, size: 32, offset: 416)
!5740 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5726, file: !5727, line: 46, baseType: !57, size: 64, offset: 448)
!5741 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !5726, file: !5727, line: 47, baseType: !5714, size: 128, offset: 512)
!5742 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !5726, file: !5727, line: 48, baseType: !5714, size: 128, offset: 640)
!5743 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !5726, file: !5727, line: 49, baseType: !5714, size: 128, offset: 768)
!5744 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !5726, file: !5727, line: 50, baseType: !5714, size: 128, offset: 896)
!5745 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !5726, file: !5727, line: 51, baseType: !585, size: 64, offset: 1024)
!5746 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !5726, file: !5727, line: 52, baseType: !585, size: 64, offset: 1088)
!5747 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !5726, file: !5727, line: 53, baseType: !581, size: 32, offset: 1152)
!5748 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !5726, file: !5727, line: 54, baseType: !581, size: 32, offset: 1184)
!5749 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !5726, file: !5727, line: 55, baseType: !585, size: 64, offset: 1216)
!5750 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !541, file: !288, line: 1990, baseType: !5751, size: 64, offset: 960)
!5751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5752, size: 64)
!5752 = !DISubroutineType(types: !5753)
!5753 = !{!470, !547, !438, !51}
!5754 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !541, file: !288, line: 1991, baseType: !5755, size: 64, offset: 1024)
!5755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5756, size: 64)
!5756 = !DISubroutineType(types: !5757)
!5757 = !{!38, !512, !5758, !585, !585}
!5758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5759, size: 64)
!5759 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !288, line: 55, flags: DIFlagFwdDecl)
!5760 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !541, file: !288, line: 1993, baseType: !5761, size: 64, offset: 1088)
!5761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5762, size: 64)
!5762 = !DISubroutineType(types: !5763)
!5763 = !{!38, !512, !38}
!5764 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !541, file: !288, line: 1994, baseType: !5765, size: 64, offset: 1152)
!5765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5766, size: 64)
!5766 = !DISubroutineType(types: !5767)
!5767 = !{!38, !512, !547, !728, !7, !40}
!5768 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !541, file: !288, line: 1997, baseType: !5769, size: 64, offset: 1216)
!5769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5770, size: 64)
!5770 = !DISubroutineType(types: !5771)
!5771 = !{!38, !5604, !512, !728, !40}
!5772 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !541, file: !288, line: 1999, baseType: !5773, size: 64, offset: 1280)
!5773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5774, size: 64)
!5774 = !DISubroutineType(types: !5775)
!5775 = !{!535, !5604, !547, !38}
!5776 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !541, file: !288, line: 2001, baseType: !5777, size: 64, offset: 1344)
!5777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5778, size: 64)
!5778 = !DISubroutineType(types: !5779)
!5779 = !{!38, !5604, !547, !535, !38}
!5780 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !541, file: !288, line: 2003, baseType: !5781, size: 64, offset: 1408)
!5781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5782, size: 64)
!5782 = !DISubroutineType(types: !5783)
!5783 = !{!38, !5604, !547, !5784}
!5784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5785, size: 64)
!5785 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !288, line: 76, flags: DIFlagFwdDecl)
!5786 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !541, file: !288, line: 2005, baseType: !5787, size: 64, offset: 1472)
!5787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5788, size: 64)
!5788 = !DISubroutineType(types: !5789)
!5789 = !{!38, !547, !5784}
!5790 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !541, file: !288, line: 2006, baseType: !5791, size: 64, offset: 1536)
!5791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5792, size: 64)
!5792 = !DISubroutineType(types: !5793)
!5793 = !{!5794, !512}
!5794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5795, size: 64)
!5795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !288, line: 3192, size: 192, elements: !5796)
!5796 = !{!5797, !5798}
!5797 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !5795, file: !288, line: 3193, baseType: !844, size: 128)
!5798 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !5795, file: !288, line: 3194, baseType: !581, size: 32, offset: 128)
!5799 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !513, file: !288, line: 655, baseType: !663, size: 64, offset: 448)
!5800 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !513, file: !288, line: 656, baseType: !508, size: 64, offset: 512)
!5801 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !513, file: !288, line: 659, baseType: !36, size: 64, offset: 576)
!5802 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !513, file: !288, line: 663, baseType: !55, size: 64, offset: 640)
!5803 = !DIDerivedType(tag: DW_TAG_member, scope: !513, file: !288, line: 671, baseType: !5804, size: 32, offset: 704)
!5804 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !513, file: !288, line: 671, size: 32, elements: !5805)
!5805 = !{!5806, !5807}
!5806 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !5804, file: !288, line: 672, baseType: !3030, size: 32)
!5807 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !5804, file: !288, line: 673, baseType: !7, size: 32)
!5808 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !513, file: !288, line: 675, baseType: !668, size: 32, offset: 736)
!5809 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !513, file: !288, line: 676, baseType: !57, size: 64, offset: 768)
!5810 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !513, file: !288, line: 677, baseType: !5714, size: 128, offset: 832)
!5811 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !513, file: !288, line: 678, baseType: !5714, size: 128, offset: 960)
!5812 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !513, file: !288, line: 679, baseType: !5714, size: 128, offset: 1088)
!5813 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !513, file: !288, line: 680, baseType: !75, size: 32, offset: 1216)
!5814 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !513, file: !288, line: 681, baseType: !42, size: 16, offset: 1248)
!5815 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !513, file: !288, line: 682, baseType: !99, size: 8, offset: 1264)
!5816 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !513, file: !288, line: 683, baseType: !99, size: 8, offset: 1272)
!5817 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !513, file: !288, line: 684, baseType: !5331, size: 64, offset: 1280)
!5818 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !513, file: !288, line: 691, baseType: !55, size: 64, offset: 1344)
!5819 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !513, file: !288, line: 692, baseType: !1206, size: 320, offset: 1408)
!5820 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !513, file: !288, line: 694, baseType: !55, size: 64, offset: 1728)
!5821 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !513, file: !288, line: 695, baseType: !55, size: 64, offset: 1792)
!5822 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !513, file: !288, line: 697, baseType: !819, size: 128, offset: 1856)
!5823 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !513, file: !288, line: 698, baseType: !113, size: 128, offset: 1984)
!5824 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !513, file: !288, line: 707, baseType: !113, size: 128, offset: 2112)
!5825 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !513, file: !288, line: 708, baseType: !113, size: 128, offset: 2240)
!5826 = !DIDerivedType(tag: DW_TAG_member, scope: !513, file: !288, line: 709, baseType: !5827, size: 128, offset: 2368)
!5827 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !513, file: !288, line: 709, size: 128, elements: !5828)
!5828 = !{!5829, !5830}
!5829 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !5827, file: !288, line: 710, baseType: !815, size: 64)
!5830 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !5827, file: !288, line: 711, baseType: !741, size: 128, align: 64)
!5831 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !513, file: !288, line: 713, baseType: !756, size: 64, offset: 2496)
!5832 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !513, file: !288, line: 714, baseType: !756, size: 64, offset: 2560)
!5833 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !513, file: !288, line: 715, baseType: !65, size: 32, offset: 2624)
!5834 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !513, file: !288, line: 716, baseType: !65, size: 32, offset: 2656)
!5835 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !513, file: !288, line: 717, baseType: !65, size: 32, offset: 2688)
!5836 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !513, file: !288, line: 719, baseType: !65, size: 32, offset: 2720)
!5837 = !DIDerivedType(tag: DW_TAG_member, scope: !513, file: !288, line: 721, baseType: !5838, size: 64, offset: 2752)
!5838 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !513, file: !288, line: 721, size: 64, elements: !5839)
!5839 = !{!5840, !5841}
!5840 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !5838, file: !288, line: 722, baseType: !4744, size: 64)
!5841 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !5838, file: !288, line: 723, baseType: !5067, size: 64)
!5842 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !513, file: !288, line: 725, baseType: !5843, size: 64, offset: 2816)
!5843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5844, size: 64)
!5844 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !288, line: 725, flags: DIFlagFwdDecl)
!5845 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !513, file: !288, line: 726, baseType: !509, size: 1536, align: 64, offset: 2880)
!5846 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !513, file: !288, line: 727, baseType: !113, size: 128, offset: 4416)
!5847 = !DIDerivedType(tag: DW_TAG_member, scope: !513, file: !288, line: 728, baseType: !5848, size: 64, offset: 4544)
!5848 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !513, file: !288, line: 728, size: 64, elements: !5849)
!5849 = !{!5850, !5851, !5854, !5855}
!5850 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !5848, file: !288, line: 729, baseType: !3234, size: 64)
!5851 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !5848, file: !288, line: 730, baseType: !5852, size: 64)
!5852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5853, size: 64)
!5853 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !288, line: 730, flags: DIFlagFwdDecl)
!5854 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !5848, file: !288, line: 731, baseType: !438, size: 64)
!5855 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !5848, file: !288, line: 732, baseType: !7, size: 32)
!5856 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !513, file: !288, line: 735, baseType: !582, size: 32, offset: 4608)
!5857 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !513, file: !288, line: 738, baseType: !582, size: 32, offset: 4640)
!5858 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !513, file: !288, line: 739, baseType: !5542, size: 64, offset: 4672)
!5859 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !513, file: !288, line: 750, baseType: !36, size: 64, offset: 4736)
!5860 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !509, file: !288, line: 474, baseType: !844, size: 128, offset: 64)
!5861 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !509, file: !288, line: 475, baseType: !1206, size: 320, offset: 192)
!5862 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !509, file: !288, line: 476, baseType: !849, size: 32, offset: 512)
!5863 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !509, file: !288, line: 477, baseType: !65, size: 32, offset: 544)
!5864 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !509, file: !288, line: 482, baseType: !1034, size: 128, offset: 576)
!5865 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !509, file: !288, line: 483, baseType: !55, size: 64, offset: 704)
!5866 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !509, file: !288, line: 484, baseType: !55, size: 64, offset: 768)
!5867 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !509, file: !288, line: 485, baseType: !5868, size: 64, offset: 832)
!5868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5869, size: 64)
!5869 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5870)
!5870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !288, line: 404, size: 1280, elements: !5871)
!5871 = !{!5872, !5876, !5880, !5884, !5888, !5904, !5909, !5913, !5917, !5921, !5925, !5929, !5930, !5934, !5938, !5942, !5947, !5951, !6003, !6004}
!5872 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !5870, file: !288, line: 405, baseType: !5873, size: 64)
!5873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5874, size: 64)
!5874 = !DISubroutineType(types: !5875)
!5875 = !{!38, !2103, !5079}
!5876 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !5870, file: !288, line: 406, baseType: !5877, size: 64, offset: 64)
!5877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5878, size: 64)
!5878 = !DISubroutineType(types: !5879)
!5879 = !{!38, !728, !4785}
!5880 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !5870, file: !288, line: 409, baseType: !5881, size: 64, offset: 128)
!5881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5882, size: 64)
!5882 = !DISubroutineType(types: !5883)
!5883 = !{!38, !508, !5079}
!5884 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !5870, file: !288, line: 412, baseType: !5885, size: 64, offset: 192)
!5885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5886, size: 64)
!5886 = !DISubroutineType(types: !5887)
!5887 = !{!1356, !508, !4785}
!5888 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !5870, file: !288, line: 414, baseType: !5889, size: 64, offset: 256)
!5889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5890, size: 64)
!5890 = !DISubroutineType(types: !5891)
!5891 = !{null, !5892}
!5892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5893, size: 64)
!5893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !372, line: 1276, size: 448, elements: !5894)
!5894 = !{!5895, !5896, !5897, !5899, !5900, !5901, !5902, !5903}
!5895 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !5893, file: !372, line: 1277, baseType: !728, size: 64)
!5896 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !5893, file: !372, line: 1278, baseType: !508, size: 64, offset: 64)
!5897 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !5893, file: !372, line: 1279, baseType: !5898, size: 64, offset: 128)
!5898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4728, size: 64)
!5899 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !5893, file: !372, line: 1281, baseType: !55, size: 64, offset: 192)
!5900 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !5893, file: !372, line: 1282, baseType: !7, size: 32, offset: 256)
!5901 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !5893, file: !372, line: 1283, baseType: !7, size: 32, offset: 288)
!5902 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !5893, file: !372, line: 1284, baseType: !1356, size: 8, offset: 320)
!5903 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !5893, file: !372, line: 1285, baseType: !55, size: 64, offset: 384)
!5904 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !5870, file: !288, line: 416, baseType: !5905, size: 64, offset: 320)
!5905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5906, size: 64)
!5906 = !DISubroutineType(types: !5907)
!5907 = !{!38, !728, !508, !57, !7, !5908, !3876}
!5908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!5909 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !5870, file: !288, line: 419, baseType: !5910, size: 64, offset: 384)
!5910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5911, size: 64)
!5911 = !DISubroutineType(types: !5912)
!5912 = !{!38, !728, !508, !57, !7, !7, !2103, !36}
!5913 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !5870, file: !288, line: 424, baseType: !5914, size: 64, offset: 448)
!5914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5915, size: 64)
!5915 = !DISubroutineType(types: !5916)
!5916 = !{!5362, !508, !5362}
!5917 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !5870, file: !288, line: 425, baseType: !5918, size: 64, offset: 512)
!5918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5919, size: 64)
!5919 = !DISubroutineType(types: !5920)
!5920 = !{null, !4785, !51, !51}
!5921 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !5870, file: !288, line: 426, baseType: !5922, size: 64, offset: 576)
!5922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5923, size: 64)
!5923 = !DISubroutineType(types: !5924)
!5924 = !{!1356, !4785, !849}
!5925 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !5870, file: !288, line: 427, baseType: !5926, size: 64, offset: 640)
!5926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5927, size: 64)
!5927 = !DISubroutineType(types: !5928)
!5928 = !{null, !4785}
!5929 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !5870, file: !288, line: 428, baseType: !4762, size: 64, offset: 704)
!5930 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !5870, file: !288, line: 433, baseType: !5931, size: 64, offset: 768)
!5931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5932, size: 64)
!5932 = !DISubroutineType(types: !5933)
!5933 = !{!38, !508, !4785, !4785, !161}
!5934 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !5870, file: !288, line: 435, baseType: !5935, size: 64, offset: 832)
!5935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5936, size: 64)
!5936 = !DISubroutineType(types: !5937)
!5937 = !{!38, !4785}
!5938 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !5870, file: !288, line: 436, baseType: !5939, size: 64, offset: 896)
!5939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5940, size: 64)
!5940 = !DISubroutineType(types: !5941)
!5941 = !{!1356, !4785, !51, !51}
!5942 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !5870, file: !288, line: 438, baseType: !5943, size: 64, offset: 960)
!5943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5944, size: 64)
!5944 = !DISubroutineType(types: !5945)
!5945 = !{null, !4785, !5946, !5946}
!5946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!5947 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !5870, file: !288, line: 439, baseType: !5948, size: 64, offset: 1024)
!5948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5949, size: 64)
!5949 = !DISubroutineType(types: !5950)
!5950 = !{!38, !508, !2103}
!5951 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !5870, file: !288, line: 442, baseType: !5952, size: 64, offset: 1088)
!5952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5953, size: 64)
!5953 = !DISubroutineType(types: !5954)
!5954 = !{!38, !5955, !728, !6002}
!5955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5956, size: 64)
!5956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !2848, line: 282, size: 2176, elements: !5957)
!5957 = !{!5958, !5959, !5960, !5961, !5962, !5963, !5964, !5966, !5973, !5978, !5979, !5980, !5981, !5982, !5983, !5984, !5985, !5991, !5992, !5993, !5994, !5995, !5996, !5997, !5998, !5999, !6000}
!5958 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !5956, file: !2848, line: 283, baseType: !2167, size: 128)
!5959 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5956, file: !2848, line: 284, baseType: !55, size: 64, offset: 128)
!5960 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !5956, file: !2848, line: 285, baseType: !1304, size: 16, offset: 192)
!5961 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5956, file: !2848, line: 286, baseType: !1143, size: 320, offset: 256)
!5962 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5956, file: !2848, line: 287, baseType: !2953, size: 8, offset: 576)
!5963 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !5956, file: !2848, line: 288, baseType: !7, size: 32, offset: 608)
!5964 = !DIDerivedType(tag: DW_TAG_member, name: "swap_map", scope: !5956, file: !2848, line: 289, baseType: !5965, size: 64, offset: 640)
!5965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!5966 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_info", scope: !5956, file: !2848, line: 290, baseType: !5967, size: 64, offset: 704)
!5967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5968, size: 64)
!5968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_info", file: !2848, line: 250, size: 64, elements: !5969)
!5969 = !{!5970, !5971, !5972}
!5970 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5968, file: !2848, line: 251, baseType: !75, size: 32)
!5971 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5968, file: !2848, line: 257, baseType: !7, size: 24, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5972 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5968, file: !2848, line: 258, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!5973 = !DIDerivedType(tag: DW_TAG_member, name: "free_clusters", scope: !5956, file: !2848, line: 291, baseType: !5974, size: 128, offset: 768)
!5974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_list", file: !2848, line: 274, size: 128, elements: !5975)
!5975 = !{!5976, !5977}
!5976 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5974, file: !2848, line: 275, baseType: !5968, size: 64)
!5977 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !5974, file: !2848, line: 276, baseType: !5968, size: 64, offset: 64)
!5978 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_bit", scope: !5956, file: !2848, line: 292, baseType: !7, size: 32, offset: 896)
!5979 = !DIDerivedType(tag: DW_TAG_member, name: "highest_bit", scope: !5956, file: !2848, line: 293, baseType: !7, size: 32, offset: 928)
!5980 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !5956, file: !2848, line: 294, baseType: !7, size: 32, offset: 960)
!5981 = !DIDerivedType(tag: DW_TAG_member, name: "inuse_pages", scope: !5956, file: !2848, line: 295, baseType: !7, size: 32, offset: 992)
!5982 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next", scope: !5956, file: !2848, line: 296, baseType: !7, size: 32, offset: 1024)
!5983 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_nr", scope: !5956, file: !2848, line: 297, baseType: !7, size: 32, offset: 1056)
!5984 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next_cpu", scope: !5956, file: !2848, line: 298, baseType: !5532, size: 64, offset: 1088)
!5985 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_cluster", scope: !5956, file: !2848, line: 299, baseType: !5986, size: 64, offset: 1152)
!5986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5987, size: 64)
!5987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_cluster", file: !2848, line: 269, size: 96, elements: !5988)
!5988 = !{!5989, !5990}
!5989 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5987, file: !2848, line: 270, baseType: !5968, size: 64)
!5990 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5987, file: !2848, line: 271, baseType: !7, size: 32, offset: 64)
!5991 = !DIDerivedType(tag: DW_TAG_member, name: "swap_extent_root", scope: !5956, file: !2848, line: 300, baseType: !1037, size: 64, offset: 1216)
!5992 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !5956, file: !2848, line: 301, baseType: !5357, size: 64, offset: 1280)
!5993 = !DIDerivedType(tag: DW_TAG_member, name: "swap_file", scope: !5956, file: !2848, line: 302, baseType: !728, size: 64, offset: 1344)
!5994 = !DIDerivedType(tag: DW_TAG_member, name: "old_block_size", scope: !5956, file: !2848, line: 303, baseType: !7, size: 32, offset: 1408)
!5995 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !5956, file: !2848, line: 304, baseType: !1510, size: 256, offset: 1472)
!5996 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5956, file: !2848, line: 305, baseType: !75, size: 32, offset: 1728)
!5997 = !DIDerivedType(tag: DW_TAG_member, name: "cont_lock", scope: !5956, file: !2848, line: 318, baseType: !75, size: 32, offset: 1760)
!5998 = !DIDerivedType(tag: DW_TAG_member, name: "discard_work", scope: !5956, file: !2848, line: 322, baseType: !1471, size: 256, offset: 1792)
!5999 = !DIDerivedType(tag: DW_TAG_member, name: "discard_clusters", scope: !5956, file: !2848, line: 323, baseType: !5974, size: 128, offset: 2048)
!6000 = !DIDerivedType(tag: DW_TAG_member, name: "avail_lists", scope: !5956, file: !2848, line: 324, baseType: !6001, offset: 2176)
!6001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1143, elements: !725)
!6002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5362, size: 64)
!6003 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !5870, file: !288, line: 444, baseType: !4944, size: 64, offset: 1152)
!6004 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !5870, file: !288, line: 445, baseType: !6005, size: 64, offset: 1216)
!6005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6006, size: 64)
!6006 = !DISubroutineType(types: !6007)
!6007 = !{!38, !4765, !4869}
!6008 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !509, file: !288, line: 486, baseType: !55, size: 64, offset: 896)
!6009 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !509, file: !288, line: 487, baseType: !1206, size: 320, offset: 960)
!6010 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !509, file: !288, line: 488, baseType: !4985, size: 32, offset: 1280)
!6011 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !509, file: !288, line: 489, baseType: !75, size: 32, offset: 1312)
!6012 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !509, file: !288, line: 490, baseType: !113, size: 128, offset: 1344)
!6013 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !509, file: !288, line: 491, baseType: !36, size: 64, offset: 1472)
!6014 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !499, file: !464, line: 180, baseType: !6015, size: 64, offset: 320)
!6015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6016, size: 64)
!6016 = !DISubroutineType(types: !6017)
!6017 = !{!470, !728, !403, !498, !438, !57, !51}
!6018 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !499, file: !464, line: 182, baseType: !6015, size: 64, offset: 384)
!6019 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !499, file: !464, line: 184, baseType: !6020, size: 64, offset: 448)
!6020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6021, size: 64)
!6021 = !DISubroutineType(types: !6022)
!6022 = !{!38, !728, !403, !498, !1987}
!6023 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !487, file: !464, line: 90, baseType: !6024, size: 64, offset: 192)
!6024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!6025 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !487, file: !464, line: 91, baseType: !6026, size: 64, offset: 256)
!6026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!6027 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !454, file: !398, line: 120, baseType: !6028, size: 64, offset: 192)
!6028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6029, size: 64)
!6029 = !DISubroutineType(types: !6030)
!6030 = !{!3723, !421}
!6031 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !454, file: !398, line: 121, baseType: !6032, size: 64, offset: 256)
!6032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6033, size: 64)
!6033 = !DISubroutineType(types: !6034)
!6034 = !{!1285, !421}
!6035 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !454, file: !398, line: 122, baseType: !6036, size: 64, offset: 320)
!6036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6037, size: 64)
!6037 = !DISubroutineType(types: !6038)
!6038 = !{null, !421, !1535, !1536}
!6039 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !397, file: !398, line: 70, baseType: !1885, size: 64, offset: 384)
!6040 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !397, file: !398, line: 71, baseType: !5410, size: 32, offset: 448)
!6041 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !397, file: !398, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!6042 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !397, file: !398, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!6043 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !397, file: !398, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!6044 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !397, file: !398, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!6045 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !397, file: !398, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!6046 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !394, file: !6, line: 47, baseType: !384, size: 64, offset: 512)
!6047 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !394, file: !6, line: 48, baseType: !403, size: 64, offset: 576)
!6048 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !394, file: !6, line: 49, baseType: !6049, size: 64, offset: 640)
!6049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6050, size: 64)
!6050 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!6051 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !394, file: !6, line: 50, baseType: !1509, size: 64, offset: 704)
!6052 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !385, file: !6, line: 418, baseType: !6053, size: 64, offset: 1408)
!6053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6054, size: 64)
!6054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !6055)
!6055 = !{!6056, !6057, !6062, !6066, !6070, !6074}
!6056 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !6054, file: !6, line: 54, baseType: !475, size: 128)
!6057 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !6054, file: !6, line: 55, baseType: !6058, size: 64, offset: 128)
!6058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6059, size: 64)
!6059 = !DISubroutineType(types: !6060)
!6060 = !{!470, !6053, !6061, !438}
!6061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!6062 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !6054, file: !6, line: 57, baseType: !6063, size: 64, offset: 192)
!6063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6064, size: 64)
!6064 = !DISubroutineType(types: !6065)
!6065 = !{!470, !6053, !6061, !32, !51}
!6066 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !6054, file: !6, line: 59, baseType: !6067, size: 64, offset: 256)
!6067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6068, size: 64)
!6068 = !DISubroutineType(types: !6069)
!6069 = !{null, !384, !32}
!6070 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !6054, file: !6, line: 60, baseType: !6071, size: 64, offset: 320)
!6071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6072, size: 64)
!6072 = !DISubroutineType(types: !6073)
!6073 = !{!38, !384}
!6074 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !6054, file: !6, line: 61, baseType: !6075, size: 64, offset: 384)
!6075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6076, size: 64)
!6076 = !DISubroutineType(types: !6077)
!6077 = !{null, !384}
!6078 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !385, file: !6, line: 419, baseType: !32, size: 64, offset: 1472)
!6079 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !385, file: !6, line: 420, baseType: !32, size: 64, offset: 1536)
!6080 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !385, file: !6, line: 421, baseType: !403, size: 64, offset: 1600)
!6081 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !385, file: !6, line: 424, baseType: !6082, size: 64, offset: 1664)
!6082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6083, size: 64)
!6083 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6084)
!6084 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!6085 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !385, file: !6, line: 425, baseType: !6086, size: 64, offset: 1728)
!6086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6087, size: 64)
!6087 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1252)
!6088 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !385, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!6089 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !385, file: !6, line: 435, baseType: !763, size: 256, offset: 1856)
!6090 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !385, file: !6, line: 437, baseType: !6091, size: 64, offset: 2112)
!6091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6092, size: 64)
!6092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !6093, line: 69, size: 320, elements: !6094)
!6093 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!6094 = !{!6095, !6096, !6097, !6114, !6116, !6117, !6118}
!6095 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !6092, file: !6093, line: 70, baseType: !32, size: 64)
!6096 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !6092, file: !6093, line: 71, baseType: !384, size: 64, offset: 64)
!6097 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !6092, file: !6093, line: 72, baseType: !6098, size: 64, offset: 128)
!6098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6099, size: 64)
!6099 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6100)
!6100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !6093, line: 47, size: 256, elements: !6101)
!6101 = !{!6102, !6103, !6109, !6113}
!6102 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6100, file: !6093, line: 49, baseType: !7, size: 32)
!6103 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !6100, file: !6093, line: 51, baseType: !6104, size: 64, offset: 64)
!6104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6105, size: 64)
!6105 = !DISubroutineType(types: !6106)
!6106 = !{!38, !32, !6107}
!6107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6108, size: 64)
!6108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6092)
!6109 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !6100, file: !6093, line: 53, baseType: !6110, size: 64, offset: 128)
!6110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6111, size: 64)
!6111 = !DISubroutineType(types: !6112)
!6112 = !{!38, !438, !6107}
!6113 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !6100, file: !6093, line: 55, baseType: !3747, size: 64, offset: 192)
!6114 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !6092, file: !6093, line: 73, baseType: !6115, size: 16, offset: 192)
!6115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!6116 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !6092, file: !6093, line: 74, baseType: !2951, size: 8, offset: 208)
!6117 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6092, file: !6093, line: 75, baseType: !99, size: 8, offset: 216)
!6118 = !DIDerivedType(tag: DW_TAG_member, scope: !6092, file: !6093, line: 76, baseType: !6119, size: 64, offset: 256)
!6119 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6092, file: !6093, line: 76, size: 64, elements: !6120)
!6120 = !{!6121, !6122, !6129}
!6121 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !6119, file: !6093, line: 77, baseType: !36, size: 64)
!6122 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !6119, file: !6093, line: 78, baseType: !6123, size: 64)
!6123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6124, size: 64)
!6124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6125)
!6125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !6093, line: 86, size: 128, elements: !6126)
!6126 = !{!6127, !6128}
!6127 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !6125, file: !6093, line: 87, baseType: !7, size: 32)
!6128 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !6125, file: !6093, line: 88, baseType: !438, size: 64, offset: 64)
!6129 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !6119, file: !6093, line: 79, baseType: !6130, size: 64)
!6130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6131, size: 64)
!6131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6132)
!6132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !6093, line: 92, size: 256, elements: !6133)
!6133 = !{!6134, !6135, !6136, !6137, !6138}
!6134 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !6132, file: !6093, line: 94, baseType: !7, size: 32)
!6135 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !6132, file: !6093, line: 95, baseType: !7, size: 32, offset: 32)
!6136 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !6132, file: !6093, line: 96, baseType: !5532, size: 64, offset: 64)
!6137 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !6132, file: !6093, line: 97, baseType: !6098, size: 64, offset: 128)
!6138 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !6132, file: !6093, line: 98, baseType: !36, size: 64, offset: 192)
!6139 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !385, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!6140 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !385, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!6141 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !385, file: !6, line: 442, baseType: !6082, size: 64, offset: 2240)
!6142 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !385, file: !6, line: 443, baseType: !6086, size: 64, offset: 2304)
!6143 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !385, file: !6, line: 444, baseType: !1356, size: 8, offset: 2368)
!6144 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !385, file: !6, line: 451, baseType: !1356, size: 8, offset: 2376)
!6145 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !385, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!6146 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !385, file: !6, line: 455, baseType: !6147, size: 64, offset: 2432)
!6147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6148, size: 64)
!6148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !6149, line: 23, size: 96, elements: !6150)
!6149 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!6150 = !{!6151, !6152, !6153}
!6151 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !6148, file: !6149, line: 24, baseType: !38, size: 32)
!6152 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !6148, file: !6149, line: 24, baseType: !38, size: 32, offset: 32)
!6153 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !6148, file: !6149, line: 24, baseType: !38, size: 32, offset: 64)
!6154 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !385, file: !6, line: 458, baseType: !4452, size: 64, offset: 2496)
!6155 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !385, file: !6, line: 460, baseType: !6156, size: 4032, align: 512, offset: 2560)
!6156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6157, size: 4032, elements: !6171)
!6157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !6158)
!6158 = !{!6159, !6160, !6161}
!6159 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !6157, file: !6, line: 363, baseType: !36, size: 64)
!6160 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !6157, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!6161 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !6157, file: !6, line: 367, baseType: !6162, size: 448, offset: 128)
!6162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !6163)
!6163 = !{!6164, !6165}
!6164 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !6162, file: !6, line: 320, baseType: !384, size: 64)
!6165 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !6162, file: !6, line: 321, baseType: !6166, size: 384, offset: 64)
!6166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !6167, line: 40, size: 384, elements: !6168)
!6167 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!6168 = !{!6169}
!6169 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !6166, file: !6167, line: 41, baseType: !6170, size: 384, align: 64)
!6170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !905, size: 384, align: 64, elements: !2619)
!6171 = !{!6172}
!6172 = !DISubrange(count: 7)
!6173 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !385, file: !6, line: 463, baseType: !6174, size: 192, offset: 6592)
!6174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !6175, line: 8, size: 192, elements: !6176)
!6175 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!6176 = !{!6177, !6178, !6179}
!6177 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !6174, file: !6175, line: 10, baseType: !7, size: 32)
!6178 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !6174, file: !6175, line: 11, baseType: !1690, size: 64, offset: 64)
!6179 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !6174, file: !6175, line: 12, baseType: !6180, size: 64, offset: 128)
!6180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6181, size: 64)
!6181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !6182, line: 59, size: 48, elements: !6183)
!6182 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!6183 = !{!6184, !6185, !6186, !6187, !6188, !6189}
!6184 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !6181, file: !6182, line: 60, baseType: !1302, size: 16)
!6185 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !6181, file: !6182, line: 61, baseType: !1302, size: 16, offset: 16)
!6186 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !6181, file: !6182, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!6187 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !6181, file: !6182, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!6188 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6181, file: !6182, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!6189 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !6181, file: !6182, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!6190 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !385, file: !6, line: 465, baseType: !55, size: 64, offset: 6784)
!6191 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !385, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!6192 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !385, file: !6, line: 470, baseType: !113, size: 128, offset: 6912)
!6193 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !385, file: !6, line: 471, baseType: !6194, size: 64, offset: 7040)
!6194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6195, size: 64)
!6195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !6196, line: 33, size: 96, elements: !6197)
!6196 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!6197 = !{!6198, !6199, !6200, !6201}
!6198 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !6195, file: !6196, line: 37, baseType: !38, size: 32)
!6199 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !6195, file: !6196, line: 43, baseType: !38, size: 32, offset: 32)
!6200 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !6195, file: !6196, line: 45, baseType: !42, size: 16, offset: 64)
!6201 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6195, file: !6196, line: 47, baseType: !42, size: 16, offset: 80)
!6202 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !385, file: !6, line: 476, baseType: !6203, size: 64, offset: 7104)
!6203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6204, size: 64)
!6204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !6205)
!6205 = !{!6206, !6222, !6223, !6224}
!6206 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !6204, file: !6, line: 379, baseType: !6207, size: 64)
!6207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6208, size: 64)
!6208 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !6209, line: 204, baseType: !6210)
!6209 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!6210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !6209, line: 197, size: 192, elements: !6211)
!6211 = !{!6212, !6214, !6215, !6216, !6218, !6220}
!6212 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !6210, file: !6209, line: 198, baseType: !6213, size: 32)
!6213 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !6209, line: 21, baseType: !582)
!6214 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !6210, file: !6209, line: 199, baseType: !103, size: 8, offset: 32)
!6215 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !6210, file: !6209, line: 200, baseType: !103, size: 8, offset: 40)
!6216 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !6210, file: !6209, line: 201, baseType: !6217, size: 16, offset: 48)
!6217 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !6209, line: 17, baseType: !110)
!6218 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !6210, file: !6209, line: 202, baseType: !6219, size: 64, offset: 64)
!6219 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !6209, line: 16, baseType: !586)
!6220 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !6210, file: !6209, line: 203, baseType: !6221, size: 64, offset: 128)
!6221 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !6209, line: 22, baseType: !586)
!6222 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !6204, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!6223 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !6204, file: !6, line: 381, baseType: !438, size: 64, offset: 128)
!6224 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !6204, file: !6, line: 382, baseType: !438, size: 64, offset: 192)
!6225 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !385, file: !6, line: 477, baseType: !6204, size: 256, offset: 7168)
!6226 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !385, file: !6, line: 480, baseType: !6227, size: 64, offset: 7424)
!6227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6228, size: 64)
!6228 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!6229 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !385, file: !6, line: 483, baseType: !6230, size: 64, offset: 7488)
!6230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6231, size: 64)
!6231 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!6232 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !385, file: !6, line: 488, baseType: !438, size: 64, offset: 7552)
!6233 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !385, file: !6, line: 492, baseType: !36, size: 64, offset: 7616)
!6234 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !385, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!6235 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !385, file: !6, line: 495, baseType: !36, size: 64, offset: 7744)
!6236 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !385, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!6237 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !385, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!6238 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !385, file: !6, line: 500, baseType: !6239, size: 64, offset: 7872)
!6239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6240, size: 64)
!6240 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !4402, line: 45, baseType: !3032)
!6241 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !385, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!6242 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !385, file: !6, line: 504, baseType: !6243, size: 64, offset: 8000)
!6243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6244, size: 64)
!6244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6245, size: 64)
!6245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !6246, line: 96, size: 192, elements: !6247)
!6246 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!6247 = !{!6248, !6249, !6290, !6292}
!6248 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !6245, file: !6246, line: 97, baseType: !7, size: 32)
!6249 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !6245, file: !6246, line: 98, baseType: !6250, size: 64, offset: 64)
!6250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6251, size: 64)
!6251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !6246, line: 24, size: 3072, elements: !6252)
!6252 = !{!6253, !6255, !6256, !6257, !6258, !6270, !6271, !6272, !6273, !6274, !6275, !6276, !6287, !6288, !6289}
!6253 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !6251, file: !6246, line: 26, baseType: !6254, size: 128)
!6254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !754, size: 128, elements: !2619)
!6255 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !6251, file: !6246, line: 27, baseType: !6254, size: 128, offset: 128)
!6256 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !6251, file: !6246, line: 28, baseType: !38, size: 32, offset: 256)
!6257 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !6251, file: !6246, line: 31, baseType: !75, size: 32, align: 512, offset: 512)
!6258 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !6251, file: !6246, line: 32, baseType: !6259, size: 960, offset: 576)
!6259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !6260, line: 206, size: 960, elements: !6261)
!6260 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!6261 = !{!6262, !6263, !6266, !6267, !6268, !6269}
!6262 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !6259, file: !6260, line: 207, baseType: !744, size: 64)
!6263 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !6259, file: !6260, line: 208, baseType: !6264, size: 256, offset: 64)
!6264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6265, size: 256, elements: !824)
!6265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!6266 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !6259, file: !6260, line: 209, baseType: !2880, size: 256, offset: 320)
!6267 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !6259, file: !6260, line: 213, baseType: !473, size: 64, offset: 576)
!6268 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !6259, file: !6260, line: 215, baseType: !1570, size: 256, offset: 640)
!6269 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6259, file: !6260, line: 216, baseType: !99, size: 8, offset: 896)
!6270 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !6251, file: !6246, line: 33, baseType: !55, size: 64, offset: 1536)
!6271 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !6251, file: !6246, line: 34, baseType: !55, size: 64, offset: 1600)
!6272 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !6251, file: !6246, line: 35, baseType: !1356, size: 8, offset: 1664)
!6273 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !6251, file: !6246, line: 36, baseType: !2327, size: 320, offset: 1728)
!6274 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !6251, file: !6246, line: 37, baseType: !1471, size: 256, offset: 2048)
!6275 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !6251, file: !6246, line: 38, baseType: !741, size: 128, align: 64, offset: 2304)
!6276 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !6251, file: !6246, line: 39, baseType: !6277, size: 64, offset: 2432)
!6277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6278, size: 64)
!6278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !6246, line: 49, size: 768, elements: !6279)
!6279 = !{!6280, !6281, !6282, !6283, !6284, !6285, !6286}
!6280 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !6278, file: !6246, line: 50, baseType: !75, size: 32)
!6281 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !6278, file: !6246, line: 51, baseType: !2880, size: 256, offset: 64)
!6282 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !6278, file: !6246, line: 53, baseType: !2880, size: 256, offset: 320)
!6283 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !6278, file: !6246, line: 54, baseType: !55, size: 64, offset: 576)
!6284 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !6278, file: !6246, line: 55, baseType: !6277, size: 64, offset: 640)
!6285 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !6278, file: !6246, line: 56, baseType: !38, size: 32, offset: 704)
!6286 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !6278, file: !6246, line: 57, baseType: !38, size: 32, offset: 736)
!6287 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !6251, file: !6246, line: 40, baseType: !55, size: 64, offset: 2496)
!6288 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !6251, file: !6246, line: 42, baseType: !38, size: 32, offset: 2560)
!6289 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !6251, file: !6246, line: 43, baseType: !6244, size: 64, offset: 2624)
!6290 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !6245, file: !6246, line: 99, baseType: !6291, offset: 128)
!6291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !5048, line: 211, elements: !1172)
!6292 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !6245, file: !6246, line: 100, baseType: !6293, size: 64, offset: 128)
!6293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6294, size: 64)
!6294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !6246, line: 63, size: 3008, elements: !6295)
!6295 = !{!6296, !6297, !6299, !6300, !6301, !6302, !6303, !6304, !6305, !6306, !6307, !6308, !6309, !6310, !6311, !6312, !6313, !6314, !6315, !6316, !6317, !6318, !6319}
!6296 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !6294, file: !6246, line: 64, baseType: !6277, size: 64)
!6297 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !6294, file: !6246, line: 65, baseType: !6298, size: 192, offset: 64)
!6298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6277, size: 192, elements: !439)
!6299 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !6294, file: !6246, line: 67, baseType: !38, size: 32, offset: 256)
!6300 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !6294, file: !6246, line: 68, baseType: !763, size: 256, offset: 320)
!6301 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !6294, file: !6246, line: 69, baseType: !75, size: 32, offset: 576)
!6302 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !6294, file: !6246, line: 70, baseType: !763, size: 256, offset: 640)
!6303 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !6294, file: !6246, line: 71, baseType: !55, size: 64, offset: 896)
!6304 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !6294, file: !6246, line: 72, baseType: !55, size: 64, offset: 960)
!6305 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !6294, file: !6246, line: 73, baseType: !55, size: 64, offset: 1024)
!6306 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !6294, file: !6246, line: 74, baseType: !55, size: 64, offset: 1088)
!6307 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !6294, file: !6246, line: 75, baseType: !55, size: 64, offset: 1152)
!6308 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !6294, file: !6246, line: 76, baseType: !55, size: 64, offset: 1216)
!6309 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !6294, file: !6246, line: 77, baseType: !55, size: 64, offset: 1280)
!6310 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !6294, file: !6246, line: 78, baseType: !55, size: 64, offset: 1344)
!6311 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !6294, file: !6246, line: 79, baseType: !1356, size: 8, offset: 1408)
!6312 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !6294, file: !6246, line: 80, baseType: !55, size: 64, offset: 1472)
!6313 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !6294, file: !6246, line: 81, baseType: !763, size: 256, offset: 1536)
!6314 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !6294, file: !6246, line: 82, baseType: !1510, size: 256, offset: 1792)
!6315 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !6294, file: !6246, line: 84, baseType: !65, size: 32, offset: 2048)
!6316 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !6294, file: !6246, line: 87, baseType: !55, size: 64, offset: 2112)
!6317 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !6294, file: !6246, line: 88, baseType: !55, size: 64, offset: 2176)
!6318 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !6294, file: !6246, line: 89, baseType: !5452, size: 704, offset: 2240)
!6319 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !6294, file: !6246, line: 90, baseType: !6244, size: 64, offset: 2944)
!6320 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !385, file: !6, line: 515, baseType: !4415, size: 64, offset: 8064)
!6321 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !385, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!6322 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !385, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!6323 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !385, file: !6, line: 520, baseType: !6324, size: 64, offset: 8192)
!6324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!6325 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !385, file: !6, line: 523, baseType: !6326, size: 64, offset: 8256)
!6326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4352, size: 64)
!6327 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !385, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!6328 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !385, file: !6, line: 525, baseType: !6329, size: 64, offset: 8384)
!6329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6330, size: 64)
!6330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6331, size: 64)
!6331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6332, line: 28, size: 192, elements: !6333)
!6332 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb3837c9edbef1074628f52e8cfdb75")
!6333 = !{!6334, !6335, !6336}
!6334 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !6331, file: !6332, line: 29, baseType: !32, size: 64)
!6335 = !DIDerivedType(tag: DW_TAG_member, name: "eval_string", scope: !6331, file: !6332, line: 30, baseType: !32, size: 64, offset: 64)
!6336 = !DIDerivedType(tag: DW_TAG_member, name: "eval_value", scope: !6331, file: !6332, line: 31, baseType: !55, size: 64, offset: 128)
!6337 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !385, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!6338 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !385, file: !6, line: 533, baseType: !36, size: 64, offset: 8512)
!6339 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !385, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!6340 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !385, file: !6, line: 535, baseType: !6341, size: 64, offset: 8640)
!6341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!6342 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !385, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!6343 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !385, file: !6, line: 539, baseType: !38, size: 32, offset: 8736)
!6344 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !385, file: !6, line: 540, baseType: !4442, size: 64, offset: 8768)
!6345 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !385, file: !6, line: 563, baseType: !113, size: 128, offset: 8832)
!6346 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !385, file: !6, line: 565, baseType: !113, size: 128, offset: 8960)
!6347 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !385, file: !6, line: 568, baseType: !2461, size: 64, offset: 9088)
!6348 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !385, file: !6, line: 570, baseType: !65, size: 32, offset: 9152)
!6349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6350, size: 64)
!6350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6351)
!6351 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !38)
!6352 = !DIDerivedType(tag: DW_TAG_typedef, name: "fgf_t", file: !372, line: 597, baseType: !7)
!6353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6354, size: 64)
!6354 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !473)
!6355 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !41, line: 159, baseType: !585)
!6356 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !41, line: 42, baseType: !55)
!6357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!6358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6351, size: 64)
!6359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6360, size: 64)
!6360 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !34)
!6361 = !{!6362, !6364, !6369, !6374, !6376, !6378, !0, !6380, !6382, !6384, !6390, !6393, !6396, !6398, !6400, !6402}
!6362 = !DIGlobalVariableExpression(var: !6363, expr: !DIExpression())
!6363 = distinct !DIGlobalVariable(name: "__param_enable", scope: !2, file: !3, line: 39, type: !6108, isLocal: true, isDefinition: true, align: 64)
!6364 = !DIGlobalVariableExpression(var: !6365, expr: !DIExpression())
!6365 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_enabletype349", scope: !2, file: !3, line: 39, type: !6366, isLocal: true, isDefinition: true, align: 8)
!6366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 248, elements: !6367)
!6367 = !{!6368}
!6368 = !DISubrange(count: 31)
!6369 = !DIGlobalVariableExpression(var: !6370, expr: !DIExpression())
!6370 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_secretmem_enable350", scope: !2, file: !3, line: 40, type: !6371, isLocal: true, isDefinition: true, align: 8)
!6371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 648, elements: !6372)
!6372 = !{!6373}
!6373 = !DISubrange(count: 81)
!6374 = !DIGlobalVariableExpression(var: !6375, expr: !DIExpression())
!6375 = distinct !DIGlobalVariable(name: "secretmem_aops", scope: !2, file: !3, line: 161, type: !5869, isLocal: false, isDefinition: true)
!6376 = !DIGlobalVariableExpression(var: !6377, expr: !DIExpression())
!6377 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_secretmem__352_295_secretmem_init5353", scope: !2, file: !3, line: 295, type: !36, isLocal: true, isDefinition: true)
!6378 = !DIGlobalVariableExpression(var: !6379, expr: !DIExpression())
!6379 = distinct !DIGlobalVariable(name: "secretmem_users", scope: !2, file: !3, line: 43, type: !65, isLocal: true, isDefinition: true)
!6380 = !DIGlobalVariableExpression(var: !6381, expr: !DIExpression())
!6381 = distinct !DIGlobalVariable(name: "secretmem_enable", scope: !2, file: !3, line: 38, type: !1356, isLocal: true, isDefinition: true)
!6382 = !DIGlobalVariableExpression(var: !6383, expr: !DIExpression())
!6383 = distinct !DIGlobalVariable(name: "secretmem_vm_ops", scope: !2, file: !3, line: 113, type: !1979, isLocal: true, isDefinition: true)
!6384 = !DIGlobalVariableExpression(var: !6385, expr: !DIExpression())
!6385 = distinct !DIGlobalVariable(scope: null, file: !6386, line: 275, type: !6387, isLocal: true, isDefinition: true)
!6386 = !DIFile(filename: "./include/linux/highmem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "44cc22a6674afa1c65f9d65e2d0f07bb")
!6387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 192, elements: !6388)
!6388 = !{!6389}
!6389 = !DISubrange(count: 24)
!6390 = !DIGlobalVariableExpression(var: !6391, expr: !DIExpression())
!6391 = distinct !DIGlobalVariable(scope: null, file: !3, line: 197, type: !6392, isLocal: true, isDefinition: true)
!6392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 96, elements: !2975)
!6393 = !DIGlobalVariableExpression(var: !6394, expr: !DIExpression())
!6394 = distinct !DIGlobalVariable(scope: null, file: !3, line: 211, type: !6395, isLocal: true, isDefinition: true)
!6395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 80, elements: !1563)
!6396 = !DIGlobalVariableExpression(var: !6397, expr: !DIExpression())
!6397 = distinct !DIGlobalVariable(name: "secretmem_mnt", scope: !2, file: !3, line: 191, type: !657, isLocal: true, isDefinition: true)
!6398 = !DIGlobalVariableExpression(var: !6399, expr: !DIExpression())
!6399 = distinct !DIGlobalVariable(name: "secretmem_fops", scope: !2, file: !3, line: 144, type: !4745, isLocal: true, isDefinition: true)
!6400 = !DIGlobalVariableExpression(var: !6401, expr: !DIExpression())
!6401 = distinct !DIGlobalVariable(name: "secretmem_iops", scope: !2, file: !3, line: 187, type: !540, isLocal: true, isDefinition: true)
!6402 = !DIGlobalVariableExpression(var: !6403, expr: !DIExpression())
!6403 = distinct !DIGlobalVariable(name: "secretmem_fs", scope: !2, file: !3, line: 275, type: !675, isLocal: true, isDefinition: true)
!6404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 136, elements: !6405)
!6405 = !{!6406}
!6406 = !DISubrange(count: 17)
!6407 = !{i32 7, !"Dwarf Version", i32 5}
!6408 = !{i32 2, !"Debug Info Version", i32 3}
!6409 = !{i32 1, !"wchar_size", i32 2}
!6410 = !{i32 8, !"cf-protection-branch", i32 1}
!6411 = !{i32 4, !"function_return_thunk_extern", i32 1}
!6412 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!6413 = !{i32 1, !"Code Model", i32 2}
!6414 = !{i32 1, !"override-stack-alignment", i32 8}
!6415 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6416 = distinct !DISubprogram(name: "secretmem_active", scope: !3, file: !3, line: 45, type: !3730, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6417 = !DILocation(line: 47, column: 11, scope: !6416)
!6418 = !DILocation(line: 47, column: 10, scope: !6416)
!6419 = !DILocation(line: 47, column: 9, scope: !6416)
!6420 = !DILocation(line: 47, column: 2, scope: !6416)
!6421 = distinct !DISubprogram(name: "atomic_read", scope: !6422, file: !6422, line: 30, type: !6423, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6427)
!6422 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!6423 = !DISubroutineType(types: !6424)
!6424 = !{!38, !6425}
!6425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6426, size: 64)
!6426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!6427 = !{!6428}
!6428 = !DILocalVariable(name: "v", arg: 1, scope: !6421, file: !6422, line: 30, type: !6425)
!6429 = !DILocation(line: 30, column: 29, scope: !6421)
!6430 = !DILocation(line: 32, column: 25, scope: !6421)
!6431 = !DILocation(line: 32, column: 2, scope: !6421)
!6432 = !DILocation(line: 33, column: 25, scope: !6421)
!6433 = !DILocation(line: 33, column: 9, scope: !6421)
!6434 = !DILocation(line: 33, column: 2, scope: !6421)
!6435 = distinct !DISubprogram(name: "vma_is_secretmem", scope: !3, file: !3, line: 139, type: !6436, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6438)
!6436 = !DISubroutineType(types: !6437)
!6437 = !{!1356, !1987}
!6438 = !{!6439}
!6439 = !DILocalVariable(name: "vma", arg: 1, scope: !6435, file: !3, line: 139, type: !1987)
!6440 = !DILocation(line: 139, column: 46, scope: !6435)
!6441 = !DILocation(line: 141, column: 9, scope: !6435)
!6442 = !DILocation(line: 141, column: 14, scope: !6435)
!6443 = !DILocation(line: 141, column: 21, scope: !6435)
!6444 = !DILocation(line: 141, column: 2, scope: !6435)
!6445 = distinct !DISubprogram(name: "secretmem_free_folio", scope: !3, file: !3, line: 155, type: !5927, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6446)
!6446 = !{!6447}
!6447 = !DILocalVariable(name: "folio", arg: 1, scope: !6445, file: !3, line: 155, type: !4785)
!6448 = !DILocation(line: 155, column: 48, scope: !6445)
!6449 = !DILocation(line: 157, column: 34, scope: !6445)
!6450 = !DILocation(line: 157, column: 41, scope: !6445)
!6451 = !DILocation(line: 157, column: 2, scope: !6445)
!6452 = !DILocation(line: 158, column: 21, scope: !6445)
!6453 = !DILocation(line: 158, column: 42, scope: !6445)
!6454 = !DILocation(line: 158, column: 31, scope: !6445)
!6455 = !DILocation(line: 158, column: 2, scope: !6445)
!6456 = !DILocation(line: 159, column: 1, scope: !6445)
!6457 = distinct !DISubprogram(name: "secretmem_migrate_folio", scope: !3, file: !3, line: 149, type: !5932, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6458)
!6458 = !{!6459, !6460, !6461, !6462}
!6459 = !DILocalVariable(name: "mapping", arg: 1, scope: !6457, file: !3, line: 149, type: !508)
!6460 = !DILocalVariable(name: "dst", arg: 2, scope: !6457, file: !3, line: 150, type: !4785)
!6461 = !DILocalVariable(name: "src", arg: 3, scope: !6457, file: !3, line: 150, type: !4785)
!6462 = !DILocalVariable(name: "mode", arg: 4, scope: !6457, file: !3, line: 150, type: !161)
!6463 = !DILocation(line: 149, column: 58, scope: !6457)
!6464 = !DILocation(line: 150, column: 17, scope: !6457)
!6465 = !DILocation(line: 150, column: 36, scope: !6457)
!6466 = !DILocation(line: 150, column: 59, scope: !6457)
!6467 = !DILocation(line: 152, column: 2, scope: !6457)
!6468 = distinct !DISubprogram(name: "__x64_sys_memfd_secret", scope: !3, file: !3, line: 233, type: !6469, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6473)
!6469 = !DISubroutineType(types: !6470)
!6470 = !{!473, !6471}
!6471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6472, size: 64)
!6472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4290)
!6473 = !{!6474}
!6474 = !DILocalVariable(name: "regs", arg: 1, scope: !6468, file: !3, line: 233, type: !6471)
!6475 = !DILocation(line: 233, column: 1, scope: !6468)
!6476 = distinct !DISubprogram(name: "__se_sys_memfd_secret", scope: !3, file: !3, line: 233, type: !6477, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6479)
!6477 = !DISubroutineType(types: !6478)
!6478 = !{!473, !473}
!6479 = !{!6480, !6481}
!6480 = !DILocalVariable(name: "flags", arg: 1, scope: !6476, file: !3, line: 233, type: !473)
!6481 = !DILocalVariable(name: "ret", scope: !6476, file: !3, line: 233, type: !473)
!6482 = !DILocation(line: 233, column: 1, scope: !6476)
!6483 = !DILocation(line: 233, column: 1, scope: !6484)
!6484 = distinct !DILexicalBlock(scope: !6476, file: !3, line: 233, column: 1)
!6485 = distinct !DISubprogram(name: "__ia32_sys_memfd_secret", scope: !3, file: !3, line: 233, type: !6469, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6486)
!6486 = !{!6487}
!6487 = !DILocalVariable(name: "regs", arg: 1, scope: !6485, file: !3, line: 233, type: !6471)
!6488 = !DILocation(line: 233, column: 1, scope: !6485)
!6489 = distinct !DISubprogram(name: "__initstub__kmod_secretmem__352_295_secretmem_init5", scope: !3, file: !3, line: 295, type: !4453, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6490 = !DILocation(line: 295, column: 1, scope: !6489)
!6491 = distinct !DISubprogram(name: "secretmem_init", scope: !3, file: !3, line: 281, type: !4453, scopeLine: 282, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6492 = !DILocation(line: 283, column: 7, scope: !6493)
!6493 = distinct !DILexicalBlock(scope: !6491, file: !3, line: 283, column: 6)
!6494 = !{i8 0, i8 2}
!6495 = !DILocation(line: 283, column: 24, scope: !6493)
!6496 = !DILocation(line: 283, column: 28, scope: !6493)
!6497 = !DILocation(line: 283, column: 6, scope: !6491)
!6498 = !DILocation(line: 284, column: 3, scope: !6493)
!6499 = !DILocation(line: 286, column: 18, scope: !6491)
!6500 = !DILocation(line: 286, column: 16, scope: !6491)
!6501 = !DILocation(line: 287, column: 13, scope: !6502)
!6502 = distinct !DILexicalBlock(scope: !6491, file: !3, line: 287, column: 6)
!6503 = !DILocation(line: 287, column: 6, scope: !6502)
!6504 = !DILocation(line: 287, column: 6, scope: !6491)
!6505 = !DILocation(line: 288, column: 18, scope: !6502)
!6506 = !DILocation(line: 288, column: 10, scope: !6502)
!6507 = !DILocation(line: 288, column: 3, scope: !6502)
!6508 = !DILocation(line: 291, column: 2, scope: !6491)
!6509 = !DILocation(line: 291, column: 17, scope: !6491)
!6510 = !DILocation(line: 291, column: 27, scope: !6491)
!6511 = !DILocation(line: 293, column: 2, scope: !6491)
!6512 = !DILocation(line: 294, column: 1, scope: !6491)
!6513 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !6514, file: !6514, line: 66, type: !6515, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6520)
!6514 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6515 = !DISubroutineType(types: !6516)
!6516 = !{null, !6517, !51}
!6517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6518, size: 64)
!6518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6519)
!6519 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6520 = !{!6521, !6522}
!6521 = !DILocalVariable(name: "v", arg: 1, scope: !6513, file: !6514, line: 66, type: !6517)
!6522 = !DILocalVariable(name: "size", arg: 2, scope: !6513, file: !6514, line: 66, type: !51)
!6523 = !DILocation(line: 66, column: 73, scope: !6513)
!6524 = !DILocation(line: 66, column: 83, scope: !6513)
!6525 = !DILocation(line: 68, column: 19, scope: !6513)
!6526 = !DILocation(line: 68, column: 22, scope: !6513)
!6527 = !DILocation(line: 68, column: 2, scope: !6513)
!6528 = !DILocation(line: 69, column: 2, scope: !6513)
!6529 = !DILocation(line: 70, column: 1, scope: !6513)
!6530 = distinct !DISubprogram(name: "raw_atomic_read", scope: !6531, file: !6531, line: 442, type: !6423, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6532)
!6531 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!6532 = !{!6533}
!6533 = !DILocalVariable(name: "v", arg: 1, scope: !6530, file: !6531, line: 442, type: !6425)
!6534 = !DILocation(line: 442, column: 33, scope: !6530)
!6535 = !DILocation(line: 444, column: 26, scope: !6530)
!6536 = !DILocation(line: 444, column: 9, scope: !6530)
!6537 = !DILocation(line: 444, column: 2, scope: !6530)
!6538 = distinct !DISubprogram(name: "kasan_check_read", scope: !6539, file: !6539, line: 40, type: !6540, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6542)
!6539 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6540 = !DISubroutineType(types: !6541)
!6541 = !{!1356, !6517, !7}
!6542 = !{!6543, !6544}
!6543 = !DILocalVariable(name: "p", arg: 1, scope: !6538, file: !6539, line: 40, type: !6517)
!6544 = !DILocalVariable(name: "size", arg: 2, scope: !6538, file: !6539, line: 40, type: !7)
!6545 = !DILocation(line: 40, column: 58, scope: !6538)
!6546 = !DILocation(line: 40, column: 74, scope: !6538)
!6547 = !DILocation(line: 42, column: 2, scope: !6538)
!6548 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6549, file: !6549, line: 229, type: !6550, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6552)
!6549 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6550 = !DISubroutineType(types: !6551)
!6551 = !{null, !6517, !51, !38}
!6552 = !{!6553, !6554, !6555}
!6553 = !DILocalVariable(name: "ptr", arg: 1, scope: !6548, file: !6549, line: 229, type: !6517)
!6554 = !DILocalVariable(name: "size", arg: 2, scope: !6548, file: !6549, line: 229, type: !51)
!6555 = !DILocalVariable(name: "type", arg: 3, scope: !6548, file: !6549, line: 230, type: !38)
!6556 = !DILocation(line: 229, column: 60, scope: !6548)
!6557 = !DILocation(line: 229, column: 72, scope: !6548)
!6558 = !DILocation(line: 230, column: 15, scope: !6548)
!6559 = !DILocation(line: 230, column: 23, scope: !6548)
!6560 = distinct !DISubprogram(name: "arch_atomic_read", scope: !6561, file: !6561, line: 17, type: !6423, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6562)
!6561 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!6562 = !{!6563}
!6563 = !DILocalVariable(name: "v", arg: 1, scope: !6560, file: !6561, line: 17, type: !6425)
!6564 = !DILocation(line: 17, column: 61, scope: !6560)
!6565 = !DILocation(line: 23, column: 9, scope: !6560)
!6566 = !DILocation(line: 23, column: 2, scope: !6560)
!6567 = distinct !DISubprogram(name: "secretmem_fault", scope: !3, file: !3, line: 50, type: !2063, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6568)
!6568 = !{!6569, !6570, !6571, !6572, !6573, !6574, !6575, !6576, !6577, !6578, !6579, !6580}
!6569 = !DILocalVariable(name: "vmf", arg: 1, scope: !6567, file: !3, line: 50, type: !2066)
!6570 = !DILocalVariable(name: "mapping", scope: !6567, file: !3, line: 52, type: !508)
!6571 = !DILocalVariable(name: "inode", scope: !6567, file: !3, line: 53, type: !512)
!6572 = !DILocalVariable(name: "offset", scope: !6567, file: !3, line: 54, type: !55)
!6573 = !DILocalVariable(name: "gfp", scope: !6567, file: !3, line: 55, type: !849)
!6574 = !DILocalVariable(name: "addr", scope: !6567, file: !3, line: 56, type: !55)
!6575 = !DILocalVariable(name: "page", scope: !6567, file: !3, line: 57, type: !2103)
!6576 = !DILocalVariable(name: "folio", scope: !6567, file: !3, line: 58, type: !4785)
!6577 = !DILocalVariable(name: "ret", scope: !6567, file: !3, line: 59, type: !2065)
!6578 = !DILocalVariable(name: "err", scope: !6567, file: !3, line: 60, type: !38)
!6579 = !DILabel(scope: !6567, name: "retry", file: !3, line: 67)
!6580 = !DILabel(scope: !6567, name: "out", file: !3, line: 108)
!6581 = !DILocation(line: 50, column: 52, scope: !6567)
!6582 = !DILocation(line: 52, column: 2, scope: !6567)
!6583 = !DILocation(line: 52, column: 24, scope: !6567)
!6584 = !DILocation(line: 52, column: 34, scope: !6567)
!6585 = !DILocation(line: 52, column: 39, scope: !6567)
!6586 = !DILocation(line: 52, column: 44, scope: !6567)
!6587 = !DILocation(line: 52, column: 53, scope: !6567)
!6588 = !DILocation(line: 53, column: 2, scope: !6567)
!6589 = !DILocation(line: 53, column: 16, scope: !6567)
!6590 = !DILocation(line: 53, column: 35, scope: !6567)
!6591 = !DILocation(line: 53, column: 40, scope: !6567)
!6592 = !DILocation(line: 53, column: 45, scope: !6567)
!6593 = !DILocation(line: 53, column: 24, scope: !6567)
!6594 = !DILocation(line: 54, column: 2, scope: !6567)
!6595 = !DILocation(line: 54, column: 10, scope: !6567)
!6596 = !DILocation(line: 54, column: 19, scope: !6567)
!6597 = !DILocation(line: 54, column: 24, scope: !6567)
!6598 = !DILocation(line: 55, column: 2, scope: !6567)
!6599 = !DILocation(line: 55, column: 8, scope: !6567)
!6600 = !DILocation(line: 55, column: 14, scope: !6567)
!6601 = !DILocation(line: 55, column: 19, scope: !6567)
!6602 = !DILocation(line: 56, column: 2, scope: !6567)
!6603 = !DILocation(line: 56, column: 16, scope: !6567)
!6604 = !DILocation(line: 57, column: 2, scope: !6567)
!6605 = !DILocation(line: 57, column: 15, scope: !6567)
!6606 = !DILocation(line: 58, column: 2, scope: !6567)
!6607 = !DILocation(line: 58, column: 16, scope: !6567)
!6608 = !DILocation(line: 59, column: 2, scope: !6567)
!6609 = !DILocation(line: 59, column: 13, scope: !6567)
!6610 = !DILocation(line: 60, column: 2, scope: !6567)
!6611 = !DILocation(line: 60, column: 6, scope: !6567)
!6612 = !DILocation(line: 62, column: 15, scope: !6613)
!6613 = distinct !DILexicalBlock(scope: !6567, file: !3, line: 62, column: 6)
!6614 = !DILocation(line: 62, column: 20, scope: !6613)
!6615 = !DILocation(line: 62, column: 26, scope: !6613)
!6616 = !DILocation(line: 62, column: 56, scope: !6613)
!6617 = !DILocation(line: 62, column: 44, scope: !6613)
!6618 = !DILocation(line: 62, column: 41, scope: !6613)
!6619 = !DILocation(line: 62, column: 6, scope: !6567)
!6620 = !DILocation(line: 63, column: 10, scope: !6613)
!6621 = !DILocation(line: 63, column: 3, scope: !6613)
!6622 = !DILocation(line: 65, column: 33, scope: !6567)
!6623 = !DILocation(line: 65, column: 2, scope: !6567)
!6624 = !DILocation(line: 67, column: 1, scope: !6567)
!6625 = !DILocation(line: 68, column: 24, scope: !6567)
!6626 = !DILocation(line: 68, column: 33, scope: !6567)
!6627 = !DILocation(line: 68, column: 9, scope: !6567)
!6628 = !DILocation(line: 68, column: 7, scope: !6567)
!6629 = !DILocation(line: 69, column: 7, scope: !6630)
!6630 = distinct !DILexicalBlock(scope: !6567, file: !3, line: 69, column: 6)
!6631 = !DILocation(line: 69, column: 6, scope: !6567)
!6632 = !DILocation(line: 70, column: 23, scope: !6633)
!6633 = distinct !DILexicalBlock(scope: !6630, file: !3, line: 69, column: 13)
!6634 = !DILocation(line: 70, column: 27, scope: !6633)
!6635 = !DILocation(line: 70, column: 11, scope: !6633)
!6636 = !DILocation(line: 70, column: 9, scope: !6633)
!6637 = !DILocation(line: 71, column: 8, scope: !6638)
!6638 = distinct !DILexicalBlock(scope: !6633, file: !3, line: 71, column: 7)
!6639 = !DILocation(line: 71, column: 7, scope: !6633)
!6640 = !DILocation(line: 72, column: 8, scope: !6641)
!6641 = distinct !DILexicalBlock(scope: !6638, file: !3, line: 71, column: 15)
!6642 = !DILocation(line: 73, column: 4, scope: !6641)
!6643 = !DILocation(line: 76, column: 11, scope: !6633)
!6644 = !DILocation(line: 76, column: 18, scope: !6633)
!6645 = !DILocation(line: 76, column: 8, scope: !6633)
!6646 = !DILocation(line: 77, column: 40, scope: !6633)
!6647 = !DILocation(line: 77, column: 9, scope: !6633)
!6648 = !DILocation(line: 77, column: 7, scope: !6633)
!6649 = !DILocation(line: 78, column: 7, scope: !6650)
!6650 = distinct !DILexicalBlock(scope: !6633, file: !3, line: 78, column: 7)
!6651 = !DILocation(line: 78, column: 7, scope: !6633)
!6652 = !DILocation(line: 79, column: 14, scope: !6653)
!6653 = distinct !DILexicalBlock(scope: !6650, file: !3, line: 78, column: 12)
!6654 = !DILocation(line: 79, column: 4, scope: !6653)
!6655 = !DILocation(line: 80, column: 20, scope: !6653)
!6656 = !DILocation(line: 80, column: 10, scope: !6653)
!6657 = !DILocation(line: 80, column: 8, scope: !6653)
!6658 = !DILocation(line: 81, column: 4, scope: !6653)
!6659 = !DILocation(line: 84, column: 25, scope: !6633)
!6660 = !DILocation(line: 84, column: 3, scope: !6633)
!6661 = !DILocation(line: 85, column: 27, scope: !6633)
!6662 = !DILocation(line: 85, column: 36, scope: !6633)
!6663 = !DILocation(line: 85, column: 43, scope: !6633)
!6664 = !DILocation(line: 85, column: 51, scope: !6633)
!6665 = !DILocation(line: 85, column: 9, scope: !6633)
!6666 = !DILocation(line: 85, column: 7, scope: !6633)
!6667 = !DILocation(line: 86, column: 7, scope: !6668)
!6668 = distinct !DILexicalBlock(scope: !6633, file: !3, line: 86, column: 7)
!6669 = !DILocation(line: 86, column: 7, scope: !6633)
!6670 = !DILocation(line: 87, column: 14, scope: !6671)
!6671 = distinct !DILexicalBlock(scope: !6668, file: !3, line: 86, column: 22)
!6672 = !DILocation(line: 87, column: 4, scope: !6671)
!6673 = !DILocation(line: 93, column: 35, scope: !6671)
!6674 = !DILocation(line: 93, column: 4, scope: !6671)
!6675 = !DILocation(line: 94, column: 8, scope: !6676)
!6676 = distinct !DILexicalBlock(scope: !6671, file: !3, line: 94, column: 8)
!6677 = !DILocation(line: 94, column: 12, scope: !6676)
!6678 = !DILocation(line: 94, column: 8, scope: !6671)
!6679 = !DILocation(line: 95, column: 5, scope: !6676)
!6680 = !DILocation(line: 97, column: 20, scope: !6671)
!6681 = !DILocation(line: 97, column: 10, scope: !6671)
!6682 = !DILocation(line: 97, column: 8, scope: !6671)
!6683 = !DILocation(line: 98, column: 4, scope: !6671)
!6684 = !DILocation(line: 101, column: 25, scope: !6633)
!6685 = !DILocation(line: 101, column: 10, scope: !6633)
!6686 = !DILocation(line: 101, column: 8, scope: !6633)
!6687 = !DILocation(line: 102, column: 26, scope: !6633)
!6688 = !DILocation(line: 102, column: 32, scope: !6633)
!6689 = !DILocation(line: 102, column: 37, scope: !6633)
!6690 = !DILocation(line: 102, column: 3, scope: !6633)
!6691 = !DILocation(line: 103, column: 2, scope: !6633)
!6692 = !DILocation(line: 105, column: 14, scope: !6567)
!6693 = !DILocation(line: 105, column: 2, scope: !6567)
!6694 = !DILocation(line: 105, column: 7, scope: !6567)
!6695 = !DILocation(line: 105, column: 12, scope: !6567)
!6696 = !DILocation(line: 106, column: 6, scope: !6567)
!6697 = !DILocation(line: 106, column: 2, scope: !6567)
!6698 = !DILocation(line: 108, column: 1, scope: !6567)
!6699 = !DILocation(line: 109, column: 35, scope: !6567)
!6700 = !DILocation(line: 109, column: 2, scope: !6567)
!6701 = !DILocation(line: 110, column: 9, scope: !6567)
!6702 = !DILocation(line: 110, column: 2, scope: !6567)
!6703 = !DILocation(line: 111, column: 1, scope: !6567)
!6704 = distinct !DISubprogram(name: "file_inode", scope: !288, file: !288, line: 1073, type: !6705, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6707)
!6705 = !DISubroutineType(types: !6706)
!6706 = !{!512, !1965}
!6707 = !{!6708}
!6708 = !DILocalVariable(name: "f", arg: 1, scope: !6704, file: !288, line: 1073, type: !1965)
!6709 = !DILocation(line: 1073, column: 59, scope: !6704)
!6710 = !DILocation(line: 1075, column: 9, scope: !6704)
!6711 = !DILocation(line: 1075, column: 12, scope: !6704)
!6712 = !DILocation(line: 1075, column: 2, scope: !6704)
!6713 = distinct !DISubprogram(name: "i_size_read", scope: !288, file: !288, line: 893, type: !6714, scopeLine: 894, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6716)
!6714 = !DISubroutineType(types: !6715)
!6715 = !{!57, !5615}
!6716 = !{!6717}
!6717 = !DILocalVariable(name: "inode", arg: 1, scope: !6713, file: !288, line: 893, type: !5615)
!6718 = !DILocation(line: 893, column: 54, scope: !6713)
!6719 = !DILocation(line: 912, column: 9, scope: !6713)
!6720 = !DILocation(line: 912, column: 16, scope: !6713)
!6721 = !DILocation(line: 912, column: 2, scope: !6713)
!6722 = distinct !DISubprogram(name: "vmf_error", scope: !1981, file: !1981, line: 3507, type: !6723, scopeLine: 3508, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6725)
!6723 = !DISubroutineType(types: !6724)
!6724 = !{!2065, !38}
!6725 = !{!6726}
!6726 = !DILocalVariable(name: "err", arg: 1, scope: !6722, file: !1981, line: 3507, type: !38)
!6727 = !DILocation(line: 3507, column: 40, scope: !6722)
!6728 = !DILocation(line: 3509, column: 6, scope: !6729)
!6729 = distinct !DILexicalBlock(scope: !6722, file: !1981, line: 3509, column: 6)
!6730 = !DILocation(line: 3509, column: 10, scope: !6729)
!6731 = !DILocation(line: 3509, column: 6, scope: !6722)
!6732 = !DILocation(line: 3510, column: 3, scope: !6729)
!6733 = !DILocation(line: 3511, column: 11, scope: !6734)
!6734 = distinct !DILexicalBlock(scope: !6729, file: !1981, line: 3511, column: 11)
!6735 = !DILocation(line: 3511, column: 15, scope: !6734)
!6736 = !DILocation(line: 3511, column: 11, scope: !6729)
!6737 = !DILocation(line: 3512, column: 3, scope: !6734)
!6738 = !DILocation(line: 3513, column: 2, scope: !6722)
!6739 = !DILocation(line: 3514, column: 1, scope: !6722)
!6740 = distinct !DISubprogram(name: "filemap_invalidate_lock_shared", scope: !288, file: !288, line: 857, type: !6741, scopeLine: 858, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6743)
!6741 = !DISubroutineType(types: !6742)
!6742 = !{null, !508}
!6743 = !{!6744}
!6744 = !DILocalVariable(name: "mapping", arg: 1, scope: !6740, file: !288, line: 857, type: !508)
!6745 = !DILocation(line: 857, column: 73, scope: !6740)
!6746 = !DILocation(line: 859, column: 13, scope: !6740)
!6747 = !DILocation(line: 859, column: 22, scope: !6740)
!6748 = !DILocation(line: 859, column: 2, scope: !6740)
!6749 = !DILocation(line: 860, column: 1, scope: !6740)
!6750 = distinct !DISubprogram(name: "find_lock_page", scope: !372, file: !372, line: 727, type: !6751, scopeLine: 729, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6753)
!6751 = !DISubroutineType(types: !6752)
!6752 = !{!2103, !508, !55}
!6753 = !{!6754, !6755}
!6754 = !DILocalVariable(name: "mapping", arg: 1, scope: !6750, file: !372, line: 727, type: !508)
!6755 = !DILocalVariable(name: "index", arg: 2, scope: !6750, file: !372, line: 728, type: !55)
!6756 = !DILocation(line: 727, column: 65, scope: !6750)
!6757 = !DILocation(line: 728, column: 14, scope: !6750)
!6758 = !DILocation(line: 730, column: 28, scope: !6750)
!6759 = !DILocation(line: 730, column: 37, scope: !6750)
!6760 = !DILocation(line: 730, column: 9, scope: !6750)
!6761 = !DILocation(line: 730, column: 2, scope: !6750)
!6762 = !DISubprogram(name: "folio_alloc", scope: !6763, file: !6763, line: 265, type: !6764, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6763 = !DIFile(filename: "./include/linux/gfp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9839e6e1390b3a0e2df74dd95101fbc5")
!6764 = !DISubroutineType(types: !6765)
!6765 = !{!4785, !849, !7}
!6766 = !DISubprogram(name: "set_direct_map_invalid_noflush", scope: !6767, file: !6767, line: 86, type: !6768, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6767 = !DIFile(filename: "./arch/x86/include/asm/set_memory.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5ed4c9c9f9b5c1359158a637c4326a39")
!6768 = !DISubroutineType(types: !6769)
!6769 = !{!38, !2103}
!6770 = distinct !DISubprogram(name: "folio_put", scope: !1981, file: !1981, line: 1478, type: !5927, scopeLine: 1479, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6771)
!6771 = !{!6772}
!6772 = !DILocalVariable(name: "folio", arg: 1, scope: !6770, file: !1981, line: 1478, type: !4785)
!6773 = !DILocation(line: 1478, column: 44, scope: !6770)
!6774 = !DILocation(line: 1480, column: 25, scope: !6775)
!6775 = distinct !DILexicalBlock(scope: !6770, file: !1981, line: 1480, column: 6)
!6776 = !DILocation(line: 1480, column: 6, scope: !6775)
!6777 = !DILocation(line: 1480, column: 6, scope: !6770)
!6778 = !DILocation(line: 1481, column: 15, scope: !6775)
!6779 = !DILocation(line: 1481, column: 3, scope: !6775)
!6780 = !DILocation(line: 1482, column: 1, scope: !6770)
!6781 = distinct !DISubprogram(name: "__folio_mark_uptodate", scope: !332, file: !332, line: 747, type: !5927, scopeLine: 748, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6782)
!6782 = !{!6783}
!6783 = !DILocalVariable(name: "folio", arg: 1, scope: !6781, file: !332, line: 747, type: !4785)
!6784 = !DILocation(line: 747, column: 65, scope: !6781)
!6785 = !DILocation(line: 749, column: 2, scope: !6781)
!6786 = !DILocation(line: 749, column: 2, scope: !6787)
!6787 = distinct !DILexicalBlock(scope: !6781, file: !332, line: 749, column: 2)
!6788 = !DILocation(line: 749, column: 2, scope: !6789)
!6789 = distinct !DILexicalBlock(scope: !6787, file: !332, line: 749, column: 2)
!6790 = !{i64 2151073780}
!6791 = !DILocation(line: 750, column: 2, scope: !6781)
!6792 = !DILocation(line: 751, column: 1, scope: !6781)
!6793 = !DISubprogram(name: "filemap_add_folio", scope: !372, file: !372, line: 1216, type: !6794, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6794 = !DISubroutineType(types: !6795)
!6795 = !{!38, !508, !4785, !55, !849}
!6796 = !DISubprogram(name: "set_direct_map_default_noflush", scope: !6767, file: !6767, line: 87, type: !6768, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6797 = distinct !DISubprogram(name: "lowmem_page_address", scope: !1981, file: !1981, line: 2176, type: !6798, scopeLine: 2177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6802)
!6798 = !DISubroutineType(types: !6799)
!6799 = !{!36, !6800}
!6800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6801, size: 64)
!6801 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2104)
!6802 = !{!6803}
!6803 = !DILocalVariable(name: "page", arg: 1, scope: !6797, file: !1981, line: 2176, type: !6800)
!6804 = !DILocation(line: 2176, column: 69, scope: !6797)
!6805 = !DILocation(line: 2178, column: 9, scope: !6797)
!6806 = !DILocation(line: 2178, column: 2, scope: !6797)
!6807 = !DISubprogram(name: "flush_tlb_kernel_range", scope: !6808, file: !6808, line: 251, type: !6809, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6808 = !DIFile(filename: "./arch/x86/include/asm/tlbflush.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "855d4064bc03d0e3d0f10fca91c7b33f")
!6809 = !DISubroutineType(types: !6810)
!6810 = !{null, !55, !55}
!6811 = distinct !DISubprogram(name: "filemap_invalidate_unlock_shared", scope: !288, file: !288, line: 868, type: !6741, scopeLine: 870, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6812)
!6812 = !{!6813}
!6813 = !DILocalVariable(name: "mapping", arg: 1, scope: !6811, file: !288, line: 869, type: !508)
!6814 = !DILocation(line: 869, column: 28, scope: !6811)
!6815 = !DILocation(line: 871, column: 11, scope: !6811)
!6816 = !DILocation(line: 871, column: 20, scope: !6811)
!6817 = !DILocation(line: 871, column: 2, scope: !6811)
!6818 = !DILocation(line: 872, column: 1, scope: !6811)
!6819 = !DISubprogram(name: "down_read", scope: !1207, file: !1207, line: 175, type: !6820, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6820 = !DISubroutineType(types: !6821)
!6821 = !{null, !6822}
!6822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!6823 = !DISubprogram(name: "pagecache_get_page", scope: !372, file: !372, line: 634, type: !6824, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6824 = !DISubroutineType(types: !6825)
!6825 = !{!2103, !508, !55, !6352, !849}
!6826 = distinct !DISubprogram(name: "folio_put_testzero", scope: !1981, file: !1981, line: 1103, type: !5936, scopeLine: 1104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6827)
!6827 = !{!6828}
!6828 = !DILocalVariable(name: "folio", arg: 1, scope: !6826, file: !1981, line: 1103, type: !4785)
!6829 = !DILocation(line: 1103, column: 52, scope: !6826)
!6830 = !DILocation(line: 1105, column: 28, scope: !6826)
!6831 = !DILocation(line: 1105, column: 35, scope: !6826)
!6832 = !DILocation(line: 1105, column: 9, scope: !6826)
!6833 = !DILocation(line: 1105, column: 2, scope: !6826)
!6834 = !DISubprogram(name: "__folio_put", scope: !1981, file: !1981, line: 1283, type: !5927, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6835 = distinct !DISubprogram(name: "put_page_testzero", scope: !1981, file: !1981, line: 1097, type: !6768, scopeLine: 1098, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6836)
!6836 = !{!6837}
!6837 = !DILocalVariable(name: "page", arg: 1, scope: !6835, file: !1981, line: 1097, type: !2103)
!6838 = !DILocation(line: 1097, column: 50, scope: !6835)
!6839 = !DILocation(line: 1100, column: 31, scope: !6835)
!6840 = !DILocation(line: 1100, column: 9, scope: !6835)
!6841 = !DILocation(line: 1100, column: 2, scope: !6835)
!6842 = distinct !DISubprogram(name: "page_ref_dec_and_test", scope: !6843, file: !6843, line: 208, type: !6768, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6844)
!6843 = !DIFile(filename: "./include/linux/page_ref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0ed1500ef964c39be8e0b4c715e2a9d4")
!6844 = !{!6845, !6846}
!6845 = !DILocalVariable(name: "page", arg: 1, scope: !6842, file: !6843, line: 208, type: !2103)
!6846 = !DILocalVariable(name: "ret", scope: !6842, file: !6843, line: 210, type: !38)
!6847 = !DILocation(line: 208, column: 54, scope: !6842)
!6848 = !DILocation(line: 210, column: 2, scope: !6842)
!6849 = !DILocation(line: 210, column: 6, scope: !6842)
!6850 = !DILocation(line: 210, column: 33, scope: !6842)
!6851 = !DILocation(line: 210, column: 39, scope: !6842)
!6852 = !DILocation(line: 210, column: 12, scope: !6842)
!6853 = !DILocation(line: 214, column: 9, scope: !6842)
!6854 = !DILocation(line: 215, column: 1, scope: !6842)
!6855 = !DILocation(line: 214, column: 2, scope: !6842)
!6856 = distinct !DISubprogram(name: "atomic_dec_and_test", scope: !6422, file: !6422, line: 1372, type: !6857, scopeLine: 1373, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6860)
!6857 = !DISubroutineType(types: !6858)
!6858 = !{!1356, !6859}
!6859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!6860 = !{!6861}
!6861 = !DILocalVariable(name: "v", arg: 1, scope: !6856, file: !6422, line: 1372, type: !6859)
!6862 = !DILocation(line: 1372, column: 31, scope: !6856)
!6863 = !DILocation(line: 1374, column: 2, scope: !6856)
!6864 = !DILocation(line: 1374, column: 2, scope: !6865)
!6865 = distinct !DILexicalBlock(scope: !6856, file: !6422, line: 1374, column: 2)
!6866 = !DILocation(line: 1375, column: 31, scope: !6856)
!6867 = !DILocation(line: 1375, column: 2, scope: !6856)
!6868 = !DILocation(line: 1376, column: 33, scope: !6856)
!6869 = !DILocation(line: 1376, column: 9, scope: !6856)
!6870 = !DILocation(line: 1376, column: 2, scope: !6856)
!6871 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !6514, file: !6514, line: 94, type: !6515, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6872)
!6872 = !{!6873, !6874}
!6873 = !DILocalVariable(name: "v", arg: 1, scope: !6871, file: !6514, line: 94, type: !6517)
!6874 = !DILocalVariable(name: "size", arg: 2, scope: !6871, file: !6514, line: 94, type: !51)
!6875 = !DILocation(line: 94, column: 79, scope: !6871)
!6876 = !DILocation(line: 94, column: 89, scope: !6871)
!6877 = !DILocation(line: 96, column: 20, scope: !6871)
!6878 = !DILocation(line: 96, column: 23, scope: !6871)
!6879 = !DILocation(line: 96, column: 2, scope: !6871)
!6880 = !DILocation(line: 97, column: 2, scope: !6871)
!6881 = !DILocation(line: 98, column: 1, scope: !6871)
!6882 = distinct !DISubprogram(name: "raw_atomic_dec_and_test", scope: !6531, file: !6531, line: 2254, type: !6857, scopeLine: 2255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6883)
!6883 = !{!6884}
!6884 = !DILocalVariable(name: "v", arg: 1, scope: !6882, file: !6531, line: 2254, type: !6859)
!6885 = !DILocation(line: 2254, column: 35, scope: !6882)
!6886 = !DILocation(line: 2257, column: 34, scope: !6882)
!6887 = !DILocation(line: 2257, column: 9, scope: !6882)
!6888 = !DILocation(line: 2257, column: 2, scope: !6882)
!6889 = distinct !DISubprogram(name: "kasan_check_write", scope: !6539, file: !6539, line: 44, type: !6540, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6890)
!6890 = !{!6891, !6892}
!6891 = !DILocalVariable(name: "p", arg: 1, scope: !6889, file: !6539, line: 44, type: !6517)
!6892 = !DILocalVariable(name: "size", arg: 2, scope: !6889, file: !6539, line: 44, type: !7)
!6893 = !DILocation(line: 44, column: 59, scope: !6889)
!6894 = !DILocation(line: 44, column: 75, scope: !6889)
!6895 = !DILocation(line: 46, column: 2, scope: !6889)
!6896 = distinct !DISubprogram(name: "arch_atomic_dec_and_test", scope: !6561, file: !6561, line: 65, type: !6857, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6897)
!6897 = !{!6898, !6899}
!6898 = !DILocalVariable(name: "v", arg: 1, scope: !6896, file: !6561, line: 65, type: !6859)
!6899 = !DILocalVariable(name: "c", scope: !6900, file: !6561, line: 67, type: !1356)
!6900 = distinct !DILexicalBlock(scope: !6896, file: !6561, line: 67, column: 9)
!6901 = !DILocation(line: 65, column: 64, scope: !6896)
!6902 = !DILocation(line: 67, column: 9, scope: !6900)
!6903 = !{i64 2149029879, i64 2149029918, i64 2149029939, i64 2149029976, i64 2149029999, i64 2149030008, i64 2149030082}
!6904 = !DILocation(line: 67, column: 9, scope: !6896)
!6905 = !DILocation(line: 67, column: 2, scope: !6896)
!6906 = distinct !DISubprogram(name: "___set_bit", scope: !6907, file: !6907, line: 26, type: !6908, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6912)
!6907 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!6908 = !DISubroutineType(types: !6909)
!6909 = !{null, !55, !6910}
!6910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6911, size: 64)
!6911 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !55)
!6912 = !{!6913, !6914}
!6913 = !DILocalVariable(name: "nr", arg: 1, scope: !6906, file: !6907, line: 26, type: !55)
!6914 = !DILocalVariable(name: "addr", arg: 2, scope: !6906, file: !6907, line: 26, type: !6910)
!6915 = !DILocation(line: 26, column: 26, scope: !6906)
!6916 = !DILocation(line: 26, column: 54, scope: !6906)
!6917 = !DILocation(line: 28, column: 19, scope: !6906)
!6918 = !DILocation(line: 28, column: 26, scope: !6906)
!6919 = !DILocation(line: 28, column: 24, scope: !6906)
!6920 = !DILocation(line: 28, column: 2, scope: !6906)
!6921 = !DILocation(line: 29, column: 17, scope: !6906)
!6922 = !DILocation(line: 29, column: 21, scope: !6906)
!6923 = !DILocation(line: 29, column: 2, scope: !6906)
!6924 = !DILocation(line: 30, column: 1, scope: !6906)
!6925 = distinct !DISubprogram(name: "folio_flags", scope: !332, file: !332, line: 308, type: !6926, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6928)
!6926 = !DISubroutineType(types: !6927)
!6927 = !{!6341, !4785, !7}
!6928 = !{!6929, !6930, !6931}
!6929 = !DILocalVariable(name: "folio", arg: 1, scope: !6925, file: !332, line: 308, type: !4785)
!6930 = !DILocalVariable(name: "n", arg: 2, scope: !6925, file: !332, line: 308, type: !7)
!6931 = !DILocalVariable(name: "page", scope: !6925, file: !332, line: 310, type: !2103)
!6932 = !DILocation(line: 308, column: 49, scope: !6925)
!6933 = !DILocation(line: 308, column: 65, scope: !6925)
!6934 = !DILocation(line: 310, column: 2, scope: !6925)
!6935 = !DILocation(line: 310, column: 15, scope: !6925)
!6936 = !DILocation(line: 310, column: 23, scope: !6925)
!6937 = !DILocation(line: 310, column: 30, scope: !6925)
!6938 = !DILocation(line: 314, column: 10, scope: !6925)
!6939 = !DILocation(line: 314, column: 15, scope: !6925)
!6940 = !DILocation(line: 314, column: 18, scope: !6925)
!6941 = !DILocation(line: 315, column: 1, scope: !6925)
!6942 = !DILocation(line: 314, column: 2, scope: !6925)
!6943 = distinct !DISubprogram(name: "instrument_write", scope: !6514, file: !6514, line: 38, type: !6515, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6944)
!6944 = !{!6945, !6946}
!6945 = !DILocalVariable(name: "v", arg: 1, scope: !6943, file: !6514, line: 38, type: !6517)
!6946 = !DILocalVariable(name: "size", arg: 2, scope: !6943, file: !6514, line: 38, type: !51)
!6947 = !DILocation(line: 38, column: 67, scope: !6943)
!6948 = !DILocation(line: 38, column: 77, scope: !6943)
!6949 = !DILocation(line: 40, column: 20, scope: !6943)
!6950 = !DILocation(line: 40, column: 23, scope: !6943)
!6951 = !DILocation(line: 40, column: 2, scope: !6943)
!6952 = !DILocation(line: 41, column: 2, scope: !6943)
!6953 = !DILocation(line: 42, column: 1, scope: !6943)
!6954 = distinct !DISubprogram(name: "arch___set_bit", scope: !6955, file: !6955, line: 66, type: !6908, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6956)
!6955 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!6956 = !{!6957, !6958}
!6957 = !DILocalVariable(name: "nr", arg: 1, scope: !6954, file: !6955, line: 66, type: !55)
!6958 = !DILocalVariable(name: "addr", arg: 2, scope: !6954, file: !6955, line: 66, type: !6910)
!6959 = !DILocation(line: 66, column: 30, scope: !6954)
!6960 = !DILocation(line: 66, column: 58, scope: !6954)
!6961 = !DILocation(line: 68, column: 44, scope: !6954)
!6962 = !DILocation(line: 68, column: 56, scope: !6954)
!6963 = !DILocation(line: 68, column: 2, scope: !6954)
!6964 = !{i64 2148295493}
!6965 = !DILocation(line: 69, column: 1, scope: !6954)
!6966 = !DISubprogram(name: "up_read", scope: !1207, file: !1207, line: 198, type: !6820, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6967 = distinct !DISubprogram(name: "folio_zero_segment", scope: !6386, file: !6386, line: 536, type: !5919, scopeLine: 538, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6968)
!6968 = !{!6969, !6970, !6971}
!6969 = !DILocalVariable(name: "folio", arg: 1, scope: !6967, file: !6386, line: 536, type: !4785)
!6970 = !DILocalVariable(name: "start", arg: 2, scope: !6967, file: !6386, line: 537, type: !51)
!6971 = !DILocalVariable(name: "xend", arg: 3, scope: !6967, file: !6386, line: 537, type: !51)
!6972 = !DILocation(line: 536, column: 53, scope: !6967)
!6973 = !DILocation(line: 537, column: 10, scope: !6967)
!6974 = !DILocation(line: 537, column: 24, scope: !6967)
!6975 = !DILocation(line: 539, column: 22, scope: !6967)
!6976 = !DILocation(line: 539, column: 29, scope: !6967)
!6977 = !DILocation(line: 539, column: 35, scope: !6967)
!6978 = !DILocation(line: 539, column: 42, scope: !6967)
!6979 = !DILocation(line: 539, column: 2, scope: !6967)
!6980 = !DILocation(line: 540, column: 1, scope: !6967)
!6981 = distinct !DISubprogram(name: "folio_size", scope: !1981, file: !1981, line: 2125, type: !6982, scopeLine: 2126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6984)
!6982 = !DISubroutineType(types: !6983)
!6983 = !{!51, !4785}
!6984 = !{!6985}
!6985 = !DILocalVariable(name: "folio", arg: 1, scope: !6981, file: !1981, line: 2125, type: !4785)
!6986 = !DILocation(line: 2125, column: 47, scope: !6981)
!6987 = !DILocation(line: 2127, column: 34, scope: !6981)
!6988 = !DILocation(line: 2127, column: 22, scope: !6981)
!6989 = !DILocation(line: 2127, column: 19, scope: !6981)
!6990 = !DILocation(line: 2127, column: 2, scope: !6981)
!6991 = distinct !DISubprogram(name: "zero_user_segments", scope: !6386, file: !6386, line: 268, type: !6992, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6994)
!6992 = !DISubroutineType(types: !6993)
!6993 = !{null, !2103, !7, !7, !7, !7}
!6994 = !{!6995, !6996, !6997, !6998, !6999, !7000, !7001}
!6995 = !DILocalVariable(name: "page", arg: 1, scope: !6991, file: !6386, line: 268, type: !2103)
!6996 = !DILocalVariable(name: "start1", arg: 2, scope: !6991, file: !6386, line: 269, type: !7)
!6997 = !DILocalVariable(name: "end1", arg: 3, scope: !6991, file: !6386, line: 269, type: !7)
!6998 = !DILocalVariable(name: "start2", arg: 4, scope: !6991, file: !6386, line: 270, type: !7)
!6999 = !DILocalVariable(name: "end2", arg: 5, scope: !6991, file: !6386, line: 270, type: !7)
!7000 = !DILocalVariable(name: "kaddr", scope: !6991, file: !6386, line: 272, type: !36)
!7001 = !DILocalVariable(name: "i", scope: !6991, file: !6386, line: 273, type: !7)
!7002 = !DILocation(line: 268, column: 52, scope: !6991)
!7003 = !DILocation(line: 269, column: 12, scope: !6991)
!7004 = !DILocation(line: 269, column: 29, scope: !6991)
!7005 = !DILocation(line: 270, column: 12, scope: !6991)
!7006 = !DILocation(line: 270, column: 29, scope: !6991)
!7007 = !DILocation(line: 272, column: 2, scope: !6991)
!7008 = !DILocation(line: 272, column: 8, scope: !6991)
!7009 = !DILocation(line: 272, column: 32, scope: !6991)
!7010 = !DILocation(line: 272, column: 16, scope: !6991)
!7011 = !DILocation(line: 273, column: 2, scope: !6991)
!7012 = !DILocation(line: 273, column: 15, scope: !6991)
!7013 = !DILocation(line: 275, column: 2, scope: !6991)
!7014 = !DILocation(line: 275, column: 2, scope: !7015)
!7015 = distinct !DILexicalBlock(scope: !7016, file: !6386, line: 275, column: 2)
!7016 = distinct !DILexicalBlock(scope: !6991, file: !6386, line: 275, column: 2)
!7017 = !DILocation(line: 275, column: 2, scope: !7016)
!7018 = !DILocation(line: 275, column: 2, scope: !7019)
!7019 = distinct !DILexicalBlock(scope: !7015, file: !6386, line: 275, column: 2)
!7020 = !DILocation(line: 275, column: 2, scope: !7021)
!7021 = distinct !DILexicalBlock(scope: !7019, file: !6386, line: 275, column: 2)
!7022 = !DILocation(line: 275, column: 2, scope: !7023)
!7023 = distinct !DILexicalBlock(scope: !7019, file: !6386, line: 275, column: 2)
!7024 = !{i64 2154449547, i64 2154449576, i64 2154449622, i64 2154449680, i64 2154449734, i64 2154449788, i64 2154449843, i64 2154449874}
!7025 = !DILocation(line: 277, column: 6, scope: !7026)
!7026 = distinct !DILexicalBlock(scope: !6991, file: !6386, line: 277, column: 6)
!7027 = !DILocation(line: 277, column: 13, scope: !7026)
!7028 = !DILocation(line: 277, column: 11, scope: !7026)
!7029 = !DILocation(line: 277, column: 6, scope: !6991)
!7030 = !DILocation(line: 278, column: 10, scope: !7026)
!7031 = !DILocation(line: 278, column: 18, scope: !7026)
!7032 = !DILocation(line: 278, column: 16, scope: !7026)
!7033 = !DILocation(line: 278, column: 29, scope: !7026)
!7034 = !DILocation(line: 278, column: 36, scope: !7026)
!7035 = !DILocation(line: 278, column: 34, scope: !7026)
!7036 = !DILocation(line: 278, column: 3, scope: !7026)
!7037 = !DILocation(line: 280, column: 6, scope: !7038)
!7038 = distinct !DILexicalBlock(scope: !6991, file: !6386, line: 280, column: 6)
!7039 = !DILocation(line: 280, column: 13, scope: !7038)
!7040 = !DILocation(line: 280, column: 11, scope: !7038)
!7041 = !DILocation(line: 280, column: 6, scope: !6991)
!7042 = !DILocation(line: 281, column: 10, scope: !7038)
!7043 = !DILocation(line: 281, column: 18, scope: !7038)
!7044 = !DILocation(line: 281, column: 16, scope: !7038)
!7045 = !DILocation(line: 281, column: 29, scope: !7038)
!7046 = !DILocation(line: 281, column: 36, scope: !7038)
!7047 = !DILocation(line: 281, column: 34, scope: !7038)
!7048 = !DILocation(line: 281, column: 3, scope: !7038)
!7049 = !DILocation(line: 283, column: 2, scope: !6991)
!7050 = !DILocation(line: 283, column: 2, scope: !7051)
!7051 = distinct !DILexicalBlock(scope: !6991, file: !6386, line: 283, column: 2)
!7052 = !DILocation(line: 283, column: 2, scope: !7053)
!7053 = distinct !DILexicalBlock(scope: !7051, file: !6386, line: 283, column: 2)
!7054 = !DILocation(line: 284, column: 9, scope: !7055)
!7055 = distinct !DILexicalBlock(scope: !6991, file: !6386, line: 284, column: 2)
!7056 = !DILocation(line: 284, column: 7, scope: !7055)
!7057 = !DILocation(line: 284, column: 14, scope: !7058)
!7058 = distinct !DILexicalBlock(scope: !7055, file: !6386, line: 284, column: 2)
!7059 = !DILocation(line: 284, column: 30, scope: !7058)
!7060 = !DILocation(line: 284, column: 18, scope: !7058)
!7061 = !DILocation(line: 284, column: 16, scope: !7058)
!7062 = !DILocation(line: 284, column: 2, scope: !7055)
!7063 = !DILocation(line: 285, column: 21, scope: !7058)
!7064 = !DILocation(line: 285, column: 28, scope: !7058)
!7065 = !DILocation(line: 285, column: 26, scope: !7058)
!7066 = !DILocation(line: 285, column: 3, scope: !7058)
!7067 = !DILocation(line: 284, column: 38, scope: !7058)
!7068 = !DILocation(line: 284, column: 2, scope: !7058)
!7069 = distinct !{!7069, !7062, !7070, !7071, !7072}
!7070 = !DILocation(line: 285, column: 29, scope: !7055)
!7071 = !{!"llvm.loop.mustprogress"}
!7072 = !{!"llvm.loop.unroll.disable"}
!7073 = !DILocation(line: 286, column: 1, scope: !6991)
!7074 = distinct !DISubprogram(name: "kmap_local_page", scope: !7075, file: !7075, line: 183, type: !7076, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7078)
!7075 = !DIFile(filename: "./include/linux/highmem-internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ae7838583c7018843a11d0e374eeb3")
!7076 = !DISubroutineType(types: !7077)
!7077 = !{!36, !2103}
!7078 = !{!7079}
!7079 = !DILocalVariable(name: "page", arg: 1, scope: !7074, file: !7075, line: 183, type: !2103)
!7080 = !DILocation(line: 183, column: 50, scope: !7074)
!7081 = !DILocation(line: 185, column: 9, scope: !7074)
!7082 = !DILocation(line: 185, column: 2, scope: !7074)
!7083 = distinct !DISubprogram(name: "page_size", scope: !1981, file: !1981, line: 1295, type: !7084, scopeLine: 1296, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7086)
!7084 = !DISubroutineType(types: !7085)
!7085 = !{!55, !2103}
!7086 = !{!7087}
!7087 = !DILocalVariable(name: "page", arg: 1, scope: !7083, file: !1981, line: 1295, type: !2103)
!7088 = !DILocation(line: 1295, column: 52, scope: !7083)
!7089 = !DILocation(line: 1297, column: 37, scope: !7083)
!7090 = !DILocation(line: 1297, column: 22, scope: !7083)
!7091 = !DILocation(line: 1297, column: 19, scope: !7083)
!7092 = !DILocation(line: 1297, column: 2, scope: !7083)
!7093 = distinct !DISubprogram(name: "__kunmap_local", scope: !7075, file: !7075, line: 203, type: !7094, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7096)
!7094 = !DISubroutineType(types: !7095)
!7095 = !{null, !1285}
!7096 = !{!7097}
!7097 = !DILocalVariable(name: "addr", arg: 1, scope: !7093, file: !7075, line: 203, type: !1285)
!7098 = !DILocation(line: 203, column: 47, scope: !7093)
!7099 = !DILocation(line: 208, column: 1, scope: !7093)
!7100 = distinct !DISubprogram(name: "compound_nr", scope: !1981, file: !1981, line: 2059, type: !7084, scopeLine: 2060, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7101)
!7101 = !{!7102, !7103}
!7102 = !DILocalVariable(name: "page", arg: 1, scope: !7100, file: !1981, line: 2059, type: !2103)
!7103 = !DILocalVariable(name: "folio", scope: !7100, file: !1981, line: 2061, type: !4785)
!7104 = !DILocation(line: 2059, column: 54, scope: !7100)
!7105 = !DILocation(line: 2061, column: 2, scope: !7100)
!7106 = !DILocation(line: 2061, column: 16, scope: !7100)
!7107 = !DILocation(line: 2061, column: 40, scope: !7100)
!7108 = !DILocation(line: 2063, column: 7, scope: !7109)
!7109 = distinct !DILexicalBlock(scope: !7100, file: !1981, line: 2063, column: 6)
!7110 = !DILocation(line: 2063, column: 6, scope: !7100)
!7111 = !DILocation(line: 2064, column: 3, scope: !7109)
!7112 = !DILocation(line: 2066, column: 9, scope: !7100)
!7113 = !DILocation(line: 2066, column: 16, scope: !7100)
!7114 = !DILocation(line: 2066, column: 2, scope: !7100)
!7115 = !DILocation(line: 2070, column: 1, scope: !7100)
!7116 = distinct !DISubprogram(name: "flush_dcache_page", scope: !7117, file: !7117, line: 51, type: !2198, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7118)
!7117 = !DIFile(filename: "./include/asm-generic/cacheflush.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "21f5dc5a8efda717141cd13596db7eb7")
!7118 = !{!7119}
!7119 = !DILocalVariable(name: "page", arg: 1, scope: !7116, file: !7117, line: 51, type: !2103)
!7120 = !DILocation(line: 51, column: 51, scope: !7116)
!7121 = !DILocation(line: 53, column: 1, scope: !7116)
!7122 = distinct !DISubprogram(name: "compound_order", scope: !1981, file: !1981, line: 1054, type: !7123, scopeLine: 1055, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7125)
!7123 = !DISubroutineType(types: !7124)
!7124 = !{!7, !2103}
!7125 = !{!7126, !7127}
!7126 = !DILocalVariable(name: "page", arg: 1, scope: !7122, file: !1981, line: 1054, type: !2103)
!7127 = !DILocalVariable(name: "folio", scope: !7122, file: !1981, line: 1056, type: !4785)
!7128 = !DILocation(line: 1054, column: 56, scope: !7122)
!7129 = !DILocation(line: 1056, column: 2, scope: !7122)
!7130 = !DILocation(line: 1056, column: 16, scope: !7122)
!7131 = !DILocation(line: 1056, column: 40, scope: !7122)
!7132 = !DILocation(line: 1058, column: 7, scope: !7133)
!7133 = distinct !DILexicalBlock(scope: !7122, file: !1981, line: 1058, column: 6)
!7134 = !DILocation(line: 1058, column: 6, scope: !7122)
!7135 = !DILocation(line: 1059, column: 3, scope: !7133)
!7136 = !DILocation(line: 1060, column: 9, scope: !7122)
!7137 = !DILocation(line: 1060, column: 16, scope: !7122)
!7138 = !DILocation(line: 1060, column: 25, scope: !7122)
!7139 = !DILocation(line: 1060, column: 2, scope: !7122)
!7140 = !DILocation(line: 1061, column: 1, scope: !7122)
!7141 = distinct !DISubprogram(name: "const_test_bit", scope: !7142, file: !7142, line: 166, type: !7143, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7147)
!7142 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!7143 = !DISubroutineType(types: !7144)
!7144 = !{!1356, !55, !7145}
!7145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7146, size: 64)
!7146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6911)
!7147 = !{!7148, !7149, !7150, !7151, !7152}
!7148 = !DILocalVariable(name: "nr", arg: 1, scope: !7141, file: !7142, line: 166, type: !55)
!7149 = !DILocalVariable(name: "addr", arg: 2, scope: !7141, file: !7142, line: 166, type: !7145)
!7150 = !DILocalVariable(name: "p", scope: !7141, file: !7142, line: 168, type: !6357)
!7151 = !DILocalVariable(name: "mask", scope: !7141, file: !7142, line: 169, type: !55)
!7152 = !DILocalVariable(name: "val", scope: !7141, file: !7142, line: 170, type: !55)
!7153 = !DILocation(line: 166, column: 30, scope: !7141)
!7154 = !DILocation(line: 166, column: 64, scope: !7141)
!7155 = !DILocation(line: 168, column: 2, scope: !7141)
!7156 = !DILocation(line: 168, column: 23, scope: !7141)
!7157 = !DILocation(line: 168, column: 50, scope: !7141)
!7158 = !DILocation(line: 168, column: 57, scope: !7141)
!7159 = !DILocation(line: 168, column: 55, scope: !7141)
!7160 = !DILocation(line: 169, column: 2, scope: !7141)
!7161 = !DILocation(line: 169, column: 16, scope: !7141)
!7162 = !DILocation(line: 169, column: 23, scope: !7141)
!7163 = !DILocation(line: 170, column: 2, scope: !7141)
!7164 = !DILocation(line: 170, column: 16, scope: !7141)
!7165 = !DILocation(line: 170, column: 23, scope: !7141)
!7166 = !DILocation(line: 170, column: 22, scope: !7141)
!7167 = !DILocation(line: 172, column: 12, scope: !7141)
!7168 = !DILocation(line: 172, column: 18, scope: !7141)
!7169 = !DILocation(line: 172, column: 16, scope: !7141)
!7170 = !DILocation(line: 172, column: 10, scope: !7141)
!7171 = !DILocation(line: 172, column: 9, scope: !7141)
!7172 = !DILocation(line: 173, column: 1, scope: !7141)
!7173 = !DILocation(line: 172, column: 2, scope: !7141)
!7174 = distinct !DISubprogram(name: "_test_bit", scope: !6907, file: !6907, line: 139, type: !7143, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7175)
!7175 = !{!7176, !7177}
!7176 = !DILocalVariable(name: "nr", arg: 1, scope: !7174, file: !6907, line: 139, type: !55)
!7177 = !DILocalVariable(name: "addr", arg: 2, scope: !7174, file: !6907, line: 139, type: !7145)
!7178 = !DILocation(line: 139, column: 25, scope: !7174)
!7179 = !DILocation(line: 139, column: 59, scope: !7174)
!7180 = !DILocation(line: 141, column: 25, scope: !7174)
!7181 = !DILocation(line: 141, column: 32, scope: !7174)
!7182 = !DILocation(line: 141, column: 30, scope: !7174)
!7183 = !DILocation(line: 141, column: 2, scope: !7174)
!7184 = !DILocation(line: 142, column: 23, scope: !7174)
!7185 = !DILocation(line: 142, column: 27, scope: !7174)
!7186 = !DILocation(line: 142, column: 9, scope: !7174)
!7187 = !DILocation(line: 142, column: 2, scope: !7174)
!7188 = distinct !DISubprogram(name: "arch_test_bit", scope: !6955, file: !6955, line: 237, type: !7143, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7189)
!7189 = !{!7190, !7191}
!7190 = !DILocalVariable(name: "nr", arg: 1, scope: !7188, file: !6955, line: 237, type: !55)
!7191 = !DILocalVariable(name: "addr", arg: 2, scope: !7188, file: !6955, line: 237, type: !7145)
!7192 = !DILocation(line: 237, column: 29, scope: !7188)
!7193 = !DILocation(line: 237, column: 63, scope: !7188)
!7194 = !DILocation(line: 239, column: 30, scope: !7188)
!7195 = !DILocation(line: 239, column: 9, scope: !7188)
!7196 = !DILocation(line: 239, column: 54, scope: !7188)
!7197 = !DILocation(line: 239, column: 58, scope: !7188)
!7198 = !DILocation(line: 239, column: 36, scope: !7188)
!7199 = !DILocation(line: 240, column: 26, scope: !7188)
!7200 = !DILocation(line: 240, column: 30, scope: !7188)
!7201 = !DILocation(line: 240, column: 8, scope: !7188)
!7202 = !DILocation(line: 239, column: 2, scope: !7188)
!7203 = distinct !DISubprogram(name: "constant_test_bit", scope: !6955, file: !6955, line: 204, type: !7204, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7206)
!7204 = !DISubroutineType(types: !7205)
!7205 = !{!1356, !473, !7145}
!7206 = !{!7207, !7208}
!7207 = !DILocalVariable(name: "nr", arg: 1, scope: !7203, file: !6955, line: 204, type: !473)
!7208 = !DILocalVariable(name: "addr", arg: 2, scope: !7203, file: !6955, line: 204, type: !7145)
!7209 = !DILocation(line: 204, column: 52, scope: !7203)
!7210 = !DILocation(line: 204, column: 86, scope: !7203)
!7211 = !DILocation(line: 206, column: 19, scope: !7203)
!7212 = !DILocation(line: 206, column: 22, scope: !7203)
!7213 = !DILocation(line: 206, column: 15, scope: !7203)
!7214 = !DILocation(line: 207, column: 4, scope: !7203)
!7215 = !DILocation(line: 207, column: 9, scope: !7203)
!7216 = !DILocation(line: 207, column: 12, scope: !7203)
!7217 = !DILocation(line: 206, column: 44, scope: !7203)
!7218 = !DILocation(line: 207, column: 37, scope: !7203)
!7219 = !DILocation(line: 206, column: 2, scope: !7203)
!7220 = distinct !DISubprogram(name: "variable_test_bit", scope: !6955, file: !6955, line: 224, type: !7204, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7221)
!7221 = !{!7222, !7223, !7224}
!7222 = !DILocalVariable(name: "nr", arg: 1, scope: !7220, file: !6955, line: 224, type: !473)
!7223 = !DILocalVariable(name: "addr", arg: 2, scope: !7220, file: !6955, line: 224, type: !7145)
!7224 = !DILocalVariable(name: "oldbit", scope: !7220, file: !6955, line: 226, type: !1356)
!7225 = !DILocation(line: 224, column: 52, scope: !7220)
!7226 = !DILocation(line: 224, column: 86, scope: !7220)
!7227 = !DILocation(line: 226, column: 2, scope: !7220)
!7228 = !DILocation(line: 226, column: 7, scope: !7220)
!7229 = !DILocation(line: 231, column: 33, scope: !7220)
!7230 = !DILocation(line: 231, column: 46, scope: !7220)
!7231 = !DILocation(line: 228, column: 2, scope: !7220)
!7232 = !{i64 2148308179, i64 2148308253}
!7233 = !DILocation(line: 233, column: 9, scope: !7220)
!7234 = !DILocation(line: 234, column: 1, scope: !7220)
!7235 = !DILocation(line: 233, column: 2, scope: !7220)
!7236 = distinct !DISubprogram(name: "folio_order", scope: !1981, file: !1981, line: 1072, type: !7237, scopeLine: 1073, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7239)
!7237 = !DISubroutineType(types: !7238)
!7238 = !{!7, !4785}
!7239 = !{!7240}
!7240 = !DILocalVariable(name: "folio", arg: 1, scope: !7236, file: !1981, line: 1072, type: !4785)
!7241 = !DILocation(line: 1072, column: 54, scope: !7236)
!7242 = !DILocation(line: 1074, column: 24, scope: !7243)
!7243 = distinct !DILexicalBlock(scope: !7236, file: !1981, line: 1074, column: 6)
!7244 = !DILocation(line: 1074, column: 7, scope: !7243)
!7245 = !DILocation(line: 1074, column: 6, scope: !7236)
!7246 = !DILocation(line: 1075, column: 3, scope: !7243)
!7247 = !DILocation(line: 1076, column: 9, scope: !7236)
!7248 = !DILocation(line: 1076, column: 16, scope: !7236)
!7249 = !DILocation(line: 1076, column: 25, scope: !7236)
!7250 = !DILocation(line: 1076, column: 2, scope: !7236)
!7251 = !DILocation(line: 1077, column: 1, scope: !7236)
!7252 = distinct !DISubprogram(name: "folio_test_large", scope: !332, file: !332, line: 810, type: !7253, scopeLine: 811, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7255)
!7253 = !DISubroutineType(types: !7254)
!7254 = !{!1356, !4785}
!7255 = !{!7256}
!7256 = !DILocalVariable(name: "folio", arg: 1, scope: !7252, file: !332, line: 810, type: !4785)
!7257 = !DILocation(line: 810, column: 51, scope: !7252)
!7258 = !DILocation(line: 812, column: 25, scope: !7252)
!7259 = !DILocation(line: 812, column: 9, scope: !7252)
!7260 = !DILocation(line: 812, column: 2, scope: !7252)
!7261 = distinct !DISubprogram(name: "folio_test_head", scope: !332, file: !332, line: 789, type: !7253, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7262)
!7262 = !{!7263}
!7263 = !DILocalVariable(name: "folio", arg: 1, scope: !7261, file: !332, line: 789, type: !4785)
!7264 = !DILocation(line: 789, column: 59, scope: !7261)
!7265 = !DILocation(line: 791, column: 9, scope: !7261)
!7266 = !DILocation(line: 791, column: 2, scope: !7261)
!7267 = distinct !DISubprogram(name: "__do_sys_memfd_secret", scope: !3, file: !3, line: 233, type: !7268, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7270)
!7268 = !DISubroutineType(types: !7269)
!7269 = !{!473, !7}
!7270 = !{!7271, !7272, !7273, !7274, !7275}
!7271 = !DILocalVariable(name: "flags", arg: 1, scope: !7267, file: !3, line: 233, type: !7)
!7272 = !DILocalVariable(name: "file", scope: !7267, file: !3, line: 235, type: !728)
!7273 = !DILocalVariable(name: "fd", scope: !7267, file: !3, line: 236, type: !38)
!7274 = !DILocalVariable(name: "err", scope: !7267, file: !3, line: 236, type: !38)
!7275 = !DILabel(scope: !7267, name: "err_put_fd", file: !3, line: 265)
!7276 = !DILocation(line: 233, column: 1, scope: !7267)
!7277 = !DILocation(line: 235, column: 2, scope: !7267)
!7278 = !DILocation(line: 235, column: 15, scope: !7267)
!7279 = !DILocation(line: 236, column: 2, scope: !7267)
!7280 = !DILocation(line: 236, column: 6, scope: !7267)
!7281 = !DILocation(line: 236, column: 10, scope: !7267)
!7282 = !DILocation(line: 239, column: 2, scope: !7267)
!7283 = !DILocation(line: 239, column: 2, scope: !7284)
!7284 = distinct !DILexicalBlock(scope: !7267, file: !3, line: 239, column: 2)
!7285 = !DILocation(line: 241, column: 7, scope: !7286)
!7286 = distinct !DILexicalBlock(scope: !7267, file: !3, line: 241, column: 6)
!7287 = !DILocation(line: 241, column: 24, scope: !7286)
!7288 = !DILocation(line: 241, column: 28, scope: !7286)
!7289 = !DILocation(line: 241, column: 6, scope: !7267)
!7290 = !DILocation(line: 242, column: 3, scope: !7286)
!7291 = !DILocation(line: 244, column: 6, scope: !7292)
!7292 = distinct !DILexicalBlock(scope: !7267, file: !3, line: 244, column: 6)
!7293 = !DILocation(line: 244, column: 12, scope: !7292)
!7294 = !DILocation(line: 244, column: 6, scope: !7267)
!7295 = !DILocation(line: 245, column: 3, scope: !7292)
!7296 = !DILocation(line: 246, column: 6, scope: !7297)
!7297 = distinct !DILexicalBlock(scope: !7267, file: !3, line: 246, column: 6)
!7298 = !DILocation(line: 246, column: 36, scope: !7297)
!7299 = !DILocation(line: 246, column: 6, scope: !7267)
!7300 = !DILocation(line: 247, column: 3, scope: !7297)
!7301 = !DILocation(line: 249, column: 27, scope: !7267)
!7302 = !DILocation(line: 249, column: 33, scope: !7267)
!7303 = !DILocation(line: 249, column: 7, scope: !7267)
!7304 = !DILocation(line: 249, column: 5, scope: !7267)
!7305 = !DILocation(line: 250, column: 6, scope: !7306)
!7306 = distinct !DILexicalBlock(scope: !7267, file: !3, line: 250, column: 6)
!7307 = !DILocation(line: 250, column: 9, scope: !7306)
!7308 = !DILocation(line: 250, column: 6, scope: !7267)
!7309 = !DILocation(line: 251, column: 10, scope: !7306)
!7310 = !DILocation(line: 251, column: 3, scope: !7306)
!7311 = !DILocation(line: 253, column: 31, scope: !7267)
!7312 = !DILocation(line: 253, column: 9, scope: !7267)
!7313 = !DILocation(line: 253, column: 7, scope: !7267)
!7314 = !DILocation(line: 254, column: 13, scope: !7315)
!7315 = distinct !DILexicalBlock(scope: !7267, file: !3, line: 254, column: 6)
!7316 = !DILocation(line: 254, column: 6, scope: !7315)
!7317 = !DILocation(line: 254, column: 6, scope: !7267)
!7318 = !DILocation(line: 255, column: 17, scope: !7319)
!7319 = distinct !DILexicalBlock(scope: !7315, file: !3, line: 254, column: 20)
!7320 = !DILocation(line: 255, column: 9, scope: !7319)
!7321 = !DILocation(line: 255, column: 7, scope: !7319)
!7322 = !DILocation(line: 256, column: 3, scope: !7319)
!7323 = !DILocation(line: 259, column: 2, scope: !7267)
!7324 = !DILocation(line: 259, column: 8, scope: !7267)
!7325 = !DILocation(line: 259, column: 16, scope: !7267)
!7326 = !DILocation(line: 261, column: 2, scope: !7267)
!7327 = !DILocation(line: 262, column: 13, scope: !7267)
!7328 = !DILocation(line: 262, column: 17, scope: !7267)
!7329 = !DILocation(line: 262, column: 2, scope: !7267)
!7330 = !DILocation(line: 263, column: 9, scope: !7267)
!7331 = !DILocation(line: 263, column: 2, scope: !7267)
!7332 = !DILocation(line: 265, column: 1, scope: !7267)
!7333 = !DILocation(line: 266, column: 16, scope: !7267)
!7334 = !DILocation(line: 266, column: 2, scope: !7267)
!7335 = !DILocation(line: 267, column: 9, scope: !7267)
!7336 = !DILocation(line: 267, column: 2, scope: !7267)
!7337 = !DILocation(line: 268, column: 1, scope: !7267)
!7338 = distinct !DISubprogram(name: "can_set_direct_map", scope: !7339, file: !7339, line: 47, type: !3730, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!7339 = !DIFile(filename: "./include/linux/set_memory.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "875cffb3fdd0a1dba27316b77b9bde2e")
!7340 = !DILocation(line: 49, column: 2, scope: !7338)
!7341 = !DISubprogram(name: "get_unused_fd_flags", scope: !7342, file: !7342, line: 91, type: !7343, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7342 = !DIFile(filename: "./include/linux/file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "784aacb17b41d4e231ce3854c643bfe6")
!7343 = !DISubroutineType(types: !7344)
!7344 = !{!38, !7}
!7345 = distinct !DISubprogram(name: "secretmem_file_create", scope: !3, file: !3, line: 193, type: !7346, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7348)
!7346 = !DISubroutineType(types: !7347)
!7347 = !{!728, !55}
!7348 = !{!7349, !7350, !7351, !7352, !7353, !7354, !7355}
!7349 = !DILocalVariable(name: "flags", arg: 1, scope: !7345, file: !3, line: 193, type: !55)
!7350 = !DILocalVariable(name: "file", scope: !7345, file: !3, line: 195, type: !728)
!7351 = !DILocalVariable(name: "inode", scope: !7345, file: !3, line: 196, type: !512)
!7352 = !DILocalVariable(name: "anon_name", scope: !7345, file: !3, line: 197, type: !32)
!7353 = !DILocalVariable(name: "qname", scope: !7345, file: !3, line: 198, type: !631)
!7354 = !DILocalVariable(name: "err", scope: !7345, file: !3, line: 199, type: !38)
!7355 = !DILabel(scope: !7345, name: "err_free_inode", file: !3, line: 228)
!7356 = !DILocation(line: 193, column: 57, scope: !7345)
!7357 = !DILocation(line: 195, column: 2, scope: !7345)
!7358 = !DILocation(line: 195, column: 15, scope: !7345)
!7359 = !DILocation(line: 196, column: 2, scope: !7345)
!7360 = !DILocation(line: 196, column: 16, scope: !7345)
!7361 = !DILocation(line: 197, column: 2, scope: !7345)
!7362 = !DILocation(line: 197, column: 14, scope: !7345)
!7363 = !DILocation(line: 198, column: 2, scope: !7345)
!7364 = !DILocation(line: 198, column: 20, scope: !7345)
!7365 = !DILocation(line: 198, column: 28, scope: !7345)
!7366 = !DILocation(line: 199, column: 2, scope: !7345)
!7367 = !DILocation(line: 199, column: 6, scope: !7345)
!7368 = !DILocation(line: 201, column: 27, scope: !7345)
!7369 = !DILocation(line: 201, column: 42, scope: !7345)
!7370 = !DILocation(line: 201, column: 10, scope: !7345)
!7371 = !DILocation(line: 201, column: 8, scope: !7345)
!7372 = !DILocation(line: 202, column: 13, scope: !7373)
!7373 = distinct !DILexicalBlock(scope: !7345, file: !3, line: 202, column: 6)
!7374 = !DILocation(line: 202, column: 6, scope: !7373)
!7375 = !DILocation(line: 202, column: 6, scope: !7345)
!7376 = !DILocation(line: 203, column: 19, scope: !7373)
!7377 = !DILocation(line: 203, column: 10, scope: !7373)
!7378 = !DILocation(line: 203, column: 3, scope: !7373)
!7379 = !DILocation(line: 205, column: 42, scope: !7345)
!7380 = !DILocation(line: 205, column: 8, scope: !7345)
!7381 = !DILocation(line: 205, column: 6, scope: !7345)
!7382 = !DILocation(line: 206, column: 6, scope: !7383)
!7383 = distinct !DILexicalBlock(scope: !7345, file: !3, line: 206, column: 6)
!7384 = !DILocation(line: 206, column: 6, scope: !7345)
!7385 = !DILocation(line: 207, column: 18, scope: !7386)
!7386 = distinct !DILexicalBlock(scope: !7383, file: !3, line: 206, column: 11)
!7387 = !DILocation(line: 207, column: 10, scope: !7386)
!7388 = !DILocation(line: 207, column: 8, scope: !7386)
!7389 = !DILocation(line: 208, column: 3, scope: !7386)
!7390 = !DILocation(line: 211, column: 27, scope: !7345)
!7391 = !DILocation(line: 211, column: 34, scope: !7345)
!7392 = !DILocation(line: 211, column: 9, scope: !7345)
!7393 = !DILocation(line: 211, column: 7, scope: !7345)
!7394 = !DILocation(line: 213, column: 13, scope: !7395)
!7395 = distinct !DILexicalBlock(scope: !7345, file: !3, line: 213, column: 6)
!7396 = !DILocation(line: 213, column: 6, scope: !7395)
!7397 = !DILocation(line: 213, column: 6, scope: !7345)
!7398 = !DILocation(line: 214, column: 3, scope: !7395)
!7399 = !DILocation(line: 216, column: 23, scope: !7345)
!7400 = !DILocation(line: 216, column: 30, scope: !7345)
!7401 = !DILocation(line: 216, column: 2, scope: !7345)
!7402 = !DILocation(line: 217, column: 26, scope: !7345)
!7403 = !DILocation(line: 217, column: 33, scope: !7345)
!7404 = !DILocation(line: 217, column: 2, scope: !7345)
!7405 = !DILocation(line: 219, column: 2, scope: !7345)
!7406 = !DILocation(line: 219, column: 9, scope: !7345)
!7407 = !DILocation(line: 219, column: 14, scope: !7345)
!7408 = !DILocation(line: 220, column: 2, scope: !7345)
!7409 = !DILocation(line: 220, column: 9, scope: !7345)
!7410 = !DILocation(line: 220, column: 20, scope: !7345)
!7411 = !DILocation(line: 220, column: 26, scope: !7345)
!7412 = !DILocation(line: 223, column: 2, scope: !7345)
!7413 = !DILocation(line: 223, column: 9, scope: !7345)
!7414 = !DILocation(line: 223, column: 16, scope: !7345)
!7415 = !DILocation(line: 224, column: 2, scope: !7345)
!7416 = !DILocation(line: 224, column: 9, scope: !7345)
!7417 = !DILocation(line: 224, column: 16, scope: !7345)
!7418 = !DILocation(line: 226, column: 9, scope: !7345)
!7419 = !DILocation(line: 226, column: 2, scope: !7345)
!7420 = !DILocation(line: 228, column: 1, scope: !7345)
!7421 = !DILocation(line: 229, column: 7, scope: !7345)
!7422 = !DILocation(line: 229, column: 2, scope: !7345)
!7423 = !DILocation(line: 230, column: 9, scope: !7345)
!7424 = !DILocation(line: 230, column: 2, scope: !7345)
!7425 = !DILocation(line: 231, column: 1, scope: !7345)
!7426 = distinct !DISubprogram(name: "IS_ERR", scope: !7427, file: !7427, line: 59, type: !7428, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7430)
!7427 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!7428 = !DISubroutineType(types: !7429)
!7429 = !{!1356, !1285}
!7430 = !{!7431}
!7431 = !DILocalVariable(name: "ptr", arg: 1, scope: !7426, file: !7427, line: 59, type: !1285)
!7432 = !DILocation(line: 59, column: 60, scope: !7426)
!7433 = !DILocation(line: 61, column: 9, scope: !7426)
!7434 = !DILocation(line: 61, column: 2, scope: !7426)
!7435 = distinct !DISubprogram(name: "PTR_ERR", scope: !7427, file: !7427, line: 49, type: !7436, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7438)
!7436 = !DISubroutineType(types: !7437)
!7437 = !{!473, !1285}
!7438 = !{!7439}
!7439 = !DILocalVariable(name: "ptr", arg: 1, scope: !7435, file: !7427, line: 49, type: !1285)
!7440 = !DILocation(line: 49, column: 61, scope: !7435)
!7441 = !DILocation(line: 51, column: 16, scope: !7435)
!7442 = !DILocation(line: 51, column: 9, scope: !7435)
!7443 = !DILocation(line: 51, column: 2, scope: !7435)
!7444 = distinct !DISubprogram(name: "atomic_inc", scope: !6422, file: !6422, line: 433, type: !7445, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7447)
!7445 = !DISubroutineType(types: !7446)
!7446 = !{null, !6859}
!7447 = !{!7448}
!7448 = !DILocalVariable(name: "v", arg: 1, scope: !7444, file: !6422, line: 433, type: !6859)
!7449 = !DILocation(line: 433, column: 22, scope: !7444)
!7450 = !DILocation(line: 435, column: 31, scope: !7444)
!7451 = !DILocation(line: 435, column: 2, scope: !7444)
!7452 = !DILocation(line: 436, column: 17, scope: !7444)
!7453 = !DILocation(line: 436, column: 2, scope: !7444)
!7454 = !DILocation(line: 437, column: 1, scope: !7444)
!7455 = !DISubprogram(name: "fd_install", scope: !7342, file: !7342, line: 97, type: !7456, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7456 = !DISubroutineType(types: !7457)
!7457 = !{null, !7, !728}
!7458 = !DISubprogram(name: "put_unused_fd", scope: !7342, file: !7342, line: 92, type: !7459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7459 = !DISubroutineType(types: !7460)
!7460 = !{null, !7}
!7461 = !DISubprogram(name: "strlen", scope: !7462, file: !7462, line: 128, type: !7463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7462 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!7463 = !DISubroutineType(types: !7464)
!7464 = !{!55, !32}
!7465 = !DISubprogram(name: "alloc_anon_inode", scope: !288, file: !288, line: 3170, type: !5064, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7466 = distinct !DISubprogram(name: "ERR_CAST", scope: !7427, file: !7427, line: 82, type: !7467, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7469)
!7467 = !DISubroutineType(types: !7468)
!7468 = !{!36, !1285}
!7469 = !{!7470}
!7470 = !DILocalVariable(name: "ptr", arg: 1, scope: !7466, file: !7427, line: 82, type: !1285)
!7471 = !DILocation(line: 82, column: 64, scope: !7466)
!7472 = !DILocation(line: 85, column: 18, scope: !7466)
!7473 = !DILocation(line: 85, column: 2, scope: !7466)
!7474 = !DISubprogram(name: "security_inode_init_security_anon", scope: !7475, file: !7475, line: 338, type: !7476, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7475 = !DIFile(filename: "./include/linux/security.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3374f455cef64217c954e3336d4198f")
!7476 = !DISubroutineType(types: !7477)
!7477 = !{!38, !512, !630, !5615}
!7478 = distinct !DISubprogram(name: "ERR_PTR", scope: !7427, file: !7427, line: 39, type: !7479, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7481)
!7479 = !DISubroutineType(types: !7480)
!7480 = !{!36, !473}
!7481 = !{!7482}
!7482 = !DILocalVariable(name: "error", arg: 1, scope: !7478, file: !7427, line: 39, type: !473)
!7483 = !DILocation(line: 39, column: 48, scope: !7478)
!7484 = !DILocation(line: 41, column: 18, scope: !7478)
!7485 = !DILocation(line: 41, column: 9, scope: !7478)
!7486 = !DILocation(line: 41, column: 2, scope: !7478)
!7487 = !DISubprogram(name: "alloc_file_pseudo", scope: !7342, file: !7342, line: 25, type: !7488, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7488 = !DISubroutineType(types: !7489)
!7489 = !{!728, !512, !657, !32, !38, !4744}
!7490 = distinct !DISubprogram(name: "mapping_set_gfp_mask", scope: !372, file: !372, line: 325, type: !7491, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7493)
!7491 = !DISubroutineType(types: !7492)
!7492 = !{null, !508, !849}
!7493 = !{!7494, !7495}
!7494 = !DILocalVariable(name: "m", arg: 1, scope: !7490, file: !372, line: 325, type: !508)
!7495 = !DILocalVariable(name: "mask", arg: 2, scope: !7490, file: !372, line: 325, type: !849)
!7496 = !DILocation(line: 325, column: 63, scope: !7490)
!7497 = !DILocation(line: 325, column: 72, scope: !7490)
!7498 = !DILocation(line: 327, column: 16, scope: !7490)
!7499 = !DILocation(line: 327, column: 2, scope: !7490)
!7500 = !DILocation(line: 327, column: 5, scope: !7490)
!7501 = !DILocation(line: 327, column: 14, scope: !7490)
!7502 = !DILocation(line: 328, column: 1, scope: !7490)
!7503 = distinct !DISubprogram(name: "mapping_set_unevictable", scope: !372, file: !372, line: 244, type: !6741, scopeLine: 245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7504)
!7504 = !{!7505}
!7505 = !DILocalVariable(name: "mapping", arg: 1, scope: !7503, file: !372, line: 244, type: !508)
!7506 = !DILocation(line: 244, column: 66, scope: !7503)
!7507 = !DILocation(line: 246, column: 27, scope: !7503)
!7508 = !DILocation(line: 246, column: 36, scope: !7503)
!7509 = !DILocation(line: 246, column: 2, scope: !7503)
!7510 = !DILocation(line: 247, column: 1, scope: !7503)
!7511 = !DISubprogram(name: "iput", scope: !288, file: !288, line: 2459, type: !5068, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7512 = distinct !DISubprogram(name: "secretmem_mmap", scope: !3, file: !3, line: 123, type: !4902, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7513)
!7513 = !{!7514, !7515, !7516}
!7514 = !DILocalVariable(name: "file", arg: 1, scope: !7512, file: !3, line: 123, type: !728)
!7515 = !DILocalVariable(name: "vma", arg: 2, scope: !7512, file: !3, line: 123, type: !1987)
!7516 = !DILocalVariable(name: "len", scope: !7512, file: !3, line: 125, type: !55)
!7517 = !DILocation(line: 123, column: 40, scope: !7512)
!7518 = !DILocation(line: 123, column: 69, scope: !7512)
!7519 = !DILocation(line: 125, column: 2, scope: !7512)
!7520 = !DILocation(line: 125, column: 16, scope: !7512)
!7521 = !DILocation(line: 125, column: 22, scope: !7512)
!7522 = !DILocation(line: 125, column: 27, scope: !7512)
!7523 = !DILocation(line: 125, column: 36, scope: !7512)
!7524 = !DILocation(line: 125, column: 41, scope: !7512)
!7525 = !DILocation(line: 125, column: 34, scope: !7512)
!7526 = !DILocation(line: 127, column: 7, scope: !7527)
!7527 = distinct !DILexicalBlock(scope: !7512, file: !3, line: 127, column: 6)
!7528 = !DILocation(line: 127, column: 12, scope: !7527)
!7529 = !DILocation(line: 127, column: 21, scope: !7527)
!7530 = !DILocation(line: 127, column: 50, scope: !7527)
!7531 = !DILocation(line: 127, column: 6, scope: !7512)
!7532 = !DILocation(line: 128, column: 3, scope: !7527)
!7533 = !DILocation(line: 130, column: 23, scope: !7534)
!7534 = distinct !DILexicalBlock(scope: !7512, file: !3, line: 130, column: 6)
!7535 = !DILocation(line: 130, column: 28, scope: !7534)
!7536 = !DILocation(line: 130, column: 35, scope: !7534)
!7537 = !DILocation(line: 130, column: 40, scope: !7534)
!7538 = !DILocation(line: 130, column: 49, scope: !7534)
!7539 = !DILocation(line: 130, column: 62, scope: !7534)
!7540 = !DILocation(line: 130, column: 7, scope: !7534)
!7541 = !DILocation(line: 130, column: 6, scope: !7512)
!7542 = !DILocation(line: 131, column: 3, scope: !7534)
!7543 = !DILocation(line: 133, column: 15, scope: !7512)
!7544 = !DILocation(line: 133, column: 2, scope: !7512)
!7545 = !DILocation(line: 134, column: 2, scope: !7512)
!7546 = !DILocation(line: 134, column: 7, scope: !7512)
!7547 = !DILocation(line: 134, column: 14, scope: !7512)
!7548 = !DILocation(line: 136, column: 2, scope: !7512)
!7549 = !DILocation(line: 137, column: 1, scope: !7512)
!7550 = distinct !DISubprogram(name: "secretmem_release", scope: !3, file: !3, line: 117, type: !4907, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7551)
!7551 = !{!7552, !7553}
!7552 = !DILocalVariable(name: "inode", arg: 1, scope: !7550, file: !3, line: 117, type: !512)
!7553 = !DILocalVariable(name: "file", arg: 2, scope: !7550, file: !3, line: 117, type: !728)
!7554 = !DILocation(line: 117, column: 44, scope: !7550)
!7555 = !DILocation(line: 117, column: 64, scope: !7550)
!7556 = !DILocation(line: 119, column: 2, scope: !7550)
!7557 = !DILocation(line: 120, column: 2, scope: !7550)
!7558 = !DISubprogram(name: "mlock_future_ok", scope: !2862, file: !2862, line: 656, type: !7559, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7559 = !DISubroutineType(types: !7560)
!7560 = !{!1356, !1151, !55, !55}
!7561 = distinct !DISubprogram(name: "vm_flags_set", scope: !1981, file: !1981, line: 844, type: !7562, scopeLine: 846, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7564)
!7562 = !DISubroutineType(types: !7563)
!7563 = !{null, !1987, !2011}
!7564 = !{!7565, !7566}
!7565 = !DILocalVariable(name: "vma", arg: 1, scope: !7561, file: !1981, line: 844, type: !1987)
!7566 = !DILocalVariable(name: "flags", arg: 2, scope: !7561, file: !1981, line: 845, type: !2011)
!7567 = !DILocation(line: 844, column: 56, scope: !7561)
!7568 = !DILocation(line: 845, column: 16, scope: !7561)
!7569 = !DILocation(line: 847, column: 18, scope: !7561)
!7570 = !DILocation(line: 847, column: 2, scope: !7561)
!7571 = !DILocation(line: 848, column: 37, scope: !7561)
!7572 = !DILocation(line: 848, column: 2, scope: !7561)
!7573 = !DILocation(line: 848, column: 34, scope: !7561)
!7574 = !DILocation(line: 849, column: 1, scope: !7561)
!7575 = distinct !DISubprogram(name: "vma_start_write", scope: !1981, file: !1981, line: 715, type: !1985, scopeLine: 716, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7576)
!7576 = !{!7577, !7578}
!7577 = !DILocalVariable(name: "vma", arg: 1, scope: !7575, file: !1981, line: 715, type: !1987)
!7578 = !DILocalVariable(name: "mm_lock_seq", scope: !7575, file: !1981, line: 717, type: !38)
!7579 = !DILocation(line: 715, column: 59, scope: !7575)
!7580 = !DILocation(line: 717, column: 2, scope: !7575)
!7581 = !DILocation(line: 717, column: 6, scope: !7575)
!7582 = !DILocation(line: 719, column: 28, scope: !7583)
!7583 = distinct !DILexicalBlock(scope: !7575, file: !1981, line: 719, column: 6)
!7584 = !DILocation(line: 719, column: 6, scope: !7583)
!7585 = !DILocation(line: 719, column: 6, scope: !7575)
!7586 = !DILocation(line: 720, column: 3, scope: !7583)
!7587 = !DILocation(line: 722, column: 14, scope: !7575)
!7588 = !DILocation(line: 722, column: 19, scope: !7575)
!7589 = !DILocation(line: 722, column: 28, scope: !7575)
!7590 = !DILocation(line: 722, column: 2, scope: !7575)
!7591 = !DILocation(line: 729, column: 2, scope: !7575)
!7592 = !DILocation(line: 729, column: 2, scope: !7593)
!7593 = distinct !DILexicalBlock(scope: !7575, file: !1981, line: 729, column: 2)
!7594 = !DILocation(line: 729, column: 2, scope: !7595)
!7595 = distinct !DILexicalBlock(scope: !7593, file: !1981, line: 729, column: 2)
!7596 = !DILocation(line: 729, column: 2, scope: !7597)
!7597 = distinct !DILexicalBlock(scope: !7593, file: !1981, line: 729, column: 2)
!7598 = !DILocation(line: 730, column: 12, scope: !7575)
!7599 = !DILocation(line: 730, column: 17, scope: !7575)
!7600 = !DILocation(line: 730, column: 26, scope: !7575)
!7601 = !DILocation(line: 730, column: 2, scope: !7575)
!7602 = !DILocation(line: 731, column: 1, scope: !7575)
!7603 = distinct !DISubprogram(name: "__is_vma_write_locked", scope: !1981, file: !1981, line: 698, type: !7604, scopeLine: 699, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7606)
!7604 = !DISubroutineType(types: !7605)
!7605 = !{!1356, !1987, !1690}
!7606 = !{!7607, !7608}
!7607 = !DILocalVariable(name: "vma", arg: 1, scope: !7603, file: !1981, line: 698, type: !1987)
!7608 = !DILocalVariable(name: "mm_lock_seq", arg: 2, scope: !7603, file: !1981, line: 698, type: !1690)
!7609 = !DILocation(line: 698, column: 58, scope: !7603)
!7610 = !DILocation(line: 698, column: 68, scope: !7603)
!7611 = !DILocation(line: 700, column: 27, scope: !7603)
!7612 = !DILocation(line: 700, column: 32, scope: !7603)
!7613 = !DILocation(line: 700, column: 2, scope: !7603)
!7614 = !DILocation(line: 706, column: 17, scope: !7603)
!7615 = !DILocation(line: 706, column: 22, scope: !7603)
!7616 = !DILocation(line: 706, column: 29, scope: !7603)
!7617 = !DILocation(line: 706, column: 3, scope: !7603)
!7618 = !DILocation(line: 706, column: 15, scope: !7603)
!7619 = !DILocation(line: 707, column: 10, scope: !7603)
!7620 = !DILocation(line: 707, column: 15, scope: !7603)
!7621 = !DILocation(line: 707, column: 31, scope: !7603)
!7622 = !DILocation(line: 707, column: 30, scope: !7603)
!7623 = !DILocation(line: 707, column: 27, scope: !7603)
!7624 = !DILocation(line: 707, column: 2, scope: !7603)
!7625 = !DISubprogram(name: "down_write", scope: !1207, file: !1207, line: 187, type: !6820, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7626 = !DISubprogram(name: "up_write", scope: !1207, file: !1207, line: 203, type: !6820, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7627 = distinct !DISubprogram(name: "mmap_assert_write_locked", scope: !7628, file: !7628, line: 69, type: !7629, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7631)
!7628 = !DIFile(filename: "./include/linux/mmap_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fd03efe98da879092694cad0501d32bc")
!7629 = !DISubroutineType(types: !7630)
!7630 = !{null, !1151}
!7631 = !{!7632}
!7632 = !DILocalVariable(name: "mm", arg: 1, scope: !7627, file: !7628, line: 69, type: !1151)
!7633 = !DILocation(line: 69, column: 63, scope: !7627)
!7634 = !DILocation(line: 71, column: 2, scope: !7627)
!7635 = !DILocation(line: 71, column: 2, scope: !7636)
!7636 = distinct !DILexicalBlock(scope: !7627, file: !7628, line: 71, column: 2)
!7637 = !DILocation(line: 73, column: 1, scope: !7627)
!7638 = distinct !DISubprogram(name: "atomic_dec", scope: !6422, file: !6422, line: 590, type: !7445, scopeLine: 591, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7639)
!7639 = !{!7640}
!7640 = !DILocalVariable(name: "v", arg: 1, scope: !7638, file: !6422, line: 590, type: !6859)
!7641 = !DILocation(line: 590, column: 22, scope: !7638)
!7642 = !DILocation(line: 592, column: 31, scope: !7638)
!7643 = !DILocation(line: 592, column: 2, scope: !7638)
!7644 = !DILocation(line: 593, column: 17, scope: !7638)
!7645 = !DILocation(line: 593, column: 2, scope: !7638)
!7646 = !DILocation(line: 594, column: 1, scope: !7638)
!7647 = distinct !DISubprogram(name: "raw_atomic_dec", scope: !6531, file: !6531, line: 1194, type: !7445, scopeLine: 1195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7648)
!7648 = !{!7649}
!7649 = !DILocalVariable(name: "v", arg: 1, scope: !7647, file: !6531, line: 1194, type: !6859)
!7650 = !DILocation(line: 1194, column: 26, scope: !7647)
!7651 = !DILocation(line: 1197, column: 18, scope: !7647)
!7652 = !DILocation(line: 1197, column: 2, scope: !7647)
!7653 = !DILocation(line: 1201, column: 1, scope: !7647)
!7654 = distinct !DISubprogram(name: "arch_atomic_dec", scope: !6561, file: !6561, line: 58, type: !7445, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7655)
!7655 = !{!7656}
!7656 = !DILocalVariable(name: "v", arg: 1, scope: !7654, file: !6561, line: 58, type: !6859)
!7657 = !DILocation(line: 58, column: 55, scope: !7654)
!7658 = !DILocation(line: 61, column: 16, scope: !7654)
!7659 = !DILocation(line: 61, column: 19, scope: !7654)
!7660 = !DILocation(line: 60, column: 2, scope: !7654)
!7661 = !{i64 2149028130, i64 2149028169, i64 2149028190, i64 2149028227, i64 2149028250, i64 2149028120}
!7662 = !DILocation(line: 62, column: 1, scope: !7654)
!7663 = distinct !DISubprogram(name: "set_bit", scope: !7664, file: !7664, line: 26, type: !7665, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7667)
!7664 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!7665 = !DISubroutineType(types: !7666)
!7666 = !{null, !473, !6910}
!7667 = !{!7668, !7669}
!7668 = !DILocalVariable(name: "nr", arg: 1, scope: !7663, file: !7664, line: 26, type: !473)
!7669 = !DILocalVariable(name: "addr", arg: 2, scope: !7663, file: !7664, line: 26, type: !6910)
!7670 = !DILocation(line: 26, column: 42, scope: !7663)
!7671 = !DILocation(line: 26, column: 70, scope: !7663)
!7672 = !DILocation(line: 28, column: 26, scope: !7663)
!7673 = !DILocation(line: 28, column: 33, scope: !7663)
!7674 = !DILocation(line: 28, column: 31, scope: !7663)
!7675 = !DILocation(line: 28, column: 2, scope: !7663)
!7676 = !DILocation(line: 29, column: 15, scope: !7663)
!7677 = !DILocation(line: 29, column: 19, scope: !7663)
!7678 = !DILocation(line: 29, column: 2, scope: !7663)
!7679 = !DILocation(line: 30, column: 1, scope: !7663)
!7680 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !6514, file: !6514, line: 80, type: !6515, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7681)
!7681 = !{!7682, !7683}
!7682 = !DILocalVariable(name: "v", arg: 1, scope: !7680, file: !6514, line: 80, type: !6517)
!7683 = !DILocalVariable(name: "size", arg: 2, scope: !7680, file: !6514, line: 80, type: !51)
!7684 = !DILocation(line: 80, column: 74, scope: !7680)
!7685 = !DILocation(line: 80, column: 84, scope: !7680)
!7686 = !DILocation(line: 82, column: 20, scope: !7680)
!7687 = !DILocation(line: 82, column: 23, scope: !7680)
!7688 = !DILocation(line: 82, column: 2, scope: !7680)
!7689 = !DILocation(line: 83, column: 2, scope: !7680)
!7690 = !DILocation(line: 84, column: 1, scope: !7680)
!7691 = distinct !DISubprogram(name: "arch_set_bit", scope: !6955, file: !6955, line: 52, type: !7665, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7692)
!7692 = !{!7693, !7694}
!7693 = !DILocalVariable(name: "nr", arg: 1, scope: !7691, file: !6955, line: 52, type: !473)
!7694 = !DILocalVariable(name: "addr", arg: 2, scope: !7691, file: !6955, line: 52, type: !6910)
!7695 = !DILocation(line: 52, column: 19, scope: !7691)
!7696 = !DILocation(line: 52, column: 47, scope: !7691)
!7697 = !DILocation(line: 54, column: 27, scope: !7698)
!7698 = distinct !DILexicalBlock(scope: !7691, file: !6955, line: 54, column: 6)
!7699 = !DILocation(line: 54, column: 6, scope: !7698)
!7700 = !DILocation(line: 54, column: 6, scope: !7691)
!7701 = !DILocation(line: 56, column: 6, scope: !7702)
!7702 = distinct !DILexicalBlock(scope: !7698, file: !6955, line: 54, column: 32)
!7703 = !DILocation(line: 57, column: 12, scope: !7702)
!7704 = !DILocation(line: 55, column: 3, scope: !7702)
!7705 = !{i64 2148294567, i64 2148294606, i64 2148294627, i64 2148294664, i64 2148294687, i64 2148294557}
!7706 = !DILocation(line: 59, column: 2, scope: !7702)
!7707 = !DILocation(line: 61, column: 8, scope: !7708)
!7708 = distinct !DILexicalBlock(scope: !7698, file: !6955, line: 59, column: 9)
!7709 = !DILocation(line: 61, column: 32, scope: !7708)
!7710 = !DILocation(line: 60, column: 3, scope: !7708)
!7711 = !{i64 2148294852, i64 2148294891, i64 2148294912, i64 2148294949, i64 2148294972, i64 2148294842}
!7712 = !DILocation(line: 63, column: 1, scope: !7691)
!7713 = distinct !DISubprogram(name: "secretmem_setattr", scope: !3, file: !3, line: 167, type: !5686, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7714)
!7714 = !{!7715, !7716, !7717, !7718, !7719, !7720, !7721}
!7715 = !DILocalVariable(name: "idmap", arg: 1, scope: !7713, file: !3, line: 167, type: !5604)
!7716 = !DILocalVariable(name: "dentry", arg: 2, scope: !7713, file: !3, line: 168, type: !547)
!7717 = !DILocalVariable(name: "iattr", arg: 3, scope: !7713, file: !3, line: 168, type: !5688)
!7718 = !DILocalVariable(name: "inode", scope: !7713, file: !3, line: 170, type: !512)
!7719 = !DILocalVariable(name: "mapping", scope: !7713, file: !3, line: 171, type: !508)
!7720 = !DILocalVariable(name: "ia_valid", scope: !7713, file: !3, line: 172, type: !7)
!7721 = !DILocalVariable(name: "ret", scope: !7713, file: !3, line: 173, type: !38)
!7722 = !DILocation(line: 167, column: 48, scope: !7713)
!7723 = !DILocation(line: 168, column: 24, scope: !7713)
!7724 = !DILocation(line: 168, column: 46, scope: !7713)
!7725 = !DILocation(line: 170, column: 2, scope: !7713)
!7726 = !DILocation(line: 170, column: 16, scope: !7713)
!7727 = !DILocation(line: 170, column: 32, scope: !7713)
!7728 = !DILocation(line: 170, column: 24, scope: !7713)
!7729 = !DILocation(line: 171, column: 2, scope: !7713)
!7730 = !DILocation(line: 171, column: 24, scope: !7713)
!7731 = !DILocation(line: 171, column: 34, scope: !7713)
!7732 = !DILocation(line: 171, column: 41, scope: !7713)
!7733 = !DILocation(line: 172, column: 2, scope: !7713)
!7734 = !DILocation(line: 172, column: 15, scope: !7713)
!7735 = !DILocation(line: 172, column: 26, scope: !7713)
!7736 = !DILocation(line: 172, column: 33, scope: !7713)
!7737 = !DILocation(line: 173, column: 2, scope: !7713)
!7738 = !DILocation(line: 173, column: 6, scope: !7713)
!7739 = !DILocation(line: 175, column: 26, scope: !7713)
!7740 = !DILocation(line: 175, column: 2, scope: !7713)
!7741 = !DILocation(line: 177, column: 7, scope: !7742)
!7742 = distinct !DILexicalBlock(scope: !7713, file: !3, line: 177, column: 6)
!7743 = !DILocation(line: 177, column: 16, scope: !7742)
!7744 = !DILocation(line: 177, column: 29, scope: !7742)
!7745 = !DILocation(line: 177, column: 32, scope: !7742)
!7746 = !DILocation(line: 177, column: 39, scope: !7742)
!7747 = !DILocation(line: 177, column: 6, scope: !7713)
!7748 = !DILocation(line: 178, column: 7, scope: !7742)
!7749 = !DILocation(line: 178, column: 3, scope: !7742)
!7750 = !DILocation(line: 180, column: 24, scope: !7742)
!7751 = !DILocation(line: 180, column: 31, scope: !7742)
!7752 = !DILocation(line: 180, column: 39, scope: !7742)
!7753 = !DILocation(line: 180, column: 9, scope: !7742)
!7754 = !DILocation(line: 180, column: 7, scope: !7742)
!7755 = !DILocation(line: 182, column: 28, scope: !7713)
!7756 = !DILocation(line: 182, column: 2, scope: !7713)
!7757 = !DILocation(line: 184, column: 9, scope: !7713)
!7758 = !DILocation(line: 185, column: 1, scope: !7713)
!7759 = !DILocation(line: 184, column: 2, scope: !7713)
!7760 = distinct !DISubprogram(name: "d_inode", scope: !549, file: !549, line: 514, type: !7761, scopeLine: 515, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7763)
!7761 = !DISubroutineType(types: !7762)
!7762 = !{!512, !623}
!7763 = !{!7764}
!7764 = !DILocalVariable(name: "dentry", arg: 1, scope: !7760, file: !549, line: 514, type: !623)
!7765 = !DILocation(line: 514, column: 58, scope: !7760)
!7766 = !DILocation(line: 516, column: 9, scope: !7760)
!7767 = !DILocation(line: 516, column: 17, scope: !7760)
!7768 = !DILocation(line: 516, column: 2, scope: !7760)
!7769 = distinct !DISubprogram(name: "filemap_invalidate_lock", scope: !288, file: !288, line: 847, type: !6741, scopeLine: 848, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7770)
!7770 = !{!7771}
!7771 = !DILocalVariable(name: "mapping", arg: 1, scope: !7769, file: !288, line: 847, type: !508)
!7772 = !DILocation(line: 847, column: 66, scope: !7769)
!7773 = !DILocation(line: 849, column: 14, scope: !7769)
!7774 = !DILocation(line: 849, column: 23, scope: !7769)
!7775 = !DILocation(line: 849, column: 2, scope: !7769)
!7776 = !DILocation(line: 850, column: 1, scope: !7769)
!7777 = !DISubprogram(name: "simple_setattr", scope: !288, file: !288, line: 3144, type: !5686, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7778 = distinct !DISubprogram(name: "filemap_invalidate_unlock", scope: !288, file: !288, line: 852, type: !6741, scopeLine: 853, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7779)
!7779 = !{!7780}
!7780 = !DILocalVariable(name: "mapping", arg: 1, scope: !7778, file: !288, line: 852, type: !508)
!7781 = !DILocation(line: 852, column: 68, scope: !7778)
!7782 = !DILocation(line: 854, column: 12, scope: !7778)
!7783 = !DILocation(line: 854, column: 21, scope: !7778)
!7784 = !DILocation(line: 854, column: 2, scope: !7778)
!7785 = !DILocation(line: 855, column: 1, scope: !7778)
!7786 = distinct !DISubprogram(name: "raw_atomic_inc", scope: !6531, file: !6531, line: 976, type: !7445, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7787)
!7787 = !{!7788}
!7788 = !DILocalVariable(name: "v", arg: 1, scope: !7786, file: !6531, line: 976, type: !6859)
!7789 = !DILocation(line: 976, column: 26, scope: !7786)
!7790 = !DILocation(line: 979, column: 18, scope: !7786)
!7791 = !DILocation(line: 979, column: 2, scope: !7786)
!7792 = !DILocation(line: 983, column: 1, scope: !7786)
!7793 = distinct !DISubprogram(name: "arch_atomic_inc", scope: !6561, file: !6561, line: 51, type: !7445, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7794)
!7794 = !{!7795}
!7795 = !DILocalVariable(name: "v", arg: 1, scope: !7793, file: !6561, line: 51, type: !6859)
!7796 = !DILocation(line: 51, column: 55, scope: !7793)
!7797 = !DILocation(line: 54, column: 16, scope: !7793)
!7798 = !DILocation(line: 54, column: 19, scope: !7793)
!7799 = !DILocation(line: 53, column: 2, scope: !7793)
!7800 = !{i64 2149027767, i64 2149027806, i64 2149027827, i64 2149027864, i64 2149027887, i64 2149027757}
!7801 = !DILocation(line: 55, column: 1, scope: !7793)
!7802 = !DISubprogram(name: "kern_mount", scope: !659, file: !659, line: 114, type: !7803, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7803 = !DISubroutineType(types: !7804)
!7804 = !{!657, !674}
!7805 = distinct !DISubprogram(name: "secretmem_init_fs_context", scope: !3, file: !3, line: 270, type: !681, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7806)
!7806 = !{!7807}
!7807 = !DILocalVariable(name: "fc", arg: 1, scope: !7805, file: !3, line: 270, type: !683)
!7808 = !DILocation(line: 270, column: 57, scope: !7805)
!7809 = !DILocation(line: 272, column: 21, scope: !7805)
!7810 = !DILocation(line: 272, column: 9, scope: !7805)
!7811 = !DILocation(line: 272, column: 2, scope: !7805)
!7812 = !DISubprogram(name: "init_pseudo", scope: !7813, file: !7813, line: 13, type: !7814, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7813 = !DIFile(filename: "./include/linux/pseudo_fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c345ce15a841e4436325696e058fb159")
!7814 = !DISubroutineType(types: !7815)
!7815 = !{!7816, !683, !55}
!7816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7817, size: 64)
!7817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pseudo_fs_context", file: !7813, line: 6, size: 256, elements: !7818)
!7818 = !{!7819, !7820, !7821, !7822}
!7819 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !7817, file: !7813, line: 7, baseType: !5058, size: 64)
!7820 = !DIDerivedType(tag: DW_TAG_member, name: "xattr", scope: !7817, file: !7813, line: 8, baseType: !5347, size: 64, offset: 64)
!7821 = !DIDerivedType(tag: DW_TAG_member, name: "dops", scope: !7817, file: !7813, line: 9, baseType: !610, size: 64, offset: 128)
!7822 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !7817, file: !7813, line: 10, baseType: !55, size: 64, offset: 192)
