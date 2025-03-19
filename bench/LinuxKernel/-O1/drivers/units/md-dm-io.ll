; ModuleID = 'drivers/md/dm-io.c'
source_filename = "drivers/md/dm-io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dm_io_client_create: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad dm_io_client_create ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dm_io_client_destroy: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad dm_io_client_destroy ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dm_io: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad dm_io ; .previous"

%struct.lock_class_key = type {}
%struct.dm_io_client = type { %struct.mempool_s, %struct.bio_set }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.bio_list = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.hlist_node = type { ptr, ptr }
%struct.dpages = type { ptr, ptr, %union.anon.13, ptr, ptr, i64 }
%union.anon.13 = type { i32, [16 x i8] }
%struct.dm_io_region = type { ptr, i64, i64 }
%struct.dm_io_request = type { i32, %struct.dm_io_memory, %struct.dm_io_notify, ptr }
%struct.dm_io_memory = type { i32, i32, %union.anon.14 }
%union.anon.14 = type { ptr }
%struct.dm_io_notify = type { ptr, ptr }
%struct.sync_io = type { i64, %struct.completion }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.io = type { i64, %struct.atomic_t, ptr, ptr, ptr, ptr, i64, [8 x i8] }
%struct.bio = type { ptr, ptr, i32, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, %union.anon.15, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.15 = type {}
%struct.bio_vec = type { ptr, i32, i32 }
%struct.page_list = type { ptr, ptr }
%struct.page = type { i64, %union.anon.16, %union.anon.25, %struct.atomic_t, [8 x i8] }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { %union.anon.18, ptr, %union.anon.20, i64 }
%union.anon.18 = type { %struct.list_head }
%union.anon.20 = type { i64 }
%union.anon.25 = type { %struct.atomic_t }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, %struct.mutex, ptr, ptr, i32, %struct.xarray, i32, ptr, i64, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.refcount_struct, ptr, ptr, i32, i64, i32, i32, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i64], ptr, %struct.list_head, %struct.mutex, %struct.queue_limits, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, ptr, ptr, ptr, %struct.mutex, i8 }
%struct.percpu_ref = type { i64, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.queue_limits = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.block_device = type { i64, i64, ptr, ptr, ptr, i64, i8, i8, i8, i8, i32, %struct.atomic_t, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.mutex, i32, i32, ptr, %struct.mutex, ptr, ptr, i8, %struct.device }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}

@_dm_io_cache = internal global ptr null, align 8, !dbg !0
@__UNIQUE_ID___addressable_dm_io_client_create524 = internal global ptr @dm_io_client_create, section ".discard.addressable", align 8, !dbg !5597
@__UNIQUE_ID___addressable_dm_io_client_destroy525 = internal global ptr @dm_io_client_destroy, section ".discard.addressable", align 8, !dbg !5599
@__UNIQUE_ID___addressable_dm_io534 = internal global ptr @dm_io, section ".discard.addressable", align 8, !dbg !5601
@.str = private unnamed_addr constant [3 x i8] c"io\00", align 1, !dbg !5603
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !5606
@bvec_iter_advance.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !5611
@.str.2 = private unnamed_addr constant [44 x i8] c"Attempted to advance past end of bvec iter\0A\00", align 1, !dbg !5635
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/bvec.h\00", align 1, !dbg !5640
@vmemmap_base = external dso_local global i64, align 8
@phys_base = external dso_local global i64, align 8
@page_offset_base = external dso_local global i64, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"drivers/md/dm-io.c\00", align 1, !dbg !5642
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !5647
@.str.5 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1, !dbg !5654
@.str.6 = private unnamed_addr constant [53 x i8] c"\012device-mapper: io: Unaligned struct io pointer %p\0A\00", align 1, !dbg !5659
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID___addressable_dm_io_client_create524, ptr @__UNIQUE_ID___addressable_dm_io_client_destroy525, ptr @__UNIQUE_ID___addressable_dm_io534], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @dm_io_client_create() #0 align 16 !dbg !5673 {
entry:
  %retval = alloca ptr, align 8
  %client = alloca ptr, align 8
  %min_ios = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %client) #17, !dbg !5686
  call void @llvm.dbg.declare(metadata ptr %client, metadata !5682, metadata !DIExpression()), !dbg !5687
  call void @llvm.lifetime.start.p0(i64 4, ptr %min_ios) #17, !dbg !5688
  call void @llvm.dbg.declare(metadata ptr %min_ios, metadata !5683, metadata !DIExpression()), !dbg !5689
  %call = call i32 @dm_get_reserved_bio_based_ios() #18, !dbg !5690
  store i32 %call, ptr %min_ios, align 4, !dbg !5689
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !5691
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5684, metadata !DIExpression()), !dbg !5692
  %call1 = call noalias ptr @kzalloc(i64 noundef 320, i32 noundef 3264) #19, !dbg !5693
  store ptr %call1, ptr %client, align 8, !dbg !5694
  %0 = load ptr, ptr %client, align 8, !dbg !5695
  %tobool = icmp ne ptr %0, null, !dbg !5695
  br i1 %tobool, label %if.end, label %if.then, !dbg !5697

if.then:                                          ; preds = %entry
  %call2 = call ptr @ERR_PTR(i64 noundef -12) #18, !dbg !5698
  store ptr %call2, ptr %retval, align 8, !dbg !5699
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5699

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %client, align 8, !dbg !5700
  %pool = getelementptr inbounds %struct.dm_io_client, ptr %1, i32 0, i32 0, !dbg !5701
  %2 = load i32, ptr %min_ios, align 4, !dbg !5702
  %3 = load ptr, ptr @_dm_io_cache, align 8, !dbg !5703
  %call3 = call i32 @mempool_init_slab_pool(ptr noundef %pool, i32 noundef %2, ptr noundef %3) #18, !dbg !5704
  store i32 %call3, ptr %ret, align 4, !dbg !5705
  %4 = load i32, ptr %ret, align 4, !dbg !5706
  %tobool4 = icmp ne i32 %4, 0, !dbg !5706
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !5708

if.then5:                                         ; preds = %if.end
  br label %bad, !dbg !5709

if.end6:                                          ; preds = %if.end
  %5 = load ptr, ptr %client, align 8, !dbg !5710
  %bios = getelementptr inbounds %struct.dm_io_client, ptr %5, i32 0, i32 1, !dbg !5711
  %6 = load i32, ptr %min_ios, align 4, !dbg !5712
  %call7 = call i32 @bioset_init(ptr noundef %bios, i32 noundef %6, i32 noundef 0, i32 noundef 1) #18, !dbg !5713
  store i32 %call7, ptr %ret, align 4, !dbg !5714
  %7 = load i32, ptr %ret, align 4, !dbg !5715
  %tobool8 = icmp ne i32 %7, 0, !dbg !5715
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !5717

if.then9:                                         ; preds = %if.end6
  br label %bad, !dbg !5718

if.end10:                                         ; preds = %if.end6
  %8 = load ptr, ptr %client, align 8, !dbg !5719
  store ptr %8, ptr %retval, align 8, !dbg !5720
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5720

bad:                                              ; preds = %if.then9, %if.then5
  call void @llvm.dbg.label(metadata !5685), !dbg !5721
  %9 = load ptr, ptr %client, align 8, !dbg !5722
  %pool11 = getelementptr inbounds %struct.dm_io_client, ptr %9, i32 0, i32 0, !dbg !5723
  call void @mempool_exit(ptr noundef %pool11) #18, !dbg !5724
  %10 = load ptr, ptr %client, align 8, !dbg !5725
  call void @kfree(ptr noundef %10) #18, !dbg !5726
  %11 = load i32, ptr %ret, align 4, !dbg !5727
  %conv = sext i32 %11 to i64, !dbg !5727
  %call12 = call ptr @ERR_PTR(i64 noundef %conv) #18, !dbg !5728
  store ptr %call12, ptr %retval, align 8, !dbg !5729
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5729

cleanup:                                          ; preds = %bad, %if.end10, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !5730
  call void @llvm.lifetime.end.p0(i64 4, ptr %min_ios) #17, !dbg !5730
  call void @llvm.lifetime.end.p0(i64 8, ptr %client) #17, !dbg !5730
  %12 = load ptr, ptr %retval, align 8, !dbg !5730
  ret ptr %12, !dbg !5730
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5731 dso_local i32 @dm_get_reserved_bio_based_ios() #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #4 align 16 !dbg !5735 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5739, metadata !DIExpression()), !dbg !5741
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5740, metadata !DIExpression()), !dbg !5742
  %0 = load i64, ptr %size.addr, align 8, !dbg !5743
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5744
  %or = or i32 %1, 256, !dbg !5745
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #19, !dbg !5746
  ret ptr %call, !dbg !5747
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #5 align 16 !dbg !5748 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !5753, metadata !DIExpression()), !dbg !5754
  %0 = load i64, ptr %error.addr, align 8, !dbg !5755
  %1 = inttoptr i64 %0 to ptr, !dbg !5756
  ret ptr %1, !dbg !5757
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @mempool_init_slab_pool(ptr noundef %pool, i32 noundef %min_nr, ptr noundef %kc) #5 align 16 !dbg !5758 {
entry:
  %pool.addr = alloca ptr, align 8
  %min_nr.addr = alloca i32, align 4
  %kc.addr = alloca ptr, align 8
  store ptr %pool, ptr %pool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !5763, metadata !DIExpression()), !dbg !5766
  store i32 %min_nr, ptr %min_nr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %min_nr.addr, metadata !5764, metadata !DIExpression()), !dbg !5767
  store ptr %kc, ptr %kc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kc.addr, metadata !5765, metadata !DIExpression()), !dbg !5768
  %0 = load ptr, ptr %pool.addr, align 8, !dbg !5769
  %1 = load i32, ptr %min_nr.addr, align 4, !dbg !5770
  %2 = load ptr, ptr %kc.addr, align 8, !dbg !5771
  %call = call i32 @mempool_init(ptr noundef %0, i32 noundef %1, ptr noundef @mempool_alloc_slab, ptr noundef @mempool_free_slab, ptr noundef %2) #18, !dbg !5772
  ret i32 %call, !dbg !5773
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5774 dso_local i32 @bioset_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5777 dso_local void @mempool_exit(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5780 dso_local void @kfree(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @dm_io_client_destroy(ptr noundef %client) #0 align 16 !dbg !5783 {
entry:
  %client.addr = alloca ptr, align 8
  store ptr %client, ptr %client.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %client.addr, metadata !5787, metadata !DIExpression()), !dbg !5788
  %0 = load ptr, ptr %client.addr, align 8, !dbg !5789
  %pool = getelementptr inbounds %struct.dm_io_client, ptr %0, i32 0, i32 0, !dbg !5790
  call void @mempool_exit(ptr noundef %pool) #18, !dbg !5791
  %1 = load ptr, ptr %client.addr, align 8, !dbg !5792
  %bios = getelementptr inbounds %struct.dm_io_client, ptr %1, i32 0, i32 1, !dbg !5793
  call void @bioset_exit(ptr noundef %bios) #18, !dbg !5794
  %2 = load ptr, ptr %client.addr, align 8, !dbg !5795
  call void @kfree(ptr noundef %2) #18, !dbg !5796
  ret void, !dbg !5797
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5798 dso_local void @bioset_exit(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @dm_io(ptr noundef %io_req, i32 noundef %num_regions, ptr noundef %where, ptr noundef %sync_error_bits, i16 noundef zeroext %ioprio) #0 align 16 !dbg !5801 {
entry:
  %retval = alloca i32, align 4
  %io_req.addr = alloca ptr, align 8
  %num_regions.addr = alloca i32, align 4
  %where.addr = alloca ptr, align 8
  %sync_error_bits.addr = alloca ptr, align 8
  %ioprio.addr = alloca i16, align 2
  %r = alloca i32, align 4
  %dp = alloca %struct.dpages, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %io_req, ptr %io_req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %io_req.addr, metadata !5842, metadata !DIExpression()), !dbg !5868
  store i32 %num_regions, ptr %num_regions.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num_regions.addr, metadata !5843, metadata !DIExpression()), !dbg !5869
  store ptr %where, ptr %where.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %where.addr, metadata !5844, metadata !DIExpression()), !dbg !5870
  store ptr %sync_error_bits, ptr %sync_error_bits.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sync_error_bits.addr, metadata !5845, metadata !DIExpression()), !dbg !5871
  store i16 %ioprio, ptr %ioprio.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %ioprio.addr, metadata !5846, metadata !DIExpression()), !dbg !5872
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #17, !dbg !5873
  call void @llvm.dbg.declare(metadata ptr %r, metadata !5847, metadata !DIExpression()), !dbg !5874
  call void @llvm.lifetime.start.p0(i64 64, ptr %dp) #17, !dbg !5875
  call void @llvm.dbg.declare(metadata ptr %dp, metadata !5848, metadata !DIExpression()), !dbg !5876
  %0 = load ptr, ptr %io_req.addr, align 8, !dbg !5877
  %1 = load ptr, ptr %where.addr, align 8, !dbg !5878
  %count = getelementptr inbounds %struct.dm_io_region, ptr %1, i32 0, i32 2, !dbg !5879
  %2 = load i64, ptr %count, align 8, !dbg !5879
  %shl = shl i64 %2, 9, !dbg !5880
  %call = call i32 @dp_init(ptr noundef %0, ptr noundef %dp, i64 noundef %shl) #18, !dbg !5881
  store i32 %call, ptr %r, align 4, !dbg !5882
  %3 = load i32, ptr %r, align 4, !dbg !5883
  %tobool = icmp ne i32 %3, 0, !dbg !5883
  br i1 %tobool, label %if.then, label %if.end, !dbg !5885

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %r, align 4, !dbg !5886
  store i32 %4, ptr %retval, align 4, !dbg !5887
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5887

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %io_req.addr, align 8, !dbg !5888
  %notify = getelementptr inbounds %struct.dm_io_request, ptr %5, i32 0, i32 2, !dbg !5890
  %fn = getelementptr inbounds %struct.dm_io_notify, ptr %notify, i32 0, i32 0, !dbg !5891
  %6 = load ptr, ptr %fn, align 8, !dbg !5891
  %tobool1 = icmp ne ptr %6, null, !dbg !5888
  br i1 %tobool1, label %if.end4, label %if.then2, !dbg !5892

if.then2:                                         ; preds = %if.end
  %7 = load ptr, ptr %io_req.addr, align 8, !dbg !5893
  %client = getelementptr inbounds %struct.dm_io_request, ptr %7, i32 0, i32 3, !dbg !5894
  %8 = load ptr, ptr %client, align 8, !dbg !5894
  %9 = load i32, ptr %num_regions.addr, align 4, !dbg !5895
  %10 = load ptr, ptr %where.addr, align 8, !dbg !5896
  %11 = load ptr, ptr %io_req.addr, align 8, !dbg !5897
  %bi_opf = getelementptr inbounds %struct.dm_io_request, ptr %11, i32 0, i32 0, !dbg !5898
  %12 = load i32, ptr %bi_opf, align 8, !dbg !5898
  %13 = load ptr, ptr %sync_error_bits.addr, align 8, !dbg !5899
  %14 = load i16, ptr %ioprio.addr, align 2, !dbg !5900
  %call3 = call i32 @sync_io(ptr noundef %8, i32 noundef %9, ptr noundef %10, i32 noundef %12, ptr noundef %dp, ptr noundef %13, i16 noundef zeroext %14) #18, !dbg !5901
  store i32 %call3, ptr %retval, align 4, !dbg !5902
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5902

if.end4:                                          ; preds = %if.end
  %15 = load ptr, ptr %io_req.addr, align 8, !dbg !5903
  %client5 = getelementptr inbounds %struct.dm_io_request, ptr %15, i32 0, i32 3, !dbg !5904
  %16 = load ptr, ptr %client5, align 8, !dbg !5904
  %17 = load i32, ptr %num_regions.addr, align 4, !dbg !5905
  %18 = load ptr, ptr %where.addr, align 8, !dbg !5906
  %19 = load ptr, ptr %io_req.addr, align 8, !dbg !5907
  %bi_opf6 = getelementptr inbounds %struct.dm_io_request, ptr %19, i32 0, i32 0, !dbg !5908
  %20 = load i32, ptr %bi_opf6, align 8, !dbg !5908
  %21 = load ptr, ptr %io_req.addr, align 8, !dbg !5909
  %notify7 = getelementptr inbounds %struct.dm_io_request, ptr %21, i32 0, i32 2, !dbg !5910
  %fn8 = getelementptr inbounds %struct.dm_io_notify, ptr %notify7, i32 0, i32 0, !dbg !5911
  %22 = load ptr, ptr %fn8, align 8, !dbg !5911
  %23 = load ptr, ptr %io_req.addr, align 8, !dbg !5912
  %notify9 = getelementptr inbounds %struct.dm_io_request, ptr %23, i32 0, i32 2, !dbg !5913
  %context = getelementptr inbounds %struct.dm_io_notify, ptr %notify9, i32 0, i32 1, !dbg !5914
  %24 = load ptr, ptr %context, align 8, !dbg !5914
  %25 = load i16, ptr %ioprio.addr, align 2, !dbg !5915
  %call10 = call i32 @async_io(ptr noundef %16, i32 noundef %17, ptr noundef %18, i32 noundef %20, ptr noundef %dp, ptr noundef %22, ptr noundef %24, i16 noundef zeroext %25) #18, !dbg !5916
  store i32 %call10, ptr %retval, align 4, !dbg !5917
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5917

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 64, ptr %dp) #17, !dbg !5918
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #17, !dbg !5918
  %26 = load i32, ptr %retval, align 4, !dbg !5918
  ret i32 %26, !dbg !5918
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dp_init(ptr noundef %io_req, ptr noundef %dp, i64 noundef %size) #0 align 16 !dbg !5919 {
entry:
  %retval = alloca i32, align 4
  %io_req.addr = alloca ptr, align 8
  %dp.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %io_req, ptr %io_req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %io_req.addr, metadata !5923, metadata !DIExpression()), !dbg !5926
  store ptr %dp, ptr %dp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dp.addr, metadata !5924, metadata !DIExpression()), !dbg !5927
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5925, metadata !DIExpression()), !dbg !5928
  %0 = load ptr, ptr %dp.addr, align 8, !dbg !5929
  %vma_invalidate_address = getelementptr inbounds %struct.dpages, ptr %0, i32 0, i32 4, !dbg !5930
  store ptr null, ptr %vma_invalidate_address, align 8, !dbg !5931
  %1 = load ptr, ptr %dp.addr, align 8, !dbg !5932
  %vma_invalidate_size = getelementptr inbounds %struct.dpages, ptr %1, i32 0, i32 5, !dbg !5933
  store i64 0, ptr %vma_invalidate_size, align 8, !dbg !5934
  %2 = load ptr, ptr %io_req.addr, align 8, !dbg !5935
  %mem = getelementptr inbounds %struct.dm_io_request, ptr %2, i32 0, i32 1, !dbg !5936
  %type = getelementptr inbounds %struct.dm_io_memory, ptr %mem, i32 0, i32 0, !dbg !5937
  %3 = load i32, ptr %type, align 8, !dbg !5937
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb6
    i32 3, label %sw.bb16
  ], !dbg !5938

sw.bb:                                            ; preds = %entry
  %4 = load ptr, ptr %dp.addr, align 8, !dbg !5939
  %5 = load ptr, ptr %io_req.addr, align 8, !dbg !5941
  %mem1 = getelementptr inbounds %struct.dm_io_request, ptr %5, i32 0, i32 1, !dbg !5942
  %ptr = getelementptr inbounds %struct.dm_io_memory, ptr %mem1, i32 0, i32 2, !dbg !5943
  %6 = load ptr, ptr %ptr, align 8, !dbg !5944
  %7 = load ptr, ptr %io_req.addr, align 8, !dbg !5945
  %mem2 = getelementptr inbounds %struct.dm_io_request, ptr %7, i32 0, i32 1, !dbg !5946
  %offset = getelementptr inbounds %struct.dm_io_memory, ptr %mem2, i32 0, i32 1, !dbg !5947
  %8 = load i32, ptr %offset, align 4, !dbg !5947
  call void @list_dp_init(ptr noundef %4, ptr noundef %6, i32 noundef %8) #18, !dbg !5948
  br label %sw.epilog, !dbg !5949

sw.bb3:                                           ; preds = %entry
  %9 = load ptr, ptr %dp.addr, align 8, !dbg !5950
  %10 = load ptr, ptr %io_req.addr, align 8, !dbg !5951
  %mem4 = getelementptr inbounds %struct.dm_io_request, ptr %10, i32 0, i32 1, !dbg !5952
  %ptr5 = getelementptr inbounds %struct.dm_io_memory, ptr %mem4, i32 0, i32 2, !dbg !5953
  %11 = load ptr, ptr %ptr5, align 8, !dbg !5954
  call void @bio_dp_init(ptr noundef %9, ptr noundef %11) #18, !dbg !5955
  br label %sw.epilog, !dbg !5956

sw.bb6:                                           ; preds = %entry
  %12 = load ptr, ptr %io_req.addr, align 8, !dbg !5957
  %mem7 = getelementptr inbounds %struct.dm_io_request, ptr %12, i32 0, i32 1, !dbg !5958
  %ptr8 = getelementptr inbounds %struct.dm_io_memory, ptr %mem7, i32 0, i32 2, !dbg !5959
  %13 = load ptr, ptr %ptr8, align 8, !dbg !5960
  %14 = load i64, ptr %size.addr, align 8, !dbg !5961
  %conv = trunc i64 %14 to i32, !dbg !5961
  call void @flush_kernel_vmap_range(ptr noundef %13, i32 noundef %conv) #18, !dbg !5962
  %15 = load ptr, ptr %io_req.addr, align 8, !dbg !5963
  %bi_opf = getelementptr inbounds %struct.dm_io_request, ptr %15, i32 0, i32 0, !dbg !5965
  %16 = load i32, ptr %bi_opf, align 8, !dbg !5965
  %and = and i32 %16, 255, !dbg !5966
  %cmp = icmp eq i32 %and, 0, !dbg !5967
  br i1 %cmp, label %if.then, label %if.end, !dbg !5968

if.then:                                          ; preds = %sw.bb6
  %17 = load ptr, ptr %io_req.addr, align 8, !dbg !5969
  %mem10 = getelementptr inbounds %struct.dm_io_request, ptr %17, i32 0, i32 1, !dbg !5971
  %ptr11 = getelementptr inbounds %struct.dm_io_memory, ptr %mem10, i32 0, i32 2, !dbg !5972
  %18 = load ptr, ptr %ptr11, align 8, !dbg !5973
  %19 = load ptr, ptr %dp.addr, align 8, !dbg !5974
  %vma_invalidate_address12 = getelementptr inbounds %struct.dpages, ptr %19, i32 0, i32 4, !dbg !5975
  store ptr %18, ptr %vma_invalidate_address12, align 8, !dbg !5976
  %20 = load i64, ptr %size.addr, align 8, !dbg !5977
  %21 = load ptr, ptr %dp.addr, align 8, !dbg !5978
  %vma_invalidate_size13 = getelementptr inbounds %struct.dpages, ptr %21, i32 0, i32 5, !dbg !5979
  store i64 %20, ptr %vma_invalidate_size13, align 8, !dbg !5980
  br label %if.end, !dbg !5981

if.end:                                           ; preds = %if.then, %sw.bb6
  %22 = load ptr, ptr %dp.addr, align 8, !dbg !5982
  %23 = load ptr, ptr %io_req.addr, align 8, !dbg !5983
  %mem14 = getelementptr inbounds %struct.dm_io_request, ptr %23, i32 0, i32 1, !dbg !5984
  %ptr15 = getelementptr inbounds %struct.dm_io_memory, ptr %mem14, i32 0, i32 2, !dbg !5985
  %24 = load ptr, ptr %ptr15, align 8, !dbg !5986
  call void @vm_dp_init(ptr noundef %22, ptr noundef %24) #18, !dbg !5987
  br label %sw.epilog, !dbg !5988

sw.bb16:                                          ; preds = %entry
  %25 = load ptr, ptr %dp.addr, align 8, !dbg !5989
  %26 = load ptr, ptr %io_req.addr, align 8, !dbg !5990
  %mem17 = getelementptr inbounds %struct.dm_io_request, ptr %26, i32 0, i32 1, !dbg !5991
  %ptr18 = getelementptr inbounds %struct.dm_io_memory, ptr %mem17, i32 0, i32 2, !dbg !5992
  %27 = load ptr, ptr %ptr18, align 8, !dbg !5993
  call void @km_dp_init(ptr noundef %25, ptr noundef %27) #18, !dbg !5994
  br label %sw.epilog, !dbg !5995

sw.default:                                       ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !5996
  br label %return, !dbg !5996

sw.epilog:                                        ; preds = %sw.bb16, %if.end, %sw.bb3, %sw.bb
  store i32 0, ptr %retval, align 4, !dbg !5997
  br label %return, !dbg !5997

return:                                           ; preds = %sw.epilog, %sw.default
  %28 = load i32, ptr %retval, align 4, !dbg !5998
  ret i32 %28, !dbg !5998
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @sync_io(ptr noundef %client, i32 noundef %num_regions, ptr noundef %where, i32 noundef %opf, ptr noundef %dp, ptr noundef %error_bits, i16 noundef zeroext %ioprio) #0 align 16 !dbg !5999 {
entry:
  %retval = alloca i32, align 4
  %client.addr = alloca ptr, align 8
  %num_regions.addr = alloca i32, align 4
  %where.addr = alloca ptr, align 8
  %opf.addr = alloca i32, align 4
  %dp.addr = alloca ptr, align 8
  %error_bits.addr = alloca ptr, align 8
  %ioprio.addr = alloca i16, align 2
  %io = alloca ptr, align 8
  %sio = alloca %struct.sync_io, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %client, ptr %client.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %client.addr, metadata !6003, metadata !DIExpression()), !dbg !6033
  store i32 %num_regions, ptr %num_regions.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num_regions.addr, metadata !6004, metadata !DIExpression()), !dbg !6034
  store ptr %where, ptr %where.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %where.addr, metadata !6005, metadata !DIExpression()), !dbg !6035
  store i32 %opf, ptr %opf.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %opf.addr, metadata !6006, metadata !DIExpression()), !dbg !6036
  store ptr %dp, ptr %dp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dp.addr, metadata !6007, metadata !DIExpression()), !dbg !6037
  store ptr %error_bits, ptr %error_bits.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error_bits.addr, metadata !6008, metadata !DIExpression()), !dbg !6038
  store i16 %ioprio, ptr %ioprio.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %ioprio.addr, metadata !6009, metadata !DIExpression()), !dbg !6039
  call void @llvm.lifetime.start.p0(i64 8, ptr %io) #17, !dbg !6040
  call void @llvm.dbg.declare(metadata ptr %io, metadata !6010, metadata !DIExpression()), !dbg !6041
  call void @llvm.lifetime.start.p0(i64 40, ptr %sio) #17, !dbg !6042
  call void @llvm.dbg.declare(metadata ptr %sio, metadata !6021, metadata !DIExpression()), !dbg !6043
  %0 = load i32, ptr %num_regions.addr, align 4, !dbg !6044
  %cmp = icmp ugt i32 %0, 1, !dbg !6045
  br i1 %cmp, label %land.lhs.true, label %if.end20, !dbg !6046

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %opf.addr, align 4, !dbg !6047
  %call = call zeroext i1 @op_is_write(i32 noundef %1) #18, !dbg !6048
  br i1 %call, label %if.end20, label %if.then, !dbg !6049

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !6050
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6026, metadata !DIExpression()), !dbg !6050
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !6050
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !6051
  %tobool = icmp ne i32 %2, 0, !dbg !6051
  %lnot = xor i1 %tobool, true, !dbg !6051
  %lnot1 = xor i1 %lnot, true, !dbg !6051
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6051
  %conv = sext i32 %lnot.ext to i64, !dbg !6051
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6051
  %tobool2 = icmp ne i64 %expval, 0, !dbg !6051
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !6050

if.then3:                                         ; preds = %if.then
  br label %do.body, !dbg !6051

do.body:                                          ; preds = %if.then3
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #17, !dbg !6052
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6030, metadata !DIExpression()), !dbg !6052
  store i32 2305, ptr %__flags, align 4, !dbg !6052
  br label %do.body4, !dbg !6052

do.body4:                                         ; preds = %do.body
  br label %do.cond, !dbg !6053

do.cond:                                          ; preds = %do.body4
  br label %do.end, !dbg !6053

do.end:                                           ; preds = %do.cond
  br label %do.body5, !dbg !6052

do.body5:                                         ; preds = %do.end
  %3 = load i32, ptr %__flags, align 4, !dbg !6055
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, i32 435, i32 %3, i64 12) #17, !dbg !6055, !srcloc !6057
  br label %do.cond6, !dbg !6055

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !6055

do.end7:                                          ; preds = %do.cond6
  br label %do.body8, !dbg !6052

do.body8:                                         ; preds = %do.end7
  br label %do.cond9, !dbg !6058

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !6058

do.end10:                                         ; preds = %do.cond9
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #17, !dbg !6051
  br label %do.cond11, !dbg !6052

do.cond11:                                        ; preds = %do.end10
  br label %do.end12, !dbg !6052

do.end12:                                         ; preds = %do.cond11
  br label %if.end, !dbg !6052

if.end:                                           ; preds = %do.end12, %if.then
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !6050
  %tobool13 = icmp ne i32 %4, 0, !dbg !6050
  %lnot14 = xor i1 %tobool13, true, !dbg !6050
  %lnot16 = xor i1 %lnot14, true, !dbg !6050
  %lnot.ext17 = zext i1 %lnot16 to i32, !dbg !6050
  %conv18 = sext i32 %lnot.ext17 to i64, !dbg !6050
  %expval19 = call i64 @llvm.expect.i64(i64 %conv18, i64 0), !dbg !6050
  store i64 %expval19, ptr %tmp, align 8, !dbg !6051
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !6060
  %5 = load i64, ptr %tmp, align 8, !dbg !6050
  store i32 -5, ptr %retval, align 4, !dbg !6061
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6061

if.end20:                                         ; preds = %land.lhs.true, %entry
  %wait = getelementptr inbounds %struct.sync_io, ptr %sio, i32 0, i32 1, !dbg !6062
  call void @init_completion(ptr noundef %wait) #18, !dbg !6063
  %6 = load ptr, ptr %client.addr, align 8, !dbg !6064
  %pool = getelementptr inbounds %struct.dm_io_client, ptr %6, i32 0, i32 0, !dbg !6065
  %call21 = call noalias ptr @mempool_alloc(ptr noundef %pool, i32 noundef 3072) #18, !dbg !6066
  store ptr %call21, ptr %io, align 8, !dbg !6067
  %7 = load ptr, ptr %io, align 8, !dbg !6068
  %error_bits22 = getelementptr inbounds %struct.io, ptr %7, i32 0, i32 0, !dbg !6069
  store i64 0, ptr %error_bits22, align 64, !dbg !6070
  %8 = load ptr, ptr %io, align 8, !dbg !6071
  %count = getelementptr inbounds %struct.io, ptr %8, i32 0, i32 1, !dbg !6072
  call void @atomic_set(ptr noundef %count, i32 noundef 1) #18, !dbg !6073
  %9 = load ptr, ptr %client.addr, align 8, !dbg !6074
  %10 = load ptr, ptr %io, align 8, !dbg !6075
  %client23 = getelementptr inbounds %struct.io, ptr %10, i32 0, i32 2, !dbg !6076
  store ptr %9, ptr %client23, align 16, !dbg !6077
  %11 = load ptr, ptr %io, align 8, !dbg !6078
  %callback = getelementptr inbounds %struct.io, ptr %11, i32 0, i32 3, !dbg !6079
  store ptr @sync_io_complete, ptr %callback, align 8, !dbg !6080
  %12 = load ptr, ptr %io, align 8, !dbg !6081
  %context = getelementptr inbounds %struct.io, ptr %12, i32 0, i32 4, !dbg !6082
  store ptr %sio, ptr %context, align 32, !dbg !6083
  %13 = load ptr, ptr %dp.addr, align 8, !dbg !6084
  %vma_invalidate_address = getelementptr inbounds %struct.dpages, ptr %13, i32 0, i32 4, !dbg !6085
  %14 = load ptr, ptr %vma_invalidate_address, align 8, !dbg !6085
  %15 = load ptr, ptr %io, align 8, !dbg !6086
  %vma_invalidate_address24 = getelementptr inbounds %struct.io, ptr %15, i32 0, i32 5, !dbg !6087
  store ptr %14, ptr %vma_invalidate_address24, align 8, !dbg !6088
  %16 = load ptr, ptr %dp.addr, align 8, !dbg !6089
  %vma_invalidate_size = getelementptr inbounds %struct.dpages, ptr %16, i32 0, i32 5, !dbg !6090
  %17 = load i64, ptr %vma_invalidate_size, align 8, !dbg !6090
  %18 = load ptr, ptr %io, align 8, !dbg !6091
  %vma_invalidate_size25 = getelementptr inbounds %struct.io, ptr %18, i32 0, i32 6, !dbg !6092
  store i64 %17, ptr %vma_invalidate_size25, align 16, !dbg !6093
  %19 = load i32, ptr %opf.addr, align 4, !dbg !6094
  %20 = load i32, ptr %num_regions.addr, align 4, !dbg !6095
  %21 = load ptr, ptr %where.addr, align 8, !dbg !6096
  %22 = load ptr, ptr %dp.addr, align 8, !dbg !6097
  %23 = load ptr, ptr %io, align 8, !dbg !6098
  %24 = load i16, ptr %ioprio.addr, align 2, !dbg !6099
  call void @dispatch_io(i32 noundef %19, i32 noundef %20, ptr noundef %21, ptr noundef %22, ptr noundef %23, i32 noundef 1, i16 noundef zeroext %24) #18, !dbg !6100
  %wait26 = getelementptr inbounds %struct.sync_io, ptr %sio, i32 0, i32 1, !dbg !6101
  call void @wait_for_completion_io(ptr noundef %wait26) #18, !dbg !6102
  %25 = load ptr, ptr %error_bits.addr, align 8, !dbg !6103
  %tobool27 = icmp ne ptr %25, null, !dbg !6103
  br i1 %tobool27, label %if.then28, label %if.end30, !dbg !6105

if.then28:                                        ; preds = %if.end20
  %error_bits29 = getelementptr inbounds %struct.sync_io, ptr %sio, i32 0, i32 0, !dbg !6106
  %26 = load i64, ptr %error_bits29, align 8, !dbg !6106
  %27 = load ptr, ptr %error_bits.addr, align 8, !dbg !6107
  store i64 %26, ptr %27, align 8, !dbg !6108
  br label %if.end30, !dbg !6109

if.end30:                                         ; preds = %if.then28, %if.end20
  %error_bits31 = getelementptr inbounds %struct.sync_io, ptr %sio, i32 0, i32 0, !dbg !6110
  %28 = load i64, ptr %error_bits31, align 8, !dbg !6110
  %tobool32 = icmp ne i64 %28, 0, !dbg !6111
  %29 = zext i1 %tobool32 to i64, !dbg !6111
  %cond = select i1 %tobool32, i32 -5, i32 0, !dbg !6111
  store i32 %cond, ptr %retval, align 4, !dbg !6112
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6112

cleanup:                                          ; preds = %if.end30, %if.end
  call void @llvm.lifetime.end.p0(i64 40, ptr %sio) #17, !dbg !6113
  call void @llvm.lifetime.end.p0(i64 8, ptr %io) #17, !dbg !6113
  %30 = load i32, ptr %retval, align 4, !dbg !6113
  ret i32 %30, !dbg !6113
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @async_io(ptr noundef %client, i32 noundef %num_regions, ptr noundef %where, i32 noundef %opf, ptr noundef %dp, ptr noundef %fn, ptr noundef %context, i16 noundef zeroext %ioprio) #0 align 16 !dbg !6114 {
entry:
  %retval = alloca i32, align 4
  %client.addr = alloca ptr, align 8
  %num_regions.addr = alloca i32, align 4
  %where.addr = alloca ptr, align 8
  %opf.addr = alloca i32, align 4
  %dp.addr = alloca ptr, align 8
  %fn.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %ioprio.addr = alloca i16, align 2
  %io = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %client, ptr %client.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %client.addr, metadata !6118, metadata !DIExpression()), !dbg !6134
  store i32 %num_regions, ptr %num_regions.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num_regions.addr, metadata !6119, metadata !DIExpression()), !dbg !6135
  store ptr %where, ptr %where.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %where.addr, metadata !6120, metadata !DIExpression()), !dbg !6136
  store i32 %opf, ptr %opf.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %opf.addr, metadata !6121, metadata !DIExpression()), !dbg !6137
  store ptr %dp, ptr %dp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dp.addr, metadata !6122, metadata !DIExpression()), !dbg !6138
  store ptr %fn, ptr %fn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fn.addr, metadata !6123, metadata !DIExpression()), !dbg !6139
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !6124, metadata !DIExpression()), !dbg !6140
  store i16 %ioprio, ptr %ioprio.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %ioprio.addr, metadata !6125, metadata !DIExpression()), !dbg !6141
  call void @llvm.lifetime.start.p0(i64 8, ptr %io) #17, !dbg !6142
  call void @llvm.dbg.declare(metadata ptr %io, metadata !6126, metadata !DIExpression()), !dbg !6143
  %0 = load i32, ptr %num_regions.addr, align 4, !dbg !6144
  %cmp = icmp ugt i32 %0, 1, !dbg !6145
  br i1 %cmp, label %land.lhs.true, label %if.end20, !dbg !6146

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %opf.addr, align 4, !dbg !6147
  %call = call zeroext i1 @op_is_write(i32 noundef %1) #18, !dbg !6148
  br i1 %call, label %if.end20, label %if.then, !dbg !6149

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !6150
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6127, metadata !DIExpression()), !dbg !6150
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !6150
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !6151
  %tobool = icmp ne i32 %2, 0, !dbg !6151
  %lnot = xor i1 %tobool, true, !dbg !6151
  %lnot1 = xor i1 %lnot, true, !dbg !6151
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6151
  %conv = sext i32 %lnot.ext to i64, !dbg !6151
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6151
  %tobool2 = icmp ne i64 %expval, 0, !dbg !6151
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !6150

if.then3:                                         ; preds = %if.then
  br label %do.body, !dbg !6151

do.body:                                          ; preds = %if.then3
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #17, !dbg !6152
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6131, metadata !DIExpression()), !dbg !6152
  store i32 2305, ptr %__flags, align 4, !dbg !6152
  br label %do.body4, !dbg !6152

do.body4:                                         ; preds = %do.body
  br label %do.cond, !dbg !6153

do.cond:                                          ; preds = %do.body4
  br label %do.end, !dbg !6153

do.end:                                           ; preds = %do.cond
  br label %do.body5, !dbg !6152

do.body5:                                         ; preds = %do.end
  %3 = load i32, ptr %__flags, align 4, !dbg !6155
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, i32 469, i32 %3, i64 12) #17, !dbg !6155, !srcloc !6157
  br label %do.cond6, !dbg !6155

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !6155

do.end7:                                          ; preds = %do.cond6
  br label %do.body8, !dbg !6152

do.body8:                                         ; preds = %do.end7
  br label %do.cond9, !dbg !6158

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !6158

do.end10:                                         ; preds = %do.cond9
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #17, !dbg !6151
  br label %do.cond11, !dbg !6152

do.cond11:                                        ; preds = %do.end10
  br label %do.end12, !dbg !6152

do.end12:                                         ; preds = %do.cond11
  br label %if.end, !dbg !6152

if.end:                                           ; preds = %do.end12, %if.then
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !6150
  %tobool13 = icmp ne i32 %4, 0, !dbg !6150
  %lnot14 = xor i1 %tobool13, true, !dbg !6150
  %lnot16 = xor i1 %lnot14, true, !dbg !6150
  %lnot.ext17 = zext i1 %lnot16 to i32, !dbg !6150
  %conv18 = sext i32 %lnot.ext17 to i64, !dbg !6150
  %expval19 = call i64 @llvm.expect.i64(i64 %conv18, i64 0), !dbg !6150
  store i64 %expval19, ptr %tmp, align 8, !dbg !6151
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !6160
  %5 = load i64, ptr %tmp, align 8, !dbg !6150
  %6 = load ptr, ptr %fn.addr, align 8, !dbg !6161
  %7 = load ptr, ptr %context.addr, align 8, !dbg !6162
  call void %6(i64 noundef 1, ptr noundef %7) #18, !dbg !6161
  store i32 -5, ptr %retval, align 4, !dbg !6163
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6163

if.end20:                                         ; preds = %land.lhs.true, %entry
  %8 = load ptr, ptr %client.addr, align 8, !dbg !6164
  %pool = getelementptr inbounds %struct.dm_io_client, ptr %8, i32 0, i32 0, !dbg !6165
  %call21 = call noalias ptr @mempool_alloc(ptr noundef %pool, i32 noundef 3072) #18, !dbg !6166
  store ptr %call21, ptr %io, align 8, !dbg !6167
  %9 = load ptr, ptr %io, align 8, !dbg !6168
  %error_bits = getelementptr inbounds %struct.io, ptr %9, i32 0, i32 0, !dbg !6169
  store i64 0, ptr %error_bits, align 64, !dbg !6170
  %10 = load ptr, ptr %io, align 8, !dbg !6171
  %count = getelementptr inbounds %struct.io, ptr %10, i32 0, i32 1, !dbg !6172
  call void @atomic_set(ptr noundef %count, i32 noundef 1) #18, !dbg !6173
  %11 = load ptr, ptr %client.addr, align 8, !dbg !6174
  %12 = load ptr, ptr %io, align 8, !dbg !6175
  %client22 = getelementptr inbounds %struct.io, ptr %12, i32 0, i32 2, !dbg !6176
  store ptr %11, ptr %client22, align 16, !dbg !6177
  %13 = load ptr, ptr %fn.addr, align 8, !dbg !6178
  %14 = load ptr, ptr %io, align 8, !dbg !6179
  %callback = getelementptr inbounds %struct.io, ptr %14, i32 0, i32 3, !dbg !6180
  store ptr %13, ptr %callback, align 8, !dbg !6181
  %15 = load ptr, ptr %context.addr, align 8, !dbg !6182
  %16 = load ptr, ptr %io, align 8, !dbg !6183
  %context23 = getelementptr inbounds %struct.io, ptr %16, i32 0, i32 4, !dbg !6184
  store ptr %15, ptr %context23, align 32, !dbg !6185
  %17 = load ptr, ptr %dp.addr, align 8, !dbg !6186
  %vma_invalidate_address = getelementptr inbounds %struct.dpages, ptr %17, i32 0, i32 4, !dbg !6187
  %18 = load ptr, ptr %vma_invalidate_address, align 8, !dbg !6187
  %19 = load ptr, ptr %io, align 8, !dbg !6188
  %vma_invalidate_address24 = getelementptr inbounds %struct.io, ptr %19, i32 0, i32 5, !dbg !6189
  store ptr %18, ptr %vma_invalidate_address24, align 8, !dbg !6190
  %20 = load ptr, ptr %dp.addr, align 8, !dbg !6191
  %vma_invalidate_size = getelementptr inbounds %struct.dpages, ptr %20, i32 0, i32 5, !dbg !6192
  %21 = load i64, ptr %vma_invalidate_size, align 8, !dbg !6192
  %22 = load ptr, ptr %io, align 8, !dbg !6193
  %vma_invalidate_size25 = getelementptr inbounds %struct.io, ptr %22, i32 0, i32 6, !dbg !6194
  store i64 %21, ptr %vma_invalidate_size25, align 16, !dbg !6195
  %23 = load i32, ptr %opf.addr, align 4, !dbg !6196
  %24 = load i32, ptr %num_regions.addr, align 4, !dbg !6197
  %25 = load ptr, ptr %where.addr, align 8, !dbg !6198
  %26 = load ptr, ptr %dp.addr, align 8, !dbg !6199
  %27 = load ptr, ptr %io, align 8, !dbg !6200
  %28 = load i16, ptr %ioprio.addr, align 2, !dbg !6201
  call void @dispatch_io(i32 noundef %23, i32 noundef %24, ptr noundef %25, ptr noundef %26, ptr noundef %27, i32 noundef 0, i16 noundef zeroext %28) #18, !dbg !6202
  store i32 0, ptr %retval, align 4, !dbg !6203
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6203

cleanup:                                          ; preds = %if.end20, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %io) #17, !dbg !6204
  %29 = load i32, ptr %retval, align 4, !dbg !6204
  ret i32 %29, !dbg !6204
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @dm_io_init() #6 section ".init.text" align 16 !dbg !6205 {
entry:
  %retval = alloca i32, align 4
  %call = call ptr @kmem_cache_create(ptr noundef @.str, i32 noundef 64, i32 noundef 64, i32 noundef 0, ptr noundef null) #18, !dbg !6206
  store ptr %call, ptr @_dm_io_cache, align 8, !dbg !6207
  %0 = load ptr, ptr @_dm_io_cache, align 8, !dbg !6208
  %tobool = icmp ne ptr %0, null, !dbg !6208
  br i1 %tobool, label %if.end, label %if.then, !dbg !6210

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !6211
  br label %return, !dbg !6211

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6212
  br label %return, !dbg !6212

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, ptr %retval, align 4, !dbg !6213
  ret i32 %1, !dbg !6213
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6214 dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @dm_io_exit() #0 align 16 !dbg !6218 {
entry:
  %0 = load ptr, ptr @_dm_io_cache, align 8, !dbg !6219
  call void @kmem_cache_destroy(ptr noundef %0) #18, !dbg !6220
  store ptr null, ptr @_dm_io_cache, align 8, !dbg !6221
  ret void, !dbg !6222
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6223 dso_local void @kmem_cache_destroy(ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !6226 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6228, metadata !DIExpression()), !dbg !6233
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6229, metadata !DIExpression()), !dbg !6234
  %0 = load i64, ptr %size.addr, align 8, !dbg !6235
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6236
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6237

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6238
  %tobool = icmp ne i64 %2, 0, !dbg !6238
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6239

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #17, !dbg !6240
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6230, metadata !DIExpression()), !dbg !6241
  %3 = load i64, ptr %size.addr, align 8, !dbg !6242
  %cmp = icmp ugt i64 %3, 8192, !dbg !6244
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6245

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6246
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6247
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #19, !dbg !6248
  store ptr %call, ptr %retval, align 8, !dbg !6249
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6249

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6250
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #18, !dbg !6250
  store i32 %call2, ptr %index, align 4, !dbg !6251
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6252
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6253
  %9 = ptrtoint ptr %8 to i64, !dbg !6253
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #18, !dbg !6254
  %idxprom = zext i32 %call3 to i64, !dbg !6255
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6255
  %10 = load i32, ptr %index, align 4, !dbg !6256
  %idxprom4 = zext i32 %10 to i64, !dbg !6255
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6255
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6255
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6257
  %13 = load i64, ptr %size.addr, align 8, !dbg !6258
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #20, !dbg !6259
  store ptr %call6, ptr %retval, align 8, !dbg !6260
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6260

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #17, !dbg !6261
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6262
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6263
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #19, !dbg !6264
  store ptr %call8, ptr %retval, align 8, !dbg !6265
  br label %return, !dbg !6265

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6266
  ret ptr %16, !dbg !6266
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6267 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #10 align 16 !dbg !6268 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6272, metadata !DIExpression()), !dbg !6274
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6273, metadata !DIExpression()), !dbg !6275
  %0 = load i64, ptr %size.addr, align 8, !dbg !6276
  %tobool = icmp ne i64 %0, 0, !dbg !6276
  br i1 %tobool, label %if.end, label %if.then, !dbg !6278

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6279
  br label %return, !dbg !6279

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6280
  %cmp = icmp ule i64 %1, 8, !dbg !6282
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6283

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6284
  br label %return, !dbg !6284

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6285
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6287
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6288

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6289
  %cmp4 = icmp ule i64 %3, 96, !dbg !6290
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6291

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6292
  br label %return, !dbg !6292

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6293
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6295
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6296

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6297
  %cmp9 = icmp ule i64 %5, 192, !dbg !6298
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6299

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6300
  br label %return, !dbg !6300

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6301
  %cmp12 = icmp ule i64 %6, 8, !dbg !6303
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6304

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6305
  br label %return, !dbg !6305

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6306
  %cmp15 = icmp ule i64 %7, 16, !dbg !6308
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6309

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6310
  br label %return, !dbg !6310

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6311
  %cmp18 = icmp ule i64 %8, 32, !dbg !6313
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6314

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6315
  br label %return, !dbg !6315

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6316
  %cmp21 = icmp ule i64 %9, 64, !dbg !6318
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6319

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6320
  br label %return, !dbg !6320

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6321
  %cmp24 = icmp ule i64 %10, 128, !dbg !6323
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6324

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6325
  br label %return, !dbg !6325

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6326
  %cmp27 = icmp ule i64 %11, 256, !dbg !6328
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6329

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6330
  br label %return, !dbg !6330

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6331
  %cmp30 = icmp ule i64 %12, 512, !dbg !6333
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6334

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6335
  br label %return, !dbg !6335

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6336
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6338
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6339

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6340
  br label %return, !dbg !6340

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6341
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6343
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6344

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6345
  br label %return, !dbg !6345

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6346
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6348
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6349

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6350
  br label %return, !dbg !6350

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6351
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6353
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6354

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6355
  br label %return, !dbg !6355

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6356
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6358
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6359

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6360
  br label %return, !dbg !6360

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6361
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6363
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6364

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6365
  br label %return, !dbg !6365

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6366
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6368
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6369

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6370
  br label %return, !dbg !6370

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6371
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6373
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6374

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6375
  br label %return, !dbg !6375

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6376
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6378
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6379

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6380
  br label %return, !dbg !6380

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6381
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6383
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6384

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6385
  br label %return, !dbg !6385

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6386
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6388
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6389

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6390
  br label %return, !dbg !6390

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6391
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6393
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6394

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6395
  br label %return, !dbg !6395

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6396, !range !6398, !noundef !1516
  %tobool69 = trunc i8 %25 to i1, !dbg !6396
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6399

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6400

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_245() #21, !dbg !6401, !srcloc !6404
  unreachable, !dbg !6401

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6405

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6406

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6407

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6409

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6407

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 480, i32 0, i64 12) #17, !dbg !6411, !srcloc !6413
  br label %do.end75, !dbg !6411

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6407

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6414
  br label %return, !dbg !6414

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6415
  ret i32 %26, !dbg !6415
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6416 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #10 align 16 !dbg !6419 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6423, metadata !DIExpression()), !dbg !6425
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6424, metadata !DIExpression()), !dbg !6426
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6427
  %and = and i32 %0, 17, !dbg !6427
  %cmp = icmp eq i32 %and, 0, !dbg !6427
  %lnot = xor i1 %cmp, true, !dbg !6427
  %lnot1 = xor i1 %lnot, true, !dbg !6427
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6427
  %conv = sext i32 %lnot.ext to i64, !dbg !6427
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6427
  %tobool = icmp ne i64 %expval, 0, !dbg !6427
  br i1 %tobool, label %if.then, label %if.end, !dbg !6429

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6430
  br label %return, !dbg !6430

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6431
  %and2 = and i32 %1, 1, !dbg !6433
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6433
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6434

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6435
  br label %return, !dbg !6435

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6436
  br label %return, !dbg !6436

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6438
  ret i32 %2, !dbg !6438
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6439 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6440 dso_local void @__compiletime_assert_245() #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #12

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6441 dso_local i32 @mempool_init(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @mempool_alloc_slab(i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mempool_free_slab(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_dp_init(ptr noundef %dp, ptr noundef %pl, i32 noundef %offset) #0 align 16 !dbg !6444 {
entry:
  %dp.addr = alloca ptr, align 8
  %pl.addr = alloca ptr, align 8
  %offset.addr = alloca i32, align 4
  store ptr %dp, ptr %dp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dp.addr, metadata !6448, metadata !DIExpression()), !dbg !6451
  store ptr %pl, ptr %pl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pl.addr, metadata !6449, metadata !DIExpression()), !dbg !6452
  store i32 %offset, ptr %offset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !6450, metadata !DIExpression()), !dbg !6453
  %0 = load ptr, ptr %dp.addr, align 8, !dbg !6454
  %get_page = getelementptr inbounds %struct.dpages, ptr %0, i32 0, i32 0, !dbg !6455
  store ptr @list_get_page, ptr %get_page, align 8, !dbg !6456
  %1 = load ptr, ptr %dp.addr, align 8, !dbg !6457
  %next_page = getelementptr inbounds %struct.dpages, ptr %1, i32 0, i32 1, !dbg !6458
  store ptr @list_next_page, ptr %next_page, align 8, !dbg !6459
  %2 = load i32, ptr %offset.addr, align 4, !dbg !6460
  %3 = load ptr, ptr %dp.addr, align 8, !dbg !6461
  %4 = getelementptr inbounds %struct.dpages, ptr %3, i32 0, i32 2, !dbg !6462
  store i32 %2, ptr %4, align 8, !dbg !6463
  %5 = load ptr, ptr %pl.addr, align 8, !dbg !6464
  %6 = load ptr, ptr %dp.addr, align 8, !dbg !6465
  %context_ptr = getelementptr inbounds %struct.dpages, ptr %6, i32 0, i32 3, !dbg !6466
  store ptr %5, ptr %context_ptr, align 8, !dbg !6467
  ret void, !dbg !6468
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bio_dp_init(ptr noundef %dp, ptr noundef %bio) #0 align 16 !dbg !6469 {
entry:
  %dp.addr = alloca ptr, align 8
  %bio.addr = alloca ptr, align 8
  store ptr %dp, ptr %dp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dp.addr, metadata !6473, metadata !DIExpression()), !dbg !6475
  store ptr %bio, ptr %bio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bio.addr, metadata !6474, metadata !DIExpression()), !dbg !6476
  %0 = load ptr, ptr %dp.addr, align 8, !dbg !6477
  %get_page = getelementptr inbounds %struct.dpages, ptr %0, i32 0, i32 0, !dbg !6478
  store ptr @bio_get_page, ptr %get_page, align 8, !dbg !6479
  %1 = load ptr, ptr %dp.addr, align 8, !dbg !6480
  %next_page = getelementptr inbounds %struct.dpages, ptr %1, i32 0, i32 1, !dbg !6481
  store ptr @bio_next_page, ptr %next_page, align 8, !dbg !6482
  %2 = load ptr, ptr %bio.addr, align 8, !dbg !6483
  %bi_io_vec = getelementptr inbounds %struct.bio, ptr %2, i32 0, i32 18, !dbg !6484
  %3 = load ptr, ptr %bi_io_vec, align 8, !dbg !6484
  %4 = load ptr, ptr %dp.addr, align 8, !dbg !6485
  %context_ptr = getelementptr inbounds %struct.dpages, ptr %4, i32 0, i32 3, !dbg !6486
  store ptr %3, ptr %context_ptr, align 8, !dbg !6487
  %5 = load ptr, ptr %dp.addr, align 8, !dbg !6488
  %6 = getelementptr inbounds %struct.dpages, ptr %5, i32 0, i32 2, !dbg !6489
  %7 = load ptr, ptr %bio.addr, align 8, !dbg !6490
  %bi_iter = getelementptr inbounds %struct.bio, ptr %7, i32 0, i32 7, !dbg !6491
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %6, ptr align 8 %bi_iter, i64 20, i1 false), !dbg !6491
  ret void, !dbg !6492
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @flush_kernel_vmap_range(ptr noundef %vaddr, i32 noundef %size) #5 align 16 !dbg !6493 {
entry:
  %vaddr.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %vaddr, ptr %vaddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vaddr.addr, metadata !6498, metadata !DIExpression()), !dbg !6500
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6499, metadata !DIExpression()), !dbg !6501
  ret void, !dbg !6502
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @vm_dp_init(ptr noundef %dp, ptr noundef %data) #0 align 16 !dbg !6503 {
entry:
  %dp.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  store ptr %dp, ptr %dp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dp.addr, metadata !6507, metadata !DIExpression()), !dbg !6509
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !6508, metadata !DIExpression()), !dbg !6510
  %0 = load ptr, ptr %dp.addr, align 8, !dbg !6511
  %get_page = getelementptr inbounds %struct.dpages, ptr %0, i32 0, i32 0, !dbg !6512
  store ptr @vm_get_page, ptr %get_page, align 8, !dbg !6513
  %1 = load ptr, ptr %dp.addr, align 8, !dbg !6514
  %next_page = getelementptr inbounds %struct.dpages, ptr %1, i32 0, i32 1, !dbg !6515
  store ptr @vm_next_page, ptr %next_page, align 8, !dbg !6516
  %2 = load ptr, ptr %data.addr, align 8, !dbg !6517
  %3 = ptrtoint ptr %2 to i64, !dbg !6517
  %and = and i64 %3, 4095, !dbg !6517
  %conv = trunc i64 %and to i32, !dbg !6517
  %4 = load ptr, ptr %dp.addr, align 8, !dbg !6518
  %5 = getelementptr inbounds %struct.dpages, ptr %4, i32 0, i32 2, !dbg !6519
  store i32 %conv, ptr %5, align 8, !dbg !6520
  %6 = load ptr, ptr %data.addr, align 8, !dbg !6521
  %7 = load ptr, ptr %dp.addr, align 8, !dbg !6522
  %context_ptr = getelementptr inbounds %struct.dpages, ptr %7, i32 0, i32 3, !dbg !6523
  store ptr %6, ptr %context_ptr, align 8, !dbg !6524
  ret void, !dbg !6525
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @km_dp_init(ptr noundef %dp, ptr noundef %data) #0 align 16 !dbg !6526 {
entry:
  %dp.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  store ptr %dp, ptr %dp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dp.addr, metadata !6528, metadata !DIExpression()), !dbg !6530
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !6529, metadata !DIExpression()), !dbg !6531
  %0 = load ptr, ptr %dp.addr, align 8, !dbg !6532
  %get_page = getelementptr inbounds %struct.dpages, ptr %0, i32 0, i32 0, !dbg !6533
  store ptr @km_get_page, ptr %get_page, align 8, !dbg !6534
  %1 = load ptr, ptr %dp.addr, align 8, !dbg !6535
  %next_page = getelementptr inbounds %struct.dpages, ptr %1, i32 0, i32 1, !dbg !6536
  store ptr @km_next_page, ptr %next_page, align 8, !dbg !6537
  %2 = load ptr, ptr %data.addr, align 8, !dbg !6538
  %3 = ptrtoint ptr %2 to i64, !dbg !6538
  %and = and i64 %3, 4095, !dbg !6538
  %conv = trunc i64 %and to i32, !dbg !6538
  %4 = load ptr, ptr %dp.addr, align 8, !dbg !6539
  %5 = getelementptr inbounds %struct.dpages, ptr %4, i32 0, i32 2, !dbg !6540
  store i32 %conv, ptr %5, align 8, !dbg !6541
  %6 = load ptr, ptr %data.addr, align 8, !dbg !6542
  %7 = load ptr, ptr %dp.addr, align 8, !dbg !6543
  %context_ptr = getelementptr inbounds %struct.dpages, ptr %7, i32 0, i32 3, !dbg !6544
  store ptr %6, ptr %context_ptr, align 8, !dbg !6545
  ret void, !dbg !6546
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_get_page(ptr noundef %dp, ptr noundef %p, ptr noundef %len, ptr noundef %offset) #0 align 16 !dbg !6547 {
entry:
  %dp.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %len.addr = alloca ptr, align 8
  %offset.addr = alloca ptr, align 8
  %o = alloca i32, align 4
  %pl = alloca ptr, align 8
  store ptr %dp, ptr %dp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dp.addr, metadata !6549, metadata !DIExpression()), !dbg !6555
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6550, metadata !DIExpression()), !dbg !6556
  store ptr %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !6551, metadata !DIExpression()), !dbg !6557
  store ptr %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !6552, metadata !DIExpression()), !dbg !6558
  call void @llvm.lifetime.start.p0(i64 4, ptr %o) #17, !dbg !6559
  call void @llvm.dbg.declare(metadata ptr %o, metadata !6553, metadata !DIExpression()), !dbg !6560
  %0 = load ptr, ptr %dp.addr, align 8, !dbg !6561
  %1 = getelementptr inbounds %struct.dpages, ptr %0, i32 0, i32 2, !dbg !6562
  %2 = load i32, ptr %1, align 8, !dbg !6562
  store i32 %2, ptr %o, align 4, !dbg !6560
  call void @llvm.lifetime.start.p0(i64 8, ptr %pl) #17, !dbg !6563
  call void @llvm.dbg.declare(metadata ptr %pl, metadata !6554, metadata !DIExpression()), !dbg !6564
  %3 = load ptr, ptr %dp.addr, align 8, !dbg !6565
  %context_ptr = getelementptr inbounds %struct.dpages, ptr %3, i32 0, i32 3, !dbg !6566
  %4 = load ptr, ptr %context_ptr, align 8, !dbg !6566
  store ptr %4, ptr %pl, align 8, !dbg !6564
  %5 = load ptr, ptr %pl, align 8, !dbg !6567
  %page = getelementptr inbounds %struct.page_list, ptr %5, i32 0, i32 1, !dbg !6568
  %6 = load ptr, ptr %page, align 8, !dbg !6568
  %7 = load ptr, ptr %p.addr, align 8, !dbg !6569
  store ptr %6, ptr %7, align 8, !dbg !6570
  %8 = load i32, ptr %o, align 4, !dbg !6571
  %conv = zext i32 %8 to i64, !dbg !6571
  %sub = sub i64 4096, %conv, !dbg !6572
  %9 = load ptr, ptr %len.addr, align 8, !dbg !6573
  store i64 %sub, ptr %9, align 8, !dbg !6574
  %10 = load i32, ptr %o, align 4, !dbg !6575
  %11 = load ptr, ptr %offset.addr, align 8, !dbg !6576
  store i32 %10, ptr %11, align 4, !dbg !6577
  call void @llvm.lifetime.end.p0(i64 8, ptr %pl) #17, !dbg !6578
  call void @llvm.lifetime.end.p0(i64 4, ptr %o) #17, !dbg !6578
  ret void, !dbg !6578
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_next_page(ptr noundef %dp) #0 align 16 !dbg !6579 {
entry:
  %dp.addr = alloca ptr, align 8
  %pl = alloca ptr, align 8
  store ptr %dp, ptr %dp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dp.addr, metadata !6581, metadata !DIExpression()), !dbg !6583
  call void @llvm.lifetime.start.p0(i64 8, ptr %pl) #17, !dbg !6584
  call void @llvm.dbg.declare(metadata ptr %pl, metadata !6582, metadata !DIExpression()), !dbg !6585
  %0 = load ptr, ptr %dp.addr, align 8, !dbg !6586
  %context_ptr = getelementptr inbounds %struct.dpages, ptr %0, i32 0, i32 3, !dbg !6587
  %1 = load ptr, ptr %context_ptr, align 8, !dbg !6587
  store ptr %1, ptr %pl, align 8, !dbg !6585
  %2 = load ptr, ptr %pl, align 8, !dbg !6588
  %next = getelementptr inbounds %struct.page_list, ptr %2, i32 0, i32 0, !dbg !6589
  %3 = load ptr, ptr %next, align 8, !dbg !6589
  %4 = load ptr, ptr %dp.addr, align 8, !dbg !6590
  %context_ptr1 = getelementptr inbounds %struct.dpages, ptr %4, i32 0, i32 3, !dbg !6591
  store ptr %3, ptr %context_ptr1, align 8, !dbg !6592
  %5 = load ptr, ptr %dp.addr, align 8, !dbg !6593
  %6 = getelementptr inbounds %struct.dpages, ptr %5, i32 0, i32 2, !dbg !6594
  store i32 0, ptr %6, align 8, !dbg !6595
  call void @llvm.lifetime.end.p0(i64 8, ptr %pl) #17, !dbg !6596
  ret void, !dbg !6596
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bio_get_page(ptr noundef %dp, ptr noundef %p, ptr noundef %len, ptr noundef %offset) #0 align 16 !dbg !6597 {
entry:
  %dp.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %len.addr = alloca ptr, align 8
  %offset.addr = alloca ptr, align 8
  %bvec = alloca %struct.bio_vec, align 8
  %__UNIQUE_ID___x528 = alloca i32, align 4
  %__UNIQUE_ID___x526 = alloca i32, align 4
  %__UNIQUE_ID___y527 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__UNIQUE_ID___y529 = alloca i32, align 4
  %tmp23 = alloca i32, align 4
  store ptr %dp, ptr %dp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dp.addr, metadata !6599, metadata !DIExpression()), !dbg !6610
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6600, metadata !DIExpression()), !dbg !6611
  store ptr %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !6601, metadata !DIExpression()), !dbg !6612
  store ptr %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !6602, metadata !DIExpression()), !dbg !6613
  call void @llvm.lifetime.start.p0(i64 16, ptr %bvec) #17, !dbg !6614
  call void @llvm.dbg.declare(metadata ptr %bvec, metadata !6603, metadata !DIExpression()), !dbg !6615
  %bv_page = getelementptr inbounds %struct.bio_vec, ptr %bvec, i32 0, i32 0, !dbg !6616
  %0 = load ptr, ptr %dp.addr, align 8, !dbg !6616
  %context_ptr = getelementptr inbounds %struct.dpages, ptr %0, i32 0, i32 3, !dbg !6616
  %1 = load ptr, ptr %context_ptr, align 8, !dbg !6616
  %2 = load ptr, ptr %dp.addr, align 8, !dbg !6616
  %3 = getelementptr inbounds %struct.dpages, ptr %2, i32 0, i32 2, !dbg !6616
  %bi_idx = getelementptr inbounds %struct.bvec_iter, ptr %3, i32 0, i32 2, !dbg !6616
  %4 = load i32, ptr %bi_idx, align 4, !dbg !6616
  %idxprom = zext i32 %4 to i64, !dbg !6616
  %arrayidx = getelementptr %struct.bio_vec, ptr %1, i64 %idxprom, !dbg !6616
  %bv_page1 = getelementptr inbounds %struct.bio_vec, ptr %arrayidx, i32 0, i32 0, !dbg !6616
  %5 = load ptr, ptr %bv_page1, align 8, !dbg !6616
  %6 = load ptr, ptr %dp.addr, align 8, !dbg !6616
  %context_ptr2 = getelementptr inbounds %struct.dpages, ptr %6, i32 0, i32 3, !dbg !6616
  %7 = load ptr, ptr %context_ptr2, align 8, !dbg !6616
  %8 = load ptr, ptr %dp.addr, align 8, !dbg !6616
  %9 = getelementptr inbounds %struct.dpages, ptr %8, i32 0, i32 2, !dbg !6616
  %bi_idx3 = getelementptr inbounds %struct.bvec_iter, ptr %9, i32 0, i32 2, !dbg !6616
  %10 = load i32, ptr %bi_idx3, align 4, !dbg !6616
  %idxprom4 = zext i32 %10 to i64, !dbg !6616
  %arrayidx5 = getelementptr %struct.bio_vec, ptr %7, i64 %idxprom4, !dbg !6616
  %bv_offset = getelementptr inbounds %struct.bio_vec, ptr %arrayidx5, i32 0, i32 2, !dbg !6616
  %11 = load i32, ptr %bv_offset, align 4, !dbg !6616
  %12 = load ptr, ptr %dp.addr, align 8, !dbg !6616
  %13 = getelementptr inbounds %struct.dpages, ptr %12, i32 0, i32 2, !dbg !6616
  %bi_bvec_done = getelementptr inbounds %struct.bvec_iter, ptr %13, i32 0, i32 3, !dbg !6616
  %14 = load i32, ptr %bi_bvec_done, align 8, !dbg !6616
  %add = add i32 %11, %14, !dbg !6616
  %conv = zext i32 %add to i64, !dbg !6616
  %div = udiv i64 %conv, 4096, !dbg !6616
  %add.ptr = getelementptr %struct.page, ptr %5, i64 %div, !dbg !6616
  store ptr %add.ptr, ptr %bv_page, align 8, !dbg !6616
  %bv_len = getelementptr inbounds %struct.bio_vec, ptr %bvec, i32 0, i32 1, !dbg !6616
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x528) #17, !dbg !6617
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x528, metadata !6604, metadata !DIExpression()), !dbg !6617
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x526) #17, !dbg !6618
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x526, metadata !6606, metadata !DIExpression()), !dbg !6618
  %15 = load ptr, ptr %dp.addr, align 8, !dbg !6618
  %16 = getelementptr inbounds %struct.dpages, ptr %15, i32 0, i32 2, !dbg !6618
  %bi_size = getelementptr inbounds %struct.bvec_iter, ptr %16, i32 0, i32 1, !dbg !6618
  %17 = load i32, ptr %bi_size, align 8, !dbg !6618
  store i32 %17, ptr %__UNIQUE_ID___x526, align 4, !dbg !6618
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y527) #17, !dbg !6618
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y527, metadata !6608, metadata !DIExpression()), !dbg !6618
  %18 = load ptr, ptr %dp.addr, align 8, !dbg !6618
  %context_ptr6 = getelementptr inbounds %struct.dpages, ptr %18, i32 0, i32 3, !dbg !6618
  %19 = load ptr, ptr %context_ptr6, align 8, !dbg !6618
  %20 = load ptr, ptr %dp.addr, align 8, !dbg !6618
  %21 = getelementptr inbounds %struct.dpages, ptr %20, i32 0, i32 2, !dbg !6618
  %bi_idx7 = getelementptr inbounds %struct.bvec_iter, ptr %21, i32 0, i32 2, !dbg !6618
  %22 = load i32, ptr %bi_idx7, align 4, !dbg !6618
  %idxprom8 = zext i32 %22 to i64, !dbg !6618
  %arrayidx9 = getelementptr %struct.bio_vec, ptr %19, i64 %idxprom8, !dbg !6618
  %bv_len10 = getelementptr inbounds %struct.bio_vec, ptr %arrayidx9, i32 0, i32 1, !dbg !6618
  %23 = load i32, ptr %bv_len10, align 8, !dbg !6618
  %24 = load ptr, ptr %dp.addr, align 8, !dbg !6618
  %25 = getelementptr inbounds %struct.dpages, ptr %24, i32 0, i32 2, !dbg !6618
  %bi_bvec_done11 = getelementptr inbounds %struct.bvec_iter, ptr %25, i32 0, i32 3, !dbg !6618
  %26 = load i32, ptr %bi_bvec_done11, align 8, !dbg !6618
  %sub = sub i32 %23, %26, !dbg !6618
  store i32 %sub, ptr %__UNIQUE_ID___y527, align 4, !dbg !6618
  %27 = load i32, ptr %__UNIQUE_ID___x526, align 4, !dbg !6618
  %28 = load i32, ptr %__UNIQUE_ID___y527, align 4, !dbg !6618
  %cmp = icmp ult i32 %27, %28, !dbg !6618
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6618

cond.true:                                        ; preds = %entry
  %29 = load i32, ptr %__UNIQUE_ID___x526, align 4, !dbg !6618
  br label %cond.end, !dbg !6618

cond.false:                                       ; preds = %entry
  %30 = load i32, ptr %__UNIQUE_ID___y527, align 4, !dbg !6618
  br label %cond.end, !dbg !6618

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %29, %cond.true ], [ %30, %cond.false ], !dbg !6618
  store i32 %cond, ptr %tmp, align 4, !dbg !6618
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y527) #17, !dbg !6617
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x526) #17, !dbg !6617
  %31 = load i32, ptr %tmp, align 4, !dbg !6618
  store i32 %31, ptr %__UNIQUE_ID___x528, align 4, !dbg !6617
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y529) #17, !dbg !6617
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y529, metadata !6609, metadata !DIExpression()), !dbg !6617
  %32 = load ptr, ptr %dp.addr, align 8, !dbg !6617
  %context_ptr13 = getelementptr inbounds %struct.dpages, ptr %32, i32 0, i32 3, !dbg !6617
  %33 = load ptr, ptr %context_ptr13, align 8, !dbg !6617
  %34 = load ptr, ptr %dp.addr, align 8, !dbg !6617
  %35 = getelementptr inbounds %struct.dpages, ptr %34, i32 0, i32 2, !dbg !6617
  %bi_idx14 = getelementptr inbounds %struct.bvec_iter, ptr %35, i32 0, i32 2, !dbg !6617
  %36 = load i32, ptr %bi_idx14, align 4, !dbg !6617
  %idxprom15 = zext i32 %36 to i64, !dbg !6617
  %arrayidx16 = getelementptr %struct.bio_vec, ptr %33, i64 %idxprom15, !dbg !6617
  %bv_offset17 = getelementptr inbounds %struct.bio_vec, ptr %arrayidx16, i32 0, i32 2, !dbg !6617
  %37 = load i32, ptr %bv_offset17, align 4, !dbg !6617
  %38 = load ptr, ptr %dp.addr, align 8, !dbg !6617
  %39 = getelementptr inbounds %struct.dpages, ptr %38, i32 0, i32 2, !dbg !6617
  %bi_bvec_done18 = getelementptr inbounds %struct.bvec_iter, ptr %39, i32 0, i32 3, !dbg !6617
  %40 = load i32, ptr %bi_bvec_done18, align 8, !dbg !6617
  %add19 = add i32 %37, %40, !dbg !6617
  %conv20 = zext i32 %add19 to i64, !dbg !6617
  %rem = urem i64 %conv20, 4096, !dbg !6617
  %sub21 = sub i64 4096, %rem, !dbg !6617
  %conv22 = trunc i64 %sub21 to i32, !dbg !6617
  store i32 %conv22, ptr %__UNIQUE_ID___y529, align 4, !dbg !6617
  %41 = load i32, ptr %__UNIQUE_ID___x528, align 4, !dbg !6617
  %42 = load i32, ptr %__UNIQUE_ID___y529, align 4, !dbg !6617
  %cmp24 = icmp ult i32 %41, %42, !dbg !6617
  br i1 %cmp24, label %cond.true26, label %cond.false27, !dbg !6617

cond.true26:                                      ; preds = %cond.end
  %43 = load i32, ptr %__UNIQUE_ID___x528, align 4, !dbg !6617
  br label %cond.end28, !dbg !6617

cond.false27:                                     ; preds = %cond.end
  %44 = load i32, ptr %__UNIQUE_ID___y529, align 4, !dbg !6617
  br label %cond.end28, !dbg !6617

cond.end28:                                       ; preds = %cond.false27, %cond.true26
  %cond29 = phi i32 [ %43, %cond.true26 ], [ %44, %cond.false27 ], !dbg !6617
  store i32 %cond29, ptr %tmp23, align 4, !dbg !6617
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y529) #17, !dbg !6616
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x528) #17, !dbg !6616
  %45 = load i32, ptr %tmp23, align 4, !dbg !6617
  store i32 %45, ptr %bv_len, align 8, !dbg !6616
  %bv_offset30 = getelementptr inbounds %struct.bio_vec, ptr %bvec, i32 0, i32 2, !dbg !6616
  %46 = load ptr, ptr %dp.addr, align 8, !dbg !6616
  %context_ptr31 = getelementptr inbounds %struct.dpages, ptr %46, i32 0, i32 3, !dbg !6616
  %47 = load ptr, ptr %context_ptr31, align 8, !dbg !6616
  %48 = load ptr, ptr %dp.addr, align 8, !dbg !6616
  %49 = getelementptr inbounds %struct.dpages, ptr %48, i32 0, i32 2, !dbg !6616
  %bi_idx32 = getelementptr inbounds %struct.bvec_iter, ptr %49, i32 0, i32 2, !dbg !6616
  %50 = load i32, ptr %bi_idx32, align 4, !dbg !6616
  %idxprom33 = zext i32 %50 to i64, !dbg !6616
  %arrayidx34 = getelementptr %struct.bio_vec, ptr %47, i64 %idxprom33, !dbg !6616
  %bv_offset35 = getelementptr inbounds %struct.bio_vec, ptr %arrayidx34, i32 0, i32 2, !dbg !6616
  %51 = load i32, ptr %bv_offset35, align 4, !dbg !6616
  %52 = load ptr, ptr %dp.addr, align 8, !dbg !6616
  %53 = getelementptr inbounds %struct.dpages, ptr %52, i32 0, i32 2, !dbg !6616
  %bi_bvec_done36 = getelementptr inbounds %struct.bvec_iter, ptr %53, i32 0, i32 3, !dbg !6616
  %54 = load i32, ptr %bi_bvec_done36, align 8, !dbg !6616
  %add37 = add i32 %51, %54, !dbg !6616
  %conv38 = zext i32 %add37 to i64, !dbg !6616
  %rem39 = urem i64 %conv38, 4096, !dbg !6616
  %conv40 = trunc i64 %rem39 to i32, !dbg !6616
  store i32 %conv40, ptr %bv_offset30, align 4, !dbg !6616
  %bv_page41 = getelementptr inbounds %struct.bio_vec, ptr %bvec, i32 0, i32 0, !dbg !6619
  %55 = load ptr, ptr %bv_page41, align 8, !dbg !6619
  %56 = load ptr, ptr %p.addr, align 8, !dbg !6620
  store ptr %55, ptr %56, align 8, !dbg !6621
  %bv_len42 = getelementptr inbounds %struct.bio_vec, ptr %bvec, i32 0, i32 1, !dbg !6622
  %57 = load i32, ptr %bv_len42, align 8, !dbg !6622
  %conv43 = zext i32 %57 to i64, !dbg !6623
  %58 = load ptr, ptr %len.addr, align 8, !dbg !6624
  store i64 %conv43, ptr %58, align 8, !dbg !6625
  %bv_offset44 = getelementptr inbounds %struct.bio_vec, ptr %bvec, i32 0, i32 2, !dbg !6626
  %59 = load i32, ptr %bv_offset44, align 4, !dbg !6626
  %60 = load ptr, ptr %offset.addr, align 8, !dbg !6627
  store i32 %59, ptr %60, align 4, !dbg !6628
  %bv_len45 = getelementptr inbounds %struct.bio_vec, ptr %bvec, i32 0, i32 1, !dbg !6629
  %61 = load i32, ptr %bv_len45, align 8, !dbg !6629
  %conv46 = zext i32 %61 to i64, !dbg !6630
  %62 = load ptr, ptr %dp.addr, align 8, !dbg !6631
  %63 = getelementptr inbounds %struct.dpages, ptr %62, i32 0, i32 2, !dbg !6632
  %bi_sector = getelementptr inbounds %struct.bvec_iter, ptr %63, i32 0, i32 0, !dbg !6633
  store i64 %conv46, ptr %bi_sector, align 8, !dbg !6634
  call void @llvm.lifetime.end.p0(i64 16, ptr %bvec) #17, !dbg !6635
  ret void, !dbg !6635
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bio_next_page(ptr noundef %dp) #0 align 16 !dbg !6636 {
entry:
  %dp.addr = alloca ptr, align 8
  %len = alloca i32, align 4
  store ptr %dp, ptr %dp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dp.addr, metadata !6638, metadata !DIExpression()), !dbg !6640
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #17, !dbg !6641
  call void @llvm.dbg.declare(metadata ptr %len, metadata !6639, metadata !DIExpression()), !dbg !6642
  %0 = load ptr, ptr %dp.addr, align 8, !dbg !6643
  %1 = getelementptr inbounds %struct.dpages, ptr %0, i32 0, i32 2, !dbg !6644
  %bi_sector = getelementptr inbounds %struct.bvec_iter, ptr %1, i32 0, i32 0, !dbg !6645
  %2 = load i64, ptr %bi_sector, align 8, !dbg !6645
  %conv = trunc i64 %2 to i32, !dbg !6646
  store i32 %conv, ptr %len, align 4, !dbg !6642
  %3 = load ptr, ptr %dp.addr, align 8, !dbg !6647
  %context_ptr = getelementptr inbounds %struct.dpages, ptr %3, i32 0, i32 3, !dbg !6648
  %4 = load ptr, ptr %context_ptr, align 8, !dbg !6648
  %5 = load ptr, ptr %dp.addr, align 8, !dbg !6649
  %6 = getelementptr inbounds %struct.dpages, ptr %5, i32 0, i32 2, !dbg !6650
  %7 = load i32, ptr %len, align 4, !dbg !6651
  %call = call zeroext i1 @bvec_iter_advance(ptr noundef %4, ptr noundef %6, i32 noundef %7) #18, !dbg !6652
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #17, !dbg !6653
  ret void, !dbg !6653
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @bvec_iter_advance(ptr noundef %bv, ptr noundef %iter, i32 noundef %bytes) #5 align 16 !dbg !5613 {
entry:
  %retval = alloca i1, align 1
  %bv.addr = alloca ptr, align 8
  %iter.addr = alloca ptr, align 8
  %bytes.addr = alloca i32, align 4
  %idx = alloca i32, align 4
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp48 = alloca i64, align 8
  %tmp57 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bv, ptr %bv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bv.addr, metadata !5618, metadata !DIExpression()), !dbg !6654
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !5619, metadata !DIExpression()), !dbg !6655
  store i32 %bytes, ptr %bytes.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !5620, metadata !DIExpression()), !dbg !6656
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #17, !dbg !6657
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !5621, metadata !DIExpression()), !dbg !6658
  %0 = load ptr, ptr %iter.addr, align 8, !dbg !6659
  %bi_idx = getelementptr inbounds %struct.bvec_iter, ptr %0, i32 0, i32 2, !dbg !6660
  %1 = load i32, ptr %bi_idx, align 4, !dbg !6660
  store i32 %1, ptr %idx, align 4, !dbg !6658
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #17, !dbg !6661
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !5622, metadata !DIExpression()), !dbg !6661
  %2 = load i32, ptr %bytes.addr, align 4, !dbg !6661
  %3 = load ptr, ptr %iter.addr, align 8, !dbg !6661
  %bi_size = getelementptr inbounds %struct.bvec_iter, ptr %3, i32 0, i32 1, !dbg !6661
  %4 = load i32, ptr %bi_size, align 4, !dbg !6661
  %cmp = icmp ugt i32 %2, %4, !dbg !6661
  %lnot = xor i1 %cmp, true, !dbg !6661
  %lnot1 = xor i1 %lnot, true, !dbg !6661
  %frombool = zext i1 %lnot1 to i8, !dbg !6661
  store i8 %frombool, ptr %__ret_do_once, align 1, !dbg !6661
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #17, !dbg !6662
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !5625, metadata !DIExpression()), !dbg !6662
  %5 = load i8, ptr %__ret_do_once, align 1, !dbg !6662, !range !6398, !noundef !1516
  %tobool = trunc i8 %5 to i1, !dbg !6662
  %lnot2 = xor i1 %tobool, true, !dbg !6662
  %lnot3 = xor i1 %lnot2, true, !dbg !6662
  %frombool4 = zext i1 %lnot3 to i8, !dbg !6662
  store i8 %frombool4, ptr %__ret_cond, align 1, !dbg !6662
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #17, !dbg !6662
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !5628, metadata !DIExpression()), !dbg !6662
  store i8 0, ptr %__ret_once, align 1, !dbg !6662
  %6 = load i8, ptr %__ret_cond, align 1, !dbg !6663, !range !6398, !noundef !1516
  %tobool5 = trunc i8 %6 to i1, !dbg !6663
  br i1 %tobool5, label %land.rhs, label %land.end, !dbg !6663

land.rhs:                                         ; preds = %entry
  %7 = load i8, ptr @bvec_iter_advance.__already_done, align 1, !dbg !6663, !range !6398, !noundef !1516
  %tobool6 = trunc i8 %7 to i1, !dbg !6663
  %lnot7 = xor i1 %tobool6, true, !dbg !6663
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %8 = phi i1 [ false, %entry ], [ %lnot7, %land.rhs ], !dbg !6665
  %lnot8 = xor i1 %8, true, !dbg !6663
  %lnot9 = xor i1 %lnot8, true, !dbg !6663
  %lnot.ext = zext i1 %lnot9 to i32, !dbg !6663
  %conv = sext i32 %lnot.ext to i64, !dbg !6663
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6663
  %tobool10 = icmp ne i64 %expval, 0, !dbg !6663
  br i1 %tobool10, label %if.then, label %if.end, !dbg !6662

if.then:                                          ; preds = %land.end
  store i8 1, ptr @bvec_iter_advance.__already_done, align 1, !dbg !6666
  store i8 1, ptr %__ret_once, align 1, !dbg !6666
  br label %if.end, !dbg !6666

if.end:                                           ; preds = %if.then, %land.end
  %9 = load i8, ptr %__ret_once, align 1, !dbg !6662, !range !6398, !noundef !1516
  %tobool11 = trunc i8 %9 to i1, !dbg !6662
  %lnot12 = xor i1 %tobool11, true, !dbg !6662
  %lnot14 = xor i1 %lnot12, true, !dbg !6662
  %lnot.ext15 = zext i1 %lnot14 to i32, !dbg !6662
  %conv16 = sext i32 %lnot.ext15 to i64, !dbg !6662
  %expval17 = call i64 @llvm.expect.i64(i64 %conv16, i64 0), !dbg !6662
  store i64 %expval17, ptr %tmp, align 8, !dbg !6663
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #17, !dbg !6668
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #17, !dbg !6668
  %10 = load i64, ptr %tmp, align 8, !dbg !6662
  %tobool18 = icmp ne i64 %10, 0, !dbg !6668
  br i1 %tobool18, label %if.then19, label %if.end56, !dbg !6661

if.then19:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !6669
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5629, metadata !DIExpression()), !dbg !6669
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !6669
  %11 = load i32, ptr %__ret_warn_on, align 4, !dbg !6670
  %tobool20 = icmp ne i32 %11, 0, !dbg !6670
  %lnot21 = xor i1 %tobool20, true, !dbg !6670
  %lnot23 = xor i1 %lnot21, true, !dbg !6670
  %lnot.ext24 = zext i1 %lnot23 to i32, !dbg !6670
  %conv25 = sext i32 %lnot.ext24 to i64, !dbg !6670
  %expval26 = call i64 @llvm.expect.i64(i64 %conv25, i64 0), !dbg !6670
  %tobool27 = icmp ne i64 %expval26, 0, !dbg !6670
  br i1 %tobool27, label %if.then28, label %if.end47, !dbg !6669

if.then28:                                        ; preds = %if.then19
  br label %do.body, !dbg !6670

do.body:                                          ; preds = %if.then28
  br label %do.body29, !dbg !6671

do.body29:                                        ; preds = %do.body
  br label %do.cond, !dbg !6672

do.cond:                                          ; preds = %do.body29
  br label %do.end, !dbg !6672

do.end:                                           ; preds = %do.cond
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.2) #18, !dbg !6671
  br label %do.body30, !dbg !6671

do.body30:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #17, !dbg !6674
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5631, metadata !DIExpression()), !dbg !6674
  store i32 2313, ptr %__flags, align 4, !dbg !6674
  br label %do.body31, !dbg !6674

do.body31:                                        ; preds = %do.body30
  br label %do.cond32, !dbg !6675

do.cond32:                                        ; preds = %do.body31
  br label %do.end33, !dbg !6675

do.end33:                                         ; preds = %do.cond32
  br label %do.body34, !dbg !6674

do.body34:                                        ; preds = %do.end33
  %12 = load i32, ptr %__flags, align 4, !dbg !6677
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 146, i32 %12, i64 12) #17, !dbg !6677, !srcloc !6679
  br label %do.cond35, !dbg !6677

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !6677

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !6674

do.body37:                                        ; preds = %do.end36
  br label %do.cond38, !dbg !6680

do.cond38:                                        ; preds = %do.body37
  br label %do.end39, !dbg !6680

do.end39:                                         ; preds = %do.cond38
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #17, !dbg !6671
  br label %do.cond40, !dbg !6674

do.cond40:                                        ; preds = %do.end39
  br label %do.end41, !dbg !6674

do.end41:                                         ; preds = %do.cond40
  br label %do.body42, !dbg !6671

do.body42:                                        ; preds = %do.end41
  br label %do.cond43, !dbg !6682

do.cond43:                                        ; preds = %do.body42
  br label %do.end44, !dbg !6682

do.end44:                                         ; preds = %do.cond43
  br label %do.cond45, !dbg !6671

do.cond45:                                        ; preds = %do.end44
  br label %do.end46, !dbg !6671

do.end46:                                         ; preds = %do.cond45
  br label %if.end47, !dbg !6671

if.end47:                                         ; preds = %do.end46, %if.then19
  %13 = load i32, ptr %__ret_warn_on, align 4, !dbg !6669
  %tobool49 = icmp ne i32 %13, 0, !dbg !6669
  %lnot50 = xor i1 %tobool49, true, !dbg !6669
  %lnot52 = xor i1 %lnot50, true, !dbg !6669
  %lnot.ext53 = zext i1 %lnot52 to i32, !dbg !6669
  %conv54 = sext i32 %lnot.ext53 to i64, !dbg !6669
  %expval55 = call i64 @llvm.expect.i64(i64 %conv54, i64 0), !dbg !6669
  store i64 %expval55, ptr %tmp48, align 8, !dbg !6670
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !6668
  %14 = load i64, ptr %tmp48, align 8, !dbg !6669
  br label %if.end56, !dbg !6668

if.end56:                                         ; preds = %if.end47, %if.end
  %15 = load i8, ptr %__ret_do_once, align 1, !dbg !6661, !range !6398, !noundef !1516
  %tobool58 = trunc i8 %15 to i1, !dbg !6661
  %lnot59 = xor i1 %tobool58, true, !dbg !6661
  %lnot61 = xor i1 %lnot59, true, !dbg !6661
  %lnot.ext62 = zext i1 %lnot61 to i32, !dbg !6661
  %conv63 = sext i32 %lnot.ext62 to i64, !dbg !6661
  %expval64 = call i64 @llvm.expect.i64(i64 %conv63, i64 0), !dbg !6661
  store i64 %expval64, ptr %tmp57, align 8, !dbg !6668
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #17, !dbg !6684
  %16 = load i64, ptr %tmp57, align 8, !dbg !6661
  %tobool65 = icmp ne i64 %16, 0, !dbg !6684
  br i1 %tobool65, label %if.then66, label %if.end68, !dbg !6685

if.then66:                                        ; preds = %if.end56
  %17 = load ptr, ptr %iter.addr, align 8, !dbg !6686
  %bi_size67 = getelementptr inbounds %struct.bvec_iter, ptr %17, i32 0, i32 1, !dbg !6688
  store i32 0, ptr %bi_size67, align 4, !dbg !6689
  store i1 false, ptr %retval, align 1, !dbg !6690
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6690

if.end68:                                         ; preds = %if.end56
  %18 = load i32, ptr %bytes.addr, align 4, !dbg !6691
  %19 = load ptr, ptr %iter.addr, align 8, !dbg !6692
  %bi_size69 = getelementptr inbounds %struct.bvec_iter, ptr %19, i32 0, i32 1, !dbg !6693
  %20 = load i32, ptr %bi_size69, align 4, !dbg !6694
  %sub = sub i32 %20, %18, !dbg !6694
  store i32 %sub, ptr %bi_size69, align 4, !dbg !6694
  %21 = load ptr, ptr %iter.addr, align 8, !dbg !6695
  %bi_bvec_done = getelementptr inbounds %struct.bvec_iter, ptr %21, i32 0, i32 3, !dbg !6696
  %22 = load i32, ptr %bi_bvec_done, align 4, !dbg !6696
  %23 = load i32, ptr %bytes.addr, align 4, !dbg !6697
  %add = add i32 %23, %22, !dbg !6697
  store i32 %add, ptr %bytes.addr, align 4, !dbg !6697
  br label %while.cond, !dbg !6698

while.cond:                                       ; preds = %while.body, %if.end68
  %24 = load i32, ptr %bytes.addr, align 4, !dbg !6699
  %tobool70 = icmp ne i32 %24, 0, !dbg !6699
  br i1 %tobool70, label %land.rhs71, label %land.end74, !dbg !6700

land.rhs71:                                       ; preds = %while.cond
  %25 = load i32, ptr %bytes.addr, align 4, !dbg !6701
  %26 = load ptr, ptr %bv.addr, align 8, !dbg !6702
  %27 = load i32, ptr %idx, align 4, !dbg !6703
  %idxprom = zext i32 %27 to i64, !dbg !6702
  %arrayidx = getelementptr %struct.bio_vec, ptr %26, i64 %idxprom, !dbg !6702
  %bv_len = getelementptr inbounds %struct.bio_vec, ptr %arrayidx, i32 0, i32 1, !dbg !6704
  %28 = load i32, ptr %bv_len, align 8, !dbg !6704
  %cmp72 = icmp uge i32 %25, %28, !dbg !6705
  br label %land.end74

land.end74:                                       ; preds = %land.rhs71, %while.cond
  %29 = phi i1 [ false, %while.cond ], [ %cmp72, %land.rhs71 ], !dbg !6706
  br i1 %29, label %while.body, label %while.end, !dbg !6698

while.body:                                       ; preds = %land.end74
  %30 = load ptr, ptr %bv.addr, align 8, !dbg !6707
  %31 = load i32, ptr %idx, align 4, !dbg !6709
  %idxprom75 = zext i32 %31 to i64, !dbg !6707
  %arrayidx76 = getelementptr %struct.bio_vec, ptr %30, i64 %idxprom75, !dbg !6707
  %bv_len77 = getelementptr inbounds %struct.bio_vec, ptr %arrayidx76, i32 0, i32 1, !dbg !6710
  %32 = load i32, ptr %bv_len77, align 8, !dbg !6710
  %33 = load i32, ptr %bytes.addr, align 4, !dbg !6711
  %sub78 = sub i32 %33, %32, !dbg !6711
  store i32 %sub78, ptr %bytes.addr, align 4, !dbg !6711
  %34 = load i32, ptr %idx, align 4, !dbg !6712
  %inc = add i32 %34, 1, !dbg !6712
  store i32 %inc, ptr %idx, align 4, !dbg !6712
  br label %while.cond, !dbg !6698, !llvm.loop !6713

while.end:                                        ; preds = %land.end74
  %35 = load i32, ptr %idx, align 4, !dbg !6717
  %36 = load ptr, ptr %iter.addr, align 8, !dbg !6718
  %bi_idx79 = getelementptr inbounds %struct.bvec_iter, ptr %36, i32 0, i32 2, !dbg !6719
  store i32 %35, ptr %bi_idx79, align 4, !dbg !6720
  %37 = load i32, ptr %bytes.addr, align 4, !dbg !6721
  %38 = load ptr, ptr %iter.addr, align 8, !dbg !6722
  %bi_bvec_done80 = getelementptr inbounds %struct.bvec_iter, ptr %38, i32 0, i32 3, !dbg !6723
  store i32 %37, ptr %bi_bvec_done80, align 4, !dbg !6724
  store i1 true, ptr %retval, align 1, !dbg !6725
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6725

cleanup:                                          ; preds = %while.end, %if.then66
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #17, !dbg !6726
  %39 = load i1, ptr %retval, align 1, !dbg !6726
  ret i1 %39, !dbg !6726
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6727 dso_local void @__warn_printk(ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @vm_get_page(ptr noundef %dp, ptr noundef %p, ptr noundef %len, ptr noundef %offset) #0 align 16 !dbg !6730 {
entry:
  %dp.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %len.addr = alloca ptr, align 8
  %offset.addr = alloca ptr, align 8
  store ptr %dp, ptr %dp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dp.addr, metadata !6732, metadata !DIExpression()), !dbg !6736
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6733, metadata !DIExpression()), !dbg !6737
  store ptr %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !6734, metadata !DIExpression()), !dbg !6738
  store ptr %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !6735, metadata !DIExpression()), !dbg !6739
  %0 = load ptr, ptr %dp.addr, align 8, !dbg !6740
  %context_ptr = getelementptr inbounds %struct.dpages, ptr %0, i32 0, i32 3, !dbg !6741
  %1 = load ptr, ptr %context_ptr, align 8, !dbg !6741
  %call = call ptr @vmalloc_to_page(ptr noundef %1) #18, !dbg !6742
  %2 = load ptr, ptr %p.addr, align 8, !dbg !6743
  store ptr %call, ptr %2, align 8, !dbg !6744
  %3 = load ptr, ptr %dp.addr, align 8, !dbg !6745
  %4 = getelementptr inbounds %struct.dpages, ptr %3, i32 0, i32 2, !dbg !6746
  %5 = load i32, ptr %4, align 8, !dbg !6746
  %6 = load ptr, ptr %offset.addr, align 8, !dbg !6747
  store i32 %5, ptr %6, align 4, !dbg !6748
  %7 = load ptr, ptr %dp.addr, align 8, !dbg !6749
  %8 = getelementptr inbounds %struct.dpages, ptr %7, i32 0, i32 2, !dbg !6750
  %9 = load i32, ptr %8, align 8, !dbg !6750
  %conv = zext i32 %9 to i64, !dbg !6749
  %sub = sub i64 4096, %conv, !dbg !6751
  %10 = load ptr, ptr %len.addr, align 8, !dbg !6752
  store i64 %sub, ptr %10, align 8, !dbg !6753
  ret void, !dbg !6754
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @vm_next_page(ptr noundef %dp) #0 align 16 !dbg !6755 {
entry:
  %dp.addr = alloca ptr, align 8
  store ptr %dp, ptr %dp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dp.addr, metadata !6757, metadata !DIExpression()), !dbg !6758
  %0 = load ptr, ptr %dp.addr, align 8, !dbg !6759
  %1 = getelementptr inbounds %struct.dpages, ptr %0, i32 0, i32 2, !dbg !6760
  %2 = load i32, ptr %1, align 8, !dbg !6760
  %conv = zext i32 %2 to i64, !dbg !6759
  %sub = sub i64 4096, %conv, !dbg !6761
  %3 = load ptr, ptr %dp.addr, align 8, !dbg !6762
  %context_ptr = getelementptr inbounds %struct.dpages, ptr %3, i32 0, i32 3, !dbg !6763
  %4 = load ptr, ptr %context_ptr, align 8, !dbg !6764
  %add.ptr = getelementptr i8, ptr %4, i64 %sub, !dbg !6764
  store ptr %add.ptr, ptr %context_ptr, align 8, !dbg !6764
  %5 = load ptr, ptr %dp.addr, align 8, !dbg !6765
  %6 = getelementptr inbounds %struct.dpages, ptr %5, i32 0, i32 2, !dbg !6766
  store i32 0, ptr %6, align 8, !dbg !6767
  ret void, !dbg !6768
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6769 dso_local ptr @vmalloc_to_page(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @km_get_page(ptr noundef %dp, ptr noundef %p, ptr noundef %len, ptr noundef %offset) #0 align 16 !dbg !6772 {
entry:
  %dp.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %len.addr = alloca ptr, align 8
  %offset.addr = alloca ptr, align 8
  store ptr %dp, ptr %dp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dp.addr, metadata !6774, metadata !DIExpression()), !dbg !6778
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6775, metadata !DIExpression()), !dbg !6779
  store ptr %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !6776, metadata !DIExpression()), !dbg !6780
  store ptr %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !6777, metadata !DIExpression()), !dbg !6781
  %0 = load i64, ptr @vmemmap_base, align 8, !dbg !6782
  %1 = inttoptr i64 %0 to ptr, !dbg !6782
  %2 = load ptr, ptr %dp.addr, align 8, !dbg !6782
  %context_ptr = getelementptr inbounds %struct.dpages, ptr %2, i32 0, i32 3, !dbg !6782
  %3 = load ptr, ptr %context_ptr, align 8, !dbg !6782
  %4 = ptrtoint ptr %3 to i64, !dbg !6782
  %call = call i64 @__phys_addr_nodebug(i64 noundef %4) #18, !dbg !6782
  %shr = lshr i64 %call, 12, !dbg !6782
  %add.ptr = getelementptr %struct.page, ptr %1, i64 %shr, !dbg !6782
  %5 = load ptr, ptr %p.addr, align 8, !dbg !6783
  store ptr %add.ptr, ptr %5, align 8, !dbg !6784
  %6 = load ptr, ptr %dp.addr, align 8, !dbg !6785
  %7 = getelementptr inbounds %struct.dpages, ptr %6, i32 0, i32 2, !dbg !6786
  %8 = load i32, ptr %7, align 8, !dbg !6786
  %9 = load ptr, ptr %offset.addr, align 8, !dbg !6787
  store i32 %8, ptr %9, align 4, !dbg !6788
  %10 = load ptr, ptr %dp.addr, align 8, !dbg !6789
  %11 = getelementptr inbounds %struct.dpages, ptr %10, i32 0, i32 2, !dbg !6790
  %12 = load i32, ptr %11, align 8, !dbg !6790
  %conv = zext i32 %12 to i64, !dbg !6789
  %sub = sub i64 4096, %conv, !dbg !6791
  %13 = load ptr, ptr %len.addr, align 8, !dbg !6792
  store i64 %sub, ptr %13, align 8, !dbg !6793
  ret void, !dbg !6794
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @km_next_page(ptr noundef %dp) #0 align 16 !dbg !6795 {
entry:
  %dp.addr = alloca ptr, align 8
  store ptr %dp, ptr %dp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dp.addr, metadata !6797, metadata !DIExpression()), !dbg !6798
  %0 = load ptr, ptr %dp.addr, align 8, !dbg !6799
  %1 = getelementptr inbounds %struct.dpages, ptr %0, i32 0, i32 2, !dbg !6800
  %2 = load i32, ptr %1, align 8, !dbg !6800
  %conv = zext i32 %2 to i64, !dbg !6799
  %sub = sub i64 4096, %conv, !dbg !6801
  %3 = load ptr, ptr %dp.addr, align 8, !dbg !6802
  %context_ptr = getelementptr inbounds %struct.dpages, ptr %3, i32 0, i32 3, !dbg !6803
  %4 = load ptr, ptr %context_ptr, align 8, !dbg !6804
  %add.ptr = getelementptr i8, ptr %4, i64 %sub, !dbg !6804
  store ptr %add.ptr, ptr %context_ptr, align 8, !dbg !6804
  %5 = load ptr, ptr %dp.addr, align 8, !dbg !6805
  %6 = getelementptr inbounds %struct.dpages, ptr %5, i32 0, i32 2, !dbg !6806
  store i32 0, ptr %6, align 8, !dbg !6807
  ret void, !dbg !6808
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__phys_addr_nodebug(i64 noundef %x) #10 align 16 !dbg !6809 {
entry:
  %x.addr = alloca i64, align 8
  %y = alloca i64, align 8
  store i64 %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !6814, metadata !DIExpression()), !dbg !6816
  call void @llvm.lifetime.start.p0(i64 8, ptr %y) #17, !dbg !6817
  call void @llvm.dbg.declare(metadata ptr %y, metadata !6815, metadata !DIExpression()), !dbg !6818
  %0 = load i64, ptr %x.addr, align 8, !dbg !6819
  %sub = sub i64 %0, -2147483648, !dbg !6820
  store i64 %sub, ptr %y, align 8, !dbg !6818
  %1 = load i64, ptr %y, align 8, !dbg !6821
  %2 = load i64, ptr %x.addr, align 8, !dbg !6822
  %3 = load i64, ptr %y, align 8, !dbg !6823
  %cmp = icmp ugt i64 %2, %3, !dbg !6824
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6825

cond.true:                                        ; preds = %entry
  %4 = load i64, ptr @phys_base, align 8, !dbg !6826
  br label %cond.end, !dbg !6825

cond.false:                                       ; preds = %entry
  %5 = load i64, ptr @page_offset_base, align 8, !dbg !6827
  %sub1 = sub i64 -2147483648, %5, !dbg !6828
  br label %cond.end, !dbg !6825

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ %sub1, %cond.false ], !dbg !6825
  %add = add i64 %1, %cond, !dbg !6829
  store i64 %add, ptr %x.addr, align 8, !dbg !6830
  %6 = load i64, ptr %x.addr, align 8, !dbg !6831
  call void @llvm.lifetime.end.p0(i64 8, ptr %y) #17, !dbg !6832
  ret i64 %6, !dbg !6833
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @op_is_write(i32 noundef %op) #5 align 16 !dbg !6834 {
entry:
  %op.addr = alloca i32, align 4
  store i32 %op, ptr %op.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !6838, metadata !DIExpression()), !dbg !6839
  %0 = load i32, ptr %op.addr, align 4, !dbg !6840
  %and = and i32 %0, 1, !dbg !6841
  %tobool = icmp ne i32 %and, 0, !dbg !6842
  %lnot = xor i1 %tobool, true, !dbg !6842
  %lnot1 = xor i1 %lnot, true, !dbg !6843
  ret i1 %lnot1, !dbg !6844
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @init_completion(ptr noundef %x) #5 align 16 !dbg !5649 {
entry:
  %x.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !5653, metadata !DIExpression()), !dbg !6845
  %0 = load ptr, ptr %x.addr, align 8, !dbg !6846
  %done = getelementptr inbounds %struct.completion, ptr %0, i32 0, i32 0, !dbg !6847
  store i32 0, ptr %done, align 8, !dbg !6848
  br label %do.body, !dbg !6849

do.body:                                          ; preds = %entry
  %1 = load ptr, ptr %x.addr, align 8, !dbg !6850
  %wait = getelementptr inbounds %struct.completion, ptr %1, i32 0, i32 1, !dbg !6850
  call void @__init_swait_queue_head(ptr noundef %wait, ptr noundef @.str.5, ptr noundef @init_completion.__key) #18, !dbg !6850
  br label %do.end, !dbg !6850

do.end:                                           ; preds = %do.body
  ret void, !dbg !6852
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6853 dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_set(ptr noundef %v, i32 noundef %i) #10 align 16 !dbg !6856 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6862, metadata !DIExpression()), !dbg !6864
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6863, metadata !DIExpression()), !dbg !6865
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6866
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 4) #18, !dbg !6867
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6868
  %2 = load i32, ptr %i.addr, align 4, !dbg !6869
  call void @raw_atomic_set(ptr noundef %1, i32 noundef %2) #18, !dbg !6870
  ret void, !dbg !6871
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @sync_io_complete(i64 noundef %error, ptr noundef %context) #0 align 16 !dbg !6872 {
entry:
  %error.addr = alloca i64, align 8
  %context.addr = alloca ptr, align 8
  %sio = alloca ptr, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !6874, metadata !DIExpression()), !dbg !6878
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !6875, metadata !DIExpression()), !dbg !6879
  call void @llvm.lifetime.start.p0(i64 8, ptr %sio) #17, !dbg !6880
  call void @llvm.dbg.declare(metadata ptr %sio, metadata !6876, metadata !DIExpression()), !dbg !6881
  %0 = load ptr, ptr %context.addr, align 8, !dbg !6882
  store ptr %0, ptr %sio, align 8, !dbg !6881
  %1 = load i64, ptr %error.addr, align 8, !dbg !6883
  %2 = load ptr, ptr %sio, align 8, !dbg !6884
  %error_bits = getelementptr inbounds %struct.sync_io, ptr %2, i32 0, i32 0, !dbg !6885
  store i64 %1, ptr %error_bits, align 8, !dbg !6886
  %3 = load ptr, ptr %sio, align 8, !dbg !6887
  %wait = getelementptr inbounds %struct.sync_io, ptr %3, i32 0, i32 1, !dbg !6888
  call void @complete(ptr noundef %wait) #18, !dbg !6889
  call void @llvm.lifetime.end.p0(i64 8, ptr %sio) #17, !dbg !6890
  ret void, !dbg !6890
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dispatch_io(i32 noundef %opf, i32 noundef %num_regions, ptr noundef %where, ptr noundef %dp, ptr noundef %io, i32 noundef %sync, i16 noundef zeroext %ioprio) #0 align 16 !dbg !6891 {
entry:
  %opf.addr = alloca i32, align 4
  %num_regions.addr = alloca i32, align 4
  %where.addr = alloca ptr, align 8
  %dp.addr = alloca ptr, align 8
  %io.addr = alloca ptr, align 8
  %sync.addr = alloca i32, align 4
  %ioprio.addr = alloca i16, align 2
  %i = alloca i32, align 4
  %old_pages = alloca %struct.dpages, align 8
  store i32 %opf, ptr %opf.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %opf.addr, metadata !6895, metadata !DIExpression()), !dbg !6904
  store i32 %num_regions, ptr %num_regions.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num_regions.addr, metadata !6896, metadata !DIExpression()), !dbg !6905
  store ptr %where, ptr %where.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %where.addr, metadata !6897, metadata !DIExpression()), !dbg !6906
  store ptr %dp, ptr %dp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dp.addr, metadata !6898, metadata !DIExpression()), !dbg !6907
  store ptr %io, ptr %io.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %io.addr, metadata !6899, metadata !DIExpression()), !dbg !6908
  store i32 %sync, ptr %sync.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %sync.addr, metadata !6900, metadata !DIExpression()), !dbg !6909
  store i16 %ioprio, ptr %ioprio.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %ioprio.addr, metadata !6901, metadata !DIExpression()), !dbg !6910
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !6911
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6902, metadata !DIExpression()), !dbg !6912
  call void @llvm.lifetime.start.p0(i64 64, ptr %old_pages) #17, !dbg !6913
  call void @llvm.dbg.declare(metadata ptr %old_pages, metadata !6903, metadata !DIExpression()), !dbg !6914
  %0 = load ptr, ptr %dp.addr, align 8, !dbg !6915
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %old_pages, ptr align 8 %0, i64 64, i1 false), !dbg !6916
  br label %do.body, !dbg !6917

do.body:                                          ; preds = %entry
  %1 = load i32, ptr %num_regions.addr, align 4, !dbg !6918
  %cmp = icmp ugt i32 %1, 64, !dbg !6918
  %lnot = xor i1 %cmp, true, !dbg !6918
  %lnot1 = xor i1 %lnot, true, !dbg !6918
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6918
  %conv = sext i32 %lnot.ext to i64, !dbg !6918
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6918
  %tobool = icmp ne i64 %expval, 0, !dbg !6918
  br i1 %tobool, label %if.then, label %if.end, !dbg !6921

if.then:                                          ; preds = %do.body
  br label %do.body2, !dbg !6918

do.body2:                                         ; preds = %if.then
  br label %do.body3, !dbg !6922

do.body3:                                         ; preds = %do.body2
  br label %do.cond, !dbg !6924

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !6924

do.end:                                           ; preds = %do.cond
  br label %do.body4, !dbg !6922

do.body4:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, i32 392, i32 0, i64 12) #17, !dbg !6926, !srcloc !6928
  br label %do.cond5, !dbg !6926

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !6926

do.end6:                                          ; preds = %do.cond5
  unreachable, !dbg !6922

do.cond7:                                         ; No predecessors!
  br label %do.end8, !dbg !6922

do.end8:                                          ; preds = %do.cond7
  br label %if.end, !dbg !6922

if.end:                                           ; preds = %do.end8, %do.body
  br label %do.cond9, !dbg !6921

do.cond9:                                         ; preds = %if.end
  br label %do.end10, !dbg !6921

do.end10:                                         ; preds = %do.cond9
  %2 = load i32, ptr %sync.addr, align 4, !dbg !6929
  %tobool11 = icmp ne i32 %2, 0, !dbg !6929
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !6931

if.then12:                                        ; preds = %do.end10
  %3 = load i32, ptr %opf.addr, align 4, !dbg !6932
  %or = or i32 %3, 2048, !dbg !6932
  store i32 %or, ptr %opf.addr, align 4, !dbg !6932
  br label %if.end13, !dbg !6933

if.end13:                                         ; preds = %if.then12, %do.end10
  store i32 0, ptr %i, align 4, !dbg !6934
  br label %for.cond, !dbg !6936

for.cond:                                         ; preds = %for.inc, %if.end13
  %4 = load i32, ptr %i, align 4, !dbg !6937
  %5 = load i32, ptr %num_regions.addr, align 4, !dbg !6939
  %cmp14 = icmp ult i32 %4, %5, !dbg !6940
  br i1 %cmp14, label %for.body, label %for.end, !dbg !6941

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %dp.addr, align 8, !dbg !6942
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %6, ptr align 8 %old_pages, i64 64, i1 false), !dbg !6944
  %7 = load ptr, ptr %where.addr, align 8, !dbg !6945
  %8 = load i32, ptr %i, align 4, !dbg !6947
  %idxprom = sext i32 %8 to i64, !dbg !6945
  %arrayidx = getelementptr %struct.dm_io_region, ptr %7, i64 %idxprom, !dbg !6945
  %count = getelementptr inbounds %struct.dm_io_region, ptr %arrayidx, i32 0, i32 2, !dbg !6948
  %9 = load i64, ptr %count, align 8, !dbg !6948
  %tobool16 = icmp ne i64 %9, 0, !dbg !6945
  br i1 %tobool16, label %if.then18, label %lor.lhs.false, !dbg !6949

lor.lhs.false:                                    ; preds = %for.body
  %10 = load i32, ptr %opf.addr, align 4, !dbg !6950
  %and = and i32 %10, 262144, !dbg !6951
  %tobool17 = icmp ne i32 %and, 0, !dbg !6951
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !6952

if.then18:                                        ; preds = %lor.lhs.false, %for.body
  %11 = load i32, ptr %opf.addr, align 4, !dbg !6953
  %12 = load i32, ptr %i, align 4, !dbg !6954
  %13 = load ptr, ptr %where.addr, align 8, !dbg !6955
  %14 = load i32, ptr %i, align 4, !dbg !6956
  %idx.ext = sext i32 %14 to i64, !dbg !6957
  %add.ptr = getelementptr %struct.dm_io_region, ptr %13, i64 %idx.ext, !dbg !6957
  %15 = load ptr, ptr %dp.addr, align 8, !dbg !6958
  %16 = load ptr, ptr %io.addr, align 8, !dbg !6959
  %17 = load i16, ptr %ioprio.addr, align 2, !dbg !6960
  call void @do_region(i32 noundef %11, i32 noundef %12, ptr noundef %add.ptr, ptr noundef %15, ptr noundef %16, i16 noundef zeroext %17) #18, !dbg !6961
  br label %if.end19, !dbg !6961

if.end19:                                         ; preds = %if.then18, %lor.lhs.false
  br label %for.inc, !dbg !6962

for.inc:                                          ; preds = %if.end19
  %18 = load i32, ptr %i, align 4, !dbg !6963
  %inc = add i32 %18, 1, !dbg !6963
  store i32 %inc, ptr %i, align 4, !dbg !6963
  br label %for.cond, !dbg !6964, !llvm.loop !6965

for.end:                                          ; preds = %for.cond
  %19 = load ptr, ptr %io.addr, align 8, !dbg !6967
  call void @dec_count(ptr noundef %19, i32 noundef 0, i8 noundef zeroext 0) #18, !dbg !6968
  call void @llvm.lifetime.end.p0(i64 64, ptr %old_pages) #17, !dbg !6969
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !6969
  ret void, !dbg !6969
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6970 dso_local void @wait_for_completion_io(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6971 dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #10 align 16 !dbg !6976 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6984, metadata !DIExpression()), !dbg !6986
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6985, metadata !DIExpression()), !dbg !6987
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6988
  %1 = load i64, ptr %size.addr, align 8, !dbg !6989
  %conv = trunc i64 %1 to i32, !dbg !6989
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #18, !dbg !6990
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6991
  %3 = load i64, ptr %size.addr, align 8, !dbg !6991
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #18, !dbg !6991
  ret void, !dbg !6992
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_set(ptr noundef %v, i32 noundef %i) #10 align 16 !dbg !6993 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6996, metadata !DIExpression()), !dbg !6998
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6997, metadata !DIExpression()), !dbg !6999
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7000
  %1 = load i32, ptr %i.addr, align 4, !dbg !7001
  call void @arch_atomic_set(ptr noundef %0, i32 noundef %1) #18, !dbg !7002
  ret void, !dbg !7003
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !7004 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7009, metadata !DIExpression()), !dbg !7011
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7010, metadata !DIExpression()), !dbg !7012
  ret i1 true, !dbg !7013
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #5 align 16 !dbg !7014 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !7019, metadata !DIExpression()), !dbg !7022
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7020, metadata !DIExpression()), !dbg !7023
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !7021, metadata !DIExpression()), !dbg !7024
  ret void, !dbg !7025
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_set(ptr noundef %v, i32 noundef %i) #10 align 16 !dbg !7026 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7029, metadata !DIExpression()), !dbg !7031
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7030, metadata !DIExpression()), !dbg !7032
  br label %do.body, !dbg !7033

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %i.addr, align 4, !dbg !7034
  %1 = load ptr, ptr %v.addr, align 8, !dbg !7034
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !7034
  store volatile i32 %0, ptr %counter, align 4, !dbg !7034
  br label %do.end, !dbg !7034

do.end:                                           ; preds = %do.body
  ret void, !dbg !7036
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7037 dso_local void @complete(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @do_region(i32 noundef %opf, i32 noundef %region, ptr noundef %where, ptr noundef %dp, ptr noundef %io, i16 noundef zeroext %ioprio) #0 align 16 !dbg !7038 {
entry:
  %opf.addr = alloca i32, align 4
  %region.addr = alloca i32, align 4
  %where.addr = alloca ptr, align 8
  %dp.addr = alloca ptr, align 8
  %io.addr = alloca ptr, align 8
  %ioprio.addr = alloca i16, align 2
  %bio = alloca ptr, align 8
  %page = alloca ptr, align 8
  %len = alloca i64, align 8
  %offset = alloca i32, align 4
  %num_bvecs = alloca i32, align 4
  %remaining = alloca i64, align 8
  %q = alloca ptr, align 8
  %num_sectors = alloca i64, align 8
  %special_cmd_max_sectors = alloca i32, align 4
  %op = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %_r = alloca i64, align 8
  %__base = alloca i32, align 4
  %__rem = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp14 = alloca i64, align 8
  %__UNIQUE_ID___x530 = alloca i64, align 8
  %__UNIQUE_ID___y531 = alloca i64, align 8
  %tmp30 = alloca i64, align 8
  %__UNIQUE_ID___x532 = alloca i64, align 8
  %__UNIQUE_ID___y533 = alloca i64, align 8
  %tmp38 = alloca i64, align 8
  store i32 %opf, ptr %opf.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %opf.addr, metadata !7043, metadata !DIExpression()), !dbg !7077
  store i32 %region, ptr %region.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %region.addr, metadata !7044, metadata !DIExpression()), !dbg !7078
  store ptr %where, ptr %where.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %where.addr, metadata !7045, metadata !DIExpression()), !dbg !7079
  store ptr %dp, ptr %dp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dp.addr, metadata !7046, metadata !DIExpression()), !dbg !7080
  store ptr %io, ptr %io.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %io.addr, metadata !7047, metadata !DIExpression()), !dbg !7081
  store i16 %ioprio, ptr %ioprio.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %ioprio.addr, metadata !7048, metadata !DIExpression()), !dbg !7082
  call void @llvm.lifetime.start.p0(i64 8, ptr %bio) #17, !dbg !7083
  call void @llvm.dbg.declare(metadata ptr %bio, metadata !7049, metadata !DIExpression()), !dbg !7084
  call void @llvm.lifetime.start.p0(i64 8, ptr %page) #17, !dbg !7085
  call void @llvm.dbg.declare(metadata ptr %page, metadata !7050, metadata !DIExpression()), !dbg !7086
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #17, !dbg !7087
  call void @llvm.dbg.declare(metadata ptr %len, metadata !7051, metadata !DIExpression()), !dbg !7088
  call void @llvm.lifetime.start.p0(i64 4, ptr %offset) #17, !dbg !7089
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !7052, metadata !DIExpression()), !dbg !7090
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_bvecs) #17, !dbg !7091
  call void @llvm.dbg.declare(metadata ptr %num_bvecs, metadata !7053, metadata !DIExpression()), !dbg !7092
  call void @llvm.lifetime.start.p0(i64 8, ptr %remaining) #17, !dbg !7093
  call void @llvm.dbg.declare(metadata ptr %remaining, metadata !7054, metadata !DIExpression()), !dbg !7094
  %0 = load ptr, ptr %where.addr, align 8, !dbg !7095
  %count = getelementptr inbounds %struct.dm_io_region, ptr %0, i32 0, i32 2, !dbg !7096
  %1 = load i64, ptr %count, align 8, !dbg !7096
  store i64 %1, ptr %remaining, align 8, !dbg !7094
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #17, !dbg !7097
  call void @llvm.dbg.declare(metadata ptr %q, metadata !7055, metadata !DIExpression()), !dbg !7098
  %2 = load ptr, ptr %where.addr, align 8, !dbg !7099
  %bdev = getelementptr inbounds %struct.dm_io_region, ptr %2, i32 0, i32 0, !dbg !7100
  %3 = load ptr, ptr %bdev, align 8, !dbg !7100
  %call = call ptr @bdev_get_queue(ptr noundef %3) #18, !dbg !7101
  store ptr %call, ptr %q, align 8, !dbg !7098
  call void @llvm.lifetime.start.p0(i64 8, ptr %num_sectors) #17, !dbg !7102
  call void @llvm.dbg.declare(metadata ptr %num_sectors, metadata !7056, metadata !DIExpression()), !dbg !7103
  call void @llvm.lifetime.start.p0(i64 4, ptr %special_cmd_max_sectors) #17, !dbg !7104
  call void @llvm.dbg.declare(metadata ptr %special_cmd_max_sectors, metadata !7057, metadata !DIExpression()), !dbg !7105
  call void @llvm.lifetime.start.p0(i64 4, ptr %op) #17, !dbg !7106
  call void @llvm.dbg.declare(metadata ptr %op, metadata !7058, metadata !DIExpression()), !dbg !7107
  %4 = load i32, ptr %opf.addr, align 4, !dbg !7108
  %and = and i32 %4, 255, !dbg !7109
  store i32 %and, ptr %op, align 4, !dbg !7107
  %5 = load i32, ptr %op, align 4, !dbg !7110
  %cmp = icmp eq i32 %5, 3, !dbg !7112
  br i1 %cmp, label %if.then, label %if.else, !dbg !7113

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %where.addr, align 8, !dbg !7114
  %bdev1 = getelementptr inbounds %struct.dm_io_region, ptr %6, i32 0, i32 0, !dbg !7115
  %7 = load ptr, ptr %bdev1, align 8, !dbg !7115
  %call2 = call i32 @bdev_max_discard_sectors(ptr noundef %7) #18, !dbg !7116
  store i32 %call2, ptr %special_cmd_max_sectors, align 4, !dbg !7117
  br label %if.end5, !dbg !7118

if.else:                                          ; preds = %entry
  %8 = load i32, ptr %op, align 4, !dbg !7119
  %cmp3 = icmp eq i32 %8, 9, !dbg !7121
  br i1 %cmp3, label %if.then4, label %if.end, !dbg !7122

if.then4:                                         ; preds = %if.else
  %9 = load ptr, ptr %q, align 8, !dbg !7123
  %limits = getelementptr inbounds %struct.request_queue, ptr %9, i32 0, i32 33, !dbg !7124
  %max_write_zeroes_sectors = getelementptr inbounds %struct.queue_limits, ptr %limits, i32 0, i32 17, !dbg !7125
  %10 = load i32, ptr %max_write_zeroes_sectors, align 8, !dbg !7125
  store i32 %10, ptr %special_cmd_max_sectors, align 4, !dbg !7126
  br label %if.end, !dbg !7127

if.end:                                           ; preds = %if.then4, %if.else
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then
  %11 = load i32, ptr %op, align 4, !dbg !7128
  %cmp6 = icmp eq i32 %11, 3, !dbg !7130
  br i1 %cmp6, label %land.lhs.true, label %lor.lhs.false, !dbg !7131

lor.lhs.false:                                    ; preds = %if.end5
  %12 = load i32, ptr %op, align 4, !dbg !7132
  %cmp7 = icmp eq i32 %12, 9, !dbg !7133
  br i1 %cmp7, label %land.lhs.true, label %if.end11, !dbg !7134

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end5
  %13 = load i32, ptr %special_cmd_max_sectors, align 4, !dbg !7135
  %cmp8 = icmp eq i32 %13, 0, !dbg !7136
  br i1 %cmp8, label %if.then9, label %if.end11, !dbg !7137

if.then9:                                         ; preds = %land.lhs.true
  %14 = load ptr, ptr %io.addr, align 8, !dbg !7138
  %count10 = getelementptr inbounds %struct.io, ptr %14, i32 0, i32 1, !dbg !7140
  call void @atomic_inc(ptr noundef %count10) #18, !dbg !7141
  %15 = load ptr, ptr %io.addr, align 8, !dbg !7142
  %16 = load i32, ptr %region.addr, align 4, !dbg !7143
  call void @dec_count(ptr noundef %15, i32 noundef %16, i8 noundef zeroext 1) #18, !dbg !7144
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7145

if.end11:                                         ; preds = %land.lhs.true, %lor.lhs.false
  br label %do.body, !dbg !7146

do.body:                                          ; preds = %do.cond, %if.end11
  %17 = load i32, ptr %op, align 4, !dbg !7147
  switch i32 %17, label %sw.default [
    i32 3, label %sw.bb
    i32 9, label %sw.bb
  ], !dbg !7148

sw.bb:                                            ; preds = %do.body, %do.body
  store i32 0, ptr %num_bvecs, align 4, !dbg !7149
  br label %sw.epilog, !dbg !7150

sw.default:                                       ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %_r) #17, !dbg !7151
  call void @llvm.dbg.declare(metadata ptr %_r, metadata !7060, metadata !DIExpression()), !dbg !7151
  %18 = load i64, ptr %remaining, align 8, !dbg !7151
  %add = add i64 %18, 8, !dbg !7151
  %sub = sub i64 %add, 1, !dbg !7151
  store i64 %sub, ptr %_r, align 8, !dbg !7151
  call void @llvm.lifetime.start.p0(i64 4, ptr %__base) #17, !dbg !7152
  call void @llvm.dbg.declare(metadata ptr %__base, metadata !7064, metadata !DIExpression()), !dbg !7152
  store i32 8, ptr %__base, align 4, !dbg !7152
  call void @llvm.lifetime.start.p0(i64 4, ptr %__rem) #17, !dbg !7152
  call void @llvm.dbg.declare(metadata ptr %__rem, metadata !7066, metadata !DIExpression()), !dbg !7152
  %19 = load i64, ptr %_r, align 8, !dbg !7152
  %20 = load i32, ptr %__base, align 4, !dbg !7152
  %conv = zext i32 %20 to i64, !dbg !7152
  %rem = urem i64 %19, %conv, !dbg !7152
  %conv12 = trunc i64 %rem to i32, !dbg !7152
  store i32 %conv12, ptr %__rem, align 4, !dbg !7152
  %21 = load i64, ptr %_r, align 8, !dbg !7152
  %22 = load i32, ptr %__base, align 4, !dbg !7152
  %conv13 = zext i32 %22 to i64, !dbg !7152
  %div = udiv i64 %21, %conv13, !dbg !7152
  store i64 %div, ptr %_r, align 8, !dbg !7152
  %23 = load i32, ptr %__rem, align 4, !dbg !7152
  store i32 %23, ptr %tmp, align 4, !dbg !7152
  call void @llvm.lifetime.end.p0(i64 4, ptr %__rem) #17, !dbg !7151
  call void @llvm.lifetime.end.p0(i64 4, ptr %__base) #17, !dbg !7151
  %24 = load i32, ptr %tmp, align 4, !dbg !7152
  %25 = load i64, ptr %_r, align 8, !dbg !7151
  store i64 %25, ptr %tmp14, align 8, !dbg !7151
  call void @llvm.lifetime.end.p0(i64 8, ptr %_r) #17, !dbg !7153
  %26 = load i64, ptr %tmp14, align 8, !dbg !7151
  %conv15 = trunc i64 %26 to i32, !dbg !7153
  %call16 = call i32 @bio_max_segs(i32 noundef %conv15) #18, !dbg !7154
  store i32 %call16, ptr %num_bvecs, align 4, !dbg !7155
  br label %sw.epilog, !dbg !7156

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %27 = load ptr, ptr %where.addr, align 8, !dbg !7157
  %bdev17 = getelementptr inbounds %struct.dm_io_region, ptr %27, i32 0, i32 0, !dbg !7158
  %28 = load ptr, ptr %bdev17, align 8, !dbg !7158
  %29 = load i32, ptr %num_bvecs, align 4, !dbg !7159
  %conv18 = trunc i32 %29 to i16, !dbg !7159
  %30 = load i32, ptr %opf.addr, align 4, !dbg !7160
  %31 = load ptr, ptr %io.addr, align 8, !dbg !7161
  %client = getelementptr inbounds %struct.io, ptr %31, i32 0, i32 2, !dbg !7162
  %32 = load ptr, ptr %client, align 16, !dbg !7162
  %bios = getelementptr inbounds %struct.dm_io_client, ptr %32, i32 0, i32 1, !dbg !7163
  %call19 = call ptr @bio_alloc_bioset(ptr noundef %28, i16 noundef zeroext %conv18, i32 noundef %30, i32 noundef 3072, ptr noundef %bios) #18, !dbg !7164
  store ptr %call19, ptr %bio, align 8, !dbg !7165
  %33 = load ptr, ptr %where.addr, align 8, !dbg !7166
  %sector = getelementptr inbounds %struct.dm_io_region, ptr %33, i32 0, i32 1, !dbg !7167
  %34 = load i64, ptr %sector, align 8, !dbg !7167
  %35 = load ptr, ptr %where.addr, align 8, !dbg !7168
  %count20 = getelementptr inbounds %struct.dm_io_region, ptr %35, i32 0, i32 2, !dbg !7169
  %36 = load i64, ptr %count20, align 8, !dbg !7169
  %37 = load i64, ptr %remaining, align 8, !dbg !7170
  %sub21 = sub i64 %36, %37, !dbg !7171
  %add22 = add i64 %34, %sub21, !dbg !7172
  %38 = load ptr, ptr %bio, align 8, !dbg !7173
  %bi_iter = getelementptr inbounds %struct.bio, ptr %38, i32 0, i32 7, !dbg !7174
  %bi_sector = getelementptr inbounds %struct.bvec_iter, ptr %bi_iter, i32 0, i32 0, !dbg !7175
  store i64 %add22, ptr %bi_sector, align 8, !dbg !7176
  %39 = load ptr, ptr %bio, align 8, !dbg !7177
  %bi_end_io = getelementptr inbounds %struct.bio, ptr %39, i32 0, i32 9, !dbg !7178
  store ptr @endio, ptr %bi_end_io, align 8, !dbg !7179
  %40 = load i16, ptr %ioprio.addr, align 2, !dbg !7180
  %41 = load ptr, ptr %bio, align 8, !dbg !7181
  %bi_ioprio = getelementptr inbounds %struct.bio, ptr %41, i32 0, i32 4, !dbg !7182
  store i16 %40, ptr %bi_ioprio, align 2, !dbg !7183
  %42 = load ptr, ptr %bio, align 8, !dbg !7184
  %43 = load ptr, ptr %io.addr, align 8, !dbg !7185
  %44 = load i32, ptr %region.addr, align 4, !dbg !7186
  call void @store_io_and_region_in_bio(ptr noundef %42, ptr noundef %43, i32 noundef %44) #18, !dbg !7187
  %45 = load i32, ptr %op, align 4, !dbg !7188
  %cmp23 = icmp eq i32 %45, 3, !dbg !7189
  br i1 %cmp23, label %if.then28, label %lor.lhs.false25, !dbg !7190

lor.lhs.false25:                                  ; preds = %sw.epilog
  %46 = load i32, ptr %op, align 4, !dbg !7191
  %cmp26 = icmp eq i32 %46, 9, !dbg !7192
  br i1 %cmp26, label %if.then28, label %if.else36, !dbg !7193

if.then28:                                        ; preds = %lor.lhs.false25, %sw.epilog
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x530) #17, !dbg !7194
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x530, metadata !7067, metadata !DIExpression()), !dbg !7194
  %47 = load i32, ptr %special_cmd_max_sectors, align 4, !dbg !7194
  %conv29 = zext i32 %47 to i64, !dbg !7194
  store i64 %conv29, ptr %__UNIQUE_ID___x530, align 8, !dbg !7194
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y531) #17, !dbg !7194
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y531, metadata !7071, metadata !DIExpression()), !dbg !7194
  %48 = load i64, ptr %remaining, align 8, !dbg !7194
  store i64 %48, ptr %__UNIQUE_ID___y531, align 8, !dbg !7194
  %49 = load i64, ptr %__UNIQUE_ID___x530, align 8, !dbg !7194
  %50 = load i64, ptr %__UNIQUE_ID___y531, align 8, !dbg !7194
  %cmp31 = icmp ult i64 %49, %50, !dbg !7194
  br i1 %cmp31, label %cond.true, label %cond.false, !dbg !7194

cond.true:                                        ; preds = %if.then28
  %51 = load i64, ptr %__UNIQUE_ID___x530, align 8, !dbg !7194
  br label %cond.end, !dbg !7194

cond.false:                                       ; preds = %if.then28
  %52 = load i64, ptr %__UNIQUE_ID___y531, align 8, !dbg !7194
  br label %cond.end, !dbg !7194

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %51, %cond.true ], [ %52, %cond.false ], !dbg !7194
  store i64 %cond, ptr %tmp30, align 8, !dbg !7194
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y531) #17, !dbg !7195
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x530) #17, !dbg !7195
  %53 = load i64, ptr %tmp30, align 8, !dbg !7194
  store i64 %53, ptr %num_sectors, align 8, !dbg !7196
  %54 = load i64, ptr %num_sectors, align 8, !dbg !7197
  %shl = shl i64 %54, 9, !dbg !7198
  %conv33 = trunc i64 %shl to i32, !dbg !7197
  %55 = load ptr, ptr %bio, align 8, !dbg !7199
  %bi_iter34 = getelementptr inbounds %struct.bio, ptr %55, i32 0, i32 7, !dbg !7200
  %bi_size = getelementptr inbounds %struct.bvec_iter, ptr %bi_iter34, i32 0, i32 1, !dbg !7201
  store i32 %conv33, ptr %bi_size, align 8, !dbg !7202
  %56 = load i64, ptr %num_sectors, align 8, !dbg !7203
  %57 = load i64, ptr %remaining, align 8, !dbg !7204
  %sub35 = sub i64 %57, %56, !dbg !7204
  store i64 %sub35, ptr %remaining, align 8, !dbg !7204
  br label %if.end52, !dbg !7205

if.else36:                                        ; preds = %lor.lhs.false25
  br label %while.cond, !dbg !7206

while.cond:                                       ; preds = %if.end49, %if.else36
  %58 = load i64, ptr %remaining, align 8, !dbg !7207
  %tobool = icmp ne i64 %58, 0, !dbg !7206
  br i1 %tobool, label %while.body, label %while.end, !dbg !7206

while.body:                                       ; preds = %while.cond
  %59 = load ptr, ptr %dp.addr, align 8, !dbg !7208
  %get_page = getelementptr inbounds %struct.dpages, ptr %59, i32 0, i32 0, !dbg !7209
  %60 = load ptr, ptr %get_page, align 8, !dbg !7209
  %61 = load ptr, ptr %dp.addr, align 8, !dbg !7210
  call void %60(ptr noundef %61, ptr noundef %page, ptr noundef %len, ptr noundef %offset) #18, !dbg !7208
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x532) #17, !dbg !7211
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x532, metadata !7072, metadata !DIExpression()), !dbg !7211
  %62 = load i64, ptr %len, align 8, !dbg !7211
  store i64 %62, ptr %__UNIQUE_ID___x532, align 8, !dbg !7211
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y533) #17, !dbg !7211
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y533, metadata !7076, metadata !DIExpression()), !dbg !7211
  %63 = load i64, ptr %remaining, align 8, !dbg !7211
  %call37 = call i64 @to_bytes(i64 noundef %63) #18, !dbg !7211
  store i64 %call37, ptr %__UNIQUE_ID___y533, align 8, !dbg !7211
  %64 = load i64, ptr %__UNIQUE_ID___x532, align 8, !dbg !7211
  %65 = load i64, ptr %__UNIQUE_ID___y533, align 8, !dbg !7211
  %cmp39 = icmp ult i64 %64, %65, !dbg !7211
  br i1 %cmp39, label %cond.true41, label %cond.false42, !dbg !7211

cond.true41:                                      ; preds = %while.body
  %66 = load i64, ptr %__UNIQUE_ID___x532, align 8, !dbg !7211
  br label %cond.end43, !dbg !7211

cond.false42:                                     ; preds = %while.body
  %67 = load i64, ptr %__UNIQUE_ID___y533, align 8, !dbg !7211
  br label %cond.end43, !dbg !7211

cond.end43:                                       ; preds = %cond.false42, %cond.true41
  %cond44 = phi i64 [ %66, %cond.true41 ], [ %67, %cond.false42 ], !dbg !7211
  store i64 %cond44, ptr %tmp38, align 8, !dbg !7211
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y533) #17, !dbg !7212
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x532) #17, !dbg !7212
  %68 = load i64, ptr %tmp38, align 8, !dbg !7211
  store i64 %68, ptr %len, align 8, !dbg !7213
  %69 = load ptr, ptr %bio, align 8, !dbg !7214
  %70 = load ptr, ptr %page, align 8, !dbg !7216
  %71 = load i64, ptr %len, align 8, !dbg !7217
  %conv45 = trunc i64 %71 to i32, !dbg !7217
  %72 = load i32, ptr %offset, align 4, !dbg !7218
  %call46 = call i32 @bio_add_page(ptr noundef %69, ptr noundef %70, i32 noundef %conv45, i32 noundef %72) #18, !dbg !7219
  %tobool47 = icmp ne i32 %call46, 0, !dbg !7219
  br i1 %tobool47, label %if.end49, label %if.then48, !dbg !7220

if.then48:                                        ; preds = %cond.end43
  br label %while.end, !dbg !7221

if.end49:                                         ; preds = %cond.end43
  store i32 0, ptr %offset, align 4, !dbg !7222
  %73 = load i64, ptr %len, align 8, !dbg !7223
  %call50 = call i64 @to_sector(i64 noundef %73) #18, !dbg !7224
  %74 = load i64, ptr %remaining, align 8, !dbg !7225
  %sub51 = sub i64 %74, %call50, !dbg !7225
  store i64 %sub51, ptr %remaining, align 8, !dbg !7225
  %75 = load ptr, ptr %dp.addr, align 8, !dbg !7226
  %next_page = getelementptr inbounds %struct.dpages, ptr %75, i32 0, i32 1, !dbg !7227
  %76 = load ptr, ptr %next_page, align 8, !dbg !7227
  %77 = load ptr, ptr %dp.addr, align 8, !dbg !7228
  call void %76(ptr noundef %77) #18, !dbg !7226
  br label %while.cond, !dbg !7206, !llvm.loop !7229

while.end:                                        ; preds = %if.then48, %while.cond
  br label %if.end52

if.end52:                                         ; preds = %while.end, %cond.end
  %78 = load ptr, ptr %io.addr, align 8, !dbg !7231
  %count53 = getelementptr inbounds %struct.io, ptr %78, i32 0, i32 1, !dbg !7232
  call void @atomic_inc(ptr noundef %count53) #18, !dbg !7233
  %79 = load ptr, ptr %bio, align 8, !dbg !7234
  call void @submit_bio(ptr noundef %79) #18, !dbg !7235
  br label %do.cond, !dbg !7236

do.cond:                                          ; preds = %if.end52
  %80 = load i64, ptr %remaining, align 8, !dbg !7237
  %tobool54 = icmp ne i64 %80, 0, !dbg !7236
  br i1 %tobool54, label %do.body, label %do.end, !dbg !7236, !llvm.loop !7238

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !7240
  br label %cleanup, !dbg !7240

cleanup:                                          ; preds = %do.end, %if.then9
  call void @llvm.lifetime.end.p0(i64 4, ptr %op) #17, !dbg !7240
  call void @llvm.lifetime.end.p0(i64 4, ptr %special_cmd_max_sectors) #17, !dbg !7240
  call void @llvm.lifetime.end.p0(i64 8, ptr %num_sectors) #17, !dbg !7240
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #17, !dbg !7240
  call void @llvm.lifetime.end.p0(i64 8, ptr %remaining) #17, !dbg !7240
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_bvecs) #17, !dbg !7240
  call void @llvm.lifetime.end.p0(i64 4, ptr %offset) #17, !dbg !7240
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #17, !dbg !7240
  call void @llvm.lifetime.end.p0(i64 8, ptr %page) #17, !dbg !7240
  call void @llvm.lifetime.end.p0(i64 8, ptr %bio) #17, !dbg !7240
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !7240

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dec_count(ptr noundef %io, i32 noundef %region, i8 noundef zeroext %error) #0 align 16 !dbg !7241 {
entry:
  %io.addr = alloca ptr, align 8
  %region.addr = alloca i32, align 4
  %error.addr = alloca i8, align 1
  store ptr %io, ptr %io.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %io.addr, metadata !7245, metadata !DIExpression()), !dbg !7248
  store i32 %region, ptr %region.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %region.addr, metadata !7246, metadata !DIExpression()), !dbg !7249
  store i8 %error, ptr %error.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !7247, metadata !DIExpression()), !dbg !7250
  %0 = load i8, ptr %error.addr, align 1, !dbg !7251
  %tobool = icmp ne i8 %0, 0, !dbg !7251
  br i1 %tobool, label %if.then, label %if.end, !dbg !7253

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %region.addr, align 4, !dbg !7254
  %conv = zext i32 %1 to i64, !dbg !7254
  %2 = load ptr, ptr %io.addr, align 8, !dbg !7255
  %error_bits = getelementptr inbounds %struct.io, ptr %2, i32 0, i32 0, !dbg !7256
  call void @set_bit(i64 noundef %conv, ptr noundef %error_bits) #18, !dbg !7257
  br label %if.end, !dbg !7257

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %io.addr, align 8, !dbg !7258
  %count = getelementptr inbounds %struct.io, ptr %3, i32 0, i32 1, !dbg !7260
  %call = call zeroext i1 @atomic_dec_and_test(ptr noundef %count) #18, !dbg !7261
  br i1 %call, label %if.then1, label %if.end2, !dbg !7262

if.then1:                                         ; preds = %if.end
  %4 = load ptr, ptr %io.addr, align 8, !dbg !7263
  call void @complete_io(ptr noundef %4) #18, !dbg !7264
  br label %if.end2, !dbg !7264

if.end2:                                          ; preds = %if.then1, %if.end
  ret void, !dbg !7265
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @bdev_get_queue(ptr noundef %bdev) #5 align 16 !dbg !7266 {
entry:
  %bdev.addr = alloca ptr, align 8
  store ptr %bdev, ptr %bdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bdev.addr, metadata !7270, metadata !DIExpression()), !dbg !7271
  %0 = load ptr, ptr %bdev.addr, align 8, !dbg !7272
  %bd_queue = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 3, !dbg !7273
  %1 = load ptr, ptr %bd_queue, align 8, !dbg !7273
  ret ptr %1, !dbg !7274
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @bdev_max_discard_sectors(ptr noundef %bdev) #5 align 16 !dbg !7275 {
entry:
  %bdev.addr = alloca ptr, align 8
  store ptr %bdev, ptr %bdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bdev.addr, metadata !7279, metadata !DIExpression()), !dbg !7280
  %0 = load ptr, ptr %bdev.addr, align 8, !dbg !7281
  %call = call ptr @bdev_get_queue(ptr noundef %0) #18, !dbg !7282
  %limits = getelementptr inbounds %struct.request_queue, ptr %call, i32 0, i32 33, !dbg !7283
  %max_discard_sectors = getelementptr inbounds %struct.queue_limits, ptr %limits, i32 0, i32 14, !dbg !7284
  %1 = load i32, ptr %max_discard_sectors, align 4, !dbg !7284
  ret i32 %1, !dbg !7285
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_inc(ptr noundef %v) #10 align 16 !dbg !7286 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7290, metadata !DIExpression()), !dbg !7291
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7292
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #18, !dbg !7293
  %1 = load ptr, ptr %v.addr, align 8, !dbg !7294
  call void @raw_atomic_inc(ptr noundef %1) #18, !dbg !7295
  ret void, !dbg !7296
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @bio_max_segs(i32 noundef %nr_segs) #5 align 16 !dbg !7297 {
entry:
  %nr_segs.addr = alloca i32, align 4
  %__UNIQUE_ID___x317 = alloca i32, align 4
  %__UNIQUE_ID___y318 = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %nr_segs, ptr %nr_segs.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr_segs.addr, metadata !7301, metadata !DIExpression()), !dbg !7305
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x317) #17, !dbg !7306
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x317, metadata !7302, metadata !DIExpression()), !dbg !7306
  %0 = load i32, ptr %nr_segs.addr, align 4, !dbg !7306
  store i32 %0, ptr %__UNIQUE_ID___x317, align 4, !dbg !7306
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y318) #17, !dbg !7306
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y318, metadata !7304, metadata !DIExpression()), !dbg !7306
  store i32 256, ptr %__UNIQUE_ID___y318, align 4, !dbg !7306
  %1 = load i32, ptr %__UNIQUE_ID___x317, align 4, !dbg !7306
  %2 = load i32, ptr %__UNIQUE_ID___y318, align 4, !dbg !7306
  %cmp = icmp ult i32 %1, %2, !dbg !7306
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !7306

cond.true:                                        ; preds = %entry
  %3 = load i32, ptr %__UNIQUE_ID___x317, align 4, !dbg !7306
  br label %cond.end, !dbg !7306

cond.false:                                       ; preds = %entry
  %4 = load i32, ptr %__UNIQUE_ID___y318, align 4, !dbg !7306
  br label %cond.end, !dbg !7306

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ %4, %cond.false ], !dbg !7306
  store i32 %cond, ptr %tmp, align 4, !dbg !7306
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y318) #17, !dbg !7307
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x317) #17, !dbg !7307
  %5 = load i32, ptr %tmp, align 4, !dbg !7306
  ret i32 %5, !dbg !7308
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7309 dso_local ptr @bio_alloc_bioset(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @endio(ptr noundef %bio) #0 align 16 !dbg !7312 {
entry:
  %bio.addr = alloca ptr, align 8
  %io = alloca ptr, align 8
  %region = alloca i32, align 4
  %error = alloca i8, align 1
  store ptr %bio, ptr %bio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bio.addr, metadata !7314, metadata !DIExpression()), !dbg !7318
  call void @llvm.lifetime.start.p0(i64 8, ptr %io) #17, !dbg !7319
  call void @llvm.dbg.declare(metadata ptr %io, metadata !7315, metadata !DIExpression()), !dbg !7320
  call void @llvm.lifetime.start.p0(i64 4, ptr %region) #17, !dbg !7321
  call void @llvm.dbg.declare(metadata ptr %region, metadata !7316, metadata !DIExpression()), !dbg !7322
  call void @llvm.lifetime.start.p0(i64 1, ptr %error) #17, !dbg !7323
  call void @llvm.dbg.declare(metadata ptr %error, metadata !7317, metadata !DIExpression()), !dbg !7324
  %0 = load ptr, ptr %bio.addr, align 8, !dbg !7325
  %bi_status = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 5, !dbg !7327
  %1 = load i8, ptr %bi_status, align 8, !dbg !7327
  %conv = zext i8 %1 to i32, !dbg !7325
  %tobool = icmp ne i32 %conv, 0, !dbg !7325
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !7328

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %bio.addr, align 8, !dbg !7329
  %call = call i32 @bio_op(ptr noundef %2) #18, !dbg !7329
  %call1 = call zeroext i1 @op_is_write(i32 noundef %call) #18, !dbg !7329
  %3 = zext i1 %call1 to i64, !dbg !7329
  %cond = select i1 %call1, i32 1, i32 0, !dbg !7329
  %cmp = icmp eq i32 %cond, 0, !dbg !7330
  br i1 %cmp, label %if.then, label %if.end, !dbg !7331

if.then:                                          ; preds = %land.lhs.true
  %4 = load ptr, ptr %bio.addr, align 8, !dbg !7332
  call void @zero_fill_bio(ptr noundef %4) #18, !dbg !7333
  br label %if.end, !dbg !7333

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %5 = load ptr, ptr %bio.addr, align 8, !dbg !7334
  call void @retrieve_io_and_region_from_bio(ptr noundef %5, ptr noundef %io, ptr noundef %region) #18, !dbg !7335
  %6 = load ptr, ptr %bio.addr, align 8, !dbg !7336
  %bi_status4 = getelementptr inbounds %struct.bio, ptr %6, i32 0, i32 5, !dbg !7337
  %7 = load i8, ptr %bi_status4, align 8, !dbg !7337
  store i8 %7, ptr %error, align 1, !dbg !7338
  %8 = load ptr, ptr %bio.addr, align 8, !dbg !7339
  call void @bio_put(ptr noundef %8) #18, !dbg !7340
  %9 = load ptr, ptr %io, align 8, !dbg !7341
  %10 = load i32, ptr %region, align 4, !dbg !7342
  %11 = load i8, ptr %error, align 1, !dbg !7343
  call void @dec_count(ptr noundef %9, i32 noundef %10, i8 noundef zeroext %11) #18, !dbg !7344
  call void @llvm.lifetime.end.p0(i64 1, ptr %error) #17, !dbg !7345
  call void @llvm.lifetime.end.p0(i64 4, ptr %region) #17, !dbg !7345
  call void @llvm.lifetime.end.p0(i64 8, ptr %io) #17, !dbg !7345
  ret void, !dbg !7345
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @store_io_and_region_in_bio(ptr noundef %bio, ptr noundef %io, i32 noundef %region) #0 align 16 !dbg !7346 {
entry:
  %bio.addr = alloca ptr, align 8
  %io.addr = alloca ptr, align 8
  %region.addr = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %bio, ptr %bio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bio.addr, metadata !7350, metadata !DIExpression()), !dbg !7353
  store ptr %io, ptr %io.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %io.addr, metadata !7351, metadata !DIExpression()), !dbg !7354
  store i32 %region, ptr %region.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %region.addr, metadata !7352, metadata !DIExpression()), !dbg !7355
  %0 = load ptr, ptr %io.addr, align 8, !dbg !7356
  %1 = ptrtoint ptr %0 to i64, !dbg !7356
  %and = and i64 %1, 63, !dbg !7356
  %cmp = icmp eq i64 %and, 0, !dbg !7356
  %lnot = xor i1 %cmp, true, !dbg !7356
  %lnot1 = xor i1 %lnot, true, !dbg !7356
  %lnot2 = xor i1 %lnot1, true, !dbg !7356
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !7356
  %conv = sext i32 %lnot.ext to i64, !dbg !7356
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7356
  %tobool = icmp ne i64 %expval, 0, !dbg !7356
  br i1 %tobool, label %if.then, label %if.end, !dbg !7358

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !7359

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !7362

do.end:                                           ; preds = %do.body
  %2 = load ptr, ptr %io.addr, align 8, !dbg !7359
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.6, ptr noundef %2) #22, !dbg !7359
  store i32 %call, ptr %tmp, align 4, !dbg !7362
  %3 = load i32, ptr %tmp, align 4, !dbg !7359
  br label %do.body3, !dbg !7364

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !7365

do.body4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !7367

do.end5:                                          ; preds = %do.body4
  br label %do.body6, !dbg !7365

do.body6:                                         ; preds = %do.end5
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, i32 98, i32 0, i64 12) #17, !dbg !7369, !srcloc !7371
  br label %do.end7, !dbg !7369

do.end7:                                          ; preds = %do.body6
  unreachable, !dbg !7365

do.end8:                                          ; No predecessors!
  br label %if.end, !dbg !7372

if.end:                                           ; preds = %do.end8, %entry
  %4 = load ptr, ptr %io.addr, align 8, !dbg !7373
  %5 = ptrtoint ptr %4 to i64, !dbg !7374
  %6 = load i32, ptr %region.addr, align 4, !dbg !7375
  %conv9 = zext i32 %6 to i64, !dbg !7375
  %or = or i64 %5, %conv9, !dbg !7376
  %7 = inttoptr i64 %or to ptr, !dbg !7377
  %8 = load ptr, ptr %bio.addr, align 8, !dbg !7378
  %bi_private = getelementptr inbounds %struct.bio, ptr %8, i32 0, i32 10, !dbg !7379
  store ptr %7, ptr %bi_private, align 8, !dbg !7380
  ret void, !dbg !7381
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @to_bytes(i64 noundef %n) #5 align 16 !dbg !7382 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !7387, metadata !DIExpression()), !dbg !7388
  %0 = load i64, ptr %n.addr, align 8, !dbg !7389
  %shl = shl i64 %0, 9, !dbg !7390
  ret i64 %shl, !dbg !7391
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7392 dso_local i32 @bio_add_page(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @to_sector(i64 noundef %n) #5 align 16 !dbg !7395 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !7399, metadata !DIExpression()), !dbg !7400
  %0 = load i64, ptr %n.addr, align 8, !dbg !7401
  %shr = lshr i64 %0, 9, !dbg !7402
  ret i64 %shr, !dbg !7403
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7404 dso_local void @submit_bio(ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #10 align 16 !dbg !7405 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7407, metadata !DIExpression()), !dbg !7409
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7408, metadata !DIExpression()), !dbg !7410
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7411
  %1 = load i64, ptr %size.addr, align 8, !dbg !7412
  %conv = trunc i64 %1 to i32, !dbg !7412
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #18, !dbg !7413
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7414
  %3 = load i64, ptr %size.addr, align 8, !dbg !7414
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #18, !dbg !7414
  ret void, !dbg !7415
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_inc(ptr noundef %v) #10 align 16 !dbg !7416 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7418, metadata !DIExpression()), !dbg !7419
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7420
  call void @arch_atomic_inc(ptr noundef %0) #18, !dbg !7421
  ret void, !dbg !7422
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_inc(ptr noundef %v) #10 align 16 !dbg !7423 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7425, metadata !DIExpression()), !dbg !7426
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7427
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !7428
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #17, !dbg !7429, !srcloc !7430
  ret void, !dbg !7431
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @bio_op(ptr noundef %bio) #5 align 16 !dbg !7432 {
entry:
  %bio.addr = alloca ptr, align 8
  store ptr %bio, ptr %bio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bio.addr, metadata !7438, metadata !DIExpression()), !dbg !7439
  %0 = load ptr, ptr %bio.addr, align 8, !dbg !7440
  %bi_opf = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 2, !dbg !7441
  %1 = load i32, ptr %bi_opf, align 8, !dbg !7441
  %and = and i32 %1, 255, !dbg !7442
  ret i32 %and, !dbg !7443
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @zero_fill_bio(ptr noundef %bio) #5 align 16 !dbg !7444 {
entry:
  %bio.addr = alloca ptr, align 8
  store ptr %bio, ptr %bio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bio.addr, metadata !7446, metadata !DIExpression()), !dbg !7447
  %0 = load ptr, ptr %bio.addr, align 8, !dbg !7448
  %1 = load ptr, ptr %bio.addr, align 8, !dbg !7449
  %bi_iter = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 7, !dbg !7450
  call void @zero_fill_bio_iter(ptr noundef %0, ptr noundef byval(%struct.bvec_iter) align 8 %bi_iter) #18, !dbg !7451
  ret void, !dbg !7452
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @retrieve_io_and_region_from_bio(ptr noundef %bio, ptr noundef %io, ptr noundef %region) #0 align 16 !dbg !7453 {
entry:
  %bio.addr = alloca ptr, align 8
  %io.addr = alloca ptr, align 8
  %region.addr = alloca ptr, align 8
  %val = alloca i64, align 8
  store ptr %bio, ptr %bio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bio.addr, metadata !7458, metadata !DIExpression()), !dbg !7462
  store ptr %io, ptr %io.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %io.addr, metadata !7459, metadata !DIExpression()), !dbg !7463
  store ptr %region, ptr %region.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %region.addr, metadata !7460, metadata !DIExpression()), !dbg !7464
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #17, !dbg !7465
  call void @llvm.dbg.declare(metadata ptr %val, metadata !7461, metadata !DIExpression()), !dbg !7466
  %0 = load ptr, ptr %bio.addr, align 8, !dbg !7467
  %bi_private = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 10, !dbg !7468
  %1 = load ptr, ptr %bi_private, align 8, !dbg !7468
  %2 = ptrtoint ptr %1 to i64, !dbg !7469
  store i64 %2, ptr %val, align 8, !dbg !7466
  %3 = load i64, ptr %val, align 8, !dbg !7470
  %and = and i64 %3, -64, !dbg !7471
  %4 = inttoptr i64 %and to ptr, !dbg !7472
  %5 = load ptr, ptr %io.addr, align 8, !dbg !7473
  store ptr %4, ptr %5, align 8, !dbg !7474
  %6 = load i64, ptr %val, align 8, !dbg !7475
  %and1 = and i64 %6, 63, !dbg !7476
  %conv = trunc i64 %and1 to i32, !dbg !7475
  %7 = load ptr, ptr %region.addr, align 8, !dbg !7477
  store i32 %conv, ptr %7, align 4, !dbg !7478
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #17, !dbg !7479
  ret void, !dbg !7479
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7480 dso_local void @bio_put(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7481 dso_local void @zero_fill_bio_iter(ptr noundef, ptr noundef byval(%struct.bvec_iter) align 8) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !7484 dso_local i32 @_printk(ptr noundef, ...) #15

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #10 align 16 !dbg !7488 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7495, metadata !DIExpression()), !dbg !7497
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7496, metadata !DIExpression()), !dbg !7498
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7499
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7500
  %div = sdiv i64 %1, 64, !dbg !7500
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !7501
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #18, !dbg !7502
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7503
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !7504
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #18, !dbg !7505
  ret void, !dbg !7506
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_dec_and_test(ptr noundef %v) #10 align 16 !dbg !7507 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7511, metadata !DIExpression()), !dbg !7512
  br label %do.body, !dbg !7513

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !7514

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7516
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #18, !dbg !7517
  %1 = load ptr, ptr %v.addr, align 8, !dbg !7518
  %call = call zeroext i1 @raw_atomic_dec_and_test(ptr noundef %1) #18, !dbg !7519
  ret i1 %call, !dbg !7520
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @complete_io(ptr noundef %io) #0 align 16 !dbg !7521 {
entry:
  %io.addr = alloca ptr, align 8
  %error_bits = alloca i64, align 8
  %fn = alloca ptr, align 8
  %context = alloca ptr, align 8
  store ptr %io, ptr %io.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %io.addr, metadata !7525, metadata !DIExpression()), !dbg !7529
  call void @llvm.lifetime.start.p0(i64 8, ptr %error_bits) #17, !dbg !7530
  call void @llvm.dbg.declare(metadata ptr %error_bits, metadata !7526, metadata !DIExpression()), !dbg !7531
  %0 = load ptr, ptr %io.addr, align 8, !dbg !7532
  %error_bits1 = getelementptr inbounds %struct.io, ptr %0, i32 0, i32 0, !dbg !7533
  %1 = load i64, ptr %error_bits1, align 64, !dbg !7533
  store i64 %1, ptr %error_bits, align 8, !dbg !7531
  call void @llvm.lifetime.start.p0(i64 8, ptr %fn) #17, !dbg !7534
  call void @llvm.dbg.declare(metadata ptr %fn, metadata !7527, metadata !DIExpression()), !dbg !7535
  %2 = load ptr, ptr %io.addr, align 8, !dbg !7536
  %callback = getelementptr inbounds %struct.io, ptr %2, i32 0, i32 3, !dbg !7537
  %3 = load ptr, ptr %callback, align 8, !dbg !7537
  store ptr %3, ptr %fn, align 8, !dbg !7535
  call void @llvm.lifetime.start.p0(i64 8, ptr %context) #17, !dbg !7538
  call void @llvm.dbg.declare(metadata ptr %context, metadata !7528, metadata !DIExpression()), !dbg !7539
  %4 = load ptr, ptr %io.addr, align 8, !dbg !7540
  %context2 = getelementptr inbounds %struct.io, ptr %4, i32 0, i32 4, !dbg !7541
  %5 = load ptr, ptr %context2, align 32, !dbg !7541
  store ptr %5, ptr %context, align 8, !dbg !7539
  %6 = load ptr, ptr %io.addr, align 8, !dbg !7542
  %vma_invalidate_size = getelementptr inbounds %struct.io, ptr %6, i32 0, i32 6, !dbg !7544
  %7 = load i64, ptr %vma_invalidate_size, align 16, !dbg !7544
  %tobool = icmp ne i64 %7, 0, !dbg !7542
  br i1 %tobool, label %if.then, label %if.end, !dbg !7545

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %io.addr, align 8, !dbg !7546
  %vma_invalidate_address = getelementptr inbounds %struct.io, ptr %8, i32 0, i32 5, !dbg !7547
  %9 = load ptr, ptr %vma_invalidate_address, align 8, !dbg !7547
  %10 = load ptr, ptr %io.addr, align 8, !dbg !7548
  %vma_invalidate_size3 = getelementptr inbounds %struct.io, ptr %10, i32 0, i32 6, !dbg !7549
  %11 = load i64, ptr %vma_invalidate_size3, align 16, !dbg !7549
  %conv = trunc i64 %11 to i32, !dbg !7548
  call void @invalidate_kernel_vmap_range(ptr noundef %9, i32 noundef %conv) #18, !dbg !7550
  br label %if.end, !dbg !7550

if.end:                                           ; preds = %if.then, %entry
  %12 = load ptr, ptr %io.addr, align 8, !dbg !7551
  %13 = load ptr, ptr %io.addr, align 8, !dbg !7552
  %client = getelementptr inbounds %struct.io, ptr %13, i32 0, i32 2, !dbg !7553
  %14 = load ptr, ptr %client, align 16, !dbg !7553
  %pool = getelementptr inbounds %struct.dm_io_client, ptr %14, i32 0, i32 0, !dbg !7554
  call void @mempool_free(ptr noundef %12, ptr noundef %pool) #18, !dbg !7555
  %15 = load ptr, ptr %fn, align 8, !dbg !7556
  %16 = load i64, ptr %error_bits, align 8, !dbg !7557
  %17 = load ptr, ptr %context, align 8, !dbg !7558
  call void %15(i64 noundef %16, ptr noundef %17) #18, !dbg !7556
  call void @llvm.lifetime.end.p0(i64 8, ptr %context) #17, !dbg !7559
  call void @llvm.lifetime.end.p0(i64 8, ptr %fn) #17, !dbg !7559
  call void @llvm.lifetime.end.p0(i64 8, ptr %error_bits) #17, !dbg !7559
  ret void, !dbg !7559
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #10 align 16 !dbg !7560 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7563, metadata !DIExpression()), !dbg !7565
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7564, metadata !DIExpression()), !dbg !7566
  %0 = load i64, ptr %nr.addr, align 8, !dbg !7567
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !7569
  br i1 %1, label %if.then, label %if.else, !dbg !7570

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !7571
  %3 = load i64, ptr %nr.addr, align 8, !dbg !7571
  %shr = ashr i64 %3, 3, !dbg !7571
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !7571
  %4 = load i64, ptr %nr.addr, align 8, !dbg !7573
  %and = and i64 %4, 7, !dbg !7573
  %sh_prom = trunc i64 %and to i32, !dbg !7573
  %shl = shl i32 1, %sh_prom, !dbg !7573
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #17, !dbg !7574, !srcloc !7575
  br label %if.end, !dbg !7576

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !7577
  %6 = load i64, ptr %nr.addr, align 8, !dbg !7579
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #17, !dbg !7580, !srcloc !7581
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !7582
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_dec_and_test(ptr noundef %v) #10 align 16 !dbg !7583 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7585, metadata !DIExpression()), !dbg !7586
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7587
  %call = call zeroext i1 @arch_atomic_dec_and_test(ptr noundef %0) #18, !dbg !7588
  ret i1 %call, !dbg !7589
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic_dec_and_test(ptr noundef %v) #10 align 16 !dbg !7590 {
entry:
  %v.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7592, metadata !DIExpression()), !dbg !7595
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #17, !dbg !7596
  call void @llvm.dbg.declare(metadata ptr %c, metadata !7593, metadata !DIExpression()), !dbg !7596
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7596
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !7596
  %1 = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; decl $0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #17, !dbg !7596, !srcloc !7597
  %2 = icmp ult i8 %1, 2, !dbg !7596
  call void @llvm.assume(i1 %2), !dbg !7596
  store i8 %1, ptr %c, align 1, !dbg !7596
  %3 = load i8, ptr %c, align 1, !dbg !7596, !range !6398, !noundef !1516
  %tobool = trunc i8 %3 to i1, !dbg !7596
  %frombool = zext i1 %tobool to i8, !dbg !7596
  store i8 %frombool, ptr %tmp, align 1, !dbg !7596
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #17, !dbg !7598
  %4 = load i8, ptr %tmp, align 1, !dbg !7596, !range !6398, !noundef !1516
  %tobool1 = trunc i8 %4 to i1, !dbg !7596
  ret i1 %tobool1, !dbg !7599
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @invalidate_kernel_vmap_range(ptr noundef %vaddr, i32 noundef %size) #5 align 16 !dbg !7600 {
entry:
  %vaddr.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %vaddr, ptr %vaddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vaddr.addr, metadata !7602, metadata !DIExpression()), !dbg !7604
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7603, metadata !DIExpression()), !dbg !7605
  ret void, !dbg !7606
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7607 dso_local void @mempool_free(ptr noundef, ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }
attributes #18 = { noredzone }
attributes #19 = { noredzone allocsize(0) }
attributes #20 = { noredzone allocsize(2) }
attributes #21 = { noredzone noreturn }
attributes #22 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5664, !5665, !5666, !5667, !5668, !5669, !5670, !5671}
!llvm.ident = !{!5672}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_dm_io_cache", scope: !2, file: !3, line: 44, type: !2258, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/md/.dm-io.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/md/dm-mod\22 -D KBUILD_BASENAME=\22dm_io\22 -D KBUILD_MODNAME=\22dm_mod\22 -D __KBUILD_MODNAME=kmod_dm_mod -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/md/dm-io.ll drivers/md/dm-io.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !256, globals: !5596, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/md/dm-io.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9254c3d02ebf990031809501fa1cc71c")
!4 = !{!5, !13, !18, !23, !29, !41, !47, !54, !59, !67, !75, !81, !90, !95, !100, !106, !114, !122, !138, !144, !151, !158, !163, !168, !173, !178, !182, !187, !193, !200, !205, !215, !233}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !6, line: 312, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!10 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!11 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!12 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writeback_sync_modes", file: !14, line: 32, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/writeback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "529df0d846991cd3030ee9505d2aaa60")
!15 = !{!16, !17}
!16 = !DIEnumerator(name: "WB_SYNC_NONE", value: 0)
!17 = !DIEnumerator(name: "WB_SYNC_ALL", value: 1)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !19, line: 2052, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!20 = !{!21, !22}
!21 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!22 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !24, line: 54, baseType: !7, size: 32, elements: !25)
!24 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!25 = !{!26, !27, !28}
!26 = !DIEnumerator(name: "USRQUOTA", value: 0)
!27 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!28 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "wb_reason", file: !30, line: 44, baseType: !7, size: 32, elements: !31)
!30 = !DIFile(filename: "./include/linux/backing-dev-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48876dd2050c245a6230a2e03c4bc3c9")
!31 = !{!32, !33, !34, !35, !36, !37, !38, !39, !40}
!32 = !DIEnumerator(name: "WB_REASON_BACKGROUND", value: 0)
!33 = !DIEnumerator(name: "WB_REASON_VMSCAN", value: 1)
!34 = !DIEnumerator(name: "WB_REASON_SYNC", value: 2)
!35 = !DIEnumerator(name: "WB_REASON_PERIODIC", value: 3)
!36 = !DIEnumerator(name: "WB_REASON_LAPTOP_TIMER", value: 4)
!37 = !DIEnumerator(name: "WB_REASON_FS_FREE_SPACE", value: 5)
!38 = !DIEnumerator(name: "WB_REASON_FORKER_THREAD", value: 6)
!39 = !DIEnumerator(name: "WB_REASON_FOREIGN_FLUSH", value: 7)
!40 = !DIEnumerator(name: "WB_REASON_MAX", value: 8)
!41 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !42, line: 45, baseType: !7, size: 32, elements: !43)
!42 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!43 = !{!44, !45, !46}
!44 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!45 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!46 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !48, line: 487, baseType: !7, size: 32, elements: !49)
!48 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!49 = !{!50, !51, !52, !53}
!50 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!51 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!52 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!53 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!54 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !55, line: 65, baseType: !7, size: 32, elements: !56)
!55 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!56 = !{!57, !58}
!57 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!58 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !60, line: 620, baseType: !7, size: 32, elements: !61)
!60 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!61 = !{!62, !63, !64, !65, !66}
!62 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!63 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!64 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!65 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!66 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !60, line: 597, baseType: !68, size: 32, elements: !69)
!68 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!69 = !{!70, !71, !72, !73, !74}
!70 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!71 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!72 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!73 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!74 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !76, line: 26, baseType: !7, size: 32, elements: !77)
!76 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!77 = !{!78, !79, !80}
!78 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!79 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!80 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !48, line: 547, baseType: !7, size: 32, elements: !82)
!82 = !{!83, !84, !85, !86, !87, !88, !89}
!83 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!84 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!85 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!86 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!87 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!88 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!89 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!90 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !48, line: 564, baseType: !7, size: 32, elements: !91)
!91 = !{!92, !93, !94}
!92 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!93 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!94 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !48, line: 577, baseType: !7, size: 32, elements: !96)
!96 = !{!97, !98, !99}
!97 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!98 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!99 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !48, line: 503, baseType: !7, size: 32, elements: !101)
!101 = !{!102, !103, !104, !105}
!102 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!103 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!104 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!105 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!106 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !107, line: 9, baseType: !7, size: 32, elements: !108)
!107 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!108 = !{!109, !110, !111, !112, !113}
!109 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!110 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!111 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!112 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!113 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!114 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !115, line: 68, baseType: !7, size: 32, elements: !116)
!115 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!116 = !{!117, !118, !119, !120, !121}
!117 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!118 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!119 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!120 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!121 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !123, line: 1325, baseType: !7, size: 32, elements: !124)
!123 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!124 = !{!125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137}
!125 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!126 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!127 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!128 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!129 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!130 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!131 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!132 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!133 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!134 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!135 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!136 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!137 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!138 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !139, line: 16, baseType: !7, size: 32, elements: !140)
!139 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!140 = !{!141, !142, !143}
!141 = !DIEnumerator(name: "TT_NONE", value: 0)
!142 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!143 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!144 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !145, line: 51, baseType: !7, size: 32, elements: !146)
!145 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!146 = !{!147, !148, !149, !150}
!147 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!148 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!149 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!150 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !152, line: 15, baseType: !7, size: 32, elements: !153)
!152 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!153 = !{!154, !155, !156, !157}
!154 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!155 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!156 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!157 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!158 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_eh_timer_return", file: !159, line: 276, baseType: !7, size: 32, elements: !160)
!159 = !DIFile(filename: "./include/linux/blk-mq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "62cf1706db3683ee75df9cf32a2cf47d")
!160 = !{!161, !162}
!161 = !DIEnumerator(name: "BLK_EH_DONE", value: 0)
!162 = !DIEnumerator(name: "BLK_EH_RESET_TIMER", value: 1)
!163 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_bounce", file: !164, line: 295, baseType: !7, size: 32, elements: !165)
!164 = !DIFile(filename: "./include/linux/blkdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "802ed60c7d9aff392515db0b7890881d")
!165 = !{!166, !167}
!166 = !DIEnumerator(name: "BLK_BOUNCE_NONE", value: 0)
!167 = !DIEnumerator(name: "BLK_BOUNCE_HIGH", value: 1)
!168 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_zoned_model", file: !164, line: 285, baseType: !7, size: 32, elements: !169)
!169 = !{!170, !171, !172}
!170 = !DIEnumerator(name: "BLK_ZONED_NONE", value: 0)
!171 = !DIEnumerator(name: "BLK_ZONED_HA", value: 1)
!172 = !DIEnumerator(name: "BLK_ZONED_HM", value: 2)
!173 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mq_rq_state", file: !159, line: 68, baseType: !7, size: 32, elements: !174)
!174 = !{!175, !176, !177}
!175 = !DIEnumerator(name: "MQ_RQ_IDLE", value: 0)
!176 = !DIEnumerator(name: "MQ_RQ_IN_FLIGHT", value: 1)
!177 = !DIEnumerator(name: "MQ_RQ_COMPLETE", value: 2)
!178 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rq_end_io_ret", file: !159, line: 18, baseType: !7, size: 32, elements: !179)
!179 = !{!180, !181}
!180 = !DIEnumerator(name: "RQ_END_IO_NONE", value: 0)
!181 = !DIEnumerator(name: "RQ_END_IO_FREE", value: 1)
!182 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_unique_id", file: !164, line: 1381, baseType: !7, size: 32, elements: !183)
!183 = !{!184, !185, !186}
!184 = !DIEnumerator(name: "BLK_UID_T10", value: 1)
!185 = !DIEnumerator(name: "BLK_UID_EUI64", value: 2)
!186 = !DIEnumerator(name: "BLK_UID_NAA", value: 3)
!187 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !188, line: 410, baseType: !7, size: 32, elements: !189)
!188 = !DIFile(filename: "./include/linux/bio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48d164cf34dda85459af1fe5d2b8d08f")
!189 = !{!190, !191, !192}
!190 = !DIEnumerator(name: "BIOSET_NEED_BVECS", value: 1)
!191 = !DIEnumerator(name: "BIOSET_NEED_RESCUER", value: 2)
!192 = !DIEnumerator(name: "BIOSET_PERCPU_CACHE", value: 4)
!193 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dm_io_mem_type", file: !194, line: 32, baseType: !7, size: 32, elements: !195)
!194 = !DIFile(filename: "./include/linux/dm-io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e1448e956caa3df732c0998b25d2c51")
!195 = !{!196, !197, !198, !199}
!196 = !DIEnumerator(name: "DM_IO_PAGE_LIST", value: 0)
!197 = !DIEnumerator(name: "DM_IO_BIO", value: 1)
!198 = !DIEnumerator(name: "DM_IO_VMA", value: 2)
!199 = !DIEnumerator(name: "DM_IO_KMEM", value: 3)
!200 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !201, line: 10, baseType: !7, size: 32, elements: !202)
!201 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!202 = !{!203, !204}
!203 = !DIEnumerator(name: "false", value: 0)
!204 = !DIEnumerator(name: "true", value: 1)
!205 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !206, line: 364, baseType: !7, size: 32, elements: !207)
!206 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!207 = !{!208, !209, !210, !211, !212, !213, !214}
!208 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!209 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!210 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!211 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!212 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!213 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!214 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!215 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "req_op", file: !216, line: 371, baseType: !7, size: 32, elements: !217)
!216 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!217 = !{!218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232}
!218 = !DIEnumerator(name: "REQ_OP_READ", value: 0)
!219 = !DIEnumerator(name: "REQ_OP_WRITE", value: 1)
!220 = !DIEnumerator(name: "REQ_OP_FLUSH", value: 2)
!221 = !DIEnumerator(name: "REQ_OP_DISCARD", value: 3)
!222 = !DIEnumerator(name: "REQ_OP_SECURE_ERASE", value: 5)
!223 = !DIEnumerator(name: "REQ_OP_WRITE_ZEROES", value: 9)
!224 = !DIEnumerator(name: "REQ_OP_ZONE_OPEN", value: 10)
!225 = !DIEnumerator(name: "REQ_OP_ZONE_CLOSE", value: 11)
!226 = !DIEnumerator(name: "REQ_OP_ZONE_FINISH", value: 12)
!227 = !DIEnumerator(name: "REQ_OP_ZONE_APPEND", value: 13)
!228 = !DIEnumerator(name: "REQ_OP_ZONE_RESET", value: 15)
!229 = !DIEnumerator(name: "REQ_OP_ZONE_RESET_ALL", value: 17)
!230 = !DIEnumerator(name: "REQ_OP_DRV_IN", value: 34)
!231 = !DIEnumerator(name: "REQ_OP_DRV_OUT", value: 35)
!232 = !DIEnumerator(name: "REQ_OP_LAST", value: 36)
!233 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "req_flag_bits", file: !216, line: 404, baseType: !7, size: 32, elements: !234)
!234 = !{!235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255}
!235 = !DIEnumerator(name: "__REQ_FAILFAST_DEV", value: 8)
!236 = !DIEnumerator(name: "__REQ_FAILFAST_TRANSPORT", value: 9)
!237 = !DIEnumerator(name: "__REQ_FAILFAST_DRIVER", value: 10)
!238 = !DIEnumerator(name: "__REQ_SYNC", value: 11)
!239 = !DIEnumerator(name: "__REQ_META", value: 12)
!240 = !DIEnumerator(name: "__REQ_PRIO", value: 13)
!241 = !DIEnumerator(name: "__REQ_NOMERGE", value: 14)
!242 = !DIEnumerator(name: "__REQ_IDLE", value: 15)
!243 = !DIEnumerator(name: "__REQ_INTEGRITY", value: 16)
!244 = !DIEnumerator(name: "__REQ_FUA", value: 17)
!245 = !DIEnumerator(name: "__REQ_PREFLUSH", value: 18)
!246 = !DIEnumerator(name: "__REQ_RAHEAD", value: 19)
!247 = !DIEnumerator(name: "__REQ_BACKGROUND", value: 20)
!248 = !DIEnumerator(name: "__REQ_NOWAIT", value: 21)
!249 = !DIEnumerator(name: "__REQ_POLLED", value: 22)
!250 = !DIEnumerator(name: "__REQ_ALLOC_CACHE", value: 23)
!251 = !DIEnumerator(name: "__REQ_SWAP", value: 24)
!252 = !DIEnumerator(name: "__REQ_DRV", value: 25)
!253 = !DIEnumerator(name: "__REQ_FS_PRIVATE", value: 26)
!254 = !DIEnumerator(name: "__REQ_NOUNMAP", value: 27)
!255 = !DIEnumerator(name: "__REQ_NR_BITS", value: 28)
!256 = !{!257, !259, !260, !261, !264, !7, !1601, !269, !5589, !1256, !5591, !5592, !5594}
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !258, line: 154, baseType: !7)
!258 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!260 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_opf_t", file: !216, line: 256, baseType: !262)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !263, line: 27, baseType: !7)
!263 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !266, line: 31, size: 128, elements: !267)
!266 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b9bd326f7e1a9ed4bc3baca0011068cc")
!267 = !{!268, !5587, !5588}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !265, file: !266, line: 32, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !123, line: 74, size: 512, align: 128, elements: !271)
!271 = !{!272, !273, !5581, !5586}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !270, file: !123, line: 75, baseType: !260, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, scope: !270, file: !123, line: 83, baseType: !274, size: 320, offset: 64)
!274 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !270, file: !123, line: 83, size: 320, elements: !275)
!275 = !{!276, !5507, !5521, !5525, !5580}
!276 = !DIDerivedType(tag: DW_TAG_member, scope: !274, file: !123, line: 84, baseType: !277, size: 320)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !274, file: !123, line: 84, size: 320, elements: !278)
!278 = !{!279, !295, !5501, !5506}
!279 = !DIDerivedType(tag: DW_TAG_member, scope: !277, file: !123, line: 90, baseType: !280, size: 128)
!280 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !277, file: !123, line: 90, size: 128, elements: !281)
!281 = !{!282, !288, !293, !294}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !280, file: !123, line: 91, baseType: !283, size: 128)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !258, line: 190, size: 128, elements: !284)
!284 = !{!285, !287}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !283, file: !258, line: 191, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !283, file: !258, line: 191, baseType: !286, size: 64, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, scope: !280, file: !123, line: 94, baseType: !289, size: 128)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !280, file: !123, line: 94, size: 128, elements: !290)
!290 = !{!291, !292}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !289, file: !123, line: 96, baseType: !259, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !289, file: !123, line: 98, baseType: !7, size: 32, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !280, file: !123, line: 102, baseType: !283, size: 128)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !280, file: !123, line: 103, baseType: !283, size: 128)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !277, file: !123, line: 106, baseType: !296, size: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !19, line: 472, size: 1536, align: 64, elements: !298)
!298 = !{!299, !5394, !5395, !5396, !5397, !5398, !5399, !5400, !5401, !5495, !5496, !5497, !5498, !5499, !5500}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !297, file: !19, line: 473, baseType: !300, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !19, line: 641, size: 4800, elements: !302)
!302 = !{!303, !306, !307, !316, !317, !324, !325, !328, !329, !5332, !5333, !5334, !5335, !5336, !5342, !5343, !5344, !5345, !5346, !5347, !5348, !5349, !5350, !5351, !5352, !5353, !5354, !5355, !5356, !5357, !5358, !5359, !5360, !5365, !5366, !5367, !5368, !5369, !5370, !5371, !5376, !5379, !5380, !5381, !5390, !5391, !5392, !5393}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !301, file: !19, line: 642, baseType: !304, size: 16)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !258, line: 24, baseType: !305)
!305 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !301, file: !19, line: 643, baseType: !305, size: 16, offset: 16)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !301, file: !19, line: 644, baseType: !308, size: 32, offset: 32)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !309, line: 23, baseType: !310)
!309 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !309, line: 21, size: 32, elements: !311)
!311 = !{!312}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !310, file: !309, line: 22, baseType: !313, size: 32)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !258, line: 37, baseType: !314)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !315, line: 49, baseType: !7)
!315 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!316 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !301, file: !19, line: 645, baseType: !283, size: 128, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !301, file: !19, line: 646, baseType: !318, size: 32, offset: 192)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !309, line: 28, baseType: !319)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !309, line: 26, size: 32, elements: !320)
!320 = !{!321}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !319, file: !309, line: 27, baseType: !322, size: 32)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !258, line: 38, baseType: !323)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !315, line: 50, baseType: !7)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !301, file: !19, line: 647, baseType: !7, size: 32, offset: 224)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !301, file: !19, line: 650, baseType: !326, size: 64, offset: 256)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !19, line: 607, flags: DIFlagFwdDecl)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !301, file: !19, line: 651, baseType: !326, size: 64, offset: 320)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !301, file: !19, line: 654, baseType: !330, size: 64, offset: 384)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !332)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !19, line: 1966, size: 2048, align: 512, elements: !333)
!333 = !{!334, !5166, !5176, !5180, !5184, !5188, !5192, !5196, !5200, !5204, !5208, !5209, !5213, !5217, !5254, !5283, !5287, !5293, !5297, !5301, !5305, !5309, !5313, !5319, !5323}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !332, file: !19, line: 1967, baseType: !335, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DISubroutineType(types: !337)
!337 = !{!338, !300, !338, !7}
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !340, line: 82, size: 1536, elements: !341)
!340 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!341 = !{!342, !343, !353, !361, !362, !383, !384, !388, !439, !5150, !5151, !5152, !5153, !5158, !5159, !5160}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !339, file: !340, line: 84, baseType: !7, size: 32)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !339, file: !340, line: 85, baseType: !344, size: 32, offset: 32)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !345, line: 275, baseType: !346)
!345 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !345, line: 275, size: 32, elements: !347)
!347 = !{!348}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !346, file: !345, line: 275, baseType: !349, size: 32)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !345, line: 69, baseType: !350)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !345, line: 64, size: 32, elements: !351)
!351 = !{!352}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !350, file: !345, line: 65, baseType: !7, size: 32)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !339, file: !340, line: 86, baseType: !354, size: 128, offset: 64)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !355, line: 38, size: 128, elements: !356)
!355 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!356 = !{!357, !359}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !354, file: !355, line: 39, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !354, file: !355, line: 39, baseType: !360, size: 64, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !339, file: !340, line: 87, baseType: !338, size: 64, offset: 192)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !339, file: !340, line: 88, baseType: !363, size: 128, offset: 256)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !340, line: 49, size: 128, elements: !364)
!364 = !{!365, !379}
!365 = !DIDerivedType(tag: DW_TAG_member, scope: !363, file: !340, line: 50, baseType: !366, size: 64)
!366 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !363, file: !340, line: 50, size: 64, elements: !367)
!367 = !{!368, !375}
!368 = !DIDerivedType(tag: DW_TAG_member, scope: !366, file: !340, line: 51, baseType: !369, size: 64)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !366, file: !340, line: 51, size: 64, elements: !370)
!370 = !{!371, !374}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !369, file: !340, line: 52, baseType: !372, size: 32)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !373, line: 21, baseType: !262)
!373 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!374 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !369, file: !340, line: 52, baseType: !372, size: 32, offset: 32)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !366, file: !340, line: 54, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !373, line: 23, baseType: !377)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !263, line: 31, baseType: !378)
!378 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !363, file: !340, line: 56, baseType: !380, size: 64, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !382)
!382 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !339, file: !340, line: 89, baseType: !300, size: 64, offset: 384)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !339, file: !340, line: 91, baseType: !385, size: 256, offset: 448)
!385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !382, size: 256, elements: !386)
!386 = !{!387}
!387 = !DISubrange(count: 32)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !339, file: !340, line: 94, baseType: !389, size: 64, offset: 704)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !390, line: 25, size: 64, elements: !391)
!390 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!391 = !{!392}
!392 = !DIDerivedType(tag: DW_TAG_member, scope: !389, file: !390, line: 26, baseType: !393, size: 64)
!393 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !389, file: !390, line: 26, size: 64, elements: !394)
!394 = !{!395, !396}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !393, file: !390, line: 28, baseType: !377, size: 64, align: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, scope: !393, file: !390, line: 30, baseType: !397, size: 64)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !393, file: !390, line: 30, size: 64, elements: !398)
!398 = !{!399, !438}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !397, file: !390, line: 31, baseType: !400, size: 32)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !401, line: 29, baseType: !402)
!401 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !401, line: 17, size: 32, elements: !403)
!403 = !{!404}
!404 = !DIDerivedType(tag: DW_TAG_member, scope: !402, file: !401, line: 18, baseType: !405, size: 32)
!405 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !402, file: !401, line: 18, size: 32, elements: !406)
!406 = !{!407}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !405, file: !401, line: 19, baseType: !408, size: 32)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !409, line: 14, size: 32, elements: !410)
!409 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!410 = !{!411}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !408, file: !409, line: 15, baseType: !412, size: 32)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !413, line: 44, baseType: !414)
!413 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !413, line: 14, size: 32, elements: !415)
!415 = !{!416}
!416 = !DIDerivedType(tag: DW_TAG_member, scope: !414, file: !413, line: 15, baseType: !417, size: 32)
!417 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !414, file: !413, line: 15, size: 32, elements: !418)
!418 = !{!419, !424, !431}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !417, file: !413, line: 16, baseType: !420, size: 32)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !258, line: 174, baseType: !421)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !258, line: 172, size: 32, elements: !422)
!422 = !{!423}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !421, file: !258, line: 173, baseType: !68, size: 32)
!424 = !DIDerivedType(tag: DW_TAG_member, scope: !417, file: !413, line: 24, baseType: !425, size: 16)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !417, file: !413, line: 24, size: 16, elements: !426)
!426 = !{!427, !430}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !425, file: !413, line: 25, baseType: !428, size: 8)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !373, line: 17, baseType: !429)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !263, line: 21, baseType: !382)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !425, file: !413, line: 26, baseType: !428, size: 8, offset: 8)
!431 = !DIDerivedType(tag: DW_TAG_member, scope: !417, file: !413, line: 28, baseType: !432, size: 32)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !417, file: !413, line: 28, size: 32, elements: !433)
!433 = !{!434, !437}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !432, file: !413, line: 29, baseType: !435, size: 16)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !373, line: 19, baseType: !436)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !263, line: 24, baseType: !305)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !432, file: !413, line: 30, baseType: !435, size: 16, offset: 16)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !397, file: !390, line: 32, baseType: !68, size: 32, offset: 32)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !339, file: !340, line: 95, baseType: !440, size: 64, offset: 768)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !442)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !340, line: 128, size: 1024, align: 512, elements: !443)
!443 = !{!444, !448, !449, !456, !465, !469, !473, !477, !478, !482, !487, !5140, !5144}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !442, file: !340, line: 129, baseType: !445, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DISubroutineType(types: !447)
!447 = !{!68, !338, !7}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !442, file: !340, line: 130, baseType: !445, size: 64, offset: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !442, file: !340, line: 131, baseType: !450, size: 64, offset: 128)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{!68, !453, !455}
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !339)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !442, file: !340, line: 132, baseType: !457, size: 64, offset: 192)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DISubroutineType(types: !459)
!459 = !{!68, !453, !7, !460, !463}
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !462)
!462 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !363)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !442, file: !340, line: 134, baseType: !466, size: 64, offset: 256)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{!68, !453}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !442, file: !340, line: 135, baseType: !470, size: 64, offset: 320)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{!68, !338}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !442, file: !340, line: 136, baseType: !474, size: 64, offset: 384)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DISubroutineType(types: !476)
!476 = !{null, !338}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !442, file: !340, line: 137, baseType: !474, size: 64, offset: 448)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !442, file: !340, line: 138, baseType: !479, size: 64, offset: 512)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DISubroutineType(types: !481)
!481 = !{null, !338, !300}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !442, file: !340, line: 139, baseType: !483, size: 64, offset: 576)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DISubroutineType(types: !485)
!485 = !{!486, !338, !486, !68}
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !442, file: !340, line: 140, baseType: !488, size: 64, offset: 640)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DISubroutineType(types: !490)
!490 = !{!491, !5139}
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !493, line: 70, size: 256, elements: !494)
!493 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!494 = !{!495, !496, !5135, !5136}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !492, file: !493, line: 71, baseType: !338, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !492, file: !493, line: 72, baseType: !497, size: 64, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !19, line: 1190, size: 10752, elements: !499)
!499 = !{!500, !501, !504, !505, !506, !510, !4694, !4846, !4886, !4971, !4975, !4976, !4977, !4978, !4979, !4980, !4981, !4982, !4983, !4988, !4992, !4993, !4994, !5000, !5001, !5004, !5005, !5006, !5047, !5069, !5070, !5071, !5072, !5073, !5074, !5077, !5078, !5085, !5086, !5087, !5088, !5089, !5104, !5105, !5106, !5107, !5108, !5109, !5110, !5111, !5126, !5127, !5128, !5129, !5130, !5131, !5132, !5133, !5134}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !498, file: !19, line: 1191, baseType: !283, size: 128)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !498, file: !19, line: 1192, baseType: !502, size: 32, offset: 128)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !258, line: 21, baseType: !503)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !258, line: 18, baseType: !372)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !498, file: !19, line: 1193, baseType: !382, size: 8, offset: 160)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !498, file: !19, line: 1194, baseType: !260, size: 64, offset: 192)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !498, file: !19, line: 1195, baseType: !507, size: 64, offset: 256)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !258, line: 52, baseType: !508)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !315, line: 88, baseType: !509)
!509 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !498, file: !19, line: 1196, baseType: !511, size: 64, offset: 320)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !19, line: 2366, size: 576, elements: !513)
!513 = !{!514, !515, !516, !522, !526, !530, !534, !4682, !4683, !4684, !4686, !4687, !4688, !4690, !4691, !4692, !4693}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !512, file: !19, line: 2367, baseType: !460, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !512, file: !19, line: 2368, baseType: !68, size: 32, offset: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !512, file: !19, line: 2376, baseType: !517, size: 64, offset: 128)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DISubroutineType(types: !519)
!519 = !{!68, !520}
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !493, line: 21, flags: DIFlagFwdDecl)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !512, file: !19, line: 2377, baseType: !523, size: 64, offset: 192)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !525)
!525 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !19, line: 75, flags: DIFlagFwdDecl)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !512, file: !19, line: 2378, baseType: !527, size: 64, offset: 256)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{!338, !511, !68, !460, !259}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !512, file: !19, line: 2380, baseType: !531, size: 64, offset: 320)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{null, !497}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !512, file: !19, line: 2381, baseType: !535, size: 64, offset: 384)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !537)
!537 = !{!538, !539, !540, !544, !4439, !4465, !4466, !4467, !4468, !4472, !4475, !4476, !4477, !4529, !4530, !4531, !4532, !4533, !4534, !4535, !4536, !4544, !4548, !4566, !4583, !4584, !4585, !4586, !4595, !4618, !4619, !4622, !4625, !4626, !4627, !4628, !4629, !4630, !4631, !4636, !4637, !4639, !4647, !4648, !4649, !4650, !4654, !4655, !4664, !4665, !4666, !4667, !4668, !4669, !4670, !4677, !4678, !4679, !4681}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !536, file: !6, line: 403, baseType: !5, size: 32)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !536, file: !6, line: 406, baseType: !283, size: 128, offset: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !536, file: !6, line: 409, baseType: !541, size: 448, offset: 192)
!541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !462, size: 448, elements: !542)
!542 = !{!543}
!543 = !DISubrange(count: 56)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !536, file: !6, line: 417, baseType: !545, size: 768, offset: 640)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !546)
!546 = !{!547, !4433, !4434, !4435, !4438}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !545, file: !6, line: 46, baseType: !548, size: 512)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !549, line: 64, size: 512, elements: !550)
!549 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!550 = !{!551, !552, !553, !555, !601, !4323, !4427, !4428, !4429, !4430, !4431, !4432}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !548, file: !549, line: 65, baseType: !460, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !548, file: !549, line: 66, baseType: !283, size: 128, offset: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !548, file: !549, line: 67, baseType: !554, size: 64, offset: 192)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !548, file: !549, line: 68, baseType: !556, size: 64, offset: 256)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !549, line: 168, size: 768, elements: !558)
!558 = !{!559, !560, !561, !562}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !557, file: !549, line: 169, baseType: !283, size: 128)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !557, file: !549, line: 170, baseType: !400, size: 32, offset: 128)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !557, file: !549, line: 171, baseType: !548, size: 512, offset: 192)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !557, file: !549, line: 172, baseType: !563, size: 64, offset: 704)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !565)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !549, line: 133, size: 192, elements: !566)
!566 = !{!567, !574, !579}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !565, file: !549, line: 134, baseType: !568, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !569)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DISubroutineType(types: !571)
!571 = !{!68, !572}
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !548)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !565, file: !549, line: 135, baseType: !575, size: 64, offset: 64)
!575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !576)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DISubroutineType(types: !578)
!578 = !{!460, !572}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !565, file: !549, line: 136, baseType: !580, size: 64, offset: 128)
!580 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !581)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DISubroutineType(types: !583)
!583 = !{!68, !572, !584}
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !549, line: 125, size: 20736, elements: !586)
!586 = !{!587, !591, !595, !596, !600}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !585, file: !549, line: 126, baseType: !588, size: 192)
!588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !486, size: 192, elements: !589)
!589 = !{!590}
!590 = !DISubrange(count: 3)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !585, file: !549, line: 127, baseType: !592, size: 4096, offset: 192)
!592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !486, size: 4096, elements: !593)
!593 = !{!594}
!594 = !DISubrange(count: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !585, file: !549, line: 128, baseType: !68, size: 32, offset: 4288)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !585, file: !549, line: 129, baseType: !597, size: 16384, offset: 4320)
!597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !462, size: 16384, elements: !598)
!598 = !{!599}
!599 = !DISubrange(count: 2048)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !585, file: !549, line: 130, baseType: !68, size: 32, offset: 20704)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !548, file: !549, line: 69, baseType: !602, size: 64, offset: 320)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !604)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !549, line: 116, size: 384, elements: !605)
!605 = !{!606, !610, !636, !4311, !4315, !4319}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !604, file: !549, line: 117, baseType: !607, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DISubroutineType(types: !609)
!609 = !{null, !554}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !604, file: !549, line: 118, baseType: !611, size: 64, offset: 64)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !613)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !614, line: 254, size: 128, elements: !615)
!614 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!615 = !{!616, !629}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !613, file: !614, line: 255, baseType: !617, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DISubroutineType(types: !619)
!619 = !{!620, !554, !624, !486}
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !258, line: 66, baseType: !621)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !315, line: 73, baseType: !622)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !315, line: 15, baseType: !623)
!623 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !614, line: 30, size: 128, elements: !626)
!626 = !{!627, !628}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !625, file: !614, line: 31, baseType: !460, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !625, file: !614, line: 32, baseType: !304, size: 16, offset: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !613, file: !614, line: 256, baseType: !630, size: 64, offset: 64)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DISubroutineType(types: !632)
!632 = !{!620, !554, !624, !460, !633}
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !258, line: 61, baseType: !634)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !315, line: 72, baseType: !635)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !315, line: 16, baseType: !260)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !604, file: !549, line: 119, baseType: !637, size: 64, offset: 128)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !640)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !614, line: 84, size: 320, elements: !641)
!641 = !{!642, !643, !647, !4307, !4309}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !640, file: !614, line: 85, baseType: !460, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !640, file: !614, line: 86, baseType: !644, size: 64, offset: 64)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DISubroutineType(types: !646)
!646 = !{!304, !554, !624, !68}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !640, file: !614, line: 88, baseType: !648, size: 64, offset: 128)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DISubroutineType(types: !650)
!650 = !{!304, !554, !651, !68}
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !614, line: 175, size: 512, elements: !653)
!653 = !{!654, !655, !656, !657, !661, !4302, !4303}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !652, file: !614, line: 176, baseType: !625, size: 128)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !652, file: !614, line: 177, baseType: !633, size: 64, offset: 128)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !652, file: !614, line: 178, baseType: !259, size: 64, offset: 192)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !652, file: !614, line: 179, baseType: !658, size: 64, offset: 256)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DISubroutineType(types: !660)
!660 = !{!296}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !652, file: !614, line: 180, baseType: !662, size: 64, offset: 320)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DISubroutineType(types: !664)
!664 = !{!620, !665, !554, !651, !486, !507, !633}
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !19, line: 994, size: 1856, align: 64, elements: !667)
!667 = !{!668, !687, !688, !690, !699, !712, !713, !714, !786, !998, !1007, !1013, !1014, !4292, !4293, !4294, !4295, !4297, !4298, !4301}
!668 = !DIDerivedType(tag: DW_TAG_member, scope: !666, file: !19, line: 995, baseType: !669, size: 128)
!669 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !666, file: !19, line: 995, size: 128, elements: !670)
!670 = !{!671, !677, !686}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !669, file: !19, line: 996, baseType: !672, size: 64)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !673, line: 60, size: 64, elements: !674)
!673 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!674 = !{!675}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !672, file: !673, line: 61, baseType: !676, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !669, file: !19, line: 997, baseType: !678, size: 128, align: 64)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !258, line: 232, size: 128, align: 64, elements: !679)
!679 = !{!680, !682}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !678, file: !258, line: 233, baseType: !681, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !678, file: !258, line: 234, baseType: !683, size: 64, offset: 64)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DISubroutineType(types: !685)
!685 = !{null, !681}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !669, file: !19, line: 998, baseType: !7, size: 32)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !666, file: !19, line: 1005, baseType: !400, size: 32, offset: 128)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !666, file: !19, line: 1006, baseType: !689, size: 32, offset: 160)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !258, line: 156, baseType: !7)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !666, file: !19, line: 1007, baseType: !691, size: 64, offset: 192)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !692, line: 13, baseType: !693)
!692 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !258, line: 181, baseType: !694)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !258, line: 179, size: 64, elements: !695)
!695 = !{!696}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !694, file: !258, line: 180, baseType: !697, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !373, line: 22, baseType: !698)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !263, line: 30, baseType: !509)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !666, file: !19, line: 1008, baseType: !700, size: 256, offset: 256)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !701, line: 66, size: 256, elements: !702)
!701 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!702 = !{!703, !704, !706, !711}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !700, file: !701, line: 67, baseType: !691, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !700, file: !701, line: 68, baseType: !705, size: 32, offset: 64)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !409, line: 23, baseType: !408)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !700, file: !701, line: 70, baseType: !707, size: 32, offset: 96)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !708, line: 15, size: 32, elements: !709)
!708 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!709 = !{!710}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !707, file: !708, line: 20, baseType: !420, size: 32)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !700, file: !701, line: 72, baseType: !283, size: 128, offset: 128)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !666, file: !19, line: 1009, baseType: !507, size: 64, offset: 512)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !666, file: !19, line: 1010, baseType: !7, size: 32, offset: 576)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !666, file: !19, line: 1011, baseType: !715, size: 256, offset: 640)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !19, line: 948, size: 256, elements: !716)
!716 = !{!717, !738, !782, !783, !784, !785}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !715, file: !19, line: 949, baseType: !718, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !719, line: 34, baseType: !720)
!719 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !719, line: 25, size: 64, elements: !721)
!721 = !{!722}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !720, file: !719, line: 26, baseType: !723, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !724, line: 27, baseType: !725)
!724 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !724, line: 13, size: 64, elements: !726)
!726 = !{!727, !737}
!727 = !DIDerivedType(tag: DW_TAG_member, scope: !725, file: !724, line: 14, baseType: !728, size: 32)
!728 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !725, file: !724, line: 14, size: 32, elements: !729)
!729 = !{!730, !731}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !728, file: !724, line: 15, baseType: !420, size: 32)
!731 = !DIDerivedType(tag: DW_TAG_member, scope: !728, file: !724, line: 16, baseType: !732, size: 32)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !728, file: !724, line: 16, size: 32, elements: !733)
!733 = !{!734, !735}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !732, file: !724, line: 18, baseType: !428, size: 8)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !732, file: !724, line: 19, baseType: !736, size: 24, offset: 8)
!736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !428, size: 24, elements: !589)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !725, file: !724, line: 26, baseType: !412, size: 32, offset: 32)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !715, file: !19, line: 950, baseType: !739, size: 64, offset: 64)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !107, line: 59, size: 768, elements: !741)
!741 = !{!742, !748, !749, !750, !763, !764, !771, !772}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !740, file: !107, line: 61, baseType: !743, size: 32)
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !744, line: 113, baseType: !745)
!744 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !744, line: 111, size: 32, elements: !746)
!746 = !{!747}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !745, file: !744, line: 112, baseType: !420, size: 32)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !740, file: !107, line: 62, baseType: !7, size: 32, offset: 32)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !740, file: !107, line: 63, baseType: !400, size: 32, offset: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !740, file: !107, line: 65, baseType: !751, size: 256, offset: 128)
!751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !752, size: 256, elements: !761)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !258, line: 194, size: 64, elements: !753)
!753 = !{!754}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !752, file: !258, line: 195, baseType: !755, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !258, line: 198, size: 128, elements: !757)
!757 = !{!758, !759}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !756, file: !258, line: 199, baseType: !755, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !756, file: !258, line: 199, baseType: !760, size: 64, offset: 64)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!761 = !{!762}
!762 = !DISubrange(count: 4)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !740, file: !107, line: 66, baseType: !752, size: 64, offset: 384)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !740, file: !107, line: 68, baseType: !765, size: 192, offset: 448)
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !766, line: 41, baseType: !767)
!766 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !766, line: 37, size: 192, elements: !768)
!768 = !{!769, !770}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !767, file: !766, line: 38, baseType: !400, size: 32)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !767, file: !766, line: 39, baseType: !283, size: 128, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !740, file: !107, line: 69, baseType: !678, size: 128, align: 64, offset: 640)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !740, file: !107, line: 70, baseType: !773, offset: 768)
!773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !774, elements: !780)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !107, line: 54, size: 128, elements: !775)
!775 = !{!776, !777}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !774, file: !107, line: 55, baseType: !68, size: 32)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !774, file: !107, line: 56, baseType: !778, size: 64, offset: 64)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !107, line: 56, flags: DIFlagFwdDecl)
!780 = !{!781}
!781 = !DISubrange(count: -1)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !715, file: !19, line: 951, baseType: !106, size: 32, offset: 128)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !715, file: !19, line: 952, baseType: !308, size: 32, offset: 160)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !715, file: !19, line: 952, baseType: !308, size: 32, offset: 192)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !715, file: !19, line: 953, baseType: !68, size: 32, offset: 224)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !666, file: !19, line: 1012, baseType: !787, size: 64, offset: 896)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !789)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !790, line: 110, size: 1472, elements: !791)
!790 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!791 = !{!792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !808, !809, !810, !811, !812, !813, !943, !944, !945, !946, !947, !978, !981, !985, !993}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !789, file: !790, line: 111, baseType: !691, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !789, file: !790, line: 112, baseType: !308, size: 32, offset: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !789, file: !790, line: 113, baseType: !318, size: 32, offset: 96)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !789, file: !790, line: 114, baseType: !308, size: 32, offset: 128)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !789, file: !790, line: 115, baseType: !318, size: 32, offset: 160)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !789, file: !790, line: 116, baseType: !308, size: 32, offset: 192)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !789, file: !790, line: 117, baseType: !318, size: 32, offset: 224)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !789, file: !790, line: 118, baseType: !308, size: 32, offset: 256)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !789, file: !790, line: 119, baseType: !318, size: 32, offset: 288)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !789, file: !790, line: 120, baseType: !7, size: 32, offset: 320)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !789, file: !790, line: 121, baseType: !803, size: 64, offset: 384)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !804, line: 24, baseType: !805)
!804 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !804, line: 24, size: 64, elements: !806)
!806 = !{!807}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !805, file: !804, line: 24, baseType: !376, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !789, file: !790, line: 122, baseType: !803, size: 64, offset: 448)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !789, file: !790, line: 123, baseType: !803, size: 64, offset: 512)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !789, file: !790, line: 124, baseType: !803, size: 64, offset: 576)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !789, file: !790, line: 125, baseType: !803, size: 64, offset: 640)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !789, file: !790, line: 127, baseType: !382, size: 8, offset: 704)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !789, file: !790, line: 129, baseType: !814, size: 64, offset: 768)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !816, line: 195, size: 1728, elements: !817)
!816 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!817 = !{!818, !819, !824, !836, !845, !848, !849, !856, !857, !858, !859, !862, !863, !864, !866, !867, !907, !928}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !815, file: !816, line: 196, baseType: !743, size: 32)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !815, file: !816, line: 197, baseType: !820, size: 32, offset: 32)
!820 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !816, line: 28, baseType: !821)
!821 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !258, line: 104, baseType: !822)
!822 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !373, line: 20, baseType: !823)
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !263, line: 26, baseType: !68)
!824 = !DIDerivedType(tag: DW_TAG_member, scope: !815, file: !816, line: 198, baseType: !825, size: 192, offset: 64)
!825 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !815, file: !816, line: 198, size: 192, elements: !826)
!826 = !{!827, !828}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !825, file: !816, line: 199, baseType: !283, size: 128)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !825, file: !816, line: 200, baseType: !829, size: 192, align: 64)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !830, line: 5, size: 192, align: 64, elements: !831)
!830 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!831 = !{!832, !833, !835}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !829, file: !830, line: 6, baseType: !260, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !829, file: !830, line: 7, baseType: !834, size: 64, offset: 64)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !829, file: !830, line: 8, baseType: !834, size: 64, offset: 128)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !815, file: !816, line: 205, baseType: !837, size: 320, offset: 256)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !838, line: 48, size: 320, elements: !839)
!838 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!839 = !{!840, !841, !842, !843, !844}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !837, file: !838, line: 49, baseType: !691, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !837, file: !838, line: 55, baseType: !691, size: 64, offset: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !837, file: !838, line: 57, baseType: !707, size: 32, offset: 128)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !837, file: !838, line: 59, baseType: !705, size: 32, offset: 160)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !837, file: !838, line: 60, baseType: !283, size: 128, offset: 192)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !815, file: !816, line: 206, baseType: !846, size: 64, offset: 576)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !816, line: 206, flags: DIFlagFwdDecl)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !815, file: !816, line: 207, baseType: !259, size: 64, offset: 640)
!849 = !DIDerivedType(tag: DW_TAG_member, scope: !815, file: !816, line: 208, baseType: !850, size: 64, offset: 704)
!850 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !815, file: !816, line: 208, size: 64, elements: !851)
!851 = !{!852, !855}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !850, file: !816, line: 209, baseType: !853, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !854, line: 8, baseType: !698)
!854 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!855 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !850, file: !816, line: 210, baseType: !853, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !815, file: !816, line: 212, baseType: !853, size: 64, offset: 768)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !815, file: !816, line: 213, baseType: !308, size: 32, offset: 832)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !815, file: !816, line: 214, baseType: !318, size: 32, offset: 864)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !815, file: !816, line: 215, baseType: !860, size: 32, offset: 896)
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !816, line: 31, baseType: !861)
!861 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !258, line: 110, baseType: !372)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !815, file: !816, line: 216, baseType: !305, size: 16, offset: 928)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !815, file: !816, line: 217, baseType: !305, size: 16, offset: 944)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !815, file: !816, line: 221, baseType: !865, size: 16, offset: 960)
!865 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !815, file: !816, line: 228, baseType: !260, size: 64, offset: 1024)
!867 = !DIDerivedType(tag: DW_TAG_member, scope: !815, file: !816, line: 245, baseType: !868, size: 320, offset: 1088)
!868 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !815, file: !816, line: 245, size: 320, elements: !869)
!869 = !{!870, !899}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !868, file: !816, line: 246, baseType: !871, size: 320)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !816, line: 114, size: 320, elements: !872)
!872 = !{!873, !874, !886, !889, !898}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !871, file: !816, line: 116, baseType: !260, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, scope: !871, file: !816, line: 117, baseType: !875, size: 64, offset: 64)
!875 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !871, file: !816, line: 117, size: 64, elements: !876)
!876 = !{!877, !885}
!877 = !DIDerivedType(tag: DW_TAG_member, scope: !875, file: !816, line: 118, baseType: !878, size: 64)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !875, file: !816, line: 118, size: 64, elements: !879)
!879 = !{!880, !881}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !878, file: !816, line: 120, baseType: !435, size: 16)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !878, file: !816, line: 121, baseType: !882, size: 48, offset: 16)
!882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !462, size: 48, elements: !883)
!883 = !{!884}
!884 = !DISubrange(count: 6)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !875, file: !816, line: 127, baseType: !260, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !871, file: !816, line: 129, baseType: !887, size: 64, offset: 128)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !816, line: 102, flags: DIFlagFwdDecl)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !871, file: !816, line: 130, baseType: !890, size: 64, offset: 192)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !816, line: 108, size: 192, elements: !892)
!892 = !{!893, !894, !895}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !891, file: !816, line: 109, baseType: !678, size: 128, align: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !891, file: !816, line: 110, baseType: !743, size: 32, offset: 128)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !891, file: !816, line: 111, baseType: !896, size: 8, offset: 160)
!896 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !258, line: 35, baseType: !897)
!897 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !871, file: !816, line: 131, baseType: !460, size: 64, offset: 256)
!899 = !DIDerivedType(tag: DW_TAG_member, scope: !868, file: !816, line: 247, baseType: !900, size: 320)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !868, file: !816, line: 247, size: 320, elements: !901)
!901 = !{!902, !903, !904, !905, !906}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !900, file: !816, line: 248, baseType: !260, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !900, file: !816, line: 249, baseType: !260, size: 64, offset: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !900, file: !816, line: 250, baseType: !887, size: 64, offset: 128)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !900, file: !816, line: 251, baseType: !890, size: 64, offset: 192)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !900, file: !816, line: 252, baseType: !486, size: 64, offset: 256)
!907 = !DIDerivedType(tag: DW_TAG_member, scope: !815, file: !816, line: 260, baseType: !908, size: 256, offset: 1408)
!908 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !815, file: !816, line: 260, size: 256, elements: !909)
!909 = !{!910, !916}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !908, file: !816, line: 261, baseType: !911, size: 256)
!911 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !816, line: 134, size: 256, elements: !912)
!912 = !{!913, !914}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !911, file: !816, line: 135, baseType: !259, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !911, file: !816, line: 136, baseType: !915, size: 256)
!915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, size: 256, elements: !761)
!916 = !DIDerivedType(tag: DW_TAG_member, scope: !908, file: !816, line: 262, baseType: !917, size: 256)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !908, file: !816, line: 262, size: 256, elements: !918)
!918 = !{!919, !920}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !917, file: !816, line: 264, baseType: !283, size: 128)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !917, file: !816, line: 265, baseType: !921, size: 128, offset: 128)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !922, line: 22, size: 128, elements: !923)
!922 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!923 = !{!924, !927}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !921, file: !922, line: 23, baseType: !925, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !922, line: 23, flags: DIFlagFwdDecl)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !921, file: !922, line: 24, baseType: !260, size: 64, offset: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !815, file: !816, line: 280, baseType: !929, size: 64, offset: 1664)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !816, line: 176, size: 192, elements: !931)
!931 = !{!932, !941, !942}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !930, file: !816, line: 177, baseType: !933, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !816, line: 171, baseType: !934)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DISubroutineType(types: !936)
!936 = !{!68, !814, !937, !939, !814}
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !888)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !911)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !930, file: !816, line: 178, baseType: !814, size: 64, offset: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !930, file: !816, line: 179, baseType: !887, size: 64, offset: 128)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !789, file: !790, line: 130, baseType: !814, size: 64, offset: 832)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !789, file: !790, line: 131, baseType: !814, size: 64, offset: 896)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !789, file: !790, line: 132, baseType: !814, size: 64, offset: 960)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !789, file: !790, line: 135, baseType: !259, size: 64, offset: 1024)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !789, file: !790, line: 137, baseType: !948, size: 64, offset: 1088)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !950, line: 14, size: 1088, elements: !951)
!950 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!951 = !{!952, !953, !962, !963, !964, !965, !966, !967}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !949, file: !950, line: 15, baseType: !743, size: 32)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !949, file: !950, line: 17, baseType: !954, size: 320, offset: 64)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !955, line: 22, size: 320, elements: !956)
!955 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!956 = !{!957, !958, !959, !960}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !954, file: !955, line: 23, baseType: !705, size: 32)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !954, file: !955, line: 24, baseType: !697, size: 64, offset: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !954, file: !955, line: 26, baseType: !283, size: 128, offset: 128)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !954, file: !955, line: 28, baseType: !961, size: 64, offset: 256)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !949, file: !950, line: 19, baseType: !260, size: 64, offset: 384)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !949, file: !950, line: 20, baseType: !691, size: 64, offset: 448)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !949, file: !950, line: 23, baseType: !756, size: 128, offset: 512)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !949, file: !950, line: 24, baseType: !308, size: 32, offset: 640)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !949, file: !950, line: 29, baseType: !691, size: 64, offset: 704)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !949, file: !950, line: 36, baseType: !968, size: 320, offset: 768)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !969, line: 15, size: 320, elements: !970)
!969 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!970 = !{!971, !972, !973, !974, !975, !976, !977}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !968, file: !969, line: 16, baseType: !705, size: 32)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !968, file: !969, line: 18, baseType: !68, size: 32, offset: 32)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !968, file: !969, line: 19, baseType: !68, size: 32, offset: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !968, file: !969, line: 20, baseType: !68, size: 32, offset: 96)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !968, file: !969, line: 21, baseType: !68, size: 32, offset: 128)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !968, file: !969, line: 22, baseType: !260, size: 64, offset: 192)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !968, file: !969, line: 23, baseType: !260, size: 64, offset: 256)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !789, file: !790, line: 138, baseType: !979, size: 64, offset: 1152)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !309, line: 18, flags: DIFlagFwdDecl)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !789, file: !790, line: 139, baseType: !982, size: 64, offset: 1216)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !984, line: 16, flags: DIFlagFwdDecl)
!984 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!985 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !789, file: !790, line: 140, baseType: !986, size: 64, offset: 1280)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !790, line: 25, size: 64, elements: !988)
!988 = !{!989, !990, !991}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !987, file: !790, line: 26, baseType: !420, size: 32)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !987, file: !790, line: 27, baseType: !68, size: 32, offset: 32)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !987, file: !790, line: 28, baseType: !992, offset: 64)
!992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !318, elements: !780)
!993 = !DIDerivedType(tag: DW_TAG_member, scope: !789, file: !790, line: 142, baseType: !994, size: 128, offset: 1344)
!994 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !789, file: !790, line: 142, size: 128, elements: !995)
!995 = !{!996, !997}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !994, file: !790, line: 143, baseType: !68, size: 32)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !994, file: !790, line: 144, baseType: !678, size: 128, align: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !666, file: !19, line: 1013, baseType: !999, size: 256, offset: 960)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !19, line: 970, size: 256, elements: !1000)
!1000 = !{!1001, !1002, !1003, !1004, !1005, !1006}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !999, file: !19, line: 971, baseType: !260, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !999, file: !19, line: 972, baseType: !7, size: 32, offset: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !999, file: !19, line: 973, baseType: !7, size: 32, offset: 96)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !999, file: !19, line: 974, baseType: !7, size: 32, offset: 128)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !999, file: !19, line: 975, baseType: !7, size: 32, offset: 160)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !999, file: !19, line: 976, baseType: !507, size: 64, offset: 192)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !666, file: !19, line: 1014, baseType: !1008, size: 128, offset: 1216)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1009, line: 8, size: 128, elements: !1010)
!1009 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1010 = !{!1011, !1012}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1008, file: !1009, line: 9, baseType: !491, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1008, file: !1009, line: 10, baseType: !338, size: 64, offset: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !666, file: !19, line: 1015, baseType: !300, size: 64, offset: 1344)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !666, file: !19, line: 1016, baseType: !1015, size: 64, offset: 1408)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1017)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !19, line: 1914, size: 2112, elements: !1018)
!1018 = !{!1019, !1020, !1024, !1029, !1033, !1199, !1200, !4023, !4036, !4053, !4057, !4058, !4217, !4218, !4222, !4227, !4228, !4232, !4236, !4242, !4243, !4247, !4248, !4252, !4256, !4260, !4265, !4269, !4273, !4277, !4281, !4282, !4288}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1017, file: !19, line: 1915, baseType: !535, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1017, file: !19, line: 1916, baseType: !1021, size: 64, offset: 64)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!507, !665, !507, !68}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1017, file: !19, line: 1917, baseType: !1025, size: 64, offset: 128)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!620, !665, !486, !633, !1028}
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1017, file: !19, line: 1918, baseType: !1030, size: 64, offset: 192)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!620, !665, !460, !633, !1028}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1017, file: !19, line: 1919, baseType: !1034, size: 64, offset: 256)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!620, !1037, !1142}
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !19, line: 373, size: 384, elements: !1039)
!1039 = !{!1040, !1041, !1042, !1046, !1047, !1048, !1049}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1038, file: !19, line: 374, baseType: !665, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1038, file: !19, line: 375, baseType: !507, size: 64, offset: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1038, file: !19, line: 376, baseType: !1043, size: 64, offset: 128)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{null, !1037, !623}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1038, file: !19, line: 377, baseType: !259, size: 64, offset: 192)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1038, file: !19, line: 378, baseType: !68, size: 32, offset: 256)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1038, file: !19, line: 379, baseType: !435, size: 16, offset: 288)
!1049 = !DIDerivedType(tag: DW_TAG_member, scope: !1038, file: !19, line: 380, baseType: !1050, size: 64, offset: 320)
!1050 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1038, file: !19, line: 380, size: 64, elements: !1051)
!1051 = !{!1052, !1138}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1050, file: !19, line: 386, baseType: !1053, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !1055, line: 998, size: 448, elements: !1056)
!1055 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!1056 = !{!1057, !1124, !1125}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !1054, file: !1055, line: 999, baseType: !1058, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !123, line: 293, size: 1536, elements: !1060)
!1060 = !{!1061, !1091, !1105}
!1061 = !DIDerivedType(tag: DW_TAG_member, scope: !1059, file: !123, line: 295, baseType: !1062, size: 512)
!1062 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1059, file: !123, line: 295, size: 512, elements: !1063)
!1063 = !{!1064, !1090}
!1064 = !DIDerivedType(tag: DW_TAG_member, scope: !1062, file: !123, line: 296, baseType: !1065, size: 448)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1062, file: !123, line: 296, size: 448, elements: !1066)
!1066 = !{!1067, !1068, !1077, !1078, !1079, !1088, !1089}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1065, file: !123, line: 298, baseType: !260, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, scope: !1065, file: !123, line: 299, baseType: !1069, size: 128, offset: 64)
!1069 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1065, file: !123, line: 299, size: 128, elements: !1070)
!1070 = !{!1071, !1072}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1069, file: !123, line: 300, baseType: !283, size: 128)
!1072 = !DIDerivedType(tag: DW_TAG_member, scope: !1069, file: !123, line: 302, baseType: !1073, size: 128)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1069, file: !123, line: 302, size: 128, elements: !1074)
!1074 = !{!1075, !1076}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1073, file: !123, line: 303, baseType: !259, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1073, file: !123, line: 305, baseType: !7, size: 32, offset: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1065, file: !123, line: 310, baseType: !296, size: 64, offset: 192)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1065, file: !123, line: 311, baseType: !260, size: 64, offset: 256)
!1079 = !DIDerivedType(tag: DW_TAG_member, scope: !1065, file: !123, line: 312, baseType: !1080, size: 64, offset: 320)
!1080 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1065, file: !123, line: 312, size: 64, elements: !1081)
!1081 = !{!1082, !1083}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1080, file: !123, line: 313, baseType: !259, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1080, file: !123, line: 314, baseType: !1084, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !123, line: 257, baseType: !1085)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !123, line: 255, size: 64, elements: !1086)
!1086 = !{!1087}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1085, file: !123, line: 256, baseType: !260, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1065, file: !123, line: 316, baseType: !420, size: 32, offset: 384)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1065, file: !123, line: 317, baseType: !420, size: 32, offset: 416)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1062, file: !123, line: 323, baseType: !270, size: 512, align: 128)
!1091 = !DIDerivedType(tag: DW_TAG_member, scope: !1059, file: !123, line: 325, baseType: !1092, size: 512, offset: 512)
!1092 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1059, file: !123, line: 325, size: 512, elements: !1093)
!1093 = !{!1094, !1104}
!1094 = !DIDerivedType(tag: DW_TAG_member, scope: !1092, file: !123, line: 326, baseType: !1095, size: 320)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1092, file: !123, line: 326, size: 320, elements: !1096)
!1096 = !{!1097, !1098, !1099, !1100, !1101, !1102, !1103}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1095, file: !123, line: 327, baseType: !260, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1095, file: !123, line: 328, baseType: !260, size: 64, offset: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1095, file: !123, line: 329, baseType: !260, size: 64, offset: 128)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1095, file: !123, line: 331, baseType: !420, size: 32, offset: 192)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1095, file: !123, line: 332, baseType: !420, size: 32, offset: 224)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1095, file: !123, line: 333, baseType: !420, size: 32, offset: 256)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1095, file: !123, line: 335, baseType: !7, size: 32, offset: 288)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1092, file: !123, line: 339, baseType: !270, size: 512, align: 128)
!1105 = !DIDerivedType(tag: DW_TAG_member, scope: !1059, file: !123, line: 341, baseType: !1106, size: 512, offset: 1024)
!1106 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1059, file: !123, line: 341, size: 512, elements: !1107)
!1107 = !{!1108, !1117, !1123}
!1108 = !DIDerivedType(tag: DW_TAG_member, scope: !1106, file: !123, line: 342, baseType: !1109, size: 384)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1106, file: !123, line: 342, size: 384, elements: !1110)
!1110 = !{!1111, !1112, !1113, !1114, !1115, !1116}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1109, file: !123, line: 343, baseType: !260, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1109, file: !123, line: 344, baseType: !260, size: 64, offset: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1109, file: !123, line: 346, baseType: !259, size: 64, offset: 128)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1109, file: !123, line: 347, baseType: !259, size: 64, offset: 192)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1109, file: !123, line: 348, baseType: !259, size: 64, offset: 256)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1109, file: !123, line: 349, baseType: !259, size: 64, offset: 320)
!1117 = !DIDerivedType(tag: DW_TAG_member, scope: !1106, file: !123, line: 352, baseType: !1118, size: 256)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1106, file: !123, line: 352, size: 256, elements: !1119)
!1119 = !{!1120, !1121, !1122}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1118, file: !123, line: 353, baseType: !260, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1118, file: !123, line: 354, baseType: !260, size: 64, offset: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1118, file: !123, line: 356, baseType: !283, size: 128, offset: 128)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1106, file: !123, line: 359, baseType: !270, size: 512, align: 128)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !1054, file: !1055, line: 1000, baseType: !68, size: 32, offset: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1054, file: !1055, line: 1001, baseType: !1126, size: 320, offset: 128)
!1126 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !766, line: 14, baseType: !1127)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !766, line: 30, size: 320, elements: !1128)
!1128 = !{!1129, !1130, !1131, !1137}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1127, file: !766, line: 31, baseType: !7, size: 32)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1127, file: !766, line: 32, baseType: !259, size: 64, offset: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1127, file: !766, line: 33, baseType: !1132, size: 64, offset: 128)
!1132 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !766, line: 16, baseType: !1133)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{!68, !1136, !7, !68, !259}
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1127, file: !766, line: 34, baseType: !283, size: 128, offset: 192)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1050, file: !19, line: 395, baseType: !1139, size: 64)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{!620, !259}
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1144, line: 41, size: 320, elements: !1145)
!1144 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!1145 = !{!1146, !1147, !1148, !1149, !1150, !1151, !1156, !1194}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !1143, file: !1144, line: 42, baseType: !428, size: 8)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !1143, file: !1144, line: 43, baseType: !896, size: 8, offset: 8)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !1143, file: !1144, line: 44, baseType: !896, size: 8, offset: 16)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !1143, file: !1144, line: 45, baseType: !896, size: 8, offset: 24)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !1143, file: !1144, line: 46, baseType: !896, size: 8, offset: 32)
!1151 = !DIDerivedType(tag: DW_TAG_member, scope: !1143, file: !1144, line: 47, baseType: !1152, size: 64, offset: 64)
!1152 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1143, file: !1144, line: 47, size: 64, elements: !1153)
!1153 = !{!1154, !1155}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !1152, file: !1144, line: 48, baseType: !633, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !1152, file: !1144, line: 49, baseType: !68, size: 32)
!1156 = !DIDerivedType(tag: DW_TAG_member, scope: !1143, file: !1144, line: 61, baseType: !1157, size: 128, offset: 128)
!1157 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1143, file: !1144, line: 61, size: 128, elements: !1158)
!1158 = !{!1159, !1165}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !1157, file: !1144, line: 67, baseType: !1160, size: 128)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1161, line: 17, size: 128, elements: !1162)
!1161 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!1162 = !{!1163, !1164}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1160, file: !1161, line: 19, baseType: !259, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1160, file: !1161, line: 20, baseType: !634, size: 64, offset: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, scope: !1157, file: !1144, line: 68, baseType: !1166, size: 128)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1157, file: !1144, line: 68, size: 128, elements: !1167)
!1167 = !{!1168, !1193}
!1168 = !DIDerivedType(tag: DW_TAG_member, scope: !1166, file: !1144, line: 69, baseType: !1169, size: 64)
!1169 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1166, file: !1144, line: 69, size: 64, elements: !1170)
!1170 = !{!1171, !1174, !1181, !1184, !1192}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !1169, file: !1144, line: 71, baseType: !1172, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1160)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !1169, file: !1144, line: 72, baseType: !1175, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1177)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !1144, line: 17, size: 128, elements: !1178)
!1178 = !{!1179, !1180}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1177, file: !1144, line: 18, baseType: !259, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1177, file: !1144, line: 19, baseType: !633, size: 64, offset: 64)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !1169, file: !1144, line: 73, baseType: !1182, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !265)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !1169, file: !1144, line: 74, baseType: !1185, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1187, line: 296, size: 128, elements: !1188)
!1187 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1188 = !{!1189, !1190, !1191}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1186, file: !1187, line: 297, baseType: !400, size: 32)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1186, file: !1187, line: 299, baseType: !257, size: 32, offset: 32)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1186, file: !1187, line: 300, baseType: !259, size: 64, offset: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !1169, file: !1144, line: 75, baseType: !259, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1166, file: !1144, line: 77, baseType: !633, size: 64, offset: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, scope: !1143, file: !1144, line: 80, baseType: !1195, size: 64, offset: 256)
!1195 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1143, file: !1144, line: 80, size: 64, elements: !1196)
!1196 = !{!1197, !1198}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !1195, file: !1144, line: 81, baseType: !260, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !1195, file: !1144, line: 82, baseType: !507, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1017, file: !19, line: 1920, baseType: !1034, size: 64, offset: 320)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1017, file: !19, line: 1921, baseType: !1201, size: 64, offset: 384)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{!68, !1037, !1204, !7}
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !164, line: 1559, size: 192, elements: !1206)
!1206 = !{!1207, !4018, !4019}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "req_list", scope: !1205, file: !164, line: 1560, baseType: !1208, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request", file: !159, line: 80, size: 1984, elements: !1210)
!1210 = !{!1211, !3947, !3948, !3949, !3950, !3952, !3953, !3954, !3955, !3956, !3957, !3958, !3959, !3964, !3965, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3979, !3984, !4006, !4015, !4016, !4017}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1209, file: !159, line: 81, baseType: !1212, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !164, line: 391, size: 7296, elements: !1214)
!1214 = !{!1215, !1216, !1219, !1240, !1243, !1246, !1247, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2501, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2542, !2543, !2544, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "last_merge", scope: !1213, file: !164, line: 392, baseType: !1208, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "elevator", scope: !1213, file: !164, line: 393, baseType: !1217, size: 64, offset: 64)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_queue", file: !164, line: 30, flags: DIFlagFwdDecl)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "q_usage_counter", scope: !1213, file: !164, line: 395, baseType: !1220, size: 128, offset: 128)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1221, line: 105, size: 128, elements: !1222)
!1221 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1222 = !{!1223, !1224}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1220, file: !1221, line: 110, baseType: !260, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1220, file: !1221, line: 118, baseType: !1225, size: 64, offset: 64)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1221, line: 95, size: 448, elements: !1227)
!1227 = !{!1228, !1229, !1235, !1236, !1237, !1238, !1239}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1226, file: !1221, line: 96, baseType: !691, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1226, file: !1221, line: 97, baseType: !1230, size: 64, offset: 64)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1221, line: 60, baseType: !1232)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{null, !1234}
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1226, file: !1221, line: 98, baseType: !1230, size: 64, offset: 128)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1226, file: !1221, line: 99, baseType: !896, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1226, file: !1221, line: 100, baseType: !896, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1226, file: !1221, line: 101, baseType: !678, size: 128, align: 64, offset: 256)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1226, file: !1221, line: 102, baseType: !1234, size: 64, offset: 384)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1213, file: !164, line: 397, baseType: !1241, size: 64, offset: 256)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_queue_stats", file: !164, line: 39, flags: DIFlagFwdDecl)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos", scope: !1213, file: !164, line: 398, baseType: !1244, size: 64, offset: 320)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DICompositeType(tag: DW_TAG_structure_type, name: "rq_qos", file: !164, line: 38, flags: DIFlagFwdDecl)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos_mutex", scope: !1213, file: !164, line: 399, baseType: !700, size: 256, offset: 384)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "mq_ops", scope: !1213, file: !164, line: 401, baseType: !1248, size: 64, offset: 640)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1250)
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ops", file: !159, line: 537, size: 1152, elements: !1251)
!1251 = !{!1252, !1389, !1393, !1397, !1401, !1405, !1409, !1413, !1417, !1421, !1425, !1429, !1433, !1555, !1559, !1560, !1564, !1568}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "queue_rq", scope: !1250, file: !159, line: 541, baseType: !1253, size: 64)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!1256, !1257, !1383}
!1256 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_status_t", file: !216, line: 97, baseType: !428)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_hw_ctx", file: !159, line: 288, size: 4096, elements: !1259)
!1259 = !{!1260, !1266, !1297, !1307, !1308, !1309, !1310, !1311, !1312, !1315, !1316, !1333, !1336, !1337, !1338, !1339, !1341, !1342, !1343, !1344, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382}
!1260 = !DIDerivedType(tag: DW_TAG_member, scope: !1258, file: !159, line: 289, baseType: !1261, size: 512, align: 512)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1258, file: !159, line: 289, size: 512, align: 512, elements: !1262)
!1262 = !{!1263, !1264, !1265}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1261, file: !159, line: 291, baseType: !400, size: 32)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !1261, file: !159, line: 299, baseType: !283, size: 128, offset: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1261, file: !159, line: 304, baseType: !260, size: 64, offset: 192)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "run_work", scope: !1258, file: !159, line: 310, baseType: !1267, size: 704, offset: 512)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1268, line: 111, size: 704, elements: !1269)
!1268 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1269 = !{!1270, !1281, !1293, !1296}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1267, file: !1268, line: 112, baseType: !1271, size: 256)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1268, line: 98, size: 256, elements: !1272)
!1272 = !{!1273, !1274, !1275}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1271, file: !1268, line: 99, baseType: !691, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1271, file: !1268, line: 100, baseType: !283, size: 128, offset: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1271, file: !1268, line: 101, baseType: !1276, size: 64, offset: 192)
!1276 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1268, line: 21, baseType: !1277)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{null, !1280}
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1267, file: !1268, line: 113, baseType: !1282, size: 320, offset: 256)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1283, line: 11, size: 320, elements: !1284)
!1283 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1284 = !{!1285, !1286, !1287, !1292}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1282, file: !1283, line: 16, baseType: !756, size: 128)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1282, file: !1283, line: 17, baseType: !260, size: 64, offset: 128)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1282, file: !1283, line: 18, baseType: !1288, size: 64, offset: 192)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{null, !1291}
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1282, file: !1283, line: 19, baseType: !372, size: 32, offset: 256)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1267, file: !1268, line: 116, baseType: !1294, size: 64, offset: 576)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1268, line: 18, flags: DIFlagFwdDecl)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1267, file: !1268, line: 117, baseType: !68, size: 32, offset: 640)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1258, file: !159, line: 312, baseType: !1298, size: 64, offset: 1216)
!1298 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !1299, line: 913, baseType: !1300)
!1299 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1301, size: 64, elements: !1305)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1299, line: 19, size: 64, elements: !1302)
!1302 = !{!1303}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1301, file: !1299, line: 19, baseType: !1304, size: 64)
!1304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 64, elements: !1305)
!1305 = !{!1306}
!1306 = !DISubrange(count: 1)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "next_cpu", scope: !1258, file: !159, line: 317, baseType: !68, size: 32, offset: 1280)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "next_cpu_batch", scope: !1258, file: !159, line: 322, baseType: !68, size: 32, offset: 1312)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1258, file: !159, line: 325, baseType: !260, size: 64, offset: 1344)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "sched_data", scope: !1258, file: !159, line: 331, baseType: !259, size: 64, offset: 1408)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !1258, file: !159, line: 335, baseType: !1212, size: 64, offset: 1472)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "fq", scope: !1258, file: !159, line: 337, baseType: !1313, size: 64, offset: 1536)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_flush_queue", file: !164, line: 35, flags: DIFlagFwdDecl)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1258, file: !159, line: 343, baseType: !259, size: 64, offset: 1600)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_map", scope: !1258, file: !159, line: 349, baseType: !1317, size: 256, offset: 1664)
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sbitmap", file: !1318, line: 52, size: 256, elements: !1319)
!1318 = !DIFile(filename: "./include/linux/sbitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c1a10e3a5ba3f1b25200b1abce63f43a")
!1319 = !{!1320, !1321, !1322, !1323, !1324, !1331}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1317, file: !1318, line: 56, baseType: !7, size: 32)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !1317, file: !1318, line: 61, baseType: !7, size: 32, offset: 32)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "map_nr", scope: !1317, file: !1318, line: 66, baseType: !7, size: 32, offset: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "round_robin", scope: !1317, file: !1318, line: 71, baseType: !896, size: 8, offset: 96)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !1317, file: !1318, line: 76, baseType: !1325, size: 64, offset: 128)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sbitmap_word", file: !1318, line: 29, size: 1024, align: 512, elements: !1327)
!1327 = !{!1328, !1329, !1330}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !1326, file: !1318, line: 33, baseType: !260, size: 64)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "cleared", scope: !1326, file: !1318, line: 38, baseType: !260, size: 64, align: 512, offset: 512)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "swap_lock", scope: !1326, file: !1318, line: 43, baseType: !705, size: 32, offset: 576)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_hint", scope: !1317, file: !1318, line: 84, baseType: !1332, size: 64, offset: 192)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_from", scope: !1258, file: !159, line: 355, baseType: !1334, size: 64, offset: 1920)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ctx", file: !164, line: 404, flags: DIFlagFwdDecl)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_busy", scope: !1258, file: !159, line: 361, baseType: !7, size: 32, offset: 1984)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1258, file: !159, line: 364, baseType: !305, size: 16, offset: 2016)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ctx", scope: !1258, file: !159, line: 366, baseType: !305, size: 16, offset: 2032)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "ctxs", scope: !1258, file: !159, line: 368, baseType: !1340, size: 64, offset: 2048)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_wait_lock", scope: !1258, file: !159, line: 371, baseType: !400, size: 32, offset: 2112)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_wait", scope: !1258, file: !159, line: 376, baseType: !1126, size: 320, offset: 2176)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "wait_index", scope: !1258, file: !159, line: 382, baseType: !420, size: 32, offset: 2496)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "tags", scope: !1258, file: !159, line: 388, baseType: !1345, size: 64, offset: 2560)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tags", file: !159, line: 735, size: 1472, elements: !1347)
!1347 = !{!1348, !1349, !1350, !1351, !1366, !1367, !1369, !1370, !1371}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tags", scope: !1346, file: !159, line: 736, baseType: !7, size: 32)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "nr_reserved_tags", scope: !1346, file: !159, line: 737, baseType: !7, size: 32, offset: 32)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "active_queues", scope: !1346, file: !159, line: 738, baseType: !7, size: 32, offset: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap_tags", scope: !1346, file: !159, line: 740, baseType: !1352, size: 512, offset: 128)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sbitmap_queue", file: !1318, line: 109, size: 512, elements: !1353)
!1353 = !{!1354, !1355, !1356, !1357, !1362, !1363, !1364, !1365}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "sb", scope: !1352, file: !1318, line: 113, baseType: !1317, size: 256)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "wake_batch", scope: !1352, file: !1318, line: 119, baseType: !7, size: 32, offset: 256)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "wake_index", scope: !1352, file: !1318, line: 124, baseType: !420, size: 32, offset: 288)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !1352, file: !1318, line: 129, baseType: !1358, size: 64, offset: 320)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sbq_wait_state", file: !1318, line: 93, size: 512, align: 512, elements: !1360)
!1360 = !{!1361}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1359, file: !1318, line: 97, baseType: !765, size: 192)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "ws_active", scope: !1352, file: !1318, line: 134, baseType: !420, size: 32, offset: 384)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "min_shallow_depth", scope: !1352, file: !1318, line: 140, baseType: !7, size: 32, offset: 416)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "completion_cnt", scope: !1352, file: !1318, line: 146, baseType: !420, size: 32, offset: 448)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_cnt", scope: !1352, file: !1318, line: 151, baseType: !420, size: 32, offset: 480)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "breserved_tags", scope: !1346, file: !159, line: 741, baseType: !1352, size: 512, offset: 640)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "rqs", scope: !1346, file: !159, line: 743, baseType: !1368, size: 64, offset: 1152)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "static_rqs", scope: !1346, file: !159, line: 744, baseType: !1368, size: 64, offset: 1216)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "page_list", scope: !1346, file: !159, line: 745, baseType: !283, size: 128, offset: 1280)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1346, file: !159, line: 751, baseType: !400, size: 32, offset: 1408)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "sched_tags", scope: !1258, file: !159, line: 394, baseType: !1345, size: 64, offset: 2624)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !1258, file: !159, line: 397, baseType: !260, size: 64, offset: 2688)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !1258, file: !159, line: 400, baseType: !7, size: 32, offset: 2752)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "queue_num", scope: !1258, file: !159, line: 402, baseType: !7, size: 32, offset: 2784)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "nr_active", scope: !1258, file: !159, line: 408, baseType: !420, size: 32, offset: 2816)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "cpuhp_online", scope: !1258, file: !159, line: 411, baseType: !756, size: 128, offset: 2880)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "cpuhp_dead", scope: !1258, file: !159, line: 413, baseType: !756, size: 128, offset: 3008)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1258, file: !159, line: 415, baseType: !548, size: 512, offset: 3136)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_dir", scope: !1258, file: !159, line: 422, baseType: !338, size: 64, offset: 3648)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "sched_debugfs_dir", scope: !1258, file: !159, line: 424, baseType: !338, size: 64, offset: 3712)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "hctx_list", scope: !1258, file: !159, line: 431, baseType: !283, size: 128, offset: 3776)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1385)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_queue_data", file: !159, line: 526, size: 128, elements: !1386)
!1386 = !{!1387, !1388}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "rq", scope: !1385, file: !159, line: 527, baseType: !1208, size: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !1385, file: !159, line: 528, baseType: !896, size: 8, offset: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "commit_rqs", scope: !1250, file: !159, line: 551, baseType: !1390, size: 64, offset: 64)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{null, !1257}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "queue_rqs", scope: !1250, file: !159, line: 559, baseType: !1394, size: 64, offset: 128)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{null, !1368}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "get_budget", scope: !1250, file: !159, line: 567, baseType: !1398, size: 64, offset: 192)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DISubroutineType(types: !1400)
!1400 = !{!68, !1212}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "put_budget", scope: !1250, file: !159, line: 572, baseType: !1402, size: 64, offset: 256)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{null, !1212, !68}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "set_rq_budget_token", scope: !1250, file: !159, line: 577, baseType: !1406, size: 64, offset: 320)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{null, !1208, !68}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "get_rq_budget_token", scope: !1250, file: !159, line: 581, baseType: !1410, size: 64, offset: 384)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{!68, !1208}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1250, file: !159, line: 586, baseType: !1414, size: 64, offset: 448)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = !DISubroutineType(types: !1416)
!1416 = !{!158, !1208}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1250, file: !159, line: 591, baseType: !1418, size: 64, offset: 512)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{!68, !1257, !1204}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1250, file: !159, line: 596, baseType: !1422, size: 64, offset: 576)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = !DISubroutineType(types: !1424)
!1424 = !{null, !1208}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "init_hctx", scope: !1250, file: !159, line: 603, baseType: !1426, size: 64, offset: 640)
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1427 = !DISubroutineType(types: !1428)
!1428 = !{!68, !1257, !259, !7}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "exit_hctx", scope: !1250, file: !159, line: 607, baseType: !1430, size: 64, offset: 704)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = !DISubroutineType(types: !1432)
!1432 = !{null, !1257, !7}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "init_request", scope: !1250, file: !159, line: 616, baseType: !1434, size: 64, offset: 768)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = !DISubroutineType(types: !1436)
!1436 = !{!68, !1437, !1208, !7, !7}
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tag_set", file: !159, line: 498, size: 1344, elements: !1439)
!1439 = !{!1440, !1441, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1459, !1460, !1461, !1462}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1438, file: !159, line: 499, baseType: !1248, size: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !1438, file: !159, line: 500, baseType: !1442, size: 384, offset: 64)
!1442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1443, size: 384, elements: !589)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_queue_map", file: !159, line: 444, size: 128, elements: !1444)
!1444 = !{!1445, !1446, !1447}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "mq_map", scope: !1443, file: !159, line: 445, baseType: !1332, size: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "nr_queues", scope: !1443, file: !159, line: 446, baseType: !7, size: 32, offset: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "queue_offset", scope: !1443, file: !159, line: 447, baseType: !7, size: 32, offset: 96)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "nr_maps", scope: !1438, file: !159, line: 501, baseType: !7, size: 32, offset: 448)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hw_queues", scope: !1438, file: !159, line: 502, baseType: !7, size: 32, offset: 480)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "queue_depth", scope: !1438, file: !159, line: 503, baseType: !7, size: 32, offset: 512)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_tags", scope: !1438, file: !159, line: 504, baseType: !7, size: 32, offset: 544)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_size", scope: !1438, file: !159, line: 505, baseType: !7, size: 32, offset: 576)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !1438, file: !159, line: 506, baseType: !68, size: 32, offset: 608)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1438, file: !159, line: 507, baseType: !7, size: 32, offset: 640)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1438, file: !159, line: 508, baseType: !7, size: 32, offset: 672)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1438, file: !159, line: 509, baseType: !259, size: 64, offset: 704)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "tags", scope: !1438, file: !159, line: 511, baseType: !1458, size: 64, offset: 768)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "shared_tags", scope: !1438, file: !159, line: 513, baseType: !1345, size: 64, offset: 832)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "tag_list_lock", scope: !1438, file: !159, line: 515, baseType: !700, size: 256, offset: 896)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "tag_list", scope: !1438, file: !159, line: 516, baseType: !283, size: 128, offset: 1152)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "srcu", scope: !1438, file: !159, line: 517, baseType: !1463, size: 64, offset: 1280)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1465, line: 96, size: 192, elements: !1466)
!1465 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1466 = !{!1467, !1468, !1513, !1517}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1464, file: !1465, line: 97, baseType: !7, size: 32)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1464, file: !1465, line: 98, baseType: !1469, size: 64, offset: 64)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1465, line: 24, size: 3072, elements: !1471)
!1471 = !{!1472, !1476, !1477, !1478, !1479, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1510, !1511, !1512}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1470, file: !1465, line: 26, baseType: !1473, size: 128)
!1473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !691, size: 128, elements: !1474)
!1474 = !{!1475}
!1475 = !DISubrange(count: 2)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1470, file: !1465, line: 27, baseType: !1473, size: 128, offset: 128)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1470, file: !1465, line: 28, baseType: !68, size: 32, offset: 256)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1470, file: !1465, line: 31, baseType: !400, size: 32, align: 512, offset: 512)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1470, file: !1465, line: 32, baseType: !1480, size: 960, offset: 576)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1481, line: 206, size: 960, elements: !1482)
!1481 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1482 = !{!1483, !1484, !1487, !1489, !1490, !1492}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1480, file: !1481, line: 207, baseType: !681, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1480, file: !1481, line: 208, baseType: !1485, size: 256, offset: 64)
!1485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1486, size: 256, elements: !761)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1480, file: !1481, line: 209, baseType: !1488, size: 256, offset: 320)
!1488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 256, elements: !761)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1480, file: !1481, line: 213, baseType: !623, size: 64, offset: 576)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1480, file: !1481, line: 215, baseType: !1491, size: 256, offset: 640)
!1491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !623, size: 256, elements: !761)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1480, file: !1481, line: 216, baseType: !428, size: 8, offset: 896)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1470, file: !1465, line: 33, baseType: !260, size: 64, offset: 1536)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1470, file: !1465, line: 34, baseType: !260, size: 64, offset: 1600)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1470, file: !1465, line: 35, baseType: !896, size: 8, offset: 1664)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1470, file: !1465, line: 36, baseType: !1282, size: 320, offset: 1728)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1470, file: !1465, line: 37, baseType: !1271, size: 256, offset: 2048)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1470, file: !1465, line: 38, baseType: !678, size: 128, align: 64, offset: 2304)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1470, file: !1465, line: 39, baseType: !1500, size: 64, offset: 2432)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1465, line: 49, size: 768, elements: !1502)
!1502 = !{!1503, !1504, !1505, !1506, !1507, !1508, !1509}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1501, file: !1465, line: 50, baseType: !400, size: 32)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1501, file: !1465, line: 51, baseType: !1488, size: 256, offset: 64)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1501, file: !1465, line: 53, baseType: !1488, size: 256, offset: 320)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1501, file: !1465, line: 54, baseType: !260, size: 64, offset: 576)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1501, file: !1465, line: 55, baseType: !1500, size: 64, offset: 640)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1501, file: !1465, line: 56, baseType: !68, size: 32, offset: 704)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1501, file: !1465, line: 57, baseType: !68, size: 32, offset: 736)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1470, file: !1465, line: 40, baseType: !260, size: 64, offset: 2496)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1470, file: !1465, line: 42, baseType: !68, size: 32, offset: 2560)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1470, file: !1465, line: 43, baseType: !1463, size: 64, offset: 2624)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1464, file: !1465, line: 99, baseType: !1514, offset: 128)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1515, line: 211, elements: !1516)
!1515 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1516 = !{}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1464, file: !1465, line: 100, baseType: !1518, size: 64, offset: 128)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1465, line: 63, size: 3008, elements: !1520)
!1520 = !{!1521, !1522, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1550, !1551, !1552, !1553, !1554}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1519, file: !1465, line: 64, baseType: !1500, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1519, file: !1465, line: 65, baseType: !1523, size: 192, offset: 64)
!1523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1500, size: 192, elements: !589)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1519, file: !1465, line: 67, baseType: !68, size: 32, offset: 256)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1519, file: !1465, line: 68, baseType: !700, size: 256, offset: 320)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1519, file: !1465, line: 69, baseType: !400, size: 32, offset: 576)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1519, file: !1465, line: 70, baseType: !700, size: 256, offset: 640)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1519, file: !1465, line: 71, baseType: !260, size: 64, offset: 896)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1519, file: !1465, line: 72, baseType: !260, size: 64, offset: 960)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1519, file: !1465, line: 73, baseType: !260, size: 64, offset: 1024)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1519, file: !1465, line: 74, baseType: !260, size: 64, offset: 1088)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1519, file: !1465, line: 75, baseType: !260, size: 64, offset: 1152)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1519, file: !1465, line: 76, baseType: !260, size: 64, offset: 1216)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1519, file: !1465, line: 77, baseType: !260, size: 64, offset: 1280)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1519, file: !1465, line: 78, baseType: !260, size: 64, offset: 1344)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1519, file: !1465, line: 79, baseType: !896, size: 8, offset: 1408)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1519, file: !1465, line: 80, baseType: !260, size: 64, offset: 1472)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1519, file: !1465, line: 81, baseType: !700, size: 256, offset: 1536)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1519, file: !1465, line: 82, baseType: !1540, size: 256, offset: 1792)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1541, line: 26, size: 256, elements: !1542)
!1541 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1542 = !{!1543, !1544}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1540, file: !1541, line: 27, baseType: !7, size: 32)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1540, file: !1541, line: 28, baseType: !1545, size: 192, offset: 64)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1546, line: 43, size: 192, elements: !1547)
!1546 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1547 = !{!1548, !1549}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1545, file: !1546, line: 44, baseType: !705, size: 32)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1545, file: !1546, line: 45, baseType: !283, size: 128, offset: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1519, file: !1465, line: 84, baseType: !420, size: 32, offset: 2048)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1519, file: !1465, line: 87, baseType: !260, size: 64, offset: 2112)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1519, file: !1465, line: 88, baseType: !260, size: 64, offset: 2176)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1519, file: !1465, line: 89, baseType: !1267, size: 704, offset: 2240)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1519, file: !1465, line: 90, baseType: !1463, size: 64, offset: 2944)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "exit_request", scope: !1250, file: !159, line: 621, baseType: !1556, size: 64, offset: 832)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DISubroutineType(types: !1558)
!1558 = !{null, !1437, !1208, !7}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_rq", scope: !1250, file: !159, line: 628, baseType: !1422, size: 64, offset: 896)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !1250, file: !159, line: 633, baseType: !1561, size: 64, offset: 960)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DISubroutineType(types: !1563)
!1563 = !{!896, !1212}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "map_queues", scope: !1250, file: !159, line: 639, baseType: !1565, size: 64, offset: 1024)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{null, !1437}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "show_rq", scope: !1250, file: !159, line: 646, baseType: !1569, size: 64, offset: 1088)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{null, !1572, !1208}
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1574, line: 66, flags: DIFlagFwdDecl)
!1574 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "queue_ctx", scope: !1213, file: !164, line: 404, baseType: !1334, size: 64, offset: 704)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "queue_depth", scope: !1213, file: !164, line: 406, baseType: !7, size: 32, offset: 768)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "hctx_table", scope: !1213, file: !164, line: 409, baseType: !1186, size: 128, offset: 832)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hw_queues", scope: !1213, file: !164, line: 410, baseType: !7, size: 32, offset: 960)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "queuedata", scope: !1213, file: !164, line: 416, baseType: !259, size: 64, offset: 1024)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "queue_flags", scope: !1213, file: !164, line: 421, baseType: !260, size: 64, offset: 1088)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "pm_only", scope: !1213, file: !164, line: 426, baseType: !420, size: 32, offset: 1152)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1213, file: !164, line: 432, baseType: !68, size: 32, offset: 1184)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "queue_lock", scope: !1213, file: !164, line: 434, baseType: !400, size: 32, offset: 1216)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "disk", scope: !1213, file: !164, line: 436, baseType: !1585, size: 64, offset: 1280)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !164, line: 128, size: 4544, elements: !1587)
!1587 = !{!1588, !1589, !1590, !1591, !1593, !1594, !1595, !1596, !2207, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2459, !2460, !2461, !2462, !2465, !2466, !2469, !2472, !2473, !2476, !2477, !2478, !2479}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !1586, file: !164, line: 133, baseType: !68, size: 32)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "first_minor", scope: !1586, file: !164, line: 134, baseType: !68, size: 32, offset: 32)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "minors", scope: !1586, file: !164, line: 135, baseType: !68, size: 32, offset: 64)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "disk_name", scope: !1586, file: !164, line: 137, baseType: !1592, size: 256, offset: 96)
!1592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !462, size: 256, elements: !386)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1586, file: !164, line: 139, baseType: !305, size: 16, offset: 352)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "event_flags", scope: !1586, file: !164, line: 140, baseType: !305, size: 16, offset: 368)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "part_tbl", scope: !1586, file: !164, line: 142, baseType: !1186, size: 128, offset: 384)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "part0", scope: !1586, file: !164, line: 143, baseType: !1597, size: 64, offset: 512)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !216, line: 40, size: 7424, elements: !1599)
!1599 = !{!1600, !1602, !1603, !1604, !1605, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1648, !1649}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !1598, file: !216, line: 41, baseType: !1601, size: 64)
!1601 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !258, line: 131, baseType: !376)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !1598, file: !216, line: 42, baseType: !1601, size: 64, offset: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !1598, file: !216, line: 43, baseType: !1585, size: 64, offset: 128)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !1598, file: !216, line: 44, baseType: !1212, size: 64, offset: 192)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !1598, file: !216, line: 45, baseType: !1606, size: 64, offset: 256)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !216, line: 45, flags: DIFlagFwdDecl)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !1598, file: !216, line: 46, baseType: !260, size: 64, offset: 320)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !1598, file: !216, line: 47, baseType: !896, size: 8, offset: 384)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !1598, file: !216, line: 48, baseType: !428, size: 8, offset: 392)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !1598, file: !216, line: 49, baseType: !896, size: 8, offset: 400)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !1598, file: !216, line: 50, baseType: !896, size: 8, offset: 408)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !1598, file: !216, line: 51, baseType: !502, size: 32, offset: 416)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !1598, file: !216, line: 52, baseType: !420, size: 32, offset: 448)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !1598, file: !216, line: 53, baseType: !400, size: 32, offset: 480)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !1598, file: !216, line: 54, baseType: !300, size: 64, offset: 512)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !1598, file: !216, line: 55, baseType: !259, size: 64, offset: 576)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !1598, file: !216, line: 56, baseType: !259, size: 64, offset: 640)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !1598, file: !216, line: 57, baseType: !1620, size: 64, offset: 704)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1622)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !164, line: 1477, size: 128, elements: !1623)
!1623 = !{!1624, !1628}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dead", scope: !1622, file: !164, line: 1478, baseType: !1625, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DISubroutineType(types: !1627)
!1627 = !{null, !1597, !896}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1622, file: !164, line: 1483, baseType: !1629, size: 64, offset: 64)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DISubroutineType(types: !1631)
!1631 = !{null, !1597}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !1598, file: !216, line: 58, baseType: !700, size: 256, offset: 768)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !1598, file: !216, line: 60, baseType: !68, size: 32, offset: 1024)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !1598, file: !216, line: 61, baseType: !68, size: 32, offset: 1056)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !1598, file: !216, line: 62, baseType: !554, size: 64, offset: 1088)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !1598, file: !216, line: 65, baseType: !700, size: 256, offset: 1152)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !1598, file: !216, line: 66, baseType: !497, size: 64, offset: 1408)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !1598, file: !216, line: 68, baseType: !1639, size: 64, offset: 1472)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !164, line: 63, size: 808, elements: !1641)
!1641 = !{!1642, !1646}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !1640, file: !164, line: 64, baseType: !1643, size: 296)
!1643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !462, size: 296, elements: !1644)
!1644 = !{!1645}
!1645 = !DISubrange(count: 37)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "volname", scope: !1640, file: !164, line: 65, baseType: !1647, size: 512, offset: 296)
!1647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !428, size: 512, elements: !593)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !1598, file: !216, line: 72, baseType: !896, size: 8, offset: 1536)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !1598, file: !216, line: 77, baseType: !1650, size: 5824, offset: 1600)
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !48, line: 705, size: 5824, elements: !1651)
!1651 = !{!1652, !1653, !1655, !1658, !1659, !1714, !1784, !1785, !1786, !1787, !1788, !1795, !1962, !1975, !1985, !1989, !1991, !1992, !1993, !1997, !2004, !2005, !2008, !2011, !2015, !2122, !2123, !2124, !2125, !2126, !2127, !2184, !2185, !2186, !2189, !2192, !2201, !2202, !2203, !2204, !2205, !2206}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1650, file: !48, line: 706, baseType: !548, size: 512)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1650, file: !48, line: 707, baseType: !1654, size: 64, offset: 512)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1650, file: !48, line: 709, baseType: !1656, size: 64, offset: 576)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !48, line: 37, flags: DIFlagFwdDecl)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !1650, file: !48, line: 711, baseType: !460, size: 64, offset: 640)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1650, file: !48, line: 712, baseType: !1660, size: 64, offset: 704)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1662)
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !48, line: 89, size: 384, elements: !1663)
!1663 = !{!1664, !1665, !1666, !1672, !1679, !1683}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1662, file: !48, line: 90, baseType: !460, size: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1662, file: !48, line: 91, baseType: !637, size: 64, offset: 64)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1662, file: !48, line: 92, baseType: !1667, size: 64, offset: 128)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{!68, !1670, !584}
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1650)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1662, file: !48, line: 93, baseType: !1673, size: 64, offset: 192)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{!486, !1670, !1676, !1677, !1678}
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1662, file: !48, line: 95, baseType: !1680, size: 64, offset: 256)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{null, !1654}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1662, file: !48, line: 97, baseType: !1684, size: 64, offset: 320)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1686)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !60, line: 286, size: 1472, elements: !1687)
!1687 = !{!1688, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1686, file: !60, line: 287, baseType: !1689, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DISubroutineType(types: !1691)
!1691 = !{!68, !1654}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1686, file: !60, line: 288, baseType: !1680, size: 64, offset: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1686, file: !60, line: 289, baseType: !1689, size: 64, offset: 128)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1686, file: !60, line: 290, baseType: !1689, size: 64, offset: 192)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1686, file: !60, line: 291, baseType: !1689, size: 64, offset: 256)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1686, file: !60, line: 292, baseType: !1689, size: 64, offset: 320)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1686, file: !60, line: 293, baseType: !1689, size: 64, offset: 384)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1686, file: !60, line: 294, baseType: !1689, size: 64, offset: 448)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1686, file: !60, line: 295, baseType: !1689, size: 64, offset: 512)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1686, file: !60, line: 296, baseType: !1689, size: 64, offset: 576)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1686, file: !60, line: 297, baseType: !1689, size: 64, offset: 640)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1686, file: !60, line: 298, baseType: !1689, size: 64, offset: 704)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1686, file: !60, line: 299, baseType: !1689, size: 64, offset: 768)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1686, file: !60, line: 300, baseType: !1689, size: 64, offset: 832)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1686, file: !60, line: 301, baseType: !1689, size: 64, offset: 896)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1686, file: !60, line: 302, baseType: !1689, size: 64, offset: 960)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1686, file: !60, line: 303, baseType: !1689, size: 64, offset: 1024)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1686, file: !60, line: 304, baseType: !1689, size: 64, offset: 1088)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1686, file: !60, line: 305, baseType: !1689, size: 64, offset: 1152)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1686, file: !60, line: 306, baseType: !1689, size: 64, offset: 1216)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1686, file: !60, line: 307, baseType: !1689, size: 64, offset: 1280)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1686, file: !60, line: 308, baseType: !1689, size: 64, offset: 1344)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1686, file: !60, line: 309, baseType: !1689, size: 64, offset: 1408)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1650, file: !48, line: 714, baseType: !1715, size: 64, offset: 768)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1717)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1718, line: 80, size: 1344, elements: !1719)
!1718 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!1719 = !{!1720, !1721, !1722, !1723, !1724, !1725, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1783}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1717, file: !1718, line: 81, baseType: !460, size: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1717, file: !1718, line: 82, baseType: !460, size: 64, offset: 64)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1717, file: !1718, line: 83, baseType: !637, size: 64, offset: 128)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1717, file: !1718, line: 84, baseType: !637, size: 64, offset: 192)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1717, file: !1718, line: 85, baseType: !637, size: 64, offset: 256)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1717, file: !1718, line: 87, baseType: !1726, size: 64, offset: 320)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = !DISubroutineType(types: !1728)
!1728 = !{!68, !1654, !1729}
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !42, line: 96, size: 1152, elements: !1731)
!1731 = !{!1732, !1733, !1734, !1735, !1736, !1737, !1738, !1742, !1746, !1747, !1748, !1749, !1750, !1758, !1759, !1760, !1761, !1762, !1763}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1730, file: !42, line: 97, baseType: !460, size: 64)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1730, file: !42, line: 98, baseType: !1715, size: 64, offset: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1730, file: !42, line: 100, baseType: !535, size: 64, offset: 128)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1730, file: !42, line: 101, baseType: !460, size: 64, offset: 192)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1730, file: !42, line: 103, baseType: !896, size: 8, offset: 256)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1730, file: !42, line: 104, baseType: !41, size: 32, offset: 288)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1730, file: !42, line: 106, baseType: !1739, size: 64, offset: 320)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1741)
!1741 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !42, line: 106, flags: DIFlagFwdDecl)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1730, file: !42, line: 107, baseType: !1743, size: 64, offset: 384)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1745)
!1745 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !42, line: 107, flags: DIFlagFwdDecl)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1730, file: !42, line: 109, baseType: !1689, size: 64, offset: 448)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1730, file: !42, line: 110, baseType: !1680, size: 64, offset: 512)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1730, file: !42, line: 111, baseType: !1689, size: 64, offset: 576)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1730, file: !42, line: 112, baseType: !1680, size: 64, offset: 640)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1730, file: !42, line: 113, baseType: !1751, size: 64, offset: 704)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DISubroutineType(types: !1753)
!1753 = !{!68, !1654, !1754}
!1754 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !60, line: 60, baseType: !1755)
!1755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !60, line: 58, size: 32, elements: !1756)
!1756 = !{!1757}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1755, file: !60, line: 59, baseType: !68, size: 32)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1730, file: !42, line: 114, baseType: !1689, size: 64, offset: 768)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1730, file: !42, line: 115, baseType: !637, size: 64, offset: 832)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1730, file: !42, line: 116, baseType: !637, size: 64, offset: 896)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1730, file: !42, line: 118, baseType: !1684, size: 64, offset: 960)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1730, file: !42, line: 119, baseType: !1680, size: 64, offset: 1024)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1730, file: !42, line: 121, baseType: !1764, size: 64, offset: 1088)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !42, line: 121, flags: DIFlagFwdDecl)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1717, file: !1718, line: 88, baseType: !1667, size: 64, offset: 384)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1717, file: !1718, line: 89, baseType: !1689, size: 64, offset: 448)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1717, file: !1718, line: 90, baseType: !1680, size: 64, offset: 512)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1717, file: !1718, line: 91, baseType: !1680, size: 64, offset: 576)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1717, file: !1718, line: 92, baseType: !1680, size: 64, offset: 640)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1717, file: !1718, line: 94, baseType: !1689, size: 64, offset: 704)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1717, file: !1718, line: 95, baseType: !1689, size: 64, offset: 768)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1717, file: !1718, line: 97, baseType: !1751, size: 64, offset: 832)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1717, file: !1718, line: 98, baseType: !1689, size: 64, offset: 896)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1717, file: !1718, line: 100, baseType: !1689, size: 64, offset: 960)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1717, file: !1718, line: 102, baseType: !1689, size: 64, offset: 1024)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !1717, file: !1718, line: 103, baseType: !1680, size: 64, offset: 1088)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1717, file: !1718, line: 105, baseType: !1684, size: 64, offset: 1152)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1717, file: !1718, line: 107, baseType: !1780, size: 64, offset: 1216)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1782)
!1782 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1718, line: 107, flags: DIFlagFwdDecl)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1717, file: !1718, line: 109, baseType: !896, size: 8, offset: 1280)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1650, file: !48, line: 715, baseType: !1729, size: 64, offset: 832)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !1650, file: !48, line: 717, baseType: !259, size: 64, offset: 896)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1650, file: !48, line: 719, baseType: !259, size: 64, offset: 960)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1650, file: !48, line: 721, baseType: !700, size: 256, offset: 1024)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !1650, file: !48, line: 725, baseType: !1789, size: 448, offset: 1280)
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !48, line: 517, size: 448, elements: !1790)
!1790 = !{!1791, !1792, !1793, !1794}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1789, file: !48, line: 518, baseType: !283, size: 128)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1789, file: !48, line: 519, baseType: !283, size: 128, offset: 128)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1789, file: !48, line: 520, baseType: !283, size: 128, offset: 256)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1789, file: !48, line: 521, baseType: !47, size: 32, offset: 384)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1650, file: !48, line: 726, baseType: !1796, size: 2496, offset: 1728)
!1796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !60, line: 663, size: 2496, elements: !1797)
!1797 = !{!1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1842, !1843, !1844, !1845, !1846, !1847, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1955, !1959}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1796, file: !60, line: 664, baseType: !1754, size: 32)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1796, file: !60, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1796, file: !60, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1796, file: !60, line: 667, baseType: !896, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1796, file: !60, line: 668, baseType: !896, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1796, file: !60, line: 669, baseType: !896, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1796, file: !60, line: 670, baseType: !896, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1796, file: !60, line: 671, baseType: !896, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1796, file: !60, line: 672, baseType: !896, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1796, file: !60, line: 673, baseType: !896, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1796, file: !60, line: 674, baseType: !896, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1796, file: !60, line: 675, baseType: !372, size: 32, offset: 64)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1796, file: !60, line: 676, baseType: !400, size: 32, offset: 96)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1796, file: !60, line: 678, baseType: !283, size: 128, offset: 128)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1796, file: !60, line: 679, baseType: !1540, size: 256, offset: 256)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1796, file: !60, line: 680, baseType: !1814, size: 64, offset: 512)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1816, line: 43, size: 1536, elements: !1817)
!1816 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1817 = !{!1818, !1819, !1820, !1821, !1822, !1825, !1826, !1827, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1815, file: !1816, line: 44, baseType: !460, size: 64)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1815, file: !1816, line: 45, baseType: !68, size: 32, offset: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1815, file: !1816, line: 46, baseType: !283, size: 128, offset: 128)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1815, file: !1816, line: 47, baseType: !400, size: 32, offset: 256)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1815, file: !1816, line: 48, baseType: !1823, size: 64, offset: 320)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !60, line: 629, flags: DIFlagFwdDecl)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1815, file: !1816, line: 49, baseType: !1282, size: 320, offset: 384)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1815, file: !1816, line: 50, baseType: !260, size: 64, offset: 704)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1815, file: !1816, line: 51, baseType: !1828, size: 64, offset: 768)
!1828 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1829, line: 29, baseType: !697)
!1829 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1815, file: !1816, line: 52, baseType: !1828, size: 64, offset: 832)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1815, file: !1816, line: 53, baseType: !1828, size: 64, offset: 896)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1815, file: !1816, line: 54, baseType: !1828, size: 64, offset: 960)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1815, file: !1816, line: 55, baseType: !1828, size: 64, offset: 1024)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1815, file: !1816, line: 56, baseType: !260, size: 64, offset: 1088)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1815, file: !1816, line: 57, baseType: !260, size: 64, offset: 1152)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1815, file: !1816, line: 58, baseType: !260, size: 64, offset: 1216)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1815, file: !1816, line: 59, baseType: !260, size: 64, offset: 1280)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1815, file: !1816, line: 60, baseType: !260, size: 64, offset: 1344)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1815, file: !1816, line: 61, baseType: !1654, size: 64, offset: 1408)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1815, file: !1816, line: 62, baseType: !896, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1815, file: !1816, line: 63, baseType: !896, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1796, file: !60, line: 681, baseType: !896, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1796, file: !60, line: 682, baseType: !896, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1796, file: !60, line: 683, baseType: !896, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1796, file: !60, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1796, file: !60, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1796, file: !60, line: 690, baseType: !1848, size: 512, offset: 640)
!1848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !55, line: 118, size: 512, elements: !1849)
!1849 = !{!1850, !1856, !1857, !1862, !1917, !1918, !1919, !1920}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1848, file: !55, line: 119, baseType: !1851, size: 256)
!1851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1852, line: 9, size: 256, elements: !1853)
!1852 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1853 = !{!1854, !1855}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1851, file: !1852, line: 10, baseType: !829, size: 192, align: 64)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1851, file: !1852, line: 11, baseType: !1828, size: 64, offset: 192)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1848, file: !55, line: 120, baseType: !1828, size: 64, offset: 256)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1848, file: !55, line: 121, baseType: !1858, size: 64, offset: 320)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{!54, !1861}
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1848, file: !55, line: 122, baseType: !1863, size: 64, offset: 384)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !55, line: 159, size: 512, align: 512, elements: !1865)
!1865 = !{!1866, !1891, !1892, !1895, !1900, !1901, !1912, !1916}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1864, file: !55, line: 160, baseType: !1867, size: 64)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !55, line: 215, size: 4608, align: 512, elements: !1869)
!1869 = !{!1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1868, file: !55, line: 216, baseType: !705, size: 32)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1868, file: !55, line: 217, baseType: !7, size: 32, offset: 32)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1868, file: !55, line: 218, baseType: !7, size: 32, offset: 64)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1868, file: !55, line: 219, baseType: !7, size: 32, offset: 96)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1868, file: !55, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1868, file: !55, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1868, file: !55, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1868, file: !55, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1868, file: !55, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1868, file: !55, line: 226, baseType: !7, size: 32, offset: 160)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1868, file: !55, line: 227, baseType: !305, size: 16, offset: 192)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1868, file: !55, line: 228, baseType: !305, size: 16, offset: 208)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1868, file: !55, line: 229, baseType: !7, size: 32, offset: 224)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1868, file: !55, line: 235, baseType: !1828, size: 64, offset: 256)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1868, file: !55, line: 236, baseType: !1861, size: 64, offset: 320)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1868, file: !55, line: 237, baseType: !1828, size: 64, offset: 384)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1868, file: !55, line: 238, baseType: !1861, size: 64, offset: 448)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1868, file: !55, line: 239, baseType: !1888, size: 4096, align: 512, offset: 512)
!1888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1864, size: 4096, align: 512, elements: !1889)
!1889 = !{!1890}
!1890 = !DISubrange(count: 8)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1864, file: !55, line: 161, baseType: !7, size: 32, offset: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1864, file: !55, line: 162, baseType: !1893, size: 32, offset: 96)
!1893 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !258, line: 32, baseType: !1894)
!1894 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !315, line: 96, baseType: !68)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1864, file: !55, line: 163, baseType: !1896, size: 32, offset: 128)
!1896 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !345, line: 274, baseType: !1897)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !345, line: 274, size: 32, elements: !1898)
!1898 = !{!1899}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1897, file: !345, line: 274, baseType: !349, size: 32)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1864, file: !55, line: 164, baseType: !1861, size: 64, offset: 192)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1864, file: !55, line: 165, baseType: !1902, size: 128, offset: 256)
!1902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1852, line: 14, size: 128, elements: !1903)
!1903 = !{!1904}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1902, file: !1852, line: 15, baseType: !1905, size: 128)
!1905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !830, line: 26, size: 128, elements: !1906)
!1906 = !{!1907, !1911}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1905, file: !830, line: 27, baseType: !1908, size: 64)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !830, line: 12, size: 64, elements: !1909)
!1909 = !{!1910}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1908, file: !830, line: 13, baseType: !834, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1905, file: !830, line: 28, baseType: !834, size: 64, offset: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1864, file: !55, line: 166, baseType: !1913, size: 64, offset: 384)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = !DISubroutineType(types: !1915)
!1915 = !{!1828}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1864, file: !55, line: 167, baseType: !1828, size: 64, offset: 448)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1848, file: !55, line: 123, baseType: !428, size: 8, offset: 448)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1848, file: !55, line: 124, baseType: !428, size: 8, offset: 456)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1848, file: !55, line: 125, baseType: !428, size: 8, offset: 464)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1848, file: !55, line: 126, baseType: !428, size: 8, offset: 472)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1796, file: !60, line: 691, baseType: !376, size: 64, offset: 1152)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1796, file: !60, line: 692, baseType: !1271, size: 256, offset: 1216)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1796, file: !60, line: 693, baseType: !765, size: 192, offset: 1472)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1796, file: !60, line: 694, baseType: !1823, size: 64, offset: 1664)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1796, file: !60, line: 695, baseType: !420, size: 32, offset: 1728)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1796, file: !60, line: 696, baseType: !420, size: 32, offset: 1760)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1796, file: !60, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1796, file: !60, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1796, file: !60, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1796, file: !60, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1796, file: !60, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1796, file: !60, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1796, file: !60, line: 703, baseType: !896, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1796, file: !60, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1796, file: !60, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1796, file: !60, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1796, file: !60, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1796, file: !60, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1796, file: !60, line: 709, baseType: !7, size: 32, offset: 1824)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1796, file: !60, line: 710, baseType: !59, size: 32, offset: 1856)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1796, file: !60, line: 711, baseType: !67, size: 32, offset: 1888)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1796, file: !60, line: 712, baseType: !67, size: 32, offset: 1920)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1796, file: !60, line: 713, baseType: !68, size: 32, offset: 1952)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1796, file: !60, line: 714, baseType: !68, size: 32, offset: 1984)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1796, file: !60, line: 715, baseType: !376, size: 64, offset: 2048)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1796, file: !60, line: 716, baseType: !376, size: 64, offset: 2112)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1796, file: !60, line: 717, baseType: !376, size: 64, offset: 2176)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1796, file: !60, line: 718, baseType: !376, size: 64, offset: 2240)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1796, file: !60, line: 720, baseType: !1950, size: 64, offset: 2304)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !60, line: 632, size: 64, elements: !1952)
!1952 = !{!1953, !1954}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1951, file: !60, line: 633, baseType: !400, size: 32)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1951, file: !60, line: 634, baseType: !7, size: 32, offset: 32)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1796, file: !60, line: 721, baseType: !1956, size: 64, offset: 2368)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{null, !1654, !822}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1796, file: !60, line: 722, baseType: !1960, size: 64, offset: 2432)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !60, line: 722, flags: DIFlagFwdDecl)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !1650, file: !48, line: 727, baseType: !1963, size: 64, offset: 4224)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !60, line: 742, size: 1792, elements: !1965)
!1965 = !{!1966, !1967, !1968, !1972, !1973, !1974}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1964, file: !60, line: 743, baseType: !1686, size: 1472)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1964, file: !60, line: 744, baseType: !1689, size: 64, offset: 1472)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1964, file: !60, line: 745, baseType: !1969, size: 64, offset: 1536)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{null, !1654, !896}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1964, file: !60, line: 746, baseType: !1689, size: 64, offset: 1600)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1964, file: !60, line: 747, baseType: !1680, size: 64, offset: 1664)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1964, file: !60, line: 748, baseType: !1680, size: 64, offset: 1728)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !1650, file: !48, line: 736, baseType: !1976, size: 128, offset: 4288)
!1976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !48, line: 529, size: 128, elements: !1977)
!1977 = !{!1978, !1982}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1976, file: !48, line: 531, baseType: !1979, size: 64)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1981, line: 13, flags: DIFlagFwdDecl)
!1981 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1976, file: !48, line: 532, baseType: !1983, size: 64, offset: 64)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !48, line: 49, flags: DIFlagFwdDecl)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !1650, file: !48, line: 738, baseType: !1986, size: 64, offset: 4416)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1988)
!1988 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !48, line: 738, flags: DIFlagFwdDecl)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !1650, file: !48, line: 740, baseType: !1990, size: 64, offset: 4480)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !1650, file: !48, line: 741, baseType: !376, size: 64, offset: 4544)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !1650, file: !48, line: 746, baseType: !376, size: 64, offset: 4608)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !1650, file: !48, line: 747, baseType: !1994, size: 64, offset: 4672)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1996)
!1996 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !48, line: 747, flags: DIFlagFwdDecl)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !1650, file: !48, line: 749, baseType: !1998, size: 64, offset: 4736)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !48, line: 428, size: 128, elements: !2000)
!2000 = !{!2001, !2002, !2003}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1999, file: !48, line: 433, baseType: !7, size: 32)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1999, file: !48, line: 434, baseType: !7, size: 32, offset: 32)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1999, file: !48, line: 435, baseType: !260, size: 64, offset: 64)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !1650, file: !48, line: 751, baseType: !283, size: 128, offset: 4800)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !1650, file: !48, line: 762, baseType: !2006, size: 64, offset: 4928)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !48, line: 762, flags: DIFlagFwdDecl)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !1650, file: !48, line: 770, baseType: !2009, offset: 4992)
!2009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2010, line: 5, elements: !1516)
!2010 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !1650, file: !48, line: 772, baseType: !2012, size: 64, offset: 4992)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2014, line: 18, flags: DIFlagFwdDecl)
!2014 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1650, file: !48, line: 773, baseType: !2016, size: 64, offset: 5056)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2018, line: 41, size: 512, elements: !2019)
!2018 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!2019 = !{!2020, !2021, !2118, !2119, !2120, !2121}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !2017, file: !2018, line: 42, baseType: !2016, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2017, file: !2018, line: 43, baseType: !2022, size: 64, offset: 64)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2024)
!2024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !2018, line: 125, size: 1408, elements: !2025)
!2025 = !{!2026, !2030, !2034, !2040, !2046, !2047, !2052, !2056, !2060, !2065, !2069, !2070, !2074, !2078, !2082, !2093, !2094, !2095, !2096, !2106, !2110, !2114}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2024, file: !2018, line: 126, baseType: !2027, size: 64)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{!2016, !2016}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !2024, file: !2018, line: 127, baseType: !2031, size: 64, offset: 64)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{null, !2016}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !2024, file: !2018, line: 128, baseType: !2035, size: 64, offset: 128)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DISubroutineType(types: !2037)
!2037 = !{!896, !2038}
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2017)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !2024, file: !2018, line: 129, baseType: !2041, size: 64, offset: 192)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{!2044, !2038, !1670}
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !2024, file: !2018, line: 131, baseType: !2035, size: 64, offset: 256)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !2024, file: !2018, line: 133, baseType: !2048, size: 64, offset: 320)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = !DISubroutineType(types: !2050)
!2050 = !{!2051, !2038}
!2051 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !2018, line: 132, flags: DIFlagFwdDecl)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !2024, file: !2018, line: 134, baseType: !2053, size: 64, offset: 384)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DISubroutineType(types: !2055)
!2055 = !{!896, !2038, !460}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !2024, file: !2018, line: 136, baseType: !2057, size: 64, offset: 448)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{!68, !2038, !460, !7, !259, !633}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !2024, file: !2018, line: 141, baseType: !2061, size: 64, offset: 512)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{!68, !2038, !460, !2064, !633}
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !2024, file: !2018, line: 144, baseType: !2066, size: 64, offset: 576)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DISubroutineType(types: !2068)
!2068 = !{!460, !2038}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !2024, file: !2018, line: 145, baseType: !2066, size: 64, offset: 640)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !2024, file: !2018, line: 146, baseType: !2071, size: 64, offset: 704)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DISubroutineType(types: !2073)
!2073 = !{!2016, !2038}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !2024, file: !2018, line: 148, baseType: !2075, size: 64, offset: 768)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{!2016, !2038, !2016}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !2024, file: !2018, line: 151, baseType: !2079, size: 64, offset: 832)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = !DISubroutineType(types: !2081)
!2081 = !{!2016, !2038, !460}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !2024, file: !2018, line: 153, baseType: !2083, size: 64, offset: 896)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = !DISubroutineType(types: !2085)
!2085 = !{!68, !2038, !460, !460, !7, !7, !2086}
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !2018, line: 94, size: 640, elements: !2088)
!2088 = !{!2089, !2090, !2091}
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2087, file: !2018, line: 95, baseType: !2016, size: 64)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2087, file: !2018, line: 96, baseType: !7, size: 32, offset: 64)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2087, file: !2018, line: 97, baseType: !2092, size: 512, offset: 128)
!2092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !376, size: 512, elements: !1889)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !2024, file: !2018, line: 158, baseType: !2075, size: 64, offset: 960)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !2024, file: !2018, line: 161, baseType: !2071, size: 64, offset: 1024)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !2024, file: !2018, line: 163, baseType: !2027, size: 64, offset: 1088)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !2024, file: !2018, line: 164, baseType: !2097, size: 64, offset: 1152)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{!68, !2038, !2100}
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !2018, line: 73, size: 128, elements: !2102)
!2102 = !{!2103, !2104, !2105}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2101, file: !2018, line: 74, baseType: !7, size: 32)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2101, file: !2018, line: 75, baseType: !7, size: 32, offset: 32)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2101, file: !2018, line: 76, baseType: !2038, size: 64, offset: 64)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !2024, file: !2018, line: 166, baseType: !2107, size: 64, offset: 1216)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = !DISubroutineType(types: !2109)
!2109 = !{!259, !2016, !68}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !2024, file: !2018, line: 167, baseType: !2111, size: 64, offset: 1280)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{!68, !2038, !7}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !2024, file: !2018, line: 168, baseType: !2115, size: 64, offset: 1344)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DISubroutineType(types: !2117)
!2117 = !{!68, !2016}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2017, file: !2018, line: 44, baseType: !1654, size: 64, offset: 128)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2017, file: !2018, line: 45, baseType: !283, size: 128, offset: 192)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2017, file: !2018, line: 46, baseType: !283, size: 128, offset: 320)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2017, file: !2018, line: 47, baseType: !428, size: 8, offset: 448)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !1650, file: !48, line: 776, baseType: !68, size: 32, offset: 5120)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !1650, file: !48, line: 778, baseType: !502, size: 32, offset: 5152)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1650, file: !48, line: 779, baseType: !372, size: 32, offset: 5184)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !1650, file: !48, line: 781, baseType: !400, size: 32, offset: 5216)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !1650, file: !48, line: 782, baseType: !283, size: 128, offset: 5248)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1650, file: !48, line: 784, baseType: !2128, size: 64, offset: 5376)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2130)
!2130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2131, line: 52, size: 768, elements: !2132)
!2131 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!2132 = !{!2133, !2134, !2135, !2136, !2137, !2141, !2145, !2146, !2147, !2175, !2179, !2183}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2130, file: !2131, line: 53, baseType: !460, size: 64)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2130, file: !2131, line: 55, baseType: !637, size: 64, offset: 64)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2130, file: !2131, line: 56, baseType: !637, size: 64, offset: 128)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2130, file: !2131, line: 58, baseType: !1667, size: 64, offset: 192)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2130, file: !2131, line: 59, baseType: !2138, size: 64, offset: 256)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{!486, !1670, !1676}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2130, file: !2131, line: 61, baseType: !2142, size: 64, offset: 320)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{null, !2128}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2130, file: !2131, line: 62, baseType: !1680, size: 64, offset: 384)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2130, file: !2131, line: 64, baseType: !1689, size: 64, offset: 448)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2130, file: !2131, line: 66, baseType: !2148, size: 64, offset: 512)
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2150)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !76, line: 39, size: 384, elements: !2151)
!2151 = !{!2152, !2153, !2157, !2161, !2167, !2171}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2150, file: !76, line: 40, baseType: !75, size: 32)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2150, file: !76, line: 41, baseType: !2154, size: 64, offset: 64)
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = !DISubroutineType(types: !2156)
!2156 = !{!896}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2150, file: !76, line: 42, baseType: !2158, size: 64, offset: 128)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = !DISubroutineType(types: !2160)
!2160 = !{!259}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2150, file: !76, line: 43, baseType: !2162, size: 64, offset: 192)
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = !DISubroutineType(types: !2164)
!2164 = !{!2044, !2165}
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !76, line: 19, flags: DIFlagFwdDecl)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2150, file: !76, line: 44, baseType: !2168, size: 64, offset: 256)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{!2044}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2150, file: !76, line: 45, baseType: !2172, size: 64, offset: 320)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = !DISubroutineType(types: !2174)
!2174 = !{null, !259}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2130, file: !2131, line: 67, baseType: !2176, size: 64, offset: 576)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = !DISubroutineType(types: !2178)
!2178 = !{!2044, !1670}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2130, file: !2131, line: 69, baseType: !2180, size: 64, offset: 640)
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = !DISubroutineType(types: !2182)
!2182 = !{null, !1670, !1677, !1678}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2130, file: !2131, line: 71, baseType: !1684, size: 64, offset: 704)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1650, file: !48, line: 785, baseType: !637, size: 64, offset: 5440)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1650, file: !48, line: 787, baseType: !1680, size: 64, offset: 5504)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !1650, file: !48, line: 788, baseType: !2187, size: 64, offset: 5568)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !48, line: 46, flags: DIFlagFwdDecl)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !1650, file: !48, line: 789, baseType: !2190, size: 64, offset: 5632)
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !48, line: 48, flags: DIFlagFwdDecl)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !1650, file: !48, line: 791, baseType: !2193, size: 64, offset: 5696)
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !48, line: 597, size: 128, elements: !2195)
!2195 = !{!2196, !2197, !2198, !2199, !2200}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !2194, file: !48, line: 598, baseType: !81, size: 32)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !2194, file: !48, line: 599, baseType: !90, size: 32, offset: 32)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !2194, file: !48, line: 600, baseType: !95, size: 32, offset: 64)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !2194, file: !48, line: 601, baseType: !896, size: 8, offset: 96)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !2194, file: !48, line: 602, baseType: !896, size: 8, offset: 104)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !1650, file: !48, line: 793, baseType: !100, size: 32, offset: 5760)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !1650, file: !48, line: 795, baseType: !896, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1650, file: !48, line: 796, baseType: !896, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !1650, file: !48, line: 797, baseType: !896, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !1650, file: !48, line: 798, baseType: !896, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !1650, file: !48, line: 799, baseType: !896, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !1586, file: !164, line: 145, baseType: !2208, size: 64, offset: 576)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2210)
!2210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device_operations", file: !164, line: 1388, size: 1152, elements: !2211)
!2211 = !{!2212, !2300, !2304, !2309, !2313, !2317, !2318, !2322, !2323, !2335, !2339, !2340, !2344, !2370, !2374, !2379, !2380, !2384}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "submit_bio", scope: !2210, file: !164, line: 1389, baseType: !2213, size: 64)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = !DISubroutineType(types: !2215)
!2215 = !{null, !2216}
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio", file: !216, line: 265, size: 960, elements: !2218)
!2218 = !{!2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2233, !2235, !2238, !2239, !2242, !2246, !2247, !2249, !2250, !2251, !2252, !2253, !2298}
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "bi_next", scope: !2217, file: !216, line: 266, baseType: !2216, size: 64)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bdev", scope: !2217, file: !216, line: 267, baseType: !1597, size: 64, offset: 64)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "bi_opf", scope: !2217, file: !216, line: 268, baseType: !261, size: 32, offset: 128)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "bi_flags", scope: !2217, file: !216, line: 271, baseType: !305, size: 16, offset: 160)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "bi_ioprio", scope: !2217, file: !216, line: 272, baseType: !305, size: 16, offset: 176)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "bi_status", scope: !2217, file: !216, line: 273, baseType: !1256, size: 8, offset: 192)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_remaining", scope: !2217, file: !216, line: 274, baseType: !420, size: 32, offset: 224)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iter", scope: !2217, file: !216, line: 276, baseType: !2227, size: 160, align: 32, offset: 256)
!2227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bvec_iter", file: !266, line: 77, size: 160, align: 32, elements: !2228)
!2228 = !{!2229, !2230, !2231, !2232}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "bi_sector", scope: !2227, file: !266, line: 78, baseType: !1601, size: 64)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "bi_size", scope: !2227, file: !266, line: 80, baseType: !7, size: 32, offset: 64)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "bi_idx", scope: !2227, file: !266, line: 82, baseType: !7, size: 32, offset: 96)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bvec_done", scope: !2227, file: !266, line: 84, baseType: !7, size: 32, offset: 128)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "bi_cookie", scope: !2217, file: !216, line: 278, baseType: !2234, size: 32, offset: 416)
!2234 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_qc_t", file: !216, line: 258, baseType: !7)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "bi_end_io", scope: !2217, file: !216, line: 279, baseType: !2236, size: 64, offset: 448)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = !DIDerivedType(tag: DW_TAG_typedef, name: "bio_end_io_t", file: !216, line: 20, baseType: !2214)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "bi_private", scope: !2217, file: !216, line: 280, baseType: !259, size: 64, offset: 512)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "bi_blkg", scope: !2217, file: !216, line: 288, baseType: !2240, size: 64, offset: 576)
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = !DICompositeType(tag: DW_TAG_structure_type, name: "blkcg_gq", file: !216, line: 288, flags: DIFlagFwdDecl)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "bi_issue", scope: !2217, file: !216, line: 289, baseType: !2243, size: 64, offset: 640)
!2243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_issue", file: !216, line: 228, size: 64, elements: !2244)
!2244 = !{!2245}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2243, file: !216, line: 229, baseType: !376, size: 64)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iocost_cost", scope: !2217, file: !216, line: 291, baseType: !376, size: 64, offset: 704)
!2247 = !DIDerivedType(tag: DW_TAG_member, scope: !2217, file: !216, line: 299, baseType: !2248, offset: 768)
!2248 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2217, file: !216, line: 299, elements: !1516)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "bi_vcnt", scope: !2217, file: !216, line: 305, baseType: !305, size: 16, offset: 768)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "bi_max_vecs", scope: !2217, file: !216, line: 311, baseType: !305, size: 16, offset: 784)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_cnt", scope: !2217, file: !216, line: 313, baseType: !420, size: 32, offset: 800)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "bi_io_vec", scope: !2217, file: !216, line: 315, baseType: !264, size: 64, offset: 832)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "bi_pool", scope: !2217, file: !216, line: 317, baseType: !2254, size: 64, offset: 896)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_set", file: !188, line: 678, size: 1984, elements: !2256)
!2256 = !{!2257, !2261, !2262, !2265, !2287, !2288, !2289, !2290, !2295, !2296, !2297}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "bio_slab", scope: !2255, file: !188, line: 679, baseType: !2258, size: 64)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2260, line: 325, flags: DIFlagFwdDecl)
!2260 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "front_pad", scope: !2255, file: !188, line: 680, baseType: !7, size: 32, offset: 64)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !2255, file: !188, line: 685, baseType: !2263, size: 64, offset: 128)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_alloc_cache", file: !188, line: 685, flags: DIFlagFwdDecl)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "bio_pool", scope: !2255, file: !188, line: 687, baseType: !2266, size: 576, offset: 192)
!2266 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_t", file: !2267, line: 26, baseType: !2268)
!2267 = !DIFile(filename: "./include/linux/mempool.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1ef8a210e9c9e696cc7d6e9be9316611")
!2268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mempool_s", file: !2267, line: 16, size: 576, elements: !2269)
!2269 = !{!2270, !2271, !2272, !2273, !2275, !2276, !2281, !2286}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2268, file: !2267, line: 17, baseType: !400, size: 32)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "min_nr", scope: !2268, file: !2267, line: 18, baseType: !68, size: 32, offset: 32)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "curr_nr", scope: !2268, file: !2267, line: 19, baseType: !68, size: 32, offset: 64)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !2268, file: !2267, line: 20, baseType: !2274, size: 64, offset: 128)
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "pool_data", scope: !2268, file: !2267, line: 22, baseType: !259, size: 64, offset: 192)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2268, file: !2267, line: 23, baseType: !2277, size: 64, offset: 256)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_alloc_t", file: !2267, line: 13, baseType: !2279)
!2279 = !DISubroutineType(types: !2280)
!2280 = !{!259, !257, !259}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2268, file: !2267, line: 24, baseType: !2282, size: 64, offset: 320)
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2283, size: 64)
!2283 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_free_t", file: !2267, line: 14, baseType: !2284)
!2284 = !DISubroutineType(types: !2285)
!2285 = !{null, !259, !259}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2268, file: !2267, line: 25, baseType: !765, size: 192, offset: 384)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "bvec_pool", scope: !2255, file: !188, line: 688, baseType: !2266, size: 576, offset: 768)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "back_pad", scope: !2255, file: !188, line: 694, baseType: !7, size: 32, offset: 1344)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_lock", scope: !2255, file: !188, line: 699, baseType: !400, size: 32, offset: 1376)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_list", scope: !2255, file: !188, line: 700, baseType: !2291, size: 128, offset: 1408)
!2291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !188, line: 550, size: 128, elements: !2292)
!2292 = !{!2293, !2294}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2291, file: !188, line: 551, baseType: !2216, size: 64)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2291, file: !188, line: 552, baseType: !2216, size: 64, offset: 64)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_work", scope: !2255, file: !188, line: 701, baseType: !1271, size: 256, offset: 1536)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_workqueue", scope: !2255, file: !188, line: 702, baseType: !1294, size: 64, offset: 1792)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "cpuhp_dead", scope: !2255, file: !188, line: 707, baseType: !756, size: 128, offset: 1856)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "bi_inline_vecs", scope: !2217, file: !216, line: 324, baseType: !2299, offset: 960)
!2299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, elements: !780)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "poll_bio", scope: !2210, file: !164, line: 1390, baseType: !2301, size: 64, offset: 64)
!2301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2302, size: 64)
!2302 = !DISubroutineType(types: !2303)
!2303 = !{!68, !2216, !1204, !7}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2210, file: !164, line: 1392, baseType: !2305, size: 64, offset: 128)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = !DISubroutineType(types: !2307)
!2307 = !{!68, !1585, !2308}
!2308 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_mode_t", file: !164, line: 115, baseType: !7)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2210, file: !164, line: 1393, baseType: !2310, size: 64, offset: 192)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = !DISubroutineType(types: !2312)
!2312 = !{null, !1585}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !2210, file: !164, line: 1394, baseType: !2314, size: 64, offset: 256)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!68, !1597, !2308, !7, !260}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2210, file: !164, line: 1396, baseType: !2314, size: 64, offset: 320)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "check_events", scope: !2210, file: !164, line: 1398, baseType: !2319, size: 64, offset: 384)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{!7, !1585, !7}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_native_capacity", scope: !2210, file: !164, line: 1400, baseType: !2310, size: 64, offset: 448)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "getgeo", scope: !2210, file: !164, line: 1401, baseType: !2324, size: 64, offset: 512)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = !DISubroutineType(types: !2326)
!2326 = !{!68, !1597, !2327}
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hd_geometry", file: !2329, line: 324, size: 128, elements: !2330)
!2329 = !DIFile(filename: "./include/uapi/linux/hdreg.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "adf93574a29e06a14be36853316fb289")
!2330 = !{!2331, !2332, !2333, !2334}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !2328, file: !2329, line: 325, baseType: !382, size: 8)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "sectors", scope: !2328, file: !2329, line: 326, baseType: !382, size: 8, offset: 8)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "cylinders", scope: !2328, file: !2329, line: 327, baseType: !305, size: 16, offset: 16)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2328, file: !2329, line: 328, baseType: !260, size: 64, offset: 64)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "set_read_only", scope: !2210, file: !164, line: 1402, baseType: !2336, size: 64, offset: 576)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = !DISubroutineType(types: !2338)
!2338 = !{!68, !1597, !896}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "free_disk", scope: !2210, file: !164, line: 1403, baseType: !2310, size: 64, offset: 640)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "swap_slot_free_notify", scope: !2210, file: !164, line: 1405, baseType: !2341, size: 64, offset: 704)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = !DISubroutineType(types: !2343)
!2343 = !{null, !1597, !260}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "report_zones", scope: !2210, file: !164, line: 1406, baseType: !2345, size: 64, offset: 768)
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = !DISubroutineType(types: !2347)
!2347 = !{!68, !1585, !1601, !7, !2348, !259}
!2348 = !DIDerivedType(tag: DW_TAG_typedef, name: "report_zones_cb", file: !164, line: 342, baseType: !2349)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = !DISubroutineType(types: !2351)
!2351 = !{!68, !2352, !7, !259}
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_zone", file: !2354, line: 106, size: 512, elements: !2355)
!2354 = !DIFile(filename: "./include/uapi/linux/blkzoned.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3d5e7016ed7b437a9c2a308f55db1257")
!2355 = !{!2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2365, !2366}
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2353, file: !2354, line: 107, baseType: !377, size: 64)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2353, file: !2354, line: 108, baseType: !377, size: 64, offset: 64)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "wp", scope: !2353, file: !2354, line: 109, baseType: !377, size: 64, offset: 128)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2353, file: !2354, line: 110, baseType: !429, size: 8, offset: 192)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !2353, file: !2354, line: 111, baseType: !429, size: 8, offset: 200)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "non_seq", scope: !2353, file: !2354, line: 112, baseType: !429, size: 8, offset: 208)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !2353, file: !2354, line: 113, baseType: !429, size: 8, offset: 216)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !2353, file: !2354, line: 114, baseType: !2364, size: 32, offset: 224)
!2364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !429, size: 32, elements: !761)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !2353, file: !2354, line: 115, baseType: !377, size: 64, offset: 256)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2353, file: !2354, line: 116, baseType: !2367, size: 192, offset: 320)
!2367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !429, size: 192, elements: !2368)
!2368 = !{!2369}
!2369 = !DISubrange(count: 24)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2210, file: !164, line: 1408, baseType: !2371, size: 64, offset: 832)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{!486, !1585, !1676}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "get_unique_id", scope: !2210, file: !164, line: 1410, baseType: !2375, size: 64, offset: 896)
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{!68, !1585, !2378, !182}
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2210, file: !164, line: 1412, baseType: !535, size: 64, offset: 960)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "pr_ops", scope: !2210, file: !164, line: 1413, baseType: !2381, size: 64, offset: 1024)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2383)
!2383 = !DICompositeType(tag: DW_TAG_structure_type, name: "pr_ops", file: !164, line: 37, flags: DIFlagFwdDecl)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "alternative_gpt_sector", scope: !2210, file: !164, line: 1420, baseType: !2385, size: 64, offset: 1088)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{!68, !1585, !2388}
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !1586, file: !164, line: 146, baseType: !1212, size: 64, offset: 640)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1586, file: !164, line: 147, baseType: !259, size: 64, offset: 704)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "bio_split", scope: !1586, file: !164, line: 149, baseType: !2255, size: 1984, offset: 768)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1586, file: !164, line: 151, baseType: !68, size: 32, offset: 2752)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1586, file: !164, line: 152, baseType: !260, size: 64, offset: 2816)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "open_mutex", scope: !1586, file: !164, line: 161, baseType: !700, size: 256, offset: 2880)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "open_partitions", scope: !1586, file: !164, line: 162, baseType: !7, size: 32, offset: 3136)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !1586, file: !164, line: 164, baseType: !2397, size: 64, offset: 3200)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !30, line: 163, size: 6848, elements: !2399)
!2399 = !{!2400, !2401, !2402, !2403, !2404, !2405, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2451, !2452, !2453, !2454, !2456, !2457, !2458}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2398, file: !30, line: 164, baseType: !376, size: 64)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2398, file: !30, line: 165, baseType: !829, size: 192, align: 64, offset: 64)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !2398, file: !30, line: 166, baseType: !283, size: 128, offset: 256)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2398, file: !30, line: 167, baseType: !260, size: 64, offset: 384)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !2398, file: !30, line: 168, baseType: !260, size: 64, offset: 448)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !2398, file: !30, line: 170, baseType: !2406, size: 32, offset: 512)
!2406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2407, line: 19, size: 32, elements: !2408)
!2407 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2408 = !{!2409}
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2406, file: !2407, line: 20, baseType: !743, size: 32)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !2398, file: !30, line: 171, baseType: !7, size: 32, offset: 544)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !2398, file: !30, line: 172, baseType: !7, size: 32, offset: 576)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !2398, file: !30, line: 173, baseType: !7, size: 32, offset: 608)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !2398, file: !30, line: 173, baseType: !7, size: 32, offset: 640)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !2398, file: !30, line: 179, baseType: !691, size: 64, offset: 704)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "last_bdp_sleep", scope: !2398, file: !30, line: 184, baseType: !260, size: 64, offset: 768)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !2398, file: !30, line: 186, baseType: !2417, size: 4672, offset: 832)
!2417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !30, line: 105, size: 4672, elements: !2418)
!2418 = !{!2419, !2420, !2421, !2422, !2423, !2424, !2425, !2426, !2427, !2428, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2444, !2445, !2446, !2447, !2448, !2449, !2450}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !2417, file: !30, line: 106, baseType: !2397, size: 64)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2417, file: !30, line: 108, baseType: !260, size: 64, offset: 64)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !2417, file: !30, line: 109, baseType: !260, size: 64, offset: 128)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !2417, file: !30, line: 111, baseType: !283, size: 128, offset: 192)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !2417, file: !30, line: 112, baseType: !283, size: 128, offset: 320)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !2417, file: !30, line: 113, baseType: !283, size: 128, offset: 448)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !2417, file: !30, line: 114, baseType: !283, size: 128, offset: 576)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !2417, file: !30, line: 115, baseType: !400, size: 32, offset: 704)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_inodes", scope: !2417, file: !30, line: 117, baseType: !420, size: 32, offset: 736)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !2417, file: !30, line: 118, baseType: !2429, size: 1280, offset: 768)
!2429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !954, size: 1280, elements: !761)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !2417, file: !30, line: 120, baseType: !260, size: 64, offset: 2048)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !2417, file: !30, line: 121, baseType: !260, size: 64, offset: 2112)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !2417, file: !30, line: 122, baseType: !260, size: 64, offset: 2176)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !2417, file: !30, line: 123, baseType: !260, size: 64, offset: 2240)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !2417, file: !30, line: 124, baseType: !260, size: 64, offset: 2304)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !2417, file: !30, line: 132, baseType: !260, size: 64, offset: 2368)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !2417, file: !30, line: 133, baseType: !260, size: 64, offset: 2432)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !2417, file: !30, line: 135, baseType: !2438, size: 384, offset: 2496)
!2438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !2439, line: 76, size: 384, elements: !2440)
!2439 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a71374c9cbe54a4b0f3b6bbea75a8cfc")
!2440 = !{!2441, !2442, !2443}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2438, file: !2439, line: 78, baseType: !954, size: 320)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !2438, file: !2439, line: 80, baseType: !7, size: 32, offset: 320)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2438, file: !2439, line: 81, baseType: !705, size: 32, offset: 352)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !2417, file: !30, line: 136, baseType: !68, size: 32, offset: 2880)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !2417, file: !30, line: 137, baseType: !29, size: 32, offset: 2912)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !2417, file: !30, line: 139, baseType: !400, size: 32, offset: 2944)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !2417, file: !30, line: 140, baseType: !283, size: 128, offset: 3008)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !2417, file: !30, line: 141, baseType: !1267, size: 704, offset: 3136)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "bw_dwork", scope: !2417, file: !30, line: 142, baseType: !1267, size: 704, offset: 3840)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !2417, file: !30, line: 144, baseType: !283, size: 128, offset: 4544)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !2398, file: !30, line: 187, baseType: !283, size: 128, offset: 5504)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !2398, file: !30, line: 193, baseType: !765, size: 192, offset: 5632)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2398, file: !30, line: 195, baseType: !1654, size: 64, offset: 5824)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2398, file: !30, line: 196, baseType: !2455, size: 512, offset: 5888)
!2455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !462, size: 512, elements: !593)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2398, file: !30, line: 197, baseType: !1654, size: 64, offset: 6400)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !2398, file: !30, line: 199, baseType: !1282, size: 320, offset: 6464)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !2398, file: !30, line: 202, baseType: !338, size: 64, offset: 6784)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "queue_kobj", scope: !1586, file: !164, line: 165, baseType: !548, size: 512, offset: 3264)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "slave_dir", scope: !1586, file: !164, line: 166, baseType: !554, size: 64, offset: 3776)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "slave_bdevs", scope: !1586, file: !164, line: 168, baseType: !283, size: 128, offset: 3840)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "random", scope: !1586, file: !164, line: 170, baseType: !2463, size: 64, offset: 3968)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = !DICompositeType(tag: DW_TAG_structure_type, name: "timer_rand_state", file: !164, line: 170, flags: DIFlagFwdDecl)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "sync_io", scope: !1586, file: !164, line: 171, baseType: !420, size: 32, offset: 4032)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "ev", scope: !1586, file: !164, line: 172, baseType: !2467, size: 64, offset: 4096)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_events", file: !164, line: 104, flags: DIFlagFwdDecl)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "cdi", scope: !1586, file: !164, line: 197, baseType: !2470, size: 64, offset: 4160)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdrom_device_info", file: !164, line: 197, flags: DIFlagFwdDecl)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !1586, file: !164, line: 199, baseType: !68, size: 32, offset: 4224)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !1586, file: !164, line: 200, baseType: !2474, size: 64, offset: 4288)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = !DICompositeType(tag: DW_TAG_structure_type, name: "badblocks", file: !164, line: 105, flags: DIFlagFwdDecl)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "lockdep_map", scope: !1586, file: !164, line: 201, baseType: !1514, offset: 4352)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "diskseq", scope: !1586, file: !164, line: 202, baseType: !376, size: 64, offset: 4352)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "open_mode", scope: !1586, file: !164, line: 203, baseType: !2308, size: 32, offset: 4416)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ranges", scope: !1586, file: !164, line: 209, baseType: !2480, size: 64, offset: 4480)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_independent_access_ranges", file: !164, line: 384, size: 576, elements: !2482)
!2482 = !{!2483, !2484, !2485, !2486}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2481, file: !164, line: 385, baseType: !548, size: 512)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_registered", scope: !2481, file: !164, line: 386, baseType: !896, size: 8, offset: 512)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ia_ranges", scope: !2481, file: !164, line: 387, baseType: !7, size: 32, offset: 544)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "ia_range", scope: !2481, file: !164, line: 388, baseType: !2487, offset: 576)
!2487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2488, elements: !780)
!2488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_independent_access_range", file: !164, line: 378, size: 640, elements: !2489)
!2489 = !{!2490, !2491, !2492}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2488, file: !164, line: 379, baseType: !548, size: 512)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "sector", scope: !2488, file: !164, line: 380, baseType: !1601, size: 64, offset: 512)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "nr_sectors", scope: !2488, file: !164, line: 381, baseType: !1601, size: 64, offset: 576)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1213, file: !164, line: 438, baseType: !743, size: 32, offset: 1344)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "mq_kobj", scope: !1213, file: !164, line: 443, baseType: !554, size: 64, offset: 1408)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1213, file: !164, line: 450, baseType: !1654, size: 64, offset: 1472)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "rpm_status", scope: !1213, file: !164, line: 451, baseType: !67, size: 32, offset: 1536)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "nr_requests", scope: !1213, file: !164, line: 457, baseType: !260, size: 64, offset: 1600)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pad_mask", scope: !1213, file: !164, line: 459, baseType: !7, size: 32, offset: 1664)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "rq_timeout", scope: !1213, file: !164, line: 466, baseType: !7, size: 32, offset: 1696)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1213, file: !164, line: 468, baseType: !1282, size: 320, offset: 1728)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_work", scope: !1213, file: !164, line: 469, baseType: !1271, size: 256, offset: 2048)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "nr_active_requests_shared_tags", scope: !1213, file: !164, line: 471, baseType: !420, size: 32, offset: 2304)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "sched_shared_tags", scope: !1213, file: !164, line: 473, baseType: !1345, size: 64, offset: 2368)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1213, file: !164, line: 475, baseType: !283, size: 128, offset: 2432)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "blkcg_pols", scope: !1213, file: !164, line: 477, baseType: !1304, size: 64, offset: 2560)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "root_blkg", scope: !1213, file: !164, line: 478, baseType: !2240, size: 64, offset: 2624)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "blkg_list", scope: !1213, file: !164, line: 479, baseType: !283, size: 128, offset: 2688)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "blkcg_mutex", scope: !1213, file: !164, line: 480, baseType: !700, size: 256, offset: 2816)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "limits", scope: !1213, file: !164, line: 483, baseType: !2510, size: 960, offset: 3072)
!2510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "queue_limits", file: !164, line: 300, size: 960, elements: !2511)
!2511 = !{!2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "bounce", scope: !2510, file: !164, line: 301, baseType: !163, size: 32)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "seg_boundary_mask", scope: !2510, file: !164, line: 302, baseType: !260, size: 64, offset: 64)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "virt_boundary_mask", scope: !2510, file: !164, line: 303, baseType: !260, size: 64, offset: 128)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_sectors", scope: !2510, file: !164, line: 305, baseType: !7, size: 32, offset: 192)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "max_dev_sectors", scope: !2510, file: !164, line: 306, baseType: !7, size: 32, offset: 224)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_sectors", scope: !2510, file: !164, line: 307, baseType: !7, size: 32, offset: 256)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "max_sectors", scope: !2510, file: !164, line: 308, baseType: !7, size: 32, offset: 288)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "max_user_sectors", scope: !2510, file: !164, line: 309, baseType: !7, size: 32, offset: 320)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2510, file: !164, line: 310, baseType: !7, size: 32, offset: 352)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "physical_block_size", scope: !2510, file: !164, line: 311, baseType: !7, size: 32, offset: 384)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "logical_block_size", scope: !2510, file: !164, line: 312, baseType: !7, size: 32, offset: 416)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_offset", scope: !2510, file: !164, line: 313, baseType: !7, size: 32, offset: 448)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "io_min", scope: !2510, file: !164, line: 314, baseType: !7, size: 32, offset: 480)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "io_opt", scope: !2510, file: !164, line: 315, baseType: !7, size: 32, offset: 512)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_sectors", scope: !2510, file: !164, line: 316, baseType: !7, size: 32, offset: 544)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_discard_sectors", scope: !2510, file: !164, line: 317, baseType: !7, size: 32, offset: 576)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "max_secure_erase_sectors", scope: !2510, file: !164, line: 318, baseType: !7, size: 32, offset: 608)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_zeroes_sectors", scope: !2510, file: !164, line: 319, baseType: !7, size: 32, offset: 640)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "max_zone_append_sectors", scope: !2510, file: !164, line: 320, baseType: !7, size: 32, offset: 672)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "discard_granularity", scope: !2510, file: !164, line: 321, baseType: !7, size: 32, offset: 704)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "discard_alignment", scope: !2510, file: !164, line: 322, baseType: !7, size: 32, offset: 736)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "zone_write_granularity", scope: !2510, file: !164, line: 323, baseType: !7, size: 32, offset: 768)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "max_segments", scope: !2510, file: !164, line: 325, baseType: !305, size: 16, offset: 800)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "max_integrity_segments", scope: !2510, file: !164, line: 326, baseType: !305, size: 16, offset: 816)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_segments", scope: !2510, file: !164, line: 327, baseType: !305, size: 16, offset: 832)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "misaligned", scope: !2510, file: !164, line: 329, baseType: !382, size: 8, offset: 848)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "discard_misaligned", scope: !2510, file: !164, line: 330, baseType: !382, size: 8, offset: 856)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "raid_partial_stripes_expensive", scope: !2510, file: !164, line: 331, baseType: !382, size: 8, offset: 864)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "zoned", scope: !2510, file: !164, line: 332, baseType: !168, size: 32, offset: 896)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alignment", scope: !2510, file: !164, line: 339, baseType: !7, size: 32, offset: 928)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "required_elevator_features", scope: !1213, file: !164, line: 485, baseType: !7, size: 32, offset: 4032)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1213, file: !164, line: 487, baseType: !68, size: 32, offset: 4064)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "blk_trace", scope: !1213, file: !164, line: 489, baseType: !2545, size: 64, offset: 4096)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_trace", file: !2547, line: 16, size: 768, elements: !2548)
!2547 = !DIFile(filename: "./include/linux/blktrace_api.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7fc0200d7afa2d9a91adb9df0e39bd41")
!2548 = !{!2549, !2550, !3914, !3916, !3918, !3919, !3920, !3921, !3922, !3923, !3924, !3925}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "trace_state", scope: !2546, file: !2547, line: 17, baseType: !68, size: 32)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "rchan", scope: !2546, file: !2547, line: 18, baseType: !2551, size: 64, offset: 64)
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rchan", file: !2553, line: 59, size: 2944, elements: !2554)
!2553 = !DIFile(filename: "./include/linux/relay.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "40574c8478591cf5cd74ac22d182d535")
!2554 = !{!2555, !2556, !2557, !2558, !2559, !3901, !3902, !3903, !3904, !3906, !3907, !3908, !3909, !3910}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2552, file: !2553, line: 61, baseType: !372, size: 32)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "subbuf_size", scope: !2552, file: !2553, line: 62, baseType: !633, size: 64, offset: 64)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "n_subbufs", scope: !2552, file: !2553, line: 63, baseType: !633, size: 64, offset: 128)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_size", scope: !2552, file: !2553, line: 64, baseType: !633, size: 64, offset: 192)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !2552, file: !2553, line: 65, baseType: !2560, size: 64, offset: 256)
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2561 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2562)
!2562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rchan_callbacks", file: !2553, line: 80, size: 192, elements: !2563)
!2563 = !{!2564, !3896, !3900}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "subbuf_start", scope: !2562, file: !2553, line: 101, baseType: !2565, size: 64)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{!68, !2568, !259, !259, !633}
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rchan_buf", file: !2553, line: 34, size: 1536, align: 512, elements: !2570)
!2570 = !{!2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !3885, !3886, !3887, !3888, !3889, !3890, !3892, !3893, !3894, !3895}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2569, file: !2553, line: 36, baseType: !259, size: 64)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2569, file: !2553, line: 37, baseType: !259, size: 64, offset: 64)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2569, file: !2553, line: 38, baseType: !633, size: 64, offset: 128)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "subbufs_produced", scope: !2569, file: !2553, line: 39, baseType: !633, size: 64, offset: 192)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "subbufs_consumed", scope: !2569, file: !2553, line: 40, baseType: !633, size: 64, offset: 256)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "chan", scope: !2569, file: !2553, line: 41, baseType: !2551, size: 64, offset: 320)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "read_wait", scope: !2569, file: !2553, line: 42, baseType: !765, size: 192, offset: 384)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_work", scope: !2569, file: !2553, line: 43, baseType: !2579, size: 256, offset: 576)
!2579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_work", file: !2580, line: 17, size: 256, elements: !2581)
!2580 = !DIFile(filename: "./include/linux/irq_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "897aa98b7525a8c43c93f11203b0d4f0")
!2581 = !{!2582, !2594, !2599}
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2579, file: !2580, line: 18, baseType: !2583, size: 128)
!2583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2584, line: 58, size: 128, elements: !2585)
!2584 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2585 = !{!2586, !2587, !2592, !2593}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2583, file: !2584, line: 59, baseType: !672, size: 64)
!2587 = !DIDerivedType(tag: DW_TAG_member, scope: !2583, file: !2584, line: 60, baseType: !2588, size: 32, offset: 64)
!2588 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2583, file: !2584, line: 60, size: 32, elements: !2589)
!2589 = !{!2590, !2591}
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2588, file: !2584, line: 61, baseType: !7, size: 32)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2588, file: !2584, line: 62, baseType: !420, size: 32)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2583, file: !2584, line: 65, baseType: !435, size: 16, offset: 96)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2583, file: !2584, line: 65, baseType: !435, size: 16, offset: 112)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2579, file: !2580, line: 19, baseType: !2595, size: 64, offset: 128)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = !DISubroutineType(types: !2597)
!2597 = !{null, !2598}
!2598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "irqwait", scope: !2579, file: !2580, line: 20, baseType: !2600, size: 64, offset: 192)
!2600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2601, line: 16, size: 64, elements: !2602)
!2601 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2602 = !{!2603}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2600, file: !2601, line: 17, baseType: !2604, size: 64)
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1574, line: 746, size: 58368, elements: !2606)
!2606 = !{!2607, !2615, !2616, !2617, !2618, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2676, !2687, !2707, !2711, !2714, !2745, !2746, !2747, !2748, !2752, !2754, !2755, !2756, !2757, !2758, !2759, !2770, !2771, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2788, !2789, !2796, !2797, !2951, !2952, !2953, !2954, !2955, !2956, !2957, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2967, !2968, !2969, !2970, !2971, !2972, !2973, !3035, !3038, !3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3050, !3051, !3052, !3054, !3056, !3057, !3058, !3059, !3060, !3061, !3067, !3068, !3069, !3070, !3071, !3072, !3073, !3085, !3091, !3092, !3093, !3094, !3095, !3099, !3102, !3109, !3114, !3117, !3120, !3123, !3126, !3264, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3304, !3305, !3306, !3315, !3323, !3324, !3325, !3326, !3327, !3332, !3333, !3334, !3337, !3338, !3340, !3351, !3354, !3362, !3365, !3366, !3452, !3453, !3454, !3455, !3456, !3462, !3463, !3464, !3465, !3468, !3469, !3472, !3486, !3487, !3490, !3491, !3492, !3495, !3496, !3497, !3500, !3501, !3502, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3534, !3537, !3543, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3625, !3627, !3628, !3629, !3630, !3631, !3632, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3662, !3663, !3664}
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2605, file: !1574, line: 752, baseType: !2608, size: 192)
!2608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2609, line: 56, size: 192, elements: !2610)
!2609 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2610 = !{!2611, !2612, !2613, !2614}
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2608, file: !2609, line: 57, baseType: !260, size: 64)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2608, file: !2609, line: 58, baseType: !260, size: 64, offset: 64)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2608, file: !2609, line: 59, baseType: !372, size: 32, offset: 128)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2608, file: !2609, line: 61, baseType: !372, size: 32, offset: 160)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2605, file: !1574, line: 754, baseType: !7, size: 32, offset: 192)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2605, file: !1574, line: 767, baseType: !259, size: 64, offset: 256)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2605, file: !1574, line: 768, baseType: !743, size: 32, offset: 320)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2605, file: !1574, line: 770, baseType: !7, size: 32, offset: 352)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2605, file: !1574, line: 771, baseType: !7, size: 32, offset: 384)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2605, file: !1574, line: 774, baseType: !68, size: 32, offset: 416)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2605, file: !1574, line: 775, baseType: !2583, size: 128, offset: 448)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2605, file: !1574, line: 776, baseType: !7, size: 32, offset: 576)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2605, file: !1574, line: 777, baseType: !260, size: 64, offset: 640)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2605, file: !1574, line: 778, baseType: !2604, size: 64, offset: 704)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2605, file: !1574, line: 787, baseType: !68, size: 32, offset: 768)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2605, file: !1574, line: 788, baseType: !68, size: 32, offset: 800)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2605, file: !1574, line: 790, baseType: !68, size: 32, offset: 832)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2605, file: !1574, line: 792, baseType: !68, size: 32, offset: 864)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2605, file: !1574, line: 793, baseType: !68, size: 32, offset: 896)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2605, file: !1574, line: 794, baseType: !68, size: 32, offset: 928)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2605, file: !1574, line: 795, baseType: !7, size: 32, offset: 960)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2605, file: !1574, line: 797, baseType: !2633, size: 2048, offset: 1024)
!2633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1574, line: 551, size: 2048, elements: !2634)
!2634 = !{!2635, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2655, !2658, !2659, !2660}
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2633, file: !1574, line: 553, baseType: !2636, size: 128)
!2636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1574, line: 411, size: 128, elements: !2637)
!2637 = !{!2638, !2639}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2636, file: !1574, line: 412, baseType: !260, size: 64)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2636, file: !1574, line: 413, baseType: !372, size: 32, offset: 64)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2633, file: !1574, line: 554, baseType: !829, size: 192, align: 64, offset: 128)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2633, file: !1574, line: 555, baseType: !376, size: 64, offset: 320)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2633, file: !1574, line: 556, baseType: !376, size: 64, offset: 384)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2633, file: !1574, line: 558, baseType: !283, size: 128, offset: 448)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2633, file: !1574, line: 559, baseType: !7, size: 32, offset: 576)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2633, file: !1574, line: 561, baseType: !376, size: 64, offset: 640)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2633, file: !1574, line: 562, baseType: !376, size: 64, offset: 704)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2633, file: !1574, line: 563, baseType: !376, size: 64, offset: 768)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2633, file: !1574, line: 564, baseType: !376, size: 64, offset: 832)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2633, file: !1574, line: 565, baseType: !697, size: 64, offset: 896)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2633, file: !1574, line: 566, baseType: !376, size: 64, offset: 960)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2633, file: !1574, line: 568, baseType: !376, size: 64, offset: 1024)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2633, file: !1574, line: 571, baseType: !68, size: 32, offset: 1088)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2633, file: !1574, line: 572, baseType: !2654, size: 64, offset: 1152)
!2654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2633, size: 64)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2633, file: !1574, line: 574, baseType: !2656, size: 64, offset: 1216)
!2656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2657, size: 64)
!2657 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1574, line: 49, flags: DIFlagFwdDecl)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2633, file: !1574, line: 576, baseType: !2656, size: 64, offset: 1280)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2633, file: !1574, line: 578, baseType: !260, size: 64, offset: 1344)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2633, file: !1574, line: 588, baseType: !2661, size: 512, align: 512, offset: 1536)
!2661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1574, line: 497, size: 512, align: 512, elements: !2662)
!2662 = !{!2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2661, file: !1574, line: 498, baseType: !376, size: 64)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2661, file: !1574, line: 499, baseType: !376, size: 64, offset: 64)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2661, file: !1574, line: 500, baseType: !376, size: 64, offset: 128)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2661, file: !1574, line: 501, baseType: !372, size: 32, offset: 192)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2661, file: !1574, line: 502, baseType: !372, size: 32, offset: 224)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2661, file: !1574, line: 503, baseType: !260, size: 64, offset: 256)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2661, file: !1574, line: 504, baseType: !260, size: 64, offset: 320)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2661, file: !1574, line: 505, baseType: !260, size: 64, offset: 384)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2661, file: !1574, line: 506, baseType: !2672, size: 64, align: 64, offset: 448)
!2672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1574, line: 445, size: 64, align: 64, elements: !2673)
!2673 = !{!2674, !2675}
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2672, file: !1574, line: 446, baseType: !7, size: 32)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2672, file: !1574, line: 447, baseType: !7, size: 32, offset: 32)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2605, file: !1574, line: 798, baseType: !2677, size: 384, offset: 3072)
!2677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1574, line: 592, size: 384, elements: !2678)
!2678 = !{!2679, !2680, !2681, !2682, !2683, !2684, !2685}
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2677, file: !1574, line: 593, baseType: !283, size: 128)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2677, file: !1574, line: 594, baseType: !260, size: 64, offset: 128)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2677, file: !1574, line: 595, baseType: !260, size: 64, offset: 192)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2677, file: !1574, line: 596, baseType: !7, size: 32, offset: 256)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2677, file: !1574, line: 597, baseType: !305, size: 16, offset: 288)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2677, file: !1574, line: 598, baseType: !305, size: 16, offset: 304)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2677, file: !1574, line: 600, baseType: !2686, size: 64, offset: 320)
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2605, file: !1574, line: 799, baseType: !2688, size: 1792, offset: 3456)
!2688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1574, line: 610, size: 1792, elements: !2689)
!2689 = !{!2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2688, file: !1574, line: 611, baseType: !829, size: 192, align: 64)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2688, file: !1574, line: 618, baseType: !376, size: 64, offset: 192)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2688, file: !1574, line: 619, baseType: !376, size: 64, offset: 256)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2688, file: !1574, line: 620, baseType: !376, size: 64, offset: 320)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2688, file: !1574, line: 621, baseType: !376, size: 64, offset: 384)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2688, file: !1574, line: 622, baseType: !376, size: 64, offset: 448)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2688, file: !1574, line: 629, baseType: !697, size: 64, offset: 512)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2688, file: !1574, line: 630, baseType: !376, size: 64, offset: 576)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2688, file: !1574, line: 631, baseType: !7, size: 32, offset: 640)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2688, file: !1574, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2688, file: !1574, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2688, file: !1574, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2688, file: !1574, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2688, file: !1574, line: 662, baseType: !1848, size: 512, offset: 704)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2688, file: !1574, line: 671, baseType: !1848, size: 512, offset: 1216)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2688, file: !1574, line: 679, baseType: !2706, size: 64, offset: 1728)
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2605, file: !1574, line: 800, baseType: !2708, size: 64, offset: 5248)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2710)
!2710 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1574, line: 800, flags: DIFlagFwdDecl)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2605, file: !1574, line: 809, baseType: !2712, size: 64, offset: 5312)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1574, line: 70, flags: DIFlagFwdDecl)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2605, file: !1574, line: 825, baseType: !2715, size: 2048, align: 512, offset: 5632)
!2715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1574, line: 509, size: 2048, align: 512, elements: !2716)
!2716 = !{!2717, !2718, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744}
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2715, file: !1574, line: 511, baseType: !376, size: 64)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2715, file: !1574, line: 512, baseType: !376, size: 64, offset: 64)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2715, file: !1574, line: 513, baseType: !376, size: 64, offset: 128)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2715, file: !1574, line: 514, baseType: !376, size: 64, offset: 192)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2715, file: !1574, line: 515, baseType: !376, size: 64, offset: 256)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2715, file: !1574, line: 516, baseType: !376, size: 64, offset: 320)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2715, file: !1574, line: 518, baseType: !376, size: 64, offset: 384)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2715, file: !1574, line: 519, baseType: !376, size: 64, offset: 448)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2715, file: !1574, line: 520, baseType: !697, size: 64, offset: 512)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2715, file: !1574, line: 522, baseType: !376, size: 64, offset: 576)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2715, file: !1574, line: 523, baseType: !376, size: 64, offset: 640)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2715, file: !1574, line: 524, baseType: !697, size: 64, offset: 704)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2715, file: !1574, line: 526, baseType: !697, size: 64, offset: 768)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2715, file: !1574, line: 527, baseType: !376, size: 64, offset: 832)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2715, file: !1574, line: 529, baseType: !376, size: 64, offset: 896)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2715, file: !1574, line: 530, baseType: !376, size: 64, offset: 960)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2715, file: !1574, line: 531, baseType: !376, size: 64, offset: 1024)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2715, file: !1574, line: 532, baseType: !376, size: 64, offset: 1088)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2715, file: !1574, line: 533, baseType: !376, size: 64, offset: 1152)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2715, file: !1574, line: 535, baseType: !376, size: 64, offset: 1216)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2715, file: !1574, line: 536, baseType: !376, size: 64, offset: 1280)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2715, file: !1574, line: 537, baseType: !376, size: 64, offset: 1344)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2715, file: !1574, line: 538, baseType: !376, size: 64, offset: 1408)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2715, file: !1574, line: 539, baseType: !376, size: 64, offset: 1472)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2715, file: !1574, line: 540, baseType: !376, size: 64, offset: 1536)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2715, file: !1574, line: 541, baseType: !376, size: 64, offset: 1600)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2715, file: !1574, line: 542, baseType: !376, size: 64, offset: 1664)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2715, file: !1574, line: 543, baseType: !376, size: 64, offset: 1728)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2605, file: !1574, line: 833, baseType: !7, size: 32, offset: 7680)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2605, file: !1574, line: 836, baseType: !7, size: 32, offset: 7712)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2605, file: !1574, line: 837, baseType: !68, size: 32, offset: 7744)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2605, file: !1574, line: 838, baseType: !2749, size: 64, offset: 7808)
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2750 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2751)
!2751 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1299, line: 19, baseType: !1301)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2605, file: !1574, line: 839, baseType: !2753, size: 64, offset: 7872)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2605, file: !1574, line: 840, baseType: !2751, size: 64, offset: 7936)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2605, file: !1574, line: 841, baseType: !259, size: 64, offset: 8000)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2605, file: !1574, line: 843, baseType: !305, size: 16, offset: 8064)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2605, file: !1574, line: 845, baseType: !305, size: 16, offset: 8080)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2605, file: !1574, line: 848, baseType: !68, size: 32, offset: 8096)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2605, file: !1574, line: 849, baseType: !2760, size: 32, offset: 8128)
!2760 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1574, line: 718, size: 32, elements: !2761)
!2761 = !{!2762, !2769}
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2760, file: !1574, line: 724, baseType: !2763, size: 32)
!2763 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2760, file: !1574, line: 719, size: 32, elements: !2764)
!2764 = !{!2765, !2766, !2767, !2768}
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2763, file: !1574, line: 720, baseType: !428, size: 8)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2763, file: !1574, line: 721, baseType: !428, size: 8, offset: 8)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2763, file: !1574, line: 722, baseType: !428, size: 8, offset: 16)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2763, file: !1574, line: 723, baseType: !428, size: 8, offset: 24)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2760, file: !1574, line: 725, baseType: !372, size: 32)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2605, file: !1574, line: 850, baseType: !283, size: 128, offset: 8192)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2605, file: !1574, line: 851, baseType: !2772, size: 64, offset: 8320)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1574, line: 60, flags: DIFlagFwdDecl)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2605, file: !1574, line: 855, baseType: !260, size: 64, offset: 8384)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2605, file: !1574, line: 856, baseType: !428, size: 8, offset: 8448)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2605, file: !1574, line: 857, baseType: !428, size: 8, offset: 8456)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2605, file: !1574, line: 858, baseType: !68, size: 32, offset: 8480)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2605, file: !1574, line: 859, baseType: !283, size: 128, offset: 8512)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2605, file: !1574, line: 860, baseType: !68, size: 32, offset: 8640)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2605, file: !1574, line: 861, baseType: !283, size: 128, offset: 8704)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2605, file: !1574, line: 873, baseType: !2782, size: 256, offset: 8832)
!2782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1574, line: 376, size: 256, elements: !2783)
!2783 = !{!2784, !2785, !2786, !2787}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2782, file: !1574, line: 381, baseType: !260, size: 64)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2782, file: !1574, line: 384, baseType: !378, size: 64, offset: 64)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2782, file: !1574, line: 389, baseType: !378, size: 64, offset: 128)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2782, file: !1574, line: 392, baseType: !378, size: 64, offset: 192)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2605, file: !1574, line: 875, baseType: !283, size: 128, offset: 9088)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2605, file: !1574, line: 877, baseType: !2790, size: 320, offset: 9216)
!2790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2791, line: 86, size: 320, elements: !2792)
!2791 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2792 = !{!2793, !2794, !2795}
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2790, file: !2791, line: 87, baseType: !68, size: 32)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2790, file: !2791, line: 88, baseType: !283, size: 128, offset: 64)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2790, file: !2791, line: 89, baseType: !283, size: 128, offset: 192)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2605, file: !1574, line: 878, baseType: !829, size: 192, align: 64, offset: 9536)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2605, file: !1574, line: 881, baseType: !2798, size: 64, offset: 9728)
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !123, line: 733, size: 10240, elements: !2800)
!2800 = !{!2801, !2949}
!2801 = !DIDerivedType(tag: DW_TAG_member, scope: !2799, file: !123, line: 734, baseType: !2802, size: 10240)
!2802 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2799, file: !123, line: 734, size: 10240, elements: !2803)
!2803 = !{!2804, !2808, !2821, !2825, !2826, !2827, !2828, !2829, !2830, !2839, !2840, !2841, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2880, !2881, !2884, !2929, !2930, !2931, !2934, !2935, !2936, !2939, !2940, !2941, !2947, !2948}
!2804 = !DIDerivedType(tag: DW_TAG_member, scope: !2802, file: !123, line: 739, baseType: !2805, size: 512, align: 512)
!2805 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2802, file: !123, line: 739, size: 512, align: 512, elements: !2806)
!2806 = !{!2807}
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !2805, file: !123, line: 747, baseType: !420, size: 32)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !2802, file: !123, line: 750, baseType: !2809, size: 128, offset: 512)
!2809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !2810, line: 218, size: 128, elements: !2811)
!2810 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!2811 = !{!2812, !2819, !2820}
!2812 = !DIDerivedType(tag: DW_TAG_member, scope: !2809, file: !2810, line: 219, baseType: !2813, size: 32)
!2813 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2809, file: !2810, line: 219, size: 32, elements: !2814)
!2814 = !{!2815, !2816}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !2813, file: !2810, line: 220, baseType: !400, size: 32)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !2813, file: !2810, line: 221, baseType: !2817)
!2817 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !2810, line: 197, baseType: !2818)
!2818 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2810, line: 197, elements: !1516)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !2809, file: !2810, line: 223, baseType: !7, size: 32, offset: 32)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !2809, file: !2810, line: 224, baseType: !259, size: 64, offset: 64)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2802, file: !123, line: 752, baseType: !2822, size: 64, offset: 640)
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = !DISubroutineType(types: !2824)
!2824 = !{!260, !665, !260, !260, !260, !260}
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !2802, file: !123, line: 756, baseType: !260, size: 64, offset: 704)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !2802, file: !123, line: 757, baseType: !260, size: 64, offset: 768)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !2802, file: !123, line: 760, baseType: !260, size: 64, offset: 832)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !2802, file: !123, line: 761, baseType: !260, size: 64, offset: 896)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !2802, file: !123, line: 763, baseType: !260, size: 64, offset: 960)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2802, file: !123, line: 764, baseType: !2831, size: 64, offset: 1024)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2832 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2833, line: 299, baseType: !2834)
!2833 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2834 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2833, line: 299, size: 64, elements: !2835)
!2835 = !{!2836}
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2834, file: !2833, line: 299, baseType: !2837, size: 64)
!2837 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2838, line: 18, baseType: !260)
!2838 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !2802, file: !123, line: 773, baseType: !420, size: 32, offset: 1088)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !2802, file: !123, line: 785, baseType: !420, size: 32, offset: 1120)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !2802, file: !123, line: 795, baseType: !2842, size: 64, offset: 1152)
!2842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2843, size: 64)
!2843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !123, line: 726, size: 128, elements: !2844)
!2844 = !{!2845, !2846}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2843, file: !123, line: 727, baseType: !376, size: 64)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2843, file: !123, line: 728, baseType: !68, size: 32, offset: 64)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !2802, file: !123, line: 801, baseType: !260, size: 64, offset: 1216)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !2802, file: !123, line: 804, baseType: !691, size: 64, offset: 1280)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !2802, file: !123, line: 806, baseType: !68, size: 32, offset: 1344)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !2802, file: !123, line: 808, baseType: !400, size: 32, offset: 1376)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !2802, file: !123, line: 823, baseType: !837, size: 320, offset: 1408)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !2802, file: !123, line: 825, baseType: !283, size: 128, offset: 1728)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !2802, file: !123, line: 845, baseType: !68, size: 32, offset: 1856)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !2802, file: !123, line: 849, baseType: !260, size: 64, offset: 1920)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !2802, file: !123, line: 850, baseType: !260, size: 64, offset: 1984)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !2802, file: !123, line: 852, baseType: !260, size: 64, offset: 2048)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2802, file: !123, line: 853, baseType: !260, size: 64, offset: 2112)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !2802, file: !123, line: 854, baseType: !693, size: 64, offset: 2176)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !2802, file: !123, line: 855, baseType: !260, size: 64, offset: 2240)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !2802, file: !123, line: 856, baseType: !260, size: 64, offset: 2304)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !2802, file: !123, line: 857, baseType: !260, size: 64, offset: 2368)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !2802, file: !123, line: 858, baseType: !260, size: 64, offset: 2432)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !2802, file: !123, line: 865, baseType: !349, size: 32, offset: 2496)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !2802, file: !123, line: 867, baseType: !400, size: 32, offset: 2528)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !2802, file: !123, line: 869, baseType: !260, size: 64, offset: 2560)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !2802, file: !123, line: 869, baseType: !260, size: 64, offset: 2624)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !2802, file: !123, line: 869, baseType: !260, size: 64, offset: 2688)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !2802, file: !123, line: 869, baseType: !260, size: 64, offset: 2752)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !2802, file: !123, line: 870, baseType: !260, size: 64, offset: 2816)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !2802, file: !123, line: 870, baseType: !260, size: 64, offset: 2880)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !2802, file: !123, line: 870, baseType: !260, size: 64, offset: 2944)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !2802, file: !123, line: 871, baseType: !260, size: 64, offset: 3008)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !2802, file: !123, line: 871, baseType: !260, size: 64, offset: 3072)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !2802, file: !123, line: 871, baseType: !260, size: 64, offset: 3136)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !2802, file: !123, line: 871, baseType: !260, size: 64, offset: 3200)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !2802, file: !123, line: 873, baseType: !2877, size: 3328, offset: 3264)
!2877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 3328, elements: !2878)
!2878 = !{!2879}
!2879 = !DISubrange(count: 52)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !2802, file: !123, line: 875, baseType: !2429, size: 1280, offset: 6592)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !2802, file: !123, line: 877, baseType: !2882, size: 64, offset: 7872)
!2882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2883, size: 64)
!2883 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !123, line: 877, flags: DIFlagFwdDecl)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !2802, file: !123, line: 880, baseType: !2885, size: 1088, offset: 7936)
!2885 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2886, line: 72, baseType: !2887)
!2886 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2887 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2886, line: 23, size: 1088, elements: !2888)
!2888 = !{!2889, !2890, !2891, !2892, !2893, !2896, !2897, !2898, !2899, !2924, !2925, !2926}
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2887, file: !2886, line: 28, baseType: !376, size: 64)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2887, file: !2886, line: 38, baseType: !693, size: 64, offset: 64)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2887, file: !2886, line: 40, baseType: !260, size: 64, offset: 128)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2887, file: !2886, line: 43, baseType: !837, size: 320, offset: 192)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2887, file: !2886, line: 44, baseType: !2894, size: 64, offset: 512)
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2886, line: 44, flags: DIFlagFwdDecl)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2887, file: !2886, line: 48, baseType: !260, size: 64, offset: 576)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2887, file: !2886, line: 59, baseType: !700, size: 256, offset: 640)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2887, file: !2886, line: 60, baseType: !259, size: 64, offset: 896)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2887, file: !2886, line: 61, baseType: !2900, size: 64, offset: 960)
!2900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2901, size: 64)
!2901 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2902)
!2902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2903, line: 13, size: 1216, elements: !2904)
!2903 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2904 = !{!2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2902, file: !2903, line: 14, baseType: !259, size: 64)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2902, file: !2903, line: 15, baseType: !260, size: 64, offset: 64)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2902, file: !2903, line: 17, baseType: !260, size: 64, offset: 128)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2902, file: !2903, line: 17, baseType: !260, size: 64, offset: 192)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2902, file: !2903, line: 18, baseType: !260, size: 64, offset: 256)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2902, file: !2903, line: 18, baseType: !260, size: 64, offset: 320)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2902, file: !2903, line: 19, baseType: !2044, size: 64, offset: 384)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2902, file: !2903, line: 21, baseType: !623, size: 64, offset: 448)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2902, file: !2903, line: 23, baseType: !623, size: 64, offset: 512)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2902, file: !2903, line: 24, baseType: !623, size: 64, offset: 576)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2902, file: !2903, line: 25, baseType: !623, size: 64, offset: 640)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2902, file: !2903, line: 26, baseType: !623, size: 64, offset: 704)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2902, file: !2903, line: 27, baseType: !623, size: 64, offset: 768)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2902, file: !2903, line: 28, baseType: !623, size: 64, offset: 832)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2902, file: !2903, line: 29, baseType: !623, size: 64, offset: 896)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2902, file: !2903, line: 30, baseType: !623, size: 64, offset: 960)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2902, file: !2903, line: 31, baseType: !623, size: 64, offset: 1024)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2902, file: !2903, line: 32, baseType: !623, size: 64, offset: 1088)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2902, file: !2903, line: 33, baseType: !623, size: 64, offset: 1152)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2887, file: !2886, line: 63, baseType: !420, size: 32, offset: 1024)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2887, file: !2886, line: 69, baseType: !435, size: 16, offset: 1056)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2887, file: !2886, line: 70, baseType: !2927, size: 16, offset: 1072)
!2927 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !373, line: 18, baseType: !2928)
!2928 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !263, line: 23, baseType: !865)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2802, file: !123, line: 882, baseType: !260, size: 64, offset: 9024)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !2802, file: !123, line: 885, baseType: !400, size: 32, offset: 9088)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !2802, file: !123, line: 886, baseType: !2932, size: 64, offset: 9152)
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2933, size: 64)
!2933 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !123, line: 732, flags: DIFlagFwdDecl)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2802, file: !123, line: 901, baseType: !979, size: 64, offset: 9216)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !2802, file: !123, line: 904, baseType: !665, size: 64, offset: 9280)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !2802, file: !123, line: 906, baseType: !2937, size: 64, offset: 9344)
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2938, size: 64)
!2938 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !123, line: 906, flags: DIFlagFwdDecl)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !2802, file: !123, line: 930, baseType: !420, size: 32, offset: 9408)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !2802, file: !123, line: 933, baseType: !420, size: 32, offset: 9440)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !2802, file: !123, line: 935, baseType: !2942, size: 64, offset: 9472)
!2942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !145, line: 103, size: 64, elements: !2943)
!2943 = !{!2944}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2942, file: !145, line: 104, baseType: !2945, size: 64)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !145, line: 101, flags: DIFlagFwdDecl)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !2802, file: !123, line: 940, baseType: !691, size: 64, offset: 9536)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !2802, file: !123, line: 942, baseType: !1271, size: 256, offset: 9600)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !2799, file: !123, line: 986, baseType: !2950, offset: 10240)
!2950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, elements: !780)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2605, file: !1574, line: 882, baseType: !2798, size: 64, offset: 9792)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2605, file: !1574, line: 884, baseType: !68, size: 32, offset: 9856)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2605, file: !1574, line: 885, baseType: !68, size: 32, offset: 9888)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2605, file: !1574, line: 886, baseType: !68, size: 32, offset: 9920)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2605, file: !1574, line: 888, baseType: !68, size: 32, offset: 9952)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2605, file: !1574, line: 890, baseType: !260, size: 64, offset: 9984)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2605, file: !1574, line: 893, baseType: !7, size: 32, offset: 10048)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2605, file: !1574, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2605, file: !1574, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2605, file: !1574, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2605, file: !1574, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2605, file: !1574, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2605, file: !1574, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2605, file: !1574, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2605, file: !1574, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2605, file: !1574, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2605, file: !1574, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2605, file: !1574, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2605, file: !1574, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2605, file: !1574, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2605, file: !1574, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2605, file: !1574, line: 969, baseType: !260, size: 64, offset: 10176)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2605, file: !1574, line: 971, baseType: !2974, size: 448, offset: 10240)
!2974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !139, line: 25, size: 448, elements: !2975)
!2975 = !{!2976, !2977, !2982}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2974, file: !139, line: 26, baseType: !260, size: 64)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2974, file: !139, line: 27, baseType: !2978, size: 64, offset: 64)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = !DISubroutineType(types: !2980)
!2980 = !{!623, !2981}
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!2982 = !DIDerivedType(tag: DW_TAG_member, scope: !2974, file: !139, line: 28, baseType: !2983, size: 320, offset: 128)
!2983 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2974, file: !139, line: 28, size: 320, elements: !2984)
!2984 = !{!2985, !2995, !3020}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2983, file: !139, line: 37, baseType: !2986, size: 320)
!2986 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2983, file: !139, line: 30, size: 320, elements: !2987)
!2987 = !{!2988, !2990, !2991, !2992, !2993, !2994}
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2986, file: !139, line: 31, baseType: !2989, size: 64)
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2986, file: !139, line: 32, baseType: !372, size: 32, offset: 64)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2986, file: !139, line: 33, baseType: !372, size: 32, offset: 96)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2986, file: !139, line: 34, baseType: !372, size: 32, offset: 128)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2986, file: !139, line: 35, baseType: !376, size: 64, offset: 192)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2986, file: !139, line: 36, baseType: !2989, size: 64, offset: 256)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2983, file: !139, line: 47, baseType: !2996, size: 192)
!2996 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2983, file: !139, line: 39, size: 192, elements: !2997)
!2997 = !{!2998, !2999, !3000, !3019}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2996, file: !139, line: 40, baseType: !1893, size: 32)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2996, file: !139, line: 41, baseType: !138, size: 32, offset: 32)
!3000 = !DIDerivedType(tag: DW_TAG_member, scope: !2996, file: !139, line: 42, baseType: !3001, size: 64, offset: 64)
!3001 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2996, file: !139, line: 42, size: 64, elements: !3002)
!3002 = !{!3003, !3011}
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3001, file: !139, line: 43, baseType: !3004, size: 64)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3006, line: 7, size: 128, elements: !3007)
!3006 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3007 = !{!3008, !3010}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3005, file: !3006, line: 8, baseType: !3009, size: 64)
!3009 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !315, line: 93, baseType: !509)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3005, file: !3006, line: 9, baseType: !509, size: 64, offset: 64)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3001, file: !139, line: 44, baseType: !3012, size: 64)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3014, line: 7, size: 64, elements: !3015)
!3014 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3015 = !{!3016, !3018}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3013, file: !3014, line: 8, baseType: !3017, size: 32)
!3017 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3014, line: 5, baseType: !822)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3013, file: !3014, line: 9, baseType: !822, size: 32, offset: 32)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2996, file: !139, line: 46, baseType: !376, size: 64, offset: 128)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2983, file: !139, line: 55, baseType: !3021, size: 256)
!3021 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2983, file: !139, line: 49, size: 256, elements: !3022)
!3022 = !{!3023, !3031, !3032, !3033, !3034}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3021, file: !139, line: 50, baseType: !3024, size: 64)
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !3026, line: 36, size: 64, elements: !3027)
!3026 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!3027 = !{!3028, !3029, !3030}
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !3025, file: !3026, line: 37, baseType: !68, size: 32)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3025, file: !3026, line: 38, baseType: !865, size: 16, offset: 32)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !3025, file: !3026, line: 39, baseType: !865, size: 16, offset: 48)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3021, file: !139, line: 51, baseType: !68, size: 32, offset: 64)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3021, file: !139, line: 52, baseType: !68, size: 32, offset: 96)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3021, file: !139, line: 53, baseType: !260, size: 64, offset: 128)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3021, file: !139, line: 54, baseType: !260, size: 64, offset: 192)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2605, file: !1574, line: 973, baseType: !3036, size: 32, offset: 10688)
!3036 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !258, line: 27, baseType: !3037)
!3037 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !315, line: 28, baseType: !68)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2605, file: !1574, line: 974, baseType: !3036, size: 32, offset: 10720)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2605, file: !1574, line: 978, baseType: !260, size: 64, offset: 10752)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2605, file: !1574, line: 987, baseType: !2604, size: 64, offset: 10816)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2605, file: !1574, line: 990, baseType: !2604, size: 64, offset: 10880)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2605, file: !1574, line: 995, baseType: !283, size: 128, offset: 10944)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2605, file: !1574, line: 996, baseType: !283, size: 128, offset: 11072)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2605, file: !1574, line: 997, baseType: !2604, size: 64, offset: 11200)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2605, file: !1574, line: 1005, baseType: !283, size: 128, offset: 11264)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2605, file: !1574, line: 1006, baseType: !283, size: 128, offset: 11392)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2605, file: !1574, line: 1009, baseType: !739, size: 64, offset: 11520)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2605, file: !1574, line: 1010, baseType: !3049, size: 512, offset: 11584)
!3049 = !DICompositeType(tag: DW_TAG_array_type, baseType: !756, size: 512, elements: !761)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2605, file: !1574, line: 1011, baseType: !283, size: 128, offset: 12096)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2605, file: !1574, line: 1012, baseType: !283, size: 128, offset: 12224)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2605, file: !1574, line: 1014, baseType: !3053, size: 64, offset: 12352)
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2605, file: !1574, line: 1017, baseType: !3055, size: 64, offset: 12416)
!3055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2605, file: !1574, line: 1020, baseType: !3055, size: 64, offset: 12480)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2605, file: !1574, line: 1023, baseType: !259, size: 64, offset: 12544)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2605, file: !1574, line: 1025, baseType: !376, size: 64, offset: 12608)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2605, file: !1574, line: 1026, baseType: !376, size: 64, offset: 12672)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2605, file: !1574, line: 1031, baseType: !376, size: 64, offset: 12736)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2605, file: !1574, line: 1032, baseType: !3062, size: 192, offset: 12800)
!3062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1574, line: 324, size: 192, elements: !3063)
!3063 = !{!3064, !3065, !3066}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3062, file: !1574, line: 326, baseType: !376, size: 64)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3062, file: !1574, line: 327, baseType: !376, size: 64, offset: 64)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3062, file: !1574, line: 328, baseType: !705, size: 32, offset: 128)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2605, file: !1574, line: 1041, baseType: !260, size: 64, offset: 12992)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2605, file: !1574, line: 1042, baseType: !260, size: 64, offset: 13056)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2605, file: !1574, line: 1045, baseType: !376, size: 64, offset: 13120)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2605, file: !1574, line: 1048, baseType: !376, size: 64, offset: 13184)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2605, file: !1574, line: 1051, baseType: !260, size: 64, offset: 13248)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2605, file: !1574, line: 1052, baseType: !260, size: 64, offset: 13312)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2605, file: !1574, line: 1055, baseType: !3074, size: 640, offset: 13376)
!3074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3075, line: 132, size: 640, elements: !3076)
!3075 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3076 = !{!3077, !3083, !3084}
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3074, file: !3075, line: 133, baseType: !3078, size: 576)
!3078 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3079, size: 576, elements: !589)
!3079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3075, line: 117, size: 192, elements: !3080)
!3080 = !{!3081, !3082}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3079, file: !3075, line: 118, baseType: !376, size: 64)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3079, file: !3075, line: 119, baseType: !1902, size: 128, offset: 64)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3074, file: !3075, line: 134, baseType: !7, size: 32, offset: 576)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3074, file: !3075, line: 135, baseType: !7, size: 32, offset: 608)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2605, file: !1574, line: 1058, baseType: !3086, size: 448, offset: 14016)
!3086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3075, line: 144, size: 448, elements: !3087)
!3087 = !{!3088, !3089, !3090}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3086, file: !3075, line: 145, baseType: !678, size: 128, align: 64)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3086, file: !3075, line: 146, baseType: !700, size: 256, offset: 128)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3086, file: !3075, line: 147, baseType: !7, size: 32, offset: 384)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2605, file: !1574, line: 1064, baseType: !787, size: 64, offset: 14464)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2605, file: !1574, line: 1067, baseType: !787, size: 64, offset: 14528)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2605, file: !1574, line: 1070, baseType: !787, size: 64, offset: 14592)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2605, file: !1574, line: 1074, baseType: !814, size: 64, offset: 14656)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2605, file: !1574, line: 1084, baseType: !3096, size: 128, offset: 14720)
!3096 = !DICompositeType(tag: DW_TAG_array_type, baseType: !462, size: 128, elements: !3097)
!3097 = !{!3098}
!3098 = !DISubrange(count: 16)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2605, file: !1574, line: 1086, baseType: !3100, size: 64, offset: 14848)
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3101 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1574, line: 55, flags: DIFlagFwdDecl)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2605, file: !1574, line: 1089, baseType: !3103, size: 64, offset: 14912)
!3103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3104, line: 12, size: 64, elements: !3105)
!3104 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3105 = !{!3106}
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3103, file: !3104, line: 13, baseType: !3107, size: 64)
!3107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3108, size: 64)
!3108 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3104, line: 8, flags: DIFlagFwdDecl)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2605, file: !1574, line: 1090, baseType: !3110, size: 128, offset: 14976)
!3110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3111, line: 13, size: 128, elements: !3112)
!3111 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3112 = !{!3113}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3110, file: !3111, line: 14, baseType: !283, size: 128)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2605, file: !1574, line: 1097, baseType: !3115, size: 64, offset: 15104)
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3116 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1574, line: 50, flags: DIFlagFwdDecl)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2605, file: !1574, line: 1100, baseType: !3118, size: 64, offset: 15168)
!3118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3119, size: 64)
!3119 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1574, line: 1100, flags: DIFlagFwdDecl)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2605, file: !1574, line: 1103, baseType: !3121, size: 64, offset: 15232)
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3122, size: 64)
!3122 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1574, line: 53, flags: DIFlagFwdDecl)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2605, file: !1574, line: 1107, baseType: !3124, size: 64, offset: 15296)
!3124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3125, size: 64)
!3125 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1574, line: 56, flags: DIFlagFwdDecl)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2605, file: !1574, line: 1110, baseType: !3127, size: 64, offset: 15360)
!3127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3128, size: 64)
!3128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3129, line: 93, size: 8768, elements: !3130)
!3129 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3130 = !{!3131, !3132, !3133, !3134, !3135, !3136, !3137, !3138, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3178, !3187, !3188, !3190, !3191, !3192, !3195, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3233, !3234, !3241, !3251, !3254, !3255, !3258, !3259, !3260, !3261, !3262, !3263}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3128, file: !3129, line: 94, baseType: !743, size: 32)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3128, file: !3129, line: 95, baseType: !420, size: 32, offset: 32)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3128, file: !3129, line: 96, baseType: !68, size: 32, offset: 64)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3128, file: !3129, line: 97, baseType: !68, size: 32, offset: 96)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3128, file: !3129, line: 98, baseType: !283, size: 128, offset: 128)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3128, file: !3129, line: 100, baseType: !765, size: 192, offset: 256)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3128, file: !3129, line: 103, baseType: !2604, size: 64, offset: 448)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3128, file: !3129, line: 106, baseType: !3139, size: 192, offset: 512)
!3139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !984, line: 32, size: 192, elements: !3140)
!3140 = !{!3141, !3142}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3139, file: !984, line: 33, baseType: !283, size: 128)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3139, file: !984, line: 34, baseType: !3143, size: 64, offset: 128)
!3143 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3144, line: 25, baseType: !3145)
!3144 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3145 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3144, line: 23, size: 64, elements: !3146)
!3146 = !{!3147}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3145, file: !3144, line: 24, baseType: !1304, size: 64)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3128, file: !3129, line: 109, baseType: !752, size: 64, offset: 704)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3128, file: !3129, line: 112, baseType: !68, size: 32, offset: 768)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3128, file: !3129, line: 114, baseType: !68, size: 32, offset: 800)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3128, file: !3129, line: 115, baseType: !2604, size: 64, offset: 832)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3128, file: !3129, line: 118, baseType: !68, size: 32, offset: 896)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3128, file: !3129, line: 119, baseType: !7, size: 32, offset: 928)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3128, file: !3129, line: 121, baseType: !3155, size: 64, offset: 960)
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3156, size: 64)
!3156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3129, line: 80, size: 448, elements: !3157)
!3157 = !{!3158, !3159, !3165}
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3156, file: !3129, line: 81, baseType: !420, size: 32)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3156, file: !3129, line: 82, baseType: !3160, size: 128, offset: 64)
!3160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3129, line: 75, size: 128, elements: !3161)
!3161 = !{!3162, !3163}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3160, file: !3129, line: 76, baseType: !2604, size: 64)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3160, file: !3129, line: 77, baseType: !3164, size: 64, offset: 64)
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 64)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3156, file: !3129, line: 83, baseType: !1540, size: 256, offset: 192)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3128, file: !3129, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3128, file: !3129, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3128, file: !3129, line: 138, baseType: !7, size: 32, offset: 1056)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3128, file: !3129, line: 139, baseType: !283, size: 128, offset: 1088)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3128, file: !3129, line: 142, baseType: !1848, size: 512, offset: 1216)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3128, file: !3129, line: 143, baseType: !1828, size: 64, offset: 1728)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3128, file: !3129, line: 150, baseType: !3173, size: 256, offset: 1792)
!3173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3174, size: 256, elements: !1474)
!3174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3129, line: 38, size: 128, elements: !3175)
!3175 = !{!3176, !3177}
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3174, file: !3129, line: 39, baseType: !376, size: 64)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3174, file: !3129, line: 40, baseType: !376, size: 64, offset: 64)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3128, file: !3129, line: 156, baseType: !3179, size: 192, offset: 2048)
!3179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3129, line: 66, size: 192, elements: !3180)
!3180 = !{!3181}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3179, file: !3129, line: 67, baseType: !3182, size: 192)
!3182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3129, line: 47, size: 192, elements: !3183)
!3183 = !{!3184, !3185, !3186}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3182, file: !3129, line: 48, baseType: !693, size: 64)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3182, file: !3129, line: 49, baseType: !693, size: 64, offset: 64)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3182, file: !3129, line: 50, baseType: !693, size: 64, offset: 128)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3128, file: !3129, line: 160, baseType: !3074, size: 640, offset: 2240)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3128, file: !3129, line: 163, baseType: !3189, size: 256, offset: 2880)
!3189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !739, size: 256, elements: !761)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3128, file: !3129, line: 169, baseType: !739, size: 64, offset: 3136)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3128, file: !3129, line: 172, baseType: !68, size: 32, offset: 3200)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3128, file: !3129, line: 174, baseType: !3193, size: 64, offset: 3264)
!3193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3194, size: 64)
!3194 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3129, line: 174, flags: DIFlagFwdDecl)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3128, file: !3129, line: 185, baseType: !3196, size: 64, offset: 3328)
!3196 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !345, line: 860, baseType: !3197)
!3197 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !345, line: 853, size: 64, elements: !3198)
!3198 = !{!3199, !3200}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3197, file: !345, line: 858, baseType: !344, size: 32)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3197, file: !345, line: 859, baseType: !400, size: 32, offset: 32)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3128, file: !3129, line: 186, baseType: !376, size: 64, offset: 3392)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3128, file: !3129, line: 186, baseType: !376, size: 64, offset: 3456)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3128, file: !3129, line: 186, baseType: !376, size: 64, offset: 3520)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3128, file: !3129, line: 186, baseType: !376, size: 64, offset: 3584)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3128, file: !3129, line: 187, baseType: !376, size: 64, offset: 3648)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3128, file: !3129, line: 188, baseType: !376, size: 64, offset: 3712)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3128, file: !3129, line: 189, baseType: !3062, size: 192, offset: 3776)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3128, file: !3129, line: 190, baseType: !260, size: 64, offset: 3968)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3128, file: !3129, line: 190, baseType: !260, size: 64, offset: 4032)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3128, file: !3129, line: 190, baseType: !260, size: 64, offset: 4096)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3128, file: !3129, line: 190, baseType: !260, size: 64, offset: 4160)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3128, file: !3129, line: 191, baseType: !260, size: 64, offset: 4224)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3128, file: !3129, line: 191, baseType: !260, size: 64, offset: 4288)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3128, file: !3129, line: 191, baseType: !260, size: 64, offset: 4352)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3128, file: !3129, line: 191, baseType: !260, size: 64, offset: 4416)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3128, file: !3129, line: 192, baseType: !260, size: 64, offset: 4480)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3128, file: !3129, line: 192, baseType: !260, size: 64, offset: 4544)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3128, file: !3129, line: 192, baseType: !260, size: 64, offset: 4608)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3128, file: !3129, line: 192, baseType: !260, size: 64, offset: 4672)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3128, file: !3129, line: 193, baseType: !260, size: 64, offset: 4736)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3128, file: !3129, line: 193, baseType: !260, size: 64, offset: 4800)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3128, file: !3129, line: 194, baseType: !3223, size: 448, offset: 4864)
!3223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3224, line: 12, size: 448, elements: !3225)
!3224 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3225 = !{!3226, !3227, !3228, !3229, !3230, !3231, !3232}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3223, file: !3224, line: 15, baseType: !376, size: 64)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3223, file: !3224, line: 17, baseType: !376, size: 64, offset: 64)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3223, file: !3224, line: 19, baseType: !376, size: 64, offset: 128)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3223, file: !3224, line: 21, baseType: !376, size: 64, offset: 192)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3223, file: !3224, line: 29, baseType: !376, size: 64, offset: 256)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3223, file: !3224, line: 35, baseType: !376, size: 64, offset: 320)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3223, file: !3224, line: 44, baseType: !376, size: 64, offset: 384)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3128, file: !3129, line: 202, baseType: !378, size: 64, offset: 5312)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3128, file: !3129, line: 213, baseType: !3235, size: 2048, offset: 5376)
!3235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3236, size: 2048, elements: !3097)
!3236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3237, line: 43, size: 128, elements: !3238)
!3237 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3238 = !{!3239, !3240}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3236, file: !3237, line: 44, baseType: !635, size: 64)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3236, file: !3237, line: 45, baseType: !635, size: 64, offset: 64)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3128, file: !3129, line: 216, baseType: !3242, size: 448, offset: 7424)
!3242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3129, line: 30, size: 448, elements: !3243)
!3243 = !{!3244, !3245, !3246, !3247, !3248, !3249, !3250}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3242, file: !3129, line: 31, baseType: !68, size: 32)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3242, file: !3129, line: 32, baseType: !623, size: 64, offset: 64)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3242, file: !3129, line: 33, baseType: !260, size: 64, offset: 128)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3242, file: !3129, line: 34, baseType: !376, size: 64, offset: 192)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3242, file: !3129, line: 34, baseType: !376, size: 64, offset: 256)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3242, file: !3129, line: 35, baseType: !260, size: 64, offset: 320)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3242, file: !3129, line: 35, baseType: !260, size: 64, offset: 384)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3128, file: !3129, line: 219, baseType: !3252, size: 64, offset: 7872)
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3253 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3129, line: 219, flags: DIFlagFwdDecl)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3128, file: !3129, line: 222, baseType: !7, size: 32, offset: 7936)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3128, file: !3129, line: 223, baseType: !3256, size: 64, offset: 8000)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3129, line: 223, flags: DIFlagFwdDecl)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3128, file: !3129, line: 230, baseType: !896, size: 8, offset: 8064)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3128, file: !3129, line: 231, baseType: !865, size: 16, offset: 8080)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3128, file: !3129, line: 232, baseType: !865, size: 16, offset: 8096)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3128, file: !3129, line: 234, baseType: !2798, size: 64, offset: 8128)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3128, file: !3129, line: 237, baseType: !700, size: 256, offset: 8192)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3128, file: !3129, line: 243, baseType: !837, size: 320, offset: 8448)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2605, file: !1574, line: 1111, baseType: !3265, size: 64, offset: 15424)
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3129, line: 20, size: 16640, elements: !3267)
!3267 = !{!3268, !3269, !3270, !3271}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3266, file: !3129, line: 21, baseType: !400, size: 32)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3266, file: !3129, line: 22, baseType: !743, size: 32, offset: 32)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3266, file: !3129, line: 23, baseType: !765, size: 192, offset: 64)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3266, file: !3129, line: 24, baseType: !3272, size: 16384, offset: 256)
!3272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3273, size: 16384, elements: !593)
!3273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !984, line: 51, size: 256, elements: !3274)
!3274 = !{!3275}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3273, file: !984, line: 52, baseType: !3276, size: 256)
!3276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !984, line: 37, size: 256, elements: !3277)
!3277 = !{!3278, !3285, !3286, !3292}
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3276, file: !984, line: 39, baseType: !3279, size: 64)
!3279 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3280, line: 83, baseType: !3281)
!3280 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3280, line: 82, baseType: !3283)
!3283 = !DISubroutineType(types: !3284)
!3284 = !{null, !68}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3276, file: !984, line: 40, baseType: !260, size: 64, offset: 64)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3276, file: !984, line: 46, baseType: !3287, size: 64, offset: 128)
!3287 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3280, line: 86, baseType: !3288)
!3288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3289, size: 64)
!3289 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3280, line: 85, baseType: !3290)
!3290 = !DISubroutineType(types: !3291)
!3291 = !{null}
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3276, file: !984, line: 48, baseType: !3143, size: 64, offset: 192)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2605, file: !1574, line: 1112, baseType: !3143, size: 64, offset: 15488)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2605, file: !1574, line: 1113, baseType: !3143, size: 64, offset: 15552)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2605, file: !1574, line: 1115, baseType: !3143, size: 64, offset: 15616)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2605, file: !1574, line: 1116, baseType: !3139, size: 192, offset: 15680)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2605, file: !1574, line: 1117, baseType: !260, size: 64, offset: 15872)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2605, file: !1574, line: 1118, baseType: !633, size: 64, offset: 15936)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2605, file: !1574, line: 1119, baseType: !7, size: 32, offset: 16000)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2605, file: !1574, line: 1121, baseType: !681, size: 64, offset: 16064)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2605, file: !1574, line: 1125, baseType: !3302, size: 64, offset: 16128)
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3303, size: 64)
!3303 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1574, line: 43, flags: DIFlagFwdDecl)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2605, file: !1574, line: 1127, baseType: !308, size: 32, offset: 16192)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2605, file: !1574, line: 1128, baseType: !7, size: 32, offset: 16224)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2605, file: !1574, line: 1130, baseType: !3307, size: 128, offset: 16256)
!3307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3308, line: 37, size: 128, elements: !3309)
!3308 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3309 = !{!3310, !3311, !3312}
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3307, file: !3308, line: 38, baseType: !68, size: 32)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3307, file: !3308, line: 39, baseType: !420, size: 32, offset: 32)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3307, file: !3308, line: 40, baseType: !3313, size: 64, offset: 64)
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3314, size: 64)
!3314 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3308, line: 24, flags: DIFlagFwdDecl)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2605, file: !1574, line: 1131, baseType: !3316, size: 256, offset: 16384)
!3316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3317, line: 12, size: 256, elements: !3318)
!3317 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3318 = !{!3319, !3320, !3321, !3322}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3316, file: !3317, line: 13, baseType: !486, size: 64)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3316, file: !3317, line: 14, baseType: !260, size: 64, offset: 64)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3316, file: !3317, line: 15, baseType: !260, size: 64, offset: 128)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3316, file: !3317, line: 16, baseType: !896, size: 8, offset: 192)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2605, file: !1574, line: 1134, baseType: !376, size: 64, offset: 16640)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2605, file: !1574, line: 1135, baseType: !376, size: 64, offset: 16704)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2605, file: !1574, line: 1138, baseType: !400, size: 32, offset: 16768)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2605, file: !1574, line: 1141, baseType: !705, size: 32, offset: 16800)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2605, file: !1574, line: 1143, baseType: !3328, size: 64, offset: 16832)
!3328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1574, line: 735, size: 64, elements: !3329)
!3329 = !{!3330}
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3328, file: !1574, line: 736, baseType: !3331, size: 64)
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3328, size: 64)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2605, file: !1574, line: 1147, baseType: !1905, size: 128, offset: 16896)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2605, file: !1574, line: 1149, baseType: !2604, size: 64, offset: 17024)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2605, file: !1574, line: 1151, baseType: !3335, size: 64, offset: 17088)
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3336 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1574, line: 1151, flags: DIFlagFwdDecl)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2605, file: !1574, line: 1188, baseType: !259, size: 64, offset: 17152)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2605, file: !1574, line: 1191, baseType: !3339, size: 64, offset: 17216)
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2605, file: !1574, line: 1194, baseType: !3341, size: 64, offset: 17280)
!3341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3342, size: 64)
!3342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !164, line: 976, size: 320, elements: !3343)
!3343 = !{!3344, !3345, !3346, !3347, !3348, !3349, !3350}
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "mq_list", scope: !3342, file: !164, line: 977, baseType: !1208, size: 64)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "cached_rq", scope: !3342, file: !164, line: 980, baseType: !1208, size: 64, offset: 64)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ios", scope: !3342, file: !164, line: 981, baseType: !305, size: 16, offset: 128)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "rq_count", scope: !3342, file: !164, line: 983, baseType: !305, size: 16, offset: 144)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "multiple_queues", scope: !3342, file: !164, line: 985, baseType: !896, size: 8, offset: 160)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "has_elevator", scope: !3342, file: !164, line: 986, baseType: !896, size: 8, offset: 168)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !3342, file: !164, line: 988, baseType: !283, size: 128, offset: 192)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2605, file: !1574, line: 1197, baseType: !3352, size: 64, offset: 17344)
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3353, size: 64)
!3353 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1574, line: 61, flags: DIFlagFwdDecl)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2605, file: !1574, line: 1199, baseType: !3355, size: 64, offset: 17408)
!3355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3356, size: 64)
!3356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3357, line: 99, size: 128, elements: !3358)
!3357 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3358 = !{!3359, !3360, !3361}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3356, file: !3357, line: 100, baseType: !691, size: 64)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3356, file: !3357, line: 101, baseType: !420, size: 32, offset: 64)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3356, file: !3357, line: 103, baseType: !305, size: 16, offset: 96)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2605, file: !1574, line: 1202, baseType: !3363, size: 64, offset: 17472)
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1574, line: 48, flags: DIFlagFwdDecl)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2605, file: !1574, line: 1205, baseType: !260, size: 64, offset: 17536)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2605, file: !1574, line: 1206, baseType: !3367, size: 64, offset: 17600)
!3367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3368, size: 64)
!3368 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !984, line: 14, baseType: !3369)
!3369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !984, line: 12, size: 384, elements: !3370)
!3370 = !{!3371}
!3371 = !DIDerivedType(tag: DW_TAG_member, scope: !3369, file: !984, line: 13, baseType: !3372, size: 384)
!3372 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3369, file: !984, line: 13, size: 384, elements: !3373)
!3373 = !{!3374, !3375, !3376, !3377}
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3372, file: !984, line: 13, baseType: !68, size: 32)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3372, file: !984, line: 13, baseType: !68, size: 32, offset: 32)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3372, file: !984, line: 13, baseType: !68, size: 32, offset: 64)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3372, file: !984, line: 13, baseType: !3378, size: 256, offset: 128)
!3378 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3379, line: 37, size: 256, elements: !3380)
!3379 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3380 = !{!3381, !3386, !3399, !3405, !3414, !3441, !3446}
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3378, file: !3379, line: 42, baseType: !3382, size: 64)
!3382 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3378, file: !3379, line: 39, size: 64, elements: !3383)
!3383 = !{!3384, !3385}
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3382, file: !3379, line: 40, baseType: !3037, size: 32)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3382, file: !3379, line: 41, baseType: !314, size: 32, offset: 32)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3378, file: !3379, line: 50, baseType: !3387, size: 192)
!3387 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3378, file: !3379, line: 45, size: 192, elements: !3388)
!3388 = !{!3389, !3391, !3392, !3398}
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3387, file: !3379, line: 46, baseType: !3390, size: 32)
!3390 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !315, line: 95, baseType: !68)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3387, file: !3379, line: 47, baseType: !68, size: 32, offset: 32)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3387, file: !3379, line: 48, baseType: !3393, size: 64, offset: 64)
!3393 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3379, line: 11, baseType: !3394)
!3394 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3379, line: 8, size: 64, elements: !3395)
!3395 = !{!3396, !3397}
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3394, file: !3379, line: 9, baseType: !68, size: 32)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3394, file: !3379, line: 10, baseType: !259, size: 64)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3387, file: !3379, line: 49, baseType: !68, size: 32, offset: 128)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3378, file: !3379, line: 57, baseType: !3400, size: 128)
!3400 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3378, file: !3379, line: 53, size: 128, elements: !3401)
!3401 = !{!3402, !3403, !3404}
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3400, file: !3379, line: 54, baseType: !3037, size: 32)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3400, file: !3379, line: 55, baseType: !314, size: 32, offset: 32)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3400, file: !3379, line: 56, baseType: !3393, size: 64, offset: 64)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3378, file: !3379, line: 66, baseType: !3406, size: 256)
!3406 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3378, file: !3379, line: 60, size: 256, elements: !3407)
!3407 = !{!3408, !3409, !3410, !3411, !3413}
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3406, file: !3379, line: 61, baseType: !3037, size: 32)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3406, file: !3379, line: 62, baseType: !314, size: 32, offset: 32)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3406, file: !3379, line: 63, baseType: !68, size: 32, offset: 64)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3406, file: !3379, line: 64, baseType: !3412, size: 64, offset: 128)
!3412 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !315, line: 94, baseType: !622)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3406, file: !3379, line: 65, baseType: !3412, size: 64, offset: 192)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3378, file: !3379, line: 105, baseType: !3415, size: 256)
!3415 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3378, file: !3379, line: 69, size: 256, elements: !3416)
!3416 = !{!3417, !3418}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3415, file: !3379, line: 70, baseType: !259, size: 64)
!3418 = !DIDerivedType(tag: DW_TAG_member, scope: !3415, file: !3379, line: 79, baseType: !3419, size: 192, offset: 64)
!3419 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3415, file: !3379, line: 79, size: 192, elements: !3420)
!3420 = !{!3421, !3422, !3423, !3430, !3435}
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3419, file: !3379, line: 81, baseType: !68, size: 32)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3419, file: !3379, line: 86, baseType: !865, size: 16)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3419, file: !3379, line: 92, baseType: !3424, size: 192)
!3424 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3419, file: !3379, line: 88, size: 192, elements: !3425)
!3425 = !{!3426, !3428, !3429}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3424, file: !3379, line: 89, baseType: !3427, size: 64)
!3427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !462, size: 64, elements: !1889)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3424, file: !3379, line: 90, baseType: !259, size: 64, offset: 64)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3424, file: !3379, line: 91, baseType: !259, size: 64, offset: 128)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3419, file: !3379, line: 97, baseType: !3431, size: 96)
!3431 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3419, file: !3379, line: 94, size: 96, elements: !3432)
!3432 = !{!3433, !3434}
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3431, file: !3379, line: 95, baseType: !3427, size: 64)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3431, file: !3379, line: 96, baseType: !262, size: 32, offset: 64)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3419, file: !3379, line: 103, baseType: !3436, size: 128)
!3436 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3419, file: !3379, line: 99, size: 128, elements: !3437)
!3437 = !{!3438, !3439, !3440}
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3436, file: !3379, line: 100, baseType: !260, size: 64)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3436, file: !3379, line: 101, baseType: !262, size: 32, offset: 64)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3436, file: !3379, line: 102, baseType: !262, size: 32, offset: 96)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3378, file: !3379, line: 111, baseType: !3442, size: 128)
!3442 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3378, file: !3379, line: 108, size: 128, elements: !3443)
!3443 = !{!3444, !3445}
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3442, file: !3379, line: 109, baseType: !623, size: 64)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3442, file: !3379, line: 110, baseType: !68, size: 32, offset: 64)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3378, file: !3379, line: 118, baseType: !3447, size: 128)
!3447 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3378, file: !3379, line: 114, size: 128, elements: !3448)
!3448 = !{!3449, !3450, !3451}
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3447, file: !3379, line: 115, baseType: !259, size: 64)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3447, file: !3379, line: 116, baseType: !68, size: 32, offset: 64)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3447, file: !3379, line: 117, baseType: !7, size: 32, offset: 96)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2605, file: !1574, line: 1208, baseType: !3223, size: 448, offset: 17664)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2605, file: !1574, line: 1215, baseType: !376, size: 64, offset: 18112)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2605, file: !1574, line: 1217, baseType: !376, size: 64, offset: 18176)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2605, file: !1574, line: 1219, baseType: !376, size: 64, offset: 18240)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2605, file: !1574, line: 1223, baseType: !3457, size: 64, offset: 18304)
!3457 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3458, line: 99, baseType: !3459)
!3458 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3459 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3458, line: 99, size: 64, elements: !3460)
!3460 = !{!3461}
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3459, file: !3458, line: 99, baseType: !1304, size: 64)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2605, file: !1574, line: 1225, baseType: !344, size: 32, offset: 18368)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2605, file: !1574, line: 1226, baseType: !68, size: 32, offset: 18400)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2605, file: !1574, line: 1227, baseType: !68, size: 32, offset: 18432)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2605, file: !1574, line: 1231, baseType: !3466, size: 64, offset: 18496)
!3466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3467, size: 64)
!3467 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1574, line: 1231, flags: DIFlagFwdDecl)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2605, file: !1574, line: 1233, baseType: !283, size: 128, offset: 18560)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2605, file: !1574, line: 1240, baseType: !3470, size: 64, offset: 18688)
!3470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3471, size: 64)
!3471 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1574, line: 62, flags: DIFlagFwdDecl)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2605, file: !1574, line: 1242, baseType: !3473, size: 64, offset: 18752)
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3474, size: 64)
!3474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !3475, line: 392, size: 96, elements: !3476)
!3475 = !DIFile(filename: "./include/linux/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb3431a0ca9e11a8015b961c002b640")
!3476 = !{!3477, !3483, !3485}
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3474, file: !3475, line: 393, baseType: !3478, size: 32)
!3478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list", file: !3475, line: 388, size: 32, elements: !3479)
!3479 = !{!3480}
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3478, file: !3475, line: 389, baseType: !3481, size: 32)
!3481 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_uptr_t", file: !3482, line: 46, baseType: !372)
!3482 = !DIFile(filename: "./include/asm-generic/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "789dd20e6944b4211a8be38fb9d0b245")
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "futex_offset", scope: !3474, file: !3475, line: 394, baseType: !3484, size: 32, offset: 32)
!3484 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_long_t", file: !3482, line: 42, baseType: !822)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "list_op_pending", scope: !3474, file: !3475, line: 395, baseType: !3481, size: 32, offset: 64)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2605, file: !1574, line: 1244, baseType: !283, size: 128, offset: 18816)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2605, file: !1574, line: 1245, baseType: !3488, size: 64, offset: 18944)
!3488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3489, size: 64)
!3489 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1574, line: 51, flags: DIFlagFwdDecl)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2605, file: !1574, line: 1246, baseType: !700, size: 256, offset: 19008)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2605, file: !1574, line: 1247, baseType: !7, size: 32, offset: 19264)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2605, file: !1574, line: 1250, baseType: !3493, size: 64, offset: 19328)
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3494, size: 64)
!3494 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1574, line: 57, flags: DIFlagFwdDecl)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2605, file: !1574, line: 1251, baseType: !700, size: 256, offset: 19392)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2605, file: !1574, line: 1252, baseType: !283, size: 128, offset: 19648)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2605, file: !1574, line: 1259, baseType: !3498, size: 64, offset: 19776)
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3499 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1574, line: 54, flags: DIFlagFwdDecl)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2605, file: !1574, line: 1260, baseType: !865, size: 16, offset: 19840)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2605, file: !1574, line: 1261, baseType: !865, size: 16, offset: 19856)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2605, file: !1574, line: 1314, baseType: !3503, size: 64, offset: 19904)
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3504, size: 64)
!3504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3505, line: 62, size: 256, align: 256, elements: !3506)
!3505 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3506 = !{!3507, !3508, !3509, !3510, !3511, !3512, !3513}
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3504, file: !3505, line: 75, baseType: !262, size: 32)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3504, file: !3505, line: 90, baseType: !262, size: 32, offset: 32)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3504, file: !3505, line: 112, baseType: !377, size: 64, offset: 64)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3504, file: !3505, line: 132, baseType: !262, size: 32, offset: 128)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3504, file: !3505, line: 140, baseType: !262, size: 32, offset: 160)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3504, file: !3505, line: 149, baseType: !262, size: 32, offset: 192)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3504, file: !3505, line: 154, baseType: !3514, offset: 224)
!3514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !462, elements: !780)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2605, file: !1574, line: 1315, baseType: !372, size: 32, offset: 19968)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2605, file: !1574, line: 1316, baseType: !372, size: 32, offset: 20000)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2605, file: !1574, line: 1321, baseType: !260, size: 64, offset: 20032)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2605, file: !1574, line: 1325, baseType: !68, size: 32, offset: 20096)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2605, file: !1574, line: 1326, baseType: !68, size: 32, offset: 20128)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2605, file: !1574, line: 1327, baseType: !68, size: 32, offset: 20160)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2605, file: !1574, line: 1328, baseType: !68, size: 32, offset: 20192)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2605, file: !1574, line: 1329, baseType: !678, size: 128, align: 64, offset: 20224)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2605, file: !1574, line: 1332, baseType: !3524, size: 128, offset: 20352)
!3524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3525, line: 51, size: 128, elements: !3526)
!3525 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3526 = !{!3527, !3532, !3533}
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3524, file: !3525, line: 60, baseType: !3528, size: 64)
!3528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3529, line: 7, size: 64, elements: !3530)
!3529 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3530 = !{!3531}
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3528, file: !3529, line: 12, baseType: !1301, size: 64)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3524, file: !3525, line: 63, baseType: !896, size: 8, offset: 64)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3524, file: !3525, line: 70, baseType: !896, size: 8, offset: 72)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2605, file: !1574, line: 1335, baseType: !3535, size: 64, offset: 20480)
!3535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3536, size: 64)
!3536 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1574, line: 59, flags: DIFlagFwdDecl)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2605, file: !1574, line: 1337, baseType: !3538, size: 128, offset: 20544)
!3538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3525, line: 39, size: 128, elements: !3539)
!3539 = !{!3540, !3541, !3542}
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3538, file: !3525, line: 40, baseType: !269, size: 64)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3538, file: !3525, line: 42, baseType: !262, size: 32, offset: 64)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3538, file: !3525, line: 43, baseType: !262, size: 32, offset: 96)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2605, file: !1574, line: 1340, baseType: !3544, size: 64, offset: 20672)
!3544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3545, size: 64)
!3545 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1574, line: 69, flags: DIFlagFwdDecl)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2605, file: !1574, line: 1351, baseType: !68, size: 32, offset: 20736)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2605, file: !1574, line: 1352, baseType: !68, size: 32, offset: 20768)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2605, file: !1574, line: 1354, baseType: !260, size: 64, offset: 20800)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2605, file: !1574, line: 1364, baseType: !376, size: 64, offset: 20864)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2605, file: !1574, line: 1365, baseType: !376, size: 64, offset: 20928)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2605, file: !1574, line: 1412, baseType: !260, size: 64, offset: 20992)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2605, file: !1574, line: 1453, baseType: !1585, size: 64, offset: 21056)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2605, file: !1574, line: 1457, baseType: !3554, size: 64, offset: 21120)
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3555, size: 64)
!3555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !145, line: 61, size: 576, elements: !3556)
!3556 = !{!3557, !3558, !3577, !3580, !3581, !3614, !3624}
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3555, file: !145, line: 62, baseType: !144, size: 32)
!3558 = !DIDerivedType(tag: DW_TAG_member, scope: !3555, file: !145, line: 64, baseType: !3559, size: 192, offset: 64)
!3559 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3555, file: !145, line: 64, size: 192, elements: !3560)
!3560 = !{!3561, !3572}
!3561 = !DIDerivedType(tag: DW_TAG_member, scope: !3559, file: !145, line: 65, baseType: !3562, size: 192)
!3562 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3559, file: !145, line: 65, size: 192, elements: !3563)
!3563 = !{!3564, !3571}
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3562, file: !145, line: 66, baseType: !3565, size: 128)
!3565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3566, line: 50, size: 128, elements: !3567)
!3566 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3567 = !{!3568, !3569, !3570}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3565, file: !3566, line: 52, baseType: !260, size: 64)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3565, file: !3566, line: 54, baseType: !7, size: 32, offset: 64)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3565, file: !3566, line: 55, baseType: !7, size: 32, offset: 96)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3562, file: !145, line: 67, baseType: !260, size: 64, offset: 128)
!3572 = !DIDerivedType(tag: DW_TAG_member, scope: !3559, file: !145, line: 70, baseType: !3573, size: 192)
!3573 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3559, file: !145, line: 70, size: 192, elements: !3574)
!3574 = !{!3575, !3576}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3573, file: !145, line: 71, baseType: !678, size: 128, align: 64)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3573, file: !145, line: 72, baseType: !260, size: 64, offset: 128)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3555, file: !145, line: 76, baseType: !3578, size: 64, offset: 256)
!3578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3579, size: 64)
!3579 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !145, line: 76, flags: DIFlagFwdDecl)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3555, file: !145, line: 77, baseType: !260, size: 64, offset: 320)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3555, file: !145, line: 79, baseType: !3582, size: 64, offset: 384)
!3582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3583, size: 64)
!3583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3566, line: 25, size: 256, elements: !3584)
!3584 = !{!3585, !3591, !3595}
!3585 = !DIDerivedType(tag: DW_TAG_member, scope: !3583, file: !3566, line: 26, baseType: !3586, size: 128)
!3586 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3583, file: !3566, line: 26, size: 128, elements: !3587)
!3587 = !{!3588, !3590}
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3586, file: !3566, line: 27, baseType: !3589, size: 128)
!3589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !428, size: 128, elements: !3097)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3586, file: !3566, line: 28, baseType: !3589, size: 128)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3583, file: !3566, line: 31, baseType: !3592, size: 64, offset: 128)
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3593, size: 64)
!3593 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3594)
!3594 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3566, line: 23, flags: DIFlagFwdDecl)
!3595 = !DIDerivedType(tag: DW_TAG_member, scope: !3583, file: !3566, line: 33, baseType: !3596, size: 64, offset: 192)
!3596 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3583, file: !3566, line: 33, size: 64, elements: !3597)
!3597 = !{!3598, !3604, !3609}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3596, file: !3566, line: 38, baseType: !3599, size: 64)
!3599 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3596, file: !3566, line: 34, size: 64, elements: !3600)
!3600 = !{!3601, !3602, !3603}
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3599, file: !3566, line: 35, baseType: !822, size: 32)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3599, file: !3566, line: 36, baseType: !428, size: 8, offset: 32)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3599, file: !3566, line: 37, baseType: !428, size: 8, offset: 40)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3596, file: !3566, line: 42, baseType: !3605, size: 16)
!3605 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3596, file: !3566, line: 39, size: 16, elements: !3606)
!3606 = !{!3607, !3608}
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3605, file: !3566, line: 40, baseType: !428, size: 8)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3605, file: !3566, line: 41, baseType: !428, size: 8, offset: 8)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3596, file: !3566, line: 46, baseType: !3610, size: 16)
!3610 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3596, file: !3566, line: 43, size: 16, elements: !3611)
!3611 = !{!3612, !3613}
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3610, file: !3566, line: 44, baseType: !428, size: 8)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3610, file: !3566, line: 45, baseType: !428, size: 8, offset: 8)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3555, file: !145, line: 81, baseType: !3615, size: 64, offset: 448)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !145, line: 85, size: 384, elements: !3617)
!3617 = !{!3618, !3619, !3620, !3621, !3622, !3623}
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3616, file: !145, line: 86, baseType: !3578, size: 64)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3616, file: !145, line: 87, baseType: !260, size: 64, offset: 64)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3616, file: !145, line: 88, baseType: !260, size: 64, offset: 128)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3616, file: !145, line: 89, baseType: !260, size: 64, offset: 192)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3616, file: !145, line: 90, baseType: !896, size: 8, offset: 256)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3616, file: !145, line: 92, baseType: !3615, size: 64, offset: 320)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3555, file: !145, line: 82, baseType: !7, size: 32, offset: 512)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2605, file: !1574, line: 1463, baseType: !3626, offset: 21184)
!3626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1574, line: 739, elements: !1516)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2605, file: !1574, line: 1470, baseType: !678, size: 128, align: 64, offset: 21184)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2605, file: !1574, line: 1471, baseType: !743, size: 32, offset: 21312)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2605, file: !1574, line: 1472, baseType: !68, size: 32, offset: 21344)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2605, file: !1574, line: 1474, baseType: !2604, size: 64, offset: 21376)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2605, file: !1574, line: 1475, baseType: !1282, size: 320, offset: 21440)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2605, file: !1574, line: 1478, baseType: !3633, size: 64, offset: 21760)
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3635, line: 49, size: 512, elements: !3636)
!3635 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3636 = !{!3637, !3638, !3639, !3640, !3641, !3643, !3644, !3645, !3647}
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3634, file: !3635, line: 50, baseType: !3633, size: 64)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3634, file: !3635, line: 51, baseType: !259, size: 64, offset: 64)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3634, file: !3635, line: 52, baseType: !260, size: 64, offset: 128)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3634, file: !3635, line: 53, baseType: !260, size: 64, offset: 192)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3634, file: !3635, line: 54, baseType: !3642, size: 64, offset: 256)
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3634, file: !3635, line: 56, baseType: !7, size: 32, offset: 320)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3634, file: !3635, line: 58, baseType: !7, size: 32, offset: 352)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3634, file: !3635, line: 59, baseType: !3646, size: 64, offset: 384)
!3646 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !258, line: 159, baseType: !376)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3634, file: !3635, line: 60, baseType: !2044, size: 64, offset: 448)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2605, file: !1574, line: 1482, baseType: !743, size: 32, offset: 21824)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2605, file: !1574, line: 1489, baseType: !259, size: 64, offset: 21888)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2605, file: !1574, line: 1504, baseType: !259, size: 64, offset: 21952)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2605, file: !1574, line: 1505, baseType: !377, size: 64, offset: 22016)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2605, file: !1574, line: 1506, baseType: !376, size: 64, offset: 22080)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2605, file: !1574, line: 1507, baseType: !377, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2605, file: !1574, line: 1508, baseType: !377, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2605, file: !1574, line: 1509, baseType: !377, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2605, file: !1574, line: 1510, baseType: !678, size: 128, align: 64, offset: 22208)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2605, file: !1574, line: 1511, baseType: !68, size: 32, offset: 22336)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2605, file: !1574, line: 1515, baseType: !3659, size: 64, offset: 22400)
!3659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !673, line: 56, size: 64, elements: !3660)
!3660 = !{!3661}
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3659, file: !673, line: 57, baseType: !676, size: 64)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2605, file: !1574, line: 1518, baseType: !3659, size: 64, offset: 22464)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2605, file: !1574, line: 1528, baseType: !678, size: 128, align: 64, offset: 22528)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2605, file: !1574, line: 1552, baseType: !3665, size: 35328, offset: 23040)
!3665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3666, line: 430, size: 35328, elements: !3667)
!3666 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3667 = !{!3668, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3697, !3698, !3699, !3700, !3701, !3702, !3705, !3706, !3707, !3708}
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3665, file: !3666, line: 432, baseType: !3669, size: 192)
!3669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3670, size: 192, elements: !589)
!3670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3671, line: 16, size: 64, elements: !3672)
!3671 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3672 = !{!3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685}
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3670, file: !3671, line: 17, baseType: !435, size: 16)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3670, file: !3671, line: 18, baseType: !435, size: 16, offset: 16)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3670, file: !3671, line: 19, baseType: !435, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3670, file: !3671, line: 19, baseType: !435, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3670, file: !3671, line: 19, baseType: !435, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3670, file: !3671, line: 19, baseType: !435, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3670, file: !3671, line: 19, baseType: !435, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3670, file: !3671, line: 20, baseType: !435, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3670, file: !3671, line: 20, baseType: !435, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3670, file: !3671, line: 20, baseType: !435, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3670, file: !3671, line: 20, baseType: !435, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3670, file: !3671, line: 20, baseType: !435, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3670, file: !3671, line: 20, baseType: !435, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3665, file: !3666, line: 436, baseType: !260, size: 64, offset: 192)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3665, file: !3666, line: 440, baseType: !305, size: 16, offset: 256)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3665, file: !3666, line: 441, baseType: !305, size: 16, offset: 272)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3665, file: !3666, line: 442, baseType: !305, size: 16, offset: 288)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3665, file: !3666, line: 443, baseType: !305, size: 16, offset: 304)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3665, file: !3666, line: 447, baseType: !260, size: 64, offset: 320)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3665, file: !3666, line: 448, baseType: !260, size: 64, offset: 384)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3665, file: !3666, line: 459, baseType: !3694, size: 256, offset: 448)
!3694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3695, size: 256, elements: !761)
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3666, line: 428, flags: DIFlagFwdDecl)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3665, file: !3666, line: 461, baseType: !260, size: 64, offset: 704)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3665, file: !3666, line: 463, baseType: !260, size: 64, offset: 768)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3665, file: !3666, line: 465, baseType: !260, size: 64, offset: 832)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3665, file: !3666, line: 466, baseType: !260, size: 64, offset: 896)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3665, file: !3666, line: 467, baseType: !260, size: 64, offset: 960)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3665, file: !3666, line: 473, baseType: !3703, size: 64, offset: 1024)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3666, line: 10, flags: DIFlagFwdDecl)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3665, file: !3666, line: 480, baseType: !260, size: 64, offset: 1088)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3665, file: !3666, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3665, file: !3666, line: 491, baseType: !372, size: 32, offset: 1184)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3665, file: !3666, line: 501, baseType: !3709, size: 33792, offset: 1536)
!3709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3710, line: 448, size: 33792, elements: !3711)
!3710 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3711 = !{!3712, !3713, !3714, !3876, !3877, !3883, !3884}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3709, file: !3710, line: 461, baseType: !7, size: 32)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3709, file: !3710, line: 468, baseType: !260, size: 64, offset: 64)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3709, file: !3710, line: 476, baseType: !3715, size: 64, offset: 128)
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3710, line: 356, size: 33280, align: 512, elements: !3717)
!3717 = !{!3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3716, file: !3710, line: 358, baseType: !7, size: 32)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3716, file: !3710, line: 361, baseType: !7, size: 32, offset: 32)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3716, file: !3710, line: 364, baseType: !376, size: 64, offset: 64)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3716, file: !3710, line: 367, baseType: !376, size: 64, offset: 128)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3716, file: !3710, line: 370, baseType: !376, size: 64, offset: 192)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3716, file: !3710, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3716, file: !3710, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3716, file: !3710, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3716, file: !3710, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3716, file: !3710, line: 397, baseType: !3728, size: 32768, offset: 512)
!3728 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3710, line: 348, size: 32768, elements: !3729)
!3729 = !{!3730, !3745, !3782, !3859, !3872}
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3728, file: !3710, line: 349, baseType: !3731, size: 896)
!3731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3710, line: 12, size: 896, elements: !3732)
!3732 = !{!3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3744}
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3731, file: !3710, line: 13, baseType: !372, size: 32)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3731, file: !3710, line: 14, baseType: !372, size: 32, offset: 32)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3731, file: !3710, line: 15, baseType: !372, size: 32, offset: 64)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3731, file: !3710, line: 16, baseType: !372, size: 32, offset: 96)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3731, file: !3710, line: 17, baseType: !372, size: 32, offset: 128)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3731, file: !3710, line: 18, baseType: !372, size: 32, offset: 160)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3731, file: !3710, line: 19, baseType: !372, size: 32, offset: 192)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3731, file: !3710, line: 22, baseType: !3741, size: 640, offset: 224)
!3741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 640, elements: !3742)
!3742 = !{!3743}
!3743 = !DISubrange(count: 20)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3731, file: !3710, line: 25, baseType: !372, size: 32, offset: 864)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3728, file: !3710, line: 350, baseType: !3746, size: 4096, align: 128)
!3746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3710, line: 34, size: 4096, align: 128, elements: !3747)
!3747 = !{!3748, !3749, !3750, !3751, !3752, !3767, !3768, !3769, !3771, !3773, !3777}
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3746, file: !3710, line: 35, baseType: !435, size: 16)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3746, file: !3710, line: 36, baseType: !435, size: 16, offset: 16)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3746, file: !3710, line: 37, baseType: !435, size: 16, offset: 32)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3746, file: !3710, line: 38, baseType: !435, size: 16, offset: 48)
!3752 = !DIDerivedType(tag: DW_TAG_member, scope: !3746, file: !3710, line: 39, baseType: !3753, size: 128, offset: 64)
!3753 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3746, file: !3710, line: 39, size: 128, elements: !3754)
!3754 = !{!3755, !3760}
!3755 = !DIDerivedType(tag: DW_TAG_member, scope: !3753, file: !3710, line: 40, baseType: !3756, size: 128)
!3756 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3753, file: !3710, line: 40, size: 128, elements: !3757)
!3757 = !{!3758, !3759}
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3756, file: !3710, line: 41, baseType: !376, size: 64)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3756, file: !3710, line: 42, baseType: !376, size: 64, offset: 64)
!3760 = !DIDerivedType(tag: DW_TAG_member, scope: !3753, file: !3710, line: 44, baseType: !3761, size: 128)
!3761 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3753, file: !3710, line: 44, size: 128, elements: !3762)
!3762 = !{!3763, !3764, !3765, !3766}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3761, file: !3710, line: 45, baseType: !372, size: 32)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3761, file: !3710, line: 46, baseType: !372, size: 32, offset: 32)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3761, file: !3710, line: 47, baseType: !372, size: 32, offset: 64)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3761, file: !3710, line: 48, baseType: !372, size: 32, offset: 96)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3746, file: !3710, line: 51, baseType: !372, size: 32, offset: 192)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3746, file: !3710, line: 52, baseType: !372, size: 32, offset: 224)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3746, file: !3710, line: 55, baseType: !3770, size: 1024, offset: 256)
!3770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 1024, elements: !386)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3746, file: !3710, line: 58, baseType: !3772, size: 2048, offset: 1280)
!3772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 2048, elements: !593)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3746, file: !3710, line: 60, baseType: !3774, size: 384, offset: 3328)
!3774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 384, elements: !3775)
!3775 = !{!3776}
!3776 = !DISubrange(count: 12)
!3777 = !DIDerivedType(tag: DW_TAG_member, scope: !3746, file: !3710, line: 62, baseType: !3778, size: 384, offset: 3712)
!3778 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3746, file: !3710, line: 62, size: 384, elements: !3779)
!3779 = !{!3780, !3781}
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3778, file: !3710, line: 63, baseType: !3774, size: 384)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3778, file: !3710, line: 64, baseType: !3774, size: 384)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3728, file: !3710, line: 351, baseType: !3783, size: 1088)
!3783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3710, line: 79, size: 1088, elements: !3784)
!3784 = !{!3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3798, !3799, !3858}
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3783, file: !3710, line: 80, baseType: !372, size: 32)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3783, file: !3710, line: 81, baseType: !372, size: 32, offset: 32)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3783, file: !3710, line: 82, baseType: !372, size: 32, offset: 64)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3783, file: !3710, line: 83, baseType: !372, size: 32, offset: 96)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3783, file: !3710, line: 84, baseType: !372, size: 32, offset: 128)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3783, file: !3710, line: 85, baseType: !372, size: 32, offset: 160)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3783, file: !3710, line: 86, baseType: !372, size: 32, offset: 192)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3783, file: !3710, line: 88, baseType: !3741, size: 640, offset: 224)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3783, file: !3710, line: 89, baseType: !428, size: 8, offset: 864)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3783, file: !3710, line: 90, baseType: !428, size: 8, offset: 872)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3783, file: !3710, line: 91, baseType: !428, size: 8, offset: 880)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3783, file: !3710, line: 92, baseType: !428, size: 8, offset: 888)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3783, file: !3710, line: 93, baseType: !428, size: 8, offset: 896)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3783, file: !3710, line: 94, baseType: !428, size: 8, offset: 904)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3783, file: !3710, line: 95, baseType: !3800, size: 64, offset: 960)
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3802, line: 11, size: 128, elements: !3803)
!3802 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3803 = !{!3804, !3805}
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3801, file: !3802, line: 12, baseType: !623, size: 64)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3801, file: !3802, line: 13, baseType: !3806, size: 64, offset: 64)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3808, line: 103, size: 1344, elements: !3809)
!3808 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3809 = !{!3810, !3811, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3824, !3825, !3826, !3827, !3838, !3839, !3840}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3807, file: !3808, line: 109, baseType: !260, size: 64)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3807, file: !3808, line: 110, baseType: !260, size: 64, offset: 64)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3807, file: !3808, line: 111, baseType: !260, size: 64, offset: 128)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3807, file: !3808, line: 112, baseType: !260, size: 64, offset: 192)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3807, file: !3808, line: 113, baseType: !260, size: 64, offset: 256)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3807, file: !3808, line: 114, baseType: !260, size: 64, offset: 320)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3807, file: !3808, line: 117, baseType: !260, size: 64, offset: 384)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3807, file: !3808, line: 118, baseType: !260, size: 64, offset: 448)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3807, file: !3808, line: 119, baseType: !260, size: 64, offset: 512)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3807, file: !3808, line: 120, baseType: !260, size: 64, offset: 576)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3807, file: !3808, line: 121, baseType: !260, size: 64, offset: 640)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3807, file: !3808, line: 122, baseType: !260, size: 64, offset: 704)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3807, file: !3808, line: 123, baseType: !260, size: 64, offset: 768)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3807, file: !3808, line: 124, baseType: !260, size: 64, offset: 832)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3807, file: !3808, line: 125, baseType: !260, size: 64, offset: 896)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3807, file: !3808, line: 139, baseType: !260, size: 64, offset: 960)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3807, file: !3808, line: 142, baseType: !260, size: 64, offset: 1024)
!3827 = !DIDerivedType(tag: DW_TAG_member, scope: !3807, file: !3808, line: 144, baseType: !3828, size: 64, offset: 1088)
!3828 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3807, file: !3808, line: 144, size: 64, elements: !3829)
!3829 = !{!3830, !3831, !3832}
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3828, file: !3808, line: 146, baseType: !435, size: 16)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3828, file: !3808, line: 148, baseType: !376, size: 64)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3828, file: !3808, line: 150, baseType: !3833, size: 64)
!3833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3808, line: 59, size: 64, elements: !3834)
!3834 = !{!3835, !3836, !3837}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3833, file: !3808, line: 61, baseType: !376, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3833, file: !3808, line: 63, baseType: !376, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3833, file: !3808, line: 65, baseType: !376, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3807, file: !3808, line: 153, baseType: !260, size: 64, offset: 1152)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3807, file: !3808, line: 154, baseType: !260, size: 64, offset: 1216)
!3840 = !DIDerivedType(tag: DW_TAG_member, scope: !3807, file: !3808, line: 156, baseType: !3841, size: 64, offset: 1280)
!3841 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3807, file: !3808, line: 156, size: 64, elements: !3842)
!3842 = !{!3843, !3844, !3845}
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3841, file: !3808, line: 158, baseType: !435, size: 16)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3841, file: !3808, line: 160, baseType: !376, size: 64)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3841, file: !3808, line: 162, baseType: !3846, size: 64)
!3846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3808, line: 69, size: 64, elements: !3847)
!3847 = !{!3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3846, file: !3808, line: 71, baseType: !376, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3846, file: !3808, line: 73, baseType: !376, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3846, file: !3808, line: 75, baseType: !376, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3846, file: !3808, line: 77, baseType: !376, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3846, file: !3808, line: 80, baseType: !376, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3846, file: !3808, line: 83, baseType: !376, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3846, file: !3808, line: 86, baseType: !376, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3846, file: !3808, line: 88, baseType: !376, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3846, file: !3808, line: 93, baseType: !376, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3846, file: !3808, line: 100, baseType: !376, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3783, file: !3710, line: 96, baseType: !372, size: 32, offset: 1024)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3728, file: !3710, line: 352, baseType: !3860, size: 4608, align: 512)
!3860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3710, line: 333, size: 4608, align: 512, elements: !3861)
!3861 = !{!3862, !3863, !3870}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3860, file: !3710, line: 334, baseType: !3746, size: 4096, align: 128)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3860, file: !3710, line: 335, baseType: !3864, size: 512, offset: 4096)
!3864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3710, line: 312, size: 512, elements: !3865)
!3865 = !{!3866, !3867, !3868}
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3864, file: !3710, line: 313, baseType: !376, size: 64)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3864, file: !3710, line: 314, baseType: !376, size: 64, offset: 64)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3864, file: !3710, line: 315, baseType: !3869, size: 384, offset: 128)
!3869 = !DICompositeType(tag: DW_TAG_array_type, baseType: !376, size: 384, elements: !883)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3860, file: !3710, line: 336, baseType: !3871, offset: 4608)
!3871 = !DICompositeType(tag: DW_TAG_array_type, baseType: !428, elements: !780)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3728, file: !3710, line: 353, baseType: !3873, size: 32768)
!3873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !428, size: 32768, elements: !3874)
!3874 = !{!3875}
!3875 = !DISubrange(count: 4096)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3709, file: !3710, line: 484, baseType: !3715, size: 64, offset: 192)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3709, file: !3710, line: 491, baseType: !3878, size: 128, offset: 256)
!3878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3710, line: 404, size: 128, elements: !3879)
!3879 = !{!3880, !3881, !3882}
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3878, file: !3710, line: 424, baseType: !376, size: 64)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3878, file: !3710, line: 432, baseType: !7, size: 32, offset: 64)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3878, file: !3710, line: 440, baseType: !7, size: 32, offset: 96)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3709, file: !3710, line: 498, baseType: !3878, size: 128, offset: 384)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3709, file: !3710, line: 508, baseType: !3716, size: 33280, align: 512, offset: 512)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !2569, file: !2553, line: 44, baseType: !338, size: 64, offset: 832)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !2569, file: !2553, line: 45, baseType: !2406, size: 32, offset: 896)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "page_array", scope: !2569, file: !2553, line: 46, baseType: !3642, size: 64, offset: 960)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "page_count", scope: !2569, file: !2553, line: 47, baseType: !7, size: 32, offset: 1024)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "finalized", scope: !2569, file: !2553, line: 48, baseType: !7, size: 32, offset: 1056)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2569, file: !2553, line: 49, baseType: !3891, size: 64, offset: 1088)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "prev_padding", scope: !2569, file: !2553, line: 50, baseType: !633, size: 64, offset: 1152)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_consumed", scope: !2569, file: !2553, line: 51, baseType: !633, size: 64, offset: 1216)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "early_bytes", scope: !2569, file: !2553, line: 52, baseType: !633, size: 64, offset: 1280)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2569, file: !2553, line: 53, baseType: !7, size: 32, offset: 1344)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "create_buf_file", scope: !2562, file: !2553, line: 131, baseType: !3897, size: 64, offset: 64)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = !DISubroutineType(types: !3899)
!3899 = !{!338, !460, !338, !304, !2568, !3055}
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "remove_buf_file", scope: !2562, file: !2553, line: 149, baseType: !470, size: 64, offset: 128)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !2552, file: !2553, line: 66, baseType: !2406, size: 32, offset: 320)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !2552, file: !2553, line: 67, baseType: !259, size: 64, offset: 384)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "last_toobig", scope: !2552, file: !2553, line: 68, baseType: !633, size: 64, offset: 448)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2552, file: !2553, line: 69, baseType: !3905, size: 64, offset: 512)
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "is_global", scope: !2552, file: !2553, line: 70, baseType: !68, size: 32, offset: 576)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2552, file: !2553, line: 71, baseType: !283, size: 128, offset: 640)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2552, file: !2553, line: 72, baseType: !338, size: 64, offset: 768)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "has_base_filename", scope: !2552, file: !2553, line: 73, baseType: !68, size: 32, offset: 832)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "base_filename", scope: !2552, file: !2553, line: 74, baseType: !3911, size: 2040, offset: 864)
!3911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !462, size: 2040, elements: !3912)
!3912 = !{!3913}
!3913 = !DISubrange(count: 255)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !2546, file: !2547, line: 19, baseType: !3915, size: 64, offset: 128)
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "msg_data", scope: !2546, file: !2547, line: 20, baseType: !3917, size: 64, offset: 192)
!3917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "act_mask", scope: !2546, file: !2547, line: 21, baseType: !435, size: 16, offset: 256)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "start_lba", scope: !2546, file: !2547, line: 22, baseType: !376, size: 64, offset: 320)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "end_lba", scope: !2546, file: !2547, line: 23, baseType: !376, size: 64, offset: 384)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2546, file: !2547, line: 24, baseType: !372, size: 32, offset: 448)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2546, file: !2547, line: 25, baseType: !372, size: 32, offset: 480)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2546, file: !2547, line: 26, baseType: !338, size: 64, offset: 512)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "running_list", scope: !2546, file: !2547, line: 27, baseType: !283, size: 128, offset: 576)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "dropped", scope: !2546, file: !2547, line: 28, baseType: !420, size: 32, offset: 704)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "fq", scope: !1213, file: !164, line: 494, baseType: !1313, size: 64, offset: 4160)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "flush_list", scope: !1213, file: !164, line: 495, baseType: !283, size: 128, offset: 4224)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_list", scope: !1213, file: !164, line: 497, baseType: !283, size: 128, offset: 4352)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_lock", scope: !1213, file: !164, line: 498, baseType: !400, size: 32, offset: 4480)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_work", scope: !1213, file: !164, line: 499, baseType: !1267, size: 704, offset: 4544)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_lock", scope: !1213, file: !164, line: 501, baseType: !700, size: 256, offset: 5248)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_dir_lock", scope: !1213, file: !164, line: 502, baseType: !700, size: 256, offset: 5504)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_list", scope: !1213, file: !164, line: 508, baseType: !283, size: 128, offset: 5760)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_lock", scope: !1213, file: !164, line: 509, baseType: !400, size: 32, offset: 5888)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_depth", scope: !1213, file: !164, line: 511, baseType: !68, size: 32, offset: 5920)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1213, file: !164, line: 517, baseType: !678, size: 128, align: 64, offset: 5952)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_wq", scope: !1213, file: !164, line: 518, baseType: !765, size: 192, offset: 6080)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_lock", scope: !1213, file: !164, line: 523, baseType: !700, size: 256, offset: 6272)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "quiesce_depth", scope: !1213, file: !164, line: 525, baseType: !68, size: 32, offset: 6528)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set", scope: !1213, file: !164, line: 527, baseType: !1437, size: 64, offset: 6592)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set_list", scope: !1213, file: !164, line: 528, baseType: !283, size: 128, offset: 6656)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_dir", scope: !1213, file: !164, line: 530, baseType: !338, size: 64, offset: 6784)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "sched_debugfs_dir", scope: !1213, file: !164, line: 531, baseType: !338, size: 64, offset: 6848)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "rqos_debugfs_dir", scope: !1213, file: !164, line: 532, baseType: !338, size: 64, offset: 6912)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_mutex", scope: !1213, file: !164, line: 536, baseType: !700, size: 256, offset: 6976)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "mq_sysfs_init_done", scope: !1213, file: !164, line: 538, baseType: !896, size: 8, offset: 7232)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "mq_ctx", scope: !1209, file: !159, line: 82, baseType: !1334, size: 64, offset: 64)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "mq_hctx", scope: !1209, file: !159, line: 83, baseType: !1257, size: 64, offset: 128)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !1209, file: !159, line: 85, baseType: !261, size: 32, offset: 192)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "rq_flags", scope: !1209, file: !159, line: 86, baseType: !3951, size: 32, offset: 224)
!3951 = !DIDerivedType(tag: DW_TAG_typedef, name: "req_flags_t", file: !159, line: 27, baseType: !262)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !1209, file: !159, line: 88, baseType: !68, size: 32, offset: 256)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "internal_tag", scope: !1209, file: !159, line: 89, baseType: !68, size: 32, offset: 288)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1209, file: !159, line: 91, baseType: !7, size: 32, offset: 320)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "__data_len", scope: !1209, file: !159, line: 94, baseType: !7, size: 32, offset: 352)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "__sector", scope: !1209, file: !159, line: 95, baseType: !1601, size: 64, offset: 384)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "bio", scope: !1209, file: !159, line: 97, baseType: !2216, size: 64, offset: 448)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "biotail", scope: !1209, file: !159, line: 98, baseType: !2216, size: 64, offset: 512)
!3959 = !DIDerivedType(tag: DW_TAG_member, scope: !1209, file: !159, line: 100, baseType: !3960, size: 128, offset: 576)
!3960 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1209, file: !159, line: 100, size: 128, elements: !3961)
!3961 = !{!3962, !3963}
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "queuelist", scope: !3960, file: !159, line: 101, baseType: !283, size: 128)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "rq_next", scope: !3960, file: !159, line: 102, baseType: !1208, size: 64)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !1209, file: !159, line: 105, baseType: !1597, size: 64, offset: 704)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_time_ns", scope: !1209, file: !159, line: 108, baseType: !376, size: 64, offset: 768)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "start_time_ns", scope: !1209, file: !159, line: 111, baseType: !376, size: 64, offset: 832)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "io_start_time_ns", scope: !1209, file: !159, line: 113, baseType: !376, size: 64, offset: 896)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "stats_sectors", scope: !1209, file: !159, line: 123, baseType: !305, size: 16, offset: 960)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "nr_phys_segments", scope: !1209, file: !159, line: 129, baseType: !305, size: 16, offset: 976)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1209, file: !159, line: 140, baseType: !305, size: 16, offset: 992)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1209, file: !159, line: 142, baseType: !173, size: 32, offset: 1024)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1209, file: !159, line: 143, baseType: !420, size: 32, offset: 1056)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1209, file: !159, line: 145, baseType: !260, size: 64, offset: 1088)
!3974 = !DIDerivedType(tag: DW_TAG_member, scope: !1209, file: !159, line: 154, baseType: !3975, size: 128, offset: 1152)
!3975 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1209, file: !159, line: 154, size: 128, elements: !3976)
!3976 = !{!3977, !3978}
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3975, file: !159, line: 155, baseType: !756, size: 128)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_list", scope: !3975, file: !159, line: 156, baseType: !672, size: 64)
!3979 = !DIDerivedType(tag: DW_TAG_member, scope: !1209, file: !159, line: 165, baseType: !3980, size: 192, offset: 1280)
!3980 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1209, file: !159, line: 165, size: 192, elements: !3981)
!3981 = !{!3982, !3983}
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3980, file: !159, line: 166, baseType: !829, size: 192, align: 64)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "special_vec", scope: !3980, file: !159, line: 167, baseType: !265, size: 128)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "elv", scope: !1209, file: !159, line: 177, baseType: !3985, size: 192, offset: 1472)
!3985 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1209, file: !159, line: 174, size: 192, elements: !3986)
!3986 = !{!3987, !4004}
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "icq", scope: !3985, file: !159, line: 175, baseType: !3988, size: 64)
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !3357, line: 73, size: 448, elements: !3990)
!3990 = !{!3991, !3992, !3993, !3998, !4003}
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !3989, file: !3357, line: 74, baseType: !1212, size: 64)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !3989, file: !3357, line: 75, baseType: !3355, size: 64, offset: 64)
!3993 = !DIDerivedType(tag: DW_TAG_member, scope: !3989, file: !3357, line: 83, baseType: !3994, size: 128, offset: 128)
!3994 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3989, file: !3357, line: 83, size: 128, elements: !3995)
!3995 = !{!3996, !3997}
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !3994, file: !3357, line: 84, baseType: !283, size: 128)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !3994, file: !3357, line: 85, baseType: !2258, size: 64)
!3998 = !DIDerivedType(tag: DW_TAG_member, scope: !3989, file: !3357, line: 87, baseType: !3999, size: 128, offset: 256)
!3999 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3989, file: !3357, line: 87, size: 128, elements: !4000)
!4000 = !{!4001, !4002}
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !3999, file: !3357, line: 88, baseType: !756, size: 128)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !3999, file: !3357, line: 89, baseType: !678, size: 128, align: 64)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3989, file: !3357, line: 92, baseType: !7, size: 32, offset: 384)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3985, file: !159, line: 176, baseType: !4005, size: 128, offset: 64)
!4005 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, size: 128, elements: !1474)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1209, file: !159, line: 182, baseType: !4007, size: 128, offset: 1664)
!4007 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1209, file: !159, line: 179, size: 128, elements: !4008)
!4008 = !{!4009, !4010}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !4007, file: !159, line: 180, baseType: !7, size: 32)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "saved_end_io", scope: !4007, file: !159, line: 181, baseType: !4011, size: 64, offset: 64)
!4011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4012, size: 64)
!4012 = !DIDerivedType(tag: DW_TAG_typedef, name: "rq_end_io_fn", file: !159, line: 23, baseType: !4013)
!4013 = !DISubroutineType(types: !4014)
!4014 = !{!178, !1208, !1256}
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "fifo_time", scope: !1209, file: !159, line: 184, baseType: !376, size: 64, offset: 1792)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "end_io", scope: !1209, file: !159, line: 189, baseType: !4011, size: 64, offset: 1856)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "end_io_data", scope: !1209, file: !159, line: 190, baseType: !259, size: 64, offset: 1920)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "need_ts", scope: !1205, file: !164, line: 1561, baseType: !896, size: 8, offset: 64)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1205, file: !164, line: 1562, baseType: !4020, size: 64, offset: 128)
!4020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4021, size: 64)
!4021 = !DISubroutineType(types: !4022)
!4022 = !{null, !1204}
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1017, file: !19, line: 1923, baseType: !4024, size: 64, offset: 448)
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4025, size: 64)
!4025 = !DISubroutineType(types: !4026)
!4026 = !{!68, !665, !4027}
!4027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4028, size: 64)
!4028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !19, line: 1858, size: 128, elements: !4029)
!4029 = !{!4030, !4035}
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !4028, file: !19, line: 1859, baseType: !4031, size: 64)
!4031 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !19, line: 1855, baseType: !4032)
!4032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4033, size: 64)
!4033 = !DISubroutineType(types: !4034)
!4034 = !{!896, !4027, !460, !68, !507, !376, !7}
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4028, file: !19, line: 1860, baseType: !507, size: 64, offset: 64)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1017, file: !19, line: 1924, baseType: !4037, size: 64, offset: 512)
!4037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4038, size: 64)
!4038 = !DISubroutineType(types: !4039)
!4039 = !{!4040, !665, !4042}
!4040 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !4041, line: 59, baseType: !7)
!4041 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!4042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4043, size: 64)
!4043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !4044, line: 37, size: 128, elements: !4045)
!4044 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!4045 = !{!4046, !4052}
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !4043, file: !4044, line: 38, baseType: !4047, size: 64)
!4047 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !4044, line: 31, baseType: !4048)
!4048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4049, size: 64)
!4049 = !DISubroutineType(types: !4050)
!4050 = !{null, !665, !4051, !4042}
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !4043, file: !4044, line: 39, baseType: !4040, size: 32, offset: 64)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1017, file: !19, line: 1925, baseType: !4054, size: 64, offset: 576)
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4055, size: 64)
!4055 = !DISubroutineType(types: !4056)
!4056 = !{!623, !665, !7, !260}
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1017, file: !19, line: 1926, baseType: !4054, size: 64, offset: 640)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1017, file: !19, line: 1927, baseType: !4059, size: 64, offset: 704)
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4060 = !DISubroutineType(types: !4061)
!4061 = !{!68, !665, !4062}
!4062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4063, size: 64)
!4063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !123, line: 625, size: 1344, elements: !4064)
!4064 = !{!4065, !4074, !4075, !4081, !4088, !4089, !4094, !4095, !4100, !4101, !4104, !4210, !4211, !4212, !4213, !4214, !4215}
!4065 = !DIDerivedType(tag: DW_TAG_member, scope: !4063, file: !123, line: 628, baseType: !4066, size: 128)
!4066 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4063, file: !123, line: 628, size: 128, elements: !4067)
!4067 = !{!4068, !4073}
!4068 = !DIDerivedType(tag: DW_TAG_member, scope: !4066, file: !123, line: 629, baseType: !4069, size: 128)
!4069 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4066, file: !123, line: 629, size: 128, elements: !4070)
!4070 = !{!4071, !4072}
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !4069, file: !123, line: 631, baseType: !260, size: 64)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !4069, file: !123, line: 632, baseType: !260, size: 64, offset: 64)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !4066, file: !123, line: 635, baseType: !678, size: 128, align: 64)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !4063, file: !123, line: 639, baseType: !2798, size: 64, offset: 128)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !4063, file: !123, line: 640, baseType: !4076, size: 64, offset: 192)
!4076 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2833, line: 297, baseType: !4077)
!4077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2833, line: 297, size: 64, elements: !4078)
!4078 = !{!4079}
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !4077, file: !2833, line: 297, baseType: !4080, size: 64)
!4080 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2838, line: 19, baseType: !260)
!4081 = !DIDerivedType(tag: DW_TAG_member, scope: !4063, file: !123, line: 646, baseType: !4082, size: 64, offset: 256)
!4082 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4063, file: !123, line: 646, size: 64, elements: !4083)
!4083 = !{!4084, !4087}
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !4082, file: !123, line: 647, baseType: !4085, size: 64)
!4085 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4086)
!4086 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !123, line: 542, baseType: !260)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !4082, file: !123, line: 648, baseType: !4086, size: 64)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !4063, file: !123, line: 666, baseType: !68, size: 32, offset: 320)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !4063, file: !123, line: 667, baseType: !4090, size: 64, offset: 384)
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4091, size: 64)
!4091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !123, line: 579, size: 320, elements: !4092)
!4092 = !{!4093}
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4091, file: !123, line: 580, baseType: !837, size: 320)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !4063, file: !123, line: 670, baseType: !896, size: 8, offset: 448)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !4063, file: !123, line: 681, baseType: !4096, size: 256, offset: 512)
!4096 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4063, file: !123, line: 678, size: 256, elements: !4097)
!4097 = !{!4098, !4099}
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4096, file: !123, line: 679, baseType: !829, size: 192, align: 64)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !4096, file: !123, line: 680, baseType: !260, size: 64, offset: 192)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !4063, file: !123, line: 689, baseType: !283, size: 128, offset: 768)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !4063, file: !123, line: 691, baseType: !4102, size: 64, offset: 896)
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4103, size: 64)
!4103 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !123, line: 691, flags: DIFlagFwdDecl)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4063, file: !123, line: 694, baseType: !4105, size: 64, offset: 960)
!4105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4106, size: 64)
!4106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4107)
!4107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !4108, line: 563, size: 1024, elements: !4109)
!4108 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!4109 = !{!4110, !4114, !4115, !4119, !4123, !4127, !4176, !4180, !4184, !4188, !4189, !4190, !4194, !4198, !4202, !4206}
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4107, file: !4108, line: 564, baseType: !4111, size: 64)
!4111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4112, size: 64)
!4112 = !DISubroutineType(types: !4113)
!4113 = !{null, !4062}
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !4107, file: !4108, line: 569, baseType: !4111, size: 64, offset: 64)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !4107, file: !4108, line: 571, baseType: !4116, size: 64, offset: 128)
!4116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4117, size: 64)
!4117 = !DISubroutineType(types: !4118)
!4118 = !{!68, !4062, !260}
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !4107, file: !4108, line: 572, baseType: !4120, size: 64, offset: 192)
!4120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4121, size: 64)
!4121 = !DISubroutineType(types: !4122)
!4122 = !{!68, !4062}
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !4107, file: !4108, line: 578, baseType: !4124, size: 64, offset: 256)
!4124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4125, size: 64)
!4125 = !DISubroutineType(types: !4126)
!4126 = !{!68, !4062, !260, !260, !260}
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !4107, file: !4108, line: 580, baseType: !4128, size: 64, offset: 320)
!4128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4129, size: 64)
!4129 = !DISubroutineType(types: !4130)
!4130 = !{!4131, !4132}
!4131 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !123, line: 1184, baseType: !7)
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4133, size: 64)
!4133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !4108, line: 512, size: 896, elements: !4134)
!4134 = !{!4135, !4143, !4144, !4151, !4158, !4168, !4169, !4170, !4172, !4174}
!4135 = !DIDerivedType(tag: DW_TAG_member, scope: !4133, file: !4108, line: 513, baseType: !4136, size: 320)
!4136 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4133, file: !4108, line: 513, size: 320, elements: !4137)
!4137 = !{!4138, !4139, !4140, !4141, !4142}
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !4136, file: !4108, line: 514, baseType: !4062, size: 64)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !4136, file: !4108, line: 515, baseType: !257, size: 32, offset: 64)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !4136, file: !4108, line: 516, baseType: !260, size: 64, offset: 128)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !4136, file: !4108, line: 517, baseType: !260, size: 64, offset: 192)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !4136, file: !4108, line: 518, baseType: !260, size: 64, offset: 256)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4133, file: !4108, line: 520, baseType: !122, size: 32, offset: 320)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !4133, file: !4108, line: 522, baseType: !4145, size: 64, offset: 384)
!4145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4146, size: 64)
!4146 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2838, line: 22, baseType: !4147)
!4147 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2838, line: 22, size: 64, elements: !4148)
!4148 = !{!4149}
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !4147, file: !2838, line: 22, baseType: !4150, size: 64)
!4150 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2838, line: 15, baseType: !260)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !4133, file: !4108, line: 524, baseType: !4152, size: 64, offset: 448)
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4153, size: 64)
!4153 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2833, line: 372, baseType: !4154)
!4154 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2833, line: 372, size: 64, elements: !4155)
!4155 = !{!4156}
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !4154, file: !2833, line: 372, baseType: !4157, size: 64)
!4157 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2838, line: 16, baseType: !260)
!4158 = !DIDerivedType(tag: DW_TAG_member, scope: !4133, file: !4108, line: 527, baseType: !4159, size: 64, offset: 512)
!4159 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4133, file: !4108, line: 527, size: 64, elements: !4160)
!4160 = !{!4161, !4167}
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !4159, file: !4108, line: 528, baseType: !4162, size: 64)
!4162 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2838, line: 21, baseType: !4163)
!4163 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2838, line: 21, size: 64, elements: !4164)
!4164 = !{!4165}
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !4163, file: !2838, line: 21, baseType: !4166, size: 64)
!4166 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2838, line: 14, baseType: !260)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !4159, file: !4108, line: 529, baseType: !4146, size: 64)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !4133, file: !4108, line: 534, baseType: !269, size: 64, offset: 576)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4133, file: !4108, line: 535, baseType: !269, size: 64, offset: 640)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !4133, file: !4108, line: 541, baseType: !4171, size: 64, offset: 704)
!4171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4162, size: 64)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !4133, file: !4108, line: 545, baseType: !4173, size: 64, offset: 768)
!4173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !4133, file: !4108, line: 549, baseType: !4175, size: 64, offset: 832)
!4175 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2833, line: 520, baseType: !269)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !4107, file: !4108, line: 581, baseType: !4177, size: 64, offset: 384)
!4177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4178, size: 64)
!4178 = !DISubroutineType(types: !4179)
!4179 = !{!4131, !4132, !7}
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !4107, file: !4108, line: 582, baseType: !4181, size: 64, offset: 448)
!4181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4182, size: 64)
!4182 = !DISubroutineType(types: !4183)
!4183 = !{!4131, !4132, !260, !260}
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !4107, file: !4108, line: 584, baseType: !4185, size: 64, offset: 512)
!4185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4186, size: 64)
!4186 = !DISubroutineType(types: !4187)
!4187 = !{!260, !4062}
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !4107, file: !4108, line: 588, baseType: !4128, size: 64, offset: 576)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !4107, file: !4108, line: 591, baseType: !4128, size: 64, offset: 640)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !4107, file: !4108, line: 597, baseType: !4191, size: 64, offset: 704)
!4191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4192, size: 64)
!4192 = !DISubroutineType(types: !4193)
!4193 = !{!68, !4062, !260, !259, !68, !68}
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4107, file: !4108, line: 603, baseType: !4195, size: 64, offset: 768)
!4195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4196, size: 64)
!4196 = !DISubroutineType(types: !4197)
!4197 = !{!460, !4062}
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !4107, file: !4108, line: 613, baseType: !4199, size: 64, offset: 832)
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4200, size: 64)
!4200 = !DISubroutineType(types: !4201)
!4201 = !{!68, !4062, !3498}
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !4107, file: !4108, line: 625, baseType: !4203, size: 64, offset: 896)
!4203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4204, size: 64)
!4204 = !DISubroutineType(types: !4205)
!4205 = !{!3498, !4062, !260}
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !4107, file: !4108, line: 633, baseType: !4207, size: 64, offset: 960)
!4207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4208, size: 64)
!4208 = !DISubroutineType(types: !4209)
!4209 = !{!269, !4062, !260}
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !4063, file: !123, line: 697, baseType: !260, size: 64, offset: 1024)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !4063, file: !123, line: 699, baseType: !665, size: 64, offset: 1088)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !4063, file: !123, line: 700, baseType: !259, size: 64, offset: 1152)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !4063, file: !123, line: 711, baseType: !691, size: 64, offset: 1216)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !4063, file: !123, line: 717, baseType: !3498, size: 64, offset: 1280)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !4063, file: !123, line: 722, baseType: !4216, offset: 1344)
!4216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !123, line: 570, elements: !1516)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1017, file: !19, line: 1928, baseType: !260, size: 64, offset: 768)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1017, file: !19, line: 1929, baseType: !4219, size: 64, offset: 832)
!4219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4220, size: 64)
!4220 = !DISubroutineType(types: !4221)
!4221 = !{!68, !300, !665}
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1017, file: !19, line: 1930, baseType: !4223, size: 64, offset: 896)
!4223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4224, size: 64)
!4224 = !DISubroutineType(types: !4225)
!4225 = !{!68, !665, !4226}
!4226 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !19, line: 1061, baseType: !259)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1017, file: !19, line: 1931, baseType: !4219, size: 64, offset: 960)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1017, file: !19, line: 1932, baseType: !4229, size: 64, offset: 1024)
!4229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4230, size: 64)
!4230 = !DISubroutineType(types: !4231)
!4231 = !{!68, !665, !507, !507, !68}
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1017, file: !19, line: 1933, baseType: !4233, size: 64, offset: 1088)
!4233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4234, size: 64)
!4234 = !DISubroutineType(types: !4235)
!4235 = !{!68, !68, !665, !68}
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1017, file: !19, line: 1934, baseType: !4237, size: 64, offset: 1152)
!4237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4238, size: 64)
!4238 = !DISubroutineType(types: !4239)
!4239 = !{!68, !665, !68, !4240}
!4240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4241, size: 64)
!4241 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !19, line: 1063, flags: DIFlagFwdDecl)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1017, file: !19, line: 1935, baseType: !2822, size: 64, offset: 1216)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1017, file: !19, line: 1936, baseType: !4244, size: 64, offset: 1280)
!4244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4245, size: 64)
!4245 = !DISubroutineType(types: !4246)
!4246 = !{!68, !68}
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1017, file: !19, line: 1937, baseType: !4237, size: 64, offset: 1344)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1017, file: !19, line: 1938, baseType: !4249, size: 64, offset: 1408)
!4249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4250, size: 64)
!4250 = !DISubroutineType(types: !4251)
!4251 = !{!620, !3535, !665, !1028, !633, !7}
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1017, file: !19, line: 1939, baseType: !4253, size: 64, offset: 1472)
!4253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4254, size: 64)
!4254 = !DISubroutineType(types: !4255)
!4255 = !{!620, !665, !1028, !3535, !633, !7}
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1017, file: !19, line: 1940, baseType: !4257, size: 64, offset: 1536)
!4257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4258, size: 64)
!4258 = !DISubroutineType(types: !4259)
!4259 = !{null, !665}
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1017, file: !19, line: 1941, baseType: !4261, size: 64, offset: 1600)
!4261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4262, size: 64)
!4262 = !DISubroutineType(types: !4263)
!4263 = !{!68, !665, !68, !4264, !2274}
!4264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4240, size: 64)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1017, file: !19, line: 1942, baseType: !4266, size: 64, offset: 1664)
!4266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4267, size: 64)
!4267 = !DISubroutineType(types: !4268)
!4268 = !{!623, !665, !68, !507, !507}
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1017, file: !19, line: 1944, baseType: !4270, size: 64, offset: 1728)
!4270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4271, size: 64)
!4271 = !DISubroutineType(types: !4272)
!4272 = !{null, !1572, !665}
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1017, file: !19, line: 1948, baseType: !4274, size: 64, offset: 1792)
!4274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4275, size: 64)
!4275 = !DISubroutineType(types: !4276)
!4276 = !{!620, !665, !507, !665, !507, !633, !7}
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1017, file: !19, line: 1950, baseType: !4278, size: 64, offset: 1856)
!4278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4279, size: 64)
!4279 = !DISubroutineType(types: !4280)
!4280 = !{!507, !665, !507, !665, !507, !507, !7}
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1017, file: !19, line: 1953, baseType: !4229, size: 64, offset: 1920)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1017, file: !19, line: 1954, baseType: !4283, size: 64, offset: 1984)
!4283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4284, size: 64)
!4284 = !DISubroutineType(types: !4285)
!4285 = !{!68, !4286, !7}
!4286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4287, size: 64)
!4287 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !19, line: 1911, flags: DIFlagFwdDecl)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1017, file: !19, line: 1955, baseType: !4289, size: 64, offset: 2048)
!4289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4290, size: 64)
!4290 = !DISubroutineType(types: !4291)
!4291 = !{!68, !4286, !1204, !7}
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !666, file: !19, line: 1018, baseType: !376, size: 64, offset: 1472)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !666, file: !19, line: 1020, baseType: !259, size: 64, offset: 1536)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !666, file: !19, line: 1023, baseType: !259, size: 64, offset: 1600)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !666, file: !19, line: 1027, baseType: !4296, size: 64, offset: 1664)
!4296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !666, file: !19, line: 1029, baseType: !296, size: 64, offset: 1728)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !666, file: !19, line: 1030, baseType: !4299, size: 32, offset: 1792)
!4299 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !4300, line: 8, baseType: !372)
!4300 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !666, file: !19, line: 1031, baseType: !4299, size: 32, offset: 1824)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !652, file: !614, line: 182, baseType: !662, size: 64, offset: 384)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !652, file: !614, line: 184, baseType: !4304, size: 64, offset: 448)
!4304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4305, size: 64)
!4305 = !DISubroutineType(types: !4306)
!4306 = !{!68, !665, !554, !651, !4062}
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !640, file: !614, line: 90, baseType: !4308, size: 64, offset: 192)
!4308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !640, file: !614, line: 91, baseType: !4310, size: 64, offset: 256)
!4310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !604, file: !549, line: 120, baseType: !4312, size: 64, offset: 192)
!4312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4313, size: 64)
!4313 = !DISubroutineType(types: !4314)
!4314 = !{!2148, !572}
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !604, file: !549, line: 121, baseType: !4316, size: 64, offset: 256)
!4316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4317, size: 64)
!4317 = !DISubroutineType(types: !4318)
!4318 = !{!2044, !572}
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !604, file: !549, line: 122, baseType: !4320, size: 64, offset: 320)
!4320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4321, size: 64)
!4321 = !DISubroutineType(types: !4322)
!4322 = !{null, !572, !1677, !1678}
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !548, file: !549, line: 70, baseType: !4324, size: 64, offset: 384)
!4324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4325, size: 64)
!4325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !4326, line: 190, size: 1152, elements: !4327)
!4326 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!4327 = !{!4328, !4329, !4330, !4331, !4332, !4333, !4334, !4335, !4419, !4420, !4421, !4422, !4423, !4426}
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4325, file: !4326, line: 191, baseType: !420, size: 32)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4325, file: !4326, line: 192, baseType: !420, size: 32, offset: 32)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4325, file: !4326, line: 202, baseType: !4324, size: 64, offset: 64)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4325, file: !4326, line: 203, baseType: !460, size: 64, offset: 128)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4325, file: !4326, line: 205, baseType: !829, size: 192, align: 64, offset: 192)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4325, file: !4326, line: 207, baseType: !2044, size: 64, offset: 384)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4325, file: !4326, line: 208, baseType: !7, size: 32, offset: 448)
!4335 = !DIDerivedType(tag: DW_TAG_member, scope: !4325, file: !4326, line: 209, baseType: !4336, size: 256, offset: 512)
!4336 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4325, file: !4326, line: 209, size: 256, elements: !4337)
!4337 = !{!4338, !4347, !4351}
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4336, file: !4326, line: 210, baseType: !4339, size: 256)
!4339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !4326, line: 153, size: 256, elements: !4340)
!4340 = !{!4341, !4342, !4343, !4346}
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4339, file: !4326, line: 154, baseType: !260, size: 64)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4339, file: !4326, line: 156, baseType: !1908, size: 64, offset: 64)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4339, file: !4326, line: 162, baseType: !4344, size: 64, offset: 128)
!4344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4345, size: 64)
!4345 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !4326, line: 162, flags: DIFlagFwdDecl)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4339, file: !4326, line: 167, baseType: !260, size: 64, offset: 192)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4336, file: !4326, line: 211, baseType: !4348, size: 64)
!4348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !4326, line: 170, size: 64, elements: !4349)
!4349 = !{!4350}
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4348, file: !4326, line: 171, baseType: !4324, size: 64)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4336, file: !4326, line: 212, baseType: !4352, size: 256)
!4352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !4326, line: 174, size: 256, elements: !4353)
!4353 = !{!4354, !4414, !4417, !4418}
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4352, file: !4326, line: 175, baseType: !4355, size: 64)
!4355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4356, size: 64)
!4356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4357)
!4357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !4326, line: 271, size: 768, elements: !4358)
!4358 = !{!4359, !4379, !4383, !4387, !4391, !4395, !4399, !4403, !4404, !4405, !4406, !4410}
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4357, file: !4326, line: 276, baseType: !4360, size: 64)
!4360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4361, size: 64)
!4361 = !DISubroutineType(types: !4362)
!4362 = !{!68, !4363}
!4363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4364, size: 64)
!4364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !4326, line: 251, size: 1216, elements: !4365)
!4365 = !{!4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4376, !4377, !4378}
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4364, file: !4326, line: 253, baseType: !4324, size: 64)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4364, file: !4326, line: 254, baseType: !665, size: 64, offset: 64)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4364, file: !4326, line: 255, baseType: !1572, size: 64, offset: 128)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4364, file: !4326, line: 256, baseType: !259, size: 64, offset: 192)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4364, file: !4326, line: 259, baseType: !700, size: 256, offset: 256)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4364, file: !4326, line: 260, baseType: !700, size: 256, offset: 512)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4364, file: !4326, line: 261, baseType: !68, size: 32, offset: 768)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4364, file: !4326, line: 262, baseType: !283, size: 128, offset: 832)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4364, file: !4326, line: 263, baseType: !486, size: 64, offset: 960)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4364, file: !4326, line: 265, baseType: !633, size: 64, offset: 1024)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4364, file: !4326, line: 266, baseType: !896, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4364, file: !4326, line: 267, baseType: !896, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4364, file: !4326, line: 268, baseType: !4105, size: 64, offset: 1152)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4357, file: !4326, line: 277, baseType: !4380, size: 64, offset: 64)
!4380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4381, size: 64)
!4381 = !DISubroutineType(types: !4382)
!4382 = !{null, !4363}
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4357, file: !4326, line: 290, baseType: !4384, size: 64, offset: 128)
!4384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4385, size: 64)
!4385 = !DISubroutineType(types: !4386)
!4386 = !{!68, !1572, !259}
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4357, file: !4326, line: 292, baseType: !4388, size: 64, offset: 192)
!4388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4389, size: 64)
!4389 = !DISubroutineType(types: !4390)
!4390 = !{!259, !1572, !1028}
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4357, file: !4326, line: 293, baseType: !4392, size: 64, offset: 256)
!4392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4393, size: 64)
!4393 = !DISubroutineType(types: !4394)
!4394 = !{!259, !1572, !259, !1028}
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4357, file: !4326, line: 294, baseType: !4396, size: 64, offset: 320)
!4396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4397, size: 64)
!4397 = !DISubroutineType(types: !4398)
!4398 = !{null, !1572, !259}
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4357, file: !4326, line: 296, baseType: !4400, size: 64, offset: 384)
!4400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4401, size: 64)
!4401 = !DISubroutineType(types: !4402)
!4402 = !{!620, !4363, !486, !633, !507}
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4357, file: !4326, line: 306, baseType: !633, size: 64, offset: 448)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4357, file: !4326, line: 313, baseType: !896, size: 8, offset: 512)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4357, file: !4326, line: 314, baseType: !4400, size: 64, offset: 576)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4357, file: !4326, line: 317, baseType: !4407, size: 64, offset: 640)
!4407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4408, size: 64)
!4408 = !DISubroutineType(types: !4409)
!4409 = !{!4040, !4363, !4042}
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4357, file: !4326, line: 320, baseType: !4411, size: 64, offset: 704)
!4411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4412, size: 64)
!4412 = !DISubroutineType(types: !4413)
!4413 = !{!68, !4363, !4062}
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4352, file: !4326, line: 176, baseType: !4415, size: 64, offset: 64)
!4415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4416, size: 64)
!4416 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !4326, line: 35, flags: DIFlagFwdDecl)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4352, file: !4326, line: 177, baseType: !507, size: 64, offset: 128)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4352, file: !4326, line: 178, baseType: !4324, size: 64, offset: 192)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4325, file: !4326, line: 215, baseType: !259, size: 64, offset: 768)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4325, file: !4326, line: 221, baseType: !376, size: 64, offset: 832)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4325, file: !4326, line: 223, baseType: !305, size: 16, offset: 896)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4325, file: !4326, line: 224, baseType: !304, size: 16, offset: 912)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4325, file: !4326, line: 225, baseType: !4424, size: 64, offset: 960)
!4424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4425, size: 64)
!4425 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !4326, line: 36, flags: DIFlagFwdDecl)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4325, file: !4326, line: 227, baseType: !678, size: 128, align: 64, offset: 1024)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !548, file: !549, line: 71, baseType: !2406, size: 32, offset: 448)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !548, file: !549, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !548, file: !549, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !548, file: !549, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !548, file: !549, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !548, file: !549, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !545, file: !6, line: 47, baseType: !535, size: 64, offset: 512)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !545, file: !6, line: 48, baseType: !554, size: 64, offset: 576)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !545, file: !6, line: 49, baseType: !4436, size: 64, offset: 640)
!4436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4437, size: 64)
!4437 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !545, file: !6, line: 50, baseType: !3053, size: 64, offset: 704)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !536, file: !6, line: 418, baseType: !4440, size: 64, offset: 1408)
!4440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4441, size: 64)
!4441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !4442)
!4442 = !{!4443, !4444, !4449, !4453, !4457, !4461}
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4441, file: !6, line: 54, baseType: !625, size: 128)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4441, file: !6, line: 55, baseType: !4445, size: 64, offset: 128)
!4445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4446, size: 64)
!4446 = !DISubroutineType(types: !4447)
!4447 = !{!620, !4440, !4448, !486}
!4448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !4441, file: !6, line: 57, baseType: !4450, size: 64, offset: 192)
!4450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4451, size: 64)
!4451 = !DISubroutineType(types: !4452)
!4452 = !{!620, !4440, !4448, !460, !633}
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !4441, file: !6, line: 59, baseType: !4454, size: 64, offset: 256)
!4454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4455, size: 64)
!4455 = !DISubroutineType(types: !4456)
!4456 = !{null, !535, !460}
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !4441, file: !6, line: 60, baseType: !4458, size: 64, offset: 320)
!4458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4459, size: 64)
!4459 = !DISubroutineType(types: !4460)
!4460 = !{!68, !535}
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4441, file: !6, line: 61, baseType: !4462, size: 64, offset: 384)
!4462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4463, size: 64)
!4463 = !DISubroutineType(types: !4464)
!4464 = !{null, !535}
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !536, file: !6, line: 419, baseType: !460, size: 64, offset: 1472)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !536, file: !6, line: 420, baseType: !460, size: 64, offset: 1536)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !536, file: !6, line: 421, baseType: !554, size: 64, offset: 1600)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !536, file: !6, line: 424, baseType: !4469, size: 64, offset: 1664)
!4469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4470, size: 64)
!4470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4471)
!4471 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !536, file: !6, line: 425, baseType: !4473, size: 64, offset: 1728)
!4473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4474, size: 64)
!4474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !822)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !536, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !536, file: !6, line: 435, baseType: !700, size: 256, offset: 1856)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !536, file: !6, line: 437, baseType: !4478, size: 64, offset: 2112)
!4478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4479, size: 64)
!4479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !4480, line: 69, size: 320, elements: !4481)
!4480 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!4481 = !{!4482, !4483, !4484, !4501, !4503, !4507, !4508}
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4479, file: !4480, line: 70, baseType: !460, size: 64)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4479, file: !4480, line: 71, baseType: !535, size: 64, offset: 64)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4479, file: !4480, line: 72, baseType: !4485, size: 64, offset: 128)
!4485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4486, size: 64)
!4486 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4487)
!4487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !4480, line: 47, size: 256, elements: !4488)
!4488 = !{!4489, !4490, !4496, !4500}
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4487, file: !4480, line: 49, baseType: !7, size: 32)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !4487, file: !4480, line: 51, baseType: !4491, size: 64, offset: 64)
!4491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4492, size: 64)
!4492 = !DISubroutineType(types: !4493)
!4493 = !{!68, !460, !4494}
!4494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4495, size: 64)
!4495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4479)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4487, file: !4480, line: 53, baseType: !4497, size: 64, offset: 128)
!4497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4498, size: 64)
!4498 = !DISubroutineType(types: !4499)
!4499 = !{!68, !486, !4494}
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4487, file: !4480, line: 55, baseType: !2172, size: 64, offset: 192)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4479, file: !4480, line: 73, baseType: !4502, size: 16, offset: 192)
!4502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !435)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4479, file: !4480, line: 74, baseType: !4504, size: 8, offset: 208)
!4504 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !373, line: 16, baseType: !4505)
!4505 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !263, line: 20, baseType: !4506)
!4506 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4479, file: !4480, line: 75, baseType: !428, size: 8, offset: 216)
!4508 = !DIDerivedType(tag: DW_TAG_member, scope: !4479, file: !4480, line: 76, baseType: !4509, size: 64, offset: 256)
!4509 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4479, file: !4480, line: 76, size: 64, elements: !4510)
!4510 = !{!4511, !4512, !4519}
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4509, file: !4480, line: 77, baseType: !259, size: 64)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !4509, file: !4480, line: 78, baseType: !4513, size: 64)
!4513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4514, size: 64)
!4514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4515)
!4515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !4480, line: 86, size: 128, elements: !4516)
!4516 = !{!4517, !4518}
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !4515, file: !4480, line: 87, baseType: !7, size: 32)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4515, file: !4480, line: 88, baseType: !486, size: 64, offset: 64)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !4509, file: !4480, line: 79, baseType: !4520, size: 64)
!4520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4521, size: 64)
!4521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4522)
!4522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !4480, line: 92, size: 256, elements: !4523)
!4523 = !{!4524, !4525, !4526, !4527, !4528}
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !4522, file: !4480, line: 94, baseType: !7, size: 32)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !4522, file: !4480, line: 95, baseType: !7, size: 32, offset: 32)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4522, file: !4480, line: 96, baseType: !1332, size: 64, offset: 64)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4522, file: !4480, line: 97, baseType: !4485, size: 64, offset: 128)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !4522, file: !4480, line: 98, baseType: !259, size: 64, offset: 192)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !536, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !536, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !536, file: !6, line: 442, baseType: !4469, size: 64, offset: 2240)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !536, file: !6, line: 443, baseType: !4473, size: 64, offset: 2304)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !536, file: !6, line: 444, baseType: !896, size: 8, offset: 2368)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !536, file: !6, line: 451, baseType: !896, size: 8, offset: 2376)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !536, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !536, file: !6, line: 455, baseType: !4537, size: 64, offset: 2432)
!4537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4538, size: 64)
!4538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !4539, line: 23, size: 96, elements: !4540)
!4539 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!4540 = !{!4541, !4542, !4543}
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4538, file: !4539, line: 24, baseType: !68, size: 32)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !4538, file: !4539, line: 24, baseType: !68, size: 32, offset: 32)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4538, file: !4539, line: 24, baseType: !68, size: 32, offset: 64)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !536, file: !6, line: 458, baseType: !4545, size: 64, offset: 2496)
!4545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4546, size: 64)
!4546 = !DISubroutineType(types: !4547)
!4547 = !{!68}
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !536, file: !6, line: 460, baseType: !4549, size: 4032, align: 512, offset: 2560)
!4549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4550, size: 4032, elements: !4564)
!4550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !4551)
!4551 = !{!4552, !4553, !4554}
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4550, file: !6, line: 363, baseType: !259, size: 64)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4550, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !4550, file: !6, line: 367, baseType: !4555, size: 448, offset: 128)
!4555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !4556)
!4556 = !{!4557, !4558}
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4555, file: !6, line: 320, baseType: !535, size: 64)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4555, file: !6, line: 321, baseType: !4559, size: 384, offset: 64)
!4559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !4560, line: 40, size: 384, elements: !4561)
!4560 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!4561 = !{!4562}
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4559, file: !4560, line: 41, baseType: !4563, size: 384, align: 64)
!4563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !829, size: 384, align: 64, elements: !1474)
!4564 = !{!4565}
!4565 = !DISubrange(count: 7)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !536, file: !6, line: 463, baseType: !4567, size: 192, offset: 6592)
!4567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !4568, line: 8, size: 192, elements: !4569)
!4568 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!4569 = !{!4570, !4571, !4572}
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !4567, file: !4568, line: 10, baseType: !7, size: 32)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !4567, file: !4568, line: 11, baseType: !3055, size: 64, offset: 64)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !4567, file: !4568, line: 12, baseType: !4573, size: 64, offset: 128)
!4573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4574, size: 64)
!4574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !4575, line: 59, size: 48, elements: !4576)
!4575 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!4576 = !{!4577, !4578, !4579, !4580, !4581, !4582}
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !4574, file: !4575, line: 60, baseType: !2927, size: 16)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !4574, file: !4575, line: 61, baseType: !2927, size: 16, offset: 16)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !4574, file: !4575, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !4574, file: !4575, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4574, file: !4575, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !4574, file: !4575, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !536, file: !6, line: 465, baseType: !260, size: 64, offset: 6784)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !536, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !536, file: !6, line: 470, baseType: !283, size: 128, offset: 6912)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !536, file: !6, line: 471, baseType: !4587, size: 64, offset: 7040)
!4587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4588, size: 64)
!4588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !4589, line: 33, size: 96, elements: !4590)
!4589 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!4590 = !{!4591, !4592, !4593, !4594}
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !4588, file: !4589, line: 37, baseType: !68, size: 32)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !4588, file: !4589, line: 43, baseType: !68, size: 32, offset: 32)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !4588, file: !4589, line: 45, baseType: !305, size: 16, offset: 64)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4588, file: !4589, line: 47, baseType: !305, size: 16, offset: 80)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !536, file: !6, line: 476, baseType: !4596, size: 64, offset: 7104)
!4596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4597, size: 64)
!4597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !4598)
!4598 = !{!4599, !4615, !4616, !4617}
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !4597, file: !6, line: 379, baseType: !4600, size: 64)
!4600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4601, size: 64)
!4601 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !4602, line: 204, baseType: !4603)
!4602 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!4603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !4602, line: 197, size: 192, elements: !4604)
!4604 = !{!4605, !4607, !4608, !4609, !4611, !4613}
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !4603, file: !4602, line: 198, baseType: !4606, size: 32)
!4606 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !4602, line: 21, baseType: !262)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !4603, file: !4602, line: 199, baseType: !382, size: 8, offset: 32)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !4603, file: !4602, line: 200, baseType: !382, size: 8, offset: 40)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !4603, file: !4602, line: 201, baseType: !4610, size: 16, offset: 48)
!4610 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !4602, line: 17, baseType: !436)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !4603, file: !4602, line: 202, baseType: !4612, size: 64, offset: 64)
!4612 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !4602, line: 16, baseType: !377)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !4603, file: !4602, line: 203, baseType: !4614, size: 64, offset: 128)
!4614 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !4602, line: 22, baseType: !377)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !4597, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !4597, file: !6, line: 381, baseType: !486, size: 64, offset: 128)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !4597, file: !6, line: 382, baseType: !486, size: 64, offset: 192)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !536, file: !6, line: 477, baseType: !4597, size: 256, offset: 7168)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !536, file: !6, line: 480, baseType: !4620, size: 64, offset: 7424)
!4620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4621, size: 64)
!4621 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !536, file: !6, line: 483, baseType: !4623, size: 64, offset: 7488)
!4623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4624, size: 64)
!4624 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !536, file: !6, line: 488, baseType: !486, size: 64, offset: 7552)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !536, file: !6, line: 492, baseType: !259, size: 64, offset: 7616)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !536, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !536, file: !6, line: 495, baseType: !259, size: 64, offset: 7744)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !536, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !536, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !536, file: !6, line: 500, baseType: !4632, size: 64, offset: 7872)
!4632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4633, size: 64)
!4633 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !4634, line: 45, baseType: !4635)
!4634 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!4635 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !536, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !536, file: !6, line: 504, baseType: !4638, size: 64, offset: 8000)
!4638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !536, file: !6, line: 515, baseType: !4640, size: 64, offset: 8064)
!4640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4641, size: 64)
!4641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !4642, line: 117, size: 128, elements: !4643)
!4642 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!4643 = !{!4644, !4645, !4646}
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4641, file: !4642, line: 118, baseType: !822, size: 32)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !4641, file: !4642, line: 119, baseType: !822, size: 32, offset: 32)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4641, file: !4642, line: 120, baseType: !623, size: 64, offset: 64)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !536, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !536, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !536, file: !6, line: 520, baseType: !2064, size: 64, offset: 8192)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !536, file: !6, line: 523, baseType: !4651, size: 64, offset: 8256)
!4651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4652, size: 64)
!4652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4653, size: 64)
!4653 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !536, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !536, file: !6, line: 525, baseType: !4656, size: 64, offset: 8384)
!4656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4657, size: 64)
!4657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4658, size: 64)
!4658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !4659, line: 28, size: 192, elements: !4660)
!4659 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb3837c9edbef1074628f52e8cfdb75")
!4660 = !{!4661, !4662, !4663}
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !4658, file: !4659, line: 29, baseType: !460, size: 64)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "eval_string", scope: !4658, file: !4659, line: 30, baseType: !460, size: 64, offset: 64)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "eval_value", scope: !4658, file: !4659, line: 31, baseType: !260, size: 64, offset: 128)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !536, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !536, file: !6, line: 533, baseType: !259, size: 64, offset: 8512)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !536, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !536, file: !6, line: 535, baseType: !3915, size: 64, offset: 8640)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !536, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !536, file: !6, line: 539, baseType: !68, size: 32, offset: 8736)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !536, file: !6, line: 540, baseType: !4671, size: 64, offset: 8768)
!4671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4672, size: 64)
!4672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !4673, line: 32, size: 64, elements: !4674)
!4673 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!4674 = !{!4675, !4676}
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4672, file: !4673, line: 33, baseType: !822, size: 32)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4672, file: !4673, line: 34, baseType: !822, size: 32, offset: 32)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !536, file: !6, line: 563, baseType: !283, size: 128, offset: 8832)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !536, file: !6, line: 565, baseType: !283, size: 128, offset: 8960)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !536, file: !6, line: 568, baseType: !4680, size: 64, offset: 9088)
!4680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !536, file: !6, line: 570, baseType: !420, size: 32, offset: 9152)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !512, file: !19, line: 2382, baseType: !511, size: 64, offset: 448)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !512, file: !19, line: 2383, baseType: !752, size: 64, offset: 512)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !512, file: !19, line: 2385, baseType: !4685, offset: 576)
!4685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1515, line: 206, elements: !1516)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !512, file: !19, line: 2386, baseType: !4685, offset: 576)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !512, file: !19, line: 2387, baseType: !4685, offset: 576)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !512, file: !19, line: 2388, baseType: !4689, offset: 576)
!4689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4685, elements: !589)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !512, file: !19, line: 2390, baseType: !4685, offset: 576)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !512, file: !19, line: 2391, baseType: !4685, offset: 576)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !512, file: !19, line: 2392, baseType: !4685, offset: 576)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !512, file: !19, line: 2393, baseType: !4685, offset: 576)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !498, file: !19, line: 1197, baseType: !4695, size: 64, offset: 384)
!4695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4696, size: 64)
!4696 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4697)
!4697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !19, line: 2057, size: 1664, elements: !4698)
!4698 = !{!4699, !4703, !4707, !4708, !4712, !4736, !4740, !4741, !4742, !4746, !4750, !4754, !4755, !4756, !4762, !4766, !4767, !4771, !4772, !4773, !4774, !4778, !4782, !4829, !4844, !4845}
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !4697, file: !19, line: 2058, baseType: !4700, size: 64)
!4700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4701, size: 64)
!4701 = !DISubroutineType(types: !4702)
!4702 = !{!300, !497}
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !4697, file: !19, line: 2059, baseType: !4704, size: 64, offset: 64)
!4704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4705, size: 64)
!4705 = !DISubroutineType(types: !4706)
!4706 = !{null, !300}
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4697, file: !19, line: 2060, baseType: !4704, size: 64, offset: 128)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !4697, file: !19, line: 2062, baseType: !4709, size: 64, offset: 192)
!4709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4710, size: 64)
!4710 = !DISubroutineType(types: !4711)
!4711 = !{null, !300, !68}
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !4697, file: !19, line: 2063, baseType: !4713, size: 64, offset: 256)
!4713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4714, size: 64)
!4714 = !DISubroutineType(types: !4715)
!4715 = !{!68, !300, !4716}
!4716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4717, size: 64)
!4717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 42, size: 384, elements: !4718)
!4718 = !{!4719, !4720, !4721, !4722, !4723, !4724, !4725, !4726, !4727, !4728, !4729, !4730, !4731, !4732}
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_write", scope: !4717, file: !14, line: 43, baseType: !623, size: 64)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "pages_skipped", scope: !4717, file: !14, line: 45, baseType: !623, size: 64, offset: 64)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !4717, file: !14, line: 52, baseType: !507, size: 64, offset: 128)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !4717, file: !14, line: 53, baseType: !507, size: 64, offset: 192)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "sync_mode", scope: !4717, file: !14, line: 55, baseType: !13, size: 32, offset: 256)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "for_kupdate", scope: !4717, file: !14, line: 57, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "for_background", scope: !4717, file: !14, line: 58, baseType: !7, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_writepages", scope: !4717, file: !14, line: 59, baseType: !7, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "for_reclaim", scope: !4717, file: !14, line: 60, baseType: !7, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "range_cyclic", scope: !4717, file: !14, line: 61, baseType: !7, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "for_sync", scope: !4717, file: !14, line: 62, baseType: !7, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "unpinned_fscache_wb", scope: !4717, file: !14, line: 63, baseType: !7, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_owner", scope: !4717, file: !14, line: 71, baseType: !7, size: 1, offset: 295, flags: DIFlagBitField, extraData: i64 288)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "swap_plug", scope: !4717, file: !14, line: 78, baseType: !4733, size: 64, offset: 320)
!4733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4734, size: 64)
!4734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4735, size: 64)
!4735 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_iocb", file: !14, line: 78, flags: DIFlagFwdDecl)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !4697, file: !19, line: 2064, baseType: !4737, size: 64, offset: 320)
!4737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4738, size: 64)
!4738 = !DISubroutineType(types: !4739)
!4739 = !{!68, !300}
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !4697, file: !19, line: 2065, baseType: !4704, size: 64, offset: 384)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !4697, file: !19, line: 2066, baseType: !531, size: 64, offset: 448)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !4697, file: !19, line: 2067, baseType: !4743, size: 64, offset: 512)
!4743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4744, size: 64)
!4744 = !DISubroutineType(types: !4745)
!4745 = !{!68, !497, !68}
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !4697, file: !19, line: 2068, baseType: !4747, size: 64, offset: 576)
!4747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4748, size: 64)
!4748 = !DISubroutineType(types: !4749)
!4749 = !{!68, !497, !18}
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !4697, file: !19, line: 2069, baseType: !4751, size: 64, offset: 640)
!4751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4752, size: 64)
!4752 = !DISubroutineType(types: !4753)
!4753 = !{!68, !497}
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !4697, file: !19, line: 2070, baseType: !4747, size: 64, offset: 704)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !4697, file: !19, line: 2071, baseType: !4751, size: 64, offset: 768)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !4697, file: !19, line: 2072, baseType: !4757, size: 64, offset: 832)
!4757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4758, size: 64)
!4758 = !DISubroutineType(types: !4759)
!4759 = !{!68, !338, !4760}
!4760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4761, size: 64)
!4761 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !19, line: 62, flags: DIFlagFwdDecl)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !4697, file: !19, line: 2073, baseType: !4763, size: 64, offset: 896)
!4763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4764, size: 64)
!4764 = !DISubroutineType(types: !4765)
!4765 = !{!68, !497, !3055, !486}
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !4697, file: !19, line: 2074, baseType: !531, size: 64, offset: 960)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !4697, file: !19, line: 2076, baseType: !4768, size: 64, offset: 1024)
!4768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4769, size: 64)
!4769 = !DISubroutineType(types: !4770)
!4770 = !{!68, !1572, !338}
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !4697, file: !19, line: 2077, baseType: !4768, size: 64, offset: 1088)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !4697, file: !19, line: 2078, baseType: !4768, size: 64, offset: 1152)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !4697, file: !19, line: 2079, baseType: !4768, size: 64, offset: 1216)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !4697, file: !19, line: 2081, baseType: !4775, size: 64, offset: 1280)
!4775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4776, size: 64)
!4776 = !DISubroutineType(types: !4777)
!4777 = !{!620, !497, !68, !486, !633, !507}
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !4697, file: !19, line: 2082, baseType: !4779, size: 64, offset: 1344)
!4779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4780, size: 64)
!4780 = !DISubroutineType(types: !4781)
!4781 = !{!620, !497, !68, !460, !633, !507}
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !4697, file: !19, line: 2083, baseType: !4783, size: 64, offset: 1408)
!4783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4784, size: 64)
!4784 = !DISubroutineType(types: !4785)
!4785 = !{!4786, !300}
!4786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4787, size: 64)
!4787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4788, size: 64)
!4788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !24, line: 296, size: 1664, elements: !4789)
!4789 = !{!4790, !4791, !4792, !4793, !4794, !4795, !4796, !4797, !4798, !4814, !4815, !4816}
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !4788, file: !24, line: 297, baseType: !756, size: 128)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !4788, file: !24, line: 298, baseType: !283, size: 128, offset: 128)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !4788, file: !24, line: 299, baseType: !283, size: 128, offset: 256)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !4788, file: !24, line: 300, baseType: !283, size: 128, offset: 384)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !4788, file: !24, line: 301, baseType: !700, size: 256, offset: 512)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !4788, file: !24, line: 302, baseType: !400, size: 32, offset: 768)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !4788, file: !24, line: 303, baseType: !420, size: 32, offset: 800)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !4788, file: !24, line: 304, baseType: !497, size: 64, offset: 832)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !4788, file: !24, line: 305, baseType: !4799, size: 64, offset: 896)
!4799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !24, line: 68, size: 64, elements: !4800)
!4800 = !{!4801, !4813}
!4801 = !DIDerivedType(tag: DW_TAG_member, scope: !4799, file: !24, line: 69, baseType: !4802, size: 32)
!4802 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4799, file: !24, line: 69, size: 32, elements: !4803)
!4803 = !{!4804, !4805, !4806}
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4802, file: !24, line: 70, baseType: !308, size: 32)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4802, file: !24, line: 71, baseType: !318, size: 32)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !4802, file: !24, line: 72, baseType: !4807, size: 32)
!4807 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !4808, line: 24, baseType: !4809)
!4808 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!4809 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4808, line: 22, size: 32, elements: !4810)
!4810 = !{!4811}
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4809, file: !4808, line: 23, baseType: !4812, size: 32)
!4812 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !4808, line: 20, baseType: !314)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4799, file: !24, line: 74, baseType: !23, size: 32, offset: 32)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !4788, file: !24, line: 306, baseType: !507, size: 64, offset: 960)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !4788, file: !24, line: 307, baseType: !260, size: 64, offset: 1024)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !4788, file: !24, line: 308, baseType: !4817, size: 576, offset: 1088)
!4817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !24, line: 205, size: 576, elements: !4818)
!4818 = !{!4819, !4821, !4822, !4823, !4824, !4825, !4826, !4827, !4828}
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !4817, file: !24, line: 206, baseType: !4820, size: 64)
!4820 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !24, line: 66, baseType: !509)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !4817, file: !24, line: 207, baseType: !4820, size: 64, offset: 64)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !4817, file: !24, line: 208, baseType: !4820, size: 64, offset: 128)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !4817, file: !24, line: 209, baseType: !4820, size: 64, offset: 192)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !4817, file: !24, line: 210, baseType: !4820, size: 64, offset: 256)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !4817, file: !24, line: 211, baseType: !4820, size: 64, offset: 320)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !4817, file: !24, line: 212, baseType: !4820, size: 64, offset: 384)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !4817, file: !24, line: 213, baseType: !853, size: 64, offset: 448)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !4817, file: !24, line: 214, baseType: !853, size: 64, offset: 512)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !4697, file: !19, line: 2085, baseType: !4830, size: 64, offset: 1472)
!4830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4831, size: 64)
!4831 = !DISubroutineType(types: !4832)
!4832 = !{!623, !497, !4833}
!4833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4834, size: 64)
!4834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !4835, line: 15, size: 256, elements: !4836)
!4835 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!4836 = !{!4837, !4838, !4839, !4840, !4841}
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !4834, file: !4835, line: 16, baseType: !257, size: 32)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !4834, file: !4835, line: 19, baseType: !68, size: 32, offset: 32)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !4834, file: !4835, line: 26, baseType: !260, size: 64, offset: 64)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !4834, file: !4835, line: 33, baseType: !260, size: 64, offset: 128)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !4834, file: !4835, line: 36, baseType: !4842, size: 64, offset: 192)
!4842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4843, size: 64)
!4843 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !4835, line: 36, flags: DIFlagFwdDecl)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !4697, file: !19, line: 2087, baseType: !4830, size: 64, offset: 1536)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4697, file: !19, line: 2089, baseType: !531, size: 64, offset: 1600)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !498, file: !19, line: 1198, baseType: !4847, size: 64, offset: 448)
!4847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4848, size: 64)
!4848 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4849)
!4849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !24, line: 324, size: 704, elements: !4850)
!4850 = !{!4851, !4855, !4859, !4863, !4864, !4865, !4866, !4867, !4872, !4877, !4881}
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !4849, file: !24, line: 325, baseType: !4852, size: 64)
!4852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4853, size: 64)
!4853 = !DISubroutineType(types: !4854)
!4854 = !{!68, !4787}
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !4849, file: !24, line: 326, baseType: !4856, size: 64, offset: 64)
!4856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4857, size: 64)
!4857 = !DISubroutineType(types: !4858)
!4858 = !{!4787, !497, !68}
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !4849, file: !24, line: 327, baseType: !4860, size: 64, offset: 128)
!4860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4861, size: 64)
!4861 = !DISubroutineType(types: !4862)
!4862 = !{null, !4787}
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !4849, file: !24, line: 328, baseType: !4852, size: 64, offset: 192)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !4849, file: !24, line: 329, baseType: !4852, size: 64, offset: 256)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !4849, file: !24, line: 330, baseType: !4852, size: 64, offset: 320)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !4849, file: !24, line: 331, baseType: !4743, size: 64, offset: 384)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !4849, file: !24, line: 334, baseType: !4868, size: 64, offset: 448)
!4868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4869, size: 64)
!4869 = !DISubroutineType(types: !4870)
!4870 = !{!4871, !300}
!4871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4820, size: 64)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !4849, file: !24, line: 335, baseType: !4873, size: 64, offset: 512)
!4873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4874, size: 64)
!4874 = !DISubroutineType(types: !4875)
!4875 = !{!68, !300, !4876}
!4876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4807, size: 64)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !4849, file: !24, line: 337, baseType: !4878, size: 64, offset: 576)
!4878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4879, size: 64)
!4879 = !DISubroutineType(types: !4880)
!4880 = !{!68, !300, !4871}
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4849, file: !24, line: 339, baseType: !4882, size: 64, offset: 640)
!4882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4883, size: 64)
!4883 = !DISubroutineType(types: !4884)
!4884 = !{!68, !497, !4885}
!4885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4799, size: 64)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !498, file: !19, line: 1199, baseType: !4887, size: 64, offset: 512)
!4887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4888, size: 64)
!4888 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4889)
!4889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !24, line: 430, size: 704, elements: !4890)
!4890 = !{!4891, !4897, !4898, !4902, !4903, !4904, !4919, !4942, !4946, !4947, !4970}
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !4889, file: !24, line: 431, baseType: !4892, size: 64)
!4892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4893, size: 64)
!4893 = !DISubroutineType(types: !4894)
!4894 = !{!68, !497, !68, !68, !4895}
!4895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4896, size: 64)
!4896 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1008)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !4889, file: !24, line: 432, baseType: !4743, size: 64, offset: 64)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !4889, file: !24, line: 433, baseType: !4899, size: 64, offset: 128)
!4899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4900, size: 64)
!4900 = !DISubroutineType(types: !4901)
!4901 = !{!68, !497, !7}
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !4889, file: !24, line: 434, baseType: !4899, size: 64, offset: 192)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !4889, file: !24, line: 435, baseType: !4743, size: 64, offset: 256)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !4889, file: !24, line: 436, baseType: !4905, size: 64, offset: 320)
!4905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4906, size: 64)
!4906 = !DISubroutineType(types: !4907)
!4907 = !{!68, !497, !68, !4908}
!4908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4909, size: 64)
!4909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !24, line: 417, size: 256, elements: !4910)
!4910 = !{!4911, !4912, !4913, !4914, !4915, !4916, !4917, !4918}
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !4909, file: !24, line: 418, baseType: !68, size: 32)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !4909, file: !24, line: 419, baseType: !7, size: 32, offset: 32)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !4909, file: !24, line: 420, baseType: !7, size: 32, offset: 64)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !4909, file: !24, line: 422, baseType: !7, size: 32, offset: 96)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !4909, file: !24, line: 423, baseType: !7, size: 32, offset: 128)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !4909, file: !24, line: 424, baseType: !7, size: 32, offset: 160)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !4909, file: !24, line: 425, baseType: !7, size: 32, offset: 192)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !4909, file: !24, line: 426, baseType: !7, size: 32, offset: 224)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !4889, file: !24, line: 437, baseType: !4920, size: 64, offset: 384)
!4920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4921, size: 64)
!4921 = !DISubroutineType(types: !4922)
!4922 = !{!68, !497, !4799, !4923}
!4923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4924, size: 64)
!4924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !24, line: 345, size: 960, elements: !4925)
!4925 = !{!4926, !4927, !4928, !4929, !4930, !4931, !4932, !4933, !4934, !4935, !4936, !4937, !4938, !4939, !4940, !4941}
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !4924, file: !24, line: 346, baseType: !68, size: 32)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !4924, file: !24, line: 347, baseType: !376, size: 64, offset: 64)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !4924, file: !24, line: 348, baseType: !376, size: 64, offset: 128)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !4924, file: !24, line: 349, baseType: !376, size: 64, offset: 192)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !4924, file: !24, line: 350, baseType: !376, size: 64, offset: 256)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !4924, file: !24, line: 351, baseType: !376, size: 64, offset: 320)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !4924, file: !24, line: 352, baseType: !376, size: 64, offset: 384)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !4924, file: !24, line: 353, baseType: !697, size: 64, offset: 448)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !4924, file: !24, line: 355, baseType: !697, size: 64, offset: 512)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !4924, file: !24, line: 356, baseType: !68, size: 32, offset: 576)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !4924, file: !24, line: 357, baseType: !68, size: 32, offset: 608)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !4924, file: !24, line: 358, baseType: !376, size: 64, offset: 640)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !4924, file: !24, line: 359, baseType: !376, size: 64, offset: 704)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !4924, file: !24, line: 360, baseType: !376, size: 64, offset: 768)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !4924, file: !24, line: 361, baseType: !697, size: 64, offset: 832)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !4924, file: !24, line: 362, baseType: !68, size: 32, offset: 896)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !4889, file: !24, line: 438, baseType: !4943, size: 64, offset: 448)
!4943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4944, size: 64)
!4944 = !DISubroutineType(types: !4945)
!4945 = !{!68, !497, !4885, !4923}
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !4889, file: !24, line: 440, baseType: !4920, size: 64, offset: 512)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !4889, file: !24, line: 441, baseType: !4948, size: 64, offset: 576)
!4948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4949, size: 64)
!4949 = !DISubroutineType(types: !4950)
!4950 = !{!68, !497, !4951}
!4951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4952, size: 64)
!4952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !24, line: 411, size: 1408, elements: !4953)
!4953 = !{!4954, !4955}
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !4952, file: !24, line: 412, baseType: !7, size: 32)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !4952, file: !24, line: 413, baseType: !4956, size: 1344, offset: 64)
!4956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4957, size: 1344, elements: !589)
!4957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !24, line: 397, size: 448, elements: !4958)
!4958 = !{!4959, !4960, !4961, !4962, !4963, !4964, !4965, !4966, !4967, !4969}
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4957, file: !24, line: 398, baseType: !7, size: 32)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !4957, file: !24, line: 399, baseType: !7, size: 32, offset: 32)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !4957, file: !24, line: 401, baseType: !7, size: 32, offset: 64)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !4957, file: !24, line: 402, baseType: !7, size: 32, offset: 96)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !4957, file: !24, line: 403, baseType: !7, size: 32, offset: 128)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !4957, file: !24, line: 404, baseType: !7, size: 32, offset: 160)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !4957, file: !24, line: 405, baseType: !7, size: 32, offset: 192)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4957, file: !24, line: 406, baseType: !378, size: 64, offset: 256)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4957, file: !24, line: 407, baseType: !4968, size: 64, offset: 320)
!4968 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !258, line: 132, baseType: !376)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !4957, file: !24, line: 408, baseType: !4968, size: 64, offset: 384)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !4889, file: !24, line: 442, baseType: !4899, size: 64, offset: 640)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !498, file: !19, line: 1200, baseType: !4972, size: 64, offset: 576)
!4972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4973, size: 64)
!4973 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4974)
!4974 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !19, line: 54, flags: DIFlagFwdDecl)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !498, file: !19, line: 1201, baseType: !260, size: 64, offset: 640)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !498, file: !19, line: 1202, baseType: !260, size: 64, offset: 704)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !498, file: !19, line: 1203, baseType: !260, size: 64, offset: 768)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !498, file: !19, line: 1204, baseType: !338, size: 64, offset: 832)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !498, file: !19, line: 1205, baseType: !837, size: 320, offset: 896)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !498, file: !19, line: 1206, baseType: !68, size: 32, offset: 1216)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !498, file: !19, line: 1207, baseType: !420, size: 32, offset: 1248)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !498, file: !19, line: 1209, baseType: !259, size: 64, offset: 1280)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !498, file: !19, line: 1211, baseType: !4984, size: 64, offset: 1344)
!4984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4985, size: 64)
!4985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4986, size: 64)
!4986 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4987)
!4987 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !19, line: 1211, flags: DIFlagFwdDecl)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !498, file: !19, line: 1223, baseType: !4989, size: 64, offset: 1408)
!4989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !355, line: 34, size: 64, elements: !4990)
!4990 = !{!4991}
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4989, file: !355, line: 35, baseType: !358, size: 64)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !498, file: !19, line: 1224, baseType: !283, size: 128, offset: 1472)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !498, file: !19, line: 1225, baseType: !1597, size: 64, offset: 1600)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !498, file: !19, line: 1226, baseType: !4995, size: 64, offset: 1664)
!4995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4996, size: 64)
!4996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !164, line: 1495, size: 128, elements: !4997)
!4997 = !{!4998, !4999}
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !4996, file: !164, line: 1496, baseType: !1597, size: 64)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "holder", scope: !4996, file: !164, line: 1497, baseType: !259, size: 64, offset: 64)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !498, file: !19, line: 1227, baseType: !2397, size: 64, offset: 1728)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !498, file: !19, line: 1228, baseType: !5002, size: 64, offset: 1792)
!5002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5003, size: 64)
!5003 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !19, line: 1228, flags: DIFlagFwdDecl)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !498, file: !19, line: 1229, baseType: !756, size: 128, offset: 1856)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !498, file: !19, line: 1230, baseType: !7, size: 32, offset: 1984)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !498, file: !19, line: 1231, baseType: !5007, size: 2496, offset: 2048)
!5007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !24, line: 521, size: 2496, elements: !5008)
!5008 = !{!5009, !5010, !5011, !5013, !5045}
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5007, file: !24, line: 522, baseType: !7, size: 32)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !5007, file: !24, line: 523, baseType: !837, size: 320, offset: 64)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !5007, file: !24, line: 524, baseType: !5012, size: 192, offset: 384)
!5012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 192, elements: !589)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5007, file: !24, line: 525, baseType: !5014, size: 1728, offset: 576)
!5014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5015, size: 1728, elements: !589)
!5015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !24, line: 222, size: 576, elements: !5016)
!5016 = !{!5017, !5037, !5038, !5039, !5040, !5041, !5042, !5043, !5044}
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !5015, file: !24, line: 223, baseType: !5018, size: 64)
!5018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5019, size: 64)
!5019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !24, line: 445, size: 256, elements: !5020)
!5020 = !{!5021, !5022, !5035, !5036}
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !5019, file: !24, line: 446, baseType: !68, size: 32)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !5019, file: !24, line: 447, baseType: !5023, size: 64, offset: 64)
!5023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5024, size: 64)
!5024 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5025)
!5025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !24, line: 312, size: 512, elements: !5026)
!5026 = !{!5027, !5028, !5029, !5030, !5031, !5032, !5033, !5034}
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !5025, file: !24, line: 313, baseType: !4743, size: 64)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !5025, file: !24, line: 314, baseType: !4743, size: 64, offset: 64)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !5025, file: !24, line: 315, baseType: !4743, size: 64, offset: 128)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !5025, file: !24, line: 316, baseType: !4743, size: 64, offset: 192)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !5025, file: !24, line: 317, baseType: !4852, size: 64, offset: 256)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !5025, file: !24, line: 318, baseType: !4852, size: 64, offset: 320)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !5025, file: !24, line: 319, baseType: !4852, size: 64, offset: 384)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !5025, file: !24, line: 320, baseType: !4882, size: 64, offset: 448)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !5019, file: !24, line: 448, baseType: !535, size: 64, offset: 128)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !5019, file: !24, line: 449, baseType: !5018, size: 64, offset: 192)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !5015, file: !24, line: 224, baseType: !68, size: 32, offset: 64)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !5015, file: !24, line: 226, baseType: !283, size: 128, offset: 128)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !5015, file: !24, line: 227, baseType: !260, size: 64, offset: 256)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !5015, file: !24, line: 228, baseType: !7, size: 32, offset: 320)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !5015, file: !24, line: 229, baseType: !7, size: 32, offset: 352)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !5015, file: !24, line: 230, baseType: !4820, size: 64, offset: 384)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !5015, file: !24, line: 231, baseType: !4820, size: 64, offset: 448)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !5015, file: !24, line: 232, baseType: !259, size: 64, offset: 512)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5007, file: !24, line: 526, baseType: !5046, size: 192, offset: 2304)
!5046 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5023, size: 192, elements: !589)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !498, file: !19, line: 1233, baseType: !5048, size: 2368, offset: 4544)
!5048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !19, line: 1184, size: 2368, elements: !5049)
!5049 = !{!5050, !5051, !5052}
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !5048, file: !19, line: 1185, baseType: !305, size: 16)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !5048, file: !19, line: 1186, baseType: !305, size: 16, offset: 16)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !5048, file: !19, line: 1187, baseType: !5053, size: 2304, offset: 64)
!5053 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5054, size: 2304, elements: !589)
!5054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !5055, line: 12, size: 768, elements: !5056)
!5055 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!5056 = !{!5057, !5065, !5066, !5067, !5068}
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !5054, file: !5055, line: 13, baseType: !5058, size: 384)
!5058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !5059, line: 17, size: 384, elements: !5060)
!5059 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!5060 = !{!5061, !5062, !5063, !5064}
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !5058, file: !5059, line: 18, baseType: !68, size: 32)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !5058, file: !5059, line: 19, baseType: !68, size: 32, offset: 32)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !5058, file: !5059, line: 20, baseType: !765, size: 192, offset: 64)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !5058, file: !5059, line: 22, baseType: !678, size: 128, align: 64, offset: 256)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !5054, file: !5055, line: 14, baseType: !1332, size: 64, offset: 384)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !5054, file: !5055, line: 15, baseType: !2600, size: 64, offset: 448)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !5054, file: !5055, line: 16, baseType: !765, size: 192, offset: 512)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !5054, file: !5055, line: 17, baseType: !420, size: 32, offset: 704)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !498, file: !19, line: 1240, baseType: !259, size: 64, offset: 6912)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !498, file: !19, line: 1243, baseType: !372, size: 32, offset: 6976)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !498, file: !19, line: 1245, baseType: !853, size: 64, offset: 7040)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !498, file: !19, line: 1246, baseType: !853, size: 64, offset: 7104)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !498, file: !19, line: 1248, baseType: !262, size: 32, offset: 7168)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !498, file: !19, line: 1249, baseType: !5075, size: 64, offset: 7232)
!5075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5076, size: 64)
!5076 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !19, line: 634, flags: DIFlagFwdDecl)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !498, file: !19, line: 1252, baseType: !1592, size: 256, offset: 7296)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !498, file: !19, line: 1253, baseType: !5079, size: 128, offset: 7552)
!5079 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !5080, line: 21, baseType: !5081)
!5080 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!5081 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5080, line: 19, size: 128, elements: !5082)
!5082 = !{!5083}
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !5081, file: !5080, line: 20, baseType: !5084, size: 128)
!5084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !429, size: 128, elements: !3097)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !498, file: !19, line: 1255, baseType: !7, size: 32, offset: 7680)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !498, file: !19, line: 1261, baseType: !700, size: 256, offset: 7744)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !498, file: !19, line: 1267, baseType: !460, size: 64, offset: 8000)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !498, file: !19, line: 1269, baseType: !440, size: 64, offset: 8064)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !498, file: !19, line: 1271, baseType: !5090, size: 448, offset: 8128)
!5090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !4835, line: 63, size: 448, elements: !5091)
!5091 = !{!5092, !5097, !5098, !5099, !5100, !5101, !5102}
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !5090, file: !4835, line: 64, baseType: !5093, size: 64)
!5093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5094, size: 64)
!5094 = !DISubroutineType(types: !5095)
!5095 = !{!260, !5096, !4833}
!5096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5090, size: 64)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !5090, file: !4835, line: 66, baseType: !5093, size: 64, offset: 64)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !5090, file: !4835, line: 69, baseType: !623, size: 64, offset: 128)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !5090, file: !4835, line: 70, baseType: !68, size: 32, offset: 192)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5090, file: !4835, line: 71, baseType: !7, size: 32, offset: 224)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5090, file: !4835, line: 74, baseType: !283, size: 128, offset: 256)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !5090, file: !4835, line: 85, baseType: !5103, size: 64, offset: 384)
!5103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !498, file: !19, line: 1274, baseType: !691, size: 64, offset: 8576)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !498, file: !19, line: 1280, baseType: !691, size: 64, offset: 8640)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !498, file: !19, line: 1283, baseType: !68, size: 32, offset: 8704)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !498, file: !19, line: 1286, baseType: !4299, size: 32, offset: 8736)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !498, file: !19, line: 1289, baseType: !1294, size: 64, offset: 8768)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !498, file: !19, line: 1290, baseType: !752, size: 64, offset: 8832)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !498, file: !19, line: 1297, baseType: !979, size: 64, offset: 8896)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !498, file: !19, line: 1304, baseType: !5112, size: 64, offset: 8960)
!5112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !5113, line: 49, size: 64, elements: !5114)
!5113 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!5114 = !{!5115}
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5112, file: !5113, line: 50, baseType: !5116, size: 64)
!5116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5117, size: 64)
!5117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !5113, line: 41, size: 512, align: 512, elements: !5118)
!5118 = !{!5119, !5120, !5125}
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5117, file: !5113, line: 43, baseType: !400, size: 32)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !5117, file: !5113, line: 45, baseType: !5121, size: 192, offset: 64)
!5121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !5113, line: 29, size: 192, elements: !5122)
!5122 = !{!5123, !5124}
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5121, file: !5113, line: 30, baseType: !283, size: 128)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !5121, file: !5113, line: 32, baseType: !623, size: 64, offset: 128)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !5117, file: !5113, line: 46, baseType: !623, size: 64, offset: 256)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !498, file: !19, line: 1305, baseType: !5112, size: 64, offset: 9024)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !498, file: !19, line: 1306, baseType: !678, size: 128, align: 64, offset: 9088)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !498, file: !19, line: 1307, baseType: !1271, size: 256, offset: 9216)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !498, file: !19, line: 1309, baseType: !700, size: 256, offset: 9472)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !498, file: !19, line: 1314, baseType: !68, size: 32, offset: 9728)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !498, file: !19, line: 1317, baseType: !400, size: 32, align: 512, offset: 10240)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !498, file: !19, line: 1318, baseType: !283, size: 128, offset: 10304)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !498, file: !19, line: 1320, baseType: !400, size: 32, offset: 10432)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !498, file: !19, line: 1321, baseType: !283, size: 128, offset: 10496)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !492, file: !493, line: 73, baseType: !68, size: 32, offset: 128)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !492, file: !493, line: 74, baseType: !5137, size: 64, offset: 192)
!5137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5138, size: 64)
!5138 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !804, line: 42, flags: DIFlagFwdDecl)
!5139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !442, file: !340, line: 141, baseType: !5141, size: 64, offset: 704)
!5141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5142, size: 64)
!5142 = !DISubroutineType(types: !5143)
!5143 = !{!68, !4895, !896}
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !442, file: !340, line: 142, baseType: !5145, size: 64, offset: 768)
!5145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5146, size: 64)
!5146 = !DISubroutineType(types: !5147)
!5147 = !{!338, !338, !5148}
!5148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5149, size: 64)
!5149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !301)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !339, file: !340, line: 96, baseType: !497, size: 64, offset: 832)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !339, file: !340, line: 97, baseType: !260, size: 64, offset: 896)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !339, file: !340, line: 98, baseType: !259, size: 64, offset: 960)
!5153 = !DIDerivedType(tag: DW_TAG_member, scope: !339, file: !340, line: 100, baseType: !5154, size: 128, offset: 1024)
!5154 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !339, file: !340, line: 100, size: 128, elements: !5155)
!5155 = !{!5156, !5157}
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !5154, file: !340, line: 101, baseType: !283, size: 128)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !5154, file: !340, line: 102, baseType: !4051, size: 64)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !339, file: !340, line: 104, baseType: !283, size: 128, offset: 1152)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !339, file: !340, line: 105, baseType: !283, size: 128, offset: 1280)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !339, file: !340, line: 113, baseType: !5161, size: 128, offset: 1408)
!5161 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !339, file: !340, line: 109, size: 128, elements: !5162)
!5162 = !{!5163, !5164, !5165}
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !5161, file: !340, line: 110, baseType: !756, size: 128)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !5161, file: !340, line: 111, baseType: !354, size: 128)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !5161, file: !340, line: 112, baseType: !678, size: 128, align: 64)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !332, file: !19, line: 1968, baseType: !5167, size: 64, offset: 64)
!5167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5168, size: 64)
!5168 = !DISubroutineType(types: !5169)
!5169 = !{!460, !338, !300, !5170}
!5170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5171, size: 64)
!5171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !5172, line: 10, size: 128, elements: !5173)
!5172 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!5173 = !{!5174, !5175}
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !5171, file: !5172, line: 11, baseType: !2172, size: 64)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !5171, file: !5172, line: 12, baseType: !259, size: 64, offset: 64)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !332, file: !19, line: 1969, baseType: !5177, size: 64, offset: 128)
!5177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5178, size: 64)
!5178 = !DISubroutineType(types: !5179)
!5179 = !{!68, !5137, !300, !68}
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !332, file: !19, line: 1970, baseType: !5181, size: 64, offset: 192)
!5181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5182, size: 64)
!5182 = !DISubroutineType(types: !5183)
!5183 = !{!326, !300, !68, !896}
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !332, file: !19, line: 1972, baseType: !5185, size: 64, offset: 256)
!5185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5186, size: 64)
!5186 = !DISubroutineType(types: !5187)
!5187 = !{!68, !338, !486, !68}
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !332, file: !19, line: 1974, baseType: !5189, size: 64, offset: 320)
!5189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5190, size: 64)
!5190 = !DISubroutineType(types: !5191)
!5191 = !{!68, !5137, !300, !338, !304, !896}
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !332, file: !19, line: 1976, baseType: !5193, size: 64, offset: 384)
!5193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5194, size: 64)
!5194 = !DISubroutineType(types: !5195)
!5195 = !{!68, !338, !300, !338}
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !332, file: !19, line: 1977, baseType: !5197, size: 64, offset: 448)
!5197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5198, size: 64)
!5198 = !DISubroutineType(types: !5199)
!5199 = !{!68, !300, !338}
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !332, file: !19, line: 1978, baseType: !5201, size: 64, offset: 512)
!5201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5202, size: 64)
!5202 = !DISubroutineType(types: !5203)
!5203 = !{!68, !5137, !300, !338, !460}
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !332, file: !19, line: 1980, baseType: !5205, size: 64, offset: 576)
!5205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5206, size: 64)
!5206 = !DISubroutineType(types: !5207)
!5207 = !{!68, !5137, !300, !338, !304}
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !332, file: !19, line: 1982, baseType: !5197, size: 64, offset: 640)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !332, file: !19, line: 1983, baseType: !5210, size: 64, offset: 704)
!5210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5211, size: 64)
!5211 = !DISubroutineType(types: !5212)
!5212 = !{!68, !5137, !300, !338, !304, !502}
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !332, file: !19, line: 1985, baseType: !5214, size: 64, offset: 768)
!5214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5215, size: 64)
!5215 = !DISubroutineType(types: !5216)
!5216 = !{!68, !5137, !300, !338, !300, !338, !7}
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !332, file: !19, line: 1987, baseType: !5218, size: 64, offset: 832)
!5218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5219, size: 64)
!5219 = !DISubroutineType(types: !5220)
!5220 = !{!68, !5137, !338, !5221}
!5221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5222, size: 64)
!5222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !19, line: 226, size: 640, elements: !5223)
!5223 = !{!5224, !5225, !5226, !5236, !5245, !5246, !5251, !5252, !5253}
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !5222, file: !19, line: 227, baseType: !7, size: 32)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !5222, file: !19, line: 228, baseType: !304, size: 16, offset: 32)
!5226 = !DIDerivedType(tag: DW_TAG_member, scope: !5222, file: !19, line: 241, baseType: !5227, size: 32, offset: 64)
!5227 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5222, file: !19, line: 241, size: 32, elements: !5228)
!5228 = !{!5229, !5230}
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !5227, file: !19, line: 242, baseType: !308, size: 32)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !5227, file: !19, line: 243, baseType: !5231, size: 32)
!5231 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !5232, line: 16, baseType: !5233)
!5232 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!5233 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5232, line: 14, size: 32, elements: !5234)
!5234 = !{!5235}
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5233, file: !5232, line: 15, baseType: !313, size: 32)
!5236 = !DIDerivedType(tag: DW_TAG_member, scope: !5222, file: !19, line: 245, baseType: !5237, size: 32, offset: 96)
!5237 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5222, file: !19, line: 245, size: 32, elements: !5238)
!5238 = !{!5239, !5240}
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !5237, file: !19, line: 246, baseType: !318, size: 32)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !5237, file: !19, line: 247, baseType: !5241, size: 32)
!5241 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !5232, line: 20, baseType: !5242)
!5242 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5232, line: 18, size: 32, elements: !5243)
!5243 = !{!5244}
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5242, file: !5232, line: 19, baseType: !322, size: 32)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !5222, file: !19, line: 249, baseType: !507, size: 64, offset: 128)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !5222, file: !19, line: 250, baseType: !5247, size: 128, offset: 192)
!5247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !854, line: 13, size: 128, elements: !5248)
!5248 = !{!5249, !5250}
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5247, file: !854, line: 14, baseType: !853, size: 64)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5247, file: !854, line: 15, baseType: !623, size: 64, offset: 64)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !5222, file: !19, line: 251, baseType: !5247, size: 128, offset: 320)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !5222, file: !19, line: 252, baseType: !5247, size: 128, offset: 448)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !5222, file: !19, line: 259, baseType: !665, size: 64, offset: 576)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !332, file: !19, line: 1988, baseType: !5255, size: 64, offset: 896)
!5255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5256, size: 64)
!5256 = !DISubroutineType(types: !5257)
!5257 = !{!68, !5137, !4895, !5258, !372, !7}
!5258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5259, size: 64)
!5259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !5260, line: 22, size: 1280, elements: !5261)
!5260 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!5261 = !{!5262, !5263, !5264, !5265, !5266, !5267, !5268, !5269, !5270, !5271, !5272, !5273, !5274, !5275, !5276, !5277, !5278, !5279, !5280, !5281, !5282}
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !5259, file: !5260, line: 23, baseType: !372, size: 32)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5259, file: !5260, line: 24, baseType: !304, size: 16, offset: 32)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !5259, file: !5260, line: 25, baseType: !7, size: 32, offset: 64)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !5259, file: !5260, line: 26, baseType: !861, size: 32, offset: 96)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !5259, file: !5260, line: 27, baseType: !376, size: 64, offset: 128)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !5259, file: !5260, line: 28, baseType: !376, size: 64, offset: 192)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !5259, file: !5260, line: 41, baseType: !376, size: 64, offset: 256)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5259, file: !5260, line: 42, baseType: !502, size: 32, offset: 320)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !5259, file: !5260, line: 43, baseType: !502, size: 32, offset: 352)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !5259, file: !5260, line: 44, baseType: !308, size: 32, offset: 384)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !5259, file: !5260, line: 45, baseType: !318, size: 32, offset: 416)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5259, file: !5260, line: 46, baseType: !507, size: 64, offset: 448)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !5259, file: !5260, line: 47, baseType: !5247, size: 128, offset: 512)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !5259, file: !5260, line: 48, baseType: !5247, size: 128, offset: 640)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !5259, file: !5260, line: 49, baseType: !5247, size: 128, offset: 768)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !5259, file: !5260, line: 50, baseType: !5247, size: 128, offset: 896)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !5259, file: !5260, line: 51, baseType: !376, size: 64, offset: 1024)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !5259, file: !5260, line: 52, baseType: !376, size: 64, offset: 1088)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !5259, file: !5260, line: 53, baseType: !372, size: 32, offset: 1152)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !5259, file: !5260, line: 54, baseType: !372, size: 32, offset: 1184)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !5259, file: !5260, line: 55, baseType: !376, size: 64, offset: 1216)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !332, file: !19, line: 1990, baseType: !5284, size: 64, offset: 960)
!5284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5285, size: 64)
!5285 = !DISubroutineType(types: !5286)
!5286 = !{!620, !338, !486, !633}
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !332, file: !19, line: 1991, baseType: !5288, size: 64, offset: 1024)
!5288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5289, size: 64)
!5289 = !DISubroutineType(types: !5290)
!5290 = !{!68, !300, !5291, !376, !376}
!5291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5292, size: 64)
!5292 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !19, line: 55, flags: DIFlagFwdDecl)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !332, file: !19, line: 1993, baseType: !5294, size: 64, offset: 1088)
!5294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5295, size: 64)
!5295 = !DISubroutineType(types: !5296)
!5296 = !{!68, !300, !68}
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !332, file: !19, line: 1994, baseType: !5298, size: 64, offset: 1152)
!5298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5299, size: 64)
!5299 = !DISubroutineType(types: !5300)
!5300 = !{!68, !300, !338, !665, !7, !304}
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !332, file: !19, line: 1997, baseType: !5302, size: 64, offset: 1216)
!5302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5303, size: 64)
!5303 = !DISubroutineType(types: !5304)
!5304 = !{!68, !5137, !300, !665, !304}
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !332, file: !19, line: 1999, baseType: !5306, size: 64, offset: 1280)
!5306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5307, size: 64)
!5307 = !DISubroutineType(types: !5308)
!5308 = !{!326, !5137, !338, !68}
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !332, file: !19, line: 2001, baseType: !5310, size: 64, offset: 1344)
!5310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5311, size: 64)
!5311 = !DISubroutineType(types: !5312)
!5312 = !{!68, !5137, !338, !326, !68}
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !332, file: !19, line: 2003, baseType: !5314, size: 64, offset: 1408)
!5314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5315, size: 64)
!5315 = !DISubroutineType(types: !5316)
!5316 = !{!68, !5137, !338, !5317}
!5317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5318, size: 64)
!5318 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !19, line: 76, flags: DIFlagFwdDecl)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !332, file: !19, line: 2005, baseType: !5320, size: 64, offset: 1472)
!5320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5321, size: 64)
!5321 = !DISubroutineType(types: !5322)
!5322 = !{!68, !338, !5317}
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !332, file: !19, line: 2006, baseType: !5324, size: 64, offset: 1536)
!5324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5325, size: 64)
!5325 = !DISubroutineType(types: !5326)
!5326 = !{!5327, !300}
!5327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5328, size: 64)
!5328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !19, line: 3192, size: 192, elements: !5329)
!5329 = !{!5330, !5331}
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !5328, file: !19, line: 3193, baseType: !1186, size: 128)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !5328, file: !19, line: 3194, baseType: !372, size: 32, offset: 128)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !301, file: !19, line: 655, baseType: !497, size: 64, offset: 448)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !301, file: !19, line: 656, baseType: !296, size: 64, offset: 512)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !301, file: !19, line: 659, baseType: !259, size: 64, offset: 576)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !301, file: !19, line: 663, baseType: !260, size: 64, offset: 640)
!5336 = !DIDerivedType(tag: DW_TAG_member, scope: !301, file: !19, line: 671, baseType: !5337, size: 32, offset: 704)
!5337 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !301, file: !19, line: 671, size: 32, elements: !5338)
!5338 = !{!5339, !5341}
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !5337, file: !19, line: 672, baseType: !5340, size: 32)
!5340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !5337, file: !19, line: 673, baseType: !7, size: 32)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !301, file: !19, line: 675, baseType: !502, size: 32, offset: 736)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !301, file: !19, line: 676, baseType: !507, size: 64, offset: 768)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !301, file: !19, line: 677, baseType: !5247, size: 128, offset: 832)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !301, file: !19, line: 678, baseType: !5247, size: 128, offset: 960)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !301, file: !19, line: 679, baseType: !5247, size: 128, offset: 1088)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !301, file: !19, line: 680, baseType: !400, size: 32, offset: 1216)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !301, file: !19, line: 681, baseType: !305, size: 16, offset: 1248)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !301, file: !19, line: 682, baseType: !428, size: 8, offset: 1264)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !301, file: !19, line: 683, baseType: !428, size: 8, offset: 1272)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !301, file: !19, line: 684, baseType: !4968, size: 64, offset: 1280)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !301, file: !19, line: 691, baseType: !260, size: 64, offset: 1344)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !301, file: !19, line: 692, baseType: !837, size: 320, offset: 1408)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !301, file: !19, line: 694, baseType: !260, size: 64, offset: 1728)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !301, file: !19, line: 695, baseType: !260, size: 64, offset: 1792)
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !301, file: !19, line: 697, baseType: !756, size: 128, offset: 1856)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !301, file: !19, line: 698, baseType: !283, size: 128, offset: 1984)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !301, file: !19, line: 707, baseType: !283, size: 128, offset: 2112)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !301, file: !19, line: 708, baseType: !283, size: 128, offset: 2240)
!5360 = !DIDerivedType(tag: DW_TAG_member, scope: !301, file: !19, line: 709, baseType: !5361, size: 128, offset: 2368)
!5361 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !301, file: !19, line: 709, size: 128, elements: !5362)
!5362 = !{!5363, !5364}
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !5361, file: !19, line: 710, baseType: !752, size: 64)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !5361, file: !19, line: 711, baseType: !678, size: 128, align: 64)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !301, file: !19, line: 713, baseType: !693, size: 64, offset: 2496)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !301, file: !19, line: 714, baseType: !693, size: 64, offset: 2560)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !301, file: !19, line: 715, baseType: !420, size: 32, offset: 2624)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !301, file: !19, line: 716, baseType: !420, size: 32, offset: 2656)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !301, file: !19, line: 717, baseType: !420, size: 32, offset: 2688)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !301, file: !19, line: 719, baseType: !420, size: 32, offset: 2720)
!5371 = !DIDerivedType(tag: DW_TAG_member, scope: !301, file: !19, line: 721, baseType: !5372, size: 64, offset: 2752)
!5372 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !301, file: !19, line: 721, size: 64, elements: !5373)
!5373 = !{!5374, !5375}
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !5372, file: !19, line: 722, baseType: !1015, size: 64)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !5372, file: !19, line: 723, baseType: !4704, size: 64)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !301, file: !19, line: 725, baseType: !5377, size: 64, offset: 2816)
!5377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5378, size: 64)
!5378 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !19, line: 725, flags: DIFlagFwdDecl)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !301, file: !19, line: 726, baseType: !297, size: 1536, align: 64, offset: 2880)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !301, file: !19, line: 727, baseType: !283, size: 128, offset: 4416)
!5381 = !DIDerivedType(tag: DW_TAG_member, scope: !301, file: !19, line: 728, baseType: !5382, size: 64, offset: 4544)
!5382 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !301, file: !19, line: 728, size: 64, elements: !5383)
!5383 = !{!5384, !5385, !5388, !5389}
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !5382, file: !19, line: 729, baseType: !3535, size: 64)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !5382, file: !19, line: 730, baseType: !5386, size: 64)
!5386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5387, size: 64)
!5387 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !19, line: 730, flags: DIFlagFwdDecl)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !5382, file: !19, line: 731, baseType: !486, size: 64)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !5382, file: !19, line: 732, baseType: !7, size: 32)
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !301, file: !19, line: 735, baseType: !262, size: 32, offset: 4608)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !301, file: !19, line: 738, baseType: !262, size: 32, offset: 4640)
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !301, file: !19, line: 739, baseType: !5075, size: 64, offset: 4672)
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !301, file: !19, line: 750, baseType: !259, size: 64, offset: 4736)
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !297, file: !19, line: 474, baseType: !1186, size: 128, offset: 64)
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !297, file: !19, line: 475, baseType: !837, size: 320, offset: 192)
!5396 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !297, file: !19, line: 476, baseType: !257, size: 32, offset: 512)
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !297, file: !19, line: 477, baseType: !420, size: 32, offset: 544)
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !297, file: !19, line: 482, baseType: !1905, size: 128, offset: 576)
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !297, file: !19, line: 483, baseType: !260, size: 64, offset: 704)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !297, file: !19, line: 484, baseType: !260, size: 64, offset: 768)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !297, file: !19, line: 485, baseType: !5402, size: 64, offset: 832)
!5402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5403, size: 64)
!5403 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5404)
!5404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !19, line: 404, size: 1280, elements: !5405)
!5405 = !{!5406, !5410, !5414, !5418, !5422, !5438, !5442, !5446, !5450, !5454, !5458, !5462, !5463, !5467, !5471, !5475, !5480, !5484, !5490, !5491}
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !5404, file: !19, line: 405, baseType: !5407, size: 64)
!5407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5408, size: 64)
!5408 = !DISubroutineType(types: !5409)
!5409 = !{!68, !269, !4716}
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !5404, file: !19, line: 406, baseType: !5411, size: 64, offset: 64)
!5411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5412, size: 64)
!5412 = !DISubroutineType(types: !5413)
!5413 = !{!68, !665, !1058}
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !5404, file: !19, line: 409, baseType: !5415, size: 64, offset: 128)
!5415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5416, size: 64)
!5416 = !DISubroutineType(types: !5417)
!5417 = !{!68, !296, !4716}
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !5404, file: !19, line: 412, baseType: !5419, size: 64, offset: 192)
!5419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5420, size: 64)
!5420 = !DISubroutineType(types: !5421)
!5421 = !{!896, !296, !1058}
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !5404, file: !19, line: 414, baseType: !5423, size: 64, offset: 256)
!5423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5424, size: 64)
!5424 = !DISubroutineType(types: !5425)
!5425 = !{null, !5426}
!5426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5427, size: 64)
!5427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !1055, line: 1276, size: 448, elements: !5428)
!5428 = !{!5429, !5430, !5431, !5433, !5434, !5435, !5436, !5437}
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !5427, file: !1055, line: 1277, baseType: !665, size: 64)
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !5427, file: !1055, line: 1278, baseType: !296, size: 64, offset: 64)
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !5427, file: !1055, line: 1279, baseType: !5432, size: 64, offset: 128)
!5432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !5427, file: !1055, line: 1281, baseType: !260, size: 64, offset: 192)
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !5427, file: !1055, line: 1282, baseType: !7, size: 32, offset: 256)
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !5427, file: !1055, line: 1283, baseType: !7, size: 32, offset: 288)
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !5427, file: !1055, line: 1284, baseType: !896, size: 8, offset: 320)
!5437 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !5427, file: !1055, line: 1285, baseType: !260, size: 64, offset: 384)
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !5404, file: !19, line: 416, baseType: !5439, size: 64, offset: 320)
!5439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5440, size: 64)
!5440 = !DISubroutineType(types: !5441)
!5441 = !{!68, !665, !296, !507, !7, !3642, !2274}
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !5404, file: !19, line: 419, baseType: !5443, size: 64, offset: 384)
!5443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5444, size: 64)
!5444 = !DISubroutineType(types: !5445)
!5445 = !{!68, !665, !296, !507, !7, !7, !269, !259}
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !5404, file: !19, line: 424, baseType: !5447, size: 64, offset: 448)
!5447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5448, size: 64)
!5448 = !DISubroutineType(types: !5449)
!5449 = !{!1601, !296, !1601}
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !5404, file: !19, line: 425, baseType: !5451, size: 64, offset: 512)
!5451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5452, size: 64)
!5452 = !DISubroutineType(types: !5453)
!5453 = !{null, !1058, !633, !633}
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !5404, file: !19, line: 426, baseType: !5455, size: 64, offset: 576)
!5455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5456, size: 64)
!5456 = !DISubroutineType(types: !5457)
!5457 = !{!896, !1058, !257}
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !5404, file: !19, line: 427, baseType: !5459, size: 64, offset: 640)
!5459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5460, size: 64)
!5460 = !DISubroutineType(types: !5461)
!5461 = !{null, !1058}
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !5404, file: !19, line: 428, baseType: !1034, size: 64, offset: 704)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !5404, file: !19, line: 433, baseType: !5464, size: 64, offset: 768)
!5464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5465, size: 64)
!5465 = !DISubroutineType(types: !5466)
!5466 = !{!68, !296, !1058, !1058, !151}
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !5404, file: !19, line: 435, baseType: !5468, size: 64, offset: 832)
!5468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5469, size: 64)
!5469 = !DISubroutineType(types: !5470)
!5470 = !{!68, !1058}
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !5404, file: !19, line: 436, baseType: !5472, size: 64, offset: 896)
!5472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5473, size: 64)
!5473 = !DISubroutineType(types: !5474)
!5474 = !{!896, !1058, !633, !633}
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !5404, file: !19, line: 438, baseType: !5476, size: 64, offset: 960)
!5476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5477, size: 64)
!5477 = !DISubroutineType(types: !5478)
!5478 = !{null, !1058, !5479, !5479}
!5479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !5404, file: !19, line: 439, baseType: !5481, size: 64, offset: 1024)
!5481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5482, size: 64)
!5482 = !DISubroutineType(types: !5483)
!5483 = !{!68, !296, !269}
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !5404, file: !19, line: 442, baseType: !5485, size: 64, offset: 1088)
!5485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5486, size: 64)
!5486 = !DISubroutineType(types: !5487)
!5487 = !{!68, !5488, !665, !2388}
!5488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5489, size: 64)
!5489 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !19, line: 66, flags: DIFlagFwdDecl)
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !5404, file: !19, line: 444, baseType: !4257, size: 64, offset: 1152)
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !5404, file: !19, line: 445, baseType: !5492, size: 64, offset: 1216)
!5492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5493, size: 64)
!5493 = !DISubroutineType(types: !5494)
!5494 = !{!68, !1037, !1142}
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !297, file: !19, line: 486, baseType: !260, size: 64, offset: 896)
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !297, file: !19, line: 487, baseType: !837, size: 320, offset: 960)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !297, file: !19, line: 488, baseType: !4299, size: 32, offset: 1280)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !297, file: !19, line: 489, baseType: !400, size: 32, offset: 1312)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !297, file: !19, line: 490, baseType: !283, size: 128, offset: 1344)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !297, file: !19, line: 491, baseType: !259, size: 64, offset: 1472)
!5501 = !DIDerivedType(tag: DW_TAG_member, scope: !277, file: !123, line: 107, baseType: !5502, size: 64, offset: 192)
!5502 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !277, file: !123, line: 107, size: 64, elements: !5503)
!5503 = !{!5504, !5505}
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5502, file: !123, line: 108, baseType: !260, size: 64)
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !5502, file: !123, line: 109, baseType: !260, size: 64)
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !277, file: !123, line: 117, baseType: !260, size: 64, offset: 256)
!5507 = !DIDerivedType(tag: DW_TAG_member, scope: !274, file: !123, line: 119, baseType: !5508, size: 320)
!5508 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !274, file: !123, line: 119, size: 320, elements: !5509)
!5509 = !{!5510, !5511, !5514, !5515, !5516}
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !5508, file: !123, line: 124, baseType: !260, size: 64)
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !5508, file: !123, line: 125, baseType: !5512, size: 64, offset: 64)
!5512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5513, size: 64)
!5513 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !123, line: 125, flags: DIFlagFwdDecl)
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !5508, file: !123, line: 126, baseType: !260, size: 64, offset: 128)
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !5508, file: !123, line: 127, baseType: !260, size: 64, offset: 192)
!5516 = !DIDerivedType(tag: DW_TAG_member, scope: !5508, file: !123, line: 128, baseType: !5517, size: 64, offset: 256)
!5517 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5508, file: !123, line: 128, size: 64, elements: !5518)
!5518 = !{!5519, !5520}
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !5517, file: !123, line: 133, baseType: !260, size: 64)
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !5517, file: !123, line: 138, baseType: !691, size: 64)
!5521 = !DIDerivedType(tag: DW_TAG_member, scope: !274, file: !123, line: 141, baseType: !5522, size: 64)
!5522 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !274, file: !123, line: 141, size: 64, elements: !5523)
!5523 = !{!5524}
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !5522, file: !123, line: 142, baseType: !260, size: 64)
!5525 = !DIDerivedType(tag: DW_TAG_member, scope: !274, file: !123, line: 144, baseType: !5526, size: 128)
!5526 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !274, file: !123, line: 144, size: 128, elements: !5527)
!5527 = !{!5528, !5579}
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !5526, file: !123, line: 146, baseType: !5529, size: 64)
!5529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5530, size: 64)
!5530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !115, line: 126, size: 1216, elements: !5531)
!5531 = !{!5532, !5542, !5543, !5544, !5545, !5546, !5547, !5561, !5562, !5563}
!5532 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !5530, file: !115, line: 127, baseType: !5533, size: 384)
!5533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !115, line: 21, size: 384, elements: !5534)
!5534 = !{!5535, !5536, !5538, !5539, !5540, !5541}
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !5533, file: !115, line: 22, baseType: !260, size: 64)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !5533, file: !115, line: 23, baseType: !5537, size: 64, offset: 64)
!5537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !260)
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !5533, file: !115, line: 24, baseType: !5537, size: 64, offset: 128)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !5533, file: !115, line: 25, baseType: !260, size: 64, offset: 192)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !5533, file: !115, line: 26, baseType: !260, size: 64, offset: 256)
!5541 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !5533, file: !115, line: 27, baseType: !260, size: 64, offset: 320)
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !5530, file: !115, line: 128, baseType: !1220, size: 128, offset: 384)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !5530, file: !115, line: 129, baseType: !1540, size: 256, offset: 512)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5530, file: !115, line: 130, baseType: !114, size: 32, offset: 768)
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5530, file: !115, line: 131, baseType: !7, size: 32, offset: 800)
!5546 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !5530, file: !115, line: 132, baseType: !260, size: 64, offset: 832)
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5530, file: !115, line: 133, baseType: !5548, size: 64, offset: 896)
!5548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5549, size: 64)
!5549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5550)
!5550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !115, line: 77, size: 192, elements: !5551)
!5551 = !{!5552, !5556, !5557}
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !5550, file: !115, line: 83, baseType: !5553, size: 64)
!5553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5554, size: 64)
!5554 = !DISubroutineType(types: !5555)
!5555 = !{null, !269}
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !5550, file: !115, line: 89, baseType: !4128, size: 64, offset: 64)
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !5550, file: !115, line: 100, baseType: !5558, size: 64, offset: 128)
!5558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5559, size: 64)
!5559 = !DISubroutineType(types: !5560)
!5560 = !{!68, !5529, !260, !260, !68}
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5530, file: !115, line: 134, baseType: !259, size: 64, offset: 960)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !5530, file: !115, line: 135, baseType: !68, size: 32, offset: 1024)
!5563 = !DIDerivedType(tag: DW_TAG_member, scope: !5530, file: !115, line: 136, baseType: !5564, size: 128, offset: 1088)
!5564 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5530, file: !115, line: 136, size: 128, elements: !5565)
!5565 = !{!5566, !5572}
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !5564, file: !115, line: 137, baseType: !5567, size: 128)
!5567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !5568, line: 6, size: 128, elements: !5569)
!5568 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!5569 = !{!5570, !5571}
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5567, file: !5568, line: 7, baseType: !376, size: 64)
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5567, file: !5568, line: 8, baseType: !376, size: 64, offset: 64)
!5572 = !DIDerivedType(tag: DW_TAG_member, scope: !5564, file: !115, line: 138, baseType: !5573)
!5573 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5564, file: !115, line: 138, elements: !5574)
!5574 = !{!5575, !5577}
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !5573, file: !115, line: 138, baseType: !5576)
!5576 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5573, file: !115, line: 138, elements: !1516)
!5577 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !5573, file: !115, line: 138, baseType: !5578)
!5578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5567, elements: !780)
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !5526, file: !123, line: 147, baseType: !259, size: 64, offset: 64)
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !274, file: !123, line: 161, baseType: !678, size: 128, align: 64)
!5581 = !DIDerivedType(tag: DW_TAG_member, scope: !270, file: !123, line: 164, baseType: !5582, size: 32, offset: 384)
!5582 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !270, file: !123, line: 164, size: 32, elements: !5583)
!5583 = !{!5584, !5585}
!5584 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !5582, file: !123, line: 169, baseType: !420, size: 32)
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !5582, file: !123, line: 177, baseType: !7, size: 32)
!5586 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !270, file: !123, line: 181, baseType: !420, size: 32, offset: 416)
!5587 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !265, file: !266, line: 33, baseType: !7, size: 32, offset: 64)
!5588 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !265, file: !266, line: 34, baseType: !7, size: 32, offset: 96)
!5589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5590, size: 64)
!5590 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !68)
!5591 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !258, line: 113, baseType: !376)
!5592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5593, size: 64)
!5593 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !462)
!5594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5595, size: 64)
!5595 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !623)
!5596 = !{!5597, !5599, !5601, !5603, !0, !5606, !5611, !5635, !5640, !5642, !5647, !5654, !5659}
!5597 = !DIGlobalVariableExpression(var: !5598, expr: !DIExpression())
!5598 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_dm_io_client_create524", scope: !2, file: !3, line: 74, type: !259, isLocal: true, isDefinition: true)
!5599 = !DIGlobalVariableExpression(var: !5600, expr: !DIExpression())
!5600 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_dm_io_client_destroy525", scope: !2, file: !3, line: 82, type: !259, isLocal: true, isDefinition: true)
!5601 = !DIGlobalVariableExpression(var: !5602, expr: !DIExpression())
!5602 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_dm_io534", scope: !2, file: !3, line: 544, type: !259, isLocal: true, isDefinition: true)
!5603 = !DIGlobalVariableExpression(var: !5604, expr: !DIExpression())
!5604 = distinct !DIGlobalVariable(scope: null, file: !3, line: 548, type: !5605, isLocal: true, isDefinition: true)
!5605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !462, size: 24, elements: !589)
!5606 = !DIGlobalVariableExpression(var: !5607, expr: !DIExpression())
!5607 = distinct !DIGlobalVariable(scope: null, file: !206, line: 480, type: !5608, isLocal: true, isDefinition: true)
!5608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !462, size: 168, elements: !5609)
!5609 = !{!5610}
!5610 = !DISubrange(count: 21)
!5611 = !DIGlobalVariableExpression(var: !5612, expr: !DIExpression())
!5612 = distinct !DIGlobalVariable(name: "__already_done", scope: !5613, file: !266, line: 145, type: !896, isLocal: true, isDefinition: true)
!5613 = distinct !DISubprogram(name: "bvec_iter_advance", scope: !266, file: !266, line: 140, type: !5614, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5617)
!5614 = !DISubroutineType(types: !5615)
!5615 = !{!896, !1182, !5616, !7}
!5616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!5617 = !{!5618, !5619, !5620, !5621, !5622, !5625, !5628, !5629, !5631}
!5618 = !DILocalVariable(name: "bv", arg: 1, scope: !5613, file: !266, line: 140, type: !1182)
!5619 = !DILocalVariable(name: "iter", arg: 2, scope: !5613, file: !266, line: 141, type: !5616)
!5620 = !DILocalVariable(name: "bytes", arg: 3, scope: !5613, file: !266, line: 141, type: !7)
!5621 = !DILocalVariable(name: "idx", scope: !5613, file: !266, line: 143, type: !7)
!5622 = !DILocalVariable(name: "__ret_do_once", scope: !5623, file: !266, line: 145, type: !896)
!5623 = distinct !DILexicalBlock(scope: !5624, file: !266, line: 145, column: 6)
!5624 = distinct !DILexicalBlock(scope: !5613, file: !266, line: 145, column: 6)
!5625 = !DILocalVariable(name: "__ret_cond", scope: !5626, file: !266, line: 145, type: !896)
!5626 = distinct !DILexicalBlock(scope: !5627, file: !266, line: 145, column: 6)
!5627 = distinct !DILexicalBlock(scope: !5623, file: !266, line: 145, column: 6)
!5628 = !DILocalVariable(name: "__ret_once", scope: !5626, file: !266, line: 145, type: !896)
!5629 = !DILocalVariable(name: "__ret_warn_on", scope: !5630, file: !266, line: 145, type: !68)
!5630 = distinct !DILexicalBlock(scope: !5627, file: !266, line: 145, column: 6)
!5631 = !DILocalVariable(name: "__flags", scope: !5632, file: !266, line: 145, type: !68)
!5632 = distinct !DILexicalBlock(scope: !5633, file: !266, line: 145, column: 6)
!5633 = distinct !DILexicalBlock(scope: !5634, file: !266, line: 145, column: 6)
!5634 = distinct !DILexicalBlock(scope: !5630, file: !266, line: 145, column: 6)
!5635 = !DIGlobalVariableExpression(var: !5636, expr: !DIExpression())
!5636 = distinct !DIGlobalVariable(scope: null, file: !266, line: 145, type: !5637, isLocal: true, isDefinition: true)
!5637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !462, size: 352, elements: !5638)
!5638 = !{!5639}
!5639 = !DISubrange(count: 44)
!5640 = !DIGlobalVariableExpression(var: !5641, expr: !DIExpression())
!5641 = distinct !DIGlobalVariable(scope: null, file: !266, line: 145, type: !5608, isLocal: true, isDefinition: true)
!5642 = !DIGlobalVariableExpression(var: !5643, expr: !DIExpression())
!5643 = distinct !DIGlobalVariable(scope: null, file: !3, line: 435, type: !5644, isLocal: true, isDefinition: true)
!5644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !462, size: 152, elements: !5645)
!5645 = !{!5646}
!5646 = !DISubrange(count: 19)
!5647 = !DIGlobalVariableExpression(var: !5648, expr: !DIExpression())
!5648 = distinct !DIGlobalVariable(name: "__key", scope: !5649, file: !1541, line: 87, type: !4685, isLocal: true, isDefinition: true)
!5649 = distinct !DISubprogram(name: "init_completion", scope: !1541, file: !1541, line: 84, type: !5650, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5652)
!5650 = !DISubroutineType(types: !5651)
!5651 = !{null, !3053}
!5652 = !{!5653}
!5653 = !DILocalVariable(name: "x", arg: 1, scope: !5649, file: !1541, line: 84, type: !3053)
!5654 = !DIGlobalVariableExpression(var: !5655, expr: !DIExpression())
!5655 = distinct !DIGlobalVariable(scope: null, file: !1541, line: 87, type: !5656, isLocal: true, isDefinition: true)
!5656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !462, size: 72, elements: !5657)
!5657 = !{!5658}
!5658 = !DISubrange(count: 9)
!5659 = !DIGlobalVariableExpression(var: !5660, expr: !DIExpression())
!5660 = distinct !DIGlobalVariable(scope: null, file: !3, line: 97, type: !5661, isLocal: true, isDefinition: true)
!5661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !462, size: 424, elements: !5662)
!5662 = !{!5663}
!5663 = !DISubrange(count: 53)
!5664 = !{i32 7, !"Dwarf Version", i32 5}
!5665 = !{i32 2, !"Debug Info Version", i32 3}
!5666 = !{i32 1, !"wchar_size", i32 2}
!5667 = !{i32 8, !"cf-protection-branch", i32 1}
!5668 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5669 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5670 = !{i32 1, !"Code Model", i32 2}
!5671 = !{i32 1, !"override-stack-alignment", i32 8}
!5672 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5673 = distinct !DISubprogram(name: "dm_io_client_create", scope: !3, file: !3, line: 49, type: !5674, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5681)
!5674 = !DISubroutineType(types: !5675)
!5675 = !{!5676}
!5676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5677, size: 64)
!5677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dm_io_client", file: !3, line: 25, size: 2560, elements: !5678)
!5678 = !{!5679, !5680}
!5679 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !5677, file: !3, line: 26, baseType: !2266, size: 576)
!5680 = !DIDerivedType(tag: DW_TAG_member, name: "bios", scope: !5677, file: !3, line: 27, baseType: !2255, size: 1984, offset: 576)
!5681 = !{!5682, !5683, !5684, !5685}
!5682 = !DILocalVariable(name: "client", scope: !5673, file: !3, line: 51, type: !5676)
!5683 = !DILocalVariable(name: "min_ios", scope: !5673, file: !3, line: 52, type: !7)
!5684 = !DILocalVariable(name: "ret", scope: !5673, file: !3, line: 53, type: !68)
!5685 = !DILabel(scope: !5673, name: "bad", file: !3, line: 69)
!5686 = !DILocation(line: 51, column: 2, scope: !5673)
!5687 = !DILocation(line: 51, column: 23, scope: !5673)
!5688 = !DILocation(line: 52, column: 2, scope: !5673)
!5689 = !DILocation(line: 52, column: 15, scope: !5673)
!5690 = !DILocation(line: 52, column: 25, scope: !5673)
!5691 = !DILocation(line: 53, column: 2, scope: !5673)
!5692 = !DILocation(line: 53, column: 6, scope: !5673)
!5693 = !DILocation(line: 55, column: 11, scope: !5673)
!5694 = !DILocation(line: 55, column: 9, scope: !5673)
!5695 = !DILocation(line: 56, column: 7, scope: !5696)
!5696 = distinct !DILexicalBlock(scope: !5673, file: !3, line: 56, column: 6)
!5697 = !DILocation(line: 56, column: 6, scope: !5673)
!5698 = !DILocation(line: 57, column: 10, scope: !5696)
!5699 = !DILocation(line: 57, column: 3, scope: !5696)
!5700 = !DILocation(line: 59, column: 32, scope: !5673)
!5701 = !DILocation(line: 59, column: 40, scope: !5673)
!5702 = !DILocation(line: 59, column: 46, scope: !5673)
!5703 = !DILocation(line: 59, column: 55, scope: !5673)
!5704 = !DILocation(line: 59, column: 8, scope: !5673)
!5705 = !DILocation(line: 59, column: 6, scope: !5673)
!5706 = !DILocation(line: 60, column: 6, scope: !5707)
!5707 = distinct !DILexicalBlock(scope: !5673, file: !3, line: 60, column: 6)
!5708 = !DILocation(line: 60, column: 6, scope: !5673)
!5709 = !DILocation(line: 61, column: 3, scope: !5707)
!5710 = !DILocation(line: 63, column: 21, scope: !5673)
!5711 = !DILocation(line: 63, column: 29, scope: !5673)
!5712 = !DILocation(line: 63, column: 35, scope: !5673)
!5713 = !DILocation(line: 63, column: 8, scope: !5673)
!5714 = !DILocation(line: 63, column: 6, scope: !5673)
!5715 = !DILocation(line: 64, column: 6, scope: !5716)
!5716 = distinct !DILexicalBlock(scope: !5673, file: !3, line: 64, column: 6)
!5717 = !DILocation(line: 64, column: 6, scope: !5673)
!5718 = !DILocation(line: 65, column: 3, scope: !5716)
!5719 = !DILocation(line: 67, column: 9, scope: !5673)
!5720 = !DILocation(line: 67, column: 2, scope: !5673)
!5721 = !DILocation(line: 69, column: 1, scope: !5673)
!5722 = !DILocation(line: 70, column: 16, scope: !5673)
!5723 = !DILocation(line: 70, column: 24, scope: !5673)
!5724 = !DILocation(line: 70, column: 2, scope: !5673)
!5725 = !DILocation(line: 71, column: 8, scope: !5673)
!5726 = !DILocation(line: 71, column: 2, scope: !5673)
!5727 = !DILocation(line: 72, column: 17, scope: !5673)
!5728 = !DILocation(line: 72, column: 9, scope: !5673)
!5729 = !DILocation(line: 72, column: 2, scope: !5673)
!5730 = !DILocation(line: 73, column: 1, scope: !5673)
!5731 = !DISubprogram(name: "dm_get_reserved_bio_based_ios", scope: !5732, file: !5732, line: 227, type: !5733, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5732 = !DIFile(filename: "drivers/md/dm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1da2c948b71a23cbe39ebfc95936b55a")
!5733 = !DISubroutineType(types: !5734)
!5734 = !{!7}
!5735 = distinct !DISubprogram(name: "kzalloc", scope: !206, file: !206, line: 719, type: !5736, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5738)
!5736 = !DISubroutineType(types: !5737)
!5737 = !{!259, !633, !257}
!5738 = !{!5739, !5740}
!5739 = !DILocalVariable(name: "size", arg: 1, scope: !5735, file: !206, line: 719, type: !633)
!5740 = !DILocalVariable(name: "flags", arg: 2, scope: !5735, file: !206, line: 719, type: !257)
!5741 = !DILocation(line: 719, column: 52, scope: !5735)
!5742 = !DILocation(line: 719, column: 64, scope: !5735)
!5743 = !DILocation(line: 721, column: 17, scope: !5735)
!5744 = !DILocation(line: 721, column: 23, scope: !5735)
!5745 = !DILocation(line: 721, column: 29, scope: !5735)
!5746 = !DILocation(line: 721, column: 9, scope: !5735)
!5747 = !DILocation(line: 721, column: 2, scope: !5735)
!5748 = distinct !DISubprogram(name: "ERR_PTR", scope: !5749, file: !5749, line: 39, type: !5750, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5752)
!5749 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!5750 = !DISubroutineType(types: !5751)
!5751 = !{!259, !623}
!5752 = !{!5753}
!5753 = !DILocalVariable(name: "error", arg: 1, scope: !5748, file: !5749, line: 39, type: !623)
!5754 = !DILocation(line: 39, column: 48, scope: !5748)
!5755 = !DILocation(line: 41, column: 18, scope: !5748)
!5756 = !DILocation(line: 41, column: 9, scope: !5748)
!5757 = !DILocation(line: 41, column: 2, scope: !5748)
!5758 = distinct !DISubprogram(name: "mempool_init_slab_pool", scope: !2267, file: !2267, line: 65, type: !5759, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5762)
!5759 = !DISubroutineType(types: !5760)
!5760 = !{!68, !5761, !68, !2258}
!5761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!5762 = !{!5763, !5764, !5765}
!5763 = !DILocalVariable(name: "pool", arg: 1, scope: !5758, file: !2267, line: 65, type: !5761)
!5764 = !DILocalVariable(name: "min_nr", arg: 2, scope: !5758, file: !2267, line: 65, type: !68)
!5765 = !DILocalVariable(name: "kc", arg: 3, scope: !5758, file: !2267, line: 65, type: !2258)
!5766 = !DILocation(line: 65, column: 35, scope: !5758)
!5767 = !DILocation(line: 65, column: 45, scope: !5758)
!5768 = !DILocation(line: 65, column: 72, scope: !5758)
!5769 = !DILocation(line: 67, column: 22, scope: !5758)
!5770 = !DILocation(line: 67, column: 28, scope: !5758)
!5771 = !DILocation(line: 68, column: 36, scope: !5758)
!5772 = !DILocation(line: 67, column: 9, scope: !5758)
!5773 = !DILocation(line: 67, column: 2, scope: !5758)
!5774 = !DISubprogram(name: "bioset_init", scope: !188, file: !188, line: 415, type: !5775, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5775 = !DISubroutineType(types: !5776)
!5776 = !{!68, !2254, !7, !7, !68}
!5777 = !DISubprogram(name: "mempool_exit", scope: !2267, file: !2267, line: 38, type: !5778, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5778 = !DISubroutineType(types: !5779)
!5779 = !{null, !5761}
!5780 = !DISubprogram(name: "kfree", scope: !206, file: !206, line: 227, type: !5781, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5781 = !DISubroutineType(types: !5782)
!5782 = !{null, !2044}
!5783 = distinct !DISubprogram(name: "dm_io_client_destroy", scope: !3, file: !3, line: 76, type: !5784, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5786)
!5784 = !DISubroutineType(types: !5785)
!5785 = !{null, !5676}
!5786 = !{!5787}
!5787 = !DILocalVariable(name: "client", arg: 1, scope: !5783, file: !3, line: 76, type: !5676)
!5788 = !DILocation(line: 76, column: 48, scope: !5783)
!5789 = !DILocation(line: 78, column: 16, scope: !5783)
!5790 = !DILocation(line: 78, column: 24, scope: !5783)
!5791 = !DILocation(line: 78, column: 2, scope: !5783)
!5792 = !DILocation(line: 79, column: 15, scope: !5783)
!5793 = !DILocation(line: 79, column: 23, scope: !5783)
!5794 = !DILocation(line: 79, column: 2, scope: !5783)
!5795 = !DILocation(line: 80, column: 8, scope: !5783)
!5796 = !DILocation(line: 80, column: 2, scope: !5783)
!5797 = !DILocation(line: 81, column: 1, scope: !5783)
!5798 = !DISubprogram(name: "bioset_exit", scope: !188, file: !188, line: 416, type: !5799, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5799 = !DISubroutineType(types: !5800)
!5800 = !{null, !2254}
!5801 = distinct !DISubprogram(name: "dm_io", scope: !3, file: !3, line: 525, type: !5802, scopeLine: 528, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5841)
!5802 = !DISubroutineType(types: !5803)
!5803 = !{!68, !5804, !7, !5835, !3915, !305}
!5804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5805, size: 64)
!5805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dm_io_request", file: !194, line: 61, size: 384, elements: !5806)
!5806 = !{!5807, !5808, !5825, !5834}
!5807 = !DIDerivedType(tag: DW_TAG_member, name: "bi_opf", scope: !5805, file: !194, line: 62, baseType: !261, size: 32)
!5808 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !5805, file: !194, line: 63, baseType: !5809, size: 128, offset: 64)
!5809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dm_io_memory", file: !194, line: 39, size: 128, elements: !5810)
!5810 = !{!5811, !5812, !5813}
!5811 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5809, file: !194, line: 40, baseType: !193, size: 32)
!5812 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5809, file: !194, line: 42, baseType: !7, size: 32, offset: 32)
!5813 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !5809, file: !194, line: 49, baseType: !5814, size: 64, offset: 64)
!5814 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5809, file: !194, line: 44, size: 64, elements: !5815)
!5815 = !{!5816, !5822, !5823, !5824}
!5816 = !DIDerivedType(tag: DW_TAG_member, name: "pl", scope: !5814, file: !194, line: 45, baseType: !5817, size: 64)
!5817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5818, size: 64)
!5818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_list", file: !194, line: 25, size: 128, elements: !5819)
!5819 = !{!5820, !5821}
!5820 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5818, file: !194, line: 26, baseType: !5817, size: 64)
!5821 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !5818, file: !194, line: 27, baseType: !269, size: 64, offset: 64)
!5822 = !DIDerivedType(tag: DW_TAG_member, name: "bio", scope: !5814, file: !194, line: 46, baseType: !2216, size: 64)
!5823 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !5814, file: !194, line: 47, baseType: !259, size: 64)
!5824 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !5814, file: !194, line: 48, baseType: !259, size: 64)
!5825 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !5805, file: !194, line: 64, baseType: !5826, size: 128, offset: 192)
!5826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dm_io_notify", file: !194, line: 52, size: 128, elements: !5827)
!5827 = !{!5828, !5833}
!5828 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !5826, file: !194, line: 53, baseType: !5829, size: 64)
!5829 = !DIDerivedType(tag: DW_TAG_typedef, name: "io_notify_fn", file: !194, line: 30, baseType: !5830)
!5830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5831, size: 64)
!5831 = !DISubroutineType(types: !5832)
!5832 = !{null, !260, !259}
!5833 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !5826, file: !194, line: 54, baseType: !259, size: 64, offset: 64)
!5834 = !DIDerivedType(tag: DW_TAG_member, name: "client", scope: !5805, file: !194, line: 65, baseType: !5676, size: 64, offset: 320)
!5835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5836, size: 64)
!5836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dm_io_region", file: !194, line: 19, size: 192, elements: !5837)
!5837 = !{!5838, !5839, !5840}
!5838 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !5836, file: !194, line: 20, baseType: !1597, size: 64)
!5839 = !DIDerivedType(tag: DW_TAG_member, name: "sector", scope: !5836, file: !194, line: 21, baseType: !1601, size: 64, offset: 64)
!5840 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5836, file: !194, line: 22, baseType: !1601, size: 64, offset: 128)
!5841 = !{!5842, !5843, !5844, !5845, !5846, !5847, !5848}
!5842 = !DILocalVariable(name: "io_req", arg: 1, scope: !5801, file: !3, line: 525, type: !5804)
!5843 = !DILocalVariable(name: "num_regions", arg: 2, scope: !5801, file: !3, line: 525, type: !7)
!5844 = !DILocalVariable(name: "where", arg: 3, scope: !5801, file: !3, line: 526, type: !5835)
!5845 = !DILocalVariable(name: "sync_error_bits", arg: 4, scope: !5801, file: !3, line: 526, type: !3915)
!5846 = !DILocalVariable(name: "ioprio", arg: 5, scope: !5801, file: !3, line: 527, type: !305)
!5847 = !DILocalVariable(name: "r", scope: !5801, file: !3, line: 529, type: !68)
!5848 = !DILocalVariable(name: "dp", scope: !5801, file: !3, line: 530, type: !5849)
!5849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpages", file: !3, line: 168, size: 512, elements: !5850)
!5850 = !{!5851, !5856, !5860, !5865, !5866, !5867}
!5851 = !DIDerivedType(tag: DW_TAG_member, name: "get_page", scope: !5849, file: !3, line: 169, baseType: !5852, size: 64)
!5852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5853, size: 64)
!5853 = !DISubroutineType(types: !5854)
!5854 = !{null, !5855, !3642, !3915, !1332}
!5855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5849, size: 64)
!5856 = !DIDerivedType(tag: DW_TAG_member, name: "next_page", scope: !5849, file: !3, line: 171, baseType: !5857, size: 64, offset: 64)
!5857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5858, size: 64)
!5858 = !DISubroutineType(types: !5859)
!5859 = !{null, !5855}
!5860 = !DIDerivedType(tag: DW_TAG_member, scope: !5849, file: !3, line: 173, baseType: !5861, size: 160, offset: 128)
!5861 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5849, file: !3, line: 173, size: 160, elements: !5862)
!5862 = !{!5863, !5864}
!5863 = !DIDerivedType(tag: DW_TAG_member, name: "context_u", scope: !5861, file: !3, line: 174, baseType: !7, size: 32)
!5864 = !DIDerivedType(tag: DW_TAG_member, name: "context_bi", scope: !5861, file: !3, line: 175, baseType: !2227, size: 160, align: 32)
!5865 = !DIDerivedType(tag: DW_TAG_member, name: "context_ptr", scope: !5849, file: !3, line: 177, baseType: !259, size: 64, offset: 320)
!5866 = !DIDerivedType(tag: DW_TAG_member, name: "vma_invalidate_address", scope: !5849, file: !3, line: 179, baseType: !259, size: 64, offset: 384)
!5867 = !DIDerivedType(tag: DW_TAG_member, name: "vma_invalidate_size", scope: !5849, file: !3, line: 180, baseType: !260, size: 64, offset: 448)
!5868 = !DILocation(line: 525, column: 33, scope: !5801)
!5869 = !DILocation(line: 525, column: 54, scope: !5801)
!5870 = !DILocation(line: 526, column: 25, scope: !5801)
!5871 = !DILocation(line: 526, column: 47, scope: !5801)
!5872 = !DILocation(line: 527, column: 19, scope: !5801)
!5873 = !DILocation(line: 529, column: 2, scope: !5801)
!5874 = !DILocation(line: 529, column: 6, scope: !5801)
!5875 = !DILocation(line: 530, column: 2, scope: !5801)
!5876 = !DILocation(line: 530, column: 16, scope: !5801)
!5877 = !DILocation(line: 532, column: 14, scope: !5801)
!5878 = !DILocation(line: 532, column: 42, scope: !5801)
!5879 = !DILocation(line: 532, column: 49, scope: !5801)
!5880 = !DILocation(line: 532, column: 55, scope: !5801)
!5881 = !DILocation(line: 532, column: 6, scope: !5801)
!5882 = !DILocation(line: 532, column: 4, scope: !5801)
!5883 = !DILocation(line: 533, column: 6, scope: !5884)
!5884 = distinct !DILexicalBlock(scope: !5801, file: !3, line: 533, column: 6)
!5885 = !DILocation(line: 533, column: 6, scope: !5801)
!5886 = !DILocation(line: 534, column: 10, scope: !5884)
!5887 = !DILocation(line: 534, column: 3, scope: !5884)
!5888 = !DILocation(line: 536, column: 7, scope: !5889)
!5889 = distinct !DILexicalBlock(scope: !5801, file: !3, line: 536, column: 6)
!5890 = !DILocation(line: 536, column: 15, scope: !5889)
!5891 = !DILocation(line: 536, column: 22, scope: !5889)
!5892 = !DILocation(line: 536, column: 6, scope: !5801)
!5893 = !DILocation(line: 537, column: 18, scope: !5889)
!5894 = !DILocation(line: 537, column: 26, scope: !5889)
!5895 = !DILocation(line: 537, column: 34, scope: !5889)
!5896 = !DILocation(line: 537, column: 47, scope: !5889)
!5897 = !DILocation(line: 538, column: 11, scope: !5889)
!5898 = !DILocation(line: 538, column: 19, scope: !5889)
!5899 = !DILocation(line: 538, column: 32, scope: !5889)
!5900 = !DILocation(line: 538, column: 49, scope: !5889)
!5901 = !DILocation(line: 537, column: 10, scope: !5889)
!5902 = !DILocation(line: 537, column: 3, scope: !5889)
!5903 = !DILocation(line: 540, column: 18, scope: !5801)
!5904 = !DILocation(line: 540, column: 26, scope: !5801)
!5905 = !DILocation(line: 540, column: 34, scope: !5801)
!5906 = !DILocation(line: 540, column: 47, scope: !5801)
!5907 = !DILocation(line: 541, column: 4, scope: !5801)
!5908 = !DILocation(line: 541, column: 12, scope: !5801)
!5909 = !DILocation(line: 541, column: 25, scope: !5801)
!5910 = !DILocation(line: 541, column: 33, scope: !5801)
!5911 = !DILocation(line: 541, column: 40, scope: !5801)
!5912 = !DILocation(line: 542, column: 4, scope: !5801)
!5913 = !DILocation(line: 542, column: 12, scope: !5801)
!5914 = !DILocation(line: 542, column: 19, scope: !5801)
!5915 = !DILocation(line: 542, column: 28, scope: !5801)
!5916 = !DILocation(line: 540, column: 9, scope: !5801)
!5917 = !DILocation(line: 540, column: 2, scope: !5801)
!5918 = !DILocation(line: 543, column: 1, scope: !5801)
!5919 = distinct !DISubprogram(name: "dp_init", scope: !3, file: !3, line: 488, type: !5920, scopeLine: 490, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5922)
!5920 = !DISubroutineType(types: !5921)
!5921 = !{!68, !5804, !5855, !260}
!5922 = !{!5923, !5924, !5925}
!5923 = !DILocalVariable(name: "io_req", arg: 1, scope: !5919, file: !3, line: 488, type: !5804)
!5924 = !DILocalVariable(name: "dp", arg: 2, scope: !5919, file: !3, line: 488, type: !5855)
!5925 = !DILocalVariable(name: "size", arg: 3, scope: !5919, file: !3, line: 489, type: !260)
!5926 = !DILocation(line: 488, column: 42, scope: !5919)
!5927 = !DILocation(line: 488, column: 65, scope: !5919)
!5928 = !DILocation(line: 489, column: 20, scope: !5919)
!5929 = !DILocation(line: 493, column: 2, scope: !5919)
!5930 = !DILocation(line: 493, column: 6, scope: !5919)
!5931 = !DILocation(line: 493, column: 29, scope: !5919)
!5932 = !DILocation(line: 494, column: 2, scope: !5919)
!5933 = !DILocation(line: 494, column: 6, scope: !5919)
!5934 = !DILocation(line: 494, column: 26, scope: !5919)
!5935 = !DILocation(line: 496, column: 10, scope: !5919)
!5936 = !DILocation(line: 496, column: 18, scope: !5919)
!5937 = !DILocation(line: 496, column: 22, scope: !5919)
!5938 = !DILocation(line: 496, column: 2, scope: !5919)
!5939 = !DILocation(line: 498, column: 16, scope: !5940)
!5940 = distinct !DILexicalBlock(scope: !5919, file: !3, line: 496, column: 28)
!5941 = !DILocation(line: 498, column: 20, scope: !5940)
!5942 = !DILocation(line: 498, column: 28, scope: !5940)
!5943 = !DILocation(line: 498, column: 32, scope: !5940)
!5944 = !DILocation(line: 498, column: 36, scope: !5940)
!5945 = !DILocation(line: 498, column: 40, scope: !5940)
!5946 = !DILocation(line: 498, column: 48, scope: !5940)
!5947 = !DILocation(line: 498, column: 52, scope: !5940)
!5948 = !DILocation(line: 498, column: 3, scope: !5940)
!5949 = !DILocation(line: 499, column: 3, scope: !5940)
!5950 = !DILocation(line: 502, column: 15, scope: !5940)
!5951 = !DILocation(line: 502, column: 19, scope: !5940)
!5952 = !DILocation(line: 502, column: 27, scope: !5940)
!5953 = !DILocation(line: 502, column: 31, scope: !5940)
!5954 = !DILocation(line: 502, column: 35, scope: !5940)
!5955 = !DILocation(line: 502, column: 3, scope: !5940)
!5956 = !DILocation(line: 503, column: 3, scope: !5940)
!5957 = !DILocation(line: 506, column: 27, scope: !5940)
!5958 = !DILocation(line: 506, column: 35, scope: !5940)
!5959 = !DILocation(line: 506, column: 39, scope: !5940)
!5960 = !DILocation(line: 506, column: 43, scope: !5940)
!5961 = !DILocation(line: 506, column: 48, scope: !5940)
!5962 = !DILocation(line: 506, column: 3, scope: !5940)
!5963 = !DILocation(line: 507, column: 8, scope: !5964)
!5964 = distinct !DILexicalBlock(scope: !5940, file: !3, line: 507, column: 7)
!5965 = !DILocation(line: 507, column: 16, scope: !5964)
!5966 = !DILocation(line: 507, column: 23, scope: !5964)
!5967 = !DILocation(line: 507, column: 38, scope: !5964)
!5968 = !DILocation(line: 507, column: 7, scope: !5940)
!5969 = !DILocation(line: 508, column: 33, scope: !5970)
!5970 = distinct !DILexicalBlock(scope: !5964, file: !3, line: 507, column: 54)
!5971 = !DILocation(line: 508, column: 41, scope: !5970)
!5972 = !DILocation(line: 508, column: 45, scope: !5970)
!5973 = !DILocation(line: 508, column: 49, scope: !5970)
!5974 = !DILocation(line: 508, column: 4, scope: !5970)
!5975 = !DILocation(line: 508, column: 8, scope: !5970)
!5976 = !DILocation(line: 508, column: 31, scope: !5970)
!5977 = !DILocation(line: 509, column: 30, scope: !5970)
!5978 = !DILocation(line: 509, column: 4, scope: !5970)
!5979 = !DILocation(line: 509, column: 8, scope: !5970)
!5980 = !DILocation(line: 509, column: 28, scope: !5970)
!5981 = !DILocation(line: 510, column: 3, scope: !5970)
!5982 = !DILocation(line: 511, column: 14, scope: !5940)
!5983 = !DILocation(line: 511, column: 18, scope: !5940)
!5984 = !DILocation(line: 511, column: 26, scope: !5940)
!5985 = !DILocation(line: 511, column: 30, scope: !5940)
!5986 = !DILocation(line: 511, column: 34, scope: !5940)
!5987 = !DILocation(line: 511, column: 3, scope: !5940)
!5988 = !DILocation(line: 512, column: 3, scope: !5940)
!5989 = !DILocation(line: 515, column: 14, scope: !5940)
!5990 = !DILocation(line: 515, column: 18, scope: !5940)
!5991 = !DILocation(line: 515, column: 26, scope: !5940)
!5992 = !DILocation(line: 515, column: 30, scope: !5940)
!5993 = !DILocation(line: 515, column: 34, scope: !5940)
!5994 = !DILocation(line: 515, column: 3, scope: !5940)
!5995 = !DILocation(line: 516, column: 3, scope: !5940)
!5996 = !DILocation(line: 519, column: 3, scope: !5940)
!5997 = !DILocation(line: 522, column: 2, scope: !5919)
!5998 = !DILocation(line: 523, column: 1, scope: !5919)
!5999 = distinct !DISubprogram(name: "sync_io", scope: !3, file: !3, line: 427, type: !6000, scopeLine: 430, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6002)
!6000 = !DISubroutineType(types: !6001)
!6001 = !{!68, !5676, !7, !5835, !261, !5855, !3915, !305}
!6002 = !{!6003, !6004, !6005, !6006, !6007, !6008, !6009, !6010, !6021, !6026, !6030}
!6003 = !DILocalVariable(name: "client", arg: 1, scope: !5999, file: !3, line: 427, type: !5676)
!6004 = !DILocalVariable(name: "num_regions", arg: 2, scope: !5999, file: !3, line: 427, type: !7)
!6005 = !DILocalVariable(name: "where", arg: 3, scope: !5999, file: !3, line: 428, type: !5835)
!6006 = !DILocalVariable(name: "opf", arg: 4, scope: !5999, file: !3, line: 428, type: !261)
!6007 = !DILocalVariable(name: "dp", arg: 5, scope: !5999, file: !3, line: 428, type: !5855)
!6008 = !DILocalVariable(name: "error_bits", arg: 6, scope: !5999, file: !3, line: 429, type: !3915)
!6009 = !DILocalVariable(name: "ioprio", arg: 7, scope: !5999, file: !3, line: 429, type: !305)
!6010 = !DILocalVariable(name: "io", scope: !5999, file: !3, line: 431, type: !6011)
!6011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6012, size: 64)
!6012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io", file: !3, line: 34, size: 512, align: 512, elements: !6013)
!6013 = !{!6014, !6015, !6016, !6017, !6018, !6019, !6020}
!6014 = !DIDerivedType(tag: DW_TAG_member, name: "error_bits", scope: !6012, file: !3, line: 35, baseType: !260, size: 64)
!6015 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !6012, file: !3, line: 36, baseType: !420, size: 32, offset: 64)
!6016 = !DIDerivedType(tag: DW_TAG_member, name: "client", scope: !6012, file: !3, line: 37, baseType: !5676, size: 64, offset: 128)
!6017 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !6012, file: !3, line: 38, baseType: !5829, size: 64, offset: 192)
!6018 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !6012, file: !3, line: 39, baseType: !259, size: 64, offset: 256)
!6019 = !DIDerivedType(tag: DW_TAG_member, name: "vma_invalidate_address", scope: !6012, file: !3, line: 40, baseType: !259, size: 64, offset: 320)
!6020 = !DIDerivedType(tag: DW_TAG_member, name: "vma_invalidate_size", scope: !6012, file: !3, line: 41, baseType: !260, size: 64, offset: 384)
!6021 = !DILocalVariable(name: "sio", scope: !5999, file: !3, line: 432, type: !6022)
!6022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sync_io", file: !3, line: 414, size: 320, elements: !6023)
!6023 = !{!6024, !6025}
!6024 = !DIDerivedType(tag: DW_TAG_member, name: "error_bits", scope: !6022, file: !3, line: 415, baseType: !260, size: 64)
!6025 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !6022, file: !3, line: 416, baseType: !1540, size: 256, offset: 64)
!6026 = !DILocalVariable(name: "__ret_warn_on", scope: !6027, file: !3, line: 435, type: !68)
!6027 = distinct !DILexicalBlock(scope: !6028, file: !3, line: 435, column: 3)
!6028 = distinct !DILexicalBlock(scope: !6029, file: !3, line: 434, column: 44)
!6029 = distinct !DILexicalBlock(scope: !5999, file: !3, line: 434, column: 6)
!6030 = !DILocalVariable(name: "__flags", scope: !6031, file: !3, line: 435, type: !68)
!6031 = distinct !DILexicalBlock(scope: !6032, file: !3, line: 435, column: 3)
!6032 = distinct !DILexicalBlock(scope: !6027, file: !3, line: 435, column: 3)
!6033 = !DILocation(line: 427, column: 41, scope: !5999)
!6034 = !DILocation(line: 427, column: 62, scope: !5999)
!6035 = !DILocation(line: 428, column: 27, scope: !5999)
!6036 = !DILocation(line: 428, column: 44, scope: !5999)
!6037 = !DILocation(line: 428, column: 64, scope: !5999)
!6038 = !DILocation(line: 429, column: 21, scope: !5999)
!6039 = !DILocation(line: 429, column: 48, scope: !5999)
!6040 = !DILocation(line: 431, column: 2, scope: !5999)
!6041 = !DILocation(line: 431, column: 13, scope: !5999)
!6042 = !DILocation(line: 432, column: 2, scope: !5999)
!6043 = !DILocation(line: 432, column: 17, scope: !5999)
!6044 = !DILocation(line: 434, column: 6, scope: !6029)
!6045 = !DILocation(line: 434, column: 18, scope: !6029)
!6046 = !DILocation(line: 434, column: 22, scope: !6029)
!6047 = !DILocation(line: 434, column: 38, scope: !6029)
!6048 = !DILocation(line: 434, column: 26, scope: !6029)
!6049 = !DILocation(line: 434, column: 6, scope: !5999)
!6050 = !DILocation(line: 435, column: 3, scope: !6027)
!6051 = !DILocation(line: 435, column: 3, scope: !6032)
!6052 = !DILocation(line: 435, column: 3, scope: !6031)
!6053 = !DILocation(line: 435, column: 3, scope: !6054)
!6054 = distinct !DILexicalBlock(scope: !6031, file: !3, line: 435, column: 3)
!6055 = !DILocation(line: 435, column: 3, scope: !6056)
!6056 = distinct !DILexicalBlock(scope: !6031, file: !3, line: 435, column: 3)
!6057 = !{i64 2158002705, i64 2158002734, i64 2158002780, i64 2158002838, i64 2158002892, i64 2158002946, i64 2158003001, i64 2158003032, i64 2158003340, i64 2158003346, i64 2158003393, i64 2158003416, i64 2158003442}
!6058 = !DILocation(line: 435, column: 3, scope: !6059)
!6059 = distinct !DILexicalBlock(scope: !6031, file: !3, line: 435, column: 3)
!6060 = !DILocation(line: 435, column: 3, scope: !6028)
!6061 = !DILocation(line: 436, column: 3, scope: !6028)
!6062 = !DILocation(line: 439, column: 23, scope: !5999)
!6063 = !DILocation(line: 439, column: 2, scope: !5999)
!6064 = !DILocation(line: 441, column: 22, scope: !5999)
!6065 = !DILocation(line: 441, column: 30, scope: !5999)
!6066 = !DILocation(line: 441, column: 7, scope: !5999)
!6067 = !DILocation(line: 441, column: 5, scope: !5999)
!6068 = !DILocation(line: 442, column: 2, scope: !5999)
!6069 = !DILocation(line: 442, column: 6, scope: !5999)
!6070 = !DILocation(line: 442, column: 17, scope: !5999)
!6071 = !DILocation(line: 443, column: 14, scope: !5999)
!6072 = !DILocation(line: 443, column: 18, scope: !5999)
!6073 = !DILocation(line: 443, column: 2, scope: !5999)
!6074 = !DILocation(line: 444, column: 15, scope: !5999)
!6075 = !DILocation(line: 444, column: 2, scope: !5999)
!6076 = !DILocation(line: 444, column: 6, scope: !5999)
!6077 = !DILocation(line: 444, column: 13, scope: !5999)
!6078 = !DILocation(line: 445, column: 2, scope: !5999)
!6079 = !DILocation(line: 445, column: 6, scope: !5999)
!6080 = !DILocation(line: 445, column: 15, scope: !5999)
!6081 = !DILocation(line: 446, column: 2, scope: !5999)
!6082 = !DILocation(line: 446, column: 6, scope: !5999)
!6083 = !DILocation(line: 446, column: 14, scope: !5999)
!6084 = !DILocation(line: 448, column: 31, scope: !5999)
!6085 = !DILocation(line: 448, column: 35, scope: !5999)
!6086 = !DILocation(line: 448, column: 2, scope: !5999)
!6087 = !DILocation(line: 448, column: 6, scope: !5999)
!6088 = !DILocation(line: 448, column: 29, scope: !5999)
!6089 = !DILocation(line: 449, column: 28, scope: !5999)
!6090 = !DILocation(line: 449, column: 32, scope: !5999)
!6091 = !DILocation(line: 449, column: 2, scope: !5999)
!6092 = !DILocation(line: 449, column: 6, scope: !5999)
!6093 = !DILocation(line: 449, column: 26, scope: !5999)
!6094 = !DILocation(line: 451, column: 14, scope: !5999)
!6095 = !DILocation(line: 451, column: 19, scope: !5999)
!6096 = !DILocation(line: 451, column: 32, scope: !5999)
!6097 = !DILocation(line: 451, column: 39, scope: !5999)
!6098 = !DILocation(line: 451, column: 43, scope: !5999)
!6099 = !DILocation(line: 451, column: 50, scope: !5999)
!6100 = !DILocation(line: 451, column: 2, scope: !5999)
!6101 = !DILocation(line: 453, column: 30, scope: !5999)
!6102 = !DILocation(line: 453, column: 2, scope: !5999)
!6103 = !DILocation(line: 455, column: 6, scope: !6104)
!6104 = distinct !DILexicalBlock(scope: !5999, file: !3, line: 455, column: 6)
!6105 = !DILocation(line: 455, column: 6, scope: !5999)
!6106 = !DILocation(line: 456, column: 21, scope: !6104)
!6107 = !DILocation(line: 456, column: 4, scope: !6104)
!6108 = !DILocation(line: 456, column: 15, scope: !6104)
!6109 = !DILocation(line: 456, column: 3, scope: !6104)
!6110 = !DILocation(line: 458, column: 13, scope: !5999)
!6111 = !DILocation(line: 458, column: 9, scope: !5999)
!6112 = !DILocation(line: 458, column: 2, scope: !5999)
!6113 = !DILocation(line: 459, column: 1, scope: !5999)
!6114 = distinct !DISubprogram(name: "async_io", scope: !3, file: !3, line: 461, type: !6115, scopeLine: 465, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6117)
!6115 = !DISubroutineType(types: !6116)
!6116 = !{!68, !5676, !7, !5835, !261, !5855, !5829, !259, !305}
!6117 = !{!6118, !6119, !6120, !6121, !6122, !6123, !6124, !6125, !6126, !6127, !6131}
!6118 = !DILocalVariable(name: "client", arg: 1, scope: !6114, file: !3, line: 461, type: !5676)
!6119 = !DILocalVariable(name: "num_regions", arg: 2, scope: !6114, file: !3, line: 461, type: !7)
!6120 = !DILocalVariable(name: "where", arg: 3, scope: !6114, file: !3, line: 462, type: !5835)
!6121 = !DILocalVariable(name: "opf", arg: 4, scope: !6114, file: !3, line: 462, type: !261)
!6122 = !DILocalVariable(name: "dp", arg: 5, scope: !6114, file: !3, line: 463, type: !5855)
!6123 = !DILocalVariable(name: "fn", arg: 6, scope: !6114, file: !3, line: 463, type: !5829)
!6124 = !DILocalVariable(name: "context", arg: 7, scope: !6114, file: !3, line: 463, type: !259)
!6125 = !DILocalVariable(name: "ioprio", arg: 8, scope: !6114, file: !3, line: 464, type: !305)
!6126 = !DILocalVariable(name: "io", scope: !6114, file: !3, line: 466, type: !6011)
!6127 = !DILocalVariable(name: "__ret_warn_on", scope: !6128, file: !3, line: 469, type: !68)
!6128 = distinct !DILexicalBlock(scope: !6129, file: !3, line: 469, column: 3)
!6129 = distinct !DILexicalBlock(scope: !6130, file: !3, line: 468, column: 44)
!6130 = distinct !DILexicalBlock(scope: !6114, file: !3, line: 468, column: 6)
!6131 = !DILocalVariable(name: "__flags", scope: !6132, file: !3, line: 469, type: !68)
!6132 = distinct !DILexicalBlock(scope: !6133, file: !3, line: 469, column: 3)
!6133 = distinct !DILexicalBlock(scope: !6128, file: !3, line: 469, column: 3)
!6134 = !DILocation(line: 461, column: 42, scope: !6114)
!6135 = !DILocation(line: 461, column: 63, scope: !6114)
!6136 = !DILocation(line: 462, column: 28, scope: !6114)
!6137 = !DILocation(line: 462, column: 45, scope: !6114)
!6138 = !DILocation(line: 463, column: 22, scope: !6114)
!6139 = !DILocation(line: 463, column: 39, scope: !6114)
!6140 = !DILocation(line: 463, column: 49, scope: !6114)
!6141 = !DILocation(line: 464, column: 22, scope: !6114)
!6142 = !DILocation(line: 466, column: 2, scope: !6114)
!6143 = !DILocation(line: 466, column: 13, scope: !6114)
!6144 = !DILocation(line: 468, column: 6, scope: !6130)
!6145 = !DILocation(line: 468, column: 18, scope: !6130)
!6146 = !DILocation(line: 468, column: 22, scope: !6130)
!6147 = !DILocation(line: 468, column: 38, scope: !6130)
!6148 = !DILocation(line: 468, column: 26, scope: !6130)
!6149 = !DILocation(line: 468, column: 6, scope: !6114)
!6150 = !DILocation(line: 469, column: 3, scope: !6128)
!6151 = !DILocation(line: 469, column: 3, scope: !6133)
!6152 = !DILocation(line: 469, column: 3, scope: !6132)
!6153 = !DILocation(line: 469, column: 3, scope: !6154)
!6154 = distinct !DILexicalBlock(scope: !6132, file: !3, line: 469, column: 3)
!6155 = !DILocation(line: 469, column: 3, scope: !6156)
!6156 = distinct !DILexicalBlock(scope: !6132, file: !3, line: 469, column: 3)
!6157 = !{i64 2158004285, i64 2158004314, i64 2158004360, i64 2158004418, i64 2158004472, i64 2158004526, i64 2158004581, i64 2158004612, i64 2158004920, i64 2158004926, i64 2158004973, i64 2158004996, i64 2158005022}
!6158 = !DILocation(line: 469, column: 3, scope: !6159)
!6159 = distinct !DILexicalBlock(scope: !6132, file: !3, line: 469, column: 3)
!6160 = !DILocation(line: 469, column: 3, scope: !6129)
!6161 = !DILocation(line: 470, column: 3, scope: !6129)
!6162 = !DILocation(line: 470, column: 9, scope: !6129)
!6163 = !DILocation(line: 471, column: 3, scope: !6129)
!6164 = !DILocation(line: 474, column: 22, scope: !6114)
!6165 = !DILocation(line: 474, column: 30, scope: !6114)
!6166 = !DILocation(line: 474, column: 7, scope: !6114)
!6167 = !DILocation(line: 474, column: 5, scope: !6114)
!6168 = !DILocation(line: 475, column: 2, scope: !6114)
!6169 = !DILocation(line: 475, column: 6, scope: !6114)
!6170 = !DILocation(line: 475, column: 17, scope: !6114)
!6171 = !DILocation(line: 476, column: 14, scope: !6114)
!6172 = !DILocation(line: 476, column: 18, scope: !6114)
!6173 = !DILocation(line: 476, column: 2, scope: !6114)
!6174 = !DILocation(line: 477, column: 15, scope: !6114)
!6175 = !DILocation(line: 477, column: 2, scope: !6114)
!6176 = !DILocation(line: 477, column: 6, scope: !6114)
!6177 = !DILocation(line: 477, column: 13, scope: !6114)
!6178 = !DILocation(line: 478, column: 17, scope: !6114)
!6179 = !DILocation(line: 478, column: 2, scope: !6114)
!6180 = !DILocation(line: 478, column: 6, scope: !6114)
!6181 = !DILocation(line: 478, column: 15, scope: !6114)
!6182 = !DILocation(line: 479, column: 16, scope: !6114)
!6183 = !DILocation(line: 479, column: 2, scope: !6114)
!6184 = !DILocation(line: 479, column: 6, scope: !6114)
!6185 = !DILocation(line: 479, column: 14, scope: !6114)
!6186 = !DILocation(line: 481, column: 31, scope: !6114)
!6187 = !DILocation(line: 481, column: 35, scope: !6114)
!6188 = !DILocation(line: 481, column: 2, scope: !6114)
!6189 = !DILocation(line: 481, column: 6, scope: !6114)
!6190 = !DILocation(line: 481, column: 29, scope: !6114)
!6191 = !DILocation(line: 482, column: 28, scope: !6114)
!6192 = !DILocation(line: 482, column: 32, scope: !6114)
!6193 = !DILocation(line: 482, column: 2, scope: !6114)
!6194 = !DILocation(line: 482, column: 6, scope: !6114)
!6195 = !DILocation(line: 482, column: 26, scope: !6114)
!6196 = !DILocation(line: 484, column: 14, scope: !6114)
!6197 = !DILocation(line: 484, column: 19, scope: !6114)
!6198 = !DILocation(line: 484, column: 32, scope: !6114)
!6199 = !DILocation(line: 484, column: 39, scope: !6114)
!6200 = !DILocation(line: 484, column: 43, scope: !6114)
!6201 = !DILocation(line: 484, column: 50, scope: !6114)
!6202 = !DILocation(line: 484, column: 2, scope: !6114)
!6203 = !DILocation(line: 485, column: 2, scope: !6114)
!6204 = !DILocation(line: 486, column: 1, scope: !6114)
!6205 = distinct !DISubprogram(name: "dm_io_init", scope: !3, file: !3, line: 546, type: !4546, scopeLine: 547, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6206 = !DILocation(line: 548, column: 17, scope: !6205)
!6207 = !DILocation(line: 548, column: 15, scope: !6205)
!6208 = !DILocation(line: 549, column: 7, scope: !6209)
!6209 = distinct !DILexicalBlock(scope: !6205, file: !3, line: 549, column: 6)
!6210 = !DILocation(line: 549, column: 6, scope: !6205)
!6211 = !DILocation(line: 550, column: 3, scope: !6209)
!6212 = !DILocation(line: 552, column: 2, scope: !6205)
!6213 = !DILocation(line: 553, column: 1, scope: !6205)
!6214 = !DISubprogram(name: "kmem_cache_create", scope: !206, file: !206, line: 189, type: !6215, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6215 = !DISubroutineType(types: !6216)
!6216 = !{!2258, !460, !7, !7, !6217, !2172}
!6217 = !DIDerivedType(tag: DW_TAG_typedef, name: "slab_flags_t", file: !258, line: 155, baseType: !7)
!6218 = distinct !DISubprogram(name: "dm_io_exit", scope: !3, file: !3, line: 555, type: !3290, scopeLine: 556, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6219 = !DILocation(line: 557, column: 21, scope: !6218)
!6220 = !DILocation(line: 557, column: 2, scope: !6218)
!6221 = !DILocation(line: 558, column: 15, scope: !6218)
!6222 = !DILocation(line: 559, column: 1, scope: !6218)
!6223 = !DISubprogram(name: "kmem_cache_destroy", scope: !206, file: !206, line: 197, type: !6224, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6224 = !DISubroutineType(types: !6225)
!6225 = !{null, !2258}
!6226 = distinct !DISubprogram(name: "kmalloc", scope: !206, file: !206, line: 591, type: !5736, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6227)
!6227 = !{!6228, !6229, !6230}
!6228 = !DILocalVariable(name: "size", arg: 1, scope: !6226, file: !206, line: 591, type: !633)
!6229 = !DILocalVariable(name: "flags", arg: 2, scope: !6226, file: !206, line: 591, type: !257)
!6230 = !DILocalVariable(name: "index", scope: !6231, file: !206, line: 594, type: !7)
!6231 = distinct !DILexicalBlock(scope: !6232, file: !206, line: 593, column: 42)
!6232 = distinct !DILexicalBlock(scope: !6226, file: !206, line: 593, column: 6)
!6233 = !DILocation(line: 591, column: 61, scope: !6226)
!6234 = !DILocation(line: 591, column: 73, scope: !6226)
!6235 = !DILocation(line: 593, column: 27, scope: !6232)
!6236 = !DILocation(line: 593, column: 6, scope: !6232)
!6237 = !DILocation(line: 593, column: 33, scope: !6232)
!6238 = !DILocation(line: 593, column: 36, scope: !6232)
!6239 = !DILocation(line: 593, column: 6, scope: !6226)
!6240 = !DILocation(line: 594, column: 3, scope: !6231)
!6241 = !DILocation(line: 594, column: 16, scope: !6231)
!6242 = !DILocation(line: 596, column: 7, scope: !6243)
!6243 = distinct !DILexicalBlock(scope: !6231, file: !206, line: 596, column: 7)
!6244 = !DILocation(line: 596, column: 12, scope: !6243)
!6245 = !DILocation(line: 596, column: 7, scope: !6231)
!6246 = !DILocation(line: 597, column: 25, scope: !6243)
!6247 = !DILocation(line: 597, column: 31, scope: !6243)
!6248 = !DILocation(line: 597, column: 11, scope: !6243)
!6249 = !DILocation(line: 597, column: 4, scope: !6243)
!6250 = !DILocation(line: 599, column: 11, scope: !6231)
!6251 = !DILocation(line: 599, column: 9, scope: !6231)
!6252 = !DILocation(line: 601, column: 33, scope: !6231)
!6253 = !DILocation(line: 601, column: 40, scope: !6231)
!6254 = !DILocation(line: 601, column: 20, scope: !6231)
!6255 = !DILocation(line: 601, column: 5, scope: !6231)
!6256 = !DILocation(line: 601, column: 51, scope: !6231)
!6257 = !DILocation(line: 602, column: 5, scope: !6231)
!6258 = !DILocation(line: 602, column: 12, scope: !6231)
!6259 = !DILocation(line: 600, column: 10, scope: !6231)
!6260 = !DILocation(line: 600, column: 3, scope: !6231)
!6261 = !DILocation(line: 603, column: 2, scope: !6232)
!6262 = !DILocation(line: 604, column: 19, scope: !6226)
!6263 = !DILocation(line: 604, column: 25, scope: !6226)
!6264 = !DILocation(line: 604, column: 9, scope: !6226)
!6265 = !DILocation(line: 604, column: 2, scope: !6226)
!6266 = !DILocation(line: 605, column: 1, scope: !6226)
!6267 = !DISubprogram(name: "kmalloc_large", scope: !206, file: !206, line: 531, type: !5736, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6268 = distinct !DISubprogram(name: "__kmalloc_index", scope: !206, file: !206, line: 444, type: !6269, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6271)
!6269 = !DISubroutineType(types: !6270)
!6270 = !{!7, !633, !896}
!6271 = !{!6272, !6273}
!6272 = !DILocalVariable(name: "size", arg: 1, scope: !6268, file: !206, line: 444, type: !633)
!6273 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6268, file: !206, line: 445, type: !896)
!6274 = !DILocation(line: 444, column: 60, scope: !6268)
!6275 = !DILocation(line: 445, column: 16, scope: !6268)
!6276 = !DILocation(line: 447, column: 7, scope: !6277)
!6277 = distinct !DILexicalBlock(scope: !6268, file: !206, line: 447, column: 6)
!6278 = !DILocation(line: 447, column: 6, scope: !6268)
!6279 = !DILocation(line: 448, column: 3, scope: !6277)
!6280 = !DILocation(line: 450, column: 6, scope: !6281)
!6281 = distinct !DILexicalBlock(scope: !6268, file: !206, line: 450, column: 6)
!6282 = !DILocation(line: 450, column: 11, scope: !6281)
!6283 = !DILocation(line: 450, column: 6, scope: !6268)
!6284 = !DILocation(line: 451, column: 3, scope: !6281)
!6285 = !DILocation(line: 453, column: 32, scope: !6286)
!6286 = distinct !DILexicalBlock(scope: !6268, file: !206, line: 453, column: 6)
!6287 = !DILocation(line: 453, column: 37, scope: !6286)
!6288 = !DILocation(line: 453, column: 42, scope: !6286)
!6289 = !DILocation(line: 453, column: 45, scope: !6286)
!6290 = !DILocation(line: 453, column: 50, scope: !6286)
!6291 = !DILocation(line: 453, column: 6, scope: !6268)
!6292 = !DILocation(line: 454, column: 3, scope: !6286)
!6293 = !DILocation(line: 455, column: 32, scope: !6294)
!6294 = distinct !DILexicalBlock(scope: !6268, file: !206, line: 455, column: 6)
!6295 = !DILocation(line: 455, column: 37, scope: !6294)
!6296 = !DILocation(line: 455, column: 43, scope: !6294)
!6297 = !DILocation(line: 455, column: 46, scope: !6294)
!6298 = !DILocation(line: 455, column: 51, scope: !6294)
!6299 = !DILocation(line: 455, column: 6, scope: !6268)
!6300 = !DILocation(line: 456, column: 3, scope: !6294)
!6301 = !DILocation(line: 457, column: 6, scope: !6302)
!6302 = distinct !DILexicalBlock(scope: !6268, file: !206, line: 457, column: 6)
!6303 = !DILocation(line: 457, column: 11, scope: !6302)
!6304 = !DILocation(line: 457, column: 6, scope: !6268)
!6305 = !DILocation(line: 457, column: 26, scope: !6302)
!6306 = !DILocation(line: 458, column: 6, scope: !6307)
!6307 = distinct !DILexicalBlock(scope: !6268, file: !206, line: 458, column: 6)
!6308 = !DILocation(line: 458, column: 11, scope: !6307)
!6309 = !DILocation(line: 458, column: 6, scope: !6268)
!6310 = !DILocation(line: 458, column: 26, scope: !6307)
!6311 = !DILocation(line: 459, column: 6, scope: !6312)
!6312 = distinct !DILexicalBlock(scope: !6268, file: !206, line: 459, column: 6)
!6313 = !DILocation(line: 459, column: 11, scope: !6312)
!6314 = !DILocation(line: 459, column: 6, scope: !6268)
!6315 = !DILocation(line: 459, column: 26, scope: !6312)
!6316 = !DILocation(line: 460, column: 6, scope: !6317)
!6317 = distinct !DILexicalBlock(scope: !6268, file: !206, line: 460, column: 6)
!6318 = !DILocation(line: 460, column: 11, scope: !6317)
!6319 = !DILocation(line: 460, column: 6, scope: !6268)
!6320 = !DILocation(line: 460, column: 26, scope: !6317)
!6321 = !DILocation(line: 461, column: 6, scope: !6322)
!6322 = distinct !DILexicalBlock(scope: !6268, file: !206, line: 461, column: 6)
!6323 = !DILocation(line: 461, column: 11, scope: !6322)
!6324 = !DILocation(line: 461, column: 6, scope: !6268)
!6325 = !DILocation(line: 461, column: 26, scope: !6322)
!6326 = !DILocation(line: 462, column: 6, scope: !6327)
!6327 = distinct !DILexicalBlock(scope: !6268, file: !206, line: 462, column: 6)
!6328 = !DILocation(line: 462, column: 11, scope: !6327)
!6329 = !DILocation(line: 462, column: 6, scope: !6268)
!6330 = !DILocation(line: 462, column: 26, scope: !6327)
!6331 = !DILocation(line: 463, column: 6, scope: !6332)
!6332 = distinct !DILexicalBlock(scope: !6268, file: !206, line: 463, column: 6)
!6333 = !DILocation(line: 463, column: 11, scope: !6332)
!6334 = !DILocation(line: 463, column: 6, scope: !6268)
!6335 = !DILocation(line: 463, column: 26, scope: !6332)
!6336 = !DILocation(line: 464, column: 6, scope: !6337)
!6337 = distinct !DILexicalBlock(scope: !6268, file: !206, line: 464, column: 6)
!6338 = !DILocation(line: 464, column: 11, scope: !6337)
!6339 = !DILocation(line: 464, column: 6, scope: !6268)
!6340 = !DILocation(line: 464, column: 26, scope: !6337)
!6341 = !DILocation(line: 465, column: 6, scope: !6342)
!6342 = distinct !DILexicalBlock(scope: !6268, file: !206, line: 465, column: 6)
!6343 = !DILocation(line: 465, column: 11, scope: !6342)
!6344 = !DILocation(line: 465, column: 6, scope: !6268)
!6345 = !DILocation(line: 465, column: 26, scope: !6342)
!6346 = !DILocation(line: 466, column: 6, scope: !6347)
!6347 = distinct !DILexicalBlock(scope: !6268, file: !206, line: 466, column: 6)
!6348 = !DILocation(line: 466, column: 11, scope: !6347)
!6349 = !DILocation(line: 466, column: 6, scope: !6268)
!6350 = !DILocation(line: 466, column: 26, scope: !6347)
!6351 = !DILocation(line: 467, column: 6, scope: !6352)
!6352 = distinct !DILexicalBlock(scope: !6268, file: !206, line: 467, column: 6)
!6353 = !DILocation(line: 467, column: 11, scope: !6352)
!6354 = !DILocation(line: 467, column: 6, scope: !6268)
!6355 = !DILocation(line: 467, column: 26, scope: !6352)
!6356 = !DILocation(line: 468, column: 6, scope: !6357)
!6357 = distinct !DILexicalBlock(scope: !6268, file: !206, line: 468, column: 6)
!6358 = !DILocation(line: 468, column: 11, scope: !6357)
!6359 = !DILocation(line: 468, column: 6, scope: !6268)
!6360 = !DILocation(line: 468, column: 26, scope: !6357)
!6361 = !DILocation(line: 469, column: 6, scope: !6362)
!6362 = distinct !DILexicalBlock(scope: !6268, file: !206, line: 469, column: 6)
!6363 = !DILocation(line: 469, column: 11, scope: !6362)
!6364 = !DILocation(line: 469, column: 6, scope: !6268)
!6365 = !DILocation(line: 469, column: 26, scope: !6362)
!6366 = !DILocation(line: 470, column: 6, scope: !6367)
!6367 = distinct !DILexicalBlock(scope: !6268, file: !206, line: 470, column: 6)
!6368 = !DILocation(line: 470, column: 11, scope: !6367)
!6369 = !DILocation(line: 470, column: 6, scope: !6268)
!6370 = !DILocation(line: 470, column: 26, scope: !6367)
!6371 = !DILocation(line: 471, column: 6, scope: !6372)
!6372 = distinct !DILexicalBlock(scope: !6268, file: !206, line: 471, column: 6)
!6373 = !DILocation(line: 471, column: 11, scope: !6372)
!6374 = !DILocation(line: 471, column: 6, scope: !6268)
!6375 = !DILocation(line: 471, column: 26, scope: !6372)
!6376 = !DILocation(line: 472, column: 6, scope: !6377)
!6377 = distinct !DILexicalBlock(scope: !6268, file: !206, line: 472, column: 6)
!6378 = !DILocation(line: 472, column: 11, scope: !6377)
!6379 = !DILocation(line: 472, column: 6, scope: !6268)
!6380 = !DILocation(line: 472, column: 26, scope: !6377)
!6381 = !DILocation(line: 473, column: 6, scope: !6382)
!6382 = distinct !DILexicalBlock(scope: !6268, file: !206, line: 473, column: 6)
!6383 = !DILocation(line: 473, column: 11, scope: !6382)
!6384 = !DILocation(line: 473, column: 6, scope: !6268)
!6385 = !DILocation(line: 473, column: 26, scope: !6382)
!6386 = !DILocation(line: 474, column: 6, scope: !6387)
!6387 = distinct !DILexicalBlock(scope: !6268, file: !206, line: 474, column: 6)
!6388 = !DILocation(line: 474, column: 11, scope: !6387)
!6389 = !DILocation(line: 474, column: 6, scope: !6268)
!6390 = !DILocation(line: 474, column: 27, scope: !6387)
!6391 = !DILocation(line: 475, column: 6, scope: !6392)
!6392 = distinct !DILexicalBlock(scope: !6268, file: !206, line: 475, column: 6)
!6393 = !DILocation(line: 475, column: 11, scope: !6392)
!6394 = !DILocation(line: 475, column: 6, scope: !6268)
!6395 = !DILocation(line: 475, column: 32, scope: !6392)
!6396 = !DILocation(line: 477, column: 50, scope: !6397)
!6397 = distinct !DILexicalBlock(scope: !6268, file: !206, line: 477, column: 6)
!6398 = !{i8 0, i8 2}
!6399 = !DILocation(line: 477, column: 6, scope: !6268)
!6400 = !DILocation(line: 478, column: 3, scope: !6397)
!6401 = !DILocation(line: 478, column: 3, scope: !6402)
!6402 = distinct !DILexicalBlock(scope: !6403, file: !206, line: 478, column: 3)
!6403 = distinct !DILexicalBlock(scope: !6397, file: !206, line: 478, column: 3)
!6404 = !{i32 -2141573523}
!6405 = !DILocation(line: 478, column: 3, scope: !6403)
!6406 = !DILocation(line: 480, column: 3, scope: !6397)
!6407 = !DILocation(line: 480, column: 3, scope: !6408)
!6408 = distinct !DILexicalBlock(scope: !6397, file: !206, line: 480, column: 3)
!6409 = !DILocation(line: 480, column: 3, scope: !6410)
!6410 = distinct !DILexicalBlock(scope: !6408, file: !206, line: 480, column: 3)
!6411 = !DILocation(line: 480, column: 3, scope: !6412)
!6412 = distinct !DILexicalBlock(scope: !6408, file: !206, line: 480, column: 3)
!6413 = !{i64 2153393976, i64 2153394005, i64 2153394051, i64 2153394109, i64 2153394163, i64 2153394217, i64 2153394272, i64 2153394303}
!6414 = !DILocation(line: 483, column: 2, scope: !6268)
!6415 = !DILocation(line: 484, column: 1, scope: !6268)
!6416 = !DISubprogram(name: "kmalloc_trace", scope: !206, file: !206, line: 525, type: !6417, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6417 = !DISubroutineType(types: !6418)
!6418 = !{!259, !2258, !257, !633}
!6419 = distinct !DISubprogram(name: "kmalloc_type", scope: !206, file: !206, line: 401, type: !6420, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6422)
!6420 = !DISubroutineType(types: !6421)
!6421 = !{!205, !257, !260}
!6422 = !{!6423, !6424}
!6423 = !DILocalVariable(name: "flags", arg: 1, scope: !6419, file: !206, line: 401, type: !257)
!6424 = !DILocalVariable(name: "caller", arg: 2, scope: !6419, file: !206, line: 401, type: !260)
!6425 = !DILocation(line: 401, column: 67, scope: !6419)
!6426 = !DILocation(line: 401, column: 88, scope: !6419)
!6427 = !DILocation(line: 407, column: 6, scope: !6428)
!6428 = distinct !DILexicalBlock(scope: !6419, file: !206, line: 407, column: 6)
!6429 = !DILocation(line: 407, column: 6, scope: !6419)
!6430 = !DILocation(line: 413, column: 3, scope: !6428)
!6431 = !DILocation(line: 423, column: 38, scope: !6432)
!6432 = distinct !DILexicalBlock(scope: !6419, file: !206, line: 423, column: 6)
!6433 = !DILocation(line: 423, column: 44, scope: !6432)
!6434 = !DILocation(line: 423, column: 6, scope: !6419)
!6435 = !DILocation(line: 424, column: 3, scope: !6432)
!6436 = !DILocation(line: 426, column: 3, scope: !6437)
!6437 = distinct !DILexicalBlock(scope: !6419, file: !206, line: 425, column: 6)
!6438 = !DILocation(line: 429, column: 1, scope: !6419)
!6439 = !DISubprogram(name: "__kmalloc", scope: !206, file: !206, line: 488, type: !5736, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6440 = !DISubprogram(name: "__compiletime_assert_245", scope: !206, file: !206, line: 478, type: !3290, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6441 = !DISubprogram(name: "mempool_init", scope: !2267, file: !2267, line: 42, type: !6442, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6442 = !DISubroutineType(types: !6443)
!6443 = !{!68, !5761, !68, !2277, !2282, !259}
!6444 = distinct !DISubprogram(name: "list_dp_init", scope: !3, file: !3, line: 205, type: !6445, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6447)
!6445 = !DISubroutineType(types: !6446)
!6446 = !{null, !5855, !5817, !7}
!6447 = !{!6448, !6449, !6450}
!6448 = !DILocalVariable(name: "dp", arg: 1, scope: !6444, file: !3, line: 205, type: !5855)
!6449 = !DILocalVariable(name: "pl", arg: 2, scope: !6444, file: !3, line: 205, type: !5817)
!6450 = !DILocalVariable(name: "offset", arg: 3, scope: !6444, file: !3, line: 205, type: !7)
!6451 = !DILocation(line: 205, column: 41, scope: !6444)
!6452 = !DILocation(line: 205, column: 63, scope: !6444)
!6453 = !DILocation(line: 205, column: 80, scope: !6444)
!6454 = !DILocation(line: 207, column: 2, scope: !6444)
!6455 = !DILocation(line: 207, column: 6, scope: !6444)
!6456 = !DILocation(line: 207, column: 15, scope: !6444)
!6457 = !DILocation(line: 208, column: 2, scope: !6444)
!6458 = !DILocation(line: 208, column: 6, scope: !6444)
!6459 = !DILocation(line: 208, column: 16, scope: !6444)
!6460 = !DILocation(line: 209, column: 18, scope: !6444)
!6461 = !DILocation(line: 209, column: 2, scope: !6444)
!6462 = !DILocation(line: 209, column: 6, scope: !6444)
!6463 = !DILocation(line: 209, column: 16, scope: !6444)
!6464 = !DILocation(line: 210, column: 20, scope: !6444)
!6465 = !DILocation(line: 210, column: 2, scope: !6444)
!6466 = !DILocation(line: 210, column: 6, scope: !6444)
!6467 = !DILocation(line: 210, column: 18, scope: !6444)
!6468 = !DILocation(line: 211, column: 1, scope: !6444)
!6469 = distinct !DISubprogram(name: "bio_dp_init", scope: !3, file: !3, line: 238, type: !6470, scopeLine: 239, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6472)
!6470 = !DISubroutineType(types: !6471)
!6471 = !{null, !5855, !2216}
!6472 = !{!6473, !6474}
!6473 = !DILocalVariable(name: "dp", arg: 1, scope: !6469, file: !3, line: 238, type: !5855)
!6474 = !DILocalVariable(name: "bio", arg: 2, scope: !6469, file: !3, line: 238, type: !2216)
!6475 = !DILocation(line: 238, column: 40, scope: !6469)
!6476 = !DILocation(line: 238, column: 56, scope: !6469)
!6477 = !DILocation(line: 240, column: 2, scope: !6469)
!6478 = !DILocation(line: 240, column: 6, scope: !6469)
!6479 = !DILocation(line: 240, column: 15, scope: !6469)
!6480 = !DILocation(line: 241, column: 2, scope: !6469)
!6481 = !DILocation(line: 241, column: 6, scope: !6469)
!6482 = !DILocation(line: 241, column: 16, scope: !6469)
!6483 = !DILocation(line: 247, column: 20, scope: !6469)
!6484 = !DILocation(line: 247, column: 25, scope: !6469)
!6485 = !DILocation(line: 247, column: 2, scope: !6469)
!6486 = !DILocation(line: 247, column: 6, scope: !6469)
!6487 = !DILocation(line: 247, column: 18, scope: !6469)
!6488 = !DILocation(line: 248, column: 2, scope: !6469)
!6489 = !DILocation(line: 248, column: 6, scope: !6469)
!6490 = !DILocation(line: 248, column: 19, scope: !6469)
!6491 = !DILocation(line: 248, column: 24, scope: !6469)
!6492 = !DILocation(line: 249, column: 1, scope: !6469)
!6493 = distinct !DISubprogram(name: "flush_kernel_vmap_range", scope: !6494, file: !6494, line: 192, type: !6495, scopeLine: 193, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6497)
!6494 = !DIFile(filename: "./include/linux/highmem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "44cc22a6674afa1c65f9d65e2d0f07bb")
!6495 = !DISubroutineType(types: !6496)
!6496 = !{null, !259, !68}
!6497 = !{!6498, !6499}
!6498 = !DILocalVariable(name: "vaddr", arg: 1, scope: !6493, file: !6494, line: 192, type: !259)
!6499 = !DILocalVariable(name: "size", arg: 2, scope: !6493, file: !6494, line: 192, type: !68)
!6500 = !DILocation(line: 192, column: 50, scope: !6493)
!6501 = !DILocation(line: 192, column: 61, scope: !6493)
!6502 = !DILocation(line: 194, column: 1, scope: !6493)
!6503 = distinct !DISubprogram(name: "vm_dp_init", scope: !3, file: !3, line: 268, type: !6504, scopeLine: 269, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6506)
!6504 = !DISubroutineType(types: !6505)
!6505 = !{null, !5855, !259}
!6506 = !{!6507, !6508}
!6507 = !DILocalVariable(name: "dp", arg: 1, scope: !6503, file: !3, line: 268, type: !5855)
!6508 = !DILocalVariable(name: "data", arg: 2, scope: !6503, file: !3, line: 268, type: !259)
!6509 = !DILocation(line: 268, column: 39, scope: !6503)
!6510 = !DILocation(line: 268, column: 49, scope: !6503)
!6511 = !DILocation(line: 270, column: 2, scope: !6503)
!6512 = !DILocation(line: 270, column: 6, scope: !6503)
!6513 = !DILocation(line: 270, column: 15, scope: !6503)
!6514 = !DILocation(line: 271, column: 2, scope: !6503)
!6515 = !DILocation(line: 271, column: 6, scope: !6503)
!6516 = !DILocation(line: 271, column: 16, scope: !6503)
!6517 = !DILocation(line: 272, column: 18, scope: !6503)
!6518 = !DILocation(line: 272, column: 2, scope: !6503)
!6519 = !DILocation(line: 272, column: 6, scope: !6503)
!6520 = !DILocation(line: 272, column: 16, scope: !6503)
!6521 = !DILocation(line: 273, column: 20, scope: !6503)
!6522 = !DILocation(line: 273, column: 2, scope: !6503)
!6523 = !DILocation(line: 273, column: 6, scope: !6503)
!6524 = !DILocation(line: 273, column: 18, scope: !6503)
!6525 = !DILocation(line: 274, column: 1, scope: !6503)
!6526 = distinct !DISubprogram(name: "km_dp_init", scope: !3, file: !3, line: 293, type: !6504, scopeLine: 294, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6527)
!6527 = !{!6528, !6529}
!6528 = !DILocalVariable(name: "dp", arg: 1, scope: !6526, file: !3, line: 293, type: !5855)
!6529 = !DILocalVariable(name: "data", arg: 2, scope: !6526, file: !3, line: 293, type: !259)
!6530 = !DILocation(line: 293, column: 39, scope: !6526)
!6531 = !DILocation(line: 293, column: 49, scope: !6526)
!6532 = !DILocation(line: 295, column: 2, scope: !6526)
!6533 = !DILocation(line: 295, column: 6, scope: !6526)
!6534 = !DILocation(line: 295, column: 15, scope: !6526)
!6535 = !DILocation(line: 296, column: 2, scope: !6526)
!6536 = !DILocation(line: 296, column: 6, scope: !6526)
!6537 = !DILocation(line: 296, column: 16, scope: !6526)
!6538 = !DILocation(line: 297, column: 18, scope: !6526)
!6539 = !DILocation(line: 297, column: 2, scope: !6526)
!6540 = !DILocation(line: 297, column: 6, scope: !6526)
!6541 = !DILocation(line: 297, column: 16, scope: !6526)
!6542 = !DILocation(line: 298, column: 20, scope: !6526)
!6543 = !DILocation(line: 298, column: 2, scope: !6526)
!6544 = !DILocation(line: 298, column: 6, scope: !6526)
!6545 = !DILocation(line: 298, column: 18, scope: !6526)
!6546 = !DILocation(line: 299, column: 1, scope: !6526)
!6547 = distinct !DISubprogram(name: "list_get_page", scope: !3, file: !3, line: 186, type: !5853, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6548)
!6548 = !{!6549, !6550, !6551, !6552, !6553, !6554}
!6549 = !DILocalVariable(name: "dp", arg: 1, scope: !6547, file: !3, line: 186, type: !5855)
!6550 = !DILocalVariable(name: "p", arg: 2, scope: !6547, file: !3, line: 187, type: !3642)
!6551 = !DILocalVariable(name: "len", arg: 3, scope: !6547, file: !3, line: 187, type: !3915)
!6552 = !DILocalVariable(name: "offset", arg: 4, scope: !6547, file: !3, line: 187, type: !1332)
!6553 = !DILocalVariable(name: "o", scope: !6547, file: !3, line: 189, type: !7)
!6554 = !DILocalVariable(name: "pl", scope: !6547, file: !3, line: 190, type: !5817)
!6555 = !DILocation(line: 186, column: 42, scope: !6547)
!6556 = !DILocation(line: 187, column: 19, scope: !6547)
!6557 = !DILocation(line: 187, column: 37, scope: !6547)
!6558 = !DILocation(line: 187, column: 56, scope: !6547)
!6559 = !DILocation(line: 189, column: 2, scope: !6547)
!6560 = !DILocation(line: 189, column: 15, scope: !6547)
!6561 = !DILocation(line: 189, column: 19, scope: !6547)
!6562 = !DILocation(line: 189, column: 23, scope: !6547)
!6563 = !DILocation(line: 190, column: 2, scope: !6547)
!6564 = !DILocation(line: 190, column: 20, scope: !6547)
!6565 = !DILocation(line: 190, column: 25, scope: !6547)
!6566 = !DILocation(line: 190, column: 29, scope: !6547)
!6567 = !DILocation(line: 192, column: 7, scope: !6547)
!6568 = !DILocation(line: 192, column: 11, scope: !6547)
!6569 = !DILocation(line: 192, column: 3, scope: !6547)
!6570 = !DILocation(line: 192, column: 5, scope: !6547)
!6571 = !DILocation(line: 193, column: 21, scope: !6547)
!6572 = !DILocation(line: 193, column: 19, scope: !6547)
!6573 = !DILocation(line: 193, column: 3, scope: !6547)
!6574 = !DILocation(line: 193, column: 7, scope: !6547)
!6575 = !DILocation(line: 194, column: 12, scope: !6547)
!6576 = !DILocation(line: 194, column: 3, scope: !6547)
!6577 = !DILocation(line: 194, column: 10, scope: !6547)
!6578 = !DILocation(line: 195, column: 1, scope: !6547)
!6579 = distinct !DISubprogram(name: "list_next_page", scope: !3, file: !3, line: 197, type: !5858, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6580)
!6580 = !{!6581, !6582}
!6581 = !DILocalVariable(name: "dp", arg: 1, scope: !6579, file: !3, line: 197, type: !5855)
!6582 = !DILocalVariable(name: "pl", scope: !6579, file: !3, line: 199, type: !5817)
!6583 = !DILocation(line: 197, column: 43, scope: !6579)
!6584 = !DILocation(line: 199, column: 2, scope: !6579)
!6585 = !DILocation(line: 199, column: 20, scope: !6579)
!6586 = !DILocation(line: 199, column: 25, scope: !6579)
!6587 = !DILocation(line: 199, column: 29, scope: !6579)
!6588 = !DILocation(line: 201, column: 20, scope: !6579)
!6589 = !DILocation(line: 201, column: 24, scope: !6579)
!6590 = !DILocation(line: 201, column: 2, scope: !6579)
!6591 = !DILocation(line: 201, column: 6, scope: !6579)
!6592 = !DILocation(line: 201, column: 18, scope: !6579)
!6593 = !DILocation(line: 202, column: 2, scope: !6579)
!6594 = !DILocation(line: 202, column: 6, scope: !6579)
!6595 = !DILocation(line: 202, column: 16, scope: !6579)
!6596 = !DILocation(line: 203, column: 1, scope: !6579)
!6597 = distinct !DISubprogram(name: "bio_get_page", scope: !3, file: !3, line: 216, type: !5853, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6598)
!6598 = !{!6599, !6600, !6601, !6602, !6603, !6604, !6606, !6608, !6609}
!6599 = !DILocalVariable(name: "dp", arg: 1, scope: !6597, file: !3, line: 216, type: !5855)
!6600 = !DILocalVariable(name: "p", arg: 2, scope: !6597, file: !3, line: 216, type: !3642)
!6601 = !DILocalVariable(name: "len", arg: 3, scope: !6597, file: !3, line: 217, type: !3915)
!6602 = !DILocalVariable(name: "offset", arg: 4, scope: !6597, file: !3, line: 217, type: !1332)
!6603 = !DILocalVariable(name: "bvec", scope: !6597, file: !3, line: 219, type: !265)
!6604 = !DILocalVariable(name: "__UNIQUE_ID___x528", scope: !6605, file: !3, line: 219, type: !7)
!6605 = distinct !DILexicalBlock(scope: !6597, file: !3, line: 219, column: 24)
!6606 = !DILocalVariable(name: "__UNIQUE_ID___x526", scope: !6607, file: !3, line: 219, type: !7)
!6607 = distinct !DILexicalBlock(scope: !6605, file: !3, line: 219, column: 24)
!6608 = !DILocalVariable(name: "__UNIQUE_ID___y527", scope: !6607, file: !3, line: 219, type: !7)
!6609 = !DILocalVariable(name: "__UNIQUE_ID___y529", scope: !6605, file: !3, line: 219, type: !7)
!6610 = !DILocation(line: 216, column: 41, scope: !6597)
!6611 = !DILocation(line: 216, column: 59, scope: !6597)
!6612 = !DILocation(line: 217, column: 20, scope: !6597)
!6613 = !DILocation(line: 217, column: 39, scope: !6597)
!6614 = !DILocation(line: 219, column: 2, scope: !6597)
!6615 = !DILocation(line: 219, column: 17, scope: !6597)
!6616 = !DILocation(line: 219, column: 24, scope: !6597)
!6617 = !DILocation(line: 219, column: 24, scope: !6605)
!6618 = !DILocation(line: 219, column: 24, scope: !6607)
!6619 = !DILocation(line: 222, column: 12, scope: !6597)
!6620 = !DILocation(line: 222, column: 3, scope: !6597)
!6621 = !DILocation(line: 222, column: 5, scope: !6597)
!6622 = !DILocation(line: 223, column: 14, scope: !6597)
!6623 = !DILocation(line: 223, column: 9, scope: !6597)
!6624 = !DILocation(line: 223, column: 3, scope: !6597)
!6625 = !DILocation(line: 223, column: 7, scope: !6597)
!6626 = !DILocation(line: 224, column: 17, scope: !6597)
!6627 = !DILocation(line: 224, column: 3, scope: !6597)
!6628 = !DILocation(line: 224, column: 10, scope: !6597)
!6629 = !DILocation(line: 227, column: 44, scope: !6597)
!6630 = !DILocation(line: 227, column: 29, scope: !6597)
!6631 = !DILocation(line: 227, column: 2, scope: !6597)
!6632 = !DILocation(line: 227, column: 6, scope: !6597)
!6633 = !DILocation(line: 227, column: 17, scope: !6597)
!6634 = !DILocation(line: 227, column: 27, scope: !6597)
!6635 = !DILocation(line: 228, column: 1, scope: !6597)
!6636 = distinct !DISubprogram(name: "bio_next_page", scope: !3, file: !3, line: 230, type: !5858, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6637)
!6637 = !{!6638, !6639}
!6638 = !DILocalVariable(name: "dp", arg: 1, scope: !6636, file: !3, line: 230, type: !5855)
!6639 = !DILocalVariable(name: "len", scope: !6636, file: !3, line: 232, type: !7)
!6640 = !DILocation(line: 230, column: 42, scope: !6636)
!6641 = !DILocation(line: 232, column: 2, scope: !6636)
!6642 = !DILocation(line: 232, column: 15, scope: !6636)
!6643 = !DILocation(line: 232, column: 35, scope: !6636)
!6644 = !DILocation(line: 232, column: 39, scope: !6636)
!6645 = !DILocation(line: 232, column: 50, scope: !6636)
!6646 = !DILocation(line: 232, column: 21, scope: !6636)
!6647 = !DILocation(line: 234, column: 38, scope: !6636)
!6648 = !DILocation(line: 234, column: 42, scope: !6636)
!6649 = !DILocation(line: 235, column: 7, scope: !6636)
!6650 = !DILocation(line: 235, column: 11, scope: !6636)
!6651 = !DILocation(line: 235, column: 23, scope: !6636)
!6652 = !DILocation(line: 234, column: 2, scope: !6636)
!6653 = !DILocation(line: 236, column: 1, scope: !6636)
!6654 = !DILocation(line: 140, column: 60, scope: !5613)
!6655 = !DILocation(line: 141, column: 21, scope: !5613)
!6656 = !DILocation(line: 141, column: 36, scope: !5613)
!6657 = !DILocation(line: 143, column: 2, scope: !5613)
!6658 = !DILocation(line: 143, column: 15, scope: !5613)
!6659 = !DILocation(line: 143, column: 21, scope: !5613)
!6660 = !DILocation(line: 143, column: 27, scope: !5613)
!6661 = !DILocation(line: 145, column: 6, scope: !5623)
!6662 = !DILocation(line: 145, column: 6, scope: !5626)
!6663 = !DILocation(line: 145, column: 6, scope: !6664)
!6664 = distinct !DILexicalBlock(scope: !5626, file: !266, line: 145, column: 6)
!6665 = !DILocation(line: 0, scope: !6664)
!6666 = !DILocation(line: 145, column: 6, scope: !6667)
!6667 = distinct !DILexicalBlock(scope: !6664, file: !266, line: 145, column: 6)
!6668 = !DILocation(line: 145, column: 6, scope: !5627)
!6669 = !DILocation(line: 145, column: 6, scope: !5630)
!6670 = !DILocation(line: 145, column: 6, scope: !5634)
!6671 = !DILocation(line: 145, column: 6, scope: !5633)
!6672 = !DILocation(line: 145, column: 6, scope: !6673)
!6673 = distinct !DILexicalBlock(scope: !5633, file: !266, line: 145, column: 6)
!6674 = !DILocation(line: 145, column: 6, scope: !5632)
!6675 = !DILocation(line: 145, column: 6, scope: !6676)
!6676 = distinct !DILexicalBlock(scope: !5632, file: !266, line: 145, column: 6)
!6677 = !DILocation(line: 145, column: 6, scope: !6678)
!6678 = distinct !DILexicalBlock(scope: !5632, file: !266, line: 145, column: 6)
!6679 = !{i64 2154172062, i64 2154172091, i64 2154172137, i64 2154172195, i64 2154172249, i64 2154172303, i64 2154172358, i64 2154172389, i64 2154172697, i64 2154172703, i64 2154172750, i64 2154172773, i64 2154172799}
!6680 = !DILocation(line: 145, column: 6, scope: !6681)
!6681 = distinct !DILexicalBlock(scope: !5632, file: !266, line: 145, column: 6)
!6682 = !DILocation(line: 145, column: 6, scope: !6683)
!6683 = distinct !DILexicalBlock(scope: !5633, file: !266, line: 145, column: 6)
!6684 = !DILocation(line: 145, column: 6, scope: !5624)
!6685 = !DILocation(line: 145, column: 6, scope: !5613)
!6686 = !DILocation(line: 147, column: 3, scope: !6687)
!6687 = distinct !DILexicalBlock(scope: !5624, file: !266, line: 146, column: 57)
!6688 = !DILocation(line: 147, column: 9, scope: !6687)
!6689 = !DILocation(line: 147, column: 17, scope: !6687)
!6690 = !DILocation(line: 148, column: 3, scope: !6687)
!6691 = !DILocation(line: 151, column: 19, scope: !5613)
!6692 = !DILocation(line: 151, column: 2, scope: !5613)
!6693 = !DILocation(line: 151, column: 8, scope: !5613)
!6694 = !DILocation(line: 151, column: 16, scope: !5613)
!6695 = !DILocation(line: 152, column: 11, scope: !5613)
!6696 = !DILocation(line: 152, column: 17, scope: !5613)
!6697 = !DILocation(line: 152, column: 8, scope: !5613)
!6698 = !DILocation(line: 154, column: 2, scope: !5613)
!6699 = !DILocation(line: 154, column: 9, scope: !5613)
!6700 = !DILocation(line: 154, column: 15, scope: !5613)
!6701 = !DILocation(line: 154, column: 18, scope: !5613)
!6702 = !DILocation(line: 154, column: 27, scope: !5613)
!6703 = !DILocation(line: 154, column: 30, scope: !5613)
!6704 = !DILocation(line: 154, column: 35, scope: !5613)
!6705 = !DILocation(line: 154, column: 24, scope: !5613)
!6706 = !DILocation(line: 0, scope: !5613)
!6707 = !DILocation(line: 155, column: 12, scope: !6708)
!6708 = distinct !DILexicalBlock(scope: !5613, file: !266, line: 154, column: 43)
!6709 = !DILocation(line: 155, column: 15, scope: !6708)
!6710 = !DILocation(line: 155, column: 20, scope: !6708)
!6711 = !DILocation(line: 155, column: 9, scope: !6708)
!6712 = !DILocation(line: 156, column: 6, scope: !6708)
!6713 = distinct !{!6713, !6698, !6714, !6715, !6716}
!6714 = !DILocation(line: 157, column: 2, scope: !5613)
!6715 = !{!"llvm.loop.mustprogress"}
!6716 = !{!"llvm.loop.unroll.disable"}
!6717 = !DILocation(line: 159, column: 17, scope: !5613)
!6718 = !DILocation(line: 159, column: 2, scope: !5613)
!6719 = !DILocation(line: 159, column: 8, scope: !5613)
!6720 = !DILocation(line: 159, column: 15, scope: !5613)
!6721 = !DILocation(line: 160, column: 23, scope: !5613)
!6722 = !DILocation(line: 160, column: 2, scope: !5613)
!6723 = !DILocation(line: 160, column: 8, scope: !5613)
!6724 = !DILocation(line: 160, column: 21, scope: !5613)
!6725 = !DILocation(line: 161, column: 2, scope: !5613)
!6726 = !DILocation(line: 162, column: 1, scope: !5613)
!6727 = !DISubprogram(name: "__warn_printk", scope: !4589, file: !4589, line: 93, type: !6728, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6728 = !DISubroutineType(types: !6729)
!6729 = !{null, !460, null}
!6730 = distinct !DISubprogram(name: "vm_get_page", scope: !3, file: !3, line: 254, type: !5853, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6731)
!6731 = !{!6732, !6733, !6734, !6735}
!6732 = !DILocalVariable(name: "dp", arg: 1, scope: !6730, file: !3, line: 254, type: !5855)
!6733 = !DILocalVariable(name: "p", arg: 2, scope: !6730, file: !3, line: 255, type: !3642)
!6734 = !DILocalVariable(name: "len", arg: 3, scope: !6730, file: !3, line: 255, type: !3915)
!6735 = !DILocalVariable(name: "offset", arg: 4, scope: !6730, file: !3, line: 255, type: !1332)
!6736 = !DILocation(line: 254, column: 40, scope: !6730)
!6737 = !DILocation(line: 255, column: 18, scope: !6730)
!6738 = !DILocation(line: 255, column: 36, scope: !6730)
!6739 = !DILocation(line: 255, column: 55, scope: !6730)
!6740 = !DILocation(line: 257, column: 23, scope: !6730)
!6741 = !DILocation(line: 257, column: 27, scope: !6730)
!6742 = !DILocation(line: 257, column: 7, scope: !6730)
!6743 = !DILocation(line: 257, column: 3, scope: !6730)
!6744 = !DILocation(line: 257, column: 5, scope: !6730)
!6745 = !DILocation(line: 258, column: 12, scope: !6730)
!6746 = !DILocation(line: 258, column: 16, scope: !6730)
!6747 = !DILocation(line: 258, column: 3, scope: !6730)
!6748 = !DILocation(line: 258, column: 10, scope: !6730)
!6749 = !DILocation(line: 259, column: 21, scope: !6730)
!6750 = !DILocation(line: 259, column: 25, scope: !6730)
!6751 = !DILocation(line: 259, column: 19, scope: !6730)
!6752 = !DILocation(line: 259, column: 3, scope: !6730)
!6753 = !DILocation(line: 259, column: 7, scope: !6730)
!6754 = !DILocation(line: 260, column: 1, scope: !6730)
!6755 = distinct !DISubprogram(name: "vm_next_page", scope: !3, file: !3, line: 262, type: !5858, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6756)
!6756 = !{!6757}
!6757 = !DILocalVariable(name: "dp", arg: 1, scope: !6755, file: !3, line: 262, type: !5855)
!6758 = !DILocation(line: 262, column: 41, scope: !6755)
!6759 = !DILocation(line: 264, column: 33, scope: !6755)
!6760 = !DILocation(line: 264, column: 37, scope: !6755)
!6761 = !DILocation(line: 264, column: 31, scope: !6755)
!6762 = !DILocation(line: 264, column: 2, scope: !6755)
!6763 = !DILocation(line: 264, column: 6, scope: !6755)
!6764 = !DILocation(line: 264, column: 18, scope: !6755)
!6765 = !DILocation(line: 265, column: 2, scope: !6755)
!6766 = !DILocation(line: 265, column: 6, scope: !6755)
!6767 = !DILocation(line: 265, column: 16, scope: !6755)
!6768 = !DILocation(line: 266, column: 1, scope: !6755)
!6769 = !DISubprogram(name: "vmalloc_to_page", scope: !4108, file: !4108, line: 1138, type: !6770, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6770 = !DISubroutineType(types: !6771)
!6771 = !{!269, !2044}
!6772 = distinct !DISubprogram(name: "km_get_page", scope: !3, file: !3, line: 279, type: !5853, scopeLine: 281, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6773)
!6773 = !{!6774, !6775, !6776, !6777}
!6774 = !DILocalVariable(name: "dp", arg: 1, scope: !6772, file: !3, line: 279, type: !5855)
!6775 = !DILocalVariable(name: "p", arg: 2, scope: !6772, file: !3, line: 279, type: !3642)
!6776 = !DILocalVariable(name: "len", arg: 3, scope: !6772, file: !3, line: 279, type: !3915)
!6777 = !DILocalVariable(name: "offset", arg: 4, scope: !6772, file: !3, line: 280, type: !1332)
!6778 = !DILocation(line: 279, column: 40, scope: !6772)
!6779 = !DILocation(line: 279, column: 58, scope: !6772)
!6780 = !DILocation(line: 279, column: 76, scope: !6772)
!6781 = !DILocation(line: 280, column: 18, scope: !6772)
!6782 = !DILocation(line: 282, column: 7, scope: !6772)
!6783 = !DILocation(line: 282, column: 3, scope: !6772)
!6784 = !DILocation(line: 282, column: 5, scope: !6772)
!6785 = !DILocation(line: 283, column: 12, scope: !6772)
!6786 = !DILocation(line: 283, column: 16, scope: !6772)
!6787 = !DILocation(line: 283, column: 3, scope: !6772)
!6788 = !DILocation(line: 283, column: 10, scope: !6772)
!6789 = !DILocation(line: 284, column: 21, scope: !6772)
!6790 = !DILocation(line: 284, column: 25, scope: !6772)
!6791 = !DILocation(line: 284, column: 19, scope: !6772)
!6792 = !DILocation(line: 284, column: 3, scope: !6772)
!6793 = !DILocation(line: 284, column: 7, scope: !6772)
!6794 = !DILocation(line: 285, column: 1, scope: !6772)
!6795 = distinct !DISubprogram(name: "km_next_page", scope: !3, file: !3, line: 287, type: !5858, scopeLine: 288, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6796)
!6796 = !{!6797}
!6797 = !DILocalVariable(name: "dp", arg: 1, scope: !6795, file: !3, line: 287, type: !5855)
!6798 = !DILocation(line: 287, column: 41, scope: !6795)
!6799 = !DILocation(line: 289, column: 33, scope: !6795)
!6800 = !DILocation(line: 289, column: 37, scope: !6795)
!6801 = !DILocation(line: 289, column: 31, scope: !6795)
!6802 = !DILocation(line: 289, column: 2, scope: !6795)
!6803 = !DILocation(line: 289, column: 6, scope: !6795)
!6804 = !DILocation(line: 289, column: 18, scope: !6795)
!6805 = !DILocation(line: 290, column: 2, scope: !6795)
!6806 = !DILocation(line: 290, column: 6, scope: !6795)
!6807 = !DILocation(line: 290, column: 16, scope: !6795)
!6808 = !DILocation(line: 291, column: 1, scope: !6795)
!6809 = distinct !DISubprogram(name: "__phys_addr_nodebug", scope: !6810, file: !6810, line: 22, type: !6811, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6813)
!6810 = !DIFile(filename: "./arch/x86/include/asm/page_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e8642b887a42f979954681cc5f73dc7c")
!6811 = !DISubroutineType(types: !6812)
!6812 = !{!260, !260}
!6813 = !{!6814, !6815}
!6814 = !DILocalVariable(name: "x", arg: 1, scope: !6809, file: !6810, line: 22, type: !260)
!6815 = !DILocalVariable(name: "y", scope: !6809, file: !6810, line: 24, type: !260)
!6816 = !DILocation(line: 22, column: 72, scope: !6809)
!6817 = !DILocation(line: 24, column: 2, scope: !6809)
!6818 = !DILocation(line: 24, column: 16, scope: !6809)
!6819 = !DILocation(line: 24, column: 20, scope: !6809)
!6820 = !DILocation(line: 24, column: 22, scope: !6809)
!6821 = !DILocation(line: 27, column: 6, scope: !6809)
!6822 = !DILocation(line: 27, column: 12, scope: !6809)
!6823 = !DILocation(line: 27, column: 16, scope: !6809)
!6824 = !DILocation(line: 27, column: 14, scope: !6809)
!6825 = !DILocation(line: 27, column: 11, scope: !6809)
!6826 = !DILocation(line: 27, column: 21, scope: !6809)
!6827 = !DILocation(line: 27, column: 55, scope: !6809)
!6828 = !DILocation(line: 27, column: 53, scope: !6809)
!6829 = !DILocation(line: 27, column: 8, scope: !6809)
!6830 = !DILocation(line: 27, column: 4, scope: !6809)
!6831 = !DILocation(line: 29, column: 9, scope: !6809)
!6832 = !DILocation(line: 30, column: 1, scope: !6809)
!6833 = !DILocation(line: 29, column: 2, scope: !6809)
!6834 = distinct !DISubprogram(name: "op_is_write", scope: !216, file: !216, line: 480, type: !6835, scopeLine: 481, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6837)
!6835 = !DISubroutineType(types: !6836)
!6836 = !{!896, !261}
!6837 = !{!6838}
!6838 = !DILocalVariable(name: "op", arg: 1, scope: !6834, file: !216, line: 480, type: !261)
!6839 = !DILocation(line: 480, column: 42, scope: !6834)
!6840 = !DILocation(line: 482, column: 12, scope: !6834)
!6841 = !DILocation(line: 482, column: 15, scope: !6834)
!6842 = !DILocation(line: 482, column: 10, scope: !6834)
!6843 = !DILocation(line: 482, column: 9, scope: !6834)
!6844 = !DILocation(line: 482, column: 2, scope: !6834)
!6845 = !DILocation(line: 84, column: 55, scope: !5649)
!6846 = !DILocation(line: 86, column: 2, scope: !5649)
!6847 = !DILocation(line: 86, column: 5, scope: !5649)
!6848 = !DILocation(line: 86, column: 10, scope: !5649)
!6849 = !DILocation(line: 87, column: 2, scope: !5649)
!6850 = !DILocation(line: 87, column: 2, scope: !6851)
!6851 = distinct !DILexicalBlock(scope: !5649, file: !1541, line: 87, column: 2)
!6852 = !DILocation(line: 88, column: 1, scope: !5649)
!6853 = !DISubprogram(name: "mempool_alloc", scope: !2267, file: !2267, line: 53, type: !6854, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6854 = !DISubroutineType(types: !6855)
!6855 = !{!259, !5761, !257}
!6856 = distinct !DISubprogram(name: "atomic_set", scope: !6857, file: !6857, line: 65, type: !6858, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6861)
!6857 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!6858 = !DISubroutineType(types: !6859)
!6859 = !{null, !6860, !68}
!6860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!6861 = !{!6862, !6863}
!6862 = !DILocalVariable(name: "v", arg: 1, scope: !6856, file: !6857, line: 65, type: !6860)
!6863 = !DILocalVariable(name: "i", arg: 2, scope: !6856, file: !6857, line: 65, type: !68)
!6864 = !DILocation(line: 65, column: 22, scope: !6856)
!6865 = !DILocation(line: 65, column: 29, scope: !6856)
!6866 = !DILocation(line: 67, column: 26, scope: !6856)
!6867 = !DILocation(line: 67, column: 2, scope: !6856)
!6868 = !DILocation(line: 68, column: 17, scope: !6856)
!6869 = !DILocation(line: 68, column: 20, scope: !6856)
!6870 = !DILocation(line: 68, column: 2, scope: !6856)
!6871 = !DILocation(line: 69, column: 1, scope: !6856)
!6872 = distinct !DISubprogram(name: "sync_io_complete", scope: !3, file: !3, line: 419, type: !5831, scopeLine: 420, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6873)
!6873 = !{!6874, !6875, !6876}
!6874 = !DILocalVariable(name: "error", arg: 1, scope: !6872, file: !3, line: 419, type: !260)
!6875 = !DILocalVariable(name: "context", arg: 2, scope: !6872, file: !3, line: 419, type: !259)
!6876 = !DILocalVariable(name: "sio", scope: !6872, file: !3, line: 421, type: !6877)
!6877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6022, size: 64)
!6878 = !DILocation(line: 419, column: 44, scope: !6872)
!6879 = !DILocation(line: 419, column: 57, scope: !6872)
!6880 = !DILocation(line: 421, column: 2, scope: !6872)
!6881 = !DILocation(line: 421, column: 18, scope: !6872)
!6882 = !DILocation(line: 421, column: 24, scope: !6872)
!6883 = !DILocation(line: 423, column: 20, scope: !6872)
!6884 = !DILocation(line: 423, column: 2, scope: !6872)
!6885 = !DILocation(line: 423, column: 7, scope: !6872)
!6886 = !DILocation(line: 423, column: 18, scope: !6872)
!6887 = !DILocation(line: 424, column: 12, scope: !6872)
!6888 = !DILocation(line: 424, column: 17, scope: !6872)
!6889 = !DILocation(line: 424, column: 2, scope: !6872)
!6890 = !DILocation(line: 425, column: 1, scope: !6872)
!6891 = distinct !DISubprogram(name: "dispatch_io", scope: !3, file: !3, line: 385, type: !6892, scopeLine: 388, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6894)
!6892 = !DISubroutineType(types: !6893)
!6893 = !{null, !261, !7, !5835, !5855, !6011, !68, !305}
!6894 = !{!6895, !6896, !6897, !6898, !6899, !6900, !6901, !6902, !6903}
!6895 = !DILocalVariable(name: "opf", arg: 1, scope: !6891, file: !3, line: 385, type: !261)
!6896 = !DILocalVariable(name: "num_regions", arg: 2, scope: !6891, file: !3, line: 385, type: !7)
!6897 = !DILocalVariable(name: "where", arg: 3, scope: !6891, file: !3, line: 386, type: !5835)
!6898 = !DILocalVariable(name: "dp", arg: 4, scope: !6891, file: !3, line: 386, type: !5855)
!6899 = !DILocalVariable(name: "io", arg: 5, scope: !6891, file: !3, line: 387, type: !6011)
!6900 = !DILocalVariable(name: "sync", arg: 6, scope: !6891, file: !3, line: 387, type: !68)
!6901 = !DILocalVariable(name: "ioprio", arg: 7, scope: !6891, file: !3, line: 387, type: !305)
!6902 = !DILocalVariable(name: "i", scope: !6891, file: !3, line: 389, type: !68)
!6903 = !DILocalVariable(name: "old_pages", scope: !6891, file: !3, line: 390, type: !5849)
!6904 = !DILocation(line: 385, column: 35, scope: !6891)
!6905 = !DILocation(line: 385, column: 53, scope: !6891)
!6906 = !DILocation(line: 386, column: 25, scope: !6891)
!6907 = !DILocation(line: 386, column: 47, scope: !6891)
!6908 = !DILocation(line: 387, column: 15, scope: !6891)
!6909 = !DILocation(line: 387, column: 23, scope: !6891)
!6910 = !DILocation(line: 387, column: 44, scope: !6891)
!6911 = !DILocation(line: 389, column: 2, scope: !6891)
!6912 = !DILocation(line: 389, column: 6, scope: !6891)
!6913 = !DILocation(line: 390, column: 2, scope: !6891)
!6914 = !DILocation(line: 390, column: 16, scope: !6891)
!6915 = !DILocation(line: 390, column: 29, scope: !6891)
!6916 = !DILocation(line: 390, column: 28, scope: !6891)
!6917 = !DILocation(line: 392, column: 2, scope: !6891)
!6918 = !DILocation(line: 392, column: 2, scope: !6919)
!6919 = distinct !DILexicalBlock(scope: !6920, file: !3, line: 392, column: 2)
!6920 = distinct !DILexicalBlock(scope: !6891, file: !3, line: 392, column: 2)
!6921 = !DILocation(line: 392, column: 2, scope: !6920)
!6922 = !DILocation(line: 392, column: 2, scope: !6923)
!6923 = distinct !DILexicalBlock(scope: !6919, file: !3, line: 392, column: 2)
!6924 = !DILocation(line: 392, column: 2, scope: !6925)
!6925 = distinct !DILexicalBlock(scope: !6923, file: !3, line: 392, column: 2)
!6926 = !DILocation(line: 392, column: 2, scope: !6927)
!6927 = distinct !DILexicalBlock(scope: !6923, file: !3, line: 392, column: 2)
!6928 = !{i64 2158001412, i64 2158001441, i64 2158001487, i64 2158001545, i64 2158001599, i64 2158001653, i64 2158001708, i64 2158001739}
!6929 = !DILocation(line: 394, column: 6, scope: !6930)
!6930 = distinct !DILexicalBlock(scope: !6891, file: !3, line: 394, column: 6)
!6931 = !DILocation(line: 394, column: 6, scope: !6891)
!6932 = !DILocation(line: 395, column: 7, scope: !6930)
!6933 = !DILocation(line: 395, column: 3, scope: !6930)
!6934 = !DILocation(line: 401, column: 9, scope: !6935)
!6935 = distinct !DILexicalBlock(scope: !6891, file: !3, line: 401, column: 2)
!6936 = !DILocation(line: 401, column: 7, scope: !6935)
!6937 = !DILocation(line: 401, column: 14, scope: !6938)
!6938 = distinct !DILexicalBlock(scope: !6935, file: !3, line: 401, column: 2)
!6939 = !DILocation(line: 401, column: 18, scope: !6938)
!6940 = !DILocation(line: 401, column: 16, scope: !6938)
!6941 = !DILocation(line: 401, column: 2, scope: !6935)
!6942 = !DILocation(line: 402, column: 4, scope: !6943)
!6943 = distinct !DILexicalBlock(scope: !6938, file: !3, line: 401, column: 36)
!6944 = !DILocation(line: 402, column: 9, scope: !6943)
!6945 = !DILocation(line: 403, column: 7, scope: !6946)
!6946 = distinct !DILexicalBlock(scope: !6943, file: !3, line: 403, column: 7)
!6947 = !DILocation(line: 403, column: 13, scope: !6946)
!6948 = !DILocation(line: 403, column: 16, scope: !6946)
!6949 = !DILocation(line: 403, column: 22, scope: !6946)
!6950 = !DILocation(line: 403, column: 26, scope: !6946)
!6951 = !DILocation(line: 403, column: 30, scope: !6946)
!6952 = !DILocation(line: 403, column: 7, scope: !6943)
!6953 = !DILocation(line: 404, column: 14, scope: !6946)
!6954 = !DILocation(line: 404, column: 19, scope: !6946)
!6955 = !DILocation(line: 404, column: 22, scope: !6946)
!6956 = !DILocation(line: 404, column: 30, scope: !6946)
!6957 = !DILocation(line: 404, column: 28, scope: !6946)
!6958 = !DILocation(line: 404, column: 33, scope: !6946)
!6959 = !DILocation(line: 404, column: 37, scope: !6946)
!6960 = !DILocation(line: 404, column: 41, scope: !6946)
!6961 = !DILocation(line: 404, column: 4, scope: !6946)
!6962 = !DILocation(line: 405, column: 2, scope: !6943)
!6963 = !DILocation(line: 401, column: 32, scope: !6938)
!6964 = !DILocation(line: 401, column: 2, scope: !6938)
!6965 = distinct !{!6965, !6941, !6966, !6715, !6716}
!6966 = !DILocation(line: 405, column: 2, scope: !6935)
!6967 = !DILocation(line: 411, column: 12, scope: !6891)
!6968 = !DILocation(line: 411, column: 2, scope: !6891)
!6969 = !DILocation(line: 412, column: 1, scope: !6891)
!6970 = !DISubprogram(name: "wait_for_completion_io", scope: !1541, file: !1541, line: 103, type: !5650, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6971 = !DISubprogram(name: "__init_swait_queue_head", scope: !1546, file: !1546, line: 69, type: !6972, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6972 = !DISubroutineType(types: !6973)
!6973 = !{null, !6974, !460, !6975}
!6974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!6975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4685, size: 64)
!6976 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !6977, file: !6977, line: 80, type: !6978, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6983)
!6977 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6978 = !DISubroutineType(types: !6979)
!6979 = !{null, !6980, !633}
!6980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6981, size: 64)
!6981 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6982)
!6982 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6983 = !{!6984, !6985}
!6984 = !DILocalVariable(name: "v", arg: 1, scope: !6976, file: !6977, line: 80, type: !6980)
!6985 = !DILocalVariable(name: "size", arg: 2, scope: !6976, file: !6977, line: 80, type: !633)
!6986 = !DILocation(line: 80, column: 74, scope: !6976)
!6987 = !DILocation(line: 80, column: 84, scope: !6976)
!6988 = !DILocation(line: 82, column: 20, scope: !6976)
!6989 = !DILocation(line: 82, column: 23, scope: !6976)
!6990 = !DILocation(line: 82, column: 2, scope: !6976)
!6991 = !DILocation(line: 83, column: 2, scope: !6976)
!6992 = !DILocation(line: 84, column: 1, scope: !6976)
!6993 = distinct !DISubprogram(name: "raw_atomic_set", scope: !6994, file: !6994, line: 488, type: !6858, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6995)
!6994 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!6995 = !{!6996, !6997}
!6996 = !DILocalVariable(name: "v", arg: 1, scope: !6993, file: !6994, line: 488, type: !6860)
!6997 = !DILocalVariable(name: "i", arg: 2, scope: !6993, file: !6994, line: 488, type: !68)
!6998 = !DILocation(line: 488, column: 26, scope: !6993)
!6999 = !DILocation(line: 488, column: 33, scope: !6993)
!7000 = !DILocation(line: 490, column: 18, scope: !6993)
!7001 = !DILocation(line: 490, column: 21, scope: !6993)
!7002 = !DILocation(line: 490, column: 2, scope: !6993)
!7003 = !DILocation(line: 491, column: 1, scope: !6993)
!7004 = distinct !DISubprogram(name: "kasan_check_write", scope: !7005, file: !7005, line: 44, type: !7006, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7008)
!7005 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!7006 = !DISubroutineType(types: !7007)
!7007 = !{!896, !6980, !7}
!7008 = !{!7009, !7010}
!7009 = !DILocalVariable(name: "p", arg: 1, scope: !7004, file: !7005, line: 44, type: !6980)
!7010 = !DILocalVariable(name: "size", arg: 2, scope: !7004, file: !7005, line: 44, type: !7)
!7011 = !DILocation(line: 44, column: 59, scope: !7004)
!7012 = !DILocation(line: 44, column: 75, scope: !7004)
!7013 = !DILocation(line: 46, column: 2, scope: !7004)
!7014 = distinct !DISubprogram(name: "kcsan_check_access", scope: !7015, file: !7015, line: 229, type: !7016, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7018)
!7015 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!7016 = !DISubroutineType(types: !7017)
!7017 = !{null, !6980, !633, !68}
!7018 = !{!7019, !7020, !7021}
!7019 = !DILocalVariable(name: "ptr", arg: 1, scope: !7014, file: !7015, line: 229, type: !6980)
!7020 = !DILocalVariable(name: "size", arg: 2, scope: !7014, file: !7015, line: 229, type: !633)
!7021 = !DILocalVariable(name: "type", arg: 3, scope: !7014, file: !7015, line: 230, type: !68)
!7022 = !DILocation(line: 229, column: 60, scope: !7014)
!7023 = !DILocation(line: 229, column: 72, scope: !7014)
!7024 = !DILocation(line: 230, column: 15, scope: !7014)
!7025 = !DILocation(line: 230, column: 23, scope: !7014)
!7026 = distinct !DISubprogram(name: "arch_atomic_set", scope: !7027, file: !7027, line: 26, type: !6858, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7028)
!7027 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!7028 = !{!7029, !7030}
!7029 = !DILocalVariable(name: "v", arg: 1, scope: !7026, file: !7027, line: 26, type: !6860)
!7030 = !DILocalVariable(name: "i", arg: 2, scope: !7026, file: !7027, line: 26, type: !68)
!7031 = !DILocation(line: 26, column: 55, scope: !7026)
!7032 = !DILocation(line: 26, column: 62, scope: !7026)
!7033 = !DILocation(line: 28, column: 2, scope: !7026)
!7034 = !DILocation(line: 28, column: 2, scope: !7035)
!7035 = distinct !DILexicalBlock(scope: !7026, file: !7027, line: 28, column: 2)
!7036 = !DILocation(line: 29, column: 1, scope: !7026)
!7037 = !DISubprogram(name: "complete", scope: !1541, file: !1541, line: 118, type: !5650, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7038 = distinct !DISubprogram(name: "do_region", scope: !3, file: !3, line: 306, type: !7039, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7042)
!7039 = !DISubroutineType(types: !7040)
!7040 = !{null, !7041, !7, !5835, !5855, !6011, !305}
!7041 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !261)
!7042 = !{!7043, !7044, !7045, !7046, !7047, !7048, !7049, !7050, !7051, !7052, !7053, !7054, !7055, !7056, !7057, !7058, !7060, !7064, !7066, !7067, !7071, !7072, !7076}
!7043 = !DILocalVariable(name: "opf", arg: 1, scope: !7038, file: !3, line: 306, type: !7041)
!7044 = !DILocalVariable(name: "region", arg: 2, scope: !7038, file: !3, line: 306, type: !7)
!7045 = !DILocalVariable(name: "where", arg: 3, scope: !7038, file: !3, line: 307, type: !5835)
!7046 = !DILocalVariable(name: "dp", arg: 4, scope: !7038, file: !3, line: 307, type: !5855)
!7047 = !DILocalVariable(name: "io", arg: 5, scope: !7038, file: !3, line: 308, type: !6011)
!7048 = !DILocalVariable(name: "ioprio", arg: 6, scope: !7038, file: !3, line: 308, type: !305)
!7049 = !DILocalVariable(name: "bio", scope: !7038, file: !3, line: 310, type: !2216)
!7050 = !DILocalVariable(name: "page", scope: !7038, file: !3, line: 311, type: !269)
!7051 = !DILocalVariable(name: "len", scope: !7038, file: !3, line: 312, type: !260)
!7052 = !DILocalVariable(name: "offset", scope: !7038, file: !3, line: 313, type: !7)
!7053 = !DILocalVariable(name: "num_bvecs", scope: !7038, file: !3, line: 314, type: !7)
!7054 = !DILocalVariable(name: "remaining", scope: !7038, file: !3, line: 315, type: !1601)
!7055 = !DILocalVariable(name: "q", scope: !7038, file: !3, line: 316, type: !1212)
!7056 = !DILocalVariable(name: "num_sectors", scope: !7038, file: !3, line: 317, type: !1601)
!7057 = !DILocalVariable(name: "special_cmd_max_sectors", scope: !7038, file: !3, line: 318, type: !7)
!7058 = !DILocalVariable(name: "op", scope: !7038, file: !3, line: 319, type: !7059)
!7059 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !215)
!7060 = !DILocalVariable(name: "_r", scope: !7061, file: !3, line: 349, type: !1601)
!7061 = distinct !DILexicalBlock(scope: !7062, file: !3, line: 349, column: 29)
!7062 = distinct !DILexicalBlock(scope: !7063, file: !3, line: 343, column: 15)
!7063 = distinct !DILexicalBlock(scope: !7038, file: !3, line: 339, column: 5)
!7064 = !DILocalVariable(name: "__base", scope: !7065, file: !3, line: 349, type: !861)
!7065 = distinct !DILexicalBlock(scope: !7061, file: !3, line: 349, column: 29)
!7066 = !DILocalVariable(name: "__rem", scope: !7065, file: !3, line: 349, type: !861)
!7067 = !DILocalVariable(name: "__UNIQUE_ID___x530", scope: !7068, file: !3, line: 361, type: !1601)
!7068 = distinct !DILexicalBlock(scope: !7069, file: !3, line: 361, column: 18)
!7069 = distinct !DILexicalBlock(scope: !7070, file: !3, line: 360, column: 58)
!7070 = distinct !DILexicalBlock(scope: !7063, file: !3, line: 360, column: 7)
!7071 = !DILocalVariable(name: "__UNIQUE_ID___y531", scope: !7068, file: !3, line: 361, type: !1601)
!7072 = !DILocalVariable(name: "__UNIQUE_ID___x532", scope: !7073, file: !3, line: 370, type: !260)
!7073 = distinct !DILexicalBlock(scope: !7074, file: !3, line: 370, column: 11)
!7074 = distinct !DILexicalBlock(scope: !7075, file: !3, line: 365, column: 22)
!7075 = distinct !DILexicalBlock(scope: !7070, file: !3, line: 364, column: 10)
!7076 = !DILocalVariable(name: "__UNIQUE_ID___y533", scope: !7073, file: !3, line: 370, type: !260)
!7077 = !DILocation(line: 306, column: 39, scope: !7038)
!7078 = !DILocation(line: 306, column: 57, scope: !7038)
!7079 = !DILocation(line: 307, column: 30, scope: !7038)
!7080 = !DILocation(line: 307, column: 52, scope: !7038)
!7081 = !DILocation(line: 308, column: 20, scope: !7038)
!7082 = !DILocation(line: 308, column: 39, scope: !7038)
!7083 = !DILocation(line: 310, column: 2, scope: !7038)
!7084 = !DILocation(line: 310, column: 14, scope: !7038)
!7085 = !DILocation(line: 311, column: 2, scope: !7038)
!7086 = !DILocation(line: 311, column: 15, scope: !7038)
!7087 = !DILocation(line: 312, column: 2, scope: !7038)
!7088 = !DILocation(line: 312, column: 16, scope: !7038)
!7089 = !DILocation(line: 313, column: 2, scope: !7038)
!7090 = !DILocation(line: 313, column: 15, scope: !7038)
!7091 = !DILocation(line: 314, column: 2, scope: !7038)
!7092 = !DILocation(line: 314, column: 15, scope: !7038)
!7093 = !DILocation(line: 315, column: 2, scope: !7038)
!7094 = !DILocation(line: 315, column: 11, scope: !7038)
!7095 = !DILocation(line: 315, column: 23, scope: !7038)
!7096 = !DILocation(line: 315, column: 30, scope: !7038)
!7097 = !DILocation(line: 316, column: 2, scope: !7038)
!7098 = !DILocation(line: 316, column: 24, scope: !7038)
!7099 = !DILocation(line: 316, column: 43, scope: !7038)
!7100 = !DILocation(line: 316, column: 50, scope: !7038)
!7101 = !DILocation(line: 316, column: 28, scope: !7038)
!7102 = !DILocation(line: 317, column: 2, scope: !7038)
!7103 = !DILocation(line: 317, column: 11, scope: !7038)
!7104 = !DILocation(line: 318, column: 2, scope: !7038)
!7105 = !DILocation(line: 318, column: 15, scope: !7038)
!7106 = !DILocation(line: 319, column: 2, scope: !7038)
!7107 = !DILocation(line: 319, column: 20, scope: !7038)
!7108 = !DILocation(line: 319, column: 25, scope: !7038)
!7109 = !DILocation(line: 319, column: 29, scope: !7038)
!7110 = !DILocation(line: 324, column: 6, scope: !7111)
!7111 = distinct !DILexicalBlock(scope: !7038, file: !3, line: 324, column: 6)
!7112 = !DILocation(line: 324, column: 9, scope: !7111)
!7113 = !DILocation(line: 324, column: 6, scope: !7038)
!7114 = !DILocation(line: 325, column: 54, scope: !7111)
!7115 = !DILocation(line: 325, column: 61, scope: !7111)
!7116 = !DILocation(line: 325, column: 29, scope: !7111)
!7117 = !DILocation(line: 325, column: 27, scope: !7111)
!7118 = !DILocation(line: 325, column: 3, scope: !7111)
!7119 = !DILocation(line: 326, column: 11, scope: !7120)
!7120 = distinct !DILexicalBlock(scope: !7111, file: !3, line: 326, column: 11)
!7121 = !DILocation(line: 326, column: 14, scope: !7120)
!7122 = !DILocation(line: 326, column: 11, scope: !7111)
!7123 = !DILocation(line: 327, column: 29, scope: !7120)
!7124 = !DILocation(line: 327, column: 32, scope: !7120)
!7125 = !DILocation(line: 327, column: 39, scope: !7120)
!7126 = !DILocation(line: 327, column: 27, scope: !7120)
!7127 = !DILocation(line: 327, column: 3, scope: !7120)
!7128 = !DILocation(line: 328, column: 7, scope: !7129)
!7129 = distinct !DILexicalBlock(scope: !7038, file: !3, line: 328, column: 6)
!7130 = !DILocation(line: 328, column: 10, scope: !7129)
!7131 = !DILocation(line: 328, column: 28, scope: !7129)
!7132 = !DILocation(line: 328, column: 31, scope: !7129)
!7133 = !DILocation(line: 328, column: 34, scope: !7129)
!7134 = !DILocation(line: 328, column: 58, scope: !7129)
!7135 = !DILocation(line: 329, column: 6, scope: !7129)
!7136 = !DILocation(line: 329, column: 30, scope: !7129)
!7137 = !DILocation(line: 328, column: 6, scope: !7038)
!7138 = !DILocation(line: 330, column: 15, scope: !7139)
!7139 = distinct !DILexicalBlock(scope: !7129, file: !3, line: 329, column: 36)
!7140 = !DILocation(line: 330, column: 19, scope: !7139)
!7141 = !DILocation(line: 330, column: 3, scope: !7139)
!7142 = !DILocation(line: 331, column: 13, scope: !7139)
!7143 = !DILocation(line: 331, column: 17, scope: !7139)
!7144 = !DILocation(line: 331, column: 3, scope: !7139)
!7145 = !DILocation(line: 332, column: 3, scope: !7139)
!7146 = !DILocation(line: 339, column: 2, scope: !7038)
!7147 = !DILocation(line: 343, column: 11, scope: !7063)
!7148 = !DILocation(line: 343, column: 3, scope: !7063)
!7149 = !DILocation(line: 346, column: 14, scope: !7062)
!7150 = !DILocation(line: 347, column: 4, scope: !7062)
!7151 = !DILocation(line: 349, column: 29, scope: !7061)
!7152 = !DILocation(line: 349, column: 29, scope: !7065)
!7153 = !DILocation(line: 349, column: 29, scope: !7062)
!7154 = !DILocation(line: 349, column: 16, scope: !7062)
!7155 = !DILocation(line: 349, column: 14, scope: !7062)
!7156 = !DILocation(line: 351, column: 3, scope: !7062)
!7157 = !DILocation(line: 353, column: 26, scope: !7063)
!7158 = !DILocation(line: 353, column: 33, scope: !7063)
!7159 = !DILocation(line: 353, column: 39, scope: !7063)
!7160 = !DILocation(line: 353, column: 50, scope: !7063)
!7161 = !DILocation(line: 354, column: 13, scope: !7063)
!7162 = !DILocation(line: 354, column: 17, scope: !7063)
!7163 = !DILocation(line: 354, column: 25, scope: !7063)
!7164 = !DILocation(line: 353, column: 9, scope: !7063)
!7165 = !DILocation(line: 353, column: 7, scope: !7063)
!7166 = !DILocation(line: 355, column: 28, scope: !7063)
!7167 = !DILocation(line: 355, column: 35, scope: !7063)
!7168 = !DILocation(line: 355, column: 45, scope: !7063)
!7169 = !DILocation(line: 355, column: 52, scope: !7063)
!7170 = !DILocation(line: 355, column: 60, scope: !7063)
!7171 = !DILocation(line: 355, column: 58, scope: !7063)
!7172 = !DILocation(line: 355, column: 42, scope: !7063)
!7173 = !DILocation(line: 355, column: 3, scope: !7063)
!7174 = !DILocation(line: 355, column: 8, scope: !7063)
!7175 = !DILocation(line: 355, column: 16, scope: !7063)
!7176 = !DILocation(line: 355, column: 26, scope: !7063)
!7177 = !DILocation(line: 356, column: 3, scope: !7063)
!7178 = !DILocation(line: 356, column: 8, scope: !7063)
!7179 = !DILocation(line: 356, column: 18, scope: !7063)
!7180 = !DILocation(line: 357, column: 20, scope: !7063)
!7181 = !DILocation(line: 357, column: 3, scope: !7063)
!7182 = !DILocation(line: 357, column: 8, scope: !7063)
!7183 = !DILocation(line: 357, column: 18, scope: !7063)
!7184 = !DILocation(line: 358, column: 30, scope: !7063)
!7185 = !DILocation(line: 358, column: 35, scope: !7063)
!7186 = !DILocation(line: 358, column: 39, scope: !7063)
!7187 = !DILocation(line: 358, column: 3, scope: !7063)
!7188 = !DILocation(line: 360, column: 7, scope: !7070)
!7189 = !DILocation(line: 360, column: 10, scope: !7070)
!7190 = !DILocation(line: 360, column: 28, scope: !7070)
!7191 = !DILocation(line: 360, column: 31, scope: !7070)
!7192 = !DILocation(line: 360, column: 34, scope: !7070)
!7193 = !DILocation(line: 360, column: 7, scope: !7063)
!7194 = !DILocation(line: 361, column: 18, scope: !7068)
!7195 = !DILocation(line: 361, column: 18, scope: !7069)
!7196 = !DILocation(line: 361, column: 16, scope: !7069)
!7197 = !DILocation(line: 362, column: 27, scope: !7069)
!7198 = !DILocation(line: 362, column: 39, scope: !7069)
!7199 = !DILocation(line: 362, column: 4, scope: !7069)
!7200 = !DILocation(line: 362, column: 9, scope: !7069)
!7201 = !DILocation(line: 362, column: 17, scope: !7069)
!7202 = !DILocation(line: 362, column: 25, scope: !7069)
!7203 = !DILocation(line: 363, column: 17, scope: !7069)
!7204 = !DILocation(line: 363, column: 14, scope: !7069)
!7205 = !DILocation(line: 364, column: 3, scope: !7069)
!7206 = !DILocation(line: 365, column: 4, scope: !7075)
!7207 = !DILocation(line: 365, column: 11, scope: !7075)
!7208 = !DILocation(line: 369, column: 5, scope: !7074)
!7209 = !DILocation(line: 369, column: 9, scope: !7074)
!7210 = !DILocation(line: 369, column: 18, scope: !7074)
!7211 = !DILocation(line: 370, column: 11, scope: !7073)
!7212 = !DILocation(line: 370, column: 11, scope: !7074)
!7213 = !DILocation(line: 370, column: 9, scope: !7074)
!7214 = !DILocation(line: 371, column: 23, scope: !7215)
!7215 = distinct !DILexicalBlock(scope: !7074, file: !3, line: 371, column: 9)
!7216 = !DILocation(line: 371, column: 28, scope: !7215)
!7217 = !DILocation(line: 371, column: 34, scope: !7215)
!7218 = !DILocation(line: 371, column: 39, scope: !7215)
!7219 = !DILocation(line: 371, column: 10, scope: !7215)
!7220 = !DILocation(line: 371, column: 9, scope: !7074)
!7221 = !DILocation(line: 372, column: 6, scope: !7215)
!7222 = !DILocation(line: 374, column: 12, scope: !7074)
!7223 = !DILocation(line: 375, column: 28, scope: !7074)
!7224 = !DILocation(line: 375, column: 18, scope: !7074)
!7225 = !DILocation(line: 375, column: 15, scope: !7074)
!7226 = !DILocation(line: 376, column: 5, scope: !7074)
!7227 = !DILocation(line: 376, column: 9, scope: !7074)
!7228 = !DILocation(line: 376, column: 19, scope: !7074)
!7229 = distinct !{!7229, !7206, !7230, !6715, !6716}
!7230 = !DILocation(line: 377, column: 4, scope: !7075)
!7231 = !DILocation(line: 380, column: 15, scope: !7063)
!7232 = !DILocation(line: 380, column: 19, scope: !7063)
!7233 = !DILocation(line: 380, column: 3, scope: !7063)
!7234 = !DILocation(line: 381, column: 14, scope: !7063)
!7235 = !DILocation(line: 381, column: 3, scope: !7063)
!7236 = !DILocation(line: 382, column: 2, scope: !7063)
!7237 = !DILocation(line: 382, column: 11, scope: !7038)
!7238 = distinct !{!7238, !7146, !7239, !6715, !6716}
!7239 = !DILocation(line: 382, column: 20, scope: !7038)
!7240 = !DILocation(line: 383, column: 1, scope: !7038)
!7241 = distinct !DISubprogram(name: "dec_count", scope: !3, file: !3, line: 133, type: !7242, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7244)
!7242 = !DISubroutineType(types: !7243)
!7243 = !{null, !6011, !7, !1256}
!7244 = !{!7245, !7246, !7247}
!7245 = !DILocalVariable(name: "io", arg: 1, scope: !7241, file: !3, line: 133, type: !6011)
!7246 = !DILocalVariable(name: "region", arg: 2, scope: !7241, file: !3, line: 133, type: !7)
!7247 = !DILocalVariable(name: "error", arg: 3, scope: !7241, file: !3, line: 133, type: !1256)
!7248 = !DILocation(line: 133, column: 34, scope: !7241)
!7249 = !DILocation(line: 133, column: 51, scope: !7241)
!7250 = !DILocation(line: 133, column: 72, scope: !7241)
!7251 = !DILocation(line: 135, column: 6, scope: !7252)
!7252 = distinct !DILexicalBlock(scope: !7241, file: !3, line: 135, column: 6)
!7253 = !DILocation(line: 135, column: 6, scope: !7241)
!7254 = !DILocation(line: 136, column: 11, scope: !7252)
!7255 = !DILocation(line: 136, column: 20, scope: !7252)
!7256 = !DILocation(line: 136, column: 24, scope: !7252)
!7257 = !DILocation(line: 136, column: 3, scope: !7252)
!7258 = !DILocation(line: 138, column: 27, scope: !7259)
!7259 = distinct !DILexicalBlock(scope: !7241, file: !3, line: 138, column: 6)
!7260 = !DILocation(line: 138, column: 31, scope: !7259)
!7261 = !DILocation(line: 138, column: 6, scope: !7259)
!7262 = !DILocation(line: 138, column: 6, scope: !7241)
!7263 = !DILocation(line: 139, column: 15, scope: !7259)
!7264 = !DILocation(line: 139, column: 3, scope: !7259)
!7265 = !DILocation(line: 140, column: 1, scope: !7241)
!7266 = distinct !DISubprogram(name: "bdev_get_queue", scope: !164, file: !164, line: 871, type: !7267, scopeLine: 872, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7269)
!7267 = !DISubroutineType(types: !7268)
!7268 = !{!1212, !1597}
!7269 = !{!7270}
!7270 = !DILocalVariable(name: "bdev", arg: 1, scope: !7266, file: !164, line: 871, type: !1597)
!7271 = !DILocation(line: 871, column: 73, scope: !7266)
!7272 = !DILocation(line: 873, column: 9, scope: !7266)
!7273 = !DILocation(line: 873, column: 15, scope: !7266)
!7274 = !DILocation(line: 873, column: 2, scope: !7266)
!7275 = distinct !DISubprogram(name: "bdev_max_discard_sectors", scope: !164, file: !164, line: 1217, type: !7276, scopeLine: 1218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7278)
!7276 = !DISubroutineType(types: !7277)
!7277 = !{!7, !1597}
!7278 = !{!7279}
!7279 = !DILocalVariable(name: "bdev", arg: 1, scope: !7275, file: !164, line: 1217, type: !1597)
!7280 = !DILocation(line: 1217, column: 74, scope: !7275)
!7281 = !DILocation(line: 1219, column: 24, scope: !7275)
!7282 = !DILocation(line: 1219, column: 9, scope: !7275)
!7283 = !DILocation(line: 1219, column: 31, scope: !7275)
!7284 = !DILocation(line: 1219, column: 38, scope: !7275)
!7285 = !DILocation(line: 1219, column: 2, scope: !7275)
!7286 = distinct !DISubprogram(name: "atomic_inc", scope: !6857, file: !6857, line: 433, type: !7287, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7289)
!7287 = !DISubroutineType(types: !7288)
!7288 = !{null, !6860}
!7289 = !{!7290}
!7290 = !DILocalVariable(name: "v", arg: 1, scope: !7286, file: !6857, line: 433, type: !6860)
!7291 = !DILocation(line: 433, column: 22, scope: !7286)
!7292 = !DILocation(line: 435, column: 31, scope: !7286)
!7293 = !DILocation(line: 435, column: 2, scope: !7286)
!7294 = !DILocation(line: 436, column: 17, scope: !7286)
!7295 = !DILocation(line: 436, column: 2, scope: !7286)
!7296 = !DILocation(line: 437, column: 1, scope: !7286)
!7297 = distinct !DISubprogram(name: "bio_max_segs", scope: !188, file: !188, line: 17, type: !7298, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7300)
!7298 = !DISubroutineType(types: !7299)
!7299 = !{!7, !7}
!7300 = !{!7301, !7302, !7304}
!7301 = !DILocalVariable(name: "nr_segs", arg: 1, scope: !7297, file: !188, line: 17, type: !7)
!7302 = !DILocalVariable(name: "__UNIQUE_ID___x317", scope: !7303, file: !188, line: 19, type: !7)
!7303 = distinct !DILexicalBlock(scope: !7297, file: !188, line: 19, column: 9)
!7304 = !DILocalVariable(name: "__UNIQUE_ID___y318", scope: !7303, file: !188, line: 19, type: !7)
!7305 = !DILocation(line: 17, column: 54, scope: !7297)
!7306 = !DILocation(line: 19, column: 9, scope: !7303)
!7307 = !DILocation(line: 19, column: 9, scope: !7297)
!7308 = !DILocation(line: 19, column: 2, scope: !7297)
!7309 = !DISubprogram(name: "bio_alloc_bioset", scope: !188, file: !188, line: 419, type: !7310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7310 = !DISubroutineType(types: !7311)
!7311 = !{!2216, !1597, !305, !261, !257, !2254}
!7312 = distinct !DISubprogram(name: "endio", scope: !3, file: !3, line: 142, type: !2214, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7313)
!7313 = !{!7314, !7315, !7316, !7317}
!7314 = !DILocalVariable(name: "bio", arg: 1, scope: !7312, file: !3, line: 142, type: !2216)
!7315 = !DILocalVariable(name: "io", scope: !7312, file: !3, line: 144, type: !6011)
!7316 = !DILocalVariable(name: "region", scope: !7312, file: !3, line: 145, type: !7)
!7317 = !DILocalVariable(name: "error", scope: !7312, file: !3, line: 146, type: !1256)
!7318 = !DILocation(line: 142, column: 31, scope: !7312)
!7319 = !DILocation(line: 144, column: 2, scope: !7312)
!7320 = !DILocation(line: 144, column: 13, scope: !7312)
!7321 = !DILocation(line: 145, column: 2, scope: !7312)
!7322 = !DILocation(line: 145, column: 15, scope: !7312)
!7323 = !DILocation(line: 146, column: 2, scope: !7312)
!7324 = !DILocation(line: 146, column: 15, scope: !7312)
!7325 = !DILocation(line: 148, column: 6, scope: !7326)
!7326 = distinct !DILexicalBlock(scope: !7312, file: !3, line: 148, column: 6)
!7327 = !DILocation(line: 148, column: 11, scope: !7326)
!7328 = !DILocation(line: 148, column: 21, scope: !7326)
!7329 = !DILocation(line: 148, column: 24, scope: !7326)
!7330 = !DILocation(line: 148, column: 42, scope: !7326)
!7331 = !DILocation(line: 148, column: 6, scope: !7312)
!7332 = !DILocation(line: 149, column: 17, scope: !7326)
!7333 = !DILocation(line: 149, column: 3, scope: !7326)
!7334 = !DILocation(line: 154, column: 34, scope: !7312)
!7335 = !DILocation(line: 154, column: 2, scope: !7312)
!7336 = !DILocation(line: 156, column: 10, scope: !7312)
!7337 = !DILocation(line: 156, column: 15, scope: !7312)
!7338 = !DILocation(line: 156, column: 8, scope: !7312)
!7339 = !DILocation(line: 157, column: 10, scope: !7312)
!7340 = !DILocation(line: 157, column: 2, scope: !7312)
!7341 = !DILocation(line: 159, column: 12, scope: !7312)
!7342 = !DILocation(line: 159, column: 16, scope: !7312)
!7343 = !DILocation(line: 159, column: 24, scope: !7312)
!7344 = !DILocation(line: 159, column: 2, scope: !7312)
!7345 = !DILocation(line: 160, column: 1, scope: !7312)
!7346 = distinct !DISubprogram(name: "store_io_and_region_in_bio", scope: !3, file: !3, line: 93, type: !7347, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7349)
!7347 = !DISubroutineType(types: !7348)
!7348 = !{null, !2216, !6011, !7}
!7349 = !{!7350, !7351, !7352}
!7350 = !DILocalVariable(name: "bio", arg: 1, scope: !7346, file: !3, line: 93, type: !2216)
!7351 = !DILocalVariable(name: "io", arg: 2, scope: !7346, file: !3, line: 93, type: !6011)
!7352 = !DILocalVariable(name: "region", arg: 3, scope: !7346, file: !3, line: 94, type: !7)
!7353 = !DILocation(line: 93, column: 52, scope: !7346)
!7354 = !DILocation(line: 93, column: 68, scope: !7346)
!7355 = !DILocation(line: 94, column: 25, scope: !7346)
!7356 = !DILocation(line: 96, column: 6, scope: !7357)
!7357 = distinct !DILexicalBlock(scope: !7346, file: !3, line: 96, column: 6)
!7358 = !DILocation(line: 96, column: 6, scope: !7346)
!7359 = !DILocation(line: 97, column: 3, scope: !7360)
!7360 = distinct !DILexicalBlock(scope: !7361, file: !3, line: 97, column: 3)
!7361 = distinct !DILexicalBlock(scope: !7357, file: !3, line: 96, column: 67)
!7362 = !DILocation(line: 97, column: 3, scope: !7363)
!7363 = distinct !DILexicalBlock(scope: !7360, file: !3, line: 97, column: 3)
!7364 = !DILocation(line: 98, column: 3, scope: !7361)
!7365 = !DILocation(line: 98, column: 3, scope: !7366)
!7366 = distinct !DILexicalBlock(scope: !7361, file: !3, line: 98, column: 3)
!7367 = !DILocation(line: 98, column: 3, scope: !7368)
!7368 = distinct !DILexicalBlock(scope: !7366, file: !3, line: 98, column: 3)
!7369 = !DILocation(line: 98, column: 3, scope: !7370)
!7370 = distinct !DILexicalBlock(scope: !7366, file: !3, line: 98, column: 3)
!7371 = !{i64 2157524238, i64 2157524267, i64 2157524313, i64 2157524371, i64 2157524425, i64 2157524479, i64 2157524534, i64 2157524565}
!7372 = !DILocation(line: 99, column: 2, scope: !7361)
!7373 = !DILocation(line: 101, column: 44, scope: !7346)
!7374 = !DILocation(line: 101, column: 29, scope: !7346)
!7375 = !DILocation(line: 101, column: 49, scope: !7346)
!7376 = !DILocation(line: 101, column: 47, scope: !7346)
!7377 = !DILocation(line: 101, column: 20, scope: !7346)
!7378 = !DILocation(line: 101, column: 2, scope: !7346)
!7379 = !DILocation(line: 101, column: 7, scope: !7346)
!7380 = !DILocation(line: 101, column: 18, scope: !7346)
!7381 = !DILocation(line: 102, column: 1, scope: !7346)
!7382 = distinct !DISubprogram(name: "to_bytes", scope: !7383, file: !7383, line: 716, type: !7384, scopeLine: 717, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7386)
!7383 = !DIFile(filename: "./include/linux/device-mapper.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f74e5b83b3aea50b63334d71d77693b6")
!7384 = !DISubroutineType(types: !7385)
!7385 = !{!260, !1601}
!7386 = !{!7387}
!7387 = !DILocalVariable(name: "n", arg: 1, scope: !7382, file: !7383, line: 716, type: !1601)
!7388 = !DILocation(line: 716, column: 47, scope: !7382)
!7389 = !DILocation(line: 718, column: 10, scope: !7382)
!7390 = !DILocation(line: 718, column: 12, scope: !7382)
!7391 = !DILocation(line: 718, column: 2, scope: !7382)
!7392 = !DISubprogram(name: "bio_add_page", scope: !188, file: !188, line: 476, type: !7393, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7393 = !DISubroutineType(types: !7394)
!7394 = !{!68, !2216, !269, !7, !7}
!7395 = distinct !DISubprogram(name: "to_sector", scope: !7383, file: !7383, line: 711, type: !7396, scopeLine: 712, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7398)
!7396 = !DISubroutineType(types: !7397)
!7397 = !{!1601, !378}
!7398 = !{!7399}
!7399 = !DILocalVariable(name: "n", arg: 1, scope: !7395, file: !7383, line: 711, type: !378)
!7400 = !DILocation(line: 711, column: 53, scope: !7395)
!7401 = !DILocation(line: 713, column: 10, scope: !7395)
!7402 = !DILocation(line: 713, column: 12, scope: !7395)
!7403 = !DILocation(line: 713, column: 2, scope: !7395)
!7404 = !DISubprogram(name: "submit_bio", scope: !188, file: !188, line: 438, type: !2214, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7405 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !6977, file: !6977, line: 94, type: !6978, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7406)
!7406 = !{!7407, !7408}
!7407 = !DILocalVariable(name: "v", arg: 1, scope: !7405, file: !6977, line: 94, type: !6980)
!7408 = !DILocalVariable(name: "size", arg: 2, scope: !7405, file: !6977, line: 94, type: !633)
!7409 = !DILocation(line: 94, column: 79, scope: !7405)
!7410 = !DILocation(line: 94, column: 89, scope: !7405)
!7411 = !DILocation(line: 96, column: 20, scope: !7405)
!7412 = !DILocation(line: 96, column: 23, scope: !7405)
!7413 = !DILocation(line: 96, column: 2, scope: !7405)
!7414 = !DILocation(line: 97, column: 2, scope: !7405)
!7415 = !DILocation(line: 98, column: 1, scope: !7405)
!7416 = distinct !DISubprogram(name: "raw_atomic_inc", scope: !6994, file: !6994, line: 976, type: !7287, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7417)
!7417 = !{!7418}
!7418 = !DILocalVariable(name: "v", arg: 1, scope: !7416, file: !6994, line: 976, type: !6860)
!7419 = !DILocation(line: 976, column: 26, scope: !7416)
!7420 = !DILocation(line: 979, column: 18, scope: !7416)
!7421 = !DILocation(line: 979, column: 2, scope: !7416)
!7422 = !DILocation(line: 983, column: 1, scope: !7416)
!7423 = distinct !DISubprogram(name: "arch_atomic_inc", scope: !7027, file: !7027, line: 51, type: !7287, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7424)
!7424 = !{!7425}
!7425 = !DILocalVariable(name: "v", arg: 1, scope: !7423, file: !7027, line: 51, type: !6860)
!7426 = !DILocation(line: 51, column: 55, scope: !7423)
!7427 = !DILocation(line: 54, column: 16, scope: !7423)
!7428 = !DILocation(line: 54, column: 19, scope: !7423)
!7429 = !DILocation(line: 53, column: 2, scope: !7423)
!7430 = !{i64 2148436218, i64 2148436257, i64 2148436278, i64 2148436315, i64 2148436338, i64 2148436208}
!7431 = !DILocation(line: 55, column: 1, scope: !7423)
!7432 = distinct !DISubprogram(name: "bio_op", scope: !216, file: !216, line: 475, type: !7433, scopeLine: 476, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7437)
!7433 = !DISubroutineType(types: !7434)
!7434 = !{!215, !7435}
!7435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7436, size: 64)
!7436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2217)
!7437 = !{!7438}
!7438 = !DILocalVariable(name: "bio", arg: 1, scope: !7432, file: !216, line: 475, type: !7435)
!7439 = !DILocation(line: 475, column: 52, scope: !7432)
!7440 = !DILocation(line: 477, column: 9, scope: !7432)
!7441 = !DILocation(line: 477, column: 14, scope: !7432)
!7442 = !DILocation(line: 477, column: 21, scope: !7432)
!7443 = !DILocation(line: 477, column: 2, scope: !7432)
!7444 = distinct !DISubprogram(name: "zero_fill_bio", scope: !188, file: !188, line: 501, type: !2214, scopeLine: 502, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7445)
!7445 = !{!7446}
!7446 = !DILocalVariable(name: "bio", arg: 1, scope: !7444, file: !188, line: 501, type: !2216)
!7447 = !DILocation(line: 501, column: 46, scope: !7444)
!7448 = !DILocation(line: 503, column: 21, scope: !7444)
!7449 = !DILocation(line: 503, column: 26, scope: !7444)
!7450 = !DILocation(line: 503, column: 31, scope: !7444)
!7451 = !DILocation(line: 503, column: 2, scope: !7444)
!7452 = !DILocation(line: 504, column: 1, scope: !7444)
!7453 = distinct !DISubprogram(name: "retrieve_io_and_region_from_bio", scope: !3, file: !3, line: 104, type: !7454, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7457)
!7454 = !DISubroutineType(types: !7455)
!7455 = !{null, !2216, !7456, !1332}
!7456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6011, size: 64)
!7457 = !{!7458, !7459, !7460, !7461}
!7458 = !DILocalVariable(name: "bio", arg: 1, scope: !7453, file: !3, line: 104, type: !2216)
!7459 = !DILocalVariable(name: "io", arg: 2, scope: !7453, file: !3, line: 104, type: !7456)
!7460 = !DILocalVariable(name: "region", arg: 3, scope: !7453, file: !3, line: 105, type: !1332)
!7461 = !DILocalVariable(name: "val", scope: !7453, file: !3, line: 107, type: !260)
!7462 = !DILocation(line: 104, column: 57, scope: !7453)
!7463 = !DILocation(line: 104, column: 74, scope: !7453)
!7464 = !DILocation(line: 105, column: 26, scope: !7453)
!7465 = !DILocation(line: 107, column: 2, scope: !7453)
!7466 = !DILocation(line: 107, column: 16, scope: !7453)
!7467 = !DILocation(line: 107, column: 37, scope: !7453)
!7468 = !DILocation(line: 107, column: 42, scope: !7453)
!7469 = !DILocation(line: 107, column: 22, scope: !7453)
!7470 = !DILocation(line: 109, column: 17, scope: !7453)
!7471 = !DILocation(line: 109, column: 21, scope: !7453)
!7472 = !DILocation(line: 109, column: 8, scope: !7453)
!7473 = !DILocation(line: 109, column: 3, scope: !7453)
!7474 = !DILocation(line: 109, column: 6, scope: !7453)
!7475 = !DILocation(line: 110, column: 12, scope: !7453)
!7476 = !DILocation(line: 110, column: 16, scope: !7453)
!7477 = !DILocation(line: 110, column: 3, scope: !7453)
!7478 = !DILocation(line: 110, column: 10, scope: !7453)
!7479 = !DILocation(line: 111, column: 1, scope: !7453)
!7480 = !DISubprogram(name: "bio_put", scope: !188, file: !188, line: 423, type: !2214, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7481 = !DISubprogram(name: "zero_fill_bio_iter", scope: !188, file: !188, line: 499, type: !7482, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7482 = !DISubroutineType(types: !7483)
!7483 = !{null, !2216, !2227}
!7484 = !DISubprogram(name: "_printk", scope: !7485, file: !7485, line: 153, type: !7486, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7485 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!7486 = !DISubroutineType(types: !7487)
!7487 = !{!68, !460, null}
!7488 = distinct !DISubprogram(name: "set_bit", scope: !7489, file: !7489, line: 26, type: !7490, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7494)
!7489 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!7490 = !DISubroutineType(types: !7491)
!7491 = !{null, !623, !7492}
!7492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7493, size: 64)
!7493 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !260)
!7494 = !{!7495, !7496}
!7495 = !DILocalVariable(name: "nr", arg: 1, scope: !7488, file: !7489, line: 26, type: !623)
!7496 = !DILocalVariable(name: "addr", arg: 2, scope: !7488, file: !7489, line: 26, type: !7492)
!7497 = !DILocation(line: 26, column: 42, scope: !7488)
!7498 = !DILocation(line: 26, column: 70, scope: !7488)
!7499 = !DILocation(line: 28, column: 26, scope: !7488)
!7500 = !DILocation(line: 28, column: 33, scope: !7488)
!7501 = !DILocation(line: 28, column: 31, scope: !7488)
!7502 = !DILocation(line: 28, column: 2, scope: !7488)
!7503 = !DILocation(line: 29, column: 15, scope: !7488)
!7504 = !DILocation(line: 29, column: 19, scope: !7488)
!7505 = !DILocation(line: 29, column: 2, scope: !7488)
!7506 = !DILocation(line: 30, column: 1, scope: !7488)
!7507 = distinct !DISubprogram(name: "atomic_dec_and_test", scope: !6857, file: !6857, line: 1372, type: !7508, scopeLine: 1373, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7510)
!7508 = !DISubroutineType(types: !7509)
!7509 = !{!896, !6860}
!7510 = !{!7511}
!7511 = !DILocalVariable(name: "v", arg: 1, scope: !7507, file: !6857, line: 1372, type: !6860)
!7512 = !DILocation(line: 1372, column: 31, scope: !7507)
!7513 = !DILocation(line: 1374, column: 2, scope: !7507)
!7514 = !DILocation(line: 1374, column: 2, scope: !7515)
!7515 = distinct !DILexicalBlock(scope: !7507, file: !6857, line: 1374, column: 2)
!7516 = !DILocation(line: 1375, column: 31, scope: !7507)
!7517 = !DILocation(line: 1375, column: 2, scope: !7507)
!7518 = !DILocation(line: 1376, column: 33, scope: !7507)
!7519 = !DILocation(line: 1376, column: 9, scope: !7507)
!7520 = !DILocation(line: 1376, column: 2, scope: !7507)
!7521 = distinct !DISubprogram(name: "complete_io", scope: !3, file: !3, line: 119, type: !7522, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7524)
!7522 = !DISubroutineType(types: !7523)
!7523 = !{null, !6011}
!7524 = !{!7525, !7526, !7527, !7528}
!7525 = !DILocalVariable(name: "io", arg: 1, scope: !7521, file: !3, line: 119, type: !6011)
!7526 = !DILocalVariable(name: "error_bits", scope: !7521, file: !3, line: 121, type: !260)
!7527 = !DILocalVariable(name: "fn", scope: !7521, file: !3, line: 122, type: !5829)
!7528 = !DILocalVariable(name: "context", scope: !7521, file: !3, line: 123, type: !259)
!7529 = !DILocation(line: 119, column: 36, scope: !7521)
!7530 = !DILocation(line: 121, column: 2, scope: !7521)
!7531 = !DILocation(line: 121, column: 16, scope: !7521)
!7532 = !DILocation(line: 121, column: 29, scope: !7521)
!7533 = !DILocation(line: 121, column: 33, scope: !7521)
!7534 = !DILocation(line: 122, column: 2, scope: !7521)
!7535 = !DILocation(line: 122, column: 15, scope: !7521)
!7536 = !DILocation(line: 122, column: 20, scope: !7521)
!7537 = !DILocation(line: 122, column: 24, scope: !7521)
!7538 = !DILocation(line: 123, column: 2, scope: !7521)
!7539 = !DILocation(line: 123, column: 8, scope: !7521)
!7540 = !DILocation(line: 123, column: 18, scope: !7521)
!7541 = !DILocation(line: 123, column: 22, scope: !7521)
!7542 = !DILocation(line: 125, column: 6, scope: !7543)
!7543 = distinct !DILexicalBlock(scope: !7521, file: !3, line: 125, column: 6)
!7544 = !DILocation(line: 125, column: 10, scope: !7543)
!7545 = !DILocation(line: 125, column: 6, scope: !7521)
!7546 = !DILocation(line: 126, column: 32, scope: !7543)
!7547 = !DILocation(line: 126, column: 36, scope: !7543)
!7548 = !DILocation(line: 127, column: 11, scope: !7543)
!7549 = !DILocation(line: 127, column: 15, scope: !7543)
!7550 = !DILocation(line: 126, column: 3, scope: !7543)
!7551 = !DILocation(line: 129, column: 15, scope: !7521)
!7552 = !DILocation(line: 129, column: 20, scope: !7521)
!7553 = !DILocation(line: 129, column: 24, scope: !7521)
!7554 = !DILocation(line: 129, column: 32, scope: !7521)
!7555 = !DILocation(line: 129, column: 2, scope: !7521)
!7556 = !DILocation(line: 130, column: 2, scope: !7521)
!7557 = !DILocation(line: 130, column: 5, scope: !7521)
!7558 = !DILocation(line: 130, column: 17, scope: !7521)
!7559 = !DILocation(line: 131, column: 1, scope: !7521)
!7560 = distinct !DISubprogram(name: "arch_set_bit", scope: !7561, file: !7561, line: 52, type: !7490, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7562)
!7561 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!7562 = !{!7563, !7564}
!7563 = !DILocalVariable(name: "nr", arg: 1, scope: !7560, file: !7561, line: 52, type: !623)
!7564 = !DILocalVariable(name: "addr", arg: 2, scope: !7560, file: !7561, line: 52, type: !7492)
!7565 = !DILocation(line: 52, column: 19, scope: !7560)
!7566 = !DILocation(line: 52, column: 47, scope: !7560)
!7567 = !DILocation(line: 54, column: 27, scope: !7568)
!7568 = distinct !DILexicalBlock(scope: !7560, file: !7561, line: 54, column: 6)
!7569 = !DILocation(line: 54, column: 6, scope: !7568)
!7570 = !DILocation(line: 54, column: 6, scope: !7560)
!7571 = !DILocation(line: 56, column: 6, scope: !7572)
!7572 = distinct !DILexicalBlock(scope: !7568, file: !7561, line: 54, column: 32)
!7573 = !DILocation(line: 57, column: 12, scope: !7572)
!7574 = !DILocation(line: 55, column: 3, scope: !7572)
!7575 = !{i64 2147923398, i64 2147923437, i64 2147923458, i64 2147923495, i64 2147923518, i64 2147923388}
!7576 = !DILocation(line: 59, column: 2, scope: !7572)
!7577 = !DILocation(line: 61, column: 8, scope: !7578)
!7578 = distinct !DILexicalBlock(scope: !7568, file: !7561, line: 59, column: 9)
!7579 = !DILocation(line: 61, column: 32, scope: !7578)
!7580 = !DILocation(line: 60, column: 3, scope: !7578)
!7581 = !{i64 2147923683, i64 2147923722, i64 2147923743, i64 2147923780, i64 2147923803, i64 2147923673}
!7582 = !DILocation(line: 63, column: 1, scope: !7560)
!7583 = distinct !DISubprogram(name: "raw_atomic_dec_and_test", scope: !6994, file: !6994, line: 2254, type: !7508, scopeLine: 2255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7584)
!7584 = !{!7585}
!7585 = !DILocalVariable(name: "v", arg: 1, scope: !7583, file: !6994, line: 2254, type: !6860)
!7586 = !DILocation(line: 2254, column: 35, scope: !7583)
!7587 = !DILocation(line: 2257, column: 34, scope: !7583)
!7588 = !DILocation(line: 2257, column: 9, scope: !7583)
!7589 = !DILocation(line: 2257, column: 2, scope: !7583)
!7590 = distinct !DISubprogram(name: "arch_atomic_dec_and_test", scope: !7027, file: !7027, line: 65, type: !7508, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7591)
!7591 = !{!7592, !7593}
!7592 = !DILocalVariable(name: "v", arg: 1, scope: !7590, file: !7027, line: 65, type: !6860)
!7593 = !DILocalVariable(name: "c", scope: !7594, file: !7027, line: 67, type: !896)
!7594 = distinct !DILexicalBlock(scope: !7590, file: !7027, line: 67, column: 9)
!7595 = !DILocation(line: 65, column: 64, scope: !7590)
!7596 = !DILocation(line: 67, column: 9, scope: !7594)
!7597 = !{i64 2148438330, i64 2148438369, i64 2148438390, i64 2148438427, i64 2148438450, i64 2148438459, i64 2148438533}
!7598 = !DILocation(line: 67, column: 9, scope: !7590)
!7599 = !DILocation(line: 67, column: 2, scope: !7590)
!7600 = distinct !DISubprogram(name: "invalidate_kernel_vmap_range", scope: !6494, file: !6494, line: 195, type: !6495, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7601)
!7601 = !{!7602, !7603}
!7602 = !DILocalVariable(name: "vaddr", arg: 1, scope: !7600, file: !6494, line: 195, type: !259)
!7603 = !DILocalVariable(name: "size", arg: 2, scope: !7600, file: !6494, line: 195, type: !68)
!7604 = !DILocation(line: 195, column: 55, scope: !7600)
!7605 = !DILocation(line: 195, column: 66, scope: !7600)
!7606 = !DILocation(line: 197, column: 1, scope: !7600)
!7607 = !DISubprogram(name: "mempool_free", scope: !2267, file: !2267, line: 54, type: !7608, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7608 = !DISubroutineType(types: !7609)
!7609 = !{null, !259, !5761}
