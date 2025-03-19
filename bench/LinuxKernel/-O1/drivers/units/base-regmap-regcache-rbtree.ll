; ModuleID = 'drivers/base/regmap/regcache-rbtree.c'
source_filename = "drivers/base/regmap/regcache-rbtree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regcache_ops = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.regmap = type { %union.anon.13, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.regmap_format, ptr, ptr, ptr, i8, %struct.spinlock, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, i8, ptr, ptr, i32, i32, i32, %struct.list_head, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i64, i64, i32, i32, i32, i8, ptr, i32, i32, i32, i32, i32, i8, i8, i8, ptr, ptr, ptr, i8, i8, ptr, i32, i8, i8, i8, i64, i64, %struct.rb_root, ptr, ptr, i8 }
%union.anon.13 = type { %struct.mutex }
%struct.regmap_format = type { i64, i64, i64, i64, i8, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.regcache_rbtree_ctx = type { %struct.rb_root, ptr }
%struct.reg_default = type { i32, i32 }
%struct.regcache_rbtree_node = type { ptr, ptr, i32, i32, %struct.rb_node }
%struct.rb_node = type { i64, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.16, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.17, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.18, ptr, %struct.address_space, %struct.list_head, %union.anon.19, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.16 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.17 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.18 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.19 = type { ptr }
%struct.seq_file = type { ptr, i64, i64, i64, i64, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.regmap_range = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"rbtree\00", align 1, !dbg !0
@regcache_rbtree_ops = hidden global %struct.regcache_ops { ptr @.str, i32 1, ptr @regcache_rbtree_init, ptr @regcache_rbtree_exit, ptr @rbtree_debugfs_init, ptr @regcache_rbtree_read, ptr @regcache_rbtree_write, ptr @regcache_rbtree_sync, ptr @regcache_rbtree_drop }, align 8, !dbg !7
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !3966
@rbtree_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i64 0, ptr @rbtree_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !3971
@.str.2 = private unnamed_addr constant [12 x i8] c"%x-%x (%d)\0A\00", align 1, !dbg !3973
@.str.3 = private unnamed_addr constant [62 x i8] c"%d nodes, %d registers, average %d registers, used %zu bytes\0A\00", align 1, !dbg !3976

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @regcache_rbtree_init(ptr noundef %map) #0 align 16 !dbg !4682 {
entry:
  %retval = alloca i32, align 4
  %map.addr = alloca ptr, align 8
  %rbtree_ctx = alloca ptr, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %struct.rb_root, align 8
  store ptr %map, ptr %map.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !4684, metadata !DIExpression()), !dbg !4694
  call void @llvm.lifetime.start.p0(i64 8, ptr %rbtree_ctx) #18, !dbg !4695
  call void @llvm.dbg.declare(metadata ptr %rbtree_ctx, metadata !4685, metadata !DIExpression()), !dbg !4696
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #18, !dbg !4697
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4691, metadata !DIExpression()), !dbg !4698
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #18, !dbg !4699
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4692, metadata !DIExpression()), !dbg !4700
  %call = call noalias ptr @kmalloc(i64 noundef 16, i32 noundef 3264) #19, !dbg !4701
  %0 = load ptr, ptr %map.addr, align 8, !dbg !4702
  %cache = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 63, !dbg !4703
  store ptr %call, ptr %cache, align 8, !dbg !4704
  %1 = load ptr, ptr %map.addr, align 8, !dbg !4705
  %cache1 = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 63, !dbg !4707
  %2 = load ptr, ptr %cache1, align 8, !dbg !4707
  %tobool = icmp ne ptr %2, null, !dbg !4705
  br i1 %tobool, label %if.end, label %if.then, !dbg !4708

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !4709
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4709

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %map.addr, align 8, !dbg !4710
  %cache2 = getelementptr inbounds %struct.regmap, ptr %3, i32 0, i32 63, !dbg !4711
  %4 = load ptr, ptr %cache2, align 8, !dbg !4711
  store ptr %4, ptr %rbtree_ctx, align 8, !dbg !4712
  %5 = load ptr, ptr %rbtree_ctx, align 8, !dbg !4713
  %root = getelementptr inbounds %struct.regcache_rbtree_ctx, ptr %5, i32 0, i32 0, !dbg !4714
  %rb_node = getelementptr inbounds %struct.rb_root, ptr %.compoundliteral, i32 0, i32 0, !dbg !4715
  store ptr null, ptr %rb_node, align 8, !dbg !4715
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %root, ptr align 8 %.compoundliteral, i64 8, i1 false), !dbg !4715
  %6 = load ptr, ptr %rbtree_ctx, align 8, !dbg !4716
  %cached_rbnode = getelementptr inbounds %struct.regcache_rbtree_ctx, ptr %6, i32 0, i32 1, !dbg !4717
  store ptr null, ptr %cached_rbnode, align 8, !dbg !4718
  store i32 0, ptr %i, align 4, !dbg !4719
  br label %for.cond, !dbg !4721

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, ptr %i, align 4, !dbg !4722
  %8 = load ptr, ptr %map.addr, align 8, !dbg !4724
  %num_reg_defaults = getelementptr inbounds %struct.regmap, ptr %8, i32 0, i32 56, !dbg !4725
  %9 = load i32, ptr %num_reg_defaults, align 4, !dbg !4725
  %cmp = icmp ult i32 %7, %9, !dbg !4726
  br i1 %cmp, label %for.body, label %for.end, !dbg !4727

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %map.addr, align 8, !dbg !4728
  %11 = load ptr, ptr %map.addr, align 8, !dbg !4730
  %reg_defaults = getelementptr inbounds %struct.regmap, ptr %11, i32 0, i32 61, !dbg !4731
  %12 = load ptr, ptr %reg_defaults, align 8, !dbg !4731
  %13 = load i32, ptr %i, align 4, !dbg !4732
  %idxprom = sext i32 %13 to i64, !dbg !4730
  %arrayidx = getelementptr %struct.reg_default, ptr %12, i64 %idxprom, !dbg !4730
  %reg = getelementptr inbounds %struct.reg_default, ptr %arrayidx, i32 0, i32 0, !dbg !4733
  %14 = load i32, ptr %reg, align 4, !dbg !4733
  %15 = load ptr, ptr %map.addr, align 8, !dbg !4734
  %reg_defaults3 = getelementptr inbounds %struct.regmap, ptr %15, i32 0, i32 61, !dbg !4735
  %16 = load ptr, ptr %reg_defaults3, align 8, !dbg !4735
  %17 = load i32, ptr %i, align 4, !dbg !4736
  %idxprom4 = sext i32 %17 to i64, !dbg !4734
  %arrayidx5 = getelementptr %struct.reg_default, ptr %16, i64 %idxprom4, !dbg !4734
  %def = getelementptr inbounds %struct.reg_default, ptr %arrayidx5, i32 0, i32 1, !dbg !4737
  %18 = load i32, ptr %def, align 4, !dbg !4737
  %call6 = call i32 @regcache_rbtree_write(ptr noundef %10, i32 noundef %14, i32 noundef %18) #20, !dbg !4738
  store i32 %call6, ptr %ret, align 4, !dbg !4739
  %19 = load i32, ptr %ret, align 4, !dbg !4740
  %tobool7 = icmp ne i32 %19, 0, !dbg !4740
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !4742

if.then8:                                         ; preds = %for.body
  br label %err, !dbg !4743

if.end9:                                          ; preds = %for.body
  br label %for.inc, !dbg !4744

for.inc:                                          ; preds = %if.end9
  %20 = load i32, ptr %i, align 4, !dbg !4745
  %inc = add i32 %20, 1, !dbg !4745
  store i32 %inc, ptr %i, align 4, !dbg !4745
  br label %for.cond, !dbg !4746, !llvm.loop !4747

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !4751
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4751

err:                                              ; preds = %if.then8
  call void @llvm.dbg.label(metadata !4693), !dbg !4752
  %21 = load ptr, ptr %map.addr, align 8, !dbg !4753
  %call10 = call i32 @regcache_rbtree_exit(ptr noundef %21) #20, !dbg !4754
  %22 = load i32, ptr %ret, align 4, !dbg !4755
  store i32 %22, ptr %retval, align 4, !dbg !4756
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4756

cleanup:                                          ; preds = %err, %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #18, !dbg !4757
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #18, !dbg !4757
  call void @llvm.lifetime.end.p0(i64 8, ptr %rbtree_ctx) #18, !dbg !4757
  %23 = load i32, ptr %retval, align 4, !dbg !4757
  ret i32 %23, !dbg !4757
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @regcache_rbtree_exit(ptr noundef %map) #0 align 16 !dbg !4758 {
entry:
  %retval = alloca i32, align 4
  %map.addr = alloca ptr, align 8
  %next = alloca ptr, align 8
  %rbtree_ctx = alloca ptr, align 8
  %rbtree_node = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %map, ptr %map.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !4760, metadata !DIExpression()), !dbg !4767
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #18, !dbg !4768
  call void @llvm.dbg.declare(metadata ptr %next, metadata !4761, metadata !DIExpression()), !dbg !4769
  call void @llvm.lifetime.start.p0(i64 8, ptr %rbtree_ctx) #18, !dbg !4770
  call void @llvm.dbg.declare(metadata ptr %rbtree_ctx, metadata !4762, metadata !DIExpression()), !dbg !4771
  call void @llvm.lifetime.start.p0(i64 8, ptr %rbtree_node) #18, !dbg !4772
  call void @llvm.dbg.declare(metadata ptr %rbtree_node, metadata !4763, metadata !DIExpression()), !dbg !4773
  %0 = load ptr, ptr %map.addr, align 8, !dbg !4774
  %cache = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 63, !dbg !4775
  %1 = load ptr, ptr %cache, align 8, !dbg !4775
  store ptr %1, ptr %rbtree_ctx, align 8, !dbg !4776
  %2 = load ptr, ptr %rbtree_ctx, align 8, !dbg !4777
  %tobool = icmp ne ptr %2, null, !dbg !4777
  br i1 %tobool, label %if.end, label %if.then, !dbg !4779

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4780
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4780

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %rbtree_ctx, align 8, !dbg !4781
  %root = getelementptr inbounds %struct.regcache_rbtree_ctx, ptr %3, i32 0, i32 0, !dbg !4782
  %call = call ptr @rb_first(ptr noundef %root) #20, !dbg !4783
  store ptr %call, ptr %next, align 8, !dbg !4784
  br label %while.cond, !dbg !4785

while.cond:                                       ; preds = %while.body, %if.end
  %4 = load ptr, ptr %next, align 8, !dbg !4786
  %tobool1 = icmp ne ptr %4, null, !dbg !4785
  br i1 %tobool1, label %while.body, label %while.end, !dbg !4785

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !4787
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4764, metadata !DIExpression()), !dbg !4787
  %5 = load ptr, ptr %next, align 8, !dbg !4787
  store ptr %5, ptr %__mptr, align 8, !dbg !4787
  %6 = load ptr, ptr %__mptr, align 8, !dbg !4787
  %add.ptr = getelementptr i8, ptr %6, i64 -24, !dbg !4787
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4787
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !4788
  %7 = load ptr, ptr %tmp, align 8, !dbg !4787
  store ptr %7, ptr %rbtree_node, align 8, !dbg !4789
  %8 = load ptr, ptr %rbtree_node, align 8, !dbg !4790
  %node = getelementptr inbounds %struct.regcache_rbtree_node, ptr %8, i32 0, i32 4, !dbg !4791
  %call2 = call ptr @rb_next(ptr noundef %node) #20, !dbg !4792
  store ptr %call2, ptr %next, align 8, !dbg !4793
  %9 = load ptr, ptr %rbtree_node, align 8, !dbg !4794
  %node3 = getelementptr inbounds %struct.regcache_rbtree_node, ptr %9, i32 0, i32 4, !dbg !4795
  %10 = load ptr, ptr %rbtree_ctx, align 8, !dbg !4796
  %root4 = getelementptr inbounds %struct.regcache_rbtree_ctx, ptr %10, i32 0, i32 0, !dbg !4797
  call void @rb_erase(ptr noundef %node3, ptr noundef %root4) #20, !dbg !4798
  %11 = load ptr, ptr %rbtree_node, align 8, !dbg !4799
  %cache_present = getelementptr inbounds %struct.regcache_rbtree_node, ptr %11, i32 0, i32 1, !dbg !4800
  %12 = load ptr, ptr %cache_present, align 8, !dbg !4800
  call void @kfree(ptr noundef %12) #20, !dbg !4801
  %13 = load ptr, ptr %rbtree_node, align 8, !dbg !4802
  %block = getelementptr inbounds %struct.regcache_rbtree_node, ptr %13, i32 0, i32 0, !dbg !4803
  %14 = load ptr, ptr %block, align 8, !dbg !4803
  call void @kfree(ptr noundef %14) #20, !dbg !4804
  %15 = load ptr, ptr %rbtree_node, align 8, !dbg !4805
  call void @kfree(ptr noundef %15) #20, !dbg !4806
  br label %while.cond, !dbg !4785, !llvm.loop !4807

while.end:                                        ; preds = %while.cond
  %16 = load ptr, ptr %map.addr, align 8, !dbg !4809
  %cache5 = getelementptr inbounds %struct.regmap, ptr %16, i32 0, i32 63, !dbg !4810
  %17 = load ptr, ptr %cache5, align 8, !dbg !4810
  call void @kfree(ptr noundef %17) #20, !dbg !4811
  %18 = load ptr, ptr %map.addr, align 8, !dbg !4812
  %cache6 = getelementptr inbounds %struct.regmap, ptr %18, i32 0, i32 63, !dbg !4813
  store ptr null, ptr %cache6, align 8, !dbg !4814
  store i32 0, ptr %retval, align 4, !dbg !4815
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4815

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %rbtree_node) #18, !dbg !4816
  call void @llvm.lifetime.end.p0(i64 8, ptr %rbtree_ctx) #18, !dbg !4816
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #18, !dbg !4816
  %19 = load i32, ptr %retval, align 4, !dbg !4816
  ret i32 %19, !dbg !4816
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rbtree_debugfs_init(ptr noundef %map) #0 align 16 !dbg !4817 {
entry:
  %map.addr = alloca ptr, align 8
  store ptr %map, ptr %map.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !4819, metadata !DIExpression()), !dbg !4820
  %0 = load ptr, ptr %map.addr, align 8, !dbg !4821
  %debugfs = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 20, !dbg !4822
  %1 = load ptr, ptr %debugfs, align 8, !dbg !4822
  %2 = load ptr, ptr %map.addr, align 8, !dbg !4823
  %call = call ptr @debugfs_create_file(ptr noundef @.str, i16 noundef zeroext 256, ptr noundef %1, ptr noundef %2, ptr noundef @rbtree_fops) #20, !dbg !4824
  ret void, !dbg !4825
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @regcache_rbtree_read(ptr noundef %map, i32 noundef %reg, ptr noundef %value) #0 align 16 !dbg !4826 {
entry:
  %retval = alloca i32, align 4
  %map.addr = alloca ptr, align 8
  %reg.addr = alloca i32, align 4
  %value.addr = alloca ptr, align 8
  %rbnode = alloca ptr, align 8
  %reg_tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %map, ptr %map.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !4828, metadata !DIExpression()), !dbg !4833
  store i32 %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !4829, metadata !DIExpression()), !dbg !4834
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !4830, metadata !DIExpression()), !dbg !4835
  call void @llvm.lifetime.start.p0(i64 8, ptr %rbnode) #18, !dbg !4836
  call void @llvm.dbg.declare(metadata ptr %rbnode, metadata !4831, metadata !DIExpression()), !dbg !4837
  call void @llvm.lifetime.start.p0(i64 4, ptr %reg_tmp) #18, !dbg !4838
  call void @llvm.dbg.declare(metadata ptr %reg_tmp, metadata !4832, metadata !DIExpression()), !dbg !4839
  %0 = load ptr, ptr %map.addr, align 8, !dbg !4840
  %1 = load i32, ptr %reg.addr, align 4, !dbg !4841
  %call = call ptr @regcache_rbtree_lookup(ptr noundef %0, i32 noundef %1) #20, !dbg !4842
  store ptr %call, ptr %rbnode, align 8, !dbg !4843
  %2 = load ptr, ptr %rbnode, align 8, !dbg !4844
  %tobool = icmp ne ptr %2, null, !dbg !4844
  br i1 %tobool, label %if.then, label %if.else, !dbg !4846

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %reg.addr, align 4, !dbg !4847
  %4 = load ptr, ptr %rbnode, align 8, !dbg !4849
  %base_reg = getelementptr inbounds %struct.regcache_rbtree_node, ptr %4, i32 0, i32 2, !dbg !4850
  %5 = load i32, ptr %base_reg, align 8, !dbg !4850
  %sub = sub i32 %3, %5, !dbg !4851
  %6 = load ptr, ptr %map.addr, align 8, !dbg !4852
  %reg_stride = getelementptr inbounds %struct.regmap, ptr %6, i32 0, i32 49, !dbg !4853
  %7 = load i32, ptr %reg_stride, align 4, !dbg !4853
  %div = udiv i32 %sub, %7, !dbg !4854
  store i32 %div, ptr %reg_tmp, align 4, !dbg !4855
  %8 = load i32, ptr %reg_tmp, align 4, !dbg !4856
  %9 = call i1 @llvm.is.constant.i32(i32 %8), !dbg !4856
  br i1 %9, label %land.lhs.true, label %cond.false, !dbg !4856

land.lhs.true:                                    ; preds = %if.then
  %10 = load ptr, ptr %rbnode, align 8, !dbg !4856
  %cache_present = getelementptr inbounds %struct.regcache_rbtree_node, ptr %10, i32 0, i32 1, !dbg !4856
  %11 = load ptr, ptr %cache_present, align 8, !dbg !4856
  %12 = ptrtoint ptr %11 to i64, !dbg !4856
  %cmp = icmp ne i64 %12, 0, !dbg !4856
  %conv = zext i1 %cmp to i32, !dbg !4856
  %13 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !4856
  br i1 %13, label %land.lhs.true1, label %cond.false, !dbg !4856

land.lhs.true1:                                   ; preds = %land.lhs.true
  %14 = load ptr, ptr %rbnode, align 8, !dbg !4856
  %cache_present2 = getelementptr inbounds %struct.regcache_rbtree_node, ptr %14, i32 0, i32 1, !dbg !4856
  %15 = load ptr, ptr %cache_present2, align 8, !dbg !4856
  %16 = ptrtoint ptr %15 to i64, !dbg !4856
  %cmp3 = icmp ne i64 %16, 0, !dbg !4856
  br i1 %cmp3, label %land.lhs.true5, label %cond.false, !dbg !4856

land.lhs.true5:                                   ; preds = %land.lhs.true1
  %17 = load ptr, ptr %rbnode, align 8, !dbg !4856
  %cache_present6 = getelementptr inbounds %struct.regcache_rbtree_node, ptr %17, i32 0, i32 1, !dbg !4856
  %18 = load ptr, ptr %cache_present6, align 8, !dbg !4856
  %19 = load i64, ptr %18, align 8, !dbg !4856
  %20 = call i1 @llvm.is.constant.i64(i64 %19), !dbg !4856
  br i1 %20, label %cond.true, label %cond.false, !dbg !4858

cond.true:                                        ; preds = %land.lhs.true5
  %21 = load i32, ptr %reg_tmp, align 4, !dbg !4856
  %conv7 = zext i32 %21 to i64, !dbg !4856
  %22 = load ptr, ptr %rbnode, align 8, !dbg !4856
  %cache_present8 = getelementptr inbounds %struct.regcache_rbtree_node, ptr %22, i32 0, i32 1, !dbg !4856
  %23 = load ptr, ptr %cache_present8, align 8, !dbg !4856
  %call9 = call zeroext i1 @const_test_bit(i64 noundef %conv7, ptr noundef %23) #20, !dbg !4856
  br i1 %call9, label %if.end, label %if.then15, !dbg !4856

cond.false:                                       ; preds = %land.lhs.true5, %land.lhs.true1, %land.lhs.true, %if.then
  %24 = load i32, ptr %reg_tmp, align 4, !dbg !4856
  %conv11 = zext i32 %24 to i64, !dbg !4856
  %25 = load ptr, ptr %rbnode, align 8, !dbg !4856
  %cache_present12 = getelementptr inbounds %struct.regcache_rbtree_node, ptr %25, i32 0, i32 1, !dbg !4856
  %26 = load ptr, ptr %cache_present12, align 8, !dbg !4856
  %call13 = call zeroext i1 @_test_bit(i64 noundef %conv11, ptr noundef %26) #20, !dbg !4856
  br i1 %call13, label %if.end, label %if.then15, !dbg !4858

if.then15:                                        ; preds = %cond.false, %cond.true
  store i32 -2, ptr %retval, align 4, !dbg !4859
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4859

if.end:                                           ; preds = %cond.false, %cond.true
  %27 = load ptr, ptr %map.addr, align 8, !dbg !4860
  %28 = load ptr, ptr %rbnode, align 8, !dbg !4861
  %29 = load i32, ptr %reg_tmp, align 4, !dbg !4862
  %call16 = call i32 @regcache_rbtree_get_register(ptr noundef %27, ptr noundef %28, i32 noundef %29) #20, !dbg !4863
  %30 = load ptr, ptr %value.addr, align 8, !dbg !4864
  store i32 %call16, ptr %30, align 4, !dbg !4865
  br label %if.end17, !dbg !4866

if.else:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4, !dbg !4867
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4867

if.end17:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !4869
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4869

cleanup:                                          ; preds = %if.end17, %if.else, %if.then15
  call void @llvm.lifetime.end.p0(i64 4, ptr %reg_tmp) #18, !dbg !4870
  call void @llvm.lifetime.end.p0(i64 8, ptr %rbnode) #18, !dbg !4870
  %31 = load i32, ptr %retval, align 4, !dbg !4870
  ret i32 %31, !dbg !4870
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @regcache_rbtree_write(ptr noundef %map, i32 noundef %reg, i32 noundef %value) #0 align 16 !dbg !4871 {
entry:
  %retval = alloca i32, align 4
  %map.addr = alloca ptr, align 8
  %reg.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %rbtree_ctx = alloca ptr, align 8
  %rbnode = alloca ptr, align 8
  %rbnode_tmp = alloca ptr, align 8
  %node = alloca ptr, align 8
  %reg_tmp = alloca i32, align 4
  %ret = alloca i32, align 4
  %base_reg1 = alloca i32, align 4
  %top_reg = alloca i32, align 4
  %new_base_reg = alloca i32, align 4
  %new_top_reg = alloca i32, align 4
  %min = alloca i32, align 4
  %max = alloca i32, align 4
  %max_dist = alloca i32, align 4
  %dist = alloca i32, align 4
  %best_dist = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__UNIQUE_ID___x267 = alloca i32, align 4
  %__UNIQUE_ID___y268 = alloca i32, align 4
  %tmp31 = alloca i32, align 4
  %__UNIQUE_ID___x269 = alloca i32, align 4
  %__UNIQUE_ID___y270 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %map, ptr %map.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !4873, metadata !DIExpression()), !dbg !4906
  store i32 %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !4874, metadata !DIExpression()), !dbg !4907
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !4875, metadata !DIExpression()), !dbg !4908
  call void @llvm.lifetime.start.p0(i64 8, ptr %rbtree_ctx) #18, !dbg !4909
  call void @llvm.dbg.declare(metadata ptr %rbtree_ctx, metadata !4876, metadata !DIExpression()), !dbg !4910
  call void @llvm.lifetime.start.p0(i64 8, ptr %rbnode) #18, !dbg !4911
  call void @llvm.dbg.declare(metadata ptr %rbnode, metadata !4877, metadata !DIExpression()), !dbg !4912
  call void @llvm.lifetime.start.p0(i64 8, ptr %rbnode_tmp) #18, !dbg !4911
  call void @llvm.dbg.declare(metadata ptr %rbnode_tmp, metadata !4878, metadata !DIExpression()), !dbg !4913
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #18, !dbg !4914
  call void @llvm.dbg.declare(metadata ptr %node, metadata !4879, metadata !DIExpression()), !dbg !4915
  call void @llvm.lifetime.start.p0(i64 4, ptr %reg_tmp) #18, !dbg !4916
  call void @llvm.dbg.declare(metadata ptr %reg_tmp, metadata !4880, metadata !DIExpression()), !dbg !4917
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #18, !dbg !4918
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4881, metadata !DIExpression()), !dbg !4919
  %0 = load ptr, ptr %map.addr, align 8, !dbg !4920
  %cache = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 63, !dbg !4921
  %1 = load ptr, ptr %cache, align 8, !dbg !4921
  store ptr %1, ptr %rbtree_ctx, align 8, !dbg !4922
  %2 = load ptr, ptr %map.addr, align 8, !dbg !4923
  %3 = load i32, ptr %reg.addr, align 4, !dbg !4924
  %call = call ptr @regcache_rbtree_lookup(ptr noundef %2, i32 noundef %3) #20, !dbg !4925
  store ptr %call, ptr %rbnode, align 8, !dbg !4926
  %4 = load ptr, ptr %rbnode, align 8, !dbg !4927
  %tobool = icmp ne ptr %4, null, !dbg !4927
  br i1 %tobool, label %if.then, label %if.else, !dbg !4928

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %reg.addr, align 4, !dbg !4929
  %6 = load ptr, ptr %rbnode, align 8, !dbg !4931
  %base_reg = getelementptr inbounds %struct.regcache_rbtree_node, ptr %6, i32 0, i32 2, !dbg !4932
  %7 = load i32, ptr %base_reg, align 8, !dbg !4932
  %sub = sub i32 %5, %7, !dbg !4933
  %8 = load ptr, ptr %map.addr, align 8, !dbg !4934
  %reg_stride = getelementptr inbounds %struct.regmap, ptr %8, i32 0, i32 49, !dbg !4935
  %9 = load i32, ptr %reg_stride, align 4, !dbg !4935
  %div = udiv i32 %sub, %9, !dbg !4936
  store i32 %div, ptr %reg_tmp, align 4, !dbg !4937
  %10 = load ptr, ptr %map.addr, align 8, !dbg !4938
  %11 = load ptr, ptr %rbnode, align 8, !dbg !4939
  %12 = load i32, ptr %reg_tmp, align 4, !dbg !4940
  %13 = load i32, ptr %value.addr, align 4, !dbg !4941
  call void @regcache_rbtree_set_register(ptr noundef %10, ptr noundef %11, i32 noundef %12, i32 noundef %13) #20, !dbg !4942
  br label %if.end79, !dbg !4943

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %base_reg1) #18, !dbg !4944
  call void @llvm.dbg.declare(metadata ptr %base_reg1, metadata !4882, metadata !DIExpression()), !dbg !4945
  call void @llvm.lifetime.start.p0(i64 4, ptr %top_reg) #18, !dbg !4944
  call void @llvm.dbg.declare(metadata ptr %top_reg, metadata !4885, metadata !DIExpression()), !dbg !4946
  call void @llvm.lifetime.start.p0(i64 4, ptr %new_base_reg) #18, !dbg !4947
  call void @llvm.dbg.declare(metadata ptr %new_base_reg, metadata !4886, metadata !DIExpression()), !dbg !4948
  call void @llvm.lifetime.start.p0(i64 4, ptr %new_top_reg) #18, !dbg !4947
  call void @llvm.dbg.declare(metadata ptr %new_top_reg, metadata !4887, metadata !DIExpression()), !dbg !4949
  call void @llvm.lifetime.start.p0(i64 4, ptr %min) #18, !dbg !4950
  call void @llvm.dbg.declare(metadata ptr %min, metadata !4888, metadata !DIExpression()), !dbg !4951
  call void @llvm.lifetime.start.p0(i64 4, ptr %max) #18, !dbg !4950
  call void @llvm.dbg.declare(metadata ptr %max, metadata !4889, metadata !DIExpression()), !dbg !4952
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_dist) #18, !dbg !4953
  call void @llvm.dbg.declare(metadata ptr %max_dist, metadata !4890, metadata !DIExpression()), !dbg !4954
  call void @llvm.lifetime.start.p0(i64 4, ptr %dist) #18, !dbg !4955
  call void @llvm.dbg.declare(metadata ptr %dist, metadata !4891, metadata !DIExpression()), !dbg !4956
  call void @llvm.lifetime.start.p0(i64 4, ptr %best_dist) #18, !dbg !4955
  call void @llvm.dbg.declare(metadata ptr %best_dist, metadata !4892, metadata !DIExpression()), !dbg !4957
  store i32 -1, ptr %best_dist, align 4, !dbg !4957
  %14 = load ptr, ptr %map.addr, align 8, !dbg !4958
  %reg_stride2 = getelementptr inbounds %struct.regmap, ptr %14, i32 0, i32 49, !dbg !4959
  %15 = load i32, ptr %reg_stride2, align 4, !dbg !4959
  %conv = sext i32 %15 to i64, !dbg !4958
  %mul = mul i64 %conv, 48, !dbg !4960
  %16 = load ptr, ptr %map.addr, align 8, !dbg !4961
  %cache_word_size = getelementptr inbounds %struct.regmap, ptr %16, i32 0, i32 55, !dbg !4962
  %17 = load i32, ptr %cache_word_size, align 8, !dbg !4962
  %conv3 = zext i32 %17 to i64, !dbg !4961
  %div4 = udiv i64 %mul, %conv3, !dbg !4963
  %conv5 = trunc i64 %div4 to i32, !dbg !4958
  store i32 %conv5, ptr %max_dist, align 4, !dbg !4964
  %18 = load i32, ptr %reg.addr, align 4, !dbg !4965
  %19 = load i32, ptr %max_dist, align 4, !dbg !4967
  %cmp = icmp ult i32 %18, %19, !dbg !4968
  br i1 %cmp, label %if.then7, label %if.else8, !dbg !4969

if.then7:                                         ; preds = %if.else
  store i32 0, ptr %min, align 4, !dbg !4970
  br label %if.end, !dbg !4971

if.else8:                                         ; preds = %if.else
  %20 = load i32, ptr %reg.addr, align 4, !dbg !4972
  %21 = load i32, ptr %max_dist, align 4, !dbg !4973
  %sub9 = sub i32 %20, %21, !dbg !4974
  store i32 %sub9, ptr %min, align 4, !dbg !4975
  br label %if.end

if.end:                                           ; preds = %if.else8, %if.then7
  %22 = load i32, ptr %reg.addr, align 4, !dbg !4976
  %23 = load i32, ptr %max_dist, align 4, !dbg !4977
  %add = add i32 %22, %23, !dbg !4978
  store i32 %add, ptr %max, align 4, !dbg !4979
  %24 = load ptr, ptr %rbtree_ctx, align 8, !dbg !4980
  %root = getelementptr inbounds %struct.regcache_rbtree_ctx, ptr %24, i32 0, i32 0, !dbg !4981
  %rb_node = getelementptr inbounds %struct.rb_root, ptr %root, i32 0, i32 0, !dbg !4982
  %25 = load ptr, ptr %rb_node, align 8, !dbg !4982
  store ptr %25, ptr %node, align 8, !dbg !4983
  br label %while.cond, !dbg !4984

while.cond:                                       ; preds = %if.end52, %if.end
  %26 = load ptr, ptr %node, align 8, !dbg !4985
  %tobool10 = icmp ne ptr %26, null, !dbg !4984
  br i1 %tobool10, label %while.body, label %while.end, !dbg !4984

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !4986
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4893, metadata !DIExpression()), !dbg !4986
  %27 = load ptr, ptr %node, align 8, !dbg !4986
  store ptr %27, ptr %__mptr, align 8, !dbg !4986
  %28 = load ptr, ptr %__mptr, align 8, !dbg !4986
  %add.ptr = getelementptr i8, ptr %28, i64 -24, !dbg !4986
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4986
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !4987
  %29 = load ptr, ptr %tmp, align 8, !dbg !4986
  store ptr %29, ptr %rbnode_tmp, align 8, !dbg !4988
  %30 = load ptr, ptr %map.addr, align 8, !dbg !4989
  %31 = load ptr, ptr %rbnode_tmp, align 8, !dbg !4990
  call void @regcache_rbtree_get_base_top_reg(ptr noundef %30, ptr noundef %31, ptr noundef %base_reg1, ptr noundef %top_reg) #20, !dbg !4991
  %32 = load i32, ptr %base_reg1, align 4, !dbg !4992
  %33 = load i32, ptr %max, align 4, !dbg !4993
  %cmp11 = icmp ule i32 %32, %33, !dbg !4994
  br i1 %cmp11, label %land.lhs.true, label %if.end42, !dbg !4995

land.lhs.true:                                    ; preds = %while.body
  %34 = load i32, ptr %top_reg, align 4, !dbg !4996
  %35 = load i32, ptr %min, align 4, !dbg !4997
  %cmp13 = icmp uge i32 %34, %35, !dbg !4998
  br i1 %cmp13, label %if.then15, label %if.end42, !dbg !4999

if.then15:                                        ; preds = %land.lhs.true
  %36 = load i32, ptr %reg.addr, align 4, !dbg !5000
  %37 = load i32, ptr %base_reg1, align 4, !dbg !5002
  %cmp16 = icmp ult i32 %36, %37, !dbg !5003
  br i1 %cmp16, label %if.then18, label %if.else20, !dbg !5004

if.then18:                                        ; preds = %if.then15
  %38 = load i32, ptr %base_reg1, align 4, !dbg !5005
  %39 = load i32, ptr %reg.addr, align 4, !dbg !5006
  %sub19 = sub i32 %38, %39, !dbg !5007
  store i32 %sub19, ptr %dist, align 4, !dbg !5008
  br label %if.end27, !dbg !5009

if.else20:                                        ; preds = %if.then15
  %40 = load i32, ptr %reg.addr, align 4, !dbg !5010
  %41 = load i32, ptr %top_reg, align 4, !dbg !5012
  %cmp21 = icmp ugt i32 %40, %41, !dbg !5013
  br i1 %cmp21, label %if.then23, label %if.else25, !dbg !5014

if.then23:                                        ; preds = %if.else20
  %42 = load i32, ptr %reg.addr, align 4, !dbg !5015
  %43 = load i32, ptr %top_reg, align 4, !dbg !5016
  %sub24 = sub i32 %42, %43, !dbg !5017
  store i32 %sub24, ptr %dist, align 4, !dbg !5018
  br label %if.end26, !dbg !5019

if.else25:                                        ; preds = %if.else20
  store i32 0, ptr %dist, align 4, !dbg !5020
  br label %if.end26

if.end26:                                         ; preds = %if.else25, %if.then23
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.then18
  %44 = load i32, ptr %dist, align 4, !dbg !5021
  %45 = load i32, ptr %best_dist, align 4, !dbg !5022
  %cmp28 = icmp ult i32 %44, %45, !dbg !5023
  br i1 %cmp28, label %if.then30, label %if.end41, !dbg !5024

if.then30:                                        ; preds = %if.end27
  %46 = load ptr, ptr %rbnode_tmp, align 8, !dbg !5025
  store ptr %46, ptr %rbnode, align 8, !dbg !5026
  %47 = load i32, ptr %dist, align 4, !dbg !5027
  store i32 %47, ptr %best_dist, align 4, !dbg !5028
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x267) #18, !dbg !5029
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x267, metadata !4896, metadata !DIExpression()), !dbg !5029
  %48 = load i32, ptr %reg.addr, align 4, !dbg !5029
  store i32 %48, ptr %__UNIQUE_ID___x267, align 4, !dbg !5029
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y268) #18, !dbg !5029
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y268, metadata !4902, metadata !DIExpression()), !dbg !5029
  %49 = load i32, ptr %base_reg1, align 4, !dbg !5029
  store i32 %49, ptr %__UNIQUE_ID___y268, align 4, !dbg !5029
  %50 = load i32, ptr %__UNIQUE_ID___x267, align 4, !dbg !5029
  %51 = load i32, ptr %__UNIQUE_ID___y268, align 4, !dbg !5029
  %cmp32 = icmp ult i32 %50, %51, !dbg !5029
  br i1 %cmp32, label %cond.true, label %cond.false, !dbg !5029

cond.true:                                        ; preds = %if.then30
  %52 = load i32, ptr %__UNIQUE_ID___x267, align 4, !dbg !5029
  br label %cond.end, !dbg !5029

cond.false:                                       ; preds = %if.then30
  %53 = load i32, ptr %__UNIQUE_ID___y268, align 4, !dbg !5029
  br label %cond.end, !dbg !5029

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %52, %cond.true ], [ %53, %cond.false ], !dbg !5029
  store i32 %cond, ptr %tmp31, align 4, !dbg !5029
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y268) #18, !dbg !5030
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x267) #18, !dbg !5030
  %54 = load i32, ptr %tmp31, align 4, !dbg !5029
  store i32 %54, ptr %new_base_reg, align 4, !dbg !5031
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x269) #18, !dbg !5032
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x269, metadata !4903, metadata !DIExpression()), !dbg !5032
  %55 = load i32, ptr %reg.addr, align 4, !dbg !5032
  store i32 %55, ptr %__UNIQUE_ID___x269, align 4, !dbg !5032
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y270) #18, !dbg !5032
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y270, metadata !4905, metadata !DIExpression()), !dbg !5032
  %56 = load i32, ptr %top_reg, align 4, !dbg !5032
  store i32 %56, ptr %__UNIQUE_ID___y270, align 4, !dbg !5032
  %57 = load i32, ptr %__UNIQUE_ID___x269, align 4, !dbg !5032
  %58 = load i32, ptr %__UNIQUE_ID___y270, align 4, !dbg !5032
  %cmp35 = icmp ugt i32 %57, %58, !dbg !5032
  br i1 %cmp35, label %cond.true37, label %cond.false38, !dbg !5032

cond.true37:                                      ; preds = %cond.end
  %59 = load i32, ptr %__UNIQUE_ID___x269, align 4, !dbg !5032
  br label %cond.end39, !dbg !5032

cond.false38:                                     ; preds = %cond.end
  %60 = load i32, ptr %__UNIQUE_ID___y270, align 4, !dbg !5032
  br label %cond.end39, !dbg !5032

cond.end39:                                       ; preds = %cond.false38, %cond.true37
  %cond40 = phi i32 [ %59, %cond.true37 ], [ %60, %cond.false38 ], !dbg !5032
  store i32 %cond40, ptr %tmp34, align 4, !dbg !5032
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y270) #18, !dbg !5033
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x269) #18, !dbg !5033
  %61 = load i32, ptr %tmp34, align 4, !dbg !5032
  store i32 %61, ptr %new_top_reg, align 4, !dbg !5034
  br label %if.end41, !dbg !5035

if.end41:                                         ; preds = %cond.end39, %if.end27
  br label %if.end42, !dbg !5036

if.end42:                                         ; preds = %if.end41, %land.lhs.true, %while.body
  %62 = load i32, ptr %reg.addr, align 4, !dbg !5037
  %63 = load i32, ptr %base_reg1, align 4, !dbg !5039
  %cmp43 = icmp ult i32 %62, %63, !dbg !5040
  br i1 %cmp43, label %if.then45, label %if.else46, !dbg !5041

if.then45:                                        ; preds = %if.end42
  %64 = load ptr, ptr %node, align 8, !dbg !5042
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %64, i32 0, i32 2, !dbg !5043
  %65 = load ptr, ptr %rb_left, align 8, !dbg !5043
  store ptr %65, ptr %node, align 8, !dbg !5044
  br label %if.end52, !dbg !5045

if.else46:                                        ; preds = %if.end42
  %66 = load i32, ptr %reg.addr, align 4, !dbg !5046
  %67 = load i32, ptr %top_reg, align 4, !dbg !5048
  %cmp47 = icmp ugt i32 %66, %67, !dbg !5049
  br i1 %cmp47, label %if.then49, label %if.else50, !dbg !5050

if.then49:                                        ; preds = %if.else46
  %68 = load ptr, ptr %node, align 8, !dbg !5051
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %68, i32 0, i32 1, !dbg !5052
  %69 = load ptr, ptr %rb_right, align 8, !dbg !5052
  store ptr %69, ptr %node, align 8, !dbg !5053
  br label %if.end51, !dbg !5054

if.else50:                                        ; preds = %if.else46
  br label %while.end, !dbg !5055

if.end51:                                         ; preds = %if.then49
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.then45
  br label %while.cond, !dbg !4984, !llvm.loop !5056

while.end:                                        ; preds = %if.else50, %while.cond
  %70 = load ptr, ptr %rbnode, align 8, !dbg !5058
  %tobool53 = icmp ne ptr %70, null, !dbg !5058
  br i1 %tobool53, label %if.then54, label %if.end59, !dbg !5060

if.then54:                                        ; preds = %while.end
  %71 = load ptr, ptr %map.addr, align 8, !dbg !5061
  %72 = load ptr, ptr %rbnode, align 8, !dbg !5063
  %73 = load i32, ptr %new_base_reg, align 4, !dbg !5064
  %74 = load i32, ptr %new_top_reg, align 4, !dbg !5065
  %75 = load i32, ptr %reg.addr, align 4, !dbg !5066
  %76 = load i32, ptr %value.addr, align 4, !dbg !5067
  %call55 = call i32 @regcache_rbtree_insert_to_block(ptr noundef %71, ptr noundef %72, i32 noundef %73, i32 noundef %74, i32 noundef %75, i32 noundef %76) #20, !dbg !5068
  store i32 %call55, ptr %ret, align 4, !dbg !5069
  %77 = load i32, ptr %ret, align 4, !dbg !5070
  %tobool56 = icmp ne i32 %77, 0, !dbg !5070
  br i1 %tobool56, label %if.then57, label %if.end58, !dbg !5072

if.then57:                                        ; preds = %if.then54
  %78 = load i32, ptr %ret, align 4, !dbg !5073
  store i32 %78, ptr %retval, align 4, !dbg !5074
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5074

if.end58:                                         ; preds = %if.then54
  %79 = load ptr, ptr %rbnode, align 8, !dbg !5075
  %80 = load ptr, ptr %rbtree_ctx, align 8, !dbg !5076
  %cached_rbnode = getelementptr inbounds %struct.regcache_rbtree_ctx, ptr %80, i32 0, i32 1, !dbg !5077
  store ptr %79, ptr %cached_rbnode, align 8, !dbg !5078
  store i32 0, ptr %retval, align 4, !dbg !5079
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5079

if.end59:                                         ; preds = %while.end
  %81 = load ptr, ptr %map.addr, align 8, !dbg !5080
  %82 = load i32, ptr %reg.addr, align 4, !dbg !5081
  %call60 = call ptr @regcache_rbtree_node_alloc(ptr noundef %81, i32 noundef %82) #20, !dbg !5082
  store ptr %call60, ptr %rbnode, align 8, !dbg !5083
  %83 = load ptr, ptr %rbnode, align 8, !dbg !5084
  %tobool61 = icmp ne ptr %83, null, !dbg !5084
  br i1 %tobool61, label %if.end63, label %if.then62, !dbg !5086

if.then62:                                        ; preds = %if.end59
  store i32 -12, ptr %retval, align 4, !dbg !5087
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5087

if.end63:                                         ; preds = %if.end59
  %84 = load ptr, ptr %map.addr, align 8, !dbg !5088
  %85 = load ptr, ptr %rbnode, align 8, !dbg !5089
  %86 = load i32, ptr %reg.addr, align 4, !dbg !5090
  %87 = load ptr, ptr %rbnode, align 8, !dbg !5091
  %base_reg64 = getelementptr inbounds %struct.regcache_rbtree_node, ptr %87, i32 0, i32 2, !dbg !5092
  %88 = load i32, ptr %base_reg64, align 8, !dbg !5092
  %sub65 = sub i32 %86, %88, !dbg !5093
  %89 = load ptr, ptr %map.addr, align 8, !dbg !5094
  %reg_stride66 = getelementptr inbounds %struct.regmap, ptr %89, i32 0, i32 49, !dbg !5095
  %90 = load i32, ptr %reg_stride66, align 4, !dbg !5095
  %div67 = udiv i32 %sub65, %90, !dbg !5096
  %91 = load i32, ptr %value.addr, align 4, !dbg !5097
  call void @regcache_rbtree_set_register(ptr noundef %84, ptr noundef %85, i32 noundef %div67, i32 noundef %91) #20, !dbg !5098
  %92 = load ptr, ptr %map.addr, align 8, !dbg !5099
  %93 = load ptr, ptr %rbtree_ctx, align 8, !dbg !5100
  %root68 = getelementptr inbounds %struct.regcache_rbtree_ctx, ptr %93, i32 0, i32 0, !dbg !5101
  %94 = load ptr, ptr %rbnode, align 8, !dbg !5102
  %call69 = call i32 @regcache_rbtree_insert(ptr noundef %92, ptr noundef %root68, ptr noundef %94) #20, !dbg !5103
  %95 = load ptr, ptr %rbnode, align 8, !dbg !5104
  %96 = load ptr, ptr %rbtree_ctx, align 8, !dbg !5105
  %cached_rbnode70 = getelementptr inbounds %struct.regcache_rbtree_ctx, ptr %96, i32 0, i32 1, !dbg !5106
  store ptr %95, ptr %cached_rbnode70, align 8, !dbg !5107
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5108
  br label %cleanup, !dbg !5108

cleanup:                                          ; preds = %if.end63, %if.then62, %if.end58, %if.then57
  call void @llvm.lifetime.end.p0(i64 4, ptr %best_dist) #18, !dbg !5108
  call void @llvm.lifetime.end.p0(i64 4, ptr %dist) #18, !dbg !5108
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_dist) #18, !dbg !5108
  call void @llvm.lifetime.end.p0(i64 4, ptr %max) #18, !dbg !5108
  call void @llvm.lifetime.end.p0(i64 4, ptr %min) #18, !dbg !5108
  call void @llvm.lifetime.end.p0(i64 4, ptr %new_top_reg) #18, !dbg !5108
  call void @llvm.lifetime.end.p0(i64 4, ptr %new_base_reg) #18, !dbg !5108
  call void @llvm.lifetime.end.p0(i64 4, ptr %top_reg) #18, !dbg !5108
  call void @llvm.lifetime.end.p0(i64 4, ptr %base_reg1) #18, !dbg !5108
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup80 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end79

if.end79:                                         ; preds = %cleanup.cont, %if.then
  store i32 0, ptr %retval, align 4, !dbg !5109
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup80, !dbg !5109

cleanup80:                                        ; preds = %if.end79, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #18, !dbg !5110
  call void @llvm.lifetime.end.p0(i64 4, ptr %reg_tmp) #18, !dbg !5110
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #18, !dbg !5110
  call void @llvm.lifetime.end.p0(i64 8, ptr %rbnode_tmp) #18, !dbg !5110
  call void @llvm.lifetime.end.p0(i64 8, ptr %rbnode) #18, !dbg !5110
  call void @llvm.lifetime.end.p0(i64 8, ptr %rbtree_ctx) #18, !dbg !5110
  %97 = load i32, ptr %retval, align 4, !dbg !5110
  ret i32 %97, !dbg !5110
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @regcache_rbtree_sync(ptr noundef %map, i32 noundef %min, i32 noundef %max) #0 align 16 !dbg !5111 {
entry:
  %retval = alloca i32, align 4
  %map.addr = alloca ptr, align 8
  %min.addr = alloca i32, align 4
  %max.addr = alloca i32, align 4
  %rbtree_ctx = alloca ptr, align 8
  %node = alloca ptr, align 8
  %rbnode = alloca ptr, align 8
  %base_reg = alloca i32, align 4
  %top_reg = alloca i32, align 4
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %ret = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %map, ptr %map.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !5113, metadata !DIExpression()), !dbg !5129
  store i32 %min, ptr %min.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %min.addr, metadata !5114, metadata !DIExpression()), !dbg !5130
  store i32 %max, ptr %max.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %max.addr, metadata !5115, metadata !DIExpression()), !dbg !5131
  call void @llvm.lifetime.start.p0(i64 8, ptr %rbtree_ctx) #18, !dbg !5132
  call void @llvm.dbg.declare(metadata ptr %rbtree_ctx, metadata !5116, metadata !DIExpression()), !dbg !5133
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #18, !dbg !5134
  call void @llvm.dbg.declare(metadata ptr %node, metadata !5117, metadata !DIExpression()), !dbg !5135
  call void @llvm.lifetime.start.p0(i64 8, ptr %rbnode) #18, !dbg !5136
  call void @llvm.dbg.declare(metadata ptr %rbnode, metadata !5118, metadata !DIExpression()), !dbg !5137
  call void @llvm.lifetime.start.p0(i64 4, ptr %base_reg) #18, !dbg !5138
  call void @llvm.dbg.declare(metadata ptr %base_reg, metadata !5119, metadata !DIExpression()), !dbg !5139
  call void @llvm.lifetime.start.p0(i64 4, ptr %top_reg) #18, !dbg !5138
  call void @llvm.dbg.declare(metadata ptr %top_reg, metadata !5120, metadata !DIExpression()), !dbg !5140
  call void @llvm.lifetime.start.p0(i64 4, ptr %start) #18, !dbg !5141
  call void @llvm.dbg.declare(metadata ptr %start, metadata !5121, metadata !DIExpression()), !dbg !5142
  call void @llvm.lifetime.start.p0(i64 4, ptr %end) #18, !dbg !5141
  call void @llvm.dbg.declare(metadata ptr %end, metadata !5122, metadata !DIExpression()), !dbg !5143
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #18, !dbg !5144
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5123, metadata !DIExpression()), !dbg !5145
  %0 = load ptr, ptr %map.addr, align 8, !dbg !5146
  %async = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 13, !dbg !5147
  store i8 1, ptr %async, align 8, !dbg !5148
  %1 = load ptr, ptr %map.addr, align 8, !dbg !5149
  %cache = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 63, !dbg !5150
  %2 = load ptr, ptr %cache, align 8, !dbg !5150
  store ptr %2, ptr %rbtree_ctx, align 8, !dbg !5151
  %3 = load ptr, ptr %rbtree_ctx, align 8, !dbg !5152
  %root = getelementptr inbounds %struct.regcache_rbtree_ctx, ptr %3, i32 0, i32 0, !dbg !5153
  %call = call ptr @rb_first(ptr noundef %root) #20, !dbg !5154
  store ptr %call, ptr %node, align 8, !dbg !5155
  br label %for.cond, !dbg !5156

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load ptr, ptr %node, align 8, !dbg !5157
  %tobool = icmp ne ptr %4, null, !dbg !5158
  br i1 %tobool, label %for.body, label %for.end, !dbg !5158

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !5159
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5124, metadata !DIExpression()), !dbg !5159
  %5 = load ptr, ptr %node, align 8, !dbg !5159
  store ptr %5, ptr %__mptr, align 8, !dbg !5159
  %6 = load ptr, ptr %__mptr, align 8, !dbg !5159
  %add.ptr = getelementptr i8, ptr %6, i64 -24, !dbg !5159
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5159
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !5160
  %7 = load ptr, ptr %tmp, align 8, !dbg !5159
  store ptr %7, ptr %rbnode, align 8, !dbg !5161
  %8 = load ptr, ptr %map.addr, align 8, !dbg !5162
  %9 = load ptr, ptr %rbnode, align 8, !dbg !5163
  call void @regcache_rbtree_get_base_top_reg(ptr noundef %8, ptr noundef %9, ptr noundef %base_reg, ptr noundef %top_reg) #20, !dbg !5164
  %10 = load i32, ptr %base_reg, align 4, !dbg !5165
  %11 = load i32, ptr %max.addr, align 4, !dbg !5167
  %cmp = icmp ugt i32 %10, %11, !dbg !5168
  br i1 %cmp, label %if.then, label %if.end, !dbg !5169

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !5170

if.end:                                           ; preds = %for.body
  %12 = load i32, ptr %top_reg, align 4, !dbg !5171
  %13 = load i32, ptr %min.addr, align 4, !dbg !5173
  %cmp1 = icmp ult i32 %12, %13, !dbg !5174
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !5175

if.then2:                                         ; preds = %if.end
  br label %for.inc, !dbg !5176

if.end3:                                          ; preds = %if.end
  %14 = load i32, ptr %min.addr, align 4, !dbg !5177
  %15 = load i32, ptr %base_reg, align 4, !dbg !5179
  %cmp4 = icmp ugt i32 %14, %15, !dbg !5180
  br i1 %cmp4, label %if.then5, label %if.else, !dbg !5181

if.then5:                                         ; preds = %if.end3
  %16 = load i32, ptr %min.addr, align 4, !dbg !5182
  %17 = load i32, ptr %base_reg, align 4, !dbg !5183
  %sub = sub i32 %16, %17, !dbg !5184
  %18 = load ptr, ptr %map.addr, align 8, !dbg !5185
  %reg_stride = getelementptr inbounds %struct.regmap, ptr %18, i32 0, i32 49, !dbg !5186
  %19 = load i32, ptr %reg_stride, align 4, !dbg !5186
  %div = udiv i32 %sub, %19, !dbg !5187
  store i32 %div, ptr %start, align 4, !dbg !5188
  br label %if.end6, !dbg !5189

if.else:                                          ; preds = %if.end3
  store i32 0, ptr %start, align 4, !dbg !5190
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then5
  %20 = load i32, ptr %max.addr, align 4, !dbg !5191
  %21 = load i32, ptr %top_reg, align 4, !dbg !5193
  %cmp7 = icmp ult i32 %20, %21, !dbg !5194
  br i1 %cmp7, label %if.then8, label %if.else12, !dbg !5195

if.then8:                                         ; preds = %if.end6
  %22 = load i32, ptr %max.addr, align 4, !dbg !5196
  %23 = load i32, ptr %base_reg, align 4, !dbg !5197
  %sub9 = sub i32 %22, %23, !dbg !5198
  %24 = load ptr, ptr %map.addr, align 8, !dbg !5199
  %reg_stride10 = getelementptr inbounds %struct.regmap, ptr %24, i32 0, i32 49, !dbg !5200
  %25 = load i32, ptr %reg_stride10, align 4, !dbg !5200
  %div11 = udiv i32 %sub9, %25, !dbg !5201
  %add = add i32 %div11, 1, !dbg !5202
  store i32 %add, ptr %end, align 4, !dbg !5203
  br label %if.end13, !dbg !5204

if.else12:                                        ; preds = %if.end6
  %26 = load ptr, ptr %rbnode, align 8, !dbg !5205
  %blklen = getelementptr inbounds %struct.regcache_rbtree_node, ptr %26, i32 0, i32 3, !dbg !5206
  %27 = load i32, ptr %blklen, align 4, !dbg !5206
  store i32 %27, ptr %end, align 4, !dbg !5207
  br label %if.end13

if.end13:                                         ; preds = %if.else12, %if.then8
  %28 = load ptr, ptr %map.addr, align 8, !dbg !5208
  %29 = load ptr, ptr %rbnode, align 8, !dbg !5209
  %block = getelementptr inbounds %struct.regcache_rbtree_node, ptr %29, i32 0, i32 0, !dbg !5210
  %30 = load ptr, ptr %block, align 8, !dbg !5210
  %31 = load ptr, ptr %rbnode, align 8, !dbg !5211
  %cache_present = getelementptr inbounds %struct.regcache_rbtree_node, ptr %31, i32 0, i32 1, !dbg !5212
  %32 = load ptr, ptr %cache_present, align 8, !dbg !5212
  %33 = load ptr, ptr %rbnode, align 8, !dbg !5213
  %base_reg14 = getelementptr inbounds %struct.regcache_rbtree_node, ptr %33, i32 0, i32 2, !dbg !5214
  %34 = load i32, ptr %base_reg14, align 8, !dbg !5214
  %35 = load i32, ptr %start, align 4, !dbg !5215
  %36 = load i32, ptr %end, align 4, !dbg !5216
  %call15 = call i32 @regcache_sync_block(ptr noundef %28, ptr noundef %30, ptr noundef %32, i32 noundef %34, i32 noundef %35, i32 noundef %36) #20, !dbg !5217
  store i32 %call15, ptr %ret, align 4, !dbg !5218
  %37 = load i32, ptr %ret, align 4, !dbg !5219
  %cmp16 = icmp ne i32 %37, 0, !dbg !5221
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !5222

if.then17:                                        ; preds = %if.end13
  %38 = load i32, ptr %ret, align 4, !dbg !5223
  store i32 %38, ptr %retval, align 4, !dbg !5224
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5224

if.end18:                                         ; preds = %if.end13
  br label %for.inc, !dbg !5225

for.inc:                                          ; preds = %if.end18, %if.then2
  %39 = load ptr, ptr %node, align 8, !dbg !5226
  %call19 = call ptr @rb_next(ptr noundef %39) #20, !dbg !5227
  store ptr %call19, ptr %node, align 8, !dbg !5228
  br label %for.cond, !dbg !5229, !llvm.loop !5230

for.end:                                          ; preds = %if.then, %for.cond
  %40 = load ptr, ptr %map.addr, align 8, !dbg !5232
  %async20 = getelementptr inbounds %struct.regmap, ptr %40, i32 0, i32 13, !dbg !5233
  store i8 0, ptr %async20, align 8, !dbg !5234
  %41 = load ptr, ptr %map.addr, align 8, !dbg !5235
  %call21 = call i32 @regmap_async_complete(ptr noundef %41) #20, !dbg !5236
  store i32 %call21, ptr %retval, align 4, !dbg !5237
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5237

cleanup:                                          ; preds = %for.end, %if.then17
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #18, !dbg !5238
  call void @llvm.lifetime.end.p0(i64 4, ptr %end) #18, !dbg !5238
  call void @llvm.lifetime.end.p0(i64 4, ptr %start) #18, !dbg !5238
  call void @llvm.lifetime.end.p0(i64 4, ptr %top_reg) #18, !dbg !5238
  call void @llvm.lifetime.end.p0(i64 4, ptr %base_reg) #18, !dbg !5238
  call void @llvm.lifetime.end.p0(i64 8, ptr %rbnode) #18, !dbg !5238
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #18, !dbg !5238
  call void @llvm.lifetime.end.p0(i64 8, ptr %rbtree_ctx) #18, !dbg !5238
  %42 = load i32, ptr %retval, align 4, !dbg !5238
  ret i32 %42, !dbg !5238
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @regcache_rbtree_drop(ptr noundef %map, i32 noundef %min, i32 noundef %max) #0 align 16 !dbg !5239 {
entry:
  %map.addr = alloca ptr, align 8
  %min.addr = alloca i32, align 4
  %max.addr = alloca i32, align 4
  %rbtree_ctx = alloca ptr, align 8
  %rbnode = alloca ptr, align 8
  %node = alloca ptr, align 8
  %base_reg = alloca i32, align 4
  %top_reg = alloca i32, align 4
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %map, ptr %map.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !5241, metadata !DIExpression()), !dbg !5256
  store i32 %min, ptr %min.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %min.addr, metadata !5242, metadata !DIExpression()), !dbg !5257
  store i32 %max, ptr %max.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %max.addr, metadata !5243, metadata !DIExpression()), !dbg !5258
  call void @llvm.lifetime.start.p0(i64 8, ptr %rbtree_ctx) #18, !dbg !5259
  call void @llvm.dbg.declare(metadata ptr %rbtree_ctx, metadata !5244, metadata !DIExpression()), !dbg !5260
  call void @llvm.lifetime.start.p0(i64 8, ptr %rbnode) #18, !dbg !5261
  call void @llvm.dbg.declare(metadata ptr %rbnode, metadata !5245, metadata !DIExpression()), !dbg !5262
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #18, !dbg !5263
  call void @llvm.dbg.declare(metadata ptr %node, metadata !5246, metadata !DIExpression()), !dbg !5264
  call void @llvm.lifetime.start.p0(i64 4, ptr %base_reg) #18, !dbg !5265
  call void @llvm.dbg.declare(metadata ptr %base_reg, metadata !5247, metadata !DIExpression()), !dbg !5266
  call void @llvm.lifetime.start.p0(i64 4, ptr %top_reg) #18, !dbg !5265
  call void @llvm.dbg.declare(metadata ptr %top_reg, metadata !5248, metadata !DIExpression()), !dbg !5267
  call void @llvm.lifetime.start.p0(i64 4, ptr %start) #18, !dbg !5268
  call void @llvm.dbg.declare(metadata ptr %start, metadata !5249, metadata !DIExpression()), !dbg !5269
  call void @llvm.lifetime.start.p0(i64 4, ptr %end) #18, !dbg !5268
  call void @llvm.dbg.declare(metadata ptr %end, metadata !5250, metadata !DIExpression()), !dbg !5270
  %0 = load ptr, ptr %map.addr, align 8, !dbg !5271
  %cache = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 63, !dbg !5272
  %1 = load ptr, ptr %cache, align 8, !dbg !5272
  store ptr %1, ptr %rbtree_ctx, align 8, !dbg !5273
  %2 = load ptr, ptr %rbtree_ctx, align 8, !dbg !5274
  %root = getelementptr inbounds %struct.regcache_rbtree_ctx, ptr %2, i32 0, i32 0, !dbg !5275
  %call = call ptr @rb_first(ptr noundef %root) #20, !dbg !5276
  store ptr %call, ptr %node, align 8, !dbg !5277
  br label %for.cond, !dbg !5278

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %node, align 8, !dbg !5279
  %tobool = icmp ne ptr %3, null, !dbg !5280
  br i1 %tobool, label %for.body, label %for.end, !dbg !5280

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !5281
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5251, metadata !DIExpression()), !dbg !5281
  %4 = load ptr, ptr %node, align 8, !dbg !5281
  store ptr %4, ptr %__mptr, align 8, !dbg !5281
  %5 = load ptr, ptr %__mptr, align 8, !dbg !5281
  %add.ptr = getelementptr i8, ptr %5, i64 -24, !dbg !5281
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5281
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !5282
  %6 = load ptr, ptr %tmp, align 8, !dbg !5281
  store ptr %6, ptr %rbnode, align 8, !dbg !5283
  %7 = load ptr, ptr %map.addr, align 8, !dbg !5284
  %8 = load ptr, ptr %rbnode, align 8, !dbg !5285
  call void @regcache_rbtree_get_base_top_reg(ptr noundef %7, ptr noundef %8, ptr noundef %base_reg, ptr noundef %top_reg) #20, !dbg !5286
  %9 = load i32, ptr %base_reg, align 4, !dbg !5287
  %10 = load i32, ptr %max.addr, align 4, !dbg !5289
  %cmp = icmp ugt i32 %9, %10, !dbg !5290
  br i1 %cmp, label %if.then, label %if.end, !dbg !5291

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !5292

if.end:                                           ; preds = %for.body
  %11 = load i32, ptr %top_reg, align 4, !dbg !5293
  %12 = load i32, ptr %min.addr, align 4, !dbg !5295
  %cmp1 = icmp ult i32 %11, %12, !dbg !5296
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !5297

if.then2:                                         ; preds = %if.end
  br label %for.inc, !dbg !5298

if.end3:                                          ; preds = %if.end
  %13 = load i32, ptr %min.addr, align 4, !dbg !5299
  %14 = load i32, ptr %base_reg, align 4, !dbg !5301
  %cmp4 = icmp ugt i32 %13, %14, !dbg !5302
  br i1 %cmp4, label %if.then5, label %if.else, !dbg !5303

if.then5:                                         ; preds = %if.end3
  %15 = load i32, ptr %min.addr, align 4, !dbg !5304
  %16 = load i32, ptr %base_reg, align 4, !dbg !5305
  %sub = sub i32 %15, %16, !dbg !5306
  %17 = load ptr, ptr %map.addr, align 8, !dbg !5307
  %reg_stride = getelementptr inbounds %struct.regmap, ptr %17, i32 0, i32 49, !dbg !5308
  %18 = load i32, ptr %reg_stride, align 4, !dbg !5308
  %div = udiv i32 %sub, %18, !dbg !5309
  store i32 %div, ptr %start, align 4, !dbg !5310
  br label %if.end6, !dbg !5311

if.else:                                          ; preds = %if.end3
  store i32 0, ptr %start, align 4, !dbg !5312
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then5
  %19 = load i32, ptr %max.addr, align 4, !dbg !5313
  %20 = load i32, ptr %top_reg, align 4, !dbg !5315
  %cmp7 = icmp ult i32 %19, %20, !dbg !5316
  br i1 %cmp7, label %if.then8, label %if.else12, !dbg !5317

if.then8:                                         ; preds = %if.end6
  %21 = load i32, ptr %max.addr, align 4, !dbg !5318
  %22 = load i32, ptr %base_reg, align 4, !dbg !5319
  %sub9 = sub i32 %21, %22, !dbg !5320
  %23 = load ptr, ptr %map.addr, align 8, !dbg !5321
  %reg_stride10 = getelementptr inbounds %struct.regmap, ptr %23, i32 0, i32 49, !dbg !5322
  %24 = load i32, ptr %reg_stride10, align 4, !dbg !5322
  %div11 = udiv i32 %sub9, %24, !dbg !5323
  %add = add i32 %div11, 1, !dbg !5324
  store i32 %add, ptr %end, align 4, !dbg !5325
  br label %if.end13, !dbg !5326

if.else12:                                        ; preds = %if.end6
  %25 = load ptr, ptr %rbnode, align 8, !dbg !5327
  %blklen = getelementptr inbounds %struct.regcache_rbtree_node, ptr %25, i32 0, i32 3, !dbg !5328
  %26 = load i32, ptr %blklen, align 4, !dbg !5328
  store i32 %26, ptr %end, align 4, !dbg !5329
  br label %if.end13

if.end13:                                         ; preds = %if.else12, %if.then8
  %27 = load ptr, ptr %rbnode, align 8, !dbg !5330
  %cache_present = getelementptr inbounds %struct.regcache_rbtree_node, ptr %27, i32 0, i32 1, !dbg !5331
  %28 = load ptr, ptr %cache_present, align 8, !dbg !5331
  %29 = load i32, ptr %start, align 4, !dbg !5332
  %30 = load i32, ptr %end, align 4, !dbg !5333
  %31 = load i32, ptr %start, align 4, !dbg !5334
  %sub14 = sub i32 %30, %31, !dbg !5335
  call void @bitmap_clear(ptr noundef %28, i32 noundef %29, i32 noundef %sub14) #20, !dbg !5336
  br label %for.inc, !dbg !5337

for.inc:                                          ; preds = %if.end13, %if.then2
  %32 = load ptr, ptr %node, align 8, !dbg !5338
  %call15 = call ptr @rb_next(ptr noundef %32) #20, !dbg !5339
  store ptr %call15, ptr %node, align 8, !dbg !5340
  br label %for.cond, !dbg !5341, !llvm.loop !5342

for.end:                                          ; preds = %if.then, %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %end) #18, !dbg !5344
  call void @llvm.lifetime.end.p0(i64 4, ptr %start) #18, !dbg !5344
  call void @llvm.lifetime.end.p0(i64 4, ptr %top_reg) #18, !dbg !5344
  call void @llvm.lifetime.end.p0(i64 4, ptr %base_reg) #18, !dbg !5344
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #18, !dbg !5344
  call void @llvm.lifetime.end.p0(i64 8, ptr %rbnode) #18, !dbg !5344
  call void @llvm.lifetime.end.p0(i64 8, ptr %rbtree_ctx) #18, !dbg !5344
  ret i32 0, !dbg !5345
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #3 align 16 !dbg !5346 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5350, metadata !DIExpression()), !dbg !5355
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5351, metadata !DIExpression()), !dbg !5356
  %0 = load i64, ptr %size.addr, align 8, !dbg !5357
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5358
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5359

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5360
  %tobool = icmp ne i64 %2, 0, !dbg !5360
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5361

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #18, !dbg !5362
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5352, metadata !DIExpression()), !dbg !5363
  %3 = load i64, ptr %size.addr, align 8, !dbg !5364
  %cmp = icmp ugt i64 %3, 8192, !dbg !5366
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5367

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5368
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5369
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #19, !dbg !5370
  store ptr %call, ptr %retval, align 8, !dbg !5371
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5371

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5372
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #20, !dbg !5372
  store i32 %call2, ptr %index, align 4, !dbg !5373
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5374
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5375
  %9 = ptrtoint ptr %8 to i64, !dbg !5375
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #20, !dbg !5376
  %idxprom = zext i32 %call3 to i64, !dbg !5377
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5377
  %10 = load i32, ptr %index, align 4, !dbg !5378
  %idxprom4 = zext i32 %10 to i64, !dbg !5377
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5377
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5377
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5379
  %13 = load i64, ptr %size.addr, align 8, !dbg !5380
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #21, !dbg !5381
  store ptr %call6, ptr %retval, align 8, !dbg !5382
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5382

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #18, !dbg !5383
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5384
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5385
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #19, !dbg !5386
  store ptr %call8, ptr %retval, align 8, !dbg !5387
  br label %return, !dbg !5387

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5388
  ret ptr %16, !dbg !5388
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5389 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #7 align 16 !dbg !5390 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5394, metadata !DIExpression()), !dbg !5396
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5395, metadata !DIExpression()), !dbg !5397
  %0 = load i64, ptr %size.addr, align 8, !dbg !5398
  %tobool = icmp ne i64 %0, 0, !dbg !5398
  br i1 %tobool, label %if.end, label %if.then, !dbg !5400

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5401
  br label %return, !dbg !5401

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5402
  %cmp = icmp ule i64 %1, 8, !dbg !5404
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5405

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5406
  br label %return, !dbg !5406

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5407
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5409
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5410

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5411
  %cmp4 = icmp ule i64 %3, 96, !dbg !5412
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5413

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5414
  br label %return, !dbg !5414

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5415
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5417
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5418

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5419
  %cmp9 = icmp ule i64 %5, 192, !dbg !5420
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5421

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5422
  br label %return, !dbg !5422

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5423
  %cmp12 = icmp ule i64 %6, 8, !dbg !5425
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5426

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5427
  br label %return, !dbg !5427

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5428
  %cmp15 = icmp ule i64 %7, 16, !dbg !5430
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5431

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5432
  br label %return, !dbg !5432

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5433
  %cmp18 = icmp ule i64 %8, 32, !dbg !5435
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5436

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5437
  br label %return, !dbg !5437

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5438
  %cmp21 = icmp ule i64 %9, 64, !dbg !5440
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5441

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5442
  br label %return, !dbg !5442

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5443
  %cmp24 = icmp ule i64 %10, 128, !dbg !5445
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5446

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5447
  br label %return, !dbg !5447

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5448
  %cmp27 = icmp ule i64 %11, 256, !dbg !5450
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5451

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5452
  br label %return, !dbg !5452

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5453
  %cmp30 = icmp ule i64 %12, 512, !dbg !5455
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5456

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5457
  br label %return, !dbg !5457

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5458
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5460
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5461

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5462
  br label %return, !dbg !5462

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5463
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5465
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5466

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5467
  br label %return, !dbg !5467

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5468
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5470
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5471

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5472
  br label %return, !dbg !5472

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5473
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5475
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5476

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5477
  br label %return, !dbg !5477

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5478
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5480
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5481

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5482
  br label %return, !dbg !5482

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5483
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5485
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5486

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5487
  br label %return, !dbg !5487

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5488
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5490
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5491

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !5492
  br label %return, !dbg !5492

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !5493
  %cmp54 = icmp ule i64 %20, 131072, !dbg !5495
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5496

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !5497
  br label %return, !dbg !5497

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !5498
  %cmp57 = icmp ule i64 %21, 262144, !dbg !5500
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5501

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !5502
  br label %return, !dbg !5502

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !5503
  %cmp60 = icmp ule i64 %22, 524288, !dbg !5505
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !5506

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !5507
  br label %return, !dbg !5507

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !5508
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !5510
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5511

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5512
  br label %return, !dbg !5512

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5513
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !5515
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !5516

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !5517
  br label %return, !dbg !5517

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !5518, !range !5520, !noundef !557
  %tobool69 = trunc i8 %25 to i1, !dbg !5518
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !5521

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !5522

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_245() #22, !dbg !5523, !srcloc !5526
  unreachable, !dbg !5523

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !5527

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !5528

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !5529

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5531

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !5529

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 480, i32 0, i64 12) #18, !dbg !5533, !srcloc !5535
  br label %do.end75, !dbg !5533

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !5529

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !5536
  br label %return, !dbg !5536

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5537
  ret i32 %26, !dbg !5537
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !5538 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #7 align 16 !dbg !5544 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5548, metadata !DIExpression()), !dbg !5550
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5549, metadata !DIExpression()), !dbg !5551
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5552
  %and = and i32 %0, 17, !dbg !5552
  %cmp = icmp eq i32 %and, 0, !dbg !5552
  %lnot = xor i1 %cmp, true, !dbg !5552
  %lnot1 = xor i1 %lnot, true, !dbg !5552
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5552
  %conv = sext i32 %lnot.ext to i64, !dbg !5552
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5552
  %tobool = icmp ne i64 %expval, 0, !dbg !5552
  br i1 %tobool, label %if.then, label %if.end, !dbg !5554

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5555
  br label %return, !dbg !5555

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5556
  %and2 = and i32 %1, 1, !dbg !5558
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5558
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5559

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5560
  br label %return, !dbg !5560

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5561
  br label %return, !dbg !5561

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5563
  ret i32 %2, !dbg !5563
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5564 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #6

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5565 dso_local void @__compiletime_assert_245() #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5566 dso_local ptr @rb_first(ptr noundef) #11

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5572 dso_local ptr @rb_next(ptr noundef) #11

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5577 dso_local void @rb_erase(ptr noundef, ptr noundef) #11

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5581 dso_local void @kfree(ptr noundef) #11

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5584 dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) #11

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #11

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @seq_read(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #11

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rbtree_open(ptr noundef %inode, ptr noundef %file) #0 align 16 !dbg !5588 {
entry:
  %inode.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5590, metadata !DIExpression()), !dbg !5592
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5591, metadata !DIExpression()), !dbg !5592
  %0 = load ptr, ptr %file.addr, align 8, !dbg !5592
  %1 = load ptr, ptr %inode.addr, align 8, !dbg !5592
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 47, !dbg !5592
  %2 = load ptr, ptr %i_private, align 8, !dbg !5592
  %call = call i32 @single_open(ptr noundef %0, ptr noundef @rbtree_show, ptr noundef %2) #20, !dbg !5592
  ret i32 %call, !dbg !5592
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #11

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5593 dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) #11

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rbtree_show(ptr noundef %s, ptr noundef %ignored) #0 align 16 !dbg !5596 {
entry:
  %s.addr = alloca ptr, align 8
  %ignored.addr = alloca ptr, align 8
  %map = alloca ptr, align 8
  %rbtree_ctx = alloca ptr, align 8
  %n = alloca ptr, align 8
  %node = alloca ptr, align 8
  %base = alloca i32, align 4
  %top = alloca i32, align 4
  %mem_size = alloca i64, align 8
  %nodes = alloca i32, align 4
  %registers = alloca i32, align 4
  %this_registers = alloca i32, align 4
  %average = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !5598, metadata !DIExpression()), !dbg !5616
  store ptr %ignored, ptr %ignored.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ignored.addr, metadata !5599, metadata !DIExpression()), !dbg !5617
  call void @llvm.lifetime.start.p0(i64 8, ptr %map) #18, !dbg !5618
  call void @llvm.dbg.declare(metadata ptr %map, metadata !5600, metadata !DIExpression()), !dbg !5619
  %0 = load ptr, ptr %s.addr, align 8, !dbg !5620
  %private = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11, !dbg !5621
  %1 = load ptr, ptr %private, align 8, !dbg !5621
  store ptr %1, ptr %map, align 8, !dbg !5619
  call void @llvm.lifetime.start.p0(i64 8, ptr %rbtree_ctx) #18, !dbg !5622
  call void @llvm.dbg.declare(metadata ptr %rbtree_ctx, metadata !5601, metadata !DIExpression()), !dbg !5623
  %2 = load ptr, ptr %map, align 8, !dbg !5624
  %cache = getelementptr inbounds %struct.regmap, ptr %2, i32 0, i32 63, !dbg !5625
  %3 = load ptr, ptr %cache, align 8, !dbg !5625
  store ptr %3, ptr %rbtree_ctx, align 8, !dbg !5623
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #18, !dbg !5626
  call void @llvm.dbg.declare(metadata ptr %n, metadata !5602, metadata !DIExpression()), !dbg !5627
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #18, !dbg !5628
  call void @llvm.dbg.declare(metadata ptr %node, metadata !5603, metadata !DIExpression()), !dbg !5629
  call void @llvm.lifetime.start.p0(i64 4, ptr %base) #18, !dbg !5630
  call void @llvm.dbg.declare(metadata ptr %base, metadata !5604, metadata !DIExpression()), !dbg !5631
  call void @llvm.lifetime.start.p0(i64 4, ptr %top) #18, !dbg !5630
  call void @llvm.dbg.declare(metadata ptr %top, metadata !5605, metadata !DIExpression()), !dbg !5632
  call void @llvm.lifetime.start.p0(i64 8, ptr %mem_size) #18, !dbg !5633
  call void @llvm.dbg.declare(metadata ptr %mem_size, metadata !5606, metadata !DIExpression()), !dbg !5634
  call void @llvm.lifetime.start.p0(i64 4, ptr %nodes) #18, !dbg !5635
  call void @llvm.dbg.declare(metadata ptr %nodes, metadata !5607, metadata !DIExpression()), !dbg !5636
  store i32 0, ptr %nodes, align 4, !dbg !5636
  call void @llvm.lifetime.start.p0(i64 4, ptr %registers) #18, !dbg !5637
  call void @llvm.dbg.declare(metadata ptr %registers, metadata !5608, metadata !DIExpression()), !dbg !5638
  store i32 0, ptr %registers, align 4, !dbg !5638
  call void @llvm.lifetime.start.p0(i64 4, ptr %this_registers) #18, !dbg !5639
  call void @llvm.dbg.declare(metadata ptr %this_registers, metadata !5609, metadata !DIExpression()), !dbg !5640
  call void @llvm.lifetime.start.p0(i64 4, ptr %average) #18, !dbg !5639
  call void @llvm.dbg.declare(metadata ptr %average, metadata !5610, metadata !DIExpression()), !dbg !5641
  %4 = load ptr, ptr %map, align 8, !dbg !5642
  %lock = getelementptr inbounds %struct.regmap, ptr %4, i32 0, i32 2, !dbg !5643
  %5 = load ptr, ptr %lock, align 8, !dbg !5643
  %6 = load ptr, ptr %map, align 8, !dbg !5644
  %lock_arg = getelementptr inbounds %struct.regmap, ptr %6, i32 0, i32 4, !dbg !5645
  %7 = load ptr, ptr %lock_arg, align 8, !dbg !5645
  call void %5(ptr noundef %7) #20, !dbg !5642
  store i64 16, ptr %mem_size, align 8, !dbg !5646
  %8 = load ptr, ptr %rbtree_ctx, align 8, !dbg !5647
  %root = getelementptr inbounds %struct.regcache_rbtree_ctx, ptr %8, i32 0, i32 0, !dbg !5648
  %call = call ptr @rb_first(ptr noundef %root) #20, !dbg !5649
  store ptr %call, ptr %node, align 8, !dbg !5650
  br label %for.cond, !dbg !5651

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load ptr, ptr %node, align 8, !dbg !5652
  %cmp = icmp ne ptr %9, null, !dbg !5653
  br i1 %cmp, label %for.body, label %for.end, !dbg !5654

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !5655
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5611, metadata !DIExpression()), !dbg !5655
  %10 = load ptr, ptr %node, align 8, !dbg !5655
  store ptr %10, ptr %__mptr, align 8, !dbg !5655
  %11 = load ptr, ptr %__mptr, align 8, !dbg !5655
  %add.ptr = getelementptr i8, ptr %11, i64 -24, !dbg !5655
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5655
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !5656
  %12 = load ptr, ptr %tmp, align 8, !dbg !5655
  store ptr %12, ptr %n, align 8, !dbg !5657
  %13 = load i64, ptr %mem_size, align 8, !dbg !5658
  %add = add i64 %13, 48, !dbg !5658
  store i64 %add, ptr %mem_size, align 8, !dbg !5658
  %14 = load ptr, ptr %n, align 8, !dbg !5659
  %blklen = getelementptr inbounds %struct.regcache_rbtree_node, ptr %14, i32 0, i32 3, !dbg !5660
  %15 = load i32, ptr %blklen, align 4, !dbg !5660
  %16 = load ptr, ptr %map, align 8, !dbg !5661
  %cache_word_size = getelementptr inbounds %struct.regmap, ptr %16, i32 0, i32 55, !dbg !5662
  %17 = load i32, ptr %cache_word_size, align 8, !dbg !5662
  %mul = mul i32 %15, %17, !dbg !5663
  %conv = zext i32 %mul to i64, !dbg !5664
  %18 = load i64, ptr %mem_size, align 8, !dbg !5665
  %add1 = add i64 %18, %conv, !dbg !5665
  store i64 %add1, ptr %mem_size, align 8, !dbg !5665
  %19 = load ptr, ptr %n, align 8, !dbg !5666
  %blklen2 = getelementptr inbounds %struct.regcache_rbtree_node, ptr %19, i32 0, i32 3, !dbg !5666
  %20 = load i32, ptr %blklen2, align 4, !dbg !5666
  %conv3 = zext i32 %20 to i64, !dbg !5666
  %add4 = add i64 %conv3, 64, !dbg !5666
  %sub = sub i64 %add4, 1, !dbg !5666
  %div = udiv i64 %sub, 64, !dbg !5666
  %mul5 = mul i64 %div, 8, !dbg !5667
  %21 = load i64, ptr %mem_size, align 8, !dbg !5668
  %add6 = add i64 %21, %mul5, !dbg !5668
  store i64 %add6, ptr %mem_size, align 8, !dbg !5668
  %22 = load ptr, ptr %map, align 8, !dbg !5669
  %23 = load ptr, ptr %n, align 8, !dbg !5670
  call void @regcache_rbtree_get_base_top_reg(ptr noundef %22, ptr noundef %23, ptr noundef %base, ptr noundef %top) #20, !dbg !5671
  %24 = load i32, ptr %top, align 4, !dbg !5672
  %25 = load i32, ptr %base, align 4, !dbg !5673
  %sub7 = sub i32 %24, %25, !dbg !5674
  %26 = load ptr, ptr %map, align 8, !dbg !5675
  %reg_stride = getelementptr inbounds %struct.regmap, ptr %26, i32 0, i32 49, !dbg !5676
  %27 = load i32, ptr %reg_stride, align 4, !dbg !5676
  %div8 = udiv i32 %sub7, %27, !dbg !5677
  %add9 = add i32 %div8, 1, !dbg !5678
  store i32 %add9, ptr %this_registers, align 4, !dbg !5679
  %28 = load ptr, ptr %s.addr, align 8, !dbg !5680
  %29 = load i32, ptr %base, align 4, !dbg !5681
  %30 = load i32, ptr %top, align 4, !dbg !5682
  %31 = load i32, ptr %this_registers, align 4, !dbg !5683
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %28, ptr noundef @.str.2, i32 noundef %29, i32 noundef %30, i32 noundef %31) #20, !dbg !5684
  %32 = load i32, ptr %nodes, align 4, !dbg !5685
  %inc = add i32 %32, 1, !dbg !5685
  store i32 %inc, ptr %nodes, align 4, !dbg !5685
  %33 = load i32, ptr %this_registers, align 4, !dbg !5686
  %34 = load i32, ptr %registers, align 4, !dbg !5687
  %add10 = add i32 %34, %33, !dbg !5687
  store i32 %add10, ptr %registers, align 4, !dbg !5687
  br label %for.inc, !dbg !5688

for.inc:                                          ; preds = %for.body
  %35 = load ptr, ptr %node, align 8, !dbg !5689
  %call11 = call ptr @rb_next(ptr noundef %35) #20, !dbg !5690
  store ptr %call11, ptr %node, align 8, !dbg !5691
  br label %for.cond, !dbg !5692, !llvm.loop !5693

for.end:                                          ; preds = %for.cond
  %36 = load i32, ptr %nodes, align 4, !dbg !5695
  %tobool = icmp ne i32 %36, 0, !dbg !5695
  br i1 %tobool, label %if.then, label %if.else, !dbg !5697

if.then:                                          ; preds = %for.end
  %37 = load i32, ptr %registers, align 4, !dbg !5698
  %38 = load i32, ptr %nodes, align 4, !dbg !5699
  %div12 = sdiv i32 %37, %38, !dbg !5700
  store i32 %div12, ptr %average, align 4, !dbg !5701
  br label %if.end, !dbg !5702

if.else:                                          ; preds = %for.end
  store i32 0, ptr %average, align 4, !dbg !5703
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %39 = load ptr, ptr %s.addr, align 8, !dbg !5704
  %40 = load i32, ptr %nodes, align 4, !dbg !5705
  %41 = load i32, ptr %registers, align 4, !dbg !5706
  %42 = load i32, ptr %average, align 4, !dbg !5707
  %43 = load i64, ptr %mem_size, align 8, !dbg !5708
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %39, ptr noundef @.str.3, i32 noundef %40, i32 noundef %41, i32 noundef %42, i64 noundef %43) #20, !dbg !5709
  %44 = load ptr, ptr %map, align 8, !dbg !5710
  %unlock = getelementptr inbounds %struct.regmap, ptr %44, i32 0, i32 3, !dbg !5711
  %45 = load ptr, ptr %unlock, align 8, !dbg !5711
  %46 = load ptr, ptr %map, align 8, !dbg !5712
  %lock_arg13 = getelementptr inbounds %struct.regmap, ptr %46, i32 0, i32 4, !dbg !5713
  %47 = load ptr, ptr %lock_arg13, align 8, !dbg !5713
  call void %45(ptr noundef %47) #20, !dbg !5710
  call void @llvm.lifetime.end.p0(i64 4, ptr %average) #18, !dbg !5714
  call void @llvm.lifetime.end.p0(i64 4, ptr %this_registers) #18, !dbg !5714
  call void @llvm.lifetime.end.p0(i64 4, ptr %registers) #18, !dbg !5714
  call void @llvm.lifetime.end.p0(i64 4, ptr %nodes) #18, !dbg !5714
  call void @llvm.lifetime.end.p0(i64 8, ptr %mem_size) #18, !dbg !5714
  call void @llvm.lifetime.end.p0(i64 4, ptr %top) #18, !dbg !5714
  call void @llvm.lifetime.end.p0(i64 4, ptr %base) #18, !dbg !5714
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #18, !dbg !5714
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #18, !dbg !5714
  call void @llvm.lifetime.end.p0(i64 8, ptr %rbtree_ctx) #18, !dbg !5714
  call void @llvm.lifetime.end.p0(i64 8, ptr %map) #18, !dbg !5714
  ret i32 0, !dbg !5715
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @regcache_rbtree_get_base_top_reg(ptr noundef %map, ptr noundef %rbnode, ptr noundef %base, ptr noundef %top) #12 align 16 !dbg !5716 {
entry:
  %map.addr = alloca ptr, align 8
  %rbnode.addr = alloca ptr, align 8
  %base.addr = alloca ptr, align 8
  %top.addr = alloca ptr, align 8
  store ptr %map, ptr %map.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !5720, metadata !DIExpression()), !dbg !5724
  store ptr %rbnode, ptr %rbnode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rbnode.addr, metadata !5721, metadata !DIExpression()), !dbg !5725
  store ptr %base, ptr %base.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !5722, metadata !DIExpression()), !dbg !5726
  store ptr %top, ptr %top.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %top.addr, metadata !5723, metadata !DIExpression()), !dbg !5727
  %0 = load ptr, ptr %rbnode.addr, align 8, !dbg !5728
  %base_reg = getelementptr inbounds %struct.regcache_rbtree_node, ptr %0, i32 0, i32 2, !dbg !5729
  %1 = load i32, ptr %base_reg, align 8, !dbg !5729
  %2 = load ptr, ptr %base.addr, align 8, !dbg !5730
  store i32 %1, ptr %2, align 4, !dbg !5731
  %3 = load ptr, ptr %rbnode.addr, align 8, !dbg !5732
  %base_reg1 = getelementptr inbounds %struct.regcache_rbtree_node, ptr %3, i32 0, i32 2, !dbg !5733
  %4 = load i32, ptr %base_reg1, align 8, !dbg !5733
  %5 = load ptr, ptr %rbnode.addr, align 8, !dbg !5734
  %blklen = getelementptr inbounds %struct.regcache_rbtree_node, ptr %5, i32 0, i32 3, !dbg !5735
  %6 = load i32, ptr %blklen, align 4, !dbg !5735
  %sub = sub i32 %6, 1, !dbg !5736
  %7 = load ptr, ptr %map.addr, align 8, !dbg !5737
  %reg_stride = getelementptr inbounds %struct.regmap, ptr %7, i32 0, i32 49, !dbg !5738
  %8 = load i32, ptr %reg_stride, align 4, !dbg !5738
  %mul = mul i32 %sub, %8, !dbg !5739
  %add = add i32 %4, %mul, !dbg !5740
  %9 = load ptr, ptr %top.addr, align 8, !dbg !5741
  store i32 %add, ptr %9, align 4, !dbg !5742
  ret void, !dbg !5743
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5744 dso_local void @seq_printf(ptr noundef, ptr noundef, ...) #11

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @regcache_rbtree_lookup(ptr noundef %map, i32 noundef %reg) #0 align 16 !dbg !5747 {
entry:
  %retval = alloca ptr, align 8
  %map.addr = alloca ptr, align 8
  %reg.addr = alloca i32, align 4
  %rbtree_ctx = alloca ptr, align 8
  %node = alloca ptr, align 8
  %rbnode = alloca ptr, align 8
  %base_reg = alloca i32, align 4
  %top_reg = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %map, ptr %map.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !5751, metadata !DIExpression()), !dbg !5761
  store i32 %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !5752, metadata !DIExpression()), !dbg !5762
  call void @llvm.lifetime.start.p0(i64 8, ptr %rbtree_ctx) #18, !dbg !5763
  call void @llvm.dbg.declare(metadata ptr %rbtree_ctx, metadata !5753, metadata !DIExpression()), !dbg !5764
  %0 = load ptr, ptr %map.addr, align 8, !dbg !5765
  %cache = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 63, !dbg !5766
  %1 = load ptr, ptr %cache, align 8, !dbg !5766
  store ptr %1, ptr %rbtree_ctx, align 8, !dbg !5764
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #18, !dbg !5767
  call void @llvm.dbg.declare(metadata ptr %node, metadata !5754, metadata !DIExpression()), !dbg !5768
  call void @llvm.lifetime.start.p0(i64 8, ptr %rbnode) #18, !dbg !5769
  call void @llvm.dbg.declare(metadata ptr %rbnode, metadata !5755, metadata !DIExpression()), !dbg !5770
  call void @llvm.lifetime.start.p0(i64 4, ptr %base_reg) #18, !dbg !5771
  call void @llvm.dbg.declare(metadata ptr %base_reg, metadata !5756, metadata !DIExpression()), !dbg !5772
  call void @llvm.lifetime.start.p0(i64 4, ptr %top_reg) #18, !dbg !5771
  call void @llvm.dbg.declare(metadata ptr %top_reg, metadata !5757, metadata !DIExpression()), !dbg !5773
  %2 = load ptr, ptr %rbtree_ctx, align 8, !dbg !5774
  %cached_rbnode = getelementptr inbounds %struct.regcache_rbtree_ctx, ptr %2, i32 0, i32 1, !dbg !5775
  %3 = load ptr, ptr %cached_rbnode, align 8, !dbg !5775
  store ptr %3, ptr %rbnode, align 8, !dbg !5776
  %4 = load ptr, ptr %rbnode, align 8, !dbg !5777
  %tobool = icmp ne ptr %4, null, !dbg !5777
  br i1 %tobool, label %if.then, label %if.end3, !dbg !5779

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %map.addr, align 8, !dbg !5780
  %6 = load ptr, ptr %rbnode, align 8, !dbg !5782
  call void @regcache_rbtree_get_base_top_reg(ptr noundef %5, ptr noundef %6, ptr noundef %base_reg, ptr noundef %top_reg) #20, !dbg !5783
  %7 = load i32, ptr %reg.addr, align 4, !dbg !5784
  %8 = load i32, ptr %base_reg, align 4, !dbg !5786
  %cmp = icmp uge i32 %7, %8, !dbg !5787
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !5788

land.lhs.true:                                    ; preds = %if.then
  %9 = load i32, ptr %reg.addr, align 4, !dbg !5789
  %10 = load i32, ptr %top_reg, align 4, !dbg !5790
  %cmp1 = icmp ule i32 %9, %10, !dbg !5791
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !5792

if.then2:                                         ; preds = %land.lhs.true
  %11 = load ptr, ptr %rbnode, align 8, !dbg !5793
  store ptr %11, ptr %retval, align 8, !dbg !5794
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5794

if.end:                                           ; preds = %land.lhs.true, %if.then
  br label %if.end3, !dbg !5795

if.end3:                                          ; preds = %if.end, %entry
  %12 = load ptr, ptr %rbtree_ctx, align 8, !dbg !5796
  %root = getelementptr inbounds %struct.regcache_rbtree_ctx, ptr %12, i32 0, i32 0, !dbg !5797
  %rb_node = getelementptr inbounds %struct.rb_root, ptr %root, i32 0, i32 0, !dbg !5798
  %13 = load ptr, ptr %rb_node, align 8, !dbg !5798
  store ptr %13, ptr %node, align 8, !dbg !5799
  br label %while.cond, !dbg !5800

while.cond:                                       ; preds = %if.end17, %if.end3
  %14 = load ptr, ptr %node, align 8, !dbg !5801
  %tobool4 = icmp ne ptr %14, null, !dbg !5800
  br i1 %tobool4, label %while.body, label %while.end, !dbg !5800

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !5802
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5758, metadata !DIExpression()), !dbg !5802
  %15 = load ptr, ptr %node, align 8, !dbg !5802
  store ptr %15, ptr %__mptr, align 8, !dbg !5802
  %16 = load ptr, ptr %__mptr, align 8, !dbg !5802
  %add.ptr = getelementptr i8, ptr %16, i64 -24, !dbg !5802
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5802
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !5803
  %17 = load ptr, ptr %tmp, align 8, !dbg !5802
  store ptr %17, ptr %rbnode, align 8, !dbg !5804
  %18 = load ptr, ptr %map.addr, align 8, !dbg !5805
  %19 = load ptr, ptr %rbnode, align 8, !dbg !5806
  call void @regcache_rbtree_get_base_top_reg(ptr noundef %18, ptr noundef %19, ptr noundef %base_reg, ptr noundef %top_reg) #20, !dbg !5807
  %20 = load i32, ptr %reg.addr, align 4, !dbg !5808
  %21 = load i32, ptr %base_reg, align 4, !dbg !5810
  %cmp5 = icmp uge i32 %20, %21, !dbg !5811
  br i1 %cmp5, label %land.lhs.true6, label %if.else, !dbg !5812

land.lhs.true6:                                   ; preds = %while.body
  %22 = load i32, ptr %reg.addr, align 4, !dbg !5813
  %23 = load i32, ptr %top_reg, align 4, !dbg !5814
  %cmp7 = icmp ule i32 %22, %23, !dbg !5815
  br i1 %cmp7, label %if.then8, label %if.else, !dbg !5816

if.then8:                                         ; preds = %land.lhs.true6
  %24 = load ptr, ptr %rbnode, align 8, !dbg !5817
  %25 = load ptr, ptr %rbtree_ctx, align 8, !dbg !5819
  %cached_rbnode9 = getelementptr inbounds %struct.regcache_rbtree_ctx, ptr %25, i32 0, i32 1, !dbg !5820
  store ptr %24, ptr %cached_rbnode9, align 8, !dbg !5821
  %26 = load ptr, ptr %rbnode, align 8, !dbg !5822
  store ptr %26, ptr %retval, align 8, !dbg !5823
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5823

if.else:                                          ; preds = %land.lhs.true6, %while.body
  %27 = load i32, ptr %reg.addr, align 4, !dbg !5824
  %28 = load i32, ptr %top_reg, align 4, !dbg !5826
  %cmp10 = icmp ugt i32 %27, %28, !dbg !5827
  br i1 %cmp10, label %if.then11, label %if.else12, !dbg !5828

if.then11:                                        ; preds = %if.else
  %29 = load ptr, ptr %node, align 8, !dbg !5829
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %29, i32 0, i32 1, !dbg !5831
  %30 = load ptr, ptr %rb_right, align 8, !dbg !5831
  store ptr %30, ptr %node, align 8, !dbg !5832
  br label %if.end16, !dbg !5833

if.else12:                                        ; preds = %if.else
  %31 = load i32, ptr %reg.addr, align 4, !dbg !5834
  %32 = load i32, ptr %base_reg, align 4, !dbg !5836
  %cmp13 = icmp ult i32 %31, %32, !dbg !5837
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !5838

if.then14:                                        ; preds = %if.else12
  %33 = load ptr, ptr %node, align 8, !dbg !5839
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %33, i32 0, i32 2, !dbg !5841
  %34 = load ptr, ptr %rb_left, align 8, !dbg !5841
  store ptr %34, ptr %node, align 8, !dbg !5842
  br label %if.end15, !dbg !5843

if.end15:                                         ; preds = %if.then14, %if.else12
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then11
  br label %if.end17

if.end17:                                         ; preds = %if.end16
  br label %while.cond, !dbg !5800, !llvm.loop !5844

while.end:                                        ; preds = %while.cond
  store ptr null, ptr %retval, align 8, !dbg !5846
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5846

cleanup:                                          ; preds = %while.end, %if.then8, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %top_reg) #18, !dbg !5847
  call void @llvm.lifetime.end.p0(i64 4, ptr %base_reg) #18, !dbg !5847
  call void @llvm.lifetime.end.p0(i64 8, ptr %rbnode) #18, !dbg !5847
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #18, !dbg !5847
  call void @llvm.lifetime.end.p0(i64 8, ptr %rbtree_ctx) #18, !dbg !5847
  %35 = load ptr, ptr %retval, align 8, !dbg !5847
  ret ptr %35, !dbg !5847
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !5848 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5856, metadata !DIExpression()), !dbg !5861
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5857, metadata !DIExpression()), !dbg !5862
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #18, !dbg !5863
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5858, metadata !DIExpression()), !dbg !5864
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5865
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5866
  %div = udiv i64 %1, 64, !dbg !5866
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5867
  store ptr %add.ptr, ptr %p, align 8, !dbg !5864
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #18, !dbg !5868
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !5859, metadata !DIExpression()), !dbg !5869
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5870
  %rem = urem i64 %2, 64, !dbg !5870
  %shl = shl i64 1, %rem, !dbg !5870
  store i64 %shl, ptr %mask, align 8, !dbg !5869
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #18, !dbg !5871
  call void @llvm.dbg.declare(metadata ptr %val, metadata !5860, metadata !DIExpression()), !dbg !5872
  %3 = load ptr, ptr %p, align 8, !dbg !5873
  %4 = load i64, ptr %3, align 8, !dbg !5874
  store i64 %4, ptr %val, align 8, !dbg !5872
  %5 = load i64, ptr %val, align 8, !dbg !5875
  %6 = load i64, ptr %mask, align 8, !dbg !5876
  %and = and i64 %5, %6, !dbg !5877
  %tobool = icmp ne i64 %and, 0, !dbg !5878
  %lnot = xor i1 %tobool, true, !dbg !5878
  %lnot1 = xor i1 %lnot, true, !dbg !5879
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #18, !dbg !5880
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #18, !dbg !5880
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #18, !dbg !5880
  ret i1 %lnot1, !dbg !5881
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !5882 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5885, metadata !DIExpression()), !dbg !5887
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5886, metadata !DIExpression()), !dbg !5888
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5889
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5890
  %div = udiv i64 %1, 64, !dbg !5890
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5891
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #20, !dbg !5892
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5893
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5894
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #20, !dbg !5895
  ret i1 %call, !dbg !5896
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @regcache_rbtree_get_register(ptr noundef %map, ptr noundef %rbnode, i32 noundef %idx) #0 align 16 !dbg !5897 {
entry:
  %map.addr = alloca ptr, align 8
  %rbnode.addr = alloca ptr, align 8
  %idx.addr = alloca i32, align 4
  store ptr %map, ptr %map.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !5901, metadata !DIExpression()), !dbg !5904
  store ptr %rbnode, ptr %rbnode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rbnode.addr, metadata !5902, metadata !DIExpression()), !dbg !5905
  store i32 %idx, ptr %idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !5903, metadata !DIExpression()), !dbg !5906
  %0 = load ptr, ptr %map.addr, align 8, !dbg !5907
  %1 = load ptr, ptr %rbnode.addr, align 8, !dbg !5908
  %block = getelementptr inbounds %struct.regcache_rbtree_node, ptr %1, i32 0, i32 0, !dbg !5909
  %2 = load ptr, ptr %block, align 8, !dbg !5909
  %3 = load i32, ptr %idx.addr, align 4, !dbg !5910
  %call = call i32 @regcache_get_val(ptr noundef %0, ptr noundef %2, i32 noundef %3) #20, !dbg !5911
  ret i32 %call, !dbg !5912
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #7 align 16 !dbg !5913 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5921, metadata !DIExpression()), !dbg !5923
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5922, metadata !DIExpression()), !dbg !5924
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5925
  %1 = load i64, ptr %size.addr, align 8, !dbg !5926
  %conv = trunc i64 %1 to i32, !dbg !5926
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #20, !dbg !5927
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5928
  %3 = load i64, ptr %size.addr, align 8, !dbg !5928
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #20, !dbg !5928
  ret void, !dbg !5929
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !5930 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5933, metadata !DIExpression()), !dbg !5935
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5934, metadata !DIExpression()), !dbg !5936
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5937
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5938
  br i1 %1, label %cond.true, label %cond.false, !dbg !5938

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5939
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5940
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #20, !dbg !5941
  %conv = zext i1 %call to i32, !dbg !5941
  br label %cond.end, !dbg !5938

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !5942
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !5943
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #20, !dbg !5944
  %conv2 = zext i1 %call1 to i32, !dbg !5944
  br label %cond.end, !dbg !5938

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !5938
  %tobool = icmp ne i32 %cond, 0, !dbg !5938
  ret i1 %tobool, !dbg !5945
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #12 align 16 !dbg !5946 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5951, metadata !DIExpression()), !dbg !5953
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5952, metadata !DIExpression()), !dbg !5954
  ret i1 true, !dbg !5955
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #12 align 16 !dbg !5956 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5961, metadata !DIExpression()), !dbg !5964
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5962, metadata !DIExpression()), !dbg !5965
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5963, metadata !DIExpression()), !dbg !5966
  ret void, !dbg !5967
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !5968 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5972, metadata !DIExpression()), !dbg !5974
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5973, metadata !DIExpression()), !dbg !5975
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5976
  %and = and i64 %0, 63, !dbg !5977
  %shl = shl i64 1, %and, !dbg !5978
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5979
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5980
  %shr = ashr i64 %2, 6, !dbg !5981
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !5979
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !5979
  %and1 = and i64 %shl, %3, !dbg !5982
  %cmp = icmp ne i64 %and1, 0, !dbg !5983
  ret i1 %cmp, !dbg !5984
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !5985 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5987, metadata !DIExpression()), !dbg !5990
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5988, metadata !DIExpression()), !dbg !5991
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #18, !dbg !5992
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !5989, metadata !DIExpression()), !dbg !5993
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5994
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5995
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #18, !dbg !5996, !srcloc !5997
  %3 = icmp ult i8 %2, 2, !dbg !5996
  call void @llvm.assume(i1 %3), !dbg !5996
  store i8 %2, ptr %oldbit, align 1, !dbg !5996
  %4 = load i8, ptr %oldbit, align 1, !dbg !5998, !range !5520, !noundef !557
  %tobool = trunc i8 %4 to i1, !dbg !5998
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #18, !dbg !5999
  ret i1 %tobool, !dbg !6000
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6001 dso_local i32 @regcache_get_val(ptr noundef, ptr noundef, i32 noundef) #11

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @regcache_rbtree_set_register(ptr noundef %map, ptr noundef %rbnode, i32 noundef %idx, i32 noundef %val) #0 align 16 !dbg !6004 {
entry:
  %map.addr = alloca ptr, align 8
  %rbnode.addr = alloca ptr, align 8
  %idx.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  store ptr %map, ptr %map.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !6008, metadata !DIExpression()), !dbg !6012
  store ptr %rbnode, ptr %rbnode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rbnode.addr, metadata !6009, metadata !DIExpression()), !dbg !6013
  store i32 %idx, ptr %idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !6010, metadata !DIExpression()), !dbg !6014
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6011, metadata !DIExpression()), !dbg !6015
  %0 = load i32, ptr %idx.addr, align 4, !dbg !6016
  %conv = zext i32 %0 to i64, !dbg !6016
  %1 = load ptr, ptr %rbnode.addr, align 8, !dbg !6017
  %cache_present = getelementptr inbounds %struct.regcache_rbtree_node, ptr %1, i32 0, i32 1, !dbg !6018
  %2 = load ptr, ptr %cache_present, align 8, !dbg !6018
  call void @set_bit(i64 noundef %conv, ptr noundef %2) #20, !dbg !6019
  %3 = load ptr, ptr %map.addr, align 8, !dbg !6020
  %4 = load ptr, ptr %rbnode.addr, align 8, !dbg !6021
  %block = getelementptr inbounds %struct.regcache_rbtree_node, ptr %4, i32 0, i32 0, !dbg !6022
  %5 = load ptr, ptr %block, align 8, !dbg !6022
  %6 = load i32, ptr %idx.addr, align 4, !dbg !6023
  %7 = load i32, ptr %val.addr, align 4, !dbg !6024
  call void @regcache_set_val(ptr noundef %3, ptr noundef %5, i32 noundef %6, i32 noundef %7) #20, !dbg !6025
  ret void, !dbg !6026
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @regcache_rbtree_insert_to_block(ptr noundef %map, ptr noundef %rbnode, i32 noundef %base_reg, i32 noundef %top_reg, i32 noundef %reg, i32 noundef %value) #0 align 16 !dbg !6027 {
entry:
  %retval = alloca i32, align 4
  %map.addr = alloca ptr, align 8
  %rbnode.addr = alloca ptr, align 8
  %base_reg.addr = alloca i32, align 4
  %top_reg.addr = alloca i32, align 4
  %reg.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %blklen = alloca i32, align 4
  %pos = alloca i32, align 4
  %offset = alloca i32, align 4
  %present = alloca ptr, align 8
  %blk = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %map, ptr %map.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !6031, metadata !DIExpression()), !dbg !6043
  store ptr %rbnode, ptr %rbnode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rbnode.addr, metadata !6032, metadata !DIExpression()), !dbg !6044
  store i32 %base_reg, ptr %base_reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base_reg.addr, metadata !6033, metadata !DIExpression()), !dbg !6045
  store i32 %top_reg, ptr %top_reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %top_reg.addr, metadata !6034, metadata !DIExpression()), !dbg !6046
  store i32 %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !6035, metadata !DIExpression()), !dbg !6047
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !6036, metadata !DIExpression()), !dbg !6048
  call void @llvm.lifetime.start.p0(i64 4, ptr %blklen) #18, !dbg !6049
  call void @llvm.dbg.declare(metadata ptr %blklen, metadata !6037, metadata !DIExpression()), !dbg !6050
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos) #18, !dbg !6051
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !6038, metadata !DIExpression()), !dbg !6052
  call void @llvm.lifetime.start.p0(i64 4, ptr %offset) #18, !dbg !6051
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !6039, metadata !DIExpression()), !dbg !6053
  call void @llvm.lifetime.start.p0(i64 8, ptr %present) #18, !dbg !6054
  call void @llvm.dbg.declare(metadata ptr %present, metadata !6040, metadata !DIExpression()), !dbg !6055
  call void @llvm.lifetime.start.p0(i64 8, ptr %blk) #18, !dbg !6056
  call void @llvm.dbg.declare(metadata ptr %blk, metadata !6041, metadata !DIExpression()), !dbg !6057
  %0 = load i32, ptr %top_reg.addr, align 4, !dbg !6058
  %1 = load i32, ptr %base_reg.addr, align 4, !dbg !6059
  %sub = sub i32 %0, %1, !dbg !6060
  %2 = load ptr, ptr %map.addr, align 8, !dbg !6061
  %reg_stride = getelementptr inbounds %struct.regmap, ptr %2, i32 0, i32 49, !dbg !6062
  %3 = load i32, ptr %reg_stride, align 4, !dbg !6062
  %div = udiv i32 %sub, %3, !dbg !6063
  %add = add i32 %div, 1, !dbg !6064
  store i32 %add, ptr %blklen, align 4, !dbg !6065
  %4 = load i32, ptr %reg.addr, align 4, !dbg !6066
  %5 = load i32, ptr %base_reg.addr, align 4, !dbg !6067
  %sub1 = sub i32 %4, %5, !dbg !6068
  %6 = load ptr, ptr %map.addr, align 8, !dbg !6069
  %reg_stride2 = getelementptr inbounds %struct.regmap, ptr %6, i32 0, i32 49, !dbg !6070
  %7 = load i32, ptr %reg_stride2, align 4, !dbg !6070
  %div3 = udiv i32 %sub1, %7, !dbg !6071
  store i32 %div3, ptr %pos, align 4, !dbg !6072
  %8 = load ptr, ptr %rbnode.addr, align 8, !dbg !6073
  %base_reg4 = getelementptr inbounds %struct.regcache_rbtree_node, ptr %8, i32 0, i32 2, !dbg !6074
  %9 = load i32, ptr %base_reg4, align 8, !dbg !6074
  %10 = load i32, ptr %base_reg.addr, align 4, !dbg !6075
  %sub5 = sub i32 %9, %10, !dbg !6076
  %11 = load ptr, ptr %map.addr, align 8, !dbg !6077
  %reg_stride6 = getelementptr inbounds %struct.regmap, ptr %11, i32 0, i32 49, !dbg !6078
  %12 = load i32, ptr %reg_stride6, align 4, !dbg !6078
  %div7 = udiv i32 %sub5, %12, !dbg !6079
  store i32 %div7, ptr %offset, align 4, !dbg !6080
  %13 = load ptr, ptr %rbnode.addr, align 8, !dbg !6081
  %block = getelementptr inbounds %struct.regcache_rbtree_node, ptr %13, i32 0, i32 0, !dbg !6082
  %14 = load ptr, ptr %block, align 8, !dbg !6082
  %15 = load i32, ptr %blklen, align 4, !dbg !6083
  %16 = load ptr, ptr %map.addr, align 8, !dbg !6084
  %cache_word_size = getelementptr inbounds %struct.regmap, ptr %16, i32 0, i32 55, !dbg !6085
  %17 = load i32, ptr %cache_word_size, align 8, !dbg !6085
  %mul = mul i32 %15, %17, !dbg !6086
  %conv = zext i32 %mul to i64, !dbg !6083
  %18 = load ptr, ptr %map.addr, align 8, !dbg !6087
  %alloc_flags = getelementptr inbounds %struct.regmap, ptr %18, i32 0, i32 5, !dbg !6088
  %19 = load i32, ptr %alloc_flags, align 8, !dbg !6088
  %call = call ptr @krealloc(ptr noundef %14, i64 noundef %conv, i32 noundef %19) #23, !dbg !6089
  store ptr %call, ptr %blk, align 8, !dbg !6090
  %20 = load ptr, ptr %blk, align 8, !dbg !6091
  %tobool = icmp ne ptr %20, null, !dbg !6091
  br i1 %tobool, label %if.end, label %if.then, !dbg !6093

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !6094
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6094

if.end:                                           ; preds = %entry
  %21 = load ptr, ptr %blk, align 8, !dbg !6095
  %22 = load ptr, ptr %rbnode.addr, align 8, !dbg !6096
  %block8 = getelementptr inbounds %struct.regcache_rbtree_node, ptr %22, i32 0, i32 0, !dbg !6097
  store ptr %21, ptr %block8, align 8, !dbg !6098
  %23 = load i32, ptr %blklen, align 4, !dbg !6099
  %conv9 = zext i32 %23 to i64, !dbg !6099
  %add10 = add i64 %conv9, 64, !dbg !6099
  %sub11 = sub i64 %add10, 1, !dbg !6099
  %div12 = udiv i64 %sub11, 64, !dbg !6099
  %24 = load ptr, ptr %rbnode.addr, align 8, !dbg !6101
  %blklen13 = getelementptr inbounds %struct.regcache_rbtree_node, ptr %24, i32 0, i32 3, !dbg !6101
  %25 = load i32, ptr %blklen13, align 4, !dbg !6101
  %conv14 = zext i32 %25 to i64, !dbg !6101
  %add15 = add i64 %conv14, 64, !dbg !6101
  %sub16 = sub i64 %add15, 1, !dbg !6101
  %div17 = udiv i64 %sub16, 64, !dbg !6101
  %cmp = icmp ugt i64 %div12, %div17, !dbg !6102
  br i1 %cmp, label %if.then19, label %if.else, !dbg !6103

if.then19:                                        ; preds = %if.end
  %26 = load ptr, ptr %rbnode.addr, align 8, !dbg !6104
  %cache_present = getelementptr inbounds %struct.regcache_rbtree_node, ptr %26, i32 0, i32 1, !dbg !6106
  %27 = load ptr, ptr %cache_present, align 8, !dbg !6106
  %28 = load i32, ptr %blklen, align 4, !dbg !6107
  %conv20 = zext i32 %28 to i64, !dbg !6107
  %add21 = add i64 %conv20, 64, !dbg !6107
  %sub22 = sub i64 %add21, 1, !dbg !6107
  %div23 = udiv i64 %sub22, 64, !dbg !6107
  %mul24 = mul i64 %div23, 8, !dbg !6108
  %29 = load ptr, ptr %map.addr, align 8, !dbg !6109
  %alloc_flags25 = getelementptr inbounds %struct.regmap, ptr %29, i32 0, i32 5, !dbg !6110
  %30 = load i32, ptr %alloc_flags25, align 8, !dbg !6110
  %call26 = call ptr @krealloc(ptr noundef %27, i64 noundef %mul24, i32 noundef %30) #23, !dbg !6111
  store ptr %call26, ptr %present, align 8, !dbg !6112
  %31 = load ptr, ptr %present, align 8, !dbg !6113
  %tobool27 = icmp ne ptr %31, null, !dbg !6113
  br i1 %tobool27, label %if.end29, label %if.then28, !dbg !6115

if.then28:                                        ; preds = %if.then19
  store i32 -12, ptr %retval, align 4, !dbg !6116
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6116

if.end29:                                         ; preds = %if.then19
  %32 = load ptr, ptr %present, align 8, !dbg !6117
  %33 = load ptr, ptr %rbnode.addr, align 8, !dbg !6118
  %blklen30 = getelementptr inbounds %struct.regcache_rbtree_node, ptr %33, i32 0, i32 3, !dbg !6118
  %34 = load i32, ptr %blklen30, align 4, !dbg !6118
  %conv31 = zext i32 %34 to i64, !dbg !6118
  %add32 = add i64 %conv31, 64, !dbg !6118
  %sub33 = sub i64 %add32, 1, !dbg !6118
  %div34 = udiv i64 %sub33, 64, !dbg !6118
  %add.ptr = getelementptr i64, ptr %32, i64 %div34, !dbg !6119
  %35 = load i32, ptr %blklen, align 4, !dbg !6120
  %conv35 = zext i32 %35 to i64, !dbg !6120
  %add36 = add i64 %conv35, 64, !dbg !6120
  %sub37 = sub i64 %add36, 1, !dbg !6120
  %div38 = udiv i64 %sub37, 64, !dbg !6120
  %36 = load ptr, ptr %rbnode.addr, align 8, !dbg !6121
  %blklen39 = getelementptr inbounds %struct.regcache_rbtree_node, ptr %36, i32 0, i32 3, !dbg !6121
  %37 = load i32, ptr %blklen39, align 4, !dbg !6121
  %conv40 = zext i32 %37 to i64, !dbg !6121
  %add41 = add i64 %conv40, 64, !dbg !6121
  %sub42 = sub i64 %add41, 1, !dbg !6121
  %div43 = udiv i64 %sub42, 64, !dbg !6121
  %sub44 = sub i64 %div38, %div43, !dbg !6122
  %mul45 = mul i64 %sub44, 8, !dbg !6123
  call void @llvm.memset.p0.i64(ptr align 8 %add.ptr, i8 0, i64 %mul45, i1 false), !dbg !6124
  br label %if.end47, !dbg !6125

if.else:                                          ; preds = %if.end
  %38 = load ptr, ptr %rbnode.addr, align 8, !dbg !6126
  %cache_present46 = getelementptr inbounds %struct.regcache_rbtree_node, ptr %38, i32 0, i32 1, !dbg !6128
  %39 = load ptr, ptr %cache_present46, align 8, !dbg !6128
  store ptr %39, ptr %present, align 8, !dbg !6129
  br label %if.end47

if.end47:                                         ; preds = %if.else, %if.end29
  %40 = load i32, ptr %pos, align 4, !dbg !6130
  %cmp48 = icmp eq i32 %40, 0, !dbg !6132
  br i1 %cmp48, label %if.then50, label %if.end58, !dbg !6133

if.then50:                                        ; preds = %if.end47
  %41 = load ptr, ptr %blk, align 8, !dbg !6134
  %42 = load i32, ptr %offset, align 4, !dbg !6136
  %43 = load ptr, ptr %map.addr, align 8, !dbg !6137
  %cache_word_size51 = getelementptr inbounds %struct.regmap, ptr %43, i32 0, i32 55, !dbg !6138
  %44 = load i32, ptr %cache_word_size51, align 8, !dbg !6138
  %mul52 = mul i32 %42, %44, !dbg !6139
  %idx.ext = zext i32 %mul52 to i64, !dbg !6140
  %add.ptr53 = getelementptr i8, ptr %41, i64 %idx.ext, !dbg !6140
  %45 = load ptr, ptr %blk, align 8, !dbg !6141
  %46 = load ptr, ptr %rbnode.addr, align 8, !dbg !6142
  %blklen54 = getelementptr inbounds %struct.regcache_rbtree_node, ptr %46, i32 0, i32 3, !dbg !6143
  %47 = load i32, ptr %blklen54, align 4, !dbg !6143
  %48 = load ptr, ptr %map.addr, align 8, !dbg !6144
  %cache_word_size55 = getelementptr inbounds %struct.regmap, ptr %48, i32 0, i32 55, !dbg !6145
  %49 = load i32, ptr %cache_word_size55, align 8, !dbg !6145
  %mul56 = mul i32 %47, %49, !dbg !6146
  %conv57 = zext i32 %mul56 to i64, !dbg !6142
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %add.ptr53, ptr align 1 %45, i64 %conv57, i1 false), !dbg !6147
  %50 = load ptr, ptr %present, align 8, !dbg !6148
  %51 = load ptr, ptr %present, align 8, !dbg !6149
  %52 = load i32, ptr %offset, align 4, !dbg !6150
  %53 = load i32, ptr %blklen, align 4, !dbg !6151
  call void @bitmap_shift_left(ptr noundef %50, ptr noundef %51, i32 noundef %52, i32 noundef %53) #20, !dbg !6152
  br label %if.end58, !dbg !6153

if.end58:                                         ; preds = %if.then50, %if.end47
  %54 = load i32, ptr %blklen, align 4, !dbg !6154
  %55 = load ptr, ptr %rbnode.addr, align 8, !dbg !6155
  %blklen59 = getelementptr inbounds %struct.regcache_rbtree_node, ptr %55, i32 0, i32 3, !dbg !6156
  store i32 %54, ptr %blklen59, align 4, !dbg !6157
  %56 = load i32, ptr %base_reg.addr, align 4, !dbg !6158
  %57 = load ptr, ptr %rbnode.addr, align 8, !dbg !6159
  %base_reg60 = getelementptr inbounds %struct.regcache_rbtree_node, ptr %57, i32 0, i32 2, !dbg !6160
  store i32 %56, ptr %base_reg60, align 8, !dbg !6161
  %58 = load ptr, ptr %present, align 8, !dbg !6162
  %59 = load ptr, ptr %rbnode.addr, align 8, !dbg !6163
  %cache_present61 = getelementptr inbounds %struct.regcache_rbtree_node, ptr %59, i32 0, i32 1, !dbg !6164
  store ptr %58, ptr %cache_present61, align 8, !dbg !6165
  %60 = load ptr, ptr %map.addr, align 8, !dbg !6166
  %61 = load ptr, ptr %rbnode.addr, align 8, !dbg !6167
  %62 = load i32, ptr %pos, align 4, !dbg !6168
  %63 = load i32, ptr %value.addr, align 4, !dbg !6169
  call void @regcache_rbtree_set_register(ptr noundef %60, ptr noundef %61, i32 noundef %62, i32 noundef %63) #20, !dbg !6170
  store i32 0, ptr %retval, align 4, !dbg !6171
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6171

cleanup:                                          ; preds = %if.end58, %if.then28, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %blk) #18, !dbg !6172
  call void @llvm.lifetime.end.p0(i64 8, ptr %present) #18, !dbg !6172
  call void @llvm.lifetime.end.p0(i64 4, ptr %offset) #18, !dbg !6172
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos) #18, !dbg !6172
  call void @llvm.lifetime.end.p0(i64 4, ptr %blklen) #18, !dbg !6172
  %64 = load i32, ptr %retval, align 4, !dbg !6172
  ret i32 %64, !dbg !6172
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @regcache_rbtree_node_alloc(ptr noundef %map, i32 noundef %reg) #0 align 16 !dbg !6173 {
entry:
  %retval = alloca ptr, align 8
  %map.addr = alloca ptr, align 8
  %reg.addr = alloca i32, align 4
  %rbnode = alloca ptr, align 8
  %range = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %map, ptr %map.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !6175, metadata !DIExpression()), !dbg !6182
  store i32 %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !6176, metadata !DIExpression()), !dbg !6183
  call void @llvm.lifetime.start.p0(i64 8, ptr %rbnode) #18, !dbg !6184
  call void @llvm.dbg.declare(metadata ptr %rbnode, metadata !6177, metadata !DIExpression()), !dbg !6185
  call void @llvm.lifetime.start.p0(i64 8, ptr %range) #18, !dbg !6186
  call void @llvm.dbg.declare(metadata ptr %range, metadata !6178, metadata !DIExpression()), !dbg !6187
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #18, !dbg !6188
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6179, metadata !DIExpression()), !dbg !6189
  %0 = load ptr, ptr %map.addr, align 8, !dbg !6190
  %alloc_flags = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 5, !dbg !6191
  %1 = load i32, ptr %alloc_flags, align 8, !dbg !6191
  %call = call noalias ptr @kzalloc(i64 noundef 48, i32 noundef %1) #19, !dbg !6192
  store ptr %call, ptr %rbnode, align 8, !dbg !6193
  %2 = load ptr, ptr %rbnode, align 8, !dbg !6194
  %tobool = icmp ne ptr %2, null, !dbg !6194
  br i1 %tobool, label %if.end, label %if.then, !dbg !6196

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !6197
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6197

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %map.addr, align 8, !dbg !6198
  %rd_table = getelementptr inbounds %struct.regmap, ptr %3, i32 0, i32 35, !dbg !6200
  %4 = load ptr, ptr %rd_table, align 8, !dbg !6200
  %tobool1 = icmp ne ptr %4, null, !dbg !6198
  br i1 %tobool1, label %if.then2, label %if.end18, !dbg !6201

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %i, align 4, !dbg !6202
  br label %for.cond, !dbg !6205

for.cond:                                         ; preds = %for.inc, %if.then2
  %5 = load i32, ptr %i, align 4, !dbg !6206
  %6 = load ptr, ptr %map.addr, align 8, !dbg !6208
  %rd_table3 = getelementptr inbounds %struct.regmap, ptr %6, i32 0, i32 35, !dbg !6209
  %7 = load ptr, ptr %rd_table3, align 8, !dbg !6209
  %n_yes_ranges = getelementptr inbounds %struct.regmap_access_table, ptr %7, i32 0, i32 1, !dbg !6210
  %8 = load i32, ptr %n_yes_ranges, align 8, !dbg !6210
  %cmp = icmp ult i32 %5, %8, !dbg !6211
  br i1 %cmp, label %for.body, label %for.end, !dbg !6212

for.body:                                         ; preds = %for.cond
  %9 = load i32, ptr %reg.addr, align 4, !dbg !6213
  %10 = load ptr, ptr %map.addr, align 8, !dbg !6216
  %rd_table4 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 35, !dbg !6217
  %11 = load ptr, ptr %rd_table4, align 8, !dbg !6217
  %yes_ranges = getelementptr inbounds %struct.regmap_access_table, ptr %11, i32 0, i32 0, !dbg !6218
  %12 = load ptr, ptr %yes_ranges, align 8, !dbg !6218
  %13 = load i32, ptr %i, align 4, !dbg !6219
  %idxprom = sext i32 %13 to i64, !dbg !6216
  %arrayidx = getelementptr %struct.regmap_range, ptr %12, i64 %idxprom, !dbg !6216
  %call5 = call zeroext i1 @regmap_reg_in_range(i32 noundef %9, ptr noundef %arrayidx) #20, !dbg !6220
  br i1 %call5, label %if.then6, label %if.end7, !dbg !6221

if.then6:                                         ; preds = %for.body
  br label %for.end, !dbg !6222

if.end7:                                          ; preds = %for.body
  br label %for.inc, !dbg !6223

for.inc:                                          ; preds = %if.end7
  %14 = load i32, ptr %i, align 4, !dbg !6224
  %inc = add i32 %14, 1, !dbg !6224
  store i32 %inc, ptr %i, align 4, !dbg !6224
  br label %for.cond, !dbg !6225, !llvm.loop !6226

for.end:                                          ; preds = %if.then6, %for.cond
  %15 = load i32, ptr %i, align 4, !dbg !6228
  %16 = load ptr, ptr %map.addr, align 8, !dbg !6230
  %rd_table8 = getelementptr inbounds %struct.regmap, ptr %16, i32 0, i32 35, !dbg !6231
  %17 = load ptr, ptr %rd_table8, align 8, !dbg !6231
  %n_yes_ranges9 = getelementptr inbounds %struct.regmap_access_table, ptr %17, i32 0, i32 1, !dbg !6232
  %18 = load i32, ptr %n_yes_ranges9, align 8, !dbg !6232
  %cmp10 = icmp ne i32 %15, %18, !dbg !6233
  br i1 %cmp10, label %if.then11, label %if.end17, !dbg !6234

if.then11:                                        ; preds = %for.end
  %19 = load ptr, ptr %map.addr, align 8, !dbg !6235
  %rd_table12 = getelementptr inbounds %struct.regmap, ptr %19, i32 0, i32 35, !dbg !6237
  %20 = load ptr, ptr %rd_table12, align 8, !dbg !6237
  %yes_ranges13 = getelementptr inbounds %struct.regmap_access_table, ptr %20, i32 0, i32 0, !dbg !6238
  %21 = load ptr, ptr %yes_ranges13, align 8, !dbg !6238
  %22 = load i32, ptr %i, align 4, !dbg !6239
  %idxprom14 = sext i32 %22 to i64, !dbg !6235
  %arrayidx15 = getelementptr %struct.regmap_range, ptr %21, i64 %idxprom14, !dbg !6235
  store ptr %arrayidx15, ptr %range, align 8, !dbg !6240
  %23 = load ptr, ptr %range, align 8, !dbg !6241
  %range_max = getelementptr inbounds %struct.regmap_range, ptr %23, i32 0, i32 1, !dbg !6242
  %24 = load i32, ptr %range_max, align 4, !dbg !6242
  %25 = load ptr, ptr %range, align 8, !dbg !6243
  %range_min = getelementptr inbounds %struct.regmap_range, ptr %25, i32 0, i32 0, !dbg !6244
  %26 = load i32, ptr %range_min, align 4, !dbg !6244
  %sub = sub i32 %24, %26, !dbg !6245
  %27 = load ptr, ptr %map.addr, align 8, !dbg !6246
  %reg_stride = getelementptr inbounds %struct.regmap, ptr %27, i32 0, i32 49, !dbg !6247
  %28 = load i32, ptr %reg_stride, align 4, !dbg !6247
  %div = udiv i32 %sub, %28, !dbg !6248
  %add = add i32 %div, 1, !dbg !6249
  %29 = load ptr, ptr %rbnode, align 8, !dbg !6250
  %blklen = getelementptr inbounds %struct.regcache_rbtree_node, ptr %29, i32 0, i32 3, !dbg !6251
  store i32 %add, ptr %blklen, align 4, !dbg !6252
  %30 = load ptr, ptr %range, align 8, !dbg !6253
  %range_min16 = getelementptr inbounds %struct.regmap_range, ptr %30, i32 0, i32 0, !dbg !6254
  %31 = load i32, ptr %range_min16, align 4, !dbg !6254
  %32 = load ptr, ptr %rbnode, align 8, !dbg !6255
  %base_reg = getelementptr inbounds %struct.regcache_rbtree_node, ptr %32, i32 0, i32 2, !dbg !6256
  store i32 %31, ptr %base_reg, align 8, !dbg !6257
  br label %if.end17, !dbg !6258

if.end17:                                         ; preds = %if.then11, %for.end
  br label %if.end18, !dbg !6259

if.end18:                                         ; preds = %if.end17, %if.end
  %33 = load ptr, ptr %rbnode, align 8, !dbg !6260
  %blklen19 = getelementptr inbounds %struct.regcache_rbtree_node, ptr %33, i32 0, i32 3, !dbg !6262
  %34 = load i32, ptr %blklen19, align 4, !dbg !6262
  %tobool20 = icmp ne i32 %34, 0, !dbg !6260
  br i1 %tobool20, label %if.end24, label %if.then21, !dbg !6263

if.then21:                                        ; preds = %if.end18
  %35 = load ptr, ptr %rbnode, align 8, !dbg !6264
  %blklen22 = getelementptr inbounds %struct.regcache_rbtree_node, ptr %35, i32 0, i32 3, !dbg !6266
  store i32 1, ptr %blklen22, align 4, !dbg !6267
  %36 = load i32, ptr %reg.addr, align 4, !dbg !6268
  %37 = load ptr, ptr %rbnode, align 8, !dbg !6269
  %base_reg23 = getelementptr inbounds %struct.regcache_rbtree_node, ptr %37, i32 0, i32 2, !dbg !6270
  store i32 %36, ptr %base_reg23, align 8, !dbg !6271
  br label %if.end24, !dbg !6272

if.end24:                                         ; preds = %if.then21, %if.end18
  %38 = load ptr, ptr %rbnode, align 8, !dbg !6273
  %blklen25 = getelementptr inbounds %struct.regcache_rbtree_node, ptr %38, i32 0, i32 3, !dbg !6274
  %39 = load i32, ptr %blklen25, align 4, !dbg !6274
  %conv = zext i32 %39 to i64, !dbg !6273
  %40 = load ptr, ptr %map.addr, align 8, !dbg !6275
  %cache_word_size = getelementptr inbounds %struct.regmap, ptr %40, i32 0, i32 55, !dbg !6276
  %41 = load i32, ptr %cache_word_size, align 8, !dbg !6276
  %conv26 = zext i32 %41 to i64, !dbg !6275
  %42 = load ptr, ptr %map.addr, align 8, !dbg !6277
  %alloc_flags27 = getelementptr inbounds %struct.regmap, ptr %42, i32 0, i32 5, !dbg !6278
  %43 = load i32, ptr %alloc_flags27, align 8, !dbg !6278
  %call28 = call noalias ptr @kmalloc_array(i64 noundef %conv, i64 noundef %conv26, i32 noundef %43) #24, !dbg !6279
  %44 = load ptr, ptr %rbnode, align 8, !dbg !6280
  %block = getelementptr inbounds %struct.regcache_rbtree_node, ptr %44, i32 0, i32 0, !dbg !6281
  store ptr %call28, ptr %block, align 8, !dbg !6282
  %45 = load ptr, ptr %rbnode, align 8, !dbg !6283
  %block29 = getelementptr inbounds %struct.regcache_rbtree_node, ptr %45, i32 0, i32 0, !dbg !6285
  %46 = load ptr, ptr %block29, align 8, !dbg !6285
  %tobool30 = icmp ne ptr %46, null, !dbg !6283
  br i1 %tobool30, label %if.end32, label %if.then31, !dbg !6286

if.then31:                                        ; preds = %if.end24
  br label %err_free, !dbg !6287

if.end32:                                         ; preds = %if.end24
  %47 = load ptr, ptr %rbnode, align 8, !dbg !6288
  %blklen33 = getelementptr inbounds %struct.regcache_rbtree_node, ptr %47, i32 0, i32 3, !dbg !6288
  %48 = load i32, ptr %blklen33, align 4, !dbg !6288
  %conv34 = zext i32 %48 to i64, !dbg !6288
  %add35 = add i64 %conv34, 64, !dbg !6288
  %sub36 = sub i64 %add35, 1, !dbg !6288
  %div37 = udiv i64 %sub36, 64, !dbg !6288
  %49 = load ptr, ptr %map.addr, align 8, !dbg !6289
  %alloc_flags38 = getelementptr inbounds %struct.regmap, ptr %49, i32 0, i32 5, !dbg !6290
  %50 = load i32, ptr %alloc_flags38, align 8, !dbg !6290
  %call39 = call noalias ptr @kcalloc(i64 noundef %div37, i64 noundef 8, i32 noundef %50) #24, !dbg !6291
  %51 = load ptr, ptr %rbnode, align 8, !dbg !6292
  %cache_present = getelementptr inbounds %struct.regcache_rbtree_node, ptr %51, i32 0, i32 1, !dbg !6293
  store ptr %call39, ptr %cache_present, align 8, !dbg !6294
  %52 = load ptr, ptr %rbnode, align 8, !dbg !6295
  %cache_present40 = getelementptr inbounds %struct.regcache_rbtree_node, ptr %52, i32 0, i32 1, !dbg !6297
  %53 = load ptr, ptr %cache_present40, align 8, !dbg !6297
  %tobool41 = icmp ne ptr %53, null, !dbg !6295
  br i1 %tobool41, label %if.end43, label %if.then42, !dbg !6298

if.then42:                                        ; preds = %if.end32
  br label %err_free_block, !dbg !6299

if.end43:                                         ; preds = %if.end32
  %54 = load ptr, ptr %rbnode, align 8, !dbg !6300
  store ptr %54, ptr %retval, align 8, !dbg !6301
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6301

err_free_block:                                   ; preds = %if.then42
  call void @llvm.dbg.label(metadata !6180), !dbg !6302
  %55 = load ptr, ptr %rbnode, align 8, !dbg !6303
  %block44 = getelementptr inbounds %struct.regcache_rbtree_node, ptr %55, i32 0, i32 0, !dbg !6304
  %56 = load ptr, ptr %block44, align 8, !dbg !6304
  call void @kfree(ptr noundef %56) #20, !dbg !6305
  br label %err_free, !dbg !6305

err_free:                                         ; preds = %err_free_block, %if.then31
  call void @llvm.dbg.label(metadata !6181), !dbg !6306
  %57 = load ptr, ptr %rbnode, align 8, !dbg !6307
  call void @kfree(ptr noundef %57) #20, !dbg !6308
  store ptr null, ptr %retval, align 8, !dbg !6309
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6309

cleanup:                                          ; preds = %err_free, %if.end43, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #18, !dbg !6310
  call void @llvm.lifetime.end.p0(i64 8, ptr %range) #18, !dbg !6310
  call void @llvm.lifetime.end.p0(i64 8, ptr %rbnode) #18, !dbg !6310
  %58 = load ptr, ptr %retval, align 8, !dbg !6310
  ret ptr %58, !dbg !6310
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @regcache_rbtree_insert(ptr noundef %map, ptr noundef %root, ptr noundef %rbnode) #0 align 16 !dbg !6311 {
entry:
  %retval = alloca i32, align 4
  %map.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %rbnode.addr = alloca ptr, align 8
  %new = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %rbnode_tmp = alloca ptr, align 8
  %base_reg_tmp = alloca i32, align 4
  %top_reg_tmp = alloca i32, align 4
  %base_reg = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %map, ptr %map.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !6315, metadata !DIExpression()), !dbg !6328
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !6316, metadata !DIExpression()), !dbg !6329
  store ptr %rbnode, ptr %rbnode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rbnode.addr, metadata !6317, metadata !DIExpression()), !dbg !6330
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #18, !dbg !6331
  call void @llvm.dbg.declare(metadata ptr %new, metadata !6318, metadata !DIExpression()), !dbg !6332
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #18, !dbg !6331
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !6320, metadata !DIExpression()), !dbg !6333
  call void @llvm.lifetime.start.p0(i64 8, ptr %rbnode_tmp) #18, !dbg !6334
  call void @llvm.dbg.declare(metadata ptr %rbnode_tmp, metadata !6321, metadata !DIExpression()), !dbg !6335
  call void @llvm.lifetime.start.p0(i64 4, ptr %base_reg_tmp) #18, !dbg !6336
  call void @llvm.dbg.declare(metadata ptr %base_reg_tmp, metadata !6322, metadata !DIExpression()), !dbg !6337
  call void @llvm.lifetime.start.p0(i64 4, ptr %top_reg_tmp) #18, !dbg !6336
  call void @llvm.dbg.declare(metadata ptr %top_reg_tmp, metadata !6323, metadata !DIExpression()), !dbg !6338
  call void @llvm.lifetime.start.p0(i64 4, ptr %base_reg) #18, !dbg !6339
  call void @llvm.dbg.declare(metadata ptr %base_reg, metadata !6324, metadata !DIExpression()), !dbg !6340
  store ptr null, ptr %parent, align 8, !dbg !6341
  %0 = load ptr, ptr %root.addr, align 8, !dbg !6342
  %rb_node = getelementptr inbounds %struct.rb_root, ptr %0, i32 0, i32 0, !dbg !6343
  store ptr %rb_node, ptr %new, align 8, !dbg !6344
  br label %while.cond, !dbg !6345

while.cond:                                       ; preds = %if.end9, %entry
  %1 = load ptr, ptr %new, align 8, !dbg !6346
  %2 = load ptr, ptr %1, align 8, !dbg !6347
  %tobool = icmp ne ptr %2, null, !dbg !6345
  br i1 %tobool, label %while.body, label %while.end, !dbg !6345

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !6348
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6325, metadata !DIExpression()), !dbg !6348
  %3 = load ptr, ptr %new, align 8, !dbg !6348
  %4 = load ptr, ptr %3, align 8, !dbg !6348
  store ptr %4, ptr %__mptr, align 8, !dbg !6348
  %5 = load ptr, ptr %__mptr, align 8, !dbg !6348
  %add.ptr = getelementptr i8, ptr %5, i64 -24, !dbg !6348
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6348
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !6349
  %6 = load ptr, ptr %tmp, align 8, !dbg !6348
  store ptr %6, ptr %rbnode_tmp, align 8, !dbg !6350
  %7 = load ptr, ptr %map.addr, align 8, !dbg !6351
  %8 = load ptr, ptr %rbnode_tmp, align 8, !dbg !6352
  call void @regcache_rbtree_get_base_top_reg(ptr noundef %7, ptr noundef %8, ptr noundef %base_reg_tmp, ptr noundef %top_reg_tmp) #20, !dbg !6353
  %9 = load ptr, ptr %rbnode.addr, align 8, !dbg !6354
  %base_reg1 = getelementptr inbounds %struct.regcache_rbtree_node, ptr %9, i32 0, i32 2, !dbg !6355
  %10 = load i32, ptr %base_reg1, align 8, !dbg !6355
  store i32 %10, ptr %base_reg, align 4, !dbg !6356
  %11 = load ptr, ptr %new, align 8, !dbg !6357
  %12 = load ptr, ptr %11, align 8, !dbg !6358
  store ptr %12, ptr %parent, align 8, !dbg !6359
  %13 = load i32, ptr %base_reg, align 4, !dbg !6360
  %14 = load i32, ptr %base_reg_tmp, align 4, !dbg !6362
  %cmp = icmp uge i32 %13, %14, !dbg !6363
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !6364

land.lhs.true:                                    ; preds = %while.body
  %15 = load i32, ptr %base_reg, align 4, !dbg !6365
  %16 = load i32, ptr %top_reg_tmp, align 4, !dbg !6366
  %cmp2 = icmp ule i32 %15, %16, !dbg !6367
  br i1 %cmp2, label %if.then, label %if.else, !dbg !6368

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4, !dbg !6369
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6369

if.else:                                          ; preds = %land.lhs.true, %while.body
  %17 = load i32, ptr %base_reg, align 4, !dbg !6370
  %18 = load i32, ptr %top_reg_tmp, align 4, !dbg !6372
  %cmp3 = icmp ugt i32 %17, %18, !dbg !6373
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !6374

if.then4:                                         ; preds = %if.else
  %19 = load ptr, ptr %new, align 8, !dbg !6375
  %20 = load ptr, ptr %19, align 8, !dbg !6376
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %20, i32 0, i32 1, !dbg !6377
  store ptr %rb_right, ptr %new, align 8, !dbg !6378
  br label %if.end8, !dbg !6379

if.else5:                                         ; preds = %if.else
  %21 = load i32, ptr %base_reg, align 4, !dbg !6380
  %22 = load i32, ptr %base_reg_tmp, align 4, !dbg !6382
  %cmp6 = icmp ult i32 %21, %22, !dbg !6383
  br i1 %cmp6, label %if.then7, label %if.end, !dbg !6384

if.then7:                                         ; preds = %if.else5
  %23 = load ptr, ptr %new, align 8, !dbg !6385
  %24 = load ptr, ptr %23, align 8, !dbg !6386
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %24, i32 0, i32 2, !dbg !6387
  store ptr %rb_left, ptr %new, align 8, !dbg !6388
  br label %if.end, !dbg !6389

if.end:                                           ; preds = %if.then7, %if.else5
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then4
  br label %if.end9

if.end9:                                          ; preds = %if.end8
  br label %while.cond, !dbg !6345, !llvm.loop !6390

while.end:                                        ; preds = %while.cond
  %25 = load ptr, ptr %rbnode.addr, align 8, !dbg !6392
  %node = getelementptr inbounds %struct.regcache_rbtree_node, ptr %25, i32 0, i32 4, !dbg !6393
  %26 = load ptr, ptr %parent, align 8, !dbg !6394
  %27 = load ptr, ptr %new, align 8, !dbg !6395
  call void @rb_link_node(ptr noundef %node, ptr noundef %26, ptr noundef %27) #20, !dbg !6396
  %28 = load ptr, ptr %rbnode.addr, align 8, !dbg !6397
  %node10 = getelementptr inbounds %struct.regcache_rbtree_node, ptr %28, i32 0, i32 4, !dbg !6398
  %29 = load ptr, ptr %root.addr, align 8, !dbg !6399
  call void @rb_insert_color(ptr noundef %node10, ptr noundef %29) #20, !dbg !6400
  store i32 1, ptr %retval, align 4, !dbg !6401
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6401

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %base_reg) #18, !dbg !6402
  call void @llvm.lifetime.end.p0(i64 4, ptr %top_reg_tmp) #18, !dbg !6402
  call void @llvm.lifetime.end.p0(i64 4, ptr %base_reg_tmp) #18, !dbg !6402
  call void @llvm.lifetime.end.p0(i64 8, ptr %rbnode_tmp) #18, !dbg !6402
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #18, !dbg !6402
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #18, !dbg !6402
  %30 = load i32, ptr %retval, align 4, !dbg !6402
  ret i32 %30, !dbg !6402
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !6403 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6409, metadata !DIExpression()), !dbg !6411
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6410, metadata !DIExpression()), !dbg !6412
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6413
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6414
  %div = sdiv i64 %1, 64, !dbg !6414
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6415
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #20, !dbg !6416
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6417
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6418
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #20, !dbg !6419
  ret void, !dbg !6420
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6421 dso_local void @regcache_set_val(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #7 align 16 !dbg !6424 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6426, metadata !DIExpression()), !dbg !6428
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6427, metadata !DIExpression()), !dbg !6429
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6430
  %1 = load i64, ptr %size.addr, align 8, !dbg !6431
  %conv = trunc i64 %1 to i32, !dbg !6431
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #20, !dbg !6432
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6433
  %3 = load i64, ptr %size.addr, align 8, !dbg !6433
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #20, !dbg !6433
  ret void, !dbg !6434
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !6435 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6437, metadata !DIExpression()), !dbg !6439
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6438, metadata !DIExpression()), !dbg !6440
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6441
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6443
  br i1 %1, label %if.then, label %if.else, !dbg !6444

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !6445
  %3 = load i64, ptr %nr.addr, align 8, !dbg !6445
  %shr = ashr i64 %3, 3, !dbg !6445
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !6445
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6447
  %and = and i64 %4, 7, !dbg !6447
  %sh_prom = trunc i64 %and to i32, !dbg !6447
  %shl = shl i32 1, %sh_prom, !dbg !6447
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #18, !dbg !6448, !srcloc !6449
  br label %if.end, !dbg !6450

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6451
  %6 = load i64, ptr %nr.addr, align 8, !dbg !6453
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #18, !dbg !6454, !srcloc !6455
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !6456
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #12 align 16 !dbg !6457 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6459, metadata !DIExpression()), !dbg !6461
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6460, metadata !DIExpression()), !dbg !6462
  ret i1 true, !dbg !6463
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(1)
declare !dbg !6464 dso_local ptr @krealloc(ptr noundef, i64 noundef, i32 noundef) #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bitmap_shift_left(ptr noundef %dst, ptr noundef %src, i32 noundef %shift, i32 noundef %nbits) #12 align 16 !dbg !6467 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %shift.addr = alloca i32, align 4
  %nbits.addr = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !6472, metadata !DIExpression()), !dbg !6476
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !6473, metadata !DIExpression()), !dbg !6477
  store i32 %shift, ptr %shift.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %shift.addr, metadata !6474, metadata !DIExpression()), !dbg !6478
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !6475, metadata !DIExpression()), !dbg !6479
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !6480
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !6480
  br i1 %1, label %land.lhs.true, label %if.else, !dbg !6480

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %nbits.addr, align 4, !dbg !6480
  %cmp = icmp ule i32 %2, 64, !dbg !6480
  br i1 %cmp, label %land.lhs.true1, label %if.else, !dbg !6480

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !6480
  %cmp2 = icmp ugt i32 %3, 0, !dbg !6480
  br i1 %cmp2, label %if.then, label %if.else, !dbg !6482

if.then:                                          ; preds = %land.lhs.true1
  %4 = load ptr, ptr %src.addr, align 8, !dbg !6483
  %5 = load i64, ptr %4, align 8, !dbg !6484
  %6 = load i32, ptr %shift.addr, align 4, !dbg !6485
  %sh_prom = zext i32 %6 to i64, !dbg !6486
  %shl = shl i64 %5, %sh_prom, !dbg !6486
  %7 = load i32, ptr %nbits.addr, align 4, !dbg !6487
  %sub = sub i32 0, %7, !dbg !6487
  %and = and i32 %sub, 63, !dbg !6487
  %sh_prom3 = zext i32 %and to i64, !dbg !6487
  %shr = lshr i64 -1, %sh_prom3, !dbg !6487
  %and4 = and i64 %shl, %shr, !dbg !6488
  %8 = load ptr, ptr %dst.addr, align 8, !dbg !6489
  store i64 %and4, ptr %8, align 8, !dbg !6490
  br label %if.end, !dbg !6491

if.else:                                          ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %9 = load ptr, ptr %dst.addr, align 8, !dbg !6492
  %10 = load ptr, ptr %src.addr, align 8, !dbg !6493
  %11 = load i32, ptr %shift.addr, align 4, !dbg !6494
  %12 = load i32, ptr %nbits.addr, align 4, !dbg !6495
  call void @__bitmap_shift_left(ptr noundef %9, ptr noundef %10, i32 noundef %11, i32 noundef %12) #20, !dbg !6496
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !6497
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6498 dso_local void @__bitmap_shift_left(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #11

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #16 align 16 !dbg !6499 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6501, metadata !DIExpression()), !dbg !6503
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6502, metadata !DIExpression()), !dbg !6504
  %0 = load i64, ptr %size.addr, align 8, !dbg !6505
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6506
  %or = or i32 %1, 256, !dbg !6507
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #19, !dbg !6508
  ret ptr %call, !dbg !6509
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @regmap_reg_in_range(i32 noundef %reg, ptr noundef %range) #12 align 16 !dbg !6510 {
entry:
  %reg.addr = alloca i32, align 4
  %range.addr = alloca ptr, align 8
  store i32 %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !6514, metadata !DIExpression()), !dbg !6516
  store ptr %range, ptr %range.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %range.addr, metadata !6515, metadata !DIExpression()), !dbg !6517
  %0 = load i32, ptr %reg.addr, align 4, !dbg !6518
  %1 = load ptr, ptr %range.addr, align 8, !dbg !6519
  %range_min = getelementptr inbounds %struct.regmap_range, ptr %1, i32 0, i32 0, !dbg !6520
  %2 = load i32, ptr %range_min, align 4, !dbg !6520
  %cmp = icmp uge i32 %0, %2, !dbg !6521
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !6522

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %reg.addr, align 4, !dbg !6523
  %4 = load ptr, ptr %range.addr, align 8, !dbg !6524
  %range_max = getelementptr inbounds %struct.regmap_range, ptr %4, i32 0, i32 1, !dbg !6525
  %5 = load i32, ptr %range_max, align 4, !dbg !6525
  %cmp1 = icmp ule i32 %3, %5, !dbg !6526
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %6 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !6527
  ret i1 %6, !dbg !6528
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #17 align 16 !dbg !6529 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6533, metadata !DIExpression()), !dbg !6537
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6534, metadata !DIExpression()), !dbg !6538
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6535, metadata !DIExpression()), !dbg !6539
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #18, !dbg !6540
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !6536, metadata !DIExpression()), !dbg !6541
  %0 = load i64, ptr %n.addr, align 8, !dbg !6542
  %1 = load i64, ptr %size.addr, align 8, !dbg !6542
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !6542
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !6542
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !6542
  store i64 %4, ptr %bytes, align 8, !dbg !6542
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #20, !dbg !6542
  %lnot = xor i1 %call, true, !dbg !6542
  %lnot1 = xor i1 %lnot, true, !dbg !6542
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6542
  %conv = sext i32 %lnot.ext to i64, !dbg !6542
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6542
  %tobool = icmp ne i64 %expval, 0, !dbg !6542
  br i1 %tobool, label %if.then, label %if.end, !dbg !6544

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !6545
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6545

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !6546
  %6 = call i1 @llvm.is.constant.i64(i64 %5), !dbg !6548
  br i1 %6, label %land.lhs.true, label %if.end4, !dbg !6549

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, ptr %size.addr, align 8, !dbg !6550
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !6551
  br i1 %8, label %if.then2, label %if.end4, !dbg !6552

if.then2:                                         ; preds = %land.lhs.true
  %9 = load i64, ptr %bytes, align 8, !dbg !6553
  %10 = load i32, ptr %flags.addr, align 4, !dbg !6554
  %call3 = call noalias ptr @kmalloc(i64 noundef %9, i32 noundef %10) #19, !dbg !6555
  store ptr %call3, ptr %retval, align 8, !dbg !6556
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6556

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %11 = load i64, ptr %bytes, align 8, !dbg !6557
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6558
  %call5 = call noalias align 8 ptr @__kmalloc(i64 noundef %11, i32 noundef %12) #19, !dbg !6559
  store ptr %call5, ptr %retval, align 8, !dbg !6560
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6560

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #18, !dbg !6561
  %13 = load ptr, ptr %retval, align 8, !dbg !6561
  ret ptr %13, !dbg !6561
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kcalloc(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #17 align 16 !dbg !6562 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6564, metadata !DIExpression()), !dbg !6567
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6565, metadata !DIExpression()), !dbg !6568
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6566, metadata !DIExpression()), !dbg !6569
  %0 = load i64, ptr %n.addr, align 8, !dbg !6570
  %1 = load i64, ptr %size.addr, align 8, !dbg !6571
  %2 = load i32, ptr %flags.addr, align 4, !dbg !6572
  %or = or i32 %2, 256, !dbg !6573
  %call = call noalias ptr @kmalloc_array(i64 noundef %0, i64 noundef %1, i32 noundef %or) #24, !dbg !6574
  ret ptr %call, !dbg !6575
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #12 align 16 !dbg !6576 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !6581, metadata !DIExpression()), !dbg !6582
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !6583, !range !5520, !noundef !557
  %tobool = trunc i8 %0 to i1, !dbg !6583
  %lnot = xor i1 %tobool, true, !dbg !6583
  %lnot1 = xor i1 %lnot, true, !dbg !6583
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6583
  %conv = sext i32 %lnot.ext to i64, !dbg !6583
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6583
  %tobool2 = icmp ne i64 %expval, 0, !dbg !6583
  ret i1 %tobool2, !dbg !6584
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rb_link_node(ptr noundef %node, ptr noundef %parent, ptr noundef %rb_link) #12 align 16 !dbg !6585 {
entry:
  %node.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %rb_link.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !6589, metadata !DIExpression()), !dbg !6592
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !6590, metadata !DIExpression()), !dbg !6593
  store ptr %rb_link, ptr %rb_link.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb_link.addr, metadata !6591, metadata !DIExpression()), !dbg !6594
  %0 = load ptr, ptr %parent.addr, align 8, !dbg !6595
  %1 = ptrtoint ptr %0 to i64, !dbg !6596
  %2 = load ptr, ptr %node.addr, align 8, !dbg !6597
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, ptr %2, i32 0, i32 0, !dbg !6598
  store i64 %1, ptr %__rb_parent_color, align 8, !dbg !6599
  %3 = load ptr, ptr %node.addr, align 8, !dbg !6600
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %3, i32 0, i32 1, !dbg !6601
  store ptr null, ptr %rb_right, align 8, !dbg !6602
  %4 = load ptr, ptr %node.addr, align 8, !dbg !6603
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %4, i32 0, i32 2, !dbg !6604
  store ptr null, ptr %rb_left, align 8, !dbg !6605
  %5 = load ptr, ptr %node.addr, align 8, !dbg !6606
  %6 = load ptr, ptr %rb_link.addr, align 8, !dbg !6607
  store ptr %5, ptr %6, align 8, !dbg !6608
  ret void, !dbg !6609
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6610 dso_local void @rb_insert_color(ptr noundef, ptr noundef) #11

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6611 dso_local i32 @regcache_sync_block(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #11

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6614 dso_local i32 @regmap_async_complete(ptr noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bitmap_clear(ptr noundef %map, i32 noundef %start, i32 noundef %nbits) #7 align 16 !dbg !6615 {
entry:
  %map.addr = alloca ptr, align 8
  %start.addr = alloca i32, align 4
  %nbits.addr = alloca i32, align 4
  store ptr %map, ptr %map.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !6619, metadata !DIExpression()), !dbg !6622
  store i32 %start, ptr %start.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !6620, metadata !DIExpression()), !dbg !6623
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !6621, metadata !DIExpression()), !dbg !6624
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !6625
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !6627
  br i1 %1, label %land.lhs.true, label %if.else, !dbg !6628

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %nbits.addr, align 4, !dbg !6629
  %cmp = icmp eq i32 %2, 1, !dbg !6630
  br i1 %cmp, label %if.then, label %if.else, !dbg !6631

if.then:                                          ; preds = %land.lhs.true
  %3 = load i32, ptr %start.addr, align 4, !dbg !6632
  %4 = call i1 @llvm.is.constant.i32(i32 %3), !dbg !6632
  br i1 %4, label %land.lhs.true1, label %cond.false, !dbg !6632

land.lhs.true1:                                   ; preds = %if.then
  %5 = load ptr, ptr %map.addr, align 8, !dbg !6632
  %6 = ptrtoint ptr %5 to i64, !dbg !6632
  %cmp2 = icmp ne i64 %6, 0, !dbg !6632
  %conv = zext i1 %cmp2 to i32, !dbg !6632
  %7 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !6632
  br i1 %7, label %land.lhs.true3, label %cond.false, !dbg !6632

land.lhs.true3:                                   ; preds = %land.lhs.true1
  %8 = load ptr, ptr %map.addr, align 8, !dbg !6632
  %9 = ptrtoint ptr %8 to i64, !dbg !6632
  %cmp4 = icmp ne i64 %9, 0, !dbg !6632
  br i1 %cmp4, label %land.lhs.true6, label %cond.false, !dbg !6632

land.lhs.true6:                                   ; preds = %land.lhs.true3
  %10 = load ptr, ptr %map.addr, align 8, !dbg !6632
  %11 = load i64, ptr %10, align 8, !dbg !6632
  %12 = call i1 @llvm.is.constant.i64(i64 %11), !dbg !6632
  br i1 %12, label %cond.true, label %cond.false, !dbg !6632

cond.true:                                        ; preds = %land.lhs.true6
  %13 = load i32, ptr %start.addr, align 4, !dbg !6632
  %conv7 = zext i32 %13 to i64, !dbg !6632
  %14 = load ptr, ptr %map.addr, align 8, !dbg !6632
  call void @generic___clear_bit(i64 noundef %conv7, ptr noundef %14) #20, !dbg !6632
  br label %cond.end, !dbg !6632

cond.false:                                       ; preds = %land.lhs.true6, %land.lhs.true3, %land.lhs.true1, %if.then
  %15 = load i32, ptr %start.addr, align 4, !dbg !6632
  %conv8 = zext i32 %15 to i64, !dbg !6632
  %16 = load ptr, ptr %map.addr, align 8, !dbg !6632
  call void @___clear_bit(i64 noundef %conv8, ptr noundef %16) #20, !dbg !6632
  br label %cond.end, !dbg !6632

cond.end:                                         ; preds = %cond.false, %cond.true
  br label %if.end42, !dbg !6632

if.else:                                          ; preds = %land.lhs.true, %entry
  %17 = load i32, ptr %start.addr, align 4, !dbg !6633
  %18 = load i32, ptr %nbits.addr, align 4, !dbg !6633
  %add = add i32 %17, %18, !dbg !6633
  %19 = call i1 @llvm.is.constant.i32(i32 %add), !dbg !6633
  br i1 %19, label %land.lhs.true9, label %if.else25, !dbg !6633

land.lhs.true9:                                   ; preds = %if.else
  %20 = load i32, ptr %start.addr, align 4, !dbg !6633
  %21 = load i32, ptr %nbits.addr, align 4, !dbg !6633
  %add10 = add i32 %20, %21, !dbg !6633
  %cmp11 = icmp ule i32 %add10, 64, !dbg !6633
  br i1 %cmp11, label %land.lhs.true13, label %if.else25, !dbg !6633

land.lhs.true13:                                  ; preds = %land.lhs.true9
  %22 = load i32, ptr %start.addr, align 4, !dbg !6633
  %23 = load i32, ptr %nbits.addr, align 4, !dbg !6633
  %add14 = add i32 %22, %23, !dbg !6633
  %cmp15 = icmp ugt i32 %add14, 0, !dbg !6633
  br i1 %cmp15, label %if.then17, label %if.else25, !dbg !6635

if.then17:                                        ; preds = %land.lhs.true13
  %24 = load i32, ptr %start.addr, align 4, !dbg !6636
  %sh_prom = zext i32 %24 to i64, !dbg !6636
  %shl = shl i64 1, %sh_prom, !dbg !6636
  %sub = sub i64 -1, %shl, !dbg !6636
  %add18 = add i64 %sub, 1, !dbg !6636
  %25 = load i32, ptr %start.addr, align 4, !dbg !6636
  %26 = load i32, ptr %nbits.addr, align 4, !dbg !6636
  %add19 = add i32 %25, %26, !dbg !6636
  %sub20 = sub i32 %add19, 1, !dbg !6636
  %sub21 = sub i32 63, %sub20, !dbg !6636
  %sh_prom22 = zext i32 %sub21 to i64, !dbg !6636
  %shr = lshr i64 -1, %sh_prom22, !dbg !6636
  %and = and i64 %add18, %shr, !dbg !6636
  %add23 = add i64 0, %and, !dbg !6636
  %not = xor i64 %add23, -1, !dbg !6637
  %27 = load ptr, ptr %map.addr, align 8, !dbg !6638
  %28 = load i64, ptr %27, align 8, !dbg !6639
  %and24 = and i64 %28, %not, !dbg !6639
  store i64 %and24, ptr %27, align 8, !dbg !6639
  br label %if.end41, !dbg !6640

if.else25:                                        ; preds = %land.lhs.true13, %land.lhs.true9, %if.else
  %29 = load i32, ptr %start.addr, align 4, !dbg !6641
  %and26 = and i32 %29, 7, !dbg !6643
  %30 = call i1 @llvm.is.constant.i32(i32 %and26), !dbg !6644
  br i1 %30, label %land.lhs.true27, label %if.else40, !dbg !6645

land.lhs.true27:                                  ; preds = %if.else25
  %31 = load i32, ptr %start.addr, align 4, !dbg !6646
  %and28 = and i32 %31, 7, !dbg !6646
  %cmp29 = icmp eq i32 %and28, 0, !dbg !6646
  br i1 %cmp29, label %land.lhs.true31, label %if.else40, !dbg !6647

land.lhs.true31:                                  ; preds = %land.lhs.true27
  %32 = load i32, ptr %nbits.addr, align 4, !dbg !6648
  %and32 = and i32 %32, 7, !dbg !6649
  %33 = call i1 @llvm.is.constant.i32(i32 %and32), !dbg !6650
  br i1 %33, label %land.lhs.true33, label %if.else40, !dbg !6651

land.lhs.true33:                                  ; preds = %land.lhs.true31
  %34 = load i32, ptr %nbits.addr, align 4, !dbg !6652
  %and34 = and i32 %34, 7, !dbg !6652
  %cmp35 = icmp eq i32 %and34, 0, !dbg !6652
  br i1 %cmp35, label %if.then37, label %if.else40, !dbg !6653

if.then37:                                        ; preds = %land.lhs.true33
  %35 = load ptr, ptr %map.addr, align 8, !dbg !6654
  %36 = load i32, ptr %start.addr, align 4, !dbg !6655
  %div = udiv i32 %36, 8, !dbg !6656
  %idx.ext = zext i32 %div to i64, !dbg !6657
  %add.ptr = getelementptr i8, ptr %35, i64 %idx.ext, !dbg !6657
  %37 = load i32, ptr %nbits.addr, align 4, !dbg !6658
  %div38 = udiv i32 %37, 8, !dbg !6659
  %conv39 = zext i32 %div38 to i64, !dbg !6658
  call void @llvm.memset.p0.i64(ptr align 1 %add.ptr, i8 0, i64 %conv39, i1 false), !dbg !6660
  br label %if.end, !dbg !6660

if.else40:                                        ; preds = %land.lhs.true33, %land.lhs.true31, %land.lhs.true27, %if.else25
  %38 = load ptr, ptr %map.addr, align 8, !dbg !6661
  %39 = load i32, ptr %start.addr, align 4, !dbg !6662
  %40 = load i32, ptr %nbits.addr, align 4, !dbg !6663
  call void @__bitmap_clear(ptr noundef %38, i32 noundef %39, i32 noundef %40) #20, !dbg !6664
  br label %if.end

if.end:                                           ; preds = %if.else40, %if.then37
  br label %if.end41

if.end41:                                         ; preds = %if.end, %if.then17
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %cond.end
  ret void, !dbg !6665
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @generic___clear_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !6666 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %mask = alloca i64, align 8
  %p = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6670, metadata !DIExpression()), !dbg !6674
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6671, metadata !DIExpression()), !dbg !6675
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #18, !dbg !6676
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !6672, metadata !DIExpression()), !dbg !6677
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6678
  %rem = urem i64 %0, 64, !dbg !6678
  %shl = shl i64 1, %rem, !dbg !6678
  store i64 %shl, ptr %mask, align 8, !dbg !6677
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #18, !dbg !6679
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6673, metadata !DIExpression()), !dbg !6680
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6681
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6682
  %div = udiv i64 %2, 64, !dbg !6682
  %add.ptr = getelementptr i64, ptr %1, i64 %div, !dbg !6683
  store ptr %add.ptr, ptr %p, align 8, !dbg !6680
  %3 = load i64, ptr %mask, align 8, !dbg !6684
  %not = xor i64 %3, -1, !dbg !6685
  %4 = load ptr, ptr %p, align 8, !dbg !6686
  %5 = load i64, ptr %4, align 8, !dbg !6687
  %and = and i64 %5, %not, !dbg !6687
  store i64 %and, ptr %4, align 8, !dbg !6687
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #18, !dbg !6688
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #18, !dbg !6688
  ret void, !dbg !6688
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @___clear_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !6689 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6691, metadata !DIExpression()), !dbg !6693
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6692, metadata !DIExpression()), !dbg !6694
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6695
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6696
  %div = udiv i64 %1, 64, !dbg !6696
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6697
  call void @instrument_write(ptr noundef %add.ptr, i64 noundef 8) #20, !dbg !6698
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6699
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6700
  call void @arch___clear_bit(i64 noundef %2, ptr noundef %3) #20, !dbg !6701
  ret void, !dbg !6702
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6703 dso_local void @__bitmap_clear(ptr noundef, i32 noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_write(ptr noundef %v, i64 noundef %size) #7 align 16 !dbg !6706 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6708, metadata !DIExpression()), !dbg !6710
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6709, metadata !DIExpression()), !dbg !6711
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6712
  %1 = load i64, ptr %size.addr, align 8, !dbg !6713
  %conv = trunc i64 %1 to i32, !dbg !6713
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #20, !dbg !6714
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6715
  %3 = load i64, ptr %size.addr, align 8, !dbg !6715
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 1) #20, !dbg !6715
  ret void, !dbg !6716
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch___clear_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !6717 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6719, metadata !DIExpression()), !dbg !6721
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6720, metadata !DIExpression()), !dbg !6722
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6723
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6724
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #18, !dbg !6725, !srcloc !6726
  ret void, !dbg !6727
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { noredzone null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #17 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #18 = { nounwind }
attributes #19 = { noredzone allocsize(0) }
attributes #20 = { noredzone }
attributes #21 = { noredzone allocsize(2) }
attributes #22 = { noredzone noreturn }
attributes #23 = { noredzone allocsize(1) }
attributes #24 = { noredzone allocsize(0,1) }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!4673, !4674, !4675, !4676, !4677, !4678, !4679, !4680}
!llvm.ident = !{!4681}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 548, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/base/regmap/regcache-rbtree.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2dbbdf01631fd9d06516111868dae450")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 7)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "regcache_rbtree_ops", scope: !9, file: !2, line: 546, type: !3981, isLocal: false, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/base/regmap/.regcache-rbtree.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/base/regmap/regcache-rbtree\22 -D KBUILD_BASENAME=\22regcache_rbtree\22 -D KBUILD_MODNAME=\22regcache_rbtree\22 -D __KBUILD_MODNAME=kmod_regcache_rbtree -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/base/regmap/regcache-rbtree.ll drivers/base/regmap/regcache-rbtree.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !151, globals: !3965, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !19, !26, !31, !39, !45, !50, !56, !63, !70, !76, !82, !89, !97, !105, !114, !119, !124, !130, !136, !141}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "regcache_type", file: !12, line: 58, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "./include/linux/regmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fe5626d9d627f4ed2a386e72c96db98d")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16, !17, !18}
!15 = !DIEnumerator(name: "REGCACHE_NONE", value: 0)
!16 = !DIEnumerator(name: "REGCACHE_RBTREE", value: 1)
!17 = !DIEnumerator(name: "REGCACHE_FLAT", value: 2)
!18 = !DIEnumerator(name: "REGCACHE_MAPLE", value: 3)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !20, line: 312, baseType: !13, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!21 = !{!22, !23, !24, !25}
!22 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!23 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!24 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!25 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !27, line: 2052, baseType: !13, size: 32, elements: !28)
!27 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!28 = !{!29, !30}
!29 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!30 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !32, line: 9, baseType: !13, size: 32, elements: !33)
!32 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!33 = !{!34, !35, !36, !37, !38}
!34 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!35 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!36 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!37 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!38 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!39 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !40, line: 54, baseType: !13, size: 32, elements: !41)
!40 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!41 = !{!42, !43, !44}
!42 = !DIEnumerator(name: "USRQUOTA", value: 0)
!43 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!44 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !46, line: 65, baseType: !13, size: 32, elements: !47)
!46 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!47 = !{!48, !49}
!48 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!49 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !51, line: 16, baseType: !13, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!52 = !{!53, !54, !55}
!53 = !DIEnumerator(name: "TT_NONE", value: 0)
!54 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!55 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !57, line: 51, baseType: !13, size: 32, elements: !58)
!57 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!58 = !{!59, !60, !61, !62}
!59 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!60 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!61 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!62 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !64, line: 15, baseType: !13, size: 32, elements: !65)
!64 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!65 = !{!66, !67, !68, !69}
!66 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!67 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!68 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!69 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!70 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !71, line: 26, baseType: !13, size: 32, elements: !72)
!71 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!72 = !{!73, !74, !75}
!73 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!74 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!75 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!76 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !77, line: 45, baseType: !13, size: 32, elements: !78)
!77 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!78 = !{!79, !80, !81}
!79 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!80 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!81 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!82 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !83, line: 487, baseType: !13, size: 32, elements: !84)
!83 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!84 = !{!85, !86, !87, !88}
!85 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!86 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!87 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!88 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!89 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !90, line: 620, baseType: !13, size: 32, elements: !91)
!90 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!91 = !{!92, !93, !94, !95, !96}
!92 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!93 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!94 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!95 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!96 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!97 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !90, line: 597, baseType: !98, size: 32, elements: !99)
!98 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!99 = !{!100, !101, !102, !103, !104}
!100 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!101 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!102 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!103 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!104 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !83, line: 547, baseType: !13, size: 32, elements: !106)
!106 = !{!107, !108, !109, !110, !111, !112, !113}
!107 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!108 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!109 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!110 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!111 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!112 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!113 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!114 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !83, line: 564, baseType: !13, size: 32, elements: !115)
!115 = !{!116, !117, !118}
!116 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!117 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!118 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !83, line: 577, baseType: !13, size: 32, elements: !120)
!120 = !{!121, !122, !123}
!121 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!122 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!123 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!124 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !83, line: 503, baseType: !13, size: 32, elements: !125)
!125 = !{!126, !127, !128, !129}
!126 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!127 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!128 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!129 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!130 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "regmap_endian", file: !12, line: 202, baseType: !13, size: 32, elements: !131)
!131 = !{!132, !133, !134, !135}
!132 = !DIEnumerator(name: "REGMAP_ENDIAN_DEFAULT", value: 0)
!133 = !DIEnumerator(name: "REGMAP_ENDIAN_BIG", value: 1)
!134 = !DIEnumerator(name: "REGMAP_ENDIAN_LITTLE", value: 2)
!135 = !DIEnumerator(name: "REGMAP_ENDIAN_NATIVE", value: 3)
!136 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !137, line: 10, baseType: !13, size: 32, elements: !138)
!137 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!138 = !{!139, !140}
!139 = !DIEnumerator(name: "false", value: 0)
!140 = !DIEnumerator(name: "true", value: 1)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !142, line: 364, baseType: !13, size: 32, elements: !143)
!142 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!143 = !{!144, !145, !146, !147, !148, !149, !150}
!144 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!145 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!146 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!147 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!148 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!149 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!150 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!151 = !{!152, !154, !155, !156, !172, !3958, !3959, !161, !3961, !3963, !98, !13, !275}
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !153, line: 154, baseType: !13)
!153 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!154 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regcache_rbtree_node", file: !2, line: 21, size: 384, elements: !158)
!158 = !{!159, !160, !162, !163, !164}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !157, file: !2, line: 23, baseType: !155, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "cache_present", scope: !157, file: !2, line: 25, baseType: !161, size: 64, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "base_reg", scope: !157, file: !2, line: 27, baseType: !13, size: 32, offset: 128)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "blklen", scope: !157, file: !2, line: 29, baseType: !13, size: 32, offset: 160)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !157, file: !2, line: 31, baseType: !165, size: 192, align: 64, offset: 192)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !166, line: 5, size: 192, align: 64, elements: !167)
!166 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!167 = !{!168, !169, !171}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !165, file: !166, line: 6, baseType: !154, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !165, file: !166, line: 7, baseType: !170, size: 64, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !165, file: !166, line: 8, baseType: !170, size: 64, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !20, line: 402, size: 9216, align: 512, elements: !174)
!174 = !{!175, !176, !182, !186, !3637, !3663, !3664, !3665, !3666, !3670, !3673, !3674, !3675, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3742, !3746, !3762, !3779, !3780, !3781, !3782, !3791, !3814, !3815, !3818, !3821, !3822, !3823, !3824, !3825, !3826, !3827, !3832, !3833, !3919, !3927, !3928, !3929, !3931, !3935, !3936, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3953, !3954, !3955, !3957}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !173, file: !20, line: 403, baseType: !19, size: 32)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !173, file: !20, line: 406, baseType: !177, size: 128, offset: 64)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !153, line: 190, size: 128, elements: !178)
!178 = !{!179, !181}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !177, file: !153, line: 191, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !177, file: !153, line: 191, baseType: !180, size: 64, offset: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !173, file: !20, line: 409, baseType: !183, size: 448, offset: 192)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !184)
!184 = !{!185}
!185 = !DISubrange(count: 56)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !173, file: !20, line: 417, baseType: !187, size: 768, offset: 640)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !20, line: 45, size: 768, elements: !188)
!188 = !{!189, !3631, !3632, !3633, !3636}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !187, file: !20, line: 46, baseType: !190, size: 512)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !191, line: 64, size: 512, elements: !192)
!191 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!192 = !{!193, !196, !197, !199, !288, !3529, !3621, !3626, !3627, !3628, !3629, !3630}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !190, file: !191, line: 65, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !190, file: !191, line: 66, baseType: !177, size: 128, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !190, file: !191, line: 67, baseType: !198, size: 64, offset: 192)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !190, file: !191, line: 68, baseType: !200, size: 64, offset: 256)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !191, line: 168, size: 768, elements: !202)
!202 = !{!203, !204, !247, !248}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !201, file: !191, line: 169, baseType: !177, size: 128)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !201, file: !191, line: 170, baseType: !205, size: 32, offset: 128)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !206, line: 29, baseType: !207)
!206 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !206, line: 17, size: 32, elements: !208)
!208 = !{!209}
!209 = !DIDerivedType(tag: DW_TAG_member, scope: !207, file: !206, line: 18, baseType: !210, size: 32)
!210 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !207, file: !206, line: 18, size: 32, elements: !211)
!211 = !{!212}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !210, file: !206, line: 19, baseType: !213, size: 32)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !214, line: 14, size: 32, elements: !215)
!214 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!215 = !{!216}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !213, file: !214, line: 15, baseType: !217, size: 32)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !218, line: 44, baseType: !219)
!218 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !218, line: 14, size: 32, elements: !220)
!220 = !{!221}
!221 = !DIDerivedType(tag: DW_TAG_member, scope: !219, file: !218, line: 15, baseType: !222, size: 32)
!222 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !219, file: !218, line: 15, size: 32, elements: !223)
!223 = !{!224, !229, !239}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !222, file: !218, line: 16, baseType: !225, size: 32)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !153, line: 174, baseType: !226)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !153, line: 172, size: 32, elements: !227)
!227 = !{!228}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !226, file: !153, line: 173, baseType: !98, size: 32)
!229 = !DIDerivedType(tag: DW_TAG_member, scope: !222, file: !218, line: 24, baseType: !230, size: 16)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !222, file: !218, line: 24, size: 16, elements: !231)
!231 = !{!232, !238}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !230, file: !218, line: 25, baseType: !233, size: 8)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !234, line: 17, baseType: !235)
!234 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !236, line: 21, baseType: !237)
!236 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!237 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !230, file: !218, line: 26, baseType: !233, size: 8, offset: 8)
!239 = !DIDerivedType(tag: DW_TAG_member, scope: !222, file: !218, line: 28, baseType: !240, size: 32)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !222, file: !218, line: 28, size: 32, elements: !241)
!241 = !{!242, !246}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !240, file: !218, line: 29, baseType: !243, size: 16)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !234, line: 19, baseType: !244)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !236, line: 24, baseType: !245)
!245 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !240, file: !218, line: 30, baseType: !243, size: 16, offset: 16)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !201, file: !191, line: 171, baseType: !190, size: 512, offset: 192)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !201, file: !191, line: 172, baseType: !249, size: 64, offset: 704)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !251)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !191, line: 133, size: 192, elements: !252)
!252 = !{!253, !260, !265}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !251, file: !191, line: 134, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !255)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DISubroutineType(types: !257)
!257 = !{!98, !258}
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !190)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !251, file: !191, line: 135, baseType: !261, size: 64, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !262)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{!194, !258}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !251, file: !191, line: 136, baseType: !266, size: 64, offset: 128)
!266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !267)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DISubroutineType(types: !269)
!269 = !{!98, !258, !270}
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !191, line: 125, size: 20736, elements: !272)
!272 = !{!273, !278, !282, !283, !287}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !271, file: !191, line: 126, baseType: !274, size: 192)
!274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 192, elements: !276)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!276 = !{!277}
!277 = !DISubrange(count: 3)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !271, file: !191, line: 127, baseType: !279, size: 4096, offset: 192)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 4096, elements: !280)
!280 = !{!281}
!281 = !DISubrange(count: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !271, file: !191, line: 128, baseType: !98, size: 32, offset: 4288)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !271, file: !191, line: 129, baseType: !284, size: 16384, offset: 4320)
!284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !285)
!285 = !{!286}
!286 = !DISubrange(count: 2048)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !271, file: !191, line: 130, baseType: !98, size: 32, offset: 20704)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !190, file: !191, line: 69, baseType: !289, size: 64, offset: 320)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !291)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !191, line: 116, size: 384, elements: !292)
!292 = !{!293, !297, !325, !3491, !3519, !3523}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !291, file: !191, line: 117, baseType: !294, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DISubroutineType(types: !296)
!296 = !{null, !198}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !291, file: !191, line: 118, baseType: !298, size: 64, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !300)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !301, line: 254, size: 128, elements: !302)
!301 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!302 = !{!303, !318}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !300, file: !301, line: 255, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{!307, !198, !312, !275}
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !153, line: 66, baseType: !308)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !309, line: 73, baseType: !310)
!309 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !309, line: 15, baseType: !311)
!311 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !301, line: 30, size: 128, elements: !314)
!314 = !{!315, !316}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !313, file: !301, line: 31, baseType: !194, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !313, file: !301, line: 32, baseType: !317, size: 16, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !153, line: 24, baseType: !245)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !300, file: !301, line: 256, baseType: !319, size: 64, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DISubroutineType(types: !321)
!321 = !{!307, !198, !312, !194, !322}
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !153, line: 61, baseType: !323)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !309, line: 72, baseType: !324)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !309, line: 16, baseType: !154)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !291, file: !191, line: 119, baseType: !326, size: 64, offset: 128)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !329)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !301, line: 84, size: 320, elements: !330)
!330 = !{!331, !332, !336, !3487, !3489}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !329, file: !301, line: 85, baseType: !194, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !329, file: !301, line: 86, baseType: !333, size: 64, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DISubroutineType(types: !335)
!335 = !{!317, !198, !312, !98}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !329, file: !301, line: 88, baseType: !337, size: 64, offset: 128)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DISubroutineType(types: !339)
!339 = !{!317, !198, !340, !98}
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !301, line: 175, size: 512, elements: !342)
!342 = !{!343, !344, !345, !346, !3478, !3482, !3483}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !341, file: !301, line: 176, baseType: !313, size: 128)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !341, file: !301, line: 177, baseType: !322, size: 64, offset: 128)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !341, file: !301, line: 178, baseType: !155, size: 64, offset: 192)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !341, file: !301, line: 179, baseType: !347, size: 64, offset: 256)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DISubroutineType(types: !349)
!349 = !{!350}
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !27, line: 472, size: 1536, align: 64, elements: !352)
!352 = !{!353, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3472, !3473, !3474, !3475, !3476, !3477}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !351, file: !27, line: 473, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !27, line: 641, size: 4800, elements: !356)
!356 = !{!357, !358, !359, !367, !368, !375, !376, !379, !380, !3251, !3252, !3253, !3254, !3255, !3261, !3262, !3263, !3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3275, !3276, !3277, !3278, !3279, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3295, !3298, !3299, !3300, !3309, !3310, !3311, !3312}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !355, file: !27, line: 642, baseType: !317, size: 16)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !355, file: !27, line: 643, baseType: !245, size: 16, offset: 16)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !355, file: !27, line: 644, baseType: !360, size: 32, offset: 32)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !361, line: 23, baseType: !362)
!361 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !361, line: 21, size: 32, elements: !363)
!363 = !{!364}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !362, file: !361, line: 22, baseType: !365, size: 32)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !153, line: 37, baseType: !366)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !309, line: 49, baseType: !13)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !355, file: !27, line: 645, baseType: !177, size: 128, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !355, file: !27, line: 646, baseType: !369, size: 32, offset: 192)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !361, line: 28, baseType: !370)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !361, line: 26, size: 32, elements: !371)
!371 = !{!372}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !370, file: !361, line: 27, baseType: !373, size: 32)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !153, line: 38, baseType: !374)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !309, line: 50, baseType: !13)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !355, file: !27, line: 647, baseType: !13, size: 32, offset: 224)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !355, file: !27, line: 650, baseType: !377, size: 64, offset: 256)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !27, line: 607, flags: DIFlagFwdDecl)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !355, file: !27, line: 651, baseType: !377, size: 64, offset: 320)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !355, file: !27, line: 654, baseType: !381, size: 64, offset: 384)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !383)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !27, line: 1966, size: 2048, align: 512, elements: !384)
!384 = !{!385, !3076, !3089, !3093, !3097, !3101, !3105, !3109, !3113, !3117, !3121, !3122, !3126, !3130, !3167, !3196, !3200, !3206, !3210, !3214, !3218, !3222, !3226, !3232, !3236}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !383, file: !27, line: 1967, baseType: !386, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DISubroutineType(types: !388)
!388 = !{!389, !354, !389, !13}
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !391, line: 82, size: 1536, elements: !392)
!391 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!392 = !{!393, !394, !404, !412, !413, !433, !434, !438, !451, !3059, !3060, !3061, !3062, !3068, !3069, !3070}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !390, file: !391, line: 84, baseType: !13, size: 32)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !390, file: !391, line: 85, baseType: !395, size: 32, offset: 32)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !396, line: 275, baseType: !397)
!396 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !396, line: 275, size: 32, elements: !398)
!398 = !{!399}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !397, file: !396, line: 275, baseType: !400, size: 32)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !396, line: 69, baseType: !401)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !396, line: 64, size: 32, elements: !402)
!402 = !{!403}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !401, file: !396, line: 65, baseType: !13, size: 32)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !390, file: !391, line: 86, baseType: !405, size: 128, offset: 64)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !406, line: 38, size: 128, elements: !407)
!406 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!407 = !{!408, !410}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !405, file: !406, line: 39, baseType: !409, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !405, file: !406, line: 39, baseType: !411, size: 64, offset: 64)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !390, file: !391, line: 87, baseType: !389, size: 64, offset: 192)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !390, file: !391, line: 88, baseType: !414, size: 128, offset: 256)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !391, line: 49, size: 128, elements: !415)
!415 = !{!416, !430}
!416 = !DIDerivedType(tag: DW_TAG_member, scope: !414, file: !391, line: 50, baseType: !417, size: 64)
!417 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !414, file: !391, line: 50, size: 64, elements: !418)
!418 = !{!419, !426}
!419 = !DIDerivedType(tag: DW_TAG_member, scope: !417, file: !391, line: 51, baseType: !420, size: 64)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !417, file: !391, line: 51, size: 64, elements: !421)
!421 = !{!422, !425}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !420, file: !391, line: 52, baseType: !423, size: 32)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !234, line: 21, baseType: !424)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !236, line: 27, baseType: !13)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !420, file: !391, line: 52, baseType: !423, size: 32, offset: 32)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !417, file: !391, line: 54, baseType: !427, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !234, line: 23, baseType: !428)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !236, line: 31, baseType: !429)
!429 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !414, file: !391, line: 56, baseType: !431, size: 64, offset: 64)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !237)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !390, file: !391, line: 89, baseType: !354, size: 64, offset: 384)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !390, file: !391, line: 91, baseType: !435, size: 256, offset: 448)
!435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 256, elements: !436)
!436 = !{!437}
!437 = !DISubrange(count: 32)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !390, file: !391, line: 94, baseType: !439, size: 64, offset: 704)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !440, line: 25, size: 64, elements: !441)
!440 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!441 = !{!442}
!442 = !DIDerivedType(tag: DW_TAG_member, scope: !439, file: !440, line: 26, baseType: !443, size: 64)
!443 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !439, file: !440, line: 26, size: 64, elements: !444)
!444 = !{!445, !446}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !443, file: !440, line: 28, baseType: !428, size: 64, align: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, scope: !443, file: !440, line: 30, baseType: !447, size: 64)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !443, file: !440, line: 30, size: 64, elements: !448)
!448 = !{!449, !450}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !447, file: !440, line: 31, baseType: !205, size: 32)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !447, file: !440, line: 32, baseType: !98, size: 32, offset: 32)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !390, file: !391, line: 95, baseType: !452, size: 64, offset: 768)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !454)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !391, line: 128, size: 1024, align: 512, elements: !455)
!455 = !{!456, !460, !461, !468, !474, !478, !482, !486, !487, !491, !495, !3049, !3053}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !454, file: !391, line: 129, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DISubroutineType(types: !459)
!459 = !{!98, !389, !13}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !454, file: !391, line: 130, baseType: !457, size: 64, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !454, file: !391, line: 131, baseType: !462, size: 64, offset: 128)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{!98, !465, !467}
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !390)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !454, file: !391, line: 132, baseType: !469, size: 64, offset: 192)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DISubroutineType(types: !471)
!471 = !{!98, !465, !13, !194, !472}
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !414)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !454, file: !391, line: 134, baseType: !475, size: 64, offset: 256)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{!98, !465}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !454, file: !391, line: 135, baseType: !479, size: 64, offset: 320)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DISubroutineType(types: !481)
!481 = !{!98, !389}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !454, file: !391, line: 136, baseType: !483, size: 64, offset: 384)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DISubroutineType(types: !485)
!485 = !{null, !389}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !454, file: !391, line: 137, baseType: !483, size: 64, offset: 448)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !454, file: !391, line: 138, baseType: !488, size: 64, offset: 512)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DISubroutineType(types: !490)
!490 = !{null, !389, !354}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !454, file: !391, line: 139, baseType: !492, size: 64, offset: 576)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DISubroutineType(types: !494)
!494 = !{!275, !389, !275, !98}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !454, file: !391, line: 140, baseType: !496, size: 64, offset: 640)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{!499, !3048}
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !501, line: 70, size: 256, elements: !502)
!501 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!502 = !{!503, !504, !3044, !3045}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !500, file: !501, line: 71, baseType: !389, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !500, file: !501, line: 72, baseType: !505, size: 64, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !27, line: 1190, size: 10752, elements: !507)
!507 = !{!508, !509, !512, !513, !514, !518, !566, !1468, !1508, !1593, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1610, !1614, !1615, !1618, !1621, !1624, !1627, !1628, !1629, !1670, !2975, !2976, !2977, !2978, !2979, !2980, !2983, !2985, !2992, !2993, !2994, !2995, !2996, !3011, !3012, !3013, !3014, !3015, !3018, !3019, !3020, !3035, !3036, !3037, !3038, !3039, !3040, !3041, !3042, !3043}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !506, file: !27, line: 1191, baseType: !177, size: 128)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !506, file: !27, line: 1192, baseType: !510, size: 32, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !153, line: 21, baseType: !511)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !153, line: 18, baseType: !423)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !506, file: !27, line: 1193, baseType: !237, size: 8, offset: 160)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !506, file: !27, line: 1194, baseType: !154, size: 64, offset: 192)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !506, file: !27, line: 1195, baseType: !515, size: 64, offset: 256)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !153, line: 52, baseType: !516)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !309, line: 88, baseType: !517)
!517 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !506, file: !27, line: 1196, baseType: !519, size: 64, offset: 320)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !27, line: 2366, size: 576, elements: !521)
!521 = !{!522, !523, !524, !530, !534, !538, !542, !543, !544, !554, !558, !559, !560, !562, !563, !564, !565}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !520, file: !27, line: 2367, baseType: !194, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !520, file: !27, line: 2368, baseType: !98, size: 32, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !520, file: !27, line: 2376, baseType: !525, size: 64, offset: 128)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{!98, !528}
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !501, line: 21, flags: DIFlagFwdDecl)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !520, file: !27, line: 2377, baseType: !531, size: 64, offset: 192)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !533)
!533 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !27, line: 75, flags: DIFlagFwdDecl)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !520, file: !27, line: 2378, baseType: !535, size: 64, offset: 256)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DISubroutineType(types: !537)
!537 = !{!389, !519, !98, !194, !155}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !520, file: !27, line: 2380, baseType: !539, size: 64, offset: 320)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DISubroutineType(types: !541)
!541 = !{null, !505}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !520, file: !27, line: 2381, baseType: !172, size: 64, offset: 384)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !520, file: !27, line: 2382, baseType: !519, size: 64, offset: 448)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !520, file: !27, line: 2383, baseType: !545, size: 64, offset: 512)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !153, line: 194, size: 64, elements: !546)
!546 = !{!547}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !545, file: !153, line: 195, baseType: !548, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !153, line: 198, size: 128, elements: !550)
!550 = !{!551, !552}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !549, file: !153, line: 199, baseType: !548, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !549, file: !153, line: 199, baseType: !553, size: 64, offset: 64)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !520, file: !27, line: 2385, baseType: !555, offset: 576)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !556, line: 206, elements: !557)
!556 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!557 = !{}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !520, file: !27, line: 2386, baseType: !555, offset: 576)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !520, file: !27, line: 2387, baseType: !555, offset: 576)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !520, file: !27, line: 2388, baseType: !561, offset: 576)
!561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !555, elements: !276)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !520, file: !27, line: 2390, baseType: !555, offset: 576)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !520, file: !27, line: 2391, baseType: !555, offset: 576)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !520, file: !27, line: 2392, baseType: !555, offset: 576)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !520, file: !27, line: 2393, baseType: !555, offset: 576)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !506, file: !27, line: 1197, baseType: !567, size: 64, offset: 384)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !569)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !27, line: 2057, size: 1664, elements: !570)
!570 = !{!571, !575, !579, !580, !584, !590, !594, !595, !596, !600, !604, !608, !609, !610, !616, !621, !622, !1393, !1394, !1395, !1396, !1400, !1404, !1451, !1466, !1467}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !569, file: !27, line: 2058, baseType: !572, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{!354, !505}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !569, file: !27, line: 2059, baseType: !576, size: 64, offset: 64)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DISubroutineType(types: !578)
!578 = !{null, !354}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !569, file: !27, line: 2060, baseType: !576, size: 64, offset: 128)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !569, file: !27, line: 2062, baseType: !581, size: 64, offset: 192)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DISubroutineType(types: !583)
!583 = !{null, !354, !98}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !569, file: !27, line: 2063, baseType: !585, size: 64, offset: 256)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DISubroutineType(types: !587)
!587 = !{!98, !354, !588}
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !27, line: 309, flags: DIFlagFwdDecl)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !569, file: !27, line: 2064, baseType: !591, size: 64, offset: 320)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DISubroutineType(types: !593)
!593 = !{!98, !354}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !569, file: !27, line: 2065, baseType: !576, size: 64, offset: 384)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !569, file: !27, line: 2066, baseType: !539, size: 64, offset: 448)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !569, file: !27, line: 2067, baseType: !597, size: 64, offset: 512)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DISubroutineType(types: !599)
!599 = !{!98, !505, !98}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !569, file: !27, line: 2068, baseType: !601, size: 64, offset: 576)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DISubroutineType(types: !603)
!603 = !{!98, !505, !26}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !569, file: !27, line: 2069, baseType: !605, size: 64, offset: 640)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{!98, !505}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !569, file: !27, line: 2070, baseType: !601, size: 64, offset: 704)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !569, file: !27, line: 2071, baseType: !605, size: 64, offset: 768)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !569, file: !27, line: 2072, baseType: !611, size: 64, offset: 832)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DISubroutineType(types: !613)
!613 = !{!98, !389, !614}
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !27, line: 62, flags: DIFlagFwdDecl)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !569, file: !27, line: 2073, baseType: !617, size: 64, offset: 896)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DISubroutineType(types: !619)
!619 = !{!98, !505, !620, !275}
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !569, file: !27, line: 2074, baseType: !539, size: 64, offset: 960)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !569, file: !27, line: 2076, baseType: !623, size: 64, offset: 1024)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DISubroutineType(types: !625)
!625 = !{!98, !626, !389}
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !628, line: 17, size: 960, elements: !629)
!628 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!629 = !{!630, !631, !632, !633, !634, !635, !636, !637, !658, !680, !681, !1392}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !627, file: !628, line: 18, baseType: !275, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !627, file: !628, line: 19, baseType: !322, size: 64, offset: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !627, file: !628, line: 20, baseType: !322, size: 64, offset: 128)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !627, file: !628, line: 21, baseType: !322, size: 64, offset: 192)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !627, file: !628, line: 22, baseType: !322, size: 64, offset: 256)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !627, file: !628, line: 23, baseType: !515, size: 64, offset: 320)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !627, file: !628, line: 24, baseType: !515, size: 64, offset: 384)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !627, file: !628, line: 25, baseType: !638, size: 256, offset: 448)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !639, line: 66, size: 256, elements: !640)
!639 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!640 = !{!641, !650, !652, !657}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !638, file: !639, line: 67, baseType: !642, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !643, line: 13, baseType: !644)
!643 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !153, line: 181, baseType: !645)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !153, line: 179, size: 64, elements: !646)
!646 = !{!647}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !645, file: !153, line: 180, baseType: !648, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !234, line: 22, baseType: !649)
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !236, line: 30, baseType: !517)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !638, file: !639, line: 68, baseType: !651, size: 32, offset: 64)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !214, line: 23, baseType: !213)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !638, file: !639, line: 70, baseType: !653, size: 32, offset: 96)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !654, line: 15, size: 32, elements: !655)
!654 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!655 = !{!656}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !653, file: !654, line: 20, baseType: !225, size: 32)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !638, file: !639, line: 72, baseType: !177, size: 128, offset: 128)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !627, file: !628, line: 26, baseType: !659, size: 64, offset: 704)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !661)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !628, line: 32, size: 256, elements: !662)
!662 = !{!663, !668, !672, !676}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !661, file: !628, line: 33, baseType: !664, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DISubroutineType(types: !666)
!666 = !{!155, !626, !667}
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !661, file: !628, line: 34, baseType: !669, size: 64, offset: 64)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DISubroutineType(types: !671)
!671 = !{null, !626, !155}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !661, file: !628, line: 35, baseType: !673, size: 64, offset: 128)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DISubroutineType(types: !675)
!675 = !{!155, !626, !155, !667}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !661, file: !628, line: 36, baseType: !677, size: 64, offset: 192)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DISubroutineType(types: !679)
!679 = !{!98, !626, !155}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !627, file: !628, line: 27, baseType: !98, size: 32, offset: 768)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !627, file: !628, line: 28, baseType: !682, size: 64, offset: 832)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !684)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !27, line: 994, size: 1856, align: 64, elements: !685)
!685 = !{!686, !705, !706, !708, !709, !710, !711, !712, !775, !980, !989, !995, !996, !1382, !1383, !1384, !1385, !1387, !1388, !1391}
!686 = !DIDerivedType(tag: DW_TAG_member, scope: !684, file: !27, line: 995, baseType: !687, size: 128)
!687 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !684, file: !27, line: 995, size: 128, elements: !688)
!688 = !{!689, !695, !704}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !687, file: !27, line: 996, baseType: !690, size: 64)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !691, line: 60, size: 64, elements: !692)
!691 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!692 = !{!693}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !690, file: !691, line: 61, baseType: !694, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !687, file: !27, line: 997, baseType: !696, size: 128, align: 64)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !153, line: 232, size: 128, align: 64, elements: !697)
!697 = !{!698, !700}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !696, file: !153, line: 233, baseType: !699, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !696, file: !153, line: 234, baseType: !701, size: 64, offset: 64)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DISubroutineType(types: !703)
!703 = !{null, !699}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !687, file: !27, line: 998, baseType: !13, size: 32)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !684, file: !27, line: 1005, baseType: !205, size: 32, offset: 128)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !684, file: !27, line: 1006, baseType: !707, size: 32, offset: 160)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !153, line: 156, baseType: !13)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !684, file: !27, line: 1007, baseType: !642, size: 64, offset: 192)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !684, file: !27, line: 1008, baseType: !638, size: 256, offset: 256)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !684, file: !27, line: 1009, baseType: !515, size: 64, offset: 512)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !684, file: !27, line: 1010, baseType: !13, size: 32, offset: 576)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !684, file: !27, line: 1011, baseType: !713, size: 256, offset: 640)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !27, line: 948, size: 256, elements: !714)
!714 = !{!715, !736, !771, !772, !773, !774}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !713, file: !27, line: 949, baseType: !716, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !717, line: 34, baseType: !718)
!717 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !717, line: 25, size: 64, elements: !719)
!719 = !{!720}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !718, file: !717, line: 26, baseType: !721, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !722, line: 27, baseType: !723)
!722 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !722, line: 13, size: 64, elements: !724)
!724 = !{!725, !735}
!725 = !DIDerivedType(tag: DW_TAG_member, scope: !723, file: !722, line: 14, baseType: !726, size: 32)
!726 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !723, file: !722, line: 14, size: 32, elements: !727)
!727 = !{!728, !729}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !726, file: !722, line: 15, baseType: !225, size: 32)
!729 = !DIDerivedType(tag: DW_TAG_member, scope: !726, file: !722, line: 16, baseType: !730, size: 32)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !726, file: !722, line: 16, size: 32, elements: !731)
!731 = !{!732, !733}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !730, file: !722, line: 18, baseType: !233, size: 8)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !730, file: !722, line: 19, baseType: !734, size: 24, offset: 8)
!734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 24, elements: !276)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !723, file: !722, line: 26, baseType: !217, size: 32, offset: 32)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !713, file: !27, line: 950, baseType: !737, size: 64, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !32, line: 59, size: 768, elements: !739)
!739 = !{!740, !746, !747, !748, !752, !753, !760, !761}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !738, file: !32, line: 61, baseType: !741, size: 32)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !742, line: 113, baseType: !743)
!742 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !742, line: 111, size: 32, elements: !744)
!744 = !{!745}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !743, file: !742, line: 112, baseType: !225, size: 32)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !738, file: !32, line: 62, baseType: !13, size: 32, offset: 32)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !738, file: !32, line: 63, baseType: !205, size: 32, offset: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !738, file: !32, line: 65, baseType: !749, size: 256, offset: 128)
!749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !545, size: 256, elements: !750)
!750 = !{!751}
!751 = !DISubrange(count: 4)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !738, file: !32, line: 66, baseType: !545, size: 64, offset: 384)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !738, file: !32, line: 68, baseType: !754, size: 192, offset: 448)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !755, line: 41, baseType: !756)
!755 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !755, line: 37, size: 192, elements: !757)
!757 = !{!758, !759}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !756, file: !755, line: 38, baseType: !205, size: 32)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !756, file: !755, line: 39, baseType: !177, size: 128, offset: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !738, file: !32, line: 69, baseType: !696, size: 128, align: 64, offset: 640)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !738, file: !32, line: 70, baseType: !762, offset: 768)
!762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !763, elements: !769)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !32, line: 54, size: 128, elements: !764)
!764 = !{!765, !766}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !763, file: !32, line: 55, baseType: !98, size: 32)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !763, file: !32, line: 56, baseType: !767, size: 64, offset: 64)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !32, line: 56, flags: DIFlagFwdDecl)
!769 = !{!770}
!770 = !DISubrange(count: -1)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !713, file: !27, line: 951, baseType: !31, size: 32, offset: 128)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !713, file: !27, line: 952, baseType: !360, size: 32, offset: 160)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !713, file: !27, line: 952, baseType: !360, size: 32, offset: 192)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !713, file: !27, line: 953, baseType: !98, size: 32, offset: 224)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !684, file: !27, line: 1012, baseType: !776, size: 64, offset: 896)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !778)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !779, line: 110, size: 1472, elements: !780)
!779 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!780 = !{!781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !797, !798, !799, !800, !801, !802, !925, !926, !927, !928, !929, !960, !963, !967, !975}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !778, file: !779, line: 111, baseType: !642, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !778, file: !779, line: 112, baseType: !360, size: 32, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !778, file: !779, line: 113, baseType: !369, size: 32, offset: 96)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !778, file: !779, line: 114, baseType: !360, size: 32, offset: 128)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !778, file: !779, line: 115, baseType: !369, size: 32, offset: 160)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !778, file: !779, line: 116, baseType: !360, size: 32, offset: 192)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !778, file: !779, line: 117, baseType: !369, size: 32, offset: 224)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !778, file: !779, line: 118, baseType: !360, size: 32, offset: 256)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !778, file: !779, line: 119, baseType: !369, size: 32, offset: 288)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !778, file: !779, line: 120, baseType: !13, size: 32, offset: 320)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !778, file: !779, line: 121, baseType: !792, size: 64, offset: 384)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !793, line: 24, baseType: !794)
!793 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !793, line: 24, size: 64, elements: !795)
!795 = !{!796}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !794, file: !793, line: 24, baseType: !427, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !778, file: !779, line: 122, baseType: !792, size: 64, offset: 448)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !778, file: !779, line: 123, baseType: !792, size: 64, offset: 512)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !778, file: !779, line: 124, baseType: !792, size: 64, offset: 576)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !778, file: !779, line: 125, baseType: !792, size: 64, offset: 640)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !778, file: !779, line: 127, baseType: !237, size: 8, offset: 704)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !778, file: !779, line: 129, baseType: !803, size: 64, offset: 768)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !805, line: 195, size: 1728, elements: !806)
!805 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!806 = !{!807, !808, !813, !818, !827, !830, !831, !838, !839, !840, !841, !844, !845, !846, !848, !849, !889, !910}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !804, file: !805, line: 196, baseType: !741, size: 32)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !804, file: !805, line: 197, baseType: !809, size: 32, offset: 32)
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !805, line: 28, baseType: !810)
!810 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !153, line: 104, baseType: !811)
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !234, line: 20, baseType: !812)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !236, line: 26, baseType: !98)
!813 = !DIDerivedType(tag: DW_TAG_member, scope: !804, file: !805, line: 198, baseType: !814, size: 192, offset: 64)
!814 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !804, file: !805, line: 198, size: 192, elements: !815)
!815 = !{!816, !817}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !814, file: !805, line: 199, baseType: !177, size: 128)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !814, file: !805, line: 200, baseType: !165, size: 192, align: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !804, file: !805, line: 205, baseType: !819, size: 320, offset: 256)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !820, line: 48, size: 320, elements: !821)
!820 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!821 = !{!822, !823, !824, !825, !826}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !819, file: !820, line: 49, baseType: !642, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !819, file: !820, line: 55, baseType: !642, size: 64, offset: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !819, file: !820, line: 57, baseType: !653, size: 32, offset: 128)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !819, file: !820, line: 59, baseType: !651, size: 32, offset: 160)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !819, file: !820, line: 60, baseType: !177, size: 128, offset: 192)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !804, file: !805, line: 206, baseType: !828, size: 64, offset: 576)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !805, line: 206, flags: DIFlagFwdDecl)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !804, file: !805, line: 207, baseType: !155, size: 64, offset: 640)
!831 = !DIDerivedType(tag: DW_TAG_member, scope: !804, file: !805, line: 208, baseType: !832, size: 64, offset: 704)
!832 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !804, file: !805, line: 208, size: 64, elements: !833)
!833 = !{!834, !837}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !832, file: !805, line: 209, baseType: !835, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !836, line: 8, baseType: !649)
!836 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!837 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !832, file: !805, line: 210, baseType: !835, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !804, file: !805, line: 212, baseType: !835, size: 64, offset: 768)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !804, file: !805, line: 213, baseType: !360, size: 32, offset: 832)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !804, file: !805, line: 214, baseType: !369, size: 32, offset: 864)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !804, file: !805, line: 215, baseType: !842, size: 32, offset: 896)
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !805, line: 31, baseType: !843)
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !153, line: 110, baseType: !423)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !804, file: !805, line: 216, baseType: !245, size: 16, offset: 928)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !804, file: !805, line: 217, baseType: !245, size: 16, offset: 944)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !804, file: !805, line: 221, baseType: !847, size: 16, offset: 960)
!847 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !804, file: !805, line: 228, baseType: !154, size: 64, offset: 1024)
!849 = !DIDerivedType(tag: DW_TAG_member, scope: !804, file: !805, line: 245, baseType: !850, size: 320, offset: 1088)
!850 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !804, file: !805, line: 245, size: 320, elements: !851)
!851 = !{!852, !881}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !850, file: !805, line: 246, baseType: !853, size: 320)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !805, line: 114, size: 320, elements: !854)
!854 = !{!855, !856, !868, !871, !880}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !853, file: !805, line: 116, baseType: !154, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, scope: !853, file: !805, line: 117, baseType: !857, size: 64, offset: 64)
!857 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !853, file: !805, line: 117, size: 64, elements: !858)
!858 = !{!859, !867}
!859 = !DIDerivedType(tag: DW_TAG_member, scope: !857, file: !805, line: 118, baseType: !860, size: 64)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !857, file: !805, line: 118, size: 64, elements: !861)
!861 = !{!862, !863}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !860, file: !805, line: 120, baseType: !243, size: 16)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !860, file: !805, line: 121, baseType: !864, size: 48, offset: 16)
!864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !865)
!865 = !{!866}
!866 = !DISubrange(count: 6)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !857, file: !805, line: 127, baseType: !154, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !853, file: !805, line: 129, baseType: !869, size: 64, offset: 128)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !805, line: 102, flags: DIFlagFwdDecl)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !853, file: !805, line: 130, baseType: !872, size: 64, offset: 192)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !805, line: 108, size: 192, elements: !874)
!874 = !{!875, !876, !877}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !873, file: !805, line: 109, baseType: !696, size: 128, align: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !873, file: !805, line: 110, baseType: !741, size: 32, offset: 128)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !873, file: !805, line: 111, baseType: !878, size: 8, offset: 160)
!878 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !153, line: 35, baseType: !879)
!879 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !853, file: !805, line: 131, baseType: !194, size: 64, offset: 256)
!881 = !DIDerivedType(tag: DW_TAG_member, scope: !850, file: !805, line: 247, baseType: !882, size: 320)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !850, file: !805, line: 247, size: 320, elements: !883)
!883 = !{!884, !885, !886, !887, !888}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !882, file: !805, line: 248, baseType: !154, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !882, file: !805, line: 249, baseType: !154, size: 64, offset: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !882, file: !805, line: 250, baseType: !869, size: 64, offset: 128)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !882, file: !805, line: 251, baseType: !872, size: 64, offset: 192)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !882, file: !805, line: 252, baseType: !275, size: 64, offset: 256)
!889 = !DIDerivedType(tag: DW_TAG_member, scope: !804, file: !805, line: 260, baseType: !890, size: 256, offset: 1408)
!890 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !804, file: !805, line: 260, size: 256, elements: !891)
!891 = !{!892, !898}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !890, file: !805, line: 261, baseType: !893, size: 256)
!893 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !805, line: 134, size: 256, elements: !894)
!894 = !{!895, !896}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !893, file: !805, line: 135, baseType: !155, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !893, file: !805, line: 136, baseType: !897, size: 256)
!897 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 256, elements: !750)
!898 = !DIDerivedType(tag: DW_TAG_member, scope: !890, file: !805, line: 262, baseType: !899, size: 256)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !890, file: !805, line: 262, size: 256, elements: !900)
!900 = !{!901, !902}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !899, file: !805, line: 264, baseType: !177, size: 128)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !899, file: !805, line: 265, baseType: !903, size: 128, offset: 128)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !904, line: 22, size: 128, elements: !905)
!904 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!905 = !{!906, !909}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !903, file: !904, line: 23, baseType: !907, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !904, line: 23, flags: DIFlagFwdDecl)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !903, file: !904, line: 24, baseType: !154, size: 64, offset: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !804, file: !805, line: 280, baseType: !911, size: 64, offset: 1664)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !805, line: 176, size: 192, elements: !913)
!913 = !{!914, !923, !924}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !912, file: !805, line: 177, baseType: !915, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !805, line: 171, baseType: !916)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DISubroutineType(types: !918)
!918 = !{!98, !803, !919, !921, !803}
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !870)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !893)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !912, file: !805, line: 178, baseType: !803, size: 64, offset: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !912, file: !805, line: 179, baseType: !869, size: 64, offset: 128)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !778, file: !779, line: 130, baseType: !803, size: 64, offset: 832)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !778, file: !779, line: 131, baseType: !803, size: 64, offset: 896)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !778, file: !779, line: 132, baseType: !803, size: 64, offset: 960)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !778, file: !779, line: 135, baseType: !155, size: 64, offset: 1024)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !778, file: !779, line: 137, baseType: !930, size: 64, offset: 1088)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !932, line: 14, size: 1088, elements: !933)
!932 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!933 = !{!934, !935, !944, !945, !946, !947, !948, !949}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !931, file: !932, line: 15, baseType: !741, size: 32)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !931, file: !932, line: 17, baseType: !936, size: 320, offset: 64)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !937, line: 22, size: 320, elements: !938)
!937 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!938 = !{!939, !940, !941, !942}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !936, file: !937, line: 23, baseType: !651, size: 32)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !936, file: !937, line: 24, baseType: !648, size: 64, offset: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !936, file: !937, line: 26, baseType: !177, size: 128, offset: 128)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !936, file: !937, line: 28, baseType: !943, size: 64, offset: 256)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !931, file: !932, line: 19, baseType: !154, size: 64, offset: 384)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !931, file: !932, line: 20, baseType: !642, size: 64, offset: 448)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !931, file: !932, line: 23, baseType: !549, size: 128, offset: 512)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !931, file: !932, line: 24, baseType: !360, size: 32, offset: 640)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !931, file: !932, line: 29, baseType: !642, size: 64, offset: 704)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !931, file: !932, line: 36, baseType: !950, size: 320, offset: 768)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !951, line: 15, size: 320, elements: !952)
!951 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!952 = !{!953, !954, !955, !956, !957, !958, !959}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !950, file: !951, line: 16, baseType: !651, size: 32)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !950, file: !951, line: 18, baseType: !98, size: 32, offset: 32)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !950, file: !951, line: 19, baseType: !98, size: 32, offset: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !950, file: !951, line: 20, baseType: !98, size: 32, offset: 96)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !950, file: !951, line: 21, baseType: !98, size: 32, offset: 128)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !950, file: !951, line: 22, baseType: !154, size: 64, offset: 192)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !950, file: !951, line: 23, baseType: !154, size: 64, offset: 256)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !778, file: !779, line: 138, baseType: !961, size: 64, offset: 1152)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !361, line: 18, flags: DIFlagFwdDecl)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !778, file: !779, line: 139, baseType: !964, size: 64, offset: 1216)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !966, line: 16, flags: DIFlagFwdDecl)
!966 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!967 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !778, file: !779, line: 140, baseType: !968, size: 64, offset: 1280)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !779, line: 25, size: 64, elements: !970)
!970 = !{!971, !972, !973}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !969, file: !779, line: 26, baseType: !225, size: 32)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !969, file: !779, line: 27, baseType: !98, size: 32, offset: 32)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !969, file: !779, line: 28, baseType: !974, offset: 64)
!974 = !DICompositeType(tag: DW_TAG_array_type, baseType: !369, elements: !769)
!975 = !DIDerivedType(tag: DW_TAG_member, scope: !778, file: !779, line: 142, baseType: !976, size: 128, offset: 1344)
!976 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !778, file: !779, line: 142, size: 128, elements: !977)
!977 = !{!978, !979}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !976, file: !779, line: 143, baseType: !98, size: 32)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !976, file: !779, line: 144, baseType: !696, size: 128, align: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !684, file: !27, line: 1013, baseType: !981, size: 256, offset: 960)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !27, line: 970, size: 256, elements: !982)
!982 = !{!983, !984, !985, !986, !987, !988}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !981, file: !27, line: 971, baseType: !154, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !981, file: !27, line: 972, baseType: !13, size: 32, offset: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !981, file: !27, line: 973, baseType: !13, size: 32, offset: 96)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !981, file: !27, line: 974, baseType: !13, size: 32, offset: 128)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !981, file: !27, line: 975, baseType: !13, size: 32, offset: 160)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !981, file: !27, line: 976, baseType: !515, size: 64, offset: 192)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !684, file: !27, line: 1014, baseType: !990, size: 128, offset: 1216)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !991, line: 8, size: 128, elements: !992)
!991 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!992 = !{!993, !994}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !990, file: !991, line: 9, baseType: !499, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !990, file: !991, line: 10, baseType: !389, size: 64, offset: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !684, file: !27, line: 1015, baseType: !354, size: 64, offset: 1344)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !684, file: !27, line: 1016, baseType: !997, size: 64, offset: 1408)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !999)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !27, line: 1914, size: 2112, elements: !1000)
!1000 = !{!1001, !1002, !1007, !1011, !1015, !1043, !1044, !1050, !1063, !1071, !1075, !1076, !1303, !1304, !1308, !1313, !1314, !1318, !1322, !1328, !1329, !1333, !1334, !1341, !1345, !1349, !1355, !1359, !1363, !1367, !1371, !1372, !1378}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !999, file: !27, line: 1915, baseType: !172, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !999, file: !27, line: 1916, baseType: !1003, size: 64, offset: 64)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!515, !1006, !515, !98}
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !999, file: !27, line: 1917, baseType: !1008, size: 64, offset: 128)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!307, !1006, !275, !322, !667}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !999, file: !27, line: 1918, baseType: !1012, size: 64, offset: 192)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{!307, !1006, !194, !322, !667}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !999, file: !27, line: 1919, baseType: !1016, size: 64, offset: 256)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{!307, !1019, !1041}
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !27, line: 373, size: 384, elements: !1021)
!1021 = !{!1022, !1023, !1024, !1028, !1029, !1030, !1031}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1020, file: !27, line: 374, baseType: !1006, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1020, file: !27, line: 375, baseType: !515, size: 64, offset: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1020, file: !27, line: 376, baseType: !1025, size: 64, offset: 128)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{null, !1019, !311}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1020, file: !27, line: 377, baseType: !155, size: 64, offset: 192)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1020, file: !27, line: 378, baseType: !98, size: 32, offset: 256)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1020, file: !27, line: 379, baseType: !243, size: 16, offset: 288)
!1031 = !DIDerivedType(tag: DW_TAG_member, scope: !1020, file: !27, line: 380, baseType: !1032, size: 64, offset: 320)
!1032 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1020, file: !27, line: 380, size: 64, elements: !1033)
!1033 = !{!1034, !1037}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1032, file: !27, line: 386, baseType: !1035, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !27, line: 386, flags: DIFlagFwdDecl)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1032, file: !27, line: 395, baseType: !1038, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!307, !155}
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !27, line: 69, flags: DIFlagFwdDecl)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !999, file: !27, line: 1920, baseType: !1016, size: 64, offset: 320)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !999, file: !27, line: 1921, baseType: !1045, size: 64, offset: 384)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!98, !1019, !1048, !13}
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !27, line: 53, flags: DIFlagFwdDecl)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !999, file: !27, line: 1923, baseType: !1051, size: 64, offset: 448)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!98, !1006, !1054}
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !27, line: 1858, size: 128, elements: !1056)
!1056 = !{!1057, !1062}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1055, file: !27, line: 1859, baseType: !1058, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !27, line: 1855, baseType: !1059)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{!878, !1054, !194, !98, !515, !427, !13}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1055, file: !27, line: 1860, baseType: !515, size: 64, offset: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !999, file: !27, line: 1924, baseType: !1064, size: 64, offset: 512)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!1067, !1006, !1069}
!1067 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1068, line: 59, baseType: !13)
!1068 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !27, line: 61, flags: DIFlagFwdDecl)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !999, file: !27, line: 1925, baseType: !1072, size: 64, offset: 576)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{!311, !1006, !13, !154}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !999, file: !27, line: 1926, baseType: !1072, size: 64, offset: 640)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !999, file: !27, line: 1927, baseType: !1077, size: 64, offset: 704)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!98, !1006, !1080}
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !1082, line: 625, size: 1344, elements: !1083)
!1082 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!1083 = !{!1084, !1093, !1261, !1267, !1274, !1275, !1280, !1281, !1286, !1287, !1290, !1294, !1295, !1296, !1297, !1298, !1301}
!1084 = !DIDerivedType(tag: DW_TAG_member, scope: !1081, file: !1082, line: 628, baseType: !1085, size: 128)
!1085 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1081, file: !1082, line: 628, size: 128, elements: !1086)
!1086 = !{!1087, !1092}
!1087 = !DIDerivedType(tag: DW_TAG_member, scope: !1085, file: !1082, line: 629, baseType: !1088, size: 128)
!1088 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1085, file: !1082, line: 629, size: 128, elements: !1089)
!1089 = !{!1090, !1091}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1088, file: !1082, line: 631, baseType: !154, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1088, file: !1082, line: 632, baseType: !154, size: 64, offset: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1085, file: !1082, line: 635, baseType: !696, size: 128, align: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1081, file: !1082, line: 639, baseType: !1094, size: 64, offset: 128)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1082, line: 733, size: 10240, elements: !1096)
!1096 = !{!1097, !1259}
!1097 = !DIDerivedType(tag: DW_TAG_member, scope: !1095, file: !1082, line: 734, baseType: !1098, size: 10240)
!1098 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1095, file: !1082, line: 734, size: 10240, elements: !1099)
!1099 = !{!1100, !1104, !1117, !1121, !1122, !1123, !1124, !1125, !1126, !1135, !1136, !1137, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1176, !1178, !1181, !1228, !1229, !1230, !1233, !1234, !1235, !1238, !1239, !1240, !1246, !1247}
!1100 = !DIDerivedType(tag: DW_TAG_member, scope: !1098, file: !1082, line: 739, baseType: !1101, size: 512, align: 512)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1098, file: !1082, line: 739, size: 512, align: 512, elements: !1102)
!1102 = !{!1103}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1101, file: !1082, line: 747, baseType: !225, size: 32)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1098, file: !1082, line: 750, baseType: !1105, size: 128, offset: 512)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1106, line: 218, size: 128, elements: !1107)
!1106 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1107 = !{!1108, !1115, !1116}
!1108 = !DIDerivedType(tag: DW_TAG_member, scope: !1105, file: !1106, line: 219, baseType: !1109, size: 32)
!1109 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1105, file: !1106, line: 219, size: 32, elements: !1110)
!1110 = !{!1111, !1112}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1109, file: !1106, line: 220, baseType: !205, size: 32)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1109, file: !1106, line: 221, baseType: !1113)
!1113 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1106, line: 197, baseType: !1114)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1106, line: 197, elements: !557)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1105, file: !1106, line: 223, baseType: !13, size: 32, offset: 32)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1105, file: !1106, line: 224, baseType: !155, size: 64, offset: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1098, file: !1082, line: 752, baseType: !1118, size: 64, offset: 640)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DISubroutineType(types: !1120)
!1120 = !{!154, !1006, !154, !154, !154, !154}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1098, file: !1082, line: 756, baseType: !154, size: 64, offset: 704)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1098, file: !1082, line: 757, baseType: !154, size: 64, offset: 768)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1098, file: !1082, line: 760, baseType: !154, size: 64, offset: 832)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1098, file: !1082, line: 761, baseType: !154, size: 64, offset: 896)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1098, file: !1082, line: 763, baseType: !154, size: 64, offset: 960)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1098, file: !1082, line: 764, baseType: !1127, size: 64, offset: 1024)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1129, line: 299, baseType: !1130)
!1129 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1129, line: 299, size: 64, elements: !1131)
!1131 = !{!1132}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1130, file: !1129, line: 299, baseType: !1133, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1134, line: 18, baseType: !154)
!1134 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1098, file: !1082, line: 773, baseType: !225, size: 32, offset: 1088)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1098, file: !1082, line: 785, baseType: !225, size: 32, offset: 1120)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1098, file: !1082, line: 795, baseType: !1138, size: 64, offset: 1152)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !1082, line: 726, size: 128, elements: !1140)
!1140 = !{!1141, !1142}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1139, file: !1082, line: 727, baseType: !427, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1139, file: !1082, line: 728, baseType: !98, size: 32, offset: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1098, file: !1082, line: 801, baseType: !154, size: 64, offset: 1216)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1098, file: !1082, line: 804, baseType: !642, size: 64, offset: 1280)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1098, file: !1082, line: 806, baseType: !98, size: 32, offset: 1344)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1098, file: !1082, line: 808, baseType: !205, size: 32, offset: 1376)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1098, file: !1082, line: 823, baseType: !819, size: 320, offset: 1408)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1098, file: !1082, line: 825, baseType: !177, size: 128, offset: 1728)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1098, file: !1082, line: 845, baseType: !98, size: 32, offset: 1856)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1098, file: !1082, line: 849, baseType: !154, size: 64, offset: 1920)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1098, file: !1082, line: 850, baseType: !154, size: 64, offset: 1984)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1098, file: !1082, line: 852, baseType: !154, size: 64, offset: 2048)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1098, file: !1082, line: 853, baseType: !154, size: 64, offset: 2112)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1098, file: !1082, line: 854, baseType: !644, size: 64, offset: 2176)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1098, file: !1082, line: 855, baseType: !154, size: 64, offset: 2240)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1098, file: !1082, line: 856, baseType: !154, size: 64, offset: 2304)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1098, file: !1082, line: 857, baseType: !154, size: 64, offset: 2368)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1098, file: !1082, line: 858, baseType: !154, size: 64, offset: 2432)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1098, file: !1082, line: 865, baseType: !400, size: 32, offset: 2496)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1098, file: !1082, line: 867, baseType: !205, size: 32, offset: 2528)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1098, file: !1082, line: 869, baseType: !154, size: 64, offset: 2560)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1098, file: !1082, line: 869, baseType: !154, size: 64, offset: 2624)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1098, file: !1082, line: 869, baseType: !154, size: 64, offset: 2688)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1098, file: !1082, line: 869, baseType: !154, size: 64, offset: 2752)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1098, file: !1082, line: 870, baseType: !154, size: 64, offset: 2816)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1098, file: !1082, line: 870, baseType: !154, size: 64, offset: 2880)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1098, file: !1082, line: 870, baseType: !154, size: 64, offset: 2944)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1098, file: !1082, line: 871, baseType: !154, size: 64, offset: 3008)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1098, file: !1082, line: 871, baseType: !154, size: 64, offset: 3072)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1098, file: !1082, line: 871, baseType: !154, size: 64, offset: 3136)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1098, file: !1082, line: 871, baseType: !154, size: 64, offset: 3200)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1098, file: !1082, line: 873, baseType: !1173, size: 3328, offset: 3264)
!1173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 3328, elements: !1174)
!1174 = !{!1175}
!1175 = !DISubrange(count: 52)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1098, file: !1082, line: 875, baseType: !1177, size: 1280, offset: 6592)
!1177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !936, size: 1280, elements: !750)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1098, file: !1082, line: 877, baseType: !1179, size: 64, offset: 7872)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1082, line: 877, flags: DIFlagFwdDecl)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1098, file: !1082, line: 880, baseType: !1182, size: 1088, offset: 7936)
!1182 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1183, line: 72, baseType: !1184)
!1183 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1183, line: 23, size: 1088, elements: !1185)
!1185 = !{!1186, !1187, !1188, !1189, !1190, !1193, !1194, !1195, !1196, !1223, !1224, !1225}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1184, file: !1183, line: 28, baseType: !427, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1184, file: !1183, line: 38, baseType: !644, size: 64, offset: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1184, file: !1183, line: 40, baseType: !154, size: 64, offset: 128)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1184, file: !1183, line: 43, baseType: !819, size: 320, offset: 192)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1184, file: !1183, line: 44, baseType: !1191, size: 64, offset: 512)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1183, line: 44, flags: DIFlagFwdDecl)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1184, file: !1183, line: 48, baseType: !154, size: 64, offset: 576)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1184, file: !1183, line: 59, baseType: !638, size: 256, offset: 640)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1184, file: !1183, line: 60, baseType: !155, size: 64, offset: 896)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1184, file: !1183, line: 61, baseType: !1197, size: 64, offset: 960)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1199)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1200, line: 13, size: 1216, elements: !1201)
!1200 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1201 = !{!1202, !1203, !1204, !1205, !1206, !1207, !1208, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1199, file: !1200, line: 14, baseType: !155, size: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1199, file: !1200, line: 15, baseType: !154, size: 64, offset: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1199, file: !1200, line: 17, baseType: !154, size: 64, offset: 128)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1199, file: !1200, line: 17, baseType: !154, size: 64, offset: 192)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1199, file: !1200, line: 18, baseType: !154, size: 64, offset: 256)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1199, file: !1200, line: 18, baseType: !154, size: 64, offset: 320)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1199, file: !1200, line: 19, baseType: !1209, size: 64, offset: 384)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1199, file: !1200, line: 21, baseType: !311, size: 64, offset: 448)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1199, file: !1200, line: 23, baseType: !311, size: 64, offset: 512)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1199, file: !1200, line: 24, baseType: !311, size: 64, offset: 576)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1199, file: !1200, line: 25, baseType: !311, size: 64, offset: 640)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1199, file: !1200, line: 26, baseType: !311, size: 64, offset: 704)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1199, file: !1200, line: 27, baseType: !311, size: 64, offset: 768)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1199, file: !1200, line: 28, baseType: !311, size: 64, offset: 832)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1199, file: !1200, line: 29, baseType: !311, size: 64, offset: 896)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1199, file: !1200, line: 30, baseType: !311, size: 64, offset: 960)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1199, file: !1200, line: 31, baseType: !311, size: 64, offset: 1024)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1199, file: !1200, line: 32, baseType: !311, size: 64, offset: 1088)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1199, file: !1200, line: 33, baseType: !311, size: 64, offset: 1152)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1184, file: !1183, line: 63, baseType: !225, size: 32, offset: 1024)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1184, file: !1183, line: 69, baseType: !243, size: 16, offset: 1056)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1184, file: !1183, line: 70, baseType: !1226, size: 16, offset: 1072)
!1226 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !234, line: 18, baseType: !1227)
!1227 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !236, line: 23, baseType: !847)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1098, file: !1082, line: 882, baseType: !154, size: 64, offset: 9024)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1098, file: !1082, line: 885, baseType: !205, size: 32, offset: 9088)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1098, file: !1082, line: 886, baseType: !1231, size: 64, offset: 9152)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1082, line: 732, flags: DIFlagFwdDecl)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1098, file: !1082, line: 901, baseType: !961, size: 64, offset: 9216)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1098, file: !1082, line: 904, baseType: !1006, size: 64, offset: 9280)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1098, file: !1082, line: 906, baseType: !1236, size: 64, offset: 9344)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1082, line: 906, flags: DIFlagFwdDecl)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1098, file: !1082, line: 930, baseType: !225, size: 32, offset: 9408)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1098, file: !1082, line: 933, baseType: !225, size: 32, offset: 9440)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1098, file: !1082, line: 935, baseType: !1241, size: 64, offset: 9472)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !57, line: 103, size: 64, elements: !1242)
!1242 = !{!1243}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1241, file: !57, line: 104, baseType: !1244, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !57, line: 101, flags: DIFlagFwdDecl)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1098, file: !1082, line: 940, baseType: !642, size: 64, offset: 9536)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1098, file: !1082, line: 942, baseType: !1248, size: 256, offset: 9600)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1249, line: 98, size: 256, elements: !1250)
!1249 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1250 = !{!1251, !1252, !1253}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1248, file: !1249, line: 99, baseType: !642, size: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1248, file: !1249, line: 100, baseType: !177, size: 128, offset: 64)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1248, file: !1249, line: 101, baseType: !1254, size: 64, offset: 192)
!1254 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1249, line: 21, baseType: !1255)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DISubroutineType(types: !1257)
!1257 = !{null, !1258}
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1095, file: !1082, line: 986, baseType: !1260, offset: 10240)
!1260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, elements: !769)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1081, file: !1082, line: 640, baseType: !1262, size: 64, offset: 192)
!1262 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1129, line: 297, baseType: !1263)
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1129, line: 297, size: 64, elements: !1264)
!1264 = !{!1265}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1263, file: !1129, line: 297, baseType: !1266, size: 64)
!1266 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1134, line: 19, baseType: !154)
!1267 = !DIDerivedType(tag: DW_TAG_member, scope: !1081, file: !1082, line: 646, baseType: !1268, size: 64, offset: 256)
!1268 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1081, file: !1082, line: 646, size: 64, elements: !1269)
!1269 = !{!1270, !1273}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1268, file: !1082, line: 647, baseType: !1271, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1272)
!1272 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !1082, line: 542, baseType: !154)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1268, file: !1082, line: 648, baseType: !1272, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1081, file: !1082, line: 666, baseType: !98, size: 32, offset: 320)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1081, file: !1082, line: 667, baseType: !1276, size: 64, offset: 384)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !1082, line: 579, size: 320, elements: !1278)
!1278 = !{!1279}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1277, file: !1082, line: 580, baseType: !819, size: 320)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1081, file: !1082, line: 670, baseType: !878, size: 8, offset: 448)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1081, file: !1082, line: 681, baseType: !1282, size: 256, offset: 512)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1081, file: !1082, line: 678, size: 256, elements: !1283)
!1283 = !{!1284, !1285}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1282, file: !1082, line: 679, baseType: !165, size: 192, align: 64)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1282, file: !1082, line: 680, baseType: !154, size: 64, offset: 192)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1081, file: !1082, line: 689, baseType: !177, size: 128, offset: 768)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1081, file: !1082, line: 691, baseType: !1288, size: 64, offset: 896)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1082, line: 691, flags: DIFlagFwdDecl)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1081, file: !1082, line: 694, baseType: !1291, size: 64, offset: 960)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1293)
!1293 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1082, line: 694, flags: DIFlagFwdDecl)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1081, file: !1082, line: 697, baseType: !154, size: 64, offset: 1024)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1081, file: !1082, line: 699, baseType: !1006, size: 64, offset: 1088)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1081, file: !1082, line: 700, baseType: !155, size: 64, offset: 1152)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1081, file: !1082, line: 711, baseType: !642, size: 64, offset: 1216)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1081, file: !1082, line: 717, baseType: !1299, size: 64, offset: 1280)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1082, line: 717, flags: DIFlagFwdDecl)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1081, file: !1082, line: 722, baseType: !1302, offset: 1344)
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !1082, line: 570, elements: !557)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !999, file: !27, line: 1928, baseType: !154, size: 64, offset: 768)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !999, file: !27, line: 1929, baseType: !1305, size: 64, offset: 832)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{!98, !354, !1006}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !999, file: !27, line: 1930, baseType: !1309, size: 64, offset: 896)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!98, !1006, !1312}
!1312 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !27, line: 1061, baseType: !155)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !999, file: !27, line: 1931, baseType: !1305, size: 64, offset: 960)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !999, file: !27, line: 1932, baseType: !1315, size: 64, offset: 1024)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{!98, !1006, !515, !515, !98}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !999, file: !27, line: 1933, baseType: !1319, size: 64, offset: 1088)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = !DISubroutineType(types: !1321)
!1321 = !{!98, !98, !1006, !98}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !999, file: !27, line: 1934, baseType: !1323, size: 64, offset: 1152)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DISubroutineType(types: !1325)
!1325 = !{!98, !1006, !98, !1326}
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !27, line: 1063, flags: DIFlagFwdDecl)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !999, file: !27, line: 1935, baseType: !1118, size: 64, offset: 1216)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !999, file: !27, line: 1936, baseType: !1330, size: 64, offset: 1280)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = !DISubroutineType(types: !1332)
!1332 = !{!98, !98}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !999, file: !27, line: 1937, baseType: !1323, size: 64, offset: 1344)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !999, file: !27, line: 1938, baseType: !1335, size: 64, offset: 1408)
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1336 = !DISubroutineType(types: !1337)
!1337 = !{!307, !1338, !1006, !667, !322, !13}
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1340, line: 59, flags: DIFlagFwdDecl)
!1340 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !999, file: !27, line: 1939, baseType: !1342, size: 64, offset: 1472)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{!307, !1006, !667, !1338, !322, !13}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !999, file: !27, line: 1940, baseType: !1346, size: 64, offset: 1536)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{null, !1006}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !999, file: !27, line: 1941, baseType: !1350, size: 64, offset: 1600)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{!98, !1006, !98, !1353, !1354}
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !999, file: !27, line: 1942, baseType: !1356, size: 64, offset: 1664)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = !DISubroutineType(types: !1358)
!1358 = !{!311, !1006, !98, !515, !515}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !999, file: !27, line: 1944, baseType: !1360, size: 64, offset: 1728)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{null, !626, !1006}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !999, file: !27, line: 1948, baseType: !1364, size: 64, offset: 1792)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!307, !1006, !515, !1006, !515, !322, !13}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !999, file: !27, line: 1950, baseType: !1368, size: 64, offset: 1856)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{!515, !1006, !515, !1006, !515, !515, !13}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !999, file: !27, line: 1953, baseType: !1315, size: 64, offset: 1920)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !999, file: !27, line: 1954, baseType: !1373, size: 64, offset: 1984)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DISubroutineType(types: !1375)
!1375 = !{!98, !1376, !13}
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !27, line: 1911, flags: DIFlagFwdDecl)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !999, file: !27, line: 1955, baseType: !1379, size: 64, offset: 2048)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{!98, !1376, !1048, !13}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !684, file: !27, line: 1018, baseType: !427, size: 64, offset: 1472)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !684, file: !27, line: 1020, baseType: !155, size: 64, offset: 1536)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !684, file: !27, line: 1023, baseType: !155, size: 64, offset: 1600)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !684, file: !27, line: 1027, baseType: !1386, size: 64, offset: 1664)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !684, file: !27, line: 1029, baseType: !350, size: 64, offset: 1728)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !684, file: !27, line: 1030, baseType: !1389, size: 32, offset: 1792)
!1389 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1390, line: 8, baseType: !423)
!1390 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !684, file: !27, line: 1031, baseType: !1389, size: 32, offset: 1824)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !627, file: !628, line: 29, baseType: !155, size: 64, offset: 896)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !569, file: !27, line: 2077, baseType: !623, size: 64, offset: 1088)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !569, file: !27, line: 2078, baseType: !623, size: 64, offset: 1152)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !569, file: !27, line: 2079, baseType: !623, size: 64, offset: 1216)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !569, file: !27, line: 2081, baseType: !1397, size: 64, offset: 1280)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = !DISubroutineType(types: !1399)
!1399 = !{!307, !505, !98, !275, !322, !515}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !569, file: !27, line: 2082, baseType: !1401, size: 64, offset: 1344)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = !DISubroutineType(types: !1403)
!1403 = !{!307, !505, !98, !194, !322, !515}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !569, file: !27, line: 2083, baseType: !1405, size: 64, offset: 1408)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{!1408, !354}
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !40, line: 296, size: 1664, elements: !1411)
!1411 = !{!1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1436, !1437, !1438}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1410, file: !40, line: 297, baseType: !549, size: 128)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1410, file: !40, line: 298, baseType: !177, size: 128, offset: 128)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1410, file: !40, line: 299, baseType: !177, size: 128, offset: 256)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1410, file: !40, line: 300, baseType: !177, size: 128, offset: 384)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1410, file: !40, line: 301, baseType: !638, size: 256, offset: 512)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1410, file: !40, line: 302, baseType: !205, size: 32, offset: 768)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1410, file: !40, line: 303, baseType: !225, size: 32, offset: 800)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1410, file: !40, line: 304, baseType: !505, size: 64, offset: 832)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1410, file: !40, line: 305, baseType: !1421, size: 64, offset: 896)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !40, line: 68, size: 64, elements: !1422)
!1422 = !{!1423, !1435}
!1423 = !DIDerivedType(tag: DW_TAG_member, scope: !1421, file: !40, line: 69, baseType: !1424, size: 32)
!1424 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1421, file: !40, line: 69, size: 32, elements: !1425)
!1425 = !{!1426, !1427, !1428}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1424, file: !40, line: 70, baseType: !360, size: 32)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1424, file: !40, line: 71, baseType: !369, size: 32)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1424, file: !40, line: 72, baseType: !1429, size: 32)
!1429 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1430, line: 24, baseType: !1431)
!1430 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1431 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1430, line: 22, size: 32, elements: !1432)
!1432 = !{!1433}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1431, file: !1430, line: 23, baseType: !1434, size: 32)
!1434 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1430, line: 20, baseType: !366)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1421, file: !40, line: 74, baseType: !39, size: 32, offset: 32)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1410, file: !40, line: 306, baseType: !515, size: 64, offset: 960)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1410, file: !40, line: 307, baseType: !154, size: 64, offset: 1024)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1410, file: !40, line: 308, baseType: !1439, size: 576, offset: 1088)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !40, line: 205, size: 576, elements: !1440)
!1440 = !{!1441, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1439, file: !40, line: 206, baseType: !1442, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !40, line: 66, baseType: !517)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1439, file: !40, line: 207, baseType: !1442, size: 64, offset: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1439, file: !40, line: 208, baseType: !1442, size: 64, offset: 128)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1439, file: !40, line: 209, baseType: !1442, size: 64, offset: 192)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1439, file: !40, line: 210, baseType: !1442, size: 64, offset: 256)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1439, file: !40, line: 211, baseType: !1442, size: 64, offset: 320)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1439, file: !40, line: 212, baseType: !1442, size: 64, offset: 384)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1439, file: !40, line: 213, baseType: !835, size: 64, offset: 448)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1439, file: !40, line: 214, baseType: !835, size: 64, offset: 512)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !569, file: !27, line: 2085, baseType: !1452, size: 64, offset: 1472)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{!311, !505, !1455}
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1457, line: 15, size: 256, elements: !1458)
!1457 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1458 = !{!1459, !1460, !1461, !1462, !1463}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1456, file: !1457, line: 16, baseType: !152, size: 32)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1456, file: !1457, line: 19, baseType: !98, size: 32, offset: 32)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1456, file: !1457, line: 26, baseType: !154, size: 64, offset: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1456, file: !1457, line: 33, baseType: !154, size: 64, offset: 128)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1456, file: !1457, line: 36, baseType: !1464, size: 64, offset: 192)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1457, line: 36, flags: DIFlagFwdDecl)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !569, file: !27, line: 2087, baseType: !1452, size: 64, offset: 1536)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !569, file: !27, line: 2089, baseType: !539, size: 64, offset: 1600)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !506, file: !27, line: 1198, baseType: !1469, size: 64, offset: 448)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1471)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !40, line: 324, size: 704, elements: !1472)
!1472 = !{!1473, !1477, !1481, !1485, !1486, !1487, !1488, !1489, !1494, !1499, !1503}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1471, file: !40, line: 325, baseType: !1474, size: 64)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = !DISubroutineType(types: !1476)
!1476 = !{!98, !1409}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1471, file: !40, line: 326, baseType: !1478, size: 64, offset: 64)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{!1409, !505, !98}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1471, file: !40, line: 327, baseType: !1482, size: 64, offset: 128)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = !DISubroutineType(types: !1484)
!1484 = !{null, !1409}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1471, file: !40, line: 328, baseType: !1474, size: 64, offset: 192)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1471, file: !40, line: 329, baseType: !1474, size: 64, offset: 256)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1471, file: !40, line: 330, baseType: !1474, size: 64, offset: 320)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1471, file: !40, line: 331, baseType: !597, size: 64, offset: 384)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1471, file: !40, line: 334, baseType: !1490, size: 64, offset: 448)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{!1493, !354}
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1471, file: !40, line: 335, baseType: !1495, size: 64, offset: 512)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{!98, !354, !1498}
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1471, file: !40, line: 337, baseType: !1500, size: 64, offset: 576)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DISubroutineType(types: !1502)
!1502 = !{!98, !354, !1493}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1471, file: !40, line: 339, baseType: !1504, size: 64, offset: 640)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{!98, !505, !1507}
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !506, file: !27, line: 1199, baseType: !1509, size: 64, offset: 512)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1511)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !40, line: 430, size: 704, elements: !1512)
!1512 = !{!1513, !1519, !1520, !1524, !1525, !1526, !1541, !1564, !1568, !1569, !1592}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1511, file: !40, line: 431, baseType: !1514, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!98, !505, !98, !98, !1517}
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !990)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1511, file: !40, line: 432, baseType: !597, size: 64, offset: 64)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1511, file: !40, line: 433, baseType: !1521, size: 64, offset: 128)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = !DISubroutineType(types: !1523)
!1523 = !{!98, !505, !13}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1511, file: !40, line: 434, baseType: !1521, size: 64, offset: 192)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1511, file: !40, line: 435, baseType: !597, size: 64, offset: 256)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1511, file: !40, line: 436, baseType: !1527, size: 64, offset: 320)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{!98, !505, !98, !1530}
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !40, line: 417, size: 256, elements: !1532)
!1532 = !{!1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1531, file: !40, line: 418, baseType: !98, size: 32)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1531, file: !40, line: 419, baseType: !13, size: 32, offset: 32)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1531, file: !40, line: 420, baseType: !13, size: 32, offset: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1531, file: !40, line: 422, baseType: !13, size: 32, offset: 96)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1531, file: !40, line: 423, baseType: !13, size: 32, offset: 128)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1531, file: !40, line: 424, baseType: !13, size: 32, offset: 160)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1531, file: !40, line: 425, baseType: !13, size: 32, offset: 192)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1531, file: !40, line: 426, baseType: !13, size: 32, offset: 224)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1511, file: !40, line: 437, baseType: !1542, size: 64, offset: 384)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{!98, !505, !1421, !1545}
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !40, line: 345, size: 960, elements: !1547)
!1547 = !{!1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1546, file: !40, line: 346, baseType: !98, size: 32)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1546, file: !40, line: 347, baseType: !427, size: 64, offset: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1546, file: !40, line: 348, baseType: !427, size: 64, offset: 128)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1546, file: !40, line: 349, baseType: !427, size: 64, offset: 192)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1546, file: !40, line: 350, baseType: !427, size: 64, offset: 256)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1546, file: !40, line: 351, baseType: !427, size: 64, offset: 320)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1546, file: !40, line: 352, baseType: !427, size: 64, offset: 384)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1546, file: !40, line: 353, baseType: !648, size: 64, offset: 448)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1546, file: !40, line: 355, baseType: !648, size: 64, offset: 512)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1546, file: !40, line: 356, baseType: !98, size: 32, offset: 576)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1546, file: !40, line: 357, baseType: !98, size: 32, offset: 608)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1546, file: !40, line: 358, baseType: !427, size: 64, offset: 640)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1546, file: !40, line: 359, baseType: !427, size: 64, offset: 704)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1546, file: !40, line: 360, baseType: !427, size: 64, offset: 768)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1546, file: !40, line: 361, baseType: !648, size: 64, offset: 832)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1546, file: !40, line: 362, baseType: !98, size: 32, offset: 896)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1511, file: !40, line: 438, baseType: !1565, size: 64, offset: 448)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{!98, !505, !1507, !1545}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1511, file: !40, line: 440, baseType: !1542, size: 64, offset: 512)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1511, file: !40, line: 441, baseType: !1570, size: 64, offset: 576)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DISubroutineType(types: !1572)
!1572 = !{!98, !505, !1573}
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !40, line: 411, size: 1408, elements: !1575)
!1575 = !{!1576, !1577}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1574, file: !40, line: 412, baseType: !13, size: 32)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1574, file: !40, line: 413, baseType: !1578, size: 1344, offset: 64)
!1578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1579, size: 1344, elements: !276)
!1579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !40, line: 397, size: 448, elements: !1580)
!1580 = !{!1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1591}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1579, file: !40, line: 398, baseType: !13, size: 32)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1579, file: !40, line: 399, baseType: !13, size: 32, offset: 32)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1579, file: !40, line: 401, baseType: !13, size: 32, offset: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1579, file: !40, line: 402, baseType: !13, size: 32, offset: 96)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1579, file: !40, line: 403, baseType: !13, size: 32, offset: 128)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1579, file: !40, line: 404, baseType: !13, size: 32, offset: 160)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1579, file: !40, line: 405, baseType: !13, size: 32, offset: 192)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1579, file: !40, line: 406, baseType: !429, size: 64, offset: 256)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1579, file: !40, line: 407, baseType: !1590, size: 64, offset: 320)
!1590 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !153, line: 132, baseType: !427)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1579, file: !40, line: 408, baseType: !1590, size: 64, offset: 384)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1511, file: !40, line: 442, baseType: !1521, size: 64, offset: 640)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !506, file: !27, line: 1200, baseType: !1594, size: 64, offset: 576)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1596)
!1596 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !27, line: 54, flags: DIFlagFwdDecl)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !506, file: !27, line: 1201, baseType: !154, size: 64, offset: 640)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !506, file: !27, line: 1202, baseType: !154, size: 64, offset: 704)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !506, file: !27, line: 1203, baseType: !154, size: 64, offset: 768)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !506, file: !27, line: 1204, baseType: !389, size: 64, offset: 832)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !506, file: !27, line: 1205, baseType: !819, size: 320, offset: 896)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !506, file: !27, line: 1206, baseType: !98, size: 32, offset: 1216)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !506, file: !27, line: 1207, baseType: !225, size: 32, offset: 1248)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !506, file: !27, line: 1209, baseType: !155, size: 64, offset: 1280)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !506, file: !27, line: 1211, baseType: !1606, size: 64, offset: 1344)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1609)
!1609 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !27, line: 1211, flags: DIFlagFwdDecl)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !506, file: !27, line: 1223, baseType: !1611, size: 64, offset: 1408)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !406, line: 34, size: 64, elements: !1612)
!1612 = !{!1613}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1611, file: !406, line: 35, baseType: !409, size: 64)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !506, file: !27, line: 1224, baseType: !177, size: 128, offset: 1472)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !506, file: !27, line: 1225, baseType: !1616, size: 64, offset: 1600)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !27, line: 1225, flags: DIFlagFwdDecl)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !506, file: !27, line: 1226, baseType: !1619, size: 64, offset: 1664)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !27, line: 1226, flags: DIFlagFwdDecl)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !506, file: !27, line: 1227, baseType: !1622, size: 64, offset: 1728)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !27, line: 50, flags: DIFlagFwdDecl)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !506, file: !27, line: 1228, baseType: !1625, size: 64, offset: 1792)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !27, line: 1228, flags: DIFlagFwdDecl)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !506, file: !27, line: 1229, baseType: !549, size: 128, offset: 1856)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !506, file: !27, line: 1230, baseType: !13, size: 32, offset: 1984)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !506, file: !27, line: 1231, baseType: !1630, size: 2496, offset: 2048)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !40, line: 521, size: 2496, elements: !1631)
!1631 = !{!1632, !1633, !1634, !1636, !1668}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1630, file: !40, line: 522, baseType: !13, size: 32)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1630, file: !40, line: 523, baseType: !819, size: 320, offset: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1630, file: !40, line: 524, baseType: !1635, size: 192, offset: 384)
!1635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !354, size: 192, elements: !276)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1630, file: !40, line: 525, baseType: !1637, size: 1728, offset: 576)
!1637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1638, size: 1728, elements: !276)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !40, line: 222, size: 576, elements: !1639)
!1639 = !{!1640, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1638, file: !40, line: 223, baseType: !1641, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !40, line: 445, size: 256, elements: !1643)
!1643 = !{!1644, !1645, !1658, !1659}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1642, file: !40, line: 446, baseType: !98, size: 32)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1642, file: !40, line: 447, baseType: !1646, size: 64, offset: 64)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1648)
!1648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !40, line: 312, size: 512, elements: !1649)
!1649 = !{!1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1648, file: !40, line: 313, baseType: !597, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1648, file: !40, line: 314, baseType: !597, size: 64, offset: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1648, file: !40, line: 315, baseType: !597, size: 64, offset: 128)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1648, file: !40, line: 316, baseType: !597, size: 64, offset: 192)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1648, file: !40, line: 317, baseType: !1474, size: 64, offset: 256)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1648, file: !40, line: 318, baseType: !1474, size: 64, offset: 320)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1648, file: !40, line: 319, baseType: !1474, size: 64, offset: 384)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1648, file: !40, line: 320, baseType: !1504, size: 64, offset: 448)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1642, file: !40, line: 448, baseType: !172, size: 64, offset: 128)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1642, file: !40, line: 449, baseType: !1641, size: 64, offset: 192)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1638, file: !40, line: 224, baseType: !98, size: 32, offset: 64)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1638, file: !40, line: 226, baseType: !177, size: 128, offset: 128)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1638, file: !40, line: 227, baseType: !154, size: 64, offset: 256)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1638, file: !40, line: 228, baseType: !13, size: 32, offset: 320)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1638, file: !40, line: 229, baseType: !13, size: 32, offset: 352)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1638, file: !40, line: 230, baseType: !1442, size: 64, offset: 384)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1638, file: !40, line: 231, baseType: !1442, size: 64, offset: 448)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1638, file: !40, line: 232, baseType: !155, size: 64, offset: 512)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1630, file: !40, line: 526, baseType: !1669, size: 192, offset: 2304)
!1669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1646, size: 192, elements: !276)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !506, file: !27, line: 1233, baseType: !1671, size: 2368, offset: 4544)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !27, line: 1184, size: 2368, elements: !1672)
!1672 = !{!1673, !1674, !1675}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1671, file: !27, line: 1185, baseType: !245, size: 16)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1671, file: !27, line: 1186, baseType: !245, size: 16, offset: 16)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1671, file: !27, line: 1187, baseType: !1676, size: 2304, offset: 64)
!1676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1677, size: 2304, elements: !276)
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1678, line: 12, size: 768, elements: !1679)
!1678 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1679 = !{!1680, !1688, !1690, !2973, !2974}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1677, file: !1678, line: 13, baseType: !1681, size: 384)
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1682, line: 17, size: 384, elements: !1683)
!1682 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1683 = !{!1684, !1685, !1686, !1687}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1681, file: !1682, line: 18, baseType: !98, size: 32)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1681, file: !1682, line: 19, baseType: !98, size: 32, offset: 32)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1681, file: !1682, line: 20, baseType: !754, size: 192, offset: 64)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1681, file: !1682, line: 22, baseType: !696, size: 128, align: 64, offset: 256)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1677, file: !1678, line: 14, baseType: !1689, size: 64, offset: 384)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1677, file: !1678, line: 15, baseType: !1691, size: 64, offset: 448)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1692, line: 16, size: 64, elements: !1693)
!1692 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1693 = !{!1694}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1691, file: !1692, line: 17, baseType: !1695, size: 64)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1340, line: 746, size: 58368, elements: !1697)
!1697 = !{!1698, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1778, !1789, !1884, !1888, !1891, !1922, !1923, !1924, !1925, !1936, !1938, !1939, !1940, !1941, !1942, !1943, !1954, !1955, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1972, !1973, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2061, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2076, !2077, !2078, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2102, !2103, !2104, !2105, !2106, !2107, !2108, !2120, !2126, !2127, !2128, !2129, !2130, !2134, !2137, !2144, !2149, !2152, !2155, !2158, !2161, !2301, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2341, !2342, !2343, !2352, !2360, !2361, !2362, !2363, !2364, !2369, !2370, !2371, !2374, !2375, !2378, !2381, !2384, !2392, !2395, !2396, !2482, !2483, !2484, !2485, !2486, !2492, !2493, !2494, !2495, !2498, !2499, !2502, !2505, !2506, !2509, !2510, !2511, !2514, !2515, !2516, !2517, !2518, !2519, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2551, !2552, !2618, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2630, !2702, !2704, !2705, !2706, !2707, !2708, !2720, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2750, !2751, !2752}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1696, file: !1340, line: 752, baseType: !1699, size: 192)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1700, line: 56, size: 192, elements: !1701)
!1700 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1701 = !{!1702, !1703, !1704, !1705}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1699, file: !1700, line: 57, baseType: !154, size: 64)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1699, file: !1700, line: 58, baseType: !154, size: 64, offset: 64)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1699, file: !1700, line: 59, baseType: !423, size: 32, offset: 128)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1699, file: !1700, line: 61, baseType: !423, size: 32, offset: 160)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1696, file: !1340, line: 754, baseType: !13, size: 32, offset: 192)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1696, file: !1340, line: 767, baseType: !155, size: 64, offset: 256)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1696, file: !1340, line: 768, baseType: !741, size: 32, offset: 320)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1696, file: !1340, line: 770, baseType: !13, size: 32, offset: 352)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1696, file: !1340, line: 771, baseType: !13, size: 32, offset: 384)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1696, file: !1340, line: 774, baseType: !98, size: 32, offset: 416)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1696, file: !1340, line: 775, baseType: !1713, size: 128, offset: 448)
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1714, line: 58, size: 128, elements: !1715)
!1714 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1715 = !{!1716, !1717, !1722, !1723}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1713, file: !1714, line: 59, baseType: !690, size: 64)
!1717 = !DIDerivedType(tag: DW_TAG_member, scope: !1713, file: !1714, line: 60, baseType: !1718, size: 32, offset: 64)
!1718 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1713, file: !1714, line: 60, size: 32, elements: !1719)
!1719 = !{!1720, !1721}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1718, file: !1714, line: 61, baseType: !13, size: 32)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1718, file: !1714, line: 62, baseType: !225, size: 32)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1713, file: !1714, line: 65, baseType: !243, size: 16, offset: 96)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1713, file: !1714, line: 65, baseType: !243, size: 16, offset: 112)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1696, file: !1340, line: 776, baseType: !13, size: 32, offset: 576)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1696, file: !1340, line: 777, baseType: !154, size: 64, offset: 640)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1696, file: !1340, line: 778, baseType: !1695, size: 64, offset: 704)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1696, file: !1340, line: 787, baseType: !98, size: 32, offset: 768)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1696, file: !1340, line: 788, baseType: !98, size: 32, offset: 800)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1696, file: !1340, line: 790, baseType: !98, size: 32, offset: 832)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1696, file: !1340, line: 792, baseType: !98, size: 32, offset: 864)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1696, file: !1340, line: 793, baseType: !98, size: 32, offset: 896)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1696, file: !1340, line: 794, baseType: !98, size: 32, offset: 928)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1696, file: !1340, line: 795, baseType: !13, size: 32, offset: 960)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1696, file: !1340, line: 797, baseType: !1735, size: 2048, offset: 1024)
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1340, line: 551, size: 2048, elements: !1736)
!1736 = !{!1737, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1757, !1760, !1761, !1762}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1735, file: !1340, line: 553, baseType: !1738, size: 128)
!1738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1340, line: 411, size: 128, elements: !1739)
!1739 = !{!1740, !1741}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1738, file: !1340, line: 412, baseType: !154, size: 64)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1738, file: !1340, line: 413, baseType: !423, size: 32, offset: 64)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1735, file: !1340, line: 554, baseType: !165, size: 192, align: 64, offset: 128)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1735, file: !1340, line: 555, baseType: !427, size: 64, offset: 320)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1735, file: !1340, line: 556, baseType: !427, size: 64, offset: 384)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1735, file: !1340, line: 558, baseType: !177, size: 128, offset: 448)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1735, file: !1340, line: 559, baseType: !13, size: 32, offset: 576)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1735, file: !1340, line: 561, baseType: !427, size: 64, offset: 640)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1735, file: !1340, line: 562, baseType: !427, size: 64, offset: 704)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1735, file: !1340, line: 563, baseType: !427, size: 64, offset: 768)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1735, file: !1340, line: 564, baseType: !427, size: 64, offset: 832)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1735, file: !1340, line: 565, baseType: !648, size: 64, offset: 896)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1735, file: !1340, line: 566, baseType: !427, size: 64, offset: 960)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1735, file: !1340, line: 568, baseType: !427, size: 64, offset: 1024)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1735, file: !1340, line: 571, baseType: !98, size: 32, offset: 1088)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1735, file: !1340, line: 572, baseType: !1756, size: 64, offset: 1152)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1735, file: !1340, line: 574, baseType: !1758, size: 64, offset: 1216)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1340, line: 49, flags: DIFlagFwdDecl)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1735, file: !1340, line: 576, baseType: !1758, size: 64, offset: 1280)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1735, file: !1340, line: 578, baseType: !154, size: 64, offset: 1344)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1735, file: !1340, line: 588, baseType: !1763, size: 512, align: 512, offset: 1536)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1340, line: 497, size: 512, align: 512, elements: !1764)
!1764 = !{!1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1763, file: !1340, line: 498, baseType: !427, size: 64)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1763, file: !1340, line: 499, baseType: !427, size: 64, offset: 64)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1763, file: !1340, line: 500, baseType: !427, size: 64, offset: 128)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1763, file: !1340, line: 501, baseType: !423, size: 32, offset: 192)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1763, file: !1340, line: 502, baseType: !423, size: 32, offset: 224)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1763, file: !1340, line: 503, baseType: !154, size: 64, offset: 256)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1763, file: !1340, line: 504, baseType: !154, size: 64, offset: 320)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1763, file: !1340, line: 505, baseType: !154, size: 64, offset: 384)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1763, file: !1340, line: 506, baseType: !1774, size: 64, align: 64, offset: 448)
!1774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1340, line: 445, size: 64, align: 64, elements: !1775)
!1775 = !{!1776, !1777}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1774, file: !1340, line: 446, baseType: !13, size: 32)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1774, file: !1340, line: 447, baseType: !13, size: 32, offset: 32)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1696, file: !1340, line: 798, baseType: !1779, size: 384, offset: 3072)
!1779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1340, line: 592, size: 384, elements: !1780)
!1780 = !{!1781, !1782, !1783, !1784, !1785, !1786, !1787}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1779, file: !1340, line: 593, baseType: !177, size: 128)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1779, file: !1340, line: 594, baseType: !154, size: 64, offset: 128)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1779, file: !1340, line: 595, baseType: !154, size: 64, offset: 192)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1779, file: !1340, line: 596, baseType: !13, size: 32, offset: 256)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1779, file: !1340, line: 597, baseType: !245, size: 16, offset: 288)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1779, file: !1340, line: 598, baseType: !245, size: 16, offset: 304)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1779, file: !1340, line: 600, baseType: !1788, size: 64, offset: 320)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1696, file: !1340, line: 799, baseType: !1790, size: 1792, offset: 3456)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1340, line: 610, size: 1792, elements: !1791)
!1791 = !{!1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1881, !1882}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1790, file: !1340, line: 611, baseType: !165, size: 192, align: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1790, file: !1340, line: 618, baseType: !427, size: 64, offset: 192)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1790, file: !1340, line: 619, baseType: !427, size: 64, offset: 256)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1790, file: !1340, line: 620, baseType: !427, size: 64, offset: 320)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1790, file: !1340, line: 621, baseType: !427, size: 64, offset: 384)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1790, file: !1340, line: 622, baseType: !427, size: 64, offset: 448)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1790, file: !1340, line: 629, baseType: !648, size: 64, offset: 512)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1790, file: !1340, line: 630, baseType: !427, size: 64, offset: 576)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1790, file: !1340, line: 631, baseType: !13, size: 32, offset: 640)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1790, file: !1340, line: 653, baseType: !13, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1790, file: !1340, line: 654, baseType: !13, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1790, file: !1340, line: 655, baseType: !13, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1790, file: !1340, line: 656, baseType: !13, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1790, file: !1340, line: 662, baseType: !1806, size: 512, offset: 704)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !46, line: 118, size: 512, elements: !1807)
!1807 = !{!1808, !1816, !1817, !1822, !1877, !1878, !1879, !1880}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1806, file: !46, line: 119, baseType: !1809, size: 256)
!1809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1810, line: 9, size: 256, elements: !1811)
!1810 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1811 = !{!1812, !1813}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1809, file: !1810, line: 10, baseType: !165, size: 192, align: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1809, file: !1810, line: 11, baseType: !1814, size: 64, offset: 192)
!1814 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1815, line: 29, baseType: !648)
!1815 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1806, file: !46, line: 120, baseType: !1814, size: 64, offset: 256)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1806, file: !46, line: 121, baseType: !1818, size: 64, offset: 320)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DISubroutineType(types: !1820)
!1820 = !{!45, !1821}
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1806, file: !46, line: 122, baseType: !1823, size: 64, offset: 384)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !46, line: 159, size: 512, align: 512, elements: !1825)
!1825 = !{!1826, !1851, !1852, !1855, !1860, !1861, !1872, !1876}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1824, file: !46, line: 160, baseType: !1827, size: 64)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !46, line: 215, size: 4608, align: 512, elements: !1829)
!1829 = !{!1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1828, file: !46, line: 216, baseType: !651, size: 32)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1828, file: !46, line: 217, baseType: !13, size: 32, offset: 32)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1828, file: !46, line: 218, baseType: !13, size: 32, offset: 64)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1828, file: !46, line: 219, baseType: !13, size: 32, offset: 96)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1828, file: !46, line: 220, baseType: !13, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1828, file: !46, line: 221, baseType: !13, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1828, file: !46, line: 222, baseType: !13, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1828, file: !46, line: 223, baseType: !13, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1828, file: !46, line: 224, baseType: !13, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1828, file: !46, line: 226, baseType: !13, size: 32, offset: 160)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1828, file: !46, line: 227, baseType: !245, size: 16, offset: 192)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1828, file: !46, line: 228, baseType: !245, size: 16, offset: 208)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1828, file: !46, line: 229, baseType: !13, size: 32, offset: 224)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1828, file: !46, line: 235, baseType: !1814, size: 64, offset: 256)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1828, file: !46, line: 236, baseType: !1821, size: 64, offset: 320)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1828, file: !46, line: 237, baseType: !1814, size: 64, offset: 384)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1828, file: !46, line: 238, baseType: !1821, size: 64, offset: 448)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1828, file: !46, line: 239, baseType: !1848, size: 4096, align: 512, offset: 512)
!1848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1824, size: 4096, align: 512, elements: !1849)
!1849 = !{!1850}
!1850 = !DISubrange(count: 8)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1824, file: !46, line: 161, baseType: !13, size: 32, offset: 64)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1824, file: !46, line: 162, baseType: !1853, size: 32, offset: 96)
!1853 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !153, line: 32, baseType: !1854)
!1854 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !309, line: 96, baseType: !98)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1824, file: !46, line: 163, baseType: !1856, size: 32, offset: 128)
!1856 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !396, line: 274, baseType: !1857)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !396, line: 274, size: 32, elements: !1858)
!1858 = !{!1859}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1857, file: !396, line: 274, baseType: !400, size: 32)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1824, file: !46, line: 164, baseType: !1821, size: 64, offset: 192)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1824, file: !46, line: 165, baseType: !1862, size: 128, offset: 256)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1810, line: 14, size: 128, elements: !1863)
!1863 = !{!1864}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1862, file: !1810, line: 15, baseType: !1865, size: 128)
!1865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !166, line: 26, size: 128, elements: !1866)
!1866 = !{!1867, !1871}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1865, file: !166, line: 27, baseType: !1868, size: 64)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !166, line: 12, size: 64, elements: !1869)
!1869 = !{!1870}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1868, file: !166, line: 13, baseType: !170, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1865, file: !166, line: 28, baseType: !170, size: 64, offset: 64)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1824, file: !46, line: 166, baseType: !1873, size: 64, offset: 384)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DISubroutineType(types: !1875)
!1875 = !{!1814}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1824, file: !46, line: 167, baseType: !1814, size: 64, offset: 448)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1806, file: !46, line: 123, baseType: !233, size: 8, offset: 448)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1806, file: !46, line: 124, baseType: !233, size: 8, offset: 456)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1806, file: !46, line: 125, baseType: !233, size: 8, offset: 464)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1806, file: !46, line: 126, baseType: !233, size: 8, offset: 472)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1790, file: !1340, line: 671, baseType: !1806, size: 512, offset: 1216)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1790, file: !1340, line: 679, baseType: !1883, size: 64, offset: 1728)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1696, file: !1340, line: 800, baseType: !1885, size: 64, offset: 5248)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1887)
!1887 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1340, line: 800, flags: DIFlagFwdDecl)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1696, file: !1340, line: 809, baseType: !1889, size: 64, offset: 5312)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1340, line: 70, flags: DIFlagFwdDecl)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1696, file: !1340, line: 825, baseType: !1892, size: 2048, align: 512, offset: 5632)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1340, line: 509, size: 2048, align: 512, elements: !1893)
!1893 = !{!1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1892, file: !1340, line: 511, baseType: !427, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1892, file: !1340, line: 512, baseType: !427, size: 64, offset: 64)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1892, file: !1340, line: 513, baseType: !427, size: 64, offset: 128)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1892, file: !1340, line: 514, baseType: !427, size: 64, offset: 192)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1892, file: !1340, line: 515, baseType: !427, size: 64, offset: 256)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1892, file: !1340, line: 516, baseType: !427, size: 64, offset: 320)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1892, file: !1340, line: 518, baseType: !427, size: 64, offset: 384)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1892, file: !1340, line: 519, baseType: !427, size: 64, offset: 448)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1892, file: !1340, line: 520, baseType: !648, size: 64, offset: 512)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1892, file: !1340, line: 522, baseType: !427, size: 64, offset: 576)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1892, file: !1340, line: 523, baseType: !427, size: 64, offset: 640)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1892, file: !1340, line: 524, baseType: !648, size: 64, offset: 704)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1892, file: !1340, line: 526, baseType: !648, size: 64, offset: 768)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1892, file: !1340, line: 527, baseType: !427, size: 64, offset: 832)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1892, file: !1340, line: 529, baseType: !427, size: 64, offset: 896)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1892, file: !1340, line: 530, baseType: !427, size: 64, offset: 960)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1892, file: !1340, line: 531, baseType: !427, size: 64, offset: 1024)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1892, file: !1340, line: 532, baseType: !427, size: 64, offset: 1088)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1892, file: !1340, line: 533, baseType: !427, size: 64, offset: 1152)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1892, file: !1340, line: 535, baseType: !427, size: 64, offset: 1216)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1892, file: !1340, line: 536, baseType: !427, size: 64, offset: 1280)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1892, file: !1340, line: 537, baseType: !427, size: 64, offset: 1344)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1892, file: !1340, line: 538, baseType: !427, size: 64, offset: 1408)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1892, file: !1340, line: 539, baseType: !427, size: 64, offset: 1472)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1892, file: !1340, line: 540, baseType: !427, size: 64, offset: 1536)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1892, file: !1340, line: 541, baseType: !427, size: 64, offset: 1600)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1892, file: !1340, line: 542, baseType: !427, size: 64, offset: 1664)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1892, file: !1340, line: 543, baseType: !427, size: 64, offset: 1728)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1696, file: !1340, line: 833, baseType: !13, size: 32, offset: 7680)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1696, file: !1340, line: 836, baseType: !13, size: 32, offset: 7712)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1696, file: !1340, line: 837, baseType: !98, size: 32, offset: 7744)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1696, file: !1340, line: 838, baseType: !1926, size: 64, offset: 7808)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1928)
!1928 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1929, line: 19, baseType: !1930)
!1929 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1929, line: 19, size: 64, elements: !1931)
!1931 = !{!1932}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1930, file: !1929, line: 19, baseType: !1933, size: 64)
!1933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 64, elements: !1934)
!1934 = !{!1935}
!1935 = !DISubrange(count: 1)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1696, file: !1340, line: 839, baseType: !1937, size: 64, offset: 7872)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1696, file: !1340, line: 840, baseType: !1928, size: 64, offset: 7936)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1696, file: !1340, line: 841, baseType: !155, size: 64, offset: 8000)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1696, file: !1340, line: 843, baseType: !245, size: 16, offset: 8064)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1696, file: !1340, line: 845, baseType: !245, size: 16, offset: 8080)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1696, file: !1340, line: 848, baseType: !98, size: 32, offset: 8096)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1696, file: !1340, line: 849, baseType: !1944, size: 32, offset: 8128)
!1944 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1340, line: 718, size: 32, elements: !1945)
!1945 = !{!1946, !1953}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1944, file: !1340, line: 724, baseType: !1947, size: 32)
!1947 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1944, file: !1340, line: 719, size: 32, elements: !1948)
!1948 = !{!1949, !1950, !1951, !1952}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1947, file: !1340, line: 720, baseType: !233, size: 8)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1947, file: !1340, line: 721, baseType: !233, size: 8, offset: 8)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1947, file: !1340, line: 722, baseType: !233, size: 8, offset: 16)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1947, file: !1340, line: 723, baseType: !233, size: 8, offset: 24)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1944, file: !1340, line: 725, baseType: !423, size: 32)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1696, file: !1340, line: 850, baseType: !177, size: 128, offset: 8192)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1696, file: !1340, line: 851, baseType: !1956, size: 64, offset: 8320)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1340, line: 60, flags: DIFlagFwdDecl)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1696, file: !1340, line: 855, baseType: !154, size: 64, offset: 8384)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1696, file: !1340, line: 856, baseType: !233, size: 8, offset: 8448)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1696, file: !1340, line: 857, baseType: !233, size: 8, offset: 8456)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1696, file: !1340, line: 858, baseType: !98, size: 32, offset: 8480)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1696, file: !1340, line: 859, baseType: !177, size: 128, offset: 8512)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1696, file: !1340, line: 860, baseType: !98, size: 32, offset: 8640)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1696, file: !1340, line: 861, baseType: !177, size: 128, offset: 8704)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1696, file: !1340, line: 873, baseType: !1966, size: 256, offset: 8832)
!1966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1340, line: 376, size: 256, elements: !1967)
!1967 = !{!1968, !1969, !1970, !1971}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1966, file: !1340, line: 381, baseType: !154, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1966, file: !1340, line: 384, baseType: !429, size: 64, offset: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1966, file: !1340, line: 389, baseType: !429, size: 64, offset: 128)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1966, file: !1340, line: 392, baseType: !429, size: 64, offset: 192)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1696, file: !1340, line: 875, baseType: !177, size: 128, offset: 9088)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1696, file: !1340, line: 877, baseType: !1974, size: 320, offset: 9216)
!1974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1975, line: 86, size: 320, elements: !1976)
!1975 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1976 = !{!1977, !1978, !1979}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1974, file: !1975, line: 87, baseType: !98, size: 32)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1974, file: !1975, line: 88, baseType: !177, size: 128, offset: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1974, file: !1975, line: 89, baseType: !177, size: 128, offset: 192)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1696, file: !1340, line: 878, baseType: !165, size: 192, align: 64, offset: 9536)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1696, file: !1340, line: 881, baseType: !1094, size: 64, offset: 9728)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1696, file: !1340, line: 882, baseType: !1094, size: 64, offset: 9792)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1696, file: !1340, line: 884, baseType: !98, size: 32, offset: 9856)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1696, file: !1340, line: 885, baseType: !98, size: 32, offset: 9888)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1696, file: !1340, line: 886, baseType: !98, size: 32, offset: 9920)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1696, file: !1340, line: 888, baseType: !98, size: 32, offset: 9952)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1696, file: !1340, line: 890, baseType: !154, size: 64, offset: 9984)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1696, file: !1340, line: 893, baseType: !13, size: 32, offset: 10048)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1696, file: !1340, line: 896, baseType: !13, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1696, file: !1340, line: 897, baseType: !13, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1696, file: !1340, line: 898, baseType: !13, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1696, file: !1340, line: 899, baseType: !13, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1696, file: !1340, line: 919, baseType: !13, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1696, file: !1340, line: 922, baseType: !13, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1696, file: !1340, line: 923, baseType: !13, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1696, file: !1340, line: 925, baseType: !13, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1696, file: !1340, line: 939, baseType: !13, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1696, file: !1340, line: 941, baseType: !13, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1696, file: !1340, line: 944, baseType: !13, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1696, file: !1340, line: 956, baseType: !13, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1696, file: !1340, line: 962, baseType: !13, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1696, file: !1340, line: 966, baseType: !13, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1696, file: !1340, line: 969, baseType: !154, size: 64, offset: 10176)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1696, file: !1340, line: 971, baseType: !2005, size: 448, offset: 10240)
!2005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !51, line: 25, size: 448, elements: !2006)
!2006 = !{!2007, !2008, !2013}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2005, file: !51, line: 26, baseType: !154, size: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2005, file: !51, line: 27, baseType: !2009, size: 64, offset: 64)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{!311, !2012}
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2013 = !DIDerivedType(tag: DW_TAG_member, scope: !2005, file: !51, line: 28, baseType: !2014, size: 320, offset: 128)
!2014 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2005, file: !51, line: 28, size: 320, elements: !2015)
!2015 = !{!2016, !2026, !2051}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2014, file: !51, line: 37, baseType: !2017, size: 320)
!2017 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2014, file: !51, line: 30, size: 320, elements: !2018)
!2018 = !{!2019, !2021, !2022, !2023, !2024, !2025}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2017, file: !51, line: 31, baseType: !2020, size: 64)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2017, file: !51, line: 32, baseType: !423, size: 32, offset: 64)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2017, file: !51, line: 33, baseType: !423, size: 32, offset: 96)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2017, file: !51, line: 34, baseType: !423, size: 32, offset: 128)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2017, file: !51, line: 35, baseType: !427, size: 64, offset: 192)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2017, file: !51, line: 36, baseType: !2020, size: 64, offset: 256)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2014, file: !51, line: 47, baseType: !2027, size: 192)
!2027 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2014, file: !51, line: 39, size: 192, elements: !2028)
!2028 = !{!2029, !2030, !2031, !2050}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2027, file: !51, line: 40, baseType: !1853, size: 32)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2027, file: !51, line: 41, baseType: !50, size: 32, offset: 32)
!2031 = !DIDerivedType(tag: DW_TAG_member, scope: !2027, file: !51, line: 42, baseType: !2032, size: 64, offset: 64)
!2032 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2027, file: !51, line: 42, size: 64, elements: !2033)
!2033 = !{!2034, !2042}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2032, file: !51, line: 43, baseType: !2035, size: 64)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2037, line: 7, size: 128, elements: !2038)
!2037 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2038 = !{!2039, !2041}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2036, file: !2037, line: 8, baseType: !2040, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !309, line: 93, baseType: !517)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2036, file: !2037, line: 9, baseType: !517, size: 64, offset: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2032, file: !51, line: 44, baseType: !2043, size: 64)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2045, line: 7, size: 64, elements: !2046)
!2045 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2046 = !{!2047, !2049}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2044, file: !2045, line: 8, baseType: !2048, size: 32)
!2048 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2045, line: 5, baseType: !811)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2044, file: !2045, line: 9, baseType: !811, size: 32, offset: 32)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2027, file: !51, line: 46, baseType: !427, size: 64, offset: 128)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2014, file: !51, line: 55, baseType: !2052, size: 256)
!2052 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2014, file: !51, line: 49, size: 256, elements: !2053)
!2053 = !{!2054, !2057, !2058, !2059, !2060}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2052, file: !51, line: 50, baseType: !2055, size: 64)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !51, line: 14, flags: DIFlagFwdDecl)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2052, file: !51, line: 51, baseType: !98, size: 32, offset: 64)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2052, file: !51, line: 52, baseType: !98, size: 32, offset: 96)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2052, file: !51, line: 53, baseType: !154, size: 64, offset: 128)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2052, file: !51, line: 54, baseType: !154, size: 64, offset: 192)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1696, file: !1340, line: 973, baseType: !2062, size: 32, offset: 10688)
!2062 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !153, line: 27, baseType: !2063)
!2063 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !309, line: 28, baseType: !98)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1696, file: !1340, line: 974, baseType: !2062, size: 32, offset: 10720)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1696, file: !1340, line: 978, baseType: !154, size: 64, offset: 10752)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1696, file: !1340, line: 987, baseType: !1695, size: 64, offset: 10816)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1696, file: !1340, line: 990, baseType: !1695, size: 64, offset: 10880)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1696, file: !1340, line: 995, baseType: !177, size: 128, offset: 10944)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1696, file: !1340, line: 996, baseType: !177, size: 128, offset: 11072)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1696, file: !1340, line: 997, baseType: !1695, size: 64, offset: 11200)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1696, file: !1340, line: 1005, baseType: !177, size: 128, offset: 11264)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1696, file: !1340, line: 1006, baseType: !177, size: 128, offset: 11392)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1696, file: !1340, line: 1009, baseType: !737, size: 64, offset: 11520)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1696, file: !1340, line: 1010, baseType: !2075, size: 512, offset: 11584)
!2075 = !DICompositeType(tag: DW_TAG_array_type, baseType: !549, size: 512, elements: !750)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1696, file: !1340, line: 1011, baseType: !177, size: 128, offset: 12096)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1696, file: !1340, line: 1012, baseType: !177, size: 128, offset: 12224)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1696, file: !1340, line: 1014, baseType: !2079, size: 64, offset: 12352)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !2081, line: 26, size: 256, elements: !2082)
!2081 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!2082 = !{!2083, !2084}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2080, file: !2081, line: 27, baseType: !13, size: 32)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2080, file: !2081, line: 28, baseType: !2085, size: 192, offset: 64)
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !2086, line: 43, size: 192, elements: !2087)
!2086 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!2087 = !{!2088, !2089}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2085, file: !2086, line: 44, baseType: !651, size: 32)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !2085, file: !2086, line: 45, baseType: !177, size: 128, offset: 64)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1696, file: !1340, line: 1017, baseType: !620, size: 64, offset: 12416)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1696, file: !1340, line: 1020, baseType: !620, size: 64, offset: 12480)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1696, file: !1340, line: 1023, baseType: !155, size: 64, offset: 12544)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1696, file: !1340, line: 1025, baseType: !427, size: 64, offset: 12608)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1696, file: !1340, line: 1026, baseType: !427, size: 64, offset: 12672)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1696, file: !1340, line: 1031, baseType: !427, size: 64, offset: 12736)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1696, file: !1340, line: 1032, baseType: !2097, size: 192, offset: 12800)
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1340, line: 324, size: 192, elements: !2098)
!2098 = !{!2099, !2100, !2101}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2097, file: !1340, line: 326, baseType: !427, size: 64)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2097, file: !1340, line: 327, baseType: !427, size: 64, offset: 64)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2097, file: !1340, line: 328, baseType: !651, size: 32, offset: 128)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1696, file: !1340, line: 1041, baseType: !154, size: 64, offset: 12992)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1696, file: !1340, line: 1042, baseType: !154, size: 64, offset: 13056)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1696, file: !1340, line: 1045, baseType: !427, size: 64, offset: 13120)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1696, file: !1340, line: 1048, baseType: !427, size: 64, offset: 13184)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1696, file: !1340, line: 1051, baseType: !154, size: 64, offset: 13248)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1696, file: !1340, line: 1052, baseType: !154, size: 64, offset: 13312)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1696, file: !1340, line: 1055, baseType: !2109, size: 640, offset: 13376)
!2109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2110, line: 132, size: 640, elements: !2111)
!2110 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2111 = !{!2112, !2118, !2119}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2109, file: !2110, line: 133, baseType: !2113, size: 576)
!2113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2114, size: 576, elements: !276)
!2114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2110, line: 117, size: 192, elements: !2115)
!2115 = !{!2116, !2117}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2114, file: !2110, line: 118, baseType: !427, size: 64)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2114, file: !2110, line: 119, baseType: !1862, size: 128, offset: 64)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2109, file: !2110, line: 134, baseType: !13, size: 32, offset: 576)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2109, file: !2110, line: 135, baseType: !13, size: 32, offset: 608)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1696, file: !1340, line: 1058, baseType: !2121, size: 448, offset: 14016)
!2121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2110, line: 144, size: 448, elements: !2122)
!2122 = !{!2123, !2124, !2125}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2121, file: !2110, line: 145, baseType: !696, size: 128, align: 64)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2121, file: !2110, line: 146, baseType: !638, size: 256, offset: 128)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2121, file: !2110, line: 147, baseType: !13, size: 32, offset: 384)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1696, file: !1340, line: 1064, baseType: !776, size: 64, offset: 14464)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1696, file: !1340, line: 1067, baseType: !776, size: 64, offset: 14528)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1696, file: !1340, line: 1070, baseType: !776, size: 64, offset: 14592)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1696, file: !1340, line: 1074, baseType: !803, size: 64, offset: 14656)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1696, file: !1340, line: 1084, baseType: !2131, size: 128, offset: 14720)
!2131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !2132)
!2132 = !{!2133}
!2133 = !DISubrange(count: 16)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1696, file: !1340, line: 1086, baseType: !2135, size: 64, offset: 14848)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1340, line: 55, flags: DIFlagFwdDecl)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1696, file: !1340, line: 1089, baseType: !2138, size: 64, offset: 14912)
!2138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2139, line: 12, size: 64, elements: !2140)
!2139 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2140 = !{!2141}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2138, file: !2139, line: 13, baseType: !2142, size: 64)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2139, line: 8, flags: DIFlagFwdDecl)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1696, file: !1340, line: 1090, baseType: !2145, size: 128, offset: 14976)
!2145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2146, line: 13, size: 128, elements: !2147)
!2146 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2147 = !{!2148}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2145, file: !2146, line: 14, baseType: !177, size: 128)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1696, file: !1340, line: 1097, baseType: !2150, size: 64, offset: 15104)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1340, line: 50, flags: DIFlagFwdDecl)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1696, file: !1340, line: 1100, baseType: !2153, size: 64, offset: 15168)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1340, line: 1100, flags: DIFlagFwdDecl)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1696, file: !1340, line: 1103, baseType: !2156, size: 64, offset: 15232)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1340, line: 53, flags: DIFlagFwdDecl)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1696, file: !1340, line: 1107, baseType: !2159, size: 64, offset: 15296)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1340, line: 56, flags: DIFlagFwdDecl)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1696, file: !1340, line: 1110, baseType: !2162, size: 64, offset: 15360)
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2164, line: 93, size: 8768, elements: !2165)
!2164 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2165 = !{!2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2215, !2224, !2225, !2227, !2228, !2229, !2232, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2270, !2271, !2278, !2288, !2291, !2292, !2295, !2296, !2297, !2298, !2299, !2300}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2163, file: !2164, line: 94, baseType: !741, size: 32)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2163, file: !2164, line: 95, baseType: !225, size: 32, offset: 32)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2163, file: !2164, line: 96, baseType: !98, size: 32, offset: 64)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2163, file: !2164, line: 97, baseType: !98, size: 32, offset: 96)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2163, file: !2164, line: 98, baseType: !177, size: 128, offset: 128)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2163, file: !2164, line: 100, baseType: !754, size: 192, offset: 256)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2163, file: !2164, line: 103, baseType: !1695, size: 64, offset: 448)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2163, file: !2164, line: 106, baseType: !2174, size: 192, offset: 512)
!2174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !966, line: 32, size: 192, elements: !2175)
!2175 = !{!2176, !2177}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2174, file: !966, line: 33, baseType: !177, size: 128)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2174, file: !966, line: 34, baseType: !2178, size: 64, offset: 128)
!2178 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2179, line: 25, baseType: !2180)
!2179 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2180 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2179, line: 23, size: 64, elements: !2181)
!2181 = !{!2182}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2180, file: !2179, line: 24, baseType: !1933, size: 64)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2163, file: !2164, line: 109, baseType: !545, size: 64, offset: 704)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2163, file: !2164, line: 112, baseType: !98, size: 32, offset: 768)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2163, file: !2164, line: 114, baseType: !98, size: 32, offset: 800)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2163, file: !2164, line: 115, baseType: !1695, size: 64, offset: 832)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2163, file: !2164, line: 118, baseType: !98, size: 32, offset: 896)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2163, file: !2164, line: 119, baseType: !13, size: 32, offset: 928)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2163, file: !2164, line: 121, baseType: !2190, size: 64, offset: 960)
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2164, line: 80, size: 448, elements: !2192)
!2192 = !{!2193, !2194, !2200}
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2191, file: !2164, line: 81, baseType: !225, size: 32)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2191, file: !2164, line: 82, baseType: !2195, size: 128, offset: 64)
!2195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2164, line: 75, size: 128, elements: !2196)
!2196 = !{!2197, !2198}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2195, file: !2164, line: 76, baseType: !1695, size: 64)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2195, file: !2164, line: 77, baseType: !2199, size: 64, offset: 64)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2191, file: !2164, line: 83, baseType: !2080, size: 256, offset: 192)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2163, file: !2164, line: 132, baseType: !13, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2163, file: !2164, line: 133, baseType: !13, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2163, file: !2164, line: 138, baseType: !13, size: 32, offset: 1056)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2163, file: !2164, line: 139, baseType: !177, size: 128, offset: 1088)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2163, file: !2164, line: 142, baseType: !1806, size: 512, offset: 1216)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2163, file: !2164, line: 143, baseType: !1814, size: 64, offset: 1728)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2163, file: !2164, line: 150, baseType: !2208, size: 256, offset: 1792)
!2208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2209, size: 256, elements: !2213)
!2209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2164, line: 38, size: 128, elements: !2210)
!2210 = !{!2211, !2212}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2209, file: !2164, line: 39, baseType: !427, size: 64)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2209, file: !2164, line: 40, baseType: !427, size: 64, offset: 64)
!2213 = !{!2214}
!2214 = !DISubrange(count: 2)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2163, file: !2164, line: 156, baseType: !2216, size: 192, offset: 2048)
!2216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2164, line: 66, size: 192, elements: !2217)
!2217 = !{!2218}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2216, file: !2164, line: 67, baseType: !2219, size: 192)
!2219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2164, line: 47, size: 192, elements: !2220)
!2220 = !{!2221, !2222, !2223}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2219, file: !2164, line: 48, baseType: !644, size: 64)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2219, file: !2164, line: 49, baseType: !644, size: 64, offset: 64)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2219, file: !2164, line: 50, baseType: !644, size: 64, offset: 128)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2163, file: !2164, line: 160, baseType: !2109, size: 640, offset: 2240)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2163, file: !2164, line: 163, baseType: !2226, size: 256, offset: 2880)
!2226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !737, size: 256, elements: !750)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2163, file: !2164, line: 169, baseType: !737, size: 64, offset: 3136)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2163, file: !2164, line: 172, baseType: !98, size: 32, offset: 3200)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2163, file: !2164, line: 174, baseType: !2230, size: 64, offset: 3264)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2164, line: 174, flags: DIFlagFwdDecl)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2163, file: !2164, line: 185, baseType: !2233, size: 64, offset: 3328)
!2233 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !396, line: 860, baseType: !2234)
!2234 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !396, line: 853, size: 64, elements: !2235)
!2235 = !{!2236, !2237}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2234, file: !396, line: 858, baseType: !395, size: 32)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2234, file: !396, line: 859, baseType: !205, size: 32, offset: 32)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2163, file: !2164, line: 186, baseType: !427, size: 64, offset: 3392)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2163, file: !2164, line: 186, baseType: !427, size: 64, offset: 3456)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2163, file: !2164, line: 186, baseType: !427, size: 64, offset: 3520)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2163, file: !2164, line: 186, baseType: !427, size: 64, offset: 3584)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2163, file: !2164, line: 187, baseType: !427, size: 64, offset: 3648)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2163, file: !2164, line: 188, baseType: !427, size: 64, offset: 3712)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2163, file: !2164, line: 189, baseType: !2097, size: 192, offset: 3776)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2163, file: !2164, line: 190, baseType: !154, size: 64, offset: 3968)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2163, file: !2164, line: 190, baseType: !154, size: 64, offset: 4032)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2163, file: !2164, line: 190, baseType: !154, size: 64, offset: 4096)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2163, file: !2164, line: 190, baseType: !154, size: 64, offset: 4160)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2163, file: !2164, line: 191, baseType: !154, size: 64, offset: 4224)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2163, file: !2164, line: 191, baseType: !154, size: 64, offset: 4288)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2163, file: !2164, line: 191, baseType: !154, size: 64, offset: 4352)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2163, file: !2164, line: 191, baseType: !154, size: 64, offset: 4416)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2163, file: !2164, line: 192, baseType: !154, size: 64, offset: 4480)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2163, file: !2164, line: 192, baseType: !154, size: 64, offset: 4544)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2163, file: !2164, line: 192, baseType: !154, size: 64, offset: 4608)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2163, file: !2164, line: 192, baseType: !154, size: 64, offset: 4672)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2163, file: !2164, line: 193, baseType: !154, size: 64, offset: 4736)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2163, file: !2164, line: 193, baseType: !154, size: 64, offset: 4800)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2163, file: !2164, line: 194, baseType: !2260, size: 448, offset: 4864)
!2260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2261, line: 12, size: 448, elements: !2262)
!2261 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2262 = !{!2263, !2264, !2265, !2266, !2267, !2268, !2269}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2260, file: !2261, line: 15, baseType: !427, size: 64)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2260, file: !2261, line: 17, baseType: !427, size: 64, offset: 64)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2260, file: !2261, line: 19, baseType: !427, size: 64, offset: 128)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2260, file: !2261, line: 21, baseType: !427, size: 64, offset: 192)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2260, file: !2261, line: 29, baseType: !427, size: 64, offset: 256)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2260, file: !2261, line: 35, baseType: !427, size: 64, offset: 320)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2260, file: !2261, line: 44, baseType: !427, size: 64, offset: 384)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2163, file: !2164, line: 202, baseType: !429, size: 64, offset: 5312)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2163, file: !2164, line: 213, baseType: !2272, size: 2048, offset: 5376)
!2272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2273, size: 2048, elements: !2132)
!2273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2274, line: 43, size: 128, elements: !2275)
!2274 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2275 = !{!2276, !2277}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2273, file: !2274, line: 44, baseType: !324, size: 64)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2273, file: !2274, line: 45, baseType: !324, size: 64, offset: 64)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2163, file: !2164, line: 216, baseType: !2279, size: 448, offset: 7424)
!2279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2164, line: 30, size: 448, elements: !2280)
!2280 = !{!2281, !2282, !2283, !2284, !2285, !2286, !2287}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2279, file: !2164, line: 31, baseType: !98, size: 32)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2279, file: !2164, line: 32, baseType: !311, size: 64, offset: 64)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2279, file: !2164, line: 33, baseType: !154, size: 64, offset: 128)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2279, file: !2164, line: 34, baseType: !427, size: 64, offset: 192)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2279, file: !2164, line: 34, baseType: !427, size: 64, offset: 256)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2279, file: !2164, line: 35, baseType: !154, size: 64, offset: 320)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2279, file: !2164, line: 35, baseType: !154, size: 64, offset: 384)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2163, file: !2164, line: 219, baseType: !2289, size: 64, offset: 7872)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2164, line: 219, flags: DIFlagFwdDecl)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2163, file: !2164, line: 222, baseType: !13, size: 32, offset: 7936)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2163, file: !2164, line: 223, baseType: !2293, size: 64, offset: 8000)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2164, line: 223, flags: DIFlagFwdDecl)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2163, file: !2164, line: 230, baseType: !878, size: 8, offset: 8064)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2163, file: !2164, line: 231, baseType: !847, size: 16, offset: 8080)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2163, file: !2164, line: 232, baseType: !847, size: 16, offset: 8096)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2163, file: !2164, line: 234, baseType: !1094, size: 64, offset: 8128)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2163, file: !2164, line: 237, baseType: !638, size: 256, offset: 8192)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2163, file: !2164, line: 243, baseType: !819, size: 320, offset: 8448)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1696, file: !1340, line: 1111, baseType: !2302, size: 64, offset: 15424)
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2303, size: 64)
!2303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2164, line: 20, size: 16640, elements: !2304)
!2304 = !{!2305, !2306, !2307, !2308}
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2303, file: !2164, line: 21, baseType: !205, size: 32)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2303, file: !2164, line: 22, baseType: !741, size: 32, offset: 32)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2303, file: !2164, line: 23, baseType: !754, size: 192, offset: 64)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2303, file: !2164, line: 24, baseType: !2309, size: 16384, offset: 256)
!2309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2310, size: 16384, elements: !280)
!2310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !966, line: 51, size: 256, elements: !2311)
!2311 = !{!2312}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2310, file: !966, line: 52, baseType: !2313, size: 256)
!2313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !966, line: 37, size: 256, elements: !2314)
!2314 = !{!2315, !2322, !2323, !2329}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2313, file: !966, line: 39, baseType: !2316, size: 64)
!2316 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2317, line: 83, baseType: !2318)
!2317 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2317, line: 82, baseType: !2320)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{null, !98}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2313, file: !966, line: 40, baseType: !154, size: 64, offset: 64)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2313, file: !966, line: 46, baseType: !2324, size: 64, offset: 128)
!2324 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2317, line: 86, baseType: !2325)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2317, line: 85, baseType: !2327)
!2327 = !DISubroutineType(types: !2328)
!2328 = !{null}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2313, file: !966, line: 48, baseType: !2178, size: 64, offset: 192)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1696, file: !1340, line: 1112, baseType: !2178, size: 64, offset: 15488)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1696, file: !1340, line: 1113, baseType: !2178, size: 64, offset: 15552)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1696, file: !1340, line: 1115, baseType: !2178, size: 64, offset: 15616)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1696, file: !1340, line: 1116, baseType: !2174, size: 192, offset: 15680)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1696, file: !1340, line: 1117, baseType: !154, size: 64, offset: 15872)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1696, file: !1340, line: 1118, baseType: !322, size: 64, offset: 15936)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1696, file: !1340, line: 1119, baseType: !13, size: 32, offset: 16000)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1696, file: !1340, line: 1121, baseType: !699, size: 64, offset: 16064)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1696, file: !1340, line: 1125, baseType: !2339, size: 64, offset: 16128)
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2340 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1340, line: 43, flags: DIFlagFwdDecl)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1696, file: !1340, line: 1127, baseType: !360, size: 32, offset: 16192)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1696, file: !1340, line: 1128, baseType: !13, size: 32, offset: 16224)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1696, file: !1340, line: 1130, baseType: !2344, size: 128, offset: 16256)
!2344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2345, line: 37, size: 128, elements: !2346)
!2345 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2346 = !{!2347, !2348, !2349}
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2344, file: !2345, line: 38, baseType: !98, size: 32)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2344, file: !2345, line: 39, baseType: !225, size: 32, offset: 32)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2344, file: !2345, line: 40, baseType: !2350, size: 64, offset: 64)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2345, line: 24, flags: DIFlagFwdDecl)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1696, file: !1340, line: 1131, baseType: !2353, size: 256, offset: 16384)
!2353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2354, line: 12, size: 256, elements: !2355)
!2354 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2355 = !{!2356, !2357, !2358, !2359}
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2353, file: !2354, line: 13, baseType: !275, size: 64)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2353, file: !2354, line: 14, baseType: !154, size: 64, offset: 64)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2353, file: !2354, line: 15, baseType: !154, size: 64, offset: 128)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2353, file: !2354, line: 16, baseType: !878, size: 8, offset: 192)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1696, file: !1340, line: 1134, baseType: !427, size: 64, offset: 16640)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1696, file: !1340, line: 1135, baseType: !427, size: 64, offset: 16704)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1696, file: !1340, line: 1138, baseType: !205, size: 32, offset: 16768)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1696, file: !1340, line: 1141, baseType: !651, size: 32, offset: 16800)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1696, file: !1340, line: 1143, baseType: !2365, size: 64, offset: 16832)
!2365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1340, line: 735, size: 64, elements: !2366)
!2366 = !{!2367}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2365, file: !1340, line: 736, baseType: !2368, size: 64)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1696, file: !1340, line: 1147, baseType: !1865, size: 128, offset: 16896)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1696, file: !1340, line: 1149, baseType: !1695, size: 64, offset: 17024)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1696, file: !1340, line: 1151, baseType: !2372, size: 64, offset: 17088)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1340, line: 1151, flags: DIFlagFwdDecl)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1696, file: !1340, line: 1188, baseType: !155, size: 64, offset: 17152)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1696, file: !1340, line: 1191, baseType: !2376, size: 64, offset: 17216)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1340, line: 44, flags: DIFlagFwdDecl)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1696, file: !1340, line: 1194, baseType: !2379, size: 64, offset: 17280)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1340, line: 45, flags: DIFlagFwdDecl)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1696, file: !1340, line: 1197, baseType: !2382, size: 64, offset: 17344)
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1340, line: 61, flags: DIFlagFwdDecl)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1696, file: !1340, line: 1199, baseType: !2385, size: 64, offset: 17408)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2387, line: 99, size: 128, elements: !2388)
!2387 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2388 = !{!2389, !2390, !2391}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2386, file: !2387, line: 100, baseType: !642, size: 64)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2386, file: !2387, line: 101, baseType: !225, size: 32, offset: 64)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2386, file: !2387, line: 103, baseType: !245, size: 16, offset: 96)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1696, file: !1340, line: 1202, baseType: !2393, size: 64, offset: 17472)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1340, line: 48, flags: DIFlagFwdDecl)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1696, file: !1340, line: 1205, baseType: !154, size: 64, offset: 17536)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1696, file: !1340, line: 1206, baseType: !2397, size: 64, offset: 17600)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !966, line: 14, baseType: !2399)
!2399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !966, line: 12, size: 384, elements: !2400)
!2400 = !{!2401}
!2401 = !DIDerivedType(tag: DW_TAG_member, scope: !2399, file: !966, line: 13, baseType: !2402, size: 384)
!2402 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2399, file: !966, line: 13, size: 384, elements: !2403)
!2403 = !{!2404, !2405, !2406, !2407}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2402, file: !966, line: 13, baseType: !98, size: 32)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2402, file: !966, line: 13, baseType: !98, size: 32, offset: 32)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2402, file: !966, line: 13, baseType: !98, size: 32, offset: 64)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2402, file: !966, line: 13, baseType: !2408, size: 256, offset: 128)
!2408 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2409, line: 37, size: 256, elements: !2410)
!2409 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2410 = !{!2411, !2416, !2429, !2435, !2444, !2471, !2476}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2408, file: !2409, line: 42, baseType: !2412, size: 64)
!2412 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2408, file: !2409, line: 39, size: 64, elements: !2413)
!2413 = !{!2414, !2415}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2412, file: !2409, line: 40, baseType: !2063, size: 32)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2412, file: !2409, line: 41, baseType: !366, size: 32, offset: 32)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2408, file: !2409, line: 50, baseType: !2417, size: 192)
!2417 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2408, file: !2409, line: 45, size: 192, elements: !2418)
!2418 = !{!2419, !2421, !2422, !2428}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2417, file: !2409, line: 46, baseType: !2420, size: 32)
!2420 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !309, line: 95, baseType: !98)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2417, file: !2409, line: 47, baseType: !98, size: 32, offset: 32)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2417, file: !2409, line: 48, baseType: !2423, size: 64, offset: 64)
!2423 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2409, line: 11, baseType: !2424)
!2424 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2409, line: 8, size: 64, elements: !2425)
!2425 = !{!2426, !2427}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2424, file: !2409, line: 9, baseType: !98, size: 32)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2424, file: !2409, line: 10, baseType: !155, size: 64)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2417, file: !2409, line: 49, baseType: !98, size: 32, offset: 128)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2408, file: !2409, line: 57, baseType: !2430, size: 128)
!2430 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2408, file: !2409, line: 53, size: 128, elements: !2431)
!2431 = !{!2432, !2433, !2434}
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2430, file: !2409, line: 54, baseType: !2063, size: 32)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2430, file: !2409, line: 55, baseType: !366, size: 32, offset: 32)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2430, file: !2409, line: 56, baseType: !2423, size: 64, offset: 64)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2408, file: !2409, line: 66, baseType: !2436, size: 256)
!2436 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2408, file: !2409, line: 60, size: 256, elements: !2437)
!2437 = !{!2438, !2439, !2440, !2441, !2443}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2436, file: !2409, line: 61, baseType: !2063, size: 32)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2436, file: !2409, line: 62, baseType: !366, size: 32, offset: 32)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2436, file: !2409, line: 63, baseType: !98, size: 32, offset: 64)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2436, file: !2409, line: 64, baseType: !2442, size: 64, offset: 128)
!2442 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !309, line: 94, baseType: !310)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2436, file: !2409, line: 65, baseType: !2442, size: 64, offset: 192)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2408, file: !2409, line: 105, baseType: !2445, size: 256)
!2445 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2408, file: !2409, line: 69, size: 256, elements: !2446)
!2446 = !{!2447, !2448}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2445, file: !2409, line: 70, baseType: !155, size: 64)
!2448 = !DIDerivedType(tag: DW_TAG_member, scope: !2445, file: !2409, line: 79, baseType: !2449, size: 192, offset: 64)
!2449 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2445, file: !2409, line: 79, size: 192, elements: !2450)
!2450 = !{!2451, !2452, !2453, !2460, !2465}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2449, file: !2409, line: 81, baseType: !98, size: 32)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2449, file: !2409, line: 86, baseType: !847, size: 16)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2449, file: !2409, line: 92, baseType: !2454, size: 192)
!2454 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2449, file: !2409, line: 88, size: 192, elements: !2455)
!2455 = !{!2456, !2458, !2459}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2454, file: !2409, line: 89, baseType: !2457, size: 64)
!2457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !1849)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2454, file: !2409, line: 90, baseType: !155, size: 64, offset: 64)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2454, file: !2409, line: 91, baseType: !155, size: 64, offset: 128)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2449, file: !2409, line: 97, baseType: !2461, size: 96)
!2461 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2449, file: !2409, line: 94, size: 96, elements: !2462)
!2462 = !{!2463, !2464}
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2461, file: !2409, line: 95, baseType: !2457, size: 64)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2461, file: !2409, line: 96, baseType: !424, size: 32, offset: 64)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2449, file: !2409, line: 103, baseType: !2466, size: 128)
!2466 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2449, file: !2409, line: 99, size: 128, elements: !2467)
!2467 = !{!2468, !2469, !2470}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2466, file: !2409, line: 100, baseType: !154, size: 64)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2466, file: !2409, line: 101, baseType: !424, size: 32, offset: 64)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2466, file: !2409, line: 102, baseType: !424, size: 32, offset: 96)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2408, file: !2409, line: 111, baseType: !2472, size: 128)
!2472 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2408, file: !2409, line: 108, size: 128, elements: !2473)
!2473 = !{!2474, !2475}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2472, file: !2409, line: 109, baseType: !311, size: 64)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2472, file: !2409, line: 110, baseType: !98, size: 32, offset: 64)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2408, file: !2409, line: 118, baseType: !2477, size: 128)
!2477 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2408, file: !2409, line: 114, size: 128, elements: !2478)
!2478 = !{!2479, !2480, !2481}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2477, file: !2409, line: 115, baseType: !155, size: 64)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2477, file: !2409, line: 116, baseType: !98, size: 32, offset: 64)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2477, file: !2409, line: 117, baseType: !13, size: 32, offset: 96)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1696, file: !1340, line: 1208, baseType: !2260, size: 448, offset: 17664)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1696, file: !1340, line: 1215, baseType: !427, size: 64, offset: 18112)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1696, file: !1340, line: 1217, baseType: !427, size: 64, offset: 18176)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1696, file: !1340, line: 1219, baseType: !427, size: 64, offset: 18240)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1696, file: !1340, line: 1223, baseType: !2487, size: 64, offset: 18304)
!2487 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2488, line: 99, baseType: !2489)
!2488 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2489 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2488, line: 99, size: 64, elements: !2490)
!2490 = !{!2491}
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2489, file: !2488, line: 99, baseType: !1933, size: 64)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1696, file: !1340, line: 1225, baseType: !395, size: 32, offset: 18368)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1696, file: !1340, line: 1226, baseType: !98, size: 32, offset: 18400)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1696, file: !1340, line: 1227, baseType: !98, size: 32, offset: 18432)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1696, file: !1340, line: 1231, baseType: !2496, size: 64, offset: 18496)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1340, line: 1231, flags: DIFlagFwdDecl)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1696, file: !1340, line: 1233, baseType: !177, size: 128, offset: 18560)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1696, file: !1340, line: 1240, baseType: !2500, size: 64, offset: 18688)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1340, line: 62, flags: DIFlagFwdDecl)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1696, file: !1340, line: 1242, baseType: !2503, size: 64, offset: 18752)
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2504 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1340, line: 1242, flags: DIFlagFwdDecl)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1696, file: !1340, line: 1244, baseType: !177, size: 128, offset: 18816)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1696, file: !1340, line: 1245, baseType: !2507, size: 64, offset: 18944)
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1340, line: 51, flags: DIFlagFwdDecl)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1696, file: !1340, line: 1246, baseType: !638, size: 256, offset: 19008)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1696, file: !1340, line: 1247, baseType: !13, size: 32, offset: 19264)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1696, file: !1340, line: 1250, baseType: !2512, size: 64, offset: 19328)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1340, line: 57, flags: DIFlagFwdDecl)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1696, file: !1340, line: 1251, baseType: !638, size: 256, offset: 19392)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1696, file: !1340, line: 1252, baseType: !177, size: 128, offset: 19648)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1696, file: !1340, line: 1259, baseType: !1299, size: 64, offset: 19776)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1696, file: !1340, line: 1260, baseType: !847, size: 16, offset: 19840)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1696, file: !1340, line: 1261, baseType: !847, size: 16, offset: 19856)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1696, file: !1340, line: 1314, baseType: !2520, size: 64, offset: 19904)
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2522, line: 62, size: 256, align: 256, elements: !2523)
!2522 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2523 = !{!2524, !2525, !2526, !2527, !2528, !2529, !2530}
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2521, file: !2522, line: 75, baseType: !424, size: 32)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2521, file: !2522, line: 90, baseType: !424, size: 32, offset: 32)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2521, file: !2522, line: 112, baseType: !428, size: 64, offset: 64)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2521, file: !2522, line: 132, baseType: !424, size: 32, offset: 128)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2521, file: !2522, line: 140, baseType: !424, size: 32, offset: 160)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2521, file: !2522, line: 149, baseType: !424, size: 32, offset: 192)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2521, file: !2522, line: 154, baseType: !2531, offset: 224)
!2531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !769)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1696, file: !1340, line: 1315, baseType: !423, size: 32, offset: 19968)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1696, file: !1340, line: 1316, baseType: !423, size: 32, offset: 20000)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1696, file: !1340, line: 1321, baseType: !154, size: 64, offset: 20032)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1696, file: !1340, line: 1325, baseType: !98, size: 32, offset: 20096)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1696, file: !1340, line: 1326, baseType: !98, size: 32, offset: 20128)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1696, file: !1340, line: 1327, baseType: !98, size: 32, offset: 20160)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1696, file: !1340, line: 1328, baseType: !98, size: 32, offset: 20192)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1696, file: !1340, line: 1329, baseType: !696, size: 128, align: 64, offset: 20224)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1696, file: !1340, line: 1332, baseType: !2541, size: 128, offset: 20352)
!2541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2542, line: 51, size: 128, elements: !2543)
!2542 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2543 = !{!2544, !2549, !2550}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2541, file: !2542, line: 60, baseType: !2545, size: 64)
!2545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2546, line: 7, size: 64, elements: !2547)
!2546 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2547 = !{!2548}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2545, file: !2546, line: 12, baseType: !1930, size: 64)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2541, file: !2542, line: 63, baseType: !878, size: 8, offset: 64)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2541, file: !2542, line: 70, baseType: !878, size: 8, offset: 72)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1696, file: !1340, line: 1335, baseType: !1338, size: 64, offset: 20480)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1696, file: !1340, line: 1337, baseType: !2553, size: 128, offset: 20544)
!2553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2542, line: 39, size: 128, elements: !2554)
!2554 = !{!2555, !2616, !2617}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2553, file: !2542, line: 40, baseType: !2556, size: 64)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1082, line: 74, size: 512, align: 128, elements: !2558)
!2558 = !{!2559, !2560, !2610, !2615}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2557, file: !1082, line: 75, baseType: !154, size: 64)
!2560 = !DIDerivedType(tag: DW_TAG_member, scope: !2557, file: !1082, line: 83, baseType: !2561, size: 320, offset: 64)
!2561 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2557, file: !1082, line: 83, size: 320, elements: !2562)
!2562 = !{!2563, !2584, !2598, !2602, !2609}
!2563 = !DIDerivedType(tag: DW_TAG_member, scope: !2561, file: !1082, line: 84, baseType: !2564, size: 320)
!2564 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2561, file: !1082, line: 84, size: 320, elements: !2565)
!2565 = !{!2566, !2577, !2578, !2583}
!2566 = !DIDerivedType(tag: DW_TAG_member, scope: !2564, file: !1082, line: 90, baseType: !2567, size: 128)
!2567 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2564, file: !1082, line: 90, size: 128, elements: !2568)
!2568 = !{!2569, !2570, !2575, !2576}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2567, file: !1082, line: 91, baseType: !177, size: 128)
!2570 = !DIDerivedType(tag: DW_TAG_member, scope: !2567, file: !1082, line: 94, baseType: !2571, size: 128)
!2571 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2567, file: !1082, line: 94, size: 128, elements: !2572)
!2572 = !{!2573, !2574}
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2571, file: !1082, line: 96, baseType: !155, size: 64)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2571, file: !1082, line: 98, baseType: !13, size: 32, offset: 64)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2567, file: !1082, line: 102, baseType: !177, size: 128)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2567, file: !1082, line: 103, baseType: !177, size: 128)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2564, file: !1082, line: 106, baseType: !350, size: 64, offset: 128)
!2578 = !DIDerivedType(tag: DW_TAG_member, scope: !2564, file: !1082, line: 107, baseType: !2579, size: 64, offset: 192)
!2579 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2564, file: !1082, line: 107, size: 64, elements: !2580)
!2580 = !{!2581, !2582}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2579, file: !1082, line: 108, baseType: !154, size: 64)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2579, file: !1082, line: 109, baseType: !154, size: 64)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2564, file: !1082, line: 117, baseType: !154, size: 64, offset: 256)
!2584 = !DIDerivedType(tag: DW_TAG_member, scope: !2561, file: !1082, line: 119, baseType: !2585, size: 320)
!2585 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2561, file: !1082, line: 119, size: 320, elements: !2586)
!2586 = !{!2587, !2588, !2591, !2592, !2593}
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2585, file: !1082, line: 124, baseType: !154, size: 64)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2585, file: !1082, line: 125, baseType: !2589, size: 64, offset: 64)
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !1082, line: 125, flags: DIFlagFwdDecl)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2585, file: !1082, line: 126, baseType: !154, size: 64, offset: 128)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2585, file: !1082, line: 127, baseType: !154, size: 64, offset: 192)
!2593 = !DIDerivedType(tag: DW_TAG_member, scope: !2585, file: !1082, line: 128, baseType: !2594, size: 64, offset: 256)
!2594 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2585, file: !1082, line: 128, size: 64, elements: !2595)
!2595 = !{!2596, !2597}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2594, file: !1082, line: 133, baseType: !154, size: 64)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2594, file: !1082, line: 138, baseType: !642, size: 64)
!2598 = !DIDerivedType(tag: DW_TAG_member, scope: !2561, file: !1082, line: 141, baseType: !2599, size: 64)
!2599 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2561, file: !1082, line: 141, size: 64, elements: !2600)
!2600 = !{!2601}
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2599, file: !1082, line: 142, baseType: !154, size: 64)
!2602 = !DIDerivedType(tag: DW_TAG_member, scope: !2561, file: !1082, line: 144, baseType: !2603, size: 128)
!2603 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2561, file: !1082, line: 144, size: 128, elements: !2604)
!2604 = !{!2605, !2608}
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2603, file: !1082, line: 146, baseType: !2606, size: 64)
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2607 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1082, line: 146, flags: DIFlagFwdDecl)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2603, file: !1082, line: 147, baseType: !155, size: 64, offset: 64)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2561, file: !1082, line: 161, baseType: !696, size: 128, align: 64)
!2610 = !DIDerivedType(tag: DW_TAG_member, scope: !2557, file: !1082, line: 164, baseType: !2611, size: 32, offset: 384)
!2611 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2557, file: !1082, line: 164, size: 32, elements: !2612)
!2612 = !{!2613, !2614}
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2611, file: !1082, line: 169, baseType: !225, size: 32)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2611, file: !1082, line: 177, baseType: !13, size: 32)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2557, file: !1082, line: 181, baseType: !225, size: 32, offset: 416)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2553, file: !2542, line: 42, baseType: !424, size: 32, offset: 64)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2553, file: !2542, line: 43, baseType: !424, size: 32, offset: 96)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1696, file: !1340, line: 1340, baseType: !2619, size: 64, offset: 20672)
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1340, line: 69, flags: DIFlagFwdDecl)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1696, file: !1340, line: 1351, baseType: !98, size: 32, offset: 20736)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1696, file: !1340, line: 1352, baseType: !98, size: 32, offset: 20768)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1696, file: !1340, line: 1354, baseType: !154, size: 64, offset: 20800)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1696, file: !1340, line: 1364, baseType: !427, size: 64, offset: 20864)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1696, file: !1340, line: 1365, baseType: !427, size: 64, offset: 20928)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1696, file: !1340, line: 1412, baseType: !154, size: 64, offset: 20992)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1696, file: !1340, line: 1453, baseType: !2628, size: 64, offset: 21056)
!2628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2629, size: 64)
!2629 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1340, line: 1453, flags: DIFlagFwdDecl)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1696, file: !1340, line: 1457, baseType: !2631, size: 64, offset: 21120)
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2632, size: 64)
!2632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !57, line: 61, size: 576, elements: !2633)
!2633 = !{!2634, !2635, !2654, !2657, !2658, !2691, !2701}
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2632, file: !57, line: 62, baseType: !56, size: 32)
!2635 = !DIDerivedType(tag: DW_TAG_member, scope: !2632, file: !57, line: 64, baseType: !2636, size: 192, offset: 64)
!2636 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2632, file: !57, line: 64, size: 192, elements: !2637)
!2637 = !{!2638, !2649}
!2638 = !DIDerivedType(tag: DW_TAG_member, scope: !2636, file: !57, line: 65, baseType: !2639, size: 192)
!2639 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2636, file: !57, line: 65, size: 192, elements: !2640)
!2640 = !{!2641, !2648}
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2639, file: !57, line: 66, baseType: !2642, size: 128)
!2642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2643, line: 50, size: 128, elements: !2644)
!2643 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2644 = !{!2645, !2646, !2647}
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2642, file: !2643, line: 52, baseType: !154, size: 64)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2642, file: !2643, line: 54, baseType: !13, size: 32, offset: 64)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2642, file: !2643, line: 55, baseType: !13, size: 32, offset: 96)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2639, file: !57, line: 67, baseType: !154, size: 64, offset: 128)
!2649 = !DIDerivedType(tag: DW_TAG_member, scope: !2636, file: !57, line: 70, baseType: !2650, size: 192)
!2650 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2636, file: !57, line: 70, size: 192, elements: !2651)
!2651 = !{!2652, !2653}
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2650, file: !57, line: 71, baseType: !696, size: 128, align: 64)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2650, file: !57, line: 72, baseType: !154, size: 64, offset: 128)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2632, file: !57, line: 76, baseType: !2655, size: 64, offset: 256)
!2655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2656, size: 64)
!2656 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !57, line: 76, flags: DIFlagFwdDecl)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2632, file: !57, line: 77, baseType: !154, size: 64, offset: 320)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2632, file: !57, line: 79, baseType: !2659, size: 64, offset: 384)
!2659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2660, size: 64)
!2660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2643, line: 25, size: 256, elements: !2661)
!2661 = !{!2662, !2668, !2672}
!2662 = !DIDerivedType(tag: DW_TAG_member, scope: !2660, file: !2643, line: 26, baseType: !2663, size: 128)
!2663 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2660, file: !2643, line: 26, size: 128, elements: !2664)
!2664 = !{!2665, !2667}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2663, file: !2643, line: 27, baseType: !2666, size: 128)
!2666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 128, elements: !2132)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2663, file: !2643, line: 28, baseType: !2666, size: 128)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2660, file: !2643, line: 31, baseType: !2669, size: 64, offset: 128)
!2669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2670, size: 64)
!2670 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2671)
!2671 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2643, line: 23, flags: DIFlagFwdDecl)
!2672 = !DIDerivedType(tag: DW_TAG_member, scope: !2660, file: !2643, line: 33, baseType: !2673, size: 64, offset: 192)
!2673 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2660, file: !2643, line: 33, size: 64, elements: !2674)
!2674 = !{!2675, !2681, !2686}
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2673, file: !2643, line: 38, baseType: !2676, size: 64)
!2676 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2673, file: !2643, line: 34, size: 64, elements: !2677)
!2677 = !{!2678, !2679, !2680}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2676, file: !2643, line: 35, baseType: !811, size: 32)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2676, file: !2643, line: 36, baseType: !233, size: 8, offset: 32)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2676, file: !2643, line: 37, baseType: !233, size: 8, offset: 40)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2673, file: !2643, line: 42, baseType: !2682, size: 16)
!2682 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2673, file: !2643, line: 39, size: 16, elements: !2683)
!2683 = !{!2684, !2685}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2682, file: !2643, line: 40, baseType: !233, size: 8)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2682, file: !2643, line: 41, baseType: !233, size: 8, offset: 8)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2673, file: !2643, line: 46, baseType: !2687, size: 16)
!2687 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2673, file: !2643, line: 43, size: 16, elements: !2688)
!2688 = !{!2689, !2690}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2687, file: !2643, line: 44, baseType: !233, size: 8)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2687, file: !2643, line: 45, baseType: !233, size: 8, offset: 8)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2632, file: !57, line: 81, baseType: !2692, size: 64, offset: 448)
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !57, line: 85, size: 384, elements: !2694)
!2694 = !{!2695, !2696, !2697, !2698, !2699, !2700}
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2693, file: !57, line: 86, baseType: !2655, size: 64)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2693, file: !57, line: 87, baseType: !154, size: 64, offset: 64)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2693, file: !57, line: 88, baseType: !154, size: 64, offset: 128)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2693, file: !57, line: 89, baseType: !154, size: 64, offset: 192)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2693, file: !57, line: 90, baseType: !878, size: 8, offset: 256)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2693, file: !57, line: 92, baseType: !2692, size: 64, offset: 320)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2632, file: !57, line: 82, baseType: !13, size: 32, offset: 512)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1696, file: !1340, line: 1463, baseType: !2703, offset: 21184)
!2703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1340, line: 739, elements: !557)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1696, file: !1340, line: 1470, baseType: !696, size: 128, align: 64, offset: 21184)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1696, file: !1340, line: 1471, baseType: !741, size: 32, offset: 21312)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1696, file: !1340, line: 1472, baseType: !98, size: 32, offset: 21344)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1696, file: !1340, line: 1474, baseType: !1695, size: 64, offset: 21376)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1696, file: !1340, line: 1475, baseType: !2709, size: 320, offset: 21440)
!2709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2710, line: 11, size: 320, elements: !2711)
!2710 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2711 = !{!2712, !2713, !2714, !2719}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2709, file: !2710, line: 16, baseType: !549, size: 128)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2709, file: !2710, line: 17, baseType: !154, size: 64, offset: 128)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2709, file: !2710, line: 18, baseType: !2715, size: 64, offset: 192)
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = !DISubroutineType(types: !2717)
!2717 = !{null, !2718}
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2709, file: !2710, line: 19, baseType: !423, size: 32, offset: 256)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1696, file: !1340, line: 1478, baseType: !2721, size: 64, offset: 21760)
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2723, line: 49, size: 512, elements: !2724)
!2723 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!2724 = !{!2725, !2726, !2727, !2728, !2729, !2731, !2732, !2733, !2735}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2722, file: !2723, line: 50, baseType: !2721, size: 64)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2722, file: !2723, line: 51, baseType: !155, size: 64, offset: 64)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2722, file: !2723, line: 52, baseType: !154, size: 64, offset: 128)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2722, file: !2723, line: 53, baseType: !154, size: 64, offset: 192)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2722, file: !2723, line: 54, baseType: !2730, size: 64, offset: 256)
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !2722, file: !2723, line: 56, baseType: !13, size: 32, offset: 320)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2722, file: !2723, line: 58, baseType: !13, size: 32, offset: 352)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2722, file: !2723, line: 59, baseType: !2734, size: 64, offset: 384)
!2734 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !153, line: 159, baseType: !427)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2722, file: !2723, line: 60, baseType: !1209, size: 64, offset: 448)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1696, file: !1340, line: 1482, baseType: !741, size: 32, offset: 21824)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1696, file: !1340, line: 1489, baseType: !155, size: 64, offset: 21888)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1696, file: !1340, line: 1504, baseType: !155, size: 64, offset: 21952)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1696, file: !1340, line: 1505, baseType: !428, size: 64, offset: 22016)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1696, file: !1340, line: 1506, baseType: !427, size: 64, offset: 22080)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1696, file: !1340, line: 1507, baseType: !428, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1696, file: !1340, line: 1508, baseType: !428, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1696, file: !1340, line: 1509, baseType: !428, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1696, file: !1340, line: 1510, baseType: !696, size: 128, align: 64, offset: 22208)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1696, file: !1340, line: 1511, baseType: !98, size: 32, offset: 22336)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1696, file: !1340, line: 1515, baseType: !2747, size: 64, offset: 22400)
!2747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !691, line: 56, size: 64, elements: !2748)
!2748 = !{!2749}
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2747, file: !691, line: 57, baseType: !694, size: 64)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1696, file: !1340, line: 1518, baseType: !2747, size: 64, offset: 22464)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1696, file: !1340, line: 1528, baseType: !696, size: 128, align: 64, offset: 22528)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1696, file: !1340, line: 1552, baseType: !2753, size: 35328, offset: 23040)
!2753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2754, line: 430, size: 35328, elements: !2755)
!2754 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2755 = !{!2756, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2785, !2786, !2787, !2788, !2789, !2790, !2793, !2794, !2795, !2796}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2753, file: !2754, line: 432, baseType: !2757, size: 192)
!2757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2758, size: 192, elements: !276)
!2758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2759, line: 16, size: 64, elements: !2760)
!2759 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2760 = !{!2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2758, file: !2759, line: 17, baseType: !243, size: 16)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2758, file: !2759, line: 18, baseType: !243, size: 16, offset: 16)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2758, file: !2759, line: 19, baseType: !243, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2758, file: !2759, line: 19, baseType: !243, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2758, file: !2759, line: 19, baseType: !243, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2758, file: !2759, line: 19, baseType: !243, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2758, file: !2759, line: 19, baseType: !243, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2758, file: !2759, line: 20, baseType: !243, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2758, file: !2759, line: 20, baseType: !243, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2758, file: !2759, line: 20, baseType: !243, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2758, file: !2759, line: 20, baseType: !243, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2758, file: !2759, line: 20, baseType: !243, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2758, file: !2759, line: 20, baseType: !243, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2753, file: !2754, line: 436, baseType: !154, size: 64, offset: 192)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2753, file: !2754, line: 440, baseType: !245, size: 16, offset: 256)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2753, file: !2754, line: 441, baseType: !245, size: 16, offset: 272)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2753, file: !2754, line: 442, baseType: !245, size: 16, offset: 288)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2753, file: !2754, line: 443, baseType: !245, size: 16, offset: 304)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2753, file: !2754, line: 447, baseType: !154, size: 64, offset: 320)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2753, file: !2754, line: 448, baseType: !154, size: 64, offset: 384)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2753, file: !2754, line: 459, baseType: !2782, size: 256, offset: 448)
!2782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2783, size: 256, elements: !750)
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!2784 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2754, line: 428, flags: DIFlagFwdDecl)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2753, file: !2754, line: 461, baseType: !154, size: 64, offset: 704)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2753, file: !2754, line: 463, baseType: !154, size: 64, offset: 768)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2753, file: !2754, line: 465, baseType: !154, size: 64, offset: 832)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2753, file: !2754, line: 466, baseType: !154, size: 64, offset: 896)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2753, file: !2754, line: 467, baseType: !154, size: 64, offset: 960)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2753, file: !2754, line: 473, baseType: !2791, size: 64, offset: 1024)
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2792, size: 64)
!2792 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2754, line: 10, flags: DIFlagFwdDecl)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2753, file: !2754, line: 480, baseType: !154, size: 64, offset: 1088)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2753, file: !2754, line: 482, baseType: !13, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2753, file: !2754, line: 491, baseType: !423, size: 32, offset: 1184)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2753, file: !2754, line: 501, baseType: !2797, size: 33792, offset: 1536)
!2797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2798, line: 448, size: 33792, elements: !2799)
!2798 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2799 = !{!2800, !2801, !2802, !2964, !2965, !2971, !2972}
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2797, file: !2798, line: 461, baseType: !13, size: 32)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2797, file: !2798, line: 468, baseType: !154, size: 64, offset: 64)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2797, file: !2798, line: 476, baseType: !2803, size: 64, offset: 128)
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2798, line: 356, size: 33280, align: 512, elements: !2805)
!2805 = !{!2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2804, file: !2798, line: 358, baseType: !13, size: 32)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2804, file: !2798, line: 361, baseType: !13, size: 32, offset: 32)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2804, file: !2798, line: 364, baseType: !427, size: 64, offset: 64)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2804, file: !2798, line: 367, baseType: !427, size: 64, offset: 128)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2804, file: !2798, line: 370, baseType: !427, size: 64, offset: 192)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2804, file: !2798, line: 373, baseType: !13, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2804, file: !2798, line: 376, baseType: !13, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2804, file: !2798, line: 391, baseType: !13, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2804, file: !2798, line: 394, baseType: !13, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2804, file: !2798, line: 397, baseType: !2816, size: 32768, offset: 512)
!2816 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2798, line: 348, size: 32768, elements: !2817)
!2817 = !{!2818, !2833, !2870, !2947, !2960}
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2816, file: !2798, line: 349, baseType: !2819, size: 896)
!2819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2798, line: 12, size: 896, elements: !2820)
!2820 = !{!2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2832}
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2819, file: !2798, line: 13, baseType: !423, size: 32)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2819, file: !2798, line: 14, baseType: !423, size: 32, offset: 32)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2819, file: !2798, line: 15, baseType: !423, size: 32, offset: 64)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2819, file: !2798, line: 16, baseType: !423, size: 32, offset: 96)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2819, file: !2798, line: 17, baseType: !423, size: 32, offset: 128)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2819, file: !2798, line: 18, baseType: !423, size: 32, offset: 160)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2819, file: !2798, line: 19, baseType: !423, size: 32, offset: 192)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2819, file: !2798, line: 22, baseType: !2829, size: 640, offset: 224)
!2829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !423, size: 640, elements: !2830)
!2830 = !{!2831}
!2831 = !DISubrange(count: 20)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2819, file: !2798, line: 25, baseType: !423, size: 32, offset: 864)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2816, file: !2798, line: 350, baseType: !2834, size: 4096, align: 128)
!2834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2798, line: 34, size: 4096, align: 128, elements: !2835)
!2835 = !{!2836, !2837, !2838, !2839, !2840, !2855, !2856, !2857, !2859, !2861, !2865}
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2834, file: !2798, line: 35, baseType: !243, size: 16)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2834, file: !2798, line: 36, baseType: !243, size: 16, offset: 16)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2834, file: !2798, line: 37, baseType: !243, size: 16, offset: 32)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2834, file: !2798, line: 38, baseType: !243, size: 16, offset: 48)
!2840 = !DIDerivedType(tag: DW_TAG_member, scope: !2834, file: !2798, line: 39, baseType: !2841, size: 128, offset: 64)
!2841 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2834, file: !2798, line: 39, size: 128, elements: !2842)
!2842 = !{!2843, !2848}
!2843 = !DIDerivedType(tag: DW_TAG_member, scope: !2841, file: !2798, line: 40, baseType: !2844, size: 128)
!2844 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2841, file: !2798, line: 40, size: 128, elements: !2845)
!2845 = !{!2846, !2847}
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2844, file: !2798, line: 41, baseType: !427, size: 64)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2844, file: !2798, line: 42, baseType: !427, size: 64, offset: 64)
!2848 = !DIDerivedType(tag: DW_TAG_member, scope: !2841, file: !2798, line: 44, baseType: !2849, size: 128)
!2849 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2841, file: !2798, line: 44, size: 128, elements: !2850)
!2850 = !{!2851, !2852, !2853, !2854}
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2849, file: !2798, line: 45, baseType: !423, size: 32)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2849, file: !2798, line: 46, baseType: !423, size: 32, offset: 32)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2849, file: !2798, line: 47, baseType: !423, size: 32, offset: 64)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2849, file: !2798, line: 48, baseType: !423, size: 32, offset: 96)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2834, file: !2798, line: 51, baseType: !423, size: 32, offset: 192)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2834, file: !2798, line: 52, baseType: !423, size: 32, offset: 224)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2834, file: !2798, line: 55, baseType: !2858, size: 1024, offset: 256)
!2858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !423, size: 1024, elements: !436)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2834, file: !2798, line: 58, baseType: !2860, size: 2048, offset: 1280)
!2860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !423, size: 2048, elements: !280)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2834, file: !2798, line: 60, baseType: !2862, size: 384, offset: 3328)
!2862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !423, size: 384, elements: !2863)
!2863 = !{!2864}
!2864 = !DISubrange(count: 12)
!2865 = !DIDerivedType(tag: DW_TAG_member, scope: !2834, file: !2798, line: 62, baseType: !2866, size: 384, offset: 3712)
!2866 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2834, file: !2798, line: 62, size: 384, elements: !2867)
!2867 = !{!2868, !2869}
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2866, file: !2798, line: 63, baseType: !2862, size: 384)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2866, file: !2798, line: 64, baseType: !2862, size: 384)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2816, file: !2798, line: 351, baseType: !2871, size: 1088)
!2871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2798, line: 79, size: 1088, elements: !2872)
!2872 = !{!2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2946}
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2871, file: !2798, line: 80, baseType: !423, size: 32)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2871, file: !2798, line: 81, baseType: !423, size: 32, offset: 32)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2871, file: !2798, line: 82, baseType: !423, size: 32, offset: 64)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2871, file: !2798, line: 83, baseType: !423, size: 32, offset: 96)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2871, file: !2798, line: 84, baseType: !423, size: 32, offset: 128)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2871, file: !2798, line: 85, baseType: !423, size: 32, offset: 160)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2871, file: !2798, line: 86, baseType: !423, size: 32, offset: 192)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2871, file: !2798, line: 88, baseType: !2829, size: 640, offset: 224)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2871, file: !2798, line: 89, baseType: !233, size: 8, offset: 864)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2871, file: !2798, line: 90, baseType: !233, size: 8, offset: 872)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2871, file: !2798, line: 91, baseType: !233, size: 8, offset: 880)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2871, file: !2798, line: 92, baseType: !233, size: 8, offset: 888)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2871, file: !2798, line: 93, baseType: !233, size: 8, offset: 896)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2871, file: !2798, line: 94, baseType: !233, size: 8, offset: 904)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2871, file: !2798, line: 95, baseType: !2888, size: 64, offset: 960)
!2888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2889, size: 64)
!2889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2890, line: 11, size: 128, elements: !2891)
!2890 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!2891 = !{!2892, !2893}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2889, file: !2890, line: 12, baseType: !311, size: 64)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2889, file: !2890, line: 13, baseType: !2894, size: 64, offset: 64)
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2896, line: 103, size: 1344, elements: !2897)
!2896 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!2897 = !{!2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2926, !2927, !2928}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2895, file: !2896, line: 109, baseType: !154, size: 64)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2895, file: !2896, line: 110, baseType: !154, size: 64, offset: 64)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2895, file: !2896, line: 111, baseType: !154, size: 64, offset: 128)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2895, file: !2896, line: 112, baseType: !154, size: 64, offset: 192)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2895, file: !2896, line: 113, baseType: !154, size: 64, offset: 256)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2895, file: !2896, line: 114, baseType: !154, size: 64, offset: 320)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2895, file: !2896, line: 117, baseType: !154, size: 64, offset: 384)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2895, file: !2896, line: 118, baseType: !154, size: 64, offset: 448)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2895, file: !2896, line: 119, baseType: !154, size: 64, offset: 512)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2895, file: !2896, line: 120, baseType: !154, size: 64, offset: 576)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2895, file: !2896, line: 121, baseType: !154, size: 64, offset: 640)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2895, file: !2896, line: 122, baseType: !154, size: 64, offset: 704)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2895, file: !2896, line: 123, baseType: !154, size: 64, offset: 768)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2895, file: !2896, line: 124, baseType: !154, size: 64, offset: 832)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2895, file: !2896, line: 125, baseType: !154, size: 64, offset: 896)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2895, file: !2896, line: 139, baseType: !154, size: 64, offset: 960)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2895, file: !2896, line: 142, baseType: !154, size: 64, offset: 1024)
!2915 = !DIDerivedType(tag: DW_TAG_member, scope: !2895, file: !2896, line: 144, baseType: !2916, size: 64, offset: 1088)
!2916 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2895, file: !2896, line: 144, size: 64, elements: !2917)
!2917 = !{!2918, !2919, !2920}
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2916, file: !2896, line: 146, baseType: !243, size: 16)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !2916, file: !2896, line: 148, baseType: !427, size: 64)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !2916, file: !2896, line: 150, baseType: !2921, size: 64)
!2921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !2896, line: 59, size: 64, elements: !2922)
!2922 = !{!2923, !2924, !2925}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2921, file: !2896, line: 61, baseType: !427, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !2921, file: !2896, line: 63, baseType: !427, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !2921, file: !2896, line: 65, baseType: !427, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2895, file: !2896, line: 153, baseType: !154, size: 64, offset: 1152)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2895, file: !2896, line: 154, baseType: !154, size: 64, offset: 1216)
!2928 = !DIDerivedType(tag: DW_TAG_member, scope: !2895, file: !2896, line: 156, baseType: !2929, size: 64, offset: 1280)
!2929 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2895, file: !2896, line: 156, size: 64, elements: !2930)
!2930 = !{!2931, !2932, !2933}
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2929, file: !2896, line: 158, baseType: !243, size: 16)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !2929, file: !2896, line: 160, baseType: !427, size: 64)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !2929, file: !2896, line: 162, baseType: !2934, size: 64)
!2934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !2896, line: 69, size: 64, elements: !2935)
!2935 = !{!2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945}
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2934, file: !2896, line: 71, baseType: !427, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !2934, file: !2896, line: 73, baseType: !427, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !2934, file: !2896, line: 75, baseType: !427, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !2934, file: !2896, line: 77, baseType: !427, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !2934, file: !2896, line: 80, baseType: !427, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2934, file: !2896, line: 83, baseType: !427, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !2934, file: !2896, line: 86, baseType: !427, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !2934, file: !2896, line: 88, baseType: !427, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !2934, file: !2896, line: 93, baseType: !427, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !2934, file: !2896, line: 100, baseType: !427, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2871, file: !2798, line: 96, baseType: !423, size: 32, offset: 1024)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2816, file: !2798, line: 352, baseType: !2948, size: 4608, align: 512)
!2948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2798, line: 333, size: 4608, align: 512, elements: !2949)
!2949 = !{!2950, !2951, !2958}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2948, file: !2798, line: 334, baseType: !2834, size: 4096, align: 128)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2948, file: !2798, line: 335, baseType: !2952, size: 512, offset: 4096)
!2952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2798, line: 312, size: 512, elements: !2953)
!2953 = !{!2954, !2955, !2956}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2952, file: !2798, line: 313, baseType: !427, size: 64)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2952, file: !2798, line: 314, baseType: !427, size: 64, offset: 64)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2952, file: !2798, line: 315, baseType: !2957, size: 384, offset: 128)
!2957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !427, size: 384, elements: !865)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2948, file: !2798, line: 336, baseType: !2959, offset: 4608)
!2959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, elements: !769)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2816, file: !2798, line: 353, baseType: !2961, size: 32768)
!2961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 32768, elements: !2962)
!2962 = !{!2963}
!2963 = !DISubrange(count: 4096)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2797, file: !2798, line: 484, baseType: !2803, size: 64, offset: 192)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2797, file: !2798, line: 491, baseType: !2966, size: 128, offset: 256)
!2966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2798, line: 404, size: 128, elements: !2967)
!2967 = !{!2968, !2969, !2970}
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !2966, file: !2798, line: 424, baseType: !427, size: 64)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !2966, file: !2798, line: 432, baseType: !13, size: 32, offset: 64)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !2966, file: !2798, line: 440, baseType: !13, size: 32, offset: 96)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2797, file: !2798, line: 498, baseType: !2966, size: 128, offset: 384)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2797, file: !2798, line: 508, baseType: !2804, size: 33280, align: 512, offset: 512)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1677, file: !1678, line: 16, baseType: !754, size: 192, offset: 512)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1677, file: !1678, line: 17, baseType: !225, size: 32, offset: 704)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !506, file: !27, line: 1240, baseType: !155, size: 64, offset: 6912)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !506, file: !27, line: 1243, baseType: !423, size: 32, offset: 6976)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !506, file: !27, line: 1245, baseType: !835, size: 64, offset: 7040)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !506, file: !27, line: 1246, baseType: !835, size: 64, offset: 7104)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !506, file: !27, line: 1248, baseType: !424, size: 32, offset: 7168)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !506, file: !27, line: 1249, baseType: !2981, size: 64, offset: 7232)
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !27, line: 634, flags: DIFlagFwdDecl)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !506, file: !27, line: 1252, baseType: !2984, size: 256, offset: 7296)
!2984 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !436)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !506, file: !27, line: 1253, baseType: !2986, size: 128, offset: 7552)
!2986 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2987, line: 21, baseType: !2988)
!2987 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!2988 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2987, line: 19, size: 128, elements: !2989)
!2989 = !{!2990}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2988, file: !2987, line: 20, baseType: !2991, size: 128)
!2991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 128, elements: !2132)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !506, file: !27, line: 1255, baseType: !13, size: 32, offset: 7680)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !506, file: !27, line: 1261, baseType: !638, size: 256, offset: 7744)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !506, file: !27, line: 1267, baseType: !194, size: 64, offset: 8000)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !506, file: !27, line: 1269, baseType: !452, size: 64, offset: 8064)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !506, file: !27, line: 1271, baseType: !2997, size: 448, offset: 8128)
!2997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1457, line: 63, size: 448, elements: !2998)
!2998 = !{!2999, !3004, !3005, !3006, !3007, !3008, !3009}
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2997, file: !1457, line: 64, baseType: !3000, size: 64)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = !DISubroutineType(types: !3002)
!3002 = !{!154, !3003, !1455}
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2997, size: 64)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2997, file: !1457, line: 66, baseType: !3000, size: 64, offset: 64)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2997, file: !1457, line: 69, baseType: !311, size: 64, offset: 128)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2997, file: !1457, line: 70, baseType: !98, size: 32, offset: 192)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2997, file: !1457, line: 71, baseType: !13, size: 32, offset: 224)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2997, file: !1457, line: 74, baseType: !177, size: 128, offset: 256)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2997, file: !1457, line: 85, baseType: !3010, size: 64, offset: 384)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !506, file: !27, line: 1274, baseType: !642, size: 64, offset: 8576)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !506, file: !27, line: 1280, baseType: !642, size: 64, offset: 8640)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !506, file: !27, line: 1283, baseType: !98, size: 32, offset: 8704)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !506, file: !27, line: 1286, baseType: !1389, size: 32, offset: 8736)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !506, file: !27, line: 1289, baseType: !3016, size: 64, offset: 8768)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1249, line: 18, flags: DIFlagFwdDecl)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !506, file: !27, line: 1290, baseType: !545, size: 64, offset: 8832)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !506, file: !27, line: 1297, baseType: !961, size: 64, offset: 8896)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !506, file: !27, line: 1304, baseType: !3021, size: 64, offset: 8960)
!3021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3022, line: 49, size: 64, elements: !3023)
!3022 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3023 = !{!3024}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3021, file: !3022, line: 50, baseType: !3025, size: 64)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3022, line: 41, size: 512, align: 512, elements: !3027)
!3027 = !{!3028, !3029, !3034}
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3026, file: !3022, line: 43, baseType: !205, size: 32)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3026, file: !3022, line: 45, baseType: !3030, size: 192, offset: 64)
!3030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3022, line: 29, size: 192, elements: !3031)
!3031 = !{!3032, !3033}
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3030, file: !3022, line: 30, baseType: !177, size: 128)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3030, file: !3022, line: 32, baseType: !311, size: 64, offset: 128)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3026, file: !3022, line: 46, baseType: !311, size: 64, offset: 256)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !506, file: !27, line: 1305, baseType: !3021, size: 64, offset: 9024)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !506, file: !27, line: 1306, baseType: !696, size: 128, align: 64, offset: 9088)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !506, file: !27, line: 1307, baseType: !1248, size: 256, offset: 9216)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !506, file: !27, line: 1309, baseType: !638, size: 256, offset: 9472)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !506, file: !27, line: 1314, baseType: !98, size: 32, offset: 9728)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !506, file: !27, line: 1317, baseType: !205, size: 32, align: 512, offset: 10240)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !506, file: !27, line: 1318, baseType: !177, size: 128, offset: 10304)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !506, file: !27, line: 1320, baseType: !205, size: 32, offset: 10432)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !506, file: !27, line: 1321, baseType: !177, size: 128, offset: 10496)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !500, file: !501, line: 73, baseType: !98, size: 32, offset: 128)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !500, file: !501, line: 74, baseType: !3046, size: 64, offset: 192)
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3047, size: 64)
!3047 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !793, line: 42, flags: DIFlagFwdDecl)
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !454, file: !391, line: 141, baseType: !3050, size: 64, offset: 704)
!3050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3051, size: 64)
!3051 = !DISubroutineType(types: !3052)
!3052 = !{!98, !1517, !878}
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !454, file: !391, line: 142, baseType: !3054, size: 64, offset: 768)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = !DISubroutineType(types: !3056)
!3056 = !{!389, !389, !3057}
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !355)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !390, file: !391, line: 96, baseType: !505, size: 64, offset: 832)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !390, file: !391, line: 97, baseType: !154, size: 64, offset: 896)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !390, file: !391, line: 98, baseType: !155, size: 64, offset: 960)
!3062 = !DIDerivedType(tag: DW_TAG_member, scope: !390, file: !391, line: 100, baseType: !3063, size: 128, offset: 1024)
!3063 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !390, file: !391, line: 100, size: 128, elements: !3064)
!3064 = !{!3065, !3066}
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3063, file: !391, line: 101, baseType: !177, size: 128)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3063, file: !391, line: 102, baseType: !3067, size: 64)
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !390, file: !391, line: 104, baseType: !177, size: 128, offset: 1152)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !390, file: !391, line: 105, baseType: !177, size: 128, offset: 1280)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !390, file: !391, line: 113, baseType: !3071, size: 128, offset: 1408)
!3071 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !390, file: !391, line: 109, size: 128, elements: !3072)
!3072 = !{!3073, !3074, !3075}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3071, file: !391, line: 110, baseType: !549, size: 128)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3071, file: !391, line: 111, baseType: !405, size: 128)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3071, file: !391, line: 112, baseType: !696, size: 128, align: 64)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !383, file: !27, line: 1968, baseType: !3077, size: 64, offset: 64)
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3078 = !DISubroutineType(types: !3079)
!3079 = !{!194, !389, !354, !3080}
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3082, line: 10, size: 128, elements: !3083)
!3082 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3083 = !{!3084, !3088}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3081, file: !3082, line: 11, baseType: !3085, size: 64)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{null, !155}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3081, file: !3082, line: 12, baseType: !155, size: 64, offset: 64)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !383, file: !27, line: 1969, baseType: !3090, size: 64, offset: 128)
!3090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3091, size: 64)
!3091 = !DISubroutineType(types: !3092)
!3092 = !{!98, !3046, !354, !98}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !383, file: !27, line: 1970, baseType: !3094, size: 64, offset: 192)
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3095, size: 64)
!3095 = !DISubroutineType(types: !3096)
!3096 = !{!377, !354, !98, !878}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !383, file: !27, line: 1972, baseType: !3098, size: 64, offset: 256)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{!98, !389, !275, !98}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !383, file: !27, line: 1974, baseType: !3102, size: 64, offset: 320)
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = !DISubroutineType(types: !3104)
!3104 = !{!98, !3046, !354, !389, !317, !878}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !383, file: !27, line: 1976, baseType: !3106, size: 64, offset: 384)
!3106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3107, size: 64)
!3107 = !DISubroutineType(types: !3108)
!3108 = !{!98, !389, !354, !389}
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !383, file: !27, line: 1977, baseType: !3110, size: 64, offset: 448)
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = !DISubroutineType(types: !3112)
!3112 = !{!98, !354, !389}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !383, file: !27, line: 1978, baseType: !3114, size: 64, offset: 512)
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3115 = !DISubroutineType(types: !3116)
!3116 = !{!98, !3046, !354, !389, !194}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !383, file: !27, line: 1980, baseType: !3118, size: 64, offset: 576)
!3118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3119, size: 64)
!3119 = !DISubroutineType(types: !3120)
!3120 = !{!98, !3046, !354, !389, !317}
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !383, file: !27, line: 1982, baseType: !3110, size: 64, offset: 640)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !383, file: !27, line: 1983, baseType: !3123, size: 64, offset: 704)
!3123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3124, size: 64)
!3124 = !DISubroutineType(types: !3125)
!3125 = !{!98, !3046, !354, !389, !317, !510}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !383, file: !27, line: 1985, baseType: !3127, size: 64, offset: 768)
!3127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3128, size: 64)
!3128 = !DISubroutineType(types: !3129)
!3129 = !{!98, !3046, !354, !389, !354, !389, !13}
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !383, file: !27, line: 1987, baseType: !3131, size: 64, offset: 832)
!3131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3132, size: 64)
!3132 = !DISubroutineType(types: !3133)
!3133 = !{!98, !3046, !389, !3134}
!3134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3135, size: 64)
!3135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !27, line: 226, size: 640, elements: !3136)
!3136 = !{!3137, !3138, !3139, !3149, !3158, !3159, !3164, !3165, !3166}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3135, file: !27, line: 227, baseType: !13, size: 32)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3135, file: !27, line: 228, baseType: !317, size: 16, offset: 32)
!3139 = !DIDerivedType(tag: DW_TAG_member, scope: !3135, file: !27, line: 241, baseType: !3140, size: 32, offset: 64)
!3140 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3135, file: !27, line: 241, size: 32, elements: !3141)
!3141 = !{!3142, !3143}
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3140, file: !27, line: 242, baseType: !360, size: 32)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3140, file: !27, line: 243, baseType: !3144, size: 32)
!3144 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3145, line: 16, baseType: !3146)
!3145 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3146 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3145, line: 14, size: 32, elements: !3147)
!3147 = !{!3148}
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3146, file: !3145, line: 15, baseType: !365, size: 32)
!3149 = !DIDerivedType(tag: DW_TAG_member, scope: !3135, file: !27, line: 245, baseType: !3150, size: 32, offset: 96)
!3150 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3135, file: !27, line: 245, size: 32, elements: !3151)
!3151 = !{!3152, !3153}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3150, file: !27, line: 246, baseType: !369, size: 32)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3150, file: !27, line: 247, baseType: !3154, size: 32)
!3154 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3145, line: 20, baseType: !3155)
!3155 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3145, line: 18, size: 32, elements: !3156)
!3156 = !{!3157}
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3155, file: !3145, line: 19, baseType: !373, size: 32)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3135, file: !27, line: 249, baseType: !515, size: 64, offset: 128)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3135, file: !27, line: 250, baseType: !3160, size: 128, offset: 192)
!3160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !836, line: 13, size: 128, elements: !3161)
!3161 = !{!3162, !3163}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3160, file: !836, line: 14, baseType: !835, size: 64)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3160, file: !836, line: 15, baseType: !311, size: 64, offset: 64)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3135, file: !27, line: 251, baseType: !3160, size: 128, offset: 320)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3135, file: !27, line: 252, baseType: !3160, size: 128, offset: 448)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3135, file: !27, line: 259, baseType: !1006, size: 64, offset: 576)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !383, file: !27, line: 1988, baseType: !3168, size: 64, offset: 896)
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3169 = !DISubroutineType(types: !3170)
!3170 = !{!98, !3046, !1517, !3171, !423, !13}
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3173, line: 22, size: 1280, elements: !3174)
!3173 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3174 = !{!3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3186, !3187, !3188, !3189, !3190, !3191, !3192, !3193, !3194, !3195}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3172, file: !3173, line: 23, baseType: !423, size: 32)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3172, file: !3173, line: 24, baseType: !317, size: 16, offset: 32)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3172, file: !3173, line: 25, baseType: !13, size: 32, offset: 64)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3172, file: !3173, line: 26, baseType: !843, size: 32, offset: 96)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3172, file: !3173, line: 27, baseType: !427, size: 64, offset: 128)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3172, file: !3173, line: 28, baseType: !427, size: 64, offset: 192)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3172, file: !3173, line: 41, baseType: !427, size: 64, offset: 256)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3172, file: !3173, line: 42, baseType: !510, size: 32, offset: 320)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3172, file: !3173, line: 43, baseType: !510, size: 32, offset: 352)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3172, file: !3173, line: 44, baseType: !360, size: 32, offset: 384)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3172, file: !3173, line: 45, baseType: !369, size: 32, offset: 416)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3172, file: !3173, line: 46, baseType: !515, size: 64, offset: 448)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3172, file: !3173, line: 47, baseType: !3160, size: 128, offset: 512)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3172, file: !3173, line: 48, baseType: !3160, size: 128, offset: 640)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3172, file: !3173, line: 49, baseType: !3160, size: 128, offset: 768)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3172, file: !3173, line: 50, baseType: !3160, size: 128, offset: 896)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3172, file: !3173, line: 51, baseType: !427, size: 64, offset: 1024)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3172, file: !3173, line: 52, baseType: !427, size: 64, offset: 1088)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3172, file: !3173, line: 53, baseType: !423, size: 32, offset: 1152)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3172, file: !3173, line: 54, baseType: !423, size: 32, offset: 1184)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3172, file: !3173, line: 55, baseType: !427, size: 64, offset: 1216)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !383, file: !27, line: 1990, baseType: !3197, size: 64, offset: 960)
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3198, size: 64)
!3198 = !DISubroutineType(types: !3199)
!3199 = !{!307, !389, !275, !322}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !383, file: !27, line: 1991, baseType: !3201, size: 64, offset: 1024)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = !DISubroutineType(types: !3203)
!3203 = !{!98, !354, !3204, !427, !427}
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !27, line: 55, flags: DIFlagFwdDecl)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !383, file: !27, line: 1993, baseType: !3207, size: 64, offset: 1088)
!3207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3208, size: 64)
!3208 = !DISubroutineType(types: !3209)
!3209 = !{!98, !354, !98}
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !383, file: !27, line: 1994, baseType: !3211, size: 64, offset: 1152)
!3211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3212, size: 64)
!3212 = !DISubroutineType(types: !3213)
!3213 = !{!98, !354, !389, !1006, !13, !317}
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !383, file: !27, line: 1997, baseType: !3215, size: 64, offset: 1216)
!3215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3216, size: 64)
!3216 = !DISubroutineType(types: !3217)
!3217 = !{!98, !3046, !354, !1006, !317}
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !383, file: !27, line: 1999, baseType: !3219, size: 64, offset: 1280)
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = !DISubroutineType(types: !3221)
!3221 = !{!377, !3046, !389, !98}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !383, file: !27, line: 2001, baseType: !3223, size: 64, offset: 1344)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = !DISubroutineType(types: !3225)
!3225 = !{!98, !3046, !389, !377, !98}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !383, file: !27, line: 2003, baseType: !3227, size: 64, offset: 1408)
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64)
!3228 = !DISubroutineType(types: !3229)
!3229 = !{!98, !3046, !389, !3230}
!3230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3231, size: 64)
!3231 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !27, line: 76, flags: DIFlagFwdDecl)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !383, file: !27, line: 2005, baseType: !3233, size: 64, offset: 1472)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DISubroutineType(types: !3235)
!3235 = !{!98, !389, !3230}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !383, file: !27, line: 2006, baseType: !3237, size: 64, offset: 1536)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{!3240, !354}
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !27, line: 3192, size: 192, elements: !3242)
!3242 = !{!3243, !3250}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3241, file: !27, line: 3193, baseType: !3244, size: 128)
!3244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3245, line: 296, size: 128, elements: !3246)
!3245 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3246 = !{!3247, !3248, !3249}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3244, file: !3245, line: 297, baseType: !205, size: 32)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3244, file: !3245, line: 299, baseType: !152, size: 32, offset: 32)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3244, file: !3245, line: 300, baseType: !155, size: 64, offset: 64)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3241, file: !27, line: 3194, baseType: !423, size: 32, offset: 128)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !355, file: !27, line: 655, baseType: !505, size: 64, offset: 448)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !355, file: !27, line: 656, baseType: !350, size: 64, offset: 512)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !355, file: !27, line: 659, baseType: !155, size: 64, offset: 576)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !355, file: !27, line: 663, baseType: !154, size: 64, offset: 640)
!3255 = !DIDerivedType(tag: DW_TAG_member, scope: !355, file: !27, line: 671, baseType: !3256, size: 32, offset: 704)
!3256 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !355, file: !27, line: 671, size: 32, elements: !3257)
!3257 = !{!3258, !3260}
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3256, file: !27, line: 672, baseType: !3259, size: 32)
!3259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3256, file: !27, line: 673, baseType: !13, size: 32)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !355, file: !27, line: 675, baseType: !510, size: 32, offset: 736)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !355, file: !27, line: 676, baseType: !515, size: 64, offset: 768)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !355, file: !27, line: 677, baseType: !3160, size: 128, offset: 832)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !355, file: !27, line: 678, baseType: !3160, size: 128, offset: 960)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !355, file: !27, line: 679, baseType: !3160, size: 128, offset: 1088)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !355, file: !27, line: 680, baseType: !205, size: 32, offset: 1216)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !355, file: !27, line: 681, baseType: !245, size: 16, offset: 1248)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !355, file: !27, line: 682, baseType: !233, size: 8, offset: 1264)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !355, file: !27, line: 683, baseType: !233, size: 8, offset: 1272)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !355, file: !27, line: 684, baseType: !1590, size: 64, offset: 1280)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !355, file: !27, line: 691, baseType: !154, size: 64, offset: 1344)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !355, file: !27, line: 692, baseType: !819, size: 320, offset: 1408)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !355, file: !27, line: 694, baseType: !154, size: 64, offset: 1728)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !355, file: !27, line: 695, baseType: !154, size: 64, offset: 1792)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !355, file: !27, line: 697, baseType: !549, size: 128, offset: 1856)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !355, file: !27, line: 698, baseType: !177, size: 128, offset: 1984)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !355, file: !27, line: 707, baseType: !177, size: 128, offset: 2112)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !355, file: !27, line: 708, baseType: !177, size: 128, offset: 2240)
!3279 = !DIDerivedType(tag: DW_TAG_member, scope: !355, file: !27, line: 709, baseType: !3280, size: 128, offset: 2368)
!3280 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !355, file: !27, line: 709, size: 128, elements: !3281)
!3281 = !{!3282, !3283}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3280, file: !27, line: 710, baseType: !545, size: 64)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3280, file: !27, line: 711, baseType: !696, size: 128, align: 64)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !355, file: !27, line: 713, baseType: !644, size: 64, offset: 2496)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !355, file: !27, line: 714, baseType: !644, size: 64, offset: 2560)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !355, file: !27, line: 715, baseType: !225, size: 32, offset: 2624)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !355, file: !27, line: 716, baseType: !225, size: 32, offset: 2656)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !355, file: !27, line: 717, baseType: !225, size: 32, offset: 2688)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !355, file: !27, line: 719, baseType: !225, size: 32, offset: 2720)
!3290 = !DIDerivedType(tag: DW_TAG_member, scope: !355, file: !27, line: 721, baseType: !3291, size: 64, offset: 2752)
!3291 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !355, file: !27, line: 721, size: 64, elements: !3292)
!3292 = !{!3293, !3294}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3291, file: !27, line: 722, baseType: !997, size: 64)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3291, file: !27, line: 723, baseType: !576, size: 64)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !355, file: !27, line: 725, baseType: !3296, size: 64, offset: 2816)
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3297 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !27, line: 725, flags: DIFlagFwdDecl)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !355, file: !27, line: 726, baseType: !351, size: 1536, align: 64, offset: 2880)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !355, file: !27, line: 727, baseType: !177, size: 128, offset: 4416)
!3300 = !DIDerivedType(tag: DW_TAG_member, scope: !355, file: !27, line: 728, baseType: !3301, size: 64, offset: 4544)
!3301 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !355, file: !27, line: 728, size: 64, elements: !3302)
!3302 = !{!3303, !3304, !3307, !3308}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3301, file: !27, line: 729, baseType: !1338, size: 64)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3301, file: !27, line: 730, baseType: !3305, size: 64)
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !27, line: 730, flags: DIFlagFwdDecl)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3301, file: !27, line: 731, baseType: !275, size: 64)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3301, file: !27, line: 732, baseType: !13, size: 32)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !355, file: !27, line: 735, baseType: !424, size: 32, offset: 4608)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !355, file: !27, line: 738, baseType: !424, size: 32, offset: 4640)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !355, file: !27, line: 739, baseType: !2981, size: 64, offset: 4672)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !355, file: !27, line: 750, baseType: !155, size: 64, offset: 4736)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !351, file: !27, line: 474, baseType: !3244, size: 128, offset: 64)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !351, file: !27, line: 475, baseType: !819, size: 320, offset: 192)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !351, file: !27, line: 476, baseType: !152, size: 32, offset: 512)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !351, file: !27, line: 477, baseType: !225, size: 32, offset: 544)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !351, file: !27, line: 482, baseType: !1865, size: 128, offset: 576)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !351, file: !27, line: 483, baseType: !154, size: 64, offset: 704)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !351, file: !27, line: 484, baseType: !154, size: 64, offset: 768)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !351, file: !27, line: 485, baseType: !3321, size: 64, offset: 832)
!3321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3322, size: 64)
!3322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3323)
!3323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !27, line: 404, size: 1280, elements: !3324)
!3324 = !{!3325, !3329, !3399, !3403, !3407, !3413, !3417, !3421, !3426, !3430, !3434, !3438, !3439, !3443, !3447, !3451, !3456, !3460, !3467, !3468}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3323, file: !27, line: 405, baseType: !3326, size: 64)
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3327 = !DISubroutineType(types: !3328)
!3328 = !{!98, !2556, !588}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3323, file: !27, line: 406, baseType: !3330, size: 64, offset: 64)
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = !DISubroutineType(types: !3332)
!3332 = !{!98, !1006, !3333}
!3333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3334, size: 64)
!3334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !1082, line: 293, size: 1536, elements: !3335)
!3335 = !{!3336, !3366, !3380}
!3336 = !DIDerivedType(tag: DW_TAG_member, scope: !3334, file: !1082, line: 295, baseType: !3337, size: 512)
!3337 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3334, file: !1082, line: 295, size: 512, elements: !3338)
!3338 = !{!3339, !3365}
!3339 = !DIDerivedType(tag: DW_TAG_member, scope: !3337, file: !1082, line: 296, baseType: !3340, size: 448)
!3340 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3337, file: !1082, line: 296, size: 448, elements: !3341)
!3341 = !{!3342, !3343, !3352, !3353, !3354, !3363, !3364}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3340, file: !1082, line: 298, baseType: !154, size: 64)
!3343 = !DIDerivedType(tag: DW_TAG_member, scope: !3340, file: !1082, line: 299, baseType: !3344, size: 128, offset: 64)
!3344 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3340, file: !1082, line: 299, size: 128, elements: !3345)
!3345 = !{!3346, !3347}
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3344, file: !1082, line: 300, baseType: !177, size: 128)
!3347 = !DIDerivedType(tag: DW_TAG_member, scope: !3344, file: !1082, line: 302, baseType: !3348, size: 128)
!3348 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3344, file: !1082, line: 302, size: 128, elements: !3349)
!3349 = !{!3350, !3351}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3348, file: !1082, line: 303, baseType: !155, size: 64)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3348, file: !1082, line: 305, baseType: !13, size: 32, offset: 64)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3340, file: !1082, line: 310, baseType: !350, size: 64, offset: 192)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3340, file: !1082, line: 311, baseType: !154, size: 64, offset: 256)
!3354 = !DIDerivedType(tag: DW_TAG_member, scope: !3340, file: !1082, line: 312, baseType: !3355, size: 64, offset: 320)
!3355 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3340, file: !1082, line: 312, size: 64, elements: !3356)
!3356 = !{!3357, !3358}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3355, file: !1082, line: 313, baseType: !155, size: 64)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3355, file: !1082, line: 314, baseType: !3359, size: 64)
!3359 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !1082, line: 257, baseType: !3360)
!3360 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1082, line: 255, size: 64, elements: !3361)
!3361 = !{!3362}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3360, file: !1082, line: 256, baseType: !154, size: 64)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3340, file: !1082, line: 316, baseType: !225, size: 32, offset: 384)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3340, file: !1082, line: 317, baseType: !225, size: 32, offset: 416)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3337, file: !1082, line: 323, baseType: !2557, size: 512, align: 128)
!3366 = !DIDerivedType(tag: DW_TAG_member, scope: !3334, file: !1082, line: 325, baseType: !3367, size: 512, offset: 512)
!3367 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3334, file: !1082, line: 325, size: 512, elements: !3368)
!3368 = !{!3369, !3379}
!3369 = !DIDerivedType(tag: DW_TAG_member, scope: !3367, file: !1082, line: 326, baseType: !3370, size: 320)
!3370 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3367, file: !1082, line: 326, size: 320, elements: !3371)
!3371 = !{!3372, !3373, !3374, !3375, !3376, !3377, !3378}
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3370, file: !1082, line: 327, baseType: !154, size: 64)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3370, file: !1082, line: 328, baseType: !154, size: 64, offset: 64)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3370, file: !1082, line: 329, baseType: !154, size: 64, offset: 128)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3370, file: !1082, line: 331, baseType: !225, size: 32, offset: 192)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3370, file: !1082, line: 332, baseType: !225, size: 32, offset: 224)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3370, file: !1082, line: 333, baseType: !225, size: 32, offset: 256)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3370, file: !1082, line: 335, baseType: !13, size: 32, offset: 288)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3367, file: !1082, line: 339, baseType: !2557, size: 512, align: 128)
!3380 = !DIDerivedType(tag: DW_TAG_member, scope: !3334, file: !1082, line: 341, baseType: !3381, size: 512, offset: 1024)
!3381 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3334, file: !1082, line: 341, size: 512, elements: !3382)
!3382 = !{!3383, !3392, !3398}
!3383 = !DIDerivedType(tag: DW_TAG_member, scope: !3381, file: !1082, line: 342, baseType: !3384, size: 384)
!3384 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3381, file: !1082, line: 342, size: 384, elements: !3385)
!3385 = !{!3386, !3387, !3388, !3389, !3390, !3391}
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3384, file: !1082, line: 343, baseType: !154, size: 64)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3384, file: !1082, line: 344, baseType: !154, size: 64, offset: 64)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3384, file: !1082, line: 346, baseType: !155, size: 64, offset: 128)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3384, file: !1082, line: 347, baseType: !155, size: 64, offset: 192)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3384, file: !1082, line: 348, baseType: !155, size: 64, offset: 256)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3384, file: !1082, line: 349, baseType: !155, size: 64, offset: 320)
!3392 = !DIDerivedType(tag: DW_TAG_member, scope: !3381, file: !1082, line: 352, baseType: !3393, size: 256)
!3393 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3381, file: !1082, line: 352, size: 256, elements: !3394)
!3394 = !{!3395, !3396, !3397}
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3393, file: !1082, line: 353, baseType: !154, size: 64)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3393, file: !1082, line: 354, baseType: !154, size: 64, offset: 64)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3393, file: !1082, line: 356, baseType: !177, size: 128, offset: 128)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3381, file: !1082, line: 359, baseType: !2557, size: 512, align: 128)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3323, file: !27, line: 409, baseType: !3400, size: 64, offset: 128)
!3400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3401, size: 64)
!3401 = !DISubroutineType(types: !3402)
!3402 = !{!98, !350, !588}
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3323, file: !27, line: 412, baseType: !3404, size: 64, offset: 192)
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3405 = !DISubroutineType(types: !3406)
!3406 = !{!878, !350, !3333}
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3323, file: !27, line: 414, baseType: !3408, size: 64, offset: 256)
!3408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3409, size: 64)
!3409 = !DISubroutineType(types: !3410)
!3410 = !{null, !3411}
!3411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3412, size: 64)
!3412 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !27, line: 310, flags: DIFlagFwdDecl)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3323, file: !27, line: 416, baseType: !3414, size: 64, offset: 320)
!3414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3415, size: 64)
!3415 = !DISubroutineType(types: !3416)
!3416 = !{!98, !1006, !350, !515, !13, !2730, !1354}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3323, file: !27, line: 419, baseType: !3418, size: 64, offset: 384)
!3418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3419, size: 64)
!3419 = !DISubroutineType(types: !3420)
!3420 = !{!98, !1006, !350, !515, !13, !13, !2556, !155}
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3323, file: !27, line: 424, baseType: !3422, size: 64, offset: 448)
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3423, size: 64)
!3423 = !DISubroutineType(types: !3424)
!3424 = !{!3425, !350, !3425}
!3425 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !153, line: 131, baseType: !427)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3323, file: !27, line: 425, baseType: !3427, size: 64, offset: 512)
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3428, size: 64)
!3428 = !DISubroutineType(types: !3429)
!3429 = !{null, !3333, !322, !322}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3323, file: !27, line: 426, baseType: !3431, size: 64, offset: 576)
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3432 = !DISubroutineType(types: !3433)
!3433 = !{!878, !3333, !152}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3323, file: !27, line: 427, baseType: !3435, size: 64, offset: 640)
!3435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3436, size: 64)
!3436 = !DISubroutineType(types: !3437)
!3437 = !{null, !3333}
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3323, file: !27, line: 428, baseType: !1016, size: 64, offset: 704)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3323, file: !27, line: 433, baseType: !3440, size: 64, offset: 768)
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = !DISubroutineType(types: !3442)
!3442 = !{!98, !350, !3333, !3333, !63}
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3323, file: !27, line: 435, baseType: !3444, size: 64, offset: 832)
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = !DISubroutineType(types: !3446)
!3446 = !{!98, !3333}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3323, file: !27, line: 436, baseType: !3448, size: 64, offset: 896)
!3448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3449 = !DISubroutineType(types: !3450)
!3450 = !{!878, !3333, !322, !322}
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3323, file: !27, line: 438, baseType: !3452, size: 64, offset: 960)
!3452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3453, size: 64)
!3453 = !DISubroutineType(types: !3454)
!3454 = !{null, !3333, !3455, !3455}
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3323, file: !27, line: 439, baseType: !3457, size: 64, offset: 1024)
!3457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3458, size: 64)
!3458 = !DISubroutineType(types: !3459)
!3459 = !{!98, !350, !2556}
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3323, file: !27, line: 442, baseType: !3461, size: 64, offset: 1088)
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3462, size: 64)
!3462 = !DISubroutineType(types: !3463)
!3463 = !{!98, !3464, !1006, !3466}
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3465, size: 64)
!3465 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !27, line: 66, flags: DIFlagFwdDecl)
!3466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3425, size: 64)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3323, file: !27, line: 444, baseType: !1346, size: 64, offset: 1152)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3323, file: !27, line: 445, baseType: !3469, size: 64, offset: 1216)
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3470, size: 64)
!3470 = !DISubroutineType(types: !3471)
!3471 = !{!98, !1019, !1041}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !351, file: !27, line: 486, baseType: !154, size: 64, offset: 896)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !351, file: !27, line: 487, baseType: !819, size: 320, offset: 960)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !351, file: !27, line: 488, baseType: !1389, size: 32, offset: 1280)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !351, file: !27, line: 489, baseType: !205, size: 32, offset: 1312)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !351, file: !27, line: 490, baseType: !177, size: 128, offset: 1344)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !351, file: !27, line: 491, baseType: !155, size: 64, offset: 1472)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !341, file: !301, line: 180, baseType: !3479, size: 64, offset: 320)
!3479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3480, size: 64)
!3480 = !DISubroutineType(types: !3481)
!3481 = !{!307, !1006, !198, !340, !275, !515, !322}
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !341, file: !301, line: 182, baseType: !3479, size: 64, offset: 384)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !341, file: !301, line: 184, baseType: !3484, size: 64, offset: 448)
!3484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3485, size: 64)
!3485 = !DISubroutineType(types: !3486)
!3486 = !{!98, !1006, !198, !340, !1080}
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !329, file: !301, line: 90, baseType: !3488, size: 64, offset: 192)
!3488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !329, file: !301, line: 91, baseType: !3490, size: 64, offset: 256)
!3490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !291, file: !191, line: 120, baseType: !3492, size: 64, offset: 192)
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3493 = !DISubroutineType(types: !3494)
!3494 = !{!3495, !258}
!3495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3496, size: 64)
!3496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3497)
!3497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !71, line: 39, size: 384, elements: !3498)
!3498 = !{!3499, !3500, !3504, !3508, !3514, !3518}
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3497, file: !71, line: 40, baseType: !70, size: 32)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3497, file: !71, line: 41, baseType: !3501, size: 64, offset: 64)
!3501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3502, size: 64)
!3502 = !DISubroutineType(types: !3503)
!3503 = !{!878}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3497, file: !71, line: 42, baseType: !3505, size: 64, offset: 128)
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3506, size: 64)
!3506 = !DISubroutineType(types: !3507)
!3507 = !{!155}
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3497, file: !71, line: 43, baseType: !3509, size: 64, offset: 192)
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3510 = !DISubroutineType(types: !3511)
!3511 = !{!1209, !3512}
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !71, line: 19, flags: DIFlagFwdDecl)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3497, file: !71, line: 44, baseType: !3515, size: 64, offset: 256)
!3515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3516, size: 64)
!3516 = !DISubroutineType(types: !3517)
!3517 = !{!1209}
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3497, file: !71, line: 45, baseType: !3085, size: 64, offset: 320)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !291, file: !191, line: 121, baseType: !3520, size: 64, offset: 256)
!3520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3521, size: 64)
!3521 = !DISubroutineType(types: !3522)
!3522 = !{!1209, !258}
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !291, file: !191, line: 122, baseType: !3524, size: 64, offset: 320)
!3524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3525, size: 64)
!3525 = !DISubroutineType(types: !3526)
!3526 = !{null, !258, !3527, !3528}
!3527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!3528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !190, file: !191, line: 70, baseType: !3530, size: 64, offset: 384)
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3531, size: 64)
!3531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !3532, line: 190, size: 1152, elements: !3533)
!3532 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!3533 = !{!3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3613, !3614, !3615, !3616, !3617, !3620}
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3531, file: !3532, line: 191, baseType: !225, size: 32)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3531, file: !3532, line: 192, baseType: !225, size: 32, offset: 32)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3531, file: !3532, line: 202, baseType: !3530, size: 64, offset: 64)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3531, file: !3532, line: 203, baseType: !194, size: 64, offset: 128)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3531, file: !3532, line: 205, baseType: !165, size: 192, align: 64, offset: 192)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3531, file: !3532, line: 207, baseType: !1209, size: 64, offset: 384)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3531, file: !3532, line: 208, baseType: !13, size: 32, offset: 448)
!3541 = !DIDerivedType(tag: DW_TAG_member, scope: !3531, file: !3532, line: 209, baseType: !3542, size: 256, offset: 512)
!3542 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3531, file: !3532, line: 209, size: 256, elements: !3543)
!3543 = !{!3544, !3553, !3557}
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3542, file: !3532, line: 210, baseType: !3545, size: 256)
!3545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !3532, line: 153, size: 256, elements: !3546)
!3546 = !{!3547, !3548, !3549, !3552}
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3545, file: !3532, line: 154, baseType: !154, size: 64)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3545, file: !3532, line: 156, baseType: !1868, size: 64, offset: 64)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3545, file: !3532, line: 162, baseType: !3550, size: 64, offset: 128)
!3550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3551, size: 64)
!3551 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !3532, line: 162, flags: DIFlagFwdDecl)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3545, file: !3532, line: 167, baseType: !154, size: 64, offset: 192)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3542, file: !3532, line: 211, baseType: !3554, size: 64)
!3554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !3532, line: 170, size: 64, elements: !3555)
!3555 = !{!3556}
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3554, file: !3532, line: 171, baseType: !3530, size: 64)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3542, file: !3532, line: 212, baseType: !3558, size: 256)
!3558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !3532, line: 174, size: 256, elements: !3559)
!3559 = !{!3560, !3608, !3611, !3612}
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3558, file: !3532, line: 175, baseType: !3561, size: 64)
!3561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3562, size: 64)
!3562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3563)
!3563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !3532, line: 271, size: 768, elements: !3564)
!3564 = !{!3565, !3585, !3589, !3590, !3591, !3592, !3593, !3597, !3598, !3599, !3600, !3604}
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3563, file: !3532, line: 276, baseType: !3566, size: 64)
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 64)
!3567 = !DISubroutineType(types: !3568)
!3568 = !{!98, !3569}
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3570, size: 64)
!3570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !3532, line: 251, size: 1216, elements: !3571)
!3571 = !{!3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584}
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3570, file: !3532, line: 253, baseType: !3530, size: 64)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3570, file: !3532, line: 254, baseType: !1006, size: 64, offset: 64)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3570, file: !3532, line: 255, baseType: !626, size: 64, offset: 128)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3570, file: !3532, line: 256, baseType: !155, size: 64, offset: 192)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3570, file: !3532, line: 259, baseType: !638, size: 256, offset: 256)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3570, file: !3532, line: 260, baseType: !638, size: 256, offset: 512)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3570, file: !3532, line: 261, baseType: !98, size: 32, offset: 768)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3570, file: !3532, line: 262, baseType: !177, size: 128, offset: 832)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3570, file: !3532, line: 263, baseType: !275, size: 64, offset: 960)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3570, file: !3532, line: 265, baseType: !322, size: 64, offset: 1024)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3570, file: !3532, line: 266, baseType: !878, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3570, file: !3532, line: 267, baseType: !878, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3570, file: !3532, line: 268, baseType: !1291, size: 64, offset: 1152)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3563, file: !3532, line: 277, baseType: !3586, size: 64, offset: 64)
!3586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3587, size: 64)
!3587 = !DISubroutineType(types: !3588)
!3588 = !{null, !3569}
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3563, file: !3532, line: 290, baseType: !677, size: 64, offset: 128)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3563, file: !3532, line: 292, baseType: !664, size: 64, offset: 192)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3563, file: !3532, line: 293, baseType: !673, size: 64, offset: 256)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3563, file: !3532, line: 294, baseType: !669, size: 64, offset: 320)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3563, file: !3532, line: 296, baseType: !3594, size: 64, offset: 384)
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3595, size: 64)
!3595 = !DISubroutineType(types: !3596)
!3596 = !{!307, !3569, !275, !322, !515}
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3563, file: !3532, line: 306, baseType: !322, size: 64, offset: 448)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3563, file: !3532, line: 313, baseType: !878, size: 8, offset: 512)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3563, file: !3532, line: 314, baseType: !3594, size: 64, offset: 576)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3563, file: !3532, line: 317, baseType: !3601, size: 64, offset: 640)
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3602, size: 64)
!3602 = !DISubroutineType(types: !3603)
!3603 = !{!1067, !3569, !1069}
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3563, file: !3532, line: 320, baseType: !3605, size: 64, offset: 704)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = !DISubroutineType(types: !3607)
!3607 = !{!98, !3569, !1080}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3558, file: !3532, line: 176, baseType: !3609, size: 64, offset: 64)
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3610, size: 64)
!3610 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !3532, line: 35, flags: DIFlagFwdDecl)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3558, file: !3532, line: 177, baseType: !515, size: 64, offset: 128)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3558, file: !3532, line: 178, baseType: !3530, size: 64, offset: 192)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3531, file: !3532, line: 215, baseType: !155, size: 64, offset: 768)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3531, file: !3532, line: 221, baseType: !427, size: 64, offset: 832)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3531, file: !3532, line: 223, baseType: !245, size: 16, offset: 896)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3531, file: !3532, line: 224, baseType: !317, size: 16, offset: 912)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3531, file: !3532, line: 225, baseType: !3618, size: 64, offset: 960)
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3619 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !3532, line: 36, flags: DIFlagFwdDecl)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3531, file: !3532, line: 227, baseType: !696, size: 128, align: 64, offset: 1024)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !190, file: !191, line: 71, baseType: !3622, size: 32, offset: 448)
!3622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3623, line: 19, size: 32, elements: !3624)
!3623 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!3624 = !{!3625}
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3622, file: !3623, line: 20, baseType: !741, size: 32)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !190, file: !191, line: 73, baseType: !13, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !190, file: !191, line: 74, baseType: !13, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !190, file: !191, line: 75, baseType: !13, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !190, file: !191, line: 76, baseType: !13, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !190, file: !191, line: 77, baseType: !13, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !187, file: !20, line: 47, baseType: !172, size: 64, offset: 512)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !187, file: !20, line: 48, baseType: !198, size: 64, offset: 576)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !187, file: !20, line: 49, baseType: !3634, size: 64, offset: 640)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !20, line: 49, flags: DIFlagFwdDecl)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !187, file: !20, line: 50, baseType: !2079, size: 64, offset: 704)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !173, file: !20, line: 418, baseType: !3638, size: 64, offset: 1408)
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !20, line: 53, size: 448, elements: !3640)
!3640 = !{!3641, !3642, !3647, !3651, !3655, !3659}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3639, file: !20, line: 54, baseType: !313, size: 128)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3639, file: !20, line: 55, baseType: !3643, size: 64, offset: 128)
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3644, size: 64)
!3644 = !DISubroutineType(types: !3645)
!3645 = !{!307, !3638, !3646, !275}
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3639, file: !20, line: 57, baseType: !3648, size: 64, offset: 192)
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3649 = !DISubroutineType(types: !3650)
!3650 = !{!307, !3638, !3646, !194, !322}
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !3639, file: !20, line: 59, baseType: !3652, size: 64, offset: 256)
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3653, size: 64)
!3653 = !DISubroutineType(types: !3654)
!3654 = !{null, !172, !194}
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !3639, file: !20, line: 60, baseType: !3656, size: 64, offset: 320)
!3656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3657, size: 64)
!3657 = !DISubroutineType(types: !3658)
!3658 = !{!98, !172}
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3639, file: !20, line: 61, baseType: !3660, size: 64, offset: 384)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = !DISubroutineType(types: !3662)
!3662 = !{null, !172}
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !173, file: !20, line: 419, baseType: !194, size: 64, offset: 1472)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !173, file: !20, line: 420, baseType: !194, size: 64, offset: 1536)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !173, file: !20, line: 421, baseType: !198, size: 64, offset: 1600)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !173, file: !20, line: 424, baseType: !3667, size: 64, offset: 1664)
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3669)
!3669 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !20, line: 424, flags: DIFlagFwdDecl)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !173, file: !20, line: 425, baseType: !3671, size: 64, offset: 1728)
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3672, size: 64)
!3672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !811)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !173, file: !20, line: 426, baseType: !13, size: 32, offset: 1792)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !173, file: !20, line: 435, baseType: !638, size: 256, offset: 1856)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !173, file: !20, line: 437, baseType: !3676, size: 64, offset: 2112)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !3678, line: 69, size: 320, elements: !3679)
!3678 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!3679 = !{!3680, !3681, !3682, !3699, !3701, !3705, !3706}
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3677, file: !3678, line: 70, baseType: !194, size: 64)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3677, file: !3678, line: 71, baseType: !172, size: 64, offset: 64)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3677, file: !3678, line: 72, baseType: !3683, size: 64, offset: 128)
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3685)
!3685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !3678, line: 47, size: 256, elements: !3686)
!3686 = !{!3687, !3688, !3694, !3698}
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3685, file: !3678, line: 49, baseType: !13, size: 32)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3685, file: !3678, line: 51, baseType: !3689, size: 64, offset: 64)
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = !DISubroutineType(types: !3691)
!3691 = !{!98, !194, !3692}
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3677)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3685, file: !3678, line: 53, baseType: !3695, size: 64, offset: 128)
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = !DISubroutineType(types: !3697)
!3697 = !{!98, !275, !3692}
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3685, file: !3678, line: 55, baseType: !3085, size: 64, offset: 192)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3677, file: !3678, line: 73, baseType: !3700, size: 16, offset: 192)
!3700 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !243)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3677, file: !3678, line: 74, baseType: !3702, size: 8, offset: 208)
!3702 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !234, line: 16, baseType: !3703)
!3703 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !236, line: 20, baseType: !3704)
!3704 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3677, file: !3678, line: 75, baseType: !233, size: 8, offset: 216)
!3706 = !DIDerivedType(tag: DW_TAG_member, scope: !3677, file: !3678, line: 76, baseType: !3707, size: 64, offset: 256)
!3707 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3677, file: !3678, line: 76, size: 64, elements: !3708)
!3708 = !{!3709, !3710, !3717}
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3707, file: !3678, line: 77, baseType: !155, size: 64)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3707, file: !3678, line: 78, baseType: !3711, size: 64)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3713)
!3713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !3678, line: 86, size: 128, elements: !3714)
!3714 = !{!3715, !3716}
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !3713, file: !3678, line: 87, baseType: !13, size: 32)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3713, file: !3678, line: 88, baseType: !275, size: 64, offset: 64)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !3707, file: !3678, line: 79, baseType: !3718, size: 64)
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3720)
!3720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !3678, line: 92, size: 256, elements: !3721)
!3721 = !{!3722, !3723, !3724, !3725, !3726}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3720, file: !3678, line: 94, baseType: !13, size: 32)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !3720, file: !3678, line: 95, baseType: !13, size: 32, offset: 32)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3720, file: !3678, line: 96, baseType: !1689, size: 64, offset: 64)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3720, file: !3678, line: 97, baseType: !3683, size: 64, offset: 128)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !3720, file: !3678, line: 98, baseType: !155, size: 64, offset: 192)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !173, file: !20, line: 438, baseType: !13, size: 32, offset: 2176)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !173, file: !20, line: 441, baseType: !13, size: 32, offset: 2208)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !173, file: !20, line: 442, baseType: !3667, size: 64, offset: 2240)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !173, file: !20, line: 443, baseType: !3671, size: 64, offset: 2304)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !173, file: !20, line: 444, baseType: !878, size: 8, offset: 2368)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !173, file: !20, line: 451, baseType: !878, size: 8, offset: 2376)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !173, file: !20, line: 454, baseType: !13, size: 32, offset: 2400)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !173, file: !20, line: 455, baseType: !3735, size: 64, offset: 2432)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !3737, line: 23, size: 96, elements: !3738)
!3737 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!3738 = !{!3739, !3740, !3741}
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3736, file: !3737, line: 24, baseType: !98, size: 32)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !3736, file: !3737, line: 24, baseType: !98, size: 32, offset: 32)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3736, file: !3737, line: 24, baseType: !98, size: 32, offset: 64)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !173, file: !20, line: 458, baseType: !3743, size: 64, offset: 2496)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = !DISubroutineType(types: !3745)
!3745 = !{!98}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !173, file: !20, line: 460, baseType: !3747, size: 4032, align: 512, offset: 2560)
!3747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3748, size: 4032, elements: !5)
!3748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !20, line: 362, size: 576, elements: !3749)
!3749 = !{!3750, !3751, !3752}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3748, file: !20, line: 363, baseType: !155, size: 64)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3748, file: !20, line: 364, baseType: !13, size: 32, offset: 64)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !3748, file: !20, line: 367, baseType: !3753, size: 448, offset: 128)
!3753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !20, line: 319, size: 448, elements: !3754)
!3754 = !{!3755, !3756}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3753, file: !20, line: 320, baseType: !172, size: 64)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3753, file: !20, line: 321, baseType: !3757, size: 384, offset: 64)
!3757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !3758, line: 40, size: 384, elements: !3759)
!3758 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!3759 = !{!3760}
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3757, file: !3758, line: 41, baseType: !3761, size: 384, align: 64)
!3761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 384, align: 64, elements: !2213)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !173, file: !20, line: 463, baseType: !3763, size: 192, offset: 6592)
!3763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !3764, line: 8, size: 192, elements: !3765)
!3764 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!3765 = !{!3766, !3767, !3768}
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !3763, file: !3764, line: 10, baseType: !13, size: 32)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !3763, file: !3764, line: 11, baseType: !620, size: 64, offset: 64)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !3763, file: !3764, line: 12, baseType: !3769, size: 64, offset: 128)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !3771, line: 59, size: 48, elements: !3772)
!3771 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!3772 = !{!3773, !3774, !3775, !3776, !3777, !3778}
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !3770, file: !3771, line: 60, baseType: !1226, size: 16)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !3770, file: !3771, line: 61, baseType: !1226, size: 16, offset: 16)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !3770, file: !3771, line: 63, baseType: !13, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !3770, file: !3771, line: 64, baseType: !13, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3770, file: !3771, line: 65, baseType: !13, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3770, file: !3771, line: 66, baseType: !13, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !173, file: !20, line: 465, baseType: !154, size: 64, offset: 6784)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !173, file: !20, line: 469, baseType: !13, size: 32, offset: 6848)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !173, file: !20, line: 470, baseType: !177, size: 128, offset: 6912)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !173, file: !20, line: 471, baseType: !3783, size: 64, offset: 7040)
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3784, size: 64)
!3784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !3785, line: 33, size: 96, elements: !3786)
!3785 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!3786 = !{!3787, !3788, !3789, !3790}
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !3784, file: !3785, line: 37, baseType: !98, size: 32)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !3784, file: !3785, line: 43, baseType: !98, size: 32, offset: 32)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !3784, file: !3785, line: 45, baseType: !245, size: 16, offset: 64)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3784, file: !3785, line: 47, baseType: !245, size: 16, offset: 80)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !173, file: !20, line: 476, baseType: !3792, size: 64, offset: 7104)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !20, line: 378, size: 256, elements: !3794)
!3794 = !{!3795, !3811, !3812, !3813}
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !3793, file: !20, line: 379, baseType: !3796, size: 64)
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !3798, line: 204, baseType: !3799)
!3798 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!3799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !3798, line: 197, size: 192, elements: !3800)
!3800 = !{!3801, !3803, !3804, !3805, !3807, !3809}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !3799, file: !3798, line: 198, baseType: !3802, size: 32)
!3802 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !3798, line: 21, baseType: !424)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !3799, file: !3798, line: 199, baseType: !237, size: 8, offset: 32)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !3799, file: !3798, line: 200, baseType: !237, size: 8, offset: 40)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !3799, file: !3798, line: 201, baseType: !3806, size: 16, offset: 48)
!3806 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !3798, line: 17, baseType: !244)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !3799, file: !3798, line: 202, baseType: !3808, size: 64, offset: 64)
!3808 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !3798, line: 16, baseType: !428)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3799, file: !3798, line: 203, baseType: !3810, size: 64, offset: 128)
!3810 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !3798, line: 22, baseType: !428)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !3793, file: !20, line: 380, baseType: !13, size: 32, offset: 64)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !3793, file: !20, line: 381, baseType: !275, size: 64, offset: 128)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !3793, file: !20, line: 382, baseType: !275, size: 64, offset: 192)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !173, file: !20, line: 477, baseType: !3793, size: 256, offset: 7168)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !173, file: !20, line: 480, baseType: !3816, size: 64, offset: 7424)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3817 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !20, line: 480, flags: DIFlagFwdDecl)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !173, file: !20, line: 483, baseType: !3819, size: 64, offset: 7488)
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3820, size: 64)
!3820 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !20, line: 483, flags: DIFlagFwdDecl)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !173, file: !20, line: 488, baseType: !275, size: 64, offset: 7552)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !173, file: !20, line: 492, baseType: !155, size: 64, offset: 7616)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !173, file: !20, line: 493, baseType: !13, size: 32, offset: 7680)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !173, file: !20, line: 495, baseType: !155, size: 64, offset: 7744)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !173, file: !20, line: 496, baseType: !13, size: 32, offset: 7808)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !173, file: !20, line: 499, baseType: !13, size: 32, offset: 7840)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !173, file: !20, line: 500, baseType: !3828, size: 64, offset: 7872)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !3830, line: 45, baseType: !3831)
!3830 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!3831 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !173, file: !20, line: 503, baseType: !13, size: 32, offset: 7936)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !173, file: !20, line: 504, baseType: !3834, size: 64, offset: 8000)
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3836, size: 64)
!3836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !3837, line: 96, size: 192, elements: !3838)
!3837 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!3838 = !{!3839, !3840, !3883, !3885}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !3836, file: !3837, line: 97, baseType: !13, size: 32)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !3836, file: !3837, line: 98, baseType: !3841, size: 64, offset: 64)
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !3837, line: 24, size: 3072, elements: !3843)
!3843 = !{!3844, !3846, !3847, !3848, !3849, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3880, !3881, !3882}
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !3842, file: !3837, line: 26, baseType: !3845, size: 128)
!3845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !642, size: 128, elements: !2213)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !3842, file: !3837, line: 27, baseType: !3845, size: 128, offset: 128)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !3842, file: !3837, line: 28, baseType: !98, size: 32, offset: 256)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3842, file: !3837, line: 31, baseType: !205, size: 32, align: 512, offset: 512)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !3842, file: !3837, line: 32, baseType: !3850, size: 960, offset: 576)
!3850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !3851, line: 206, size: 960, elements: !3852)
!3851 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!3852 = !{!3853, !3854, !3857, !3859, !3860, !3862}
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3850, file: !3851, line: 207, baseType: !699, size: 64)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !3850, file: !3851, line: 208, baseType: !3855, size: 256, offset: 64)
!3855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3856, size: 256, elements: !750)
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !3850, file: !3851, line: 209, baseType: !3858, size: 256, offset: 320)
!3858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 256, elements: !750)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3850, file: !3851, line: 213, baseType: !311, size: 64, offset: 576)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !3850, file: !3851, line: 215, baseType: !3861, size: 256, offset: 640)
!3861 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 256, elements: !750)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3850, file: !3851, line: 216, baseType: !233, size: 8, offset: 896)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3842, file: !3837, line: 33, baseType: !154, size: 64, offset: 1536)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3842, file: !3837, line: 34, baseType: !154, size: 64, offset: 1600)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !3842, file: !3837, line: 35, baseType: !878, size: 8, offset: 1664)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !3842, file: !3837, line: 36, baseType: !2709, size: 320, offset: 1728)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3842, file: !3837, line: 37, baseType: !1248, size: 256, offset: 2048)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !3842, file: !3837, line: 38, baseType: !696, size: 128, align: 64, offset: 2304)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !3842, file: !3837, line: 39, baseType: !3870, size: 64, offset: 2432)
!3870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3871, size: 64)
!3871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !3837, line: 49, size: 768, elements: !3872)
!3872 = !{!3873, !3874, !3875, !3876, !3877, !3878, !3879}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3871, file: !3837, line: 50, baseType: !205, size: 32)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !3871, file: !3837, line: 51, baseType: !3858, size: 256, offset: 64)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !3871, file: !3837, line: 53, baseType: !3858, size: 256, offset: 320)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3871, file: !3837, line: 54, baseType: !154, size: 64, offset: 576)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !3871, file: !3837, line: 55, baseType: !3870, size: 64, offset: 640)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !3871, file: !3837, line: 56, baseType: !98, size: 32, offset: 704)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !3871, file: !3837, line: 57, baseType: !98, size: 32, offset: 736)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !3842, file: !3837, line: 40, baseType: !154, size: 64, offset: 2496)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3842, file: !3837, line: 42, baseType: !98, size: 32, offset: 2560)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !3842, file: !3837, line: 43, baseType: !3835, size: 64, offset: 2624)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !3836, file: !3837, line: 99, baseType: !3884, offset: 128)
!3884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !556, line: 211, elements: !557)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !3836, file: !3837, line: 100, baseType: !3886, size: 64, offset: 128)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !3837, line: 63, size: 3008, elements: !3888)
!3888 = !{!3889, !3890, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3918}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3887, file: !3837, line: 64, baseType: !3870, size: 64)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3887, file: !3837, line: 65, baseType: !3891, size: 192, offset: 64)
!3891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3870, size: 192, elements: !276)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !3887, file: !3837, line: 67, baseType: !98, size: 32, offset: 256)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !3887, file: !3837, line: 68, baseType: !638, size: 256, offset: 320)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3887, file: !3837, line: 69, baseType: !205, size: 32, offset: 576)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !3887, file: !3837, line: 70, baseType: !638, size: 256, offset: 640)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !3887, file: !3837, line: 71, baseType: !154, size: 64, offset: 896)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3887, file: !3837, line: 72, baseType: !154, size: 64, offset: 960)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3887, file: !3837, line: 73, baseType: !154, size: 64, offset: 1024)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !3887, file: !3837, line: 74, baseType: !154, size: 64, offset: 1088)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !3887, file: !3837, line: 75, baseType: !154, size: 64, offset: 1152)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !3887, file: !3837, line: 76, baseType: !154, size: 64, offset: 1216)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !3887, file: !3837, line: 77, baseType: !154, size: 64, offset: 1280)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !3887, file: !3837, line: 78, baseType: !154, size: 64, offset: 1344)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !3887, file: !3837, line: 79, baseType: !878, size: 8, offset: 1408)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !3887, file: !3837, line: 80, baseType: !154, size: 64, offset: 1472)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !3887, file: !3837, line: 81, baseType: !638, size: 256, offset: 1536)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !3887, file: !3837, line: 82, baseType: !2080, size: 256, offset: 1792)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !3887, file: !3837, line: 84, baseType: !225, size: 32, offset: 2048)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !3887, file: !3837, line: 87, baseType: !154, size: 64, offset: 2112)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !3887, file: !3837, line: 88, baseType: !154, size: 64, offset: 2176)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3887, file: !3837, line: 89, baseType: !3912, size: 704, offset: 2240)
!3912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1249, line: 111, size: 704, elements: !3913)
!3913 = !{!3914, !3915, !3916, !3917}
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3912, file: !1249, line: 112, baseType: !1248, size: 256)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3912, file: !1249, line: 113, baseType: !2709, size: 320, offset: 256)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3912, file: !1249, line: 116, baseType: !3016, size: 64, offset: 576)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3912, file: !1249, line: 117, baseType: !98, size: 32, offset: 640)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !3887, file: !3837, line: 90, baseType: !3835, size: 64, offset: 2944)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !173, file: !20, line: 515, baseType: !3920, size: 64, offset: 8064)
!3920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3921, size: 64)
!3921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !3922, line: 117, size: 128, elements: !3923)
!3922 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!3923 = !{!3924, !3925, !3926}
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !3921, file: !3922, line: 118, baseType: !811, size: 32)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3921, file: !3922, line: 119, baseType: !811, size: 32, offset: 32)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3921, file: !3922, line: 120, baseType: !311, size: 64, offset: 64)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !173, file: !20, line: 516, baseType: !13, size: 32, offset: 8128)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !173, file: !20, line: 519, baseType: !13, size: 32, offset: 8160)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !173, file: !20, line: 520, baseType: !3930, size: 64, offset: 8192)
!3930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !173, file: !20, line: 523, baseType: !3932, size: 64, offset: 8256)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3934, size: 64)
!3934 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !20, line: 523, flags: DIFlagFwdDecl)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !173, file: !20, line: 524, baseType: !13, size: 32, offset: 8320)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !173, file: !20, line: 525, baseType: !3937, size: 64, offset: 8384)
!3937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3938, size: 64)
!3938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3939, size: 64)
!3939 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !20, line: 525, flags: DIFlagFwdDecl)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !173, file: !20, line: 526, baseType: !13, size: 32, offset: 8448)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !173, file: !20, line: 533, baseType: !155, size: 64, offset: 8512)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !173, file: !20, line: 534, baseType: !13, size: 32, offset: 8576)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !173, file: !20, line: 535, baseType: !161, size: 64, offset: 8640)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !173, file: !20, line: 536, baseType: !13, size: 32, offset: 8704)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !173, file: !20, line: 539, baseType: !98, size: 32, offset: 8736)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !173, file: !20, line: 540, baseType: !3947, size: 64, offset: 8768)
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!3948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !3949, line: 32, size: 64, elements: !3950)
!3949 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!3950 = !{!3951, !3952}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3948, file: !3949, line: 33, baseType: !811, size: 32)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3948, file: !3949, line: 34, baseType: !811, size: 32, offset: 32)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !173, file: !20, line: 563, baseType: !177, size: 128, offset: 8832)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !173, file: !20, line: 565, baseType: !177, size: 128, offset: 8960)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !173, file: !20, line: 568, baseType: !3956, size: 64, offset: 9088)
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !173, file: !20, line: 570, baseType: !225, size: 32, offset: 9152)
!3958 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !153, line: 42, baseType: !154)
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3960, size: 64)
!3960 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !154)
!3961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3962, size: 64)
!3962 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !4)
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3964, size: 64)
!3964 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !311)
!3965 = !{!0, !7, !3966, !3971, !3973, !3976}
!3966 = !DIGlobalVariableExpression(var: !3967, expr: !DIExpression())
!3967 = distinct !DIGlobalVariable(scope: null, file: !142, line: 480, type: !3968, isLocal: true, isDefinition: true)
!3968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !3969)
!3969 = !{!3970}
!3970 = !DISubrange(count: 21)
!3971 = !DIGlobalVariableExpression(var: !3972, expr: !DIExpression())
!3972 = distinct !DIGlobalVariable(name: "rbtree_fops", scope: !9, file: !2, line: 176, type: !998, isLocal: true, isDefinition: true)
!3973 = !DIGlobalVariableExpression(var: !3974, expr: !DIExpression())
!3974 = distinct !DIGlobalVariable(scope: null, file: !2, line: 157, type: !3975, isLocal: true, isDefinition: true)
!3975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !2863)
!3976 = !DIGlobalVariableExpression(var: !3977, expr: !DIExpression())
!3977 = distinct !DIGlobalVariable(scope: null, file: !2, line: 168, type: !3978, isLocal: true, isDefinition: true)
!3978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !3979)
!3979 = !{!3980}
!3980 = !DISubrange(count: 62)
!3981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regcache_ops", file: !3982, line: 183, size: 576, elements: !3983)
!3982 = !DIFile(filename: "drivers/base/regmap/internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "77b9eb926d1adf1db721df0ad8f0ff41")
!3983 = !{!3984, !3985, !3986, !4658, !4659, !4663, !4667, !4671, !4672}
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3981, file: !3982, line: 184, baseType: !194, size: 64)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3981, file: !3982, line: 185, baseType: !11, size: 32, offset: 64)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !3981, file: !3982, line: 186, baseType: !3987, size: 64, offset: 128)
!3987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3988, size: 64)
!3988 = !DISubroutineType(types: !3989)
!3989 = !{!98, !3990}
!3990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3991, size: 64)
!3991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regmap", file: !3982, line: 50, size: 5248, elements: !3992)
!3992 = !{!3993, !4007, !4009, !4011, !4013, !4014, !4015, !4016, !4467, !4468, !4490, !4560, !4561, !4562, !4563, !4564, !4565, !4566, !4567, !4568, !4569, !4570, !4571, !4572, !4573, !4574, !4575, !4576, !4577, !4581, !4582, !4583, !4584, !4585, !4586, !4601, !4602, !4603, !4604, !4605, !4606, !4607, !4608, !4609, !4610, !4611, !4612, !4613, !4614, !4615, !4616, !4617, !4618, !4621, !4622, !4623, !4624, !4625, !4626, !4627, !4628, !4629, !4635, !4636, !4637, !4638, !4639, !4646, !4647, !4648, !4649, !4650, !4651, !4652, !4653, !4654, !4657}
!3993 = !DIDerivedType(tag: DW_TAG_member, scope: !3991, file: !3982, line: 51, baseType: !3994, size: 256)
!3994 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3991, file: !3982, line: 51, size: 256, elements: !3995)
!3995 = !{!3996, !3997, !4002}
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3994, file: !3982, line: 52, baseType: !638, size: 256)
!3997 = !DIDerivedType(tag: DW_TAG_member, scope: !3994, file: !3982, line: 53, baseType: !3998, size: 128)
!3998 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3994, file: !3982, line: 53, size: 128, elements: !3999)
!3999 = !{!4000, !4001}
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "spinlock", scope: !3998, file: !3982, line: 54, baseType: !205, size: 32)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "spinlock_flags", scope: !3998, file: !3982, line: 55, baseType: !154, size: 64, offset: 64)
!4002 = !DIDerivedType(tag: DW_TAG_member, scope: !3994, file: !3982, line: 57, baseType: !4003, size: 128)
!4003 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3994, file: !3982, line: 57, size: 128, elements: !4004)
!4004 = !{!4005, !4006}
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "raw_spinlock", scope: !4003, file: !3982, line: 58, baseType: !651, size: 32)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "raw_spinlock_flags", scope: !4003, file: !3982, line: 59, baseType: !154, size: 64, offset: 64)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3991, file: !3982, line: 62, baseType: !4008, size: 64, offset: 256)
!4008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3991, file: !3982, line: 63, baseType: !4010, size: 64, offset: 320)
!4010 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_lock", file: !12, line: 244, baseType: !3085)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "unlock", scope: !3991, file: !3982, line: 64, baseType: !4012, size: 64, offset: 384)
!4012 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_unlock", file: !12, line: 245, baseType: !3085)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "lock_arg", scope: !3991, file: !3982, line: 65, baseType: !155, size: 64, offset: 448)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_flags", scope: !3991, file: !3982, line: 66, baseType: !152, size: 32, offset: 512)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "reg_base", scope: !3991, file: !3982, line: 67, baseType: !13, size: 32, offset: 544)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3991, file: !3982, line: 69, baseType: !4017, size: 64, offset: 576)
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4018, size: 64)
!4018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !83, line: 705, size: 5824, elements: !4019)
!4019 = !{!4020, !4021, !4022, !4025, !4026, !4079, !4149, !4150, !4151, !4152, !4153, !4160, !4252, !4265, !4275, !4279, !4281, !4282, !4283, !4287, !4294, !4295, !4298, !4301, !4305, !4409, !4410, !4411, !4412, !4413, !4414, !4444, !4445, !4446, !4449, !4452, !4461, !4462, !4463, !4464, !4465, !4466}
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4018, file: !83, line: 706, baseType: !190, size: 512)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4018, file: !83, line: 707, baseType: !4017, size: 64, offset: 512)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4018, file: !83, line: 709, baseType: !4023, size: 64, offset: 576)
!4023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4024, size: 64)
!4024 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !83, line: 37, flags: DIFlagFwdDecl)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4018, file: !83, line: 711, baseType: !194, size: 64, offset: 640)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4018, file: !83, line: 712, baseType: !4027, size: 64, offset: 704)
!4027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4028, size: 64)
!4028 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4029)
!4029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !83, line: 89, size: 384, elements: !4030)
!4030 = !{!4031, !4032, !4033, !4039, !4044, !4048}
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4029, file: !83, line: 90, baseType: !194, size: 64)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4029, file: !83, line: 91, baseType: !326, size: 64, offset: 64)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4029, file: !83, line: 92, baseType: !4034, size: 64, offset: 128)
!4034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4035, size: 64)
!4035 = !DISubroutineType(types: !4036)
!4036 = !{!98, !4037, !270}
!4037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4038, size: 64)
!4038 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4018)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4029, file: !83, line: 93, baseType: !4040, size: 64, offset: 192)
!4040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4041, size: 64)
!4041 = !DISubroutineType(types: !4042)
!4042 = !{!275, !4037, !4043, !3527, !3528}
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4029, file: !83, line: 95, baseType: !4045, size: 64, offset: 256)
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = !DISubroutineType(types: !4047)
!4047 = !{null, !4017}
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4029, file: !83, line: 97, baseType: !4049, size: 64, offset: 320)
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4050 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4051)
!4051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !90, line: 286, size: 1472, elements: !4052)
!4052 = !{!4053, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4070, !4071, !4072, !4073, !4074, !4075, !4076, !4077, !4078}
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4051, file: !90, line: 287, baseType: !4054, size: 64)
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4055, size: 64)
!4055 = !DISubroutineType(types: !4056)
!4056 = !{!98, !4017}
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4051, file: !90, line: 288, baseType: !4045, size: 64, offset: 64)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4051, file: !90, line: 289, baseType: !4054, size: 64, offset: 128)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4051, file: !90, line: 290, baseType: !4054, size: 64, offset: 192)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4051, file: !90, line: 291, baseType: !4054, size: 64, offset: 256)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4051, file: !90, line: 292, baseType: !4054, size: 64, offset: 320)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4051, file: !90, line: 293, baseType: !4054, size: 64, offset: 384)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4051, file: !90, line: 294, baseType: !4054, size: 64, offset: 448)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4051, file: !90, line: 295, baseType: !4054, size: 64, offset: 512)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4051, file: !90, line: 296, baseType: !4054, size: 64, offset: 576)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4051, file: !90, line: 297, baseType: !4054, size: 64, offset: 640)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4051, file: !90, line: 298, baseType: !4054, size: 64, offset: 704)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4051, file: !90, line: 299, baseType: !4054, size: 64, offset: 768)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4051, file: !90, line: 300, baseType: !4054, size: 64, offset: 832)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4051, file: !90, line: 301, baseType: !4054, size: 64, offset: 896)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4051, file: !90, line: 302, baseType: !4054, size: 64, offset: 960)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4051, file: !90, line: 303, baseType: !4054, size: 64, offset: 1024)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4051, file: !90, line: 304, baseType: !4054, size: 64, offset: 1088)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4051, file: !90, line: 305, baseType: !4054, size: 64, offset: 1152)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4051, file: !90, line: 306, baseType: !4054, size: 64, offset: 1216)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4051, file: !90, line: 307, baseType: !4054, size: 64, offset: 1280)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4051, file: !90, line: 308, baseType: !4054, size: 64, offset: 1344)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4051, file: !90, line: 309, baseType: !4054, size: 64, offset: 1408)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4018, file: !83, line: 714, baseType: !4080, size: 64, offset: 768)
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4081, size: 64)
!4081 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4082)
!4082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4083, line: 80, size: 1344, elements: !4084)
!4083 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4084 = !{!4085, !4086, !4087, !4088, !4089, !4090, !4131, !4132, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4148}
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4082, file: !4083, line: 81, baseType: !194, size: 64)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4082, file: !4083, line: 82, baseType: !194, size: 64, offset: 64)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4082, file: !4083, line: 83, baseType: !326, size: 64, offset: 128)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4082, file: !4083, line: 84, baseType: !326, size: 64, offset: 192)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4082, file: !4083, line: 85, baseType: !326, size: 64, offset: 256)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4082, file: !4083, line: 87, baseType: !4091, size: 64, offset: 320)
!4091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4092, size: 64)
!4092 = !DISubroutineType(types: !4093)
!4093 = !{!98, !4017, !4094}
!4094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4095, size: 64)
!4095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !77, line: 96, size: 1152, elements: !4096)
!4096 = !{!4097, !4098, !4099, !4100, !4101, !4102, !4103, !4107, !4111, !4112, !4113, !4114, !4115, !4123, !4124, !4125, !4126, !4127, !4128}
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4095, file: !77, line: 97, baseType: !194, size: 64)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4095, file: !77, line: 98, baseType: !4080, size: 64, offset: 64)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4095, file: !77, line: 100, baseType: !172, size: 64, offset: 128)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4095, file: !77, line: 101, baseType: !194, size: 64, offset: 192)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4095, file: !77, line: 103, baseType: !878, size: 8, offset: 256)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4095, file: !77, line: 104, baseType: !76, size: 32, offset: 288)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4095, file: !77, line: 106, baseType: !4104, size: 64, offset: 320)
!4104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4105, size: 64)
!4105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4106)
!4106 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !77, line: 106, flags: DIFlagFwdDecl)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4095, file: !77, line: 107, baseType: !4108, size: 64, offset: 384)
!4108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4109, size: 64)
!4109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4110)
!4110 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !77, line: 107, flags: DIFlagFwdDecl)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4095, file: !77, line: 109, baseType: !4054, size: 64, offset: 448)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4095, file: !77, line: 110, baseType: !4045, size: 64, offset: 512)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4095, file: !77, line: 111, baseType: !4054, size: 64, offset: 576)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4095, file: !77, line: 112, baseType: !4045, size: 64, offset: 640)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4095, file: !77, line: 113, baseType: !4116, size: 64, offset: 704)
!4116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4117, size: 64)
!4117 = !DISubroutineType(types: !4118)
!4118 = !{!98, !4017, !4119}
!4119 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !90, line: 60, baseType: !4120)
!4120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !90, line: 58, size: 32, elements: !4121)
!4121 = !{!4122}
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4120, file: !90, line: 59, baseType: !98, size: 32)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4095, file: !77, line: 114, baseType: !4054, size: 64, offset: 768)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4095, file: !77, line: 115, baseType: !326, size: 64, offset: 832)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4095, file: !77, line: 116, baseType: !326, size: 64, offset: 896)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4095, file: !77, line: 118, baseType: !4049, size: 64, offset: 960)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4095, file: !77, line: 119, baseType: !4045, size: 64, offset: 1024)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4095, file: !77, line: 121, baseType: !4129, size: 64, offset: 1088)
!4129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4130, size: 64)
!4130 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !77, line: 121, flags: DIFlagFwdDecl)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4082, file: !4083, line: 88, baseType: !4034, size: 64, offset: 384)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4082, file: !4083, line: 89, baseType: !4054, size: 64, offset: 448)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4082, file: !4083, line: 90, baseType: !4045, size: 64, offset: 512)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4082, file: !4083, line: 91, baseType: !4045, size: 64, offset: 576)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4082, file: !4083, line: 92, baseType: !4045, size: 64, offset: 640)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4082, file: !4083, line: 94, baseType: !4054, size: 64, offset: 704)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4082, file: !4083, line: 95, baseType: !4054, size: 64, offset: 768)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4082, file: !4083, line: 97, baseType: !4116, size: 64, offset: 832)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4082, file: !4083, line: 98, baseType: !4054, size: 64, offset: 896)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4082, file: !4083, line: 100, baseType: !4054, size: 64, offset: 960)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4082, file: !4083, line: 102, baseType: !4054, size: 64, offset: 1024)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4082, file: !4083, line: 103, baseType: !4045, size: 64, offset: 1088)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4082, file: !4083, line: 105, baseType: !4049, size: 64, offset: 1152)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4082, file: !4083, line: 107, baseType: !4145, size: 64, offset: 1216)
!4145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4146, size: 64)
!4146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4147)
!4147 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4083, line: 107, flags: DIFlagFwdDecl)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4082, file: !4083, line: 109, baseType: !878, size: 8, offset: 1280)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4018, file: !83, line: 715, baseType: !4094, size: 64, offset: 832)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4018, file: !83, line: 717, baseType: !155, size: 64, offset: 896)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4018, file: !83, line: 719, baseType: !155, size: 64, offset: 960)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4018, file: !83, line: 721, baseType: !638, size: 256, offset: 1024)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4018, file: !83, line: 725, baseType: !4154, size: 448, offset: 1280)
!4154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !83, line: 517, size: 448, elements: !4155)
!4155 = !{!4156, !4157, !4158, !4159}
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4154, file: !83, line: 518, baseType: !177, size: 128)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4154, file: !83, line: 519, baseType: !177, size: 128, offset: 128)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4154, file: !83, line: 520, baseType: !177, size: 128, offset: 256)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4154, file: !83, line: 521, baseType: !82, size: 32, offset: 384)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4018, file: !83, line: 726, baseType: !4161, size: 2496, offset: 1728)
!4161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !90, line: 663, size: 2496, elements: !4162)
!4162 = !{!4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4176, !4177, !4178, !4205, !4206, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4216, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4230, !4231, !4232, !4233, !4234, !4235, !4236, !4237, !4238, !4239, !4245, !4249}
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4161, file: !90, line: 664, baseType: !4119, size: 32)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4161, file: !90, line: 665, baseType: !13, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4161, file: !90, line: 666, baseType: !13, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4161, file: !90, line: 667, baseType: !878, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4161, file: !90, line: 668, baseType: !878, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4161, file: !90, line: 669, baseType: !878, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4161, file: !90, line: 670, baseType: !878, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4161, file: !90, line: 671, baseType: !878, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4161, file: !90, line: 672, baseType: !878, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4161, file: !90, line: 673, baseType: !878, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4161, file: !90, line: 674, baseType: !878, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4161, file: !90, line: 675, baseType: !423, size: 32, offset: 64)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4161, file: !90, line: 676, baseType: !205, size: 32, offset: 96)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4161, file: !90, line: 678, baseType: !177, size: 128, offset: 128)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4161, file: !90, line: 679, baseType: !2080, size: 256, offset: 256)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4161, file: !90, line: 680, baseType: !4179, size: 64, offset: 512)
!4179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4180, size: 64)
!4180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4181, line: 43, size: 1536, elements: !4182)
!4181 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4182 = !{!4183, !4184, !4185, !4186, !4187, !4190, !4191, !4192, !4193, !4194, !4195, !4196, !4197, !4198, !4199, !4200, !4201, !4202, !4203, !4204}
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4180, file: !4181, line: 44, baseType: !194, size: 64)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4180, file: !4181, line: 45, baseType: !98, size: 32, offset: 64)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4180, file: !4181, line: 46, baseType: !177, size: 128, offset: 128)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4180, file: !4181, line: 47, baseType: !205, size: 32, offset: 256)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4180, file: !4181, line: 48, baseType: !4188, size: 64, offset: 320)
!4188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4189, size: 64)
!4189 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !90, line: 629, flags: DIFlagFwdDecl)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4180, file: !4181, line: 49, baseType: !2709, size: 320, offset: 384)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4180, file: !4181, line: 50, baseType: !154, size: 64, offset: 704)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4180, file: !4181, line: 51, baseType: !1814, size: 64, offset: 768)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4180, file: !4181, line: 52, baseType: !1814, size: 64, offset: 832)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4180, file: !4181, line: 53, baseType: !1814, size: 64, offset: 896)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4180, file: !4181, line: 54, baseType: !1814, size: 64, offset: 960)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4180, file: !4181, line: 55, baseType: !1814, size: 64, offset: 1024)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4180, file: !4181, line: 56, baseType: !154, size: 64, offset: 1088)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4180, file: !4181, line: 57, baseType: !154, size: 64, offset: 1152)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4180, file: !4181, line: 58, baseType: !154, size: 64, offset: 1216)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4180, file: !4181, line: 59, baseType: !154, size: 64, offset: 1280)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4180, file: !4181, line: 60, baseType: !154, size: 64, offset: 1344)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4180, file: !4181, line: 61, baseType: !4017, size: 64, offset: 1408)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4180, file: !4181, line: 62, baseType: !878, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4180, file: !4181, line: 63, baseType: !878, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4161, file: !90, line: 681, baseType: !878, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4161, file: !90, line: 682, baseType: !878, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4161, file: !90, line: 683, baseType: !878, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4161, file: !90, line: 684, baseType: !13, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4161, file: !90, line: 685, baseType: !13, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4161, file: !90, line: 690, baseType: !1806, size: 512, offset: 640)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4161, file: !90, line: 691, baseType: !427, size: 64, offset: 1152)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4161, file: !90, line: 692, baseType: !1248, size: 256, offset: 1216)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4161, file: !90, line: 693, baseType: !754, size: 192, offset: 1472)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4161, file: !90, line: 694, baseType: !4188, size: 64, offset: 1664)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4161, file: !90, line: 695, baseType: !225, size: 32, offset: 1728)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4161, file: !90, line: 696, baseType: !225, size: 32, offset: 1760)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4161, file: !90, line: 697, baseType: !13, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4161, file: !90, line: 698, baseType: !13, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4161, file: !90, line: 699, baseType: !13, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4161, file: !90, line: 700, baseType: !13, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4161, file: !90, line: 701, baseType: !13, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4161, file: !90, line: 702, baseType: !13, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4161, file: !90, line: 703, baseType: !878, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4161, file: !90, line: 704, baseType: !13, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4161, file: !90, line: 705, baseType: !13, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4161, file: !90, line: 706, baseType: !13, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4161, file: !90, line: 707, baseType: !13, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4161, file: !90, line: 708, baseType: !13, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4161, file: !90, line: 709, baseType: !13, size: 32, offset: 1824)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4161, file: !90, line: 710, baseType: !89, size: 32, offset: 1856)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4161, file: !90, line: 711, baseType: !97, size: 32, offset: 1888)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4161, file: !90, line: 712, baseType: !97, size: 32, offset: 1920)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4161, file: !90, line: 713, baseType: !98, size: 32, offset: 1952)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4161, file: !90, line: 714, baseType: !98, size: 32, offset: 1984)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4161, file: !90, line: 715, baseType: !427, size: 64, offset: 2048)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4161, file: !90, line: 716, baseType: !427, size: 64, offset: 2112)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4161, file: !90, line: 717, baseType: !427, size: 64, offset: 2176)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4161, file: !90, line: 718, baseType: !427, size: 64, offset: 2240)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4161, file: !90, line: 720, baseType: !4240, size: 64, offset: 2304)
!4240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4241, size: 64)
!4241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !90, line: 632, size: 64, elements: !4242)
!4242 = !{!4243, !4244}
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4241, file: !90, line: 633, baseType: !205, size: 32)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4241, file: !90, line: 634, baseType: !13, size: 32, offset: 32)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4161, file: !90, line: 721, baseType: !4246, size: 64, offset: 2368)
!4246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4247, size: 64)
!4247 = !DISubroutineType(types: !4248)
!4248 = !{null, !4017, !811}
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4161, file: !90, line: 722, baseType: !4250, size: 64, offset: 2432)
!4250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4251, size: 64)
!4251 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !90, line: 722, flags: DIFlagFwdDecl)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4018, file: !83, line: 727, baseType: !4253, size: 64, offset: 4224)
!4253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4254, size: 64)
!4254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !90, line: 742, size: 1792, elements: !4255)
!4255 = !{!4256, !4257, !4258, !4262, !4263, !4264}
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4254, file: !90, line: 743, baseType: !4051, size: 1472)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4254, file: !90, line: 744, baseType: !4054, size: 64, offset: 1472)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4254, file: !90, line: 745, baseType: !4259, size: 64, offset: 1536)
!4259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4260, size: 64)
!4260 = !DISubroutineType(types: !4261)
!4261 = !{null, !4017, !878}
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4254, file: !90, line: 746, baseType: !4054, size: 64, offset: 1600)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4254, file: !90, line: 747, baseType: !4045, size: 64, offset: 1664)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4254, file: !90, line: 748, baseType: !4045, size: 64, offset: 1728)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4018, file: !83, line: 736, baseType: !4266, size: 128, offset: 4288)
!4266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !83, line: 529, size: 128, elements: !4267)
!4267 = !{!4268, !4272}
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4266, file: !83, line: 531, baseType: !4269, size: 64)
!4269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4270, size: 64)
!4270 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4271, line: 13, flags: DIFlagFwdDecl)
!4271 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4266, file: !83, line: 532, baseType: !4273, size: 64, offset: 64)
!4273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4274, size: 64)
!4274 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !83, line: 49, flags: DIFlagFwdDecl)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4018, file: !83, line: 738, baseType: !4276, size: 64, offset: 4416)
!4276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4277, size: 64)
!4277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4278)
!4278 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !83, line: 738, flags: DIFlagFwdDecl)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4018, file: !83, line: 740, baseType: !4280, size: 64, offset: 4480)
!4280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4018, file: !83, line: 741, baseType: !427, size: 64, offset: 4544)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4018, file: !83, line: 746, baseType: !427, size: 64, offset: 4608)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4018, file: !83, line: 747, baseType: !4284, size: 64, offset: 4672)
!4284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4285, size: 64)
!4285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4286)
!4286 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !83, line: 747, flags: DIFlagFwdDecl)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4018, file: !83, line: 749, baseType: !4288, size: 64, offset: 4736)
!4288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4289, size: 64)
!4289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !83, line: 428, size: 128, elements: !4290)
!4290 = !{!4291, !4292, !4293}
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4289, file: !83, line: 433, baseType: !13, size: 32)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4289, file: !83, line: 434, baseType: !13, size: 32, offset: 32)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4289, file: !83, line: 435, baseType: !154, size: 64, offset: 64)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4018, file: !83, line: 751, baseType: !177, size: 128, offset: 4800)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4018, file: !83, line: 762, baseType: !4296, size: 64, offset: 4928)
!4296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4297, size: 64)
!4297 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !83, line: 762, flags: DIFlagFwdDecl)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4018, file: !83, line: 770, baseType: !4299, offset: 4992)
!4299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4300, line: 5, elements: !557)
!4300 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4018, file: !83, line: 772, baseType: !4302, size: 64, offset: 4992)
!4302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4303, size: 64)
!4303 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4304, line: 18, flags: DIFlagFwdDecl)
!4304 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4018, file: !83, line: 773, baseType: !4306, size: 64, offset: 5056)
!4306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4307, size: 64)
!4307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4308, line: 41, size: 512, elements: !4309)
!4308 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4309 = !{!4310, !4311, !4405, !4406, !4407, !4408}
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4307, file: !4308, line: 42, baseType: !4306, size: 64)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4307, file: !4308, line: 43, baseType: !4312, size: 64, offset: 64)
!4312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4313, size: 64)
!4313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4314)
!4314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4308, line: 125, size: 1408, elements: !4315)
!4315 = !{!4316, !4320, !4324, !4330, !4334, !4335, !4340, !4344, !4348, !4352, !4356, !4357, !4361, !4365, !4369, !4380, !4381, !4382, !4383, !4393, !4397, !4401}
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4314, file: !4308, line: 126, baseType: !4317, size: 64)
!4317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4318, size: 64)
!4318 = !DISubroutineType(types: !4319)
!4319 = !{!4306, !4306}
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4314, file: !4308, line: 127, baseType: !4321, size: 64, offset: 64)
!4321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4322, size: 64)
!4322 = !DISubroutineType(types: !4323)
!4323 = !{null, !4306}
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4314, file: !4308, line: 128, baseType: !4325, size: 64, offset: 128)
!4325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4326, size: 64)
!4326 = !DISubroutineType(types: !4327)
!4327 = !{!878, !4328}
!4328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4329, size: 64)
!4329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4307)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4314, file: !4308, line: 129, baseType: !4331, size: 64, offset: 192)
!4331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4332, size: 64)
!4332 = !DISubroutineType(types: !4333)
!4333 = !{!1209, !4328, !4037}
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4314, file: !4308, line: 131, baseType: !4325, size: 64, offset: 256)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4314, file: !4308, line: 133, baseType: !4336, size: 64, offset: 320)
!4336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4337, size: 64)
!4337 = !DISubroutineType(types: !4338)
!4338 = !{!4339, !4328}
!4339 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4308, line: 132, flags: DIFlagFwdDecl)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4314, file: !4308, line: 134, baseType: !4341, size: 64, offset: 384)
!4341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4342, size: 64)
!4342 = !DISubroutineType(types: !4343)
!4343 = !{!878, !4328, !194}
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4314, file: !4308, line: 136, baseType: !4345, size: 64, offset: 448)
!4345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4346, size: 64)
!4346 = !DISubroutineType(types: !4347)
!4347 = !{!98, !4328, !194, !13, !155, !322}
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4314, file: !4308, line: 141, baseType: !4349, size: 64, offset: 512)
!4349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4350, size: 64)
!4350 = !DISubroutineType(types: !4351)
!4351 = !{!98, !4328, !194, !3930, !322}
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4314, file: !4308, line: 144, baseType: !4353, size: 64, offset: 576)
!4353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4354, size: 64)
!4354 = !DISubroutineType(types: !4355)
!4355 = !{!194, !4328}
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4314, file: !4308, line: 145, baseType: !4353, size: 64, offset: 640)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4314, file: !4308, line: 146, baseType: !4358, size: 64, offset: 704)
!4358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4359, size: 64)
!4359 = !DISubroutineType(types: !4360)
!4360 = !{!4306, !4328}
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4314, file: !4308, line: 148, baseType: !4362, size: 64, offset: 768)
!4362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4363, size: 64)
!4363 = !DISubroutineType(types: !4364)
!4364 = !{!4306, !4328, !4306}
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4314, file: !4308, line: 151, baseType: !4366, size: 64, offset: 832)
!4366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4367, size: 64)
!4367 = !DISubroutineType(types: !4368)
!4368 = !{!4306, !4328, !194}
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4314, file: !4308, line: 153, baseType: !4370, size: 64, offset: 896)
!4370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4371, size: 64)
!4371 = !DISubroutineType(types: !4372)
!4372 = !{!98, !4328, !194, !194, !13, !13, !4373}
!4373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4374, size: 64)
!4374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4308, line: 94, size: 640, elements: !4375)
!4375 = !{!4376, !4377, !4378}
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4374, file: !4308, line: 95, baseType: !4306, size: 64)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4374, file: !4308, line: 96, baseType: !13, size: 32, offset: 64)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4374, file: !4308, line: 97, baseType: !4379, size: 512, offset: 128)
!4379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !427, size: 512, elements: !1849)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4314, file: !4308, line: 158, baseType: !4362, size: 64, offset: 960)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4314, file: !4308, line: 161, baseType: !4358, size: 64, offset: 1024)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4314, file: !4308, line: 163, baseType: !4317, size: 64, offset: 1088)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4314, file: !4308, line: 164, baseType: !4384, size: 64, offset: 1152)
!4384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4385, size: 64)
!4385 = !DISubroutineType(types: !4386)
!4386 = !{!98, !4328, !4387}
!4387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4388, size: 64)
!4388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4308, line: 73, size: 128, elements: !4389)
!4389 = !{!4390, !4391, !4392}
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4388, file: !4308, line: 74, baseType: !13, size: 32)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4388, file: !4308, line: 75, baseType: !13, size: 32, offset: 32)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4388, file: !4308, line: 76, baseType: !4328, size: 64, offset: 64)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4314, file: !4308, line: 166, baseType: !4394, size: 64, offset: 1216)
!4394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4395, size: 64)
!4395 = !DISubroutineType(types: !4396)
!4396 = !{!155, !4306, !98}
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4314, file: !4308, line: 167, baseType: !4398, size: 64, offset: 1280)
!4398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4399, size: 64)
!4399 = !DISubroutineType(types: !4400)
!4400 = !{!98, !4328, !13}
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4314, file: !4308, line: 168, baseType: !4402, size: 64, offset: 1344)
!4402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4403, size: 64)
!4403 = !DISubroutineType(types: !4404)
!4404 = !{!98, !4306}
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4307, file: !4308, line: 44, baseType: !4017, size: 64, offset: 128)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4307, file: !4308, line: 45, baseType: !177, size: 128, offset: 192)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4307, file: !4308, line: 46, baseType: !177, size: 128, offset: 320)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4307, file: !4308, line: 47, baseType: !233, size: 8, offset: 448)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4018, file: !83, line: 776, baseType: !98, size: 32, offset: 5120)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4018, file: !83, line: 778, baseType: !510, size: 32, offset: 5152)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4018, file: !83, line: 779, baseType: !423, size: 32, offset: 5184)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4018, file: !83, line: 781, baseType: !205, size: 32, offset: 5216)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4018, file: !83, line: 782, baseType: !177, size: 128, offset: 5248)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4018, file: !83, line: 784, baseType: !4415, size: 64, offset: 5376)
!4415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4416, size: 64)
!4416 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4417)
!4417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4418, line: 52, size: 768, elements: !4419)
!4418 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4419 = !{!4420, !4421, !4422, !4423, !4424, !4428, !4432, !4433, !4434, !4435, !4439, !4443}
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4417, file: !4418, line: 53, baseType: !194, size: 64)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4417, file: !4418, line: 55, baseType: !326, size: 64, offset: 64)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4417, file: !4418, line: 56, baseType: !326, size: 64, offset: 128)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4417, file: !4418, line: 58, baseType: !4034, size: 64, offset: 192)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4417, file: !4418, line: 59, baseType: !4425, size: 64, offset: 256)
!4425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4426, size: 64)
!4426 = !DISubroutineType(types: !4427)
!4427 = !{!275, !4037, !4043}
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4417, file: !4418, line: 61, baseType: !4429, size: 64, offset: 320)
!4429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4430, size: 64)
!4430 = !DISubroutineType(types: !4431)
!4431 = !{null, !4415}
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4417, file: !4418, line: 62, baseType: !4045, size: 64, offset: 384)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4417, file: !4418, line: 64, baseType: !4054, size: 64, offset: 448)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4417, file: !4418, line: 66, baseType: !3495, size: 64, offset: 512)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4417, file: !4418, line: 67, baseType: !4436, size: 64, offset: 576)
!4436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4437, size: 64)
!4437 = !DISubroutineType(types: !4438)
!4438 = !{!1209, !4037}
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4417, file: !4418, line: 69, baseType: !4440, size: 64, offset: 640)
!4440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4441, size: 64)
!4441 = !DISubroutineType(types: !4442)
!4442 = !{null, !4037, !3527, !3528}
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4417, file: !4418, line: 71, baseType: !4049, size: 64, offset: 704)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4018, file: !83, line: 785, baseType: !326, size: 64, offset: 5440)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4018, file: !83, line: 787, baseType: !4045, size: 64, offset: 5504)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4018, file: !83, line: 788, baseType: !4447, size: 64, offset: 5568)
!4447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4448, size: 64)
!4448 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !83, line: 46, flags: DIFlagFwdDecl)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4018, file: !83, line: 789, baseType: !4450, size: 64, offset: 5632)
!4450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4451, size: 64)
!4451 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !83, line: 48, flags: DIFlagFwdDecl)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4018, file: !83, line: 791, baseType: !4453, size: 64, offset: 5696)
!4453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4454, size: 64)
!4454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !83, line: 597, size: 128, elements: !4455)
!4455 = !{!4456, !4457, !4458, !4459, !4460}
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4454, file: !83, line: 598, baseType: !105, size: 32)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4454, file: !83, line: 599, baseType: !114, size: 32, offset: 32)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4454, file: !83, line: 600, baseType: !119, size: 32, offset: 64)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4454, file: !83, line: 601, baseType: !878, size: 8, offset: 96)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4454, file: !83, line: 602, baseType: !878, size: 8, offset: 104)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4018, file: !83, line: 793, baseType: !124, size: 32, offset: 5760)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4018, file: !83, line: 795, baseType: !878, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4018, file: !83, line: 796, baseType: !878, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4018, file: !83, line: 797, baseType: !878, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4018, file: !83, line: 798, baseType: !878, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4018, file: !83, line: 799, baseType: !878, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "work_buf", scope: !3991, file: !3982, line: 70, baseType: !155, size: 64, offset: 640)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !3991, file: !3982, line: 71, baseType: !4469, size: 640, offset: 704)
!4469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regmap_format", file: !3982, line: 30, size: 640, elements: !4470)
!4470 = !{!4471, !4472, !4473, !4474, !4475, !4476, !4480, !4484, !4485, !4489}
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !4469, file: !3982, line: 31, baseType: !322, size: 64)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "reg_bytes", scope: !4469, file: !3982, line: 32, baseType: !322, size: 64, offset: 64)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "pad_bytes", scope: !4469, file: !3982, line: 33, baseType: !322, size: 64, offset: 128)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "val_bytes", scope: !4469, file: !3982, line: 34, baseType: !322, size: 64, offset: 192)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "reg_shift", scope: !4469, file: !3982, line: 35, baseType: !3702, size: 8, offset: 256)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "format_write", scope: !4469, file: !3982, line: 36, baseType: !4477, size: 64, offset: 320)
!4477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4478, size: 64)
!4478 = !DISubroutineType(types: !4479)
!4479 = !{null, !3990, !13, !13}
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "format_reg", scope: !4469, file: !3982, line: 38, baseType: !4481, size: 64, offset: 384)
!4481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4482, size: 64)
!4482 = !DISubroutineType(types: !4483)
!4483 = !{null, !155, !13, !13}
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "format_val", scope: !4469, file: !3982, line: 39, baseType: !4481, size: 64, offset: 448)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "parse_val", scope: !4469, file: !3982, line: 40, baseType: !4486, size: 64, offset: 512)
!4486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4487, size: 64)
!4487 = !DISubroutineType(types: !4488)
!4488 = !{!13, !1209}
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "parse_inplace", scope: !4469, file: !3982, line: 41, baseType: !3085, size: 64, offset: 576)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3991, file: !3982, line: 72, baseType: !4491, size: 64, offset: 1344)
!4491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4492, size: 64)
!4492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4493)
!4493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regmap_bus", file: !12, line: 562, size: 1024, elements: !4494)
!4494 = !{!4495, !4496, !4497, !4502, !4507, !4518, !4523, !4528, !4533, !4538, !4543, !4548, !4550, !4555, !4556, !4557, !4558, !4559}
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "fast_io", scope: !4493, file: !12, line: 563, baseType: !878, size: 8)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "free_on_exit", scope: !4493, file: !12, line: 564, baseType: !878, size: 8, offset: 8)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4493, file: !12, line: 565, baseType: !4498, size: 64, offset: 64)
!4498 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_hw_write", file: !12, line: 499, baseType: !4499)
!4499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4500, size: 64)
!4500 = !DISubroutineType(types: !4501)
!4501 = !{!98, !155, !1209, !322}
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "gather_write", scope: !4493, file: !12, line: 566, baseType: !4503, size: 64, offset: 128)
!4503 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_hw_gather_write", file: !12, line: 501, baseType: !4504)
!4504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4505, size: 64)
!4505 = !DISubroutineType(types: !4506)
!4506 = !{!98, !155, !1209, !322, !1209, !322}
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "async_write", scope: !4493, file: !12, line: 567, baseType: !4508, size: 64, offset: 192)
!4508 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_hw_async_write", file: !12, line: 504, baseType: !4509)
!4509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4510, size: 64)
!4510 = !DISubroutineType(types: !4511)
!4511 = !{!98, !155, !1209, !322, !1209, !322, !4512}
!4512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4513, size: 64)
!4513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regmap_async", file: !3982, line: 44, size: 256, elements: !4514)
!4514 = !{!4515, !4516, !4517}
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4513, file: !3982, line: 45, baseType: !177, size: 128)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !4513, file: !3982, line: 46, baseType: !3990, size: 64, offset: 128)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "work_buf", scope: !4513, file: !3982, line: 47, baseType: !155, size: 64, offset: 192)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "reg_write", scope: !4493, file: !12, line: 568, baseType: !4519, size: 64, offset: 256)
!4519 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_hw_reg_write", file: !12, line: 515, baseType: !4520)
!4520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4521, size: 64)
!4521 = !DISubroutineType(types: !4522)
!4522 = !{!98, !155, !13, !13}
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "reg_noinc_write", scope: !4493, file: !12, line: 569, baseType: !4524, size: 64, offset: 320)
!4524 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_hw_reg_noinc_write", file: !12, line: 517, baseType: !4525)
!4525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4526, size: 64)
!4526 = !DISubroutineType(types: !4527)
!4527 = !{!98, !155, !13, !1209, !322}
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "reg_update_bits", scope: !4493, file: !12, line: 570, baseType: !4529, size: 64, offset: 384)
!4529 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_hw_reg_update_bits", file: !12, line: 519, baseType: !4530)
!4530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4531, size: 64)
!4531 = !DISubroutineType(types: !4532)
!4532 = !{!98, !155, !13, !13, !13}
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4493, file: !12, line: 571, baseType: !4534, size: 64, offset: 448)
!4534 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_hw_read", file: !12, line: 508, baseType: !4535)
!4535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4536, size: 64)
!4536 = !DISubroutineType(types: !4537)
!4537 = !{!98, !155, !1209, !322, !155, !322}
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "reg_read", scope: !4493, file: !12, line: 572, baseType: !4539, size: 64, offset: 512)
!4539 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_hw_reg_read", file: !12, line: 511, baseType: !4540)
!4540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4541, size: 64)
!4541 = !DISubroutineType(types: !4542)
!4542 = !{!98, !155, !13, !1689}
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "reg_noinc_read", scope: !4493, file: !12, line: 573, baseType: !4544, size: 64, offset: 576)
!4544 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_hw_reg_noinc_read", file: !12, line: 513, baseType: !4545)
!4545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4546, size: 64)
!4546 = !DISubroutineType(types: !4547)
!4547 = !{!98, !155, !13, !155, !322}
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "free_context", scope: !4493, file: !12, line: 574, baseType: !4549, size: 64, offset: 640)
!4549 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_hw_free_context", file: !12, line: 522, baseType: !3085)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "async_alloc", scope: !4493, file: !12, line: 575, baseType: !4551, size: 64, offset: 704)
!4551 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_hw_async_alloc", file: !12, line: 521, baseType: !4552)
!4552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4553, size: 64)
!4553 = !DISubroutineType(types: !4554)
!4554 = !{!4512}
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "read_flag_mask", scope: !4493, file: !12, line: 576, baseType: !233, size: 8, offset: 768)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "reg_format_endian_default", scope: !4493, file: !12, line: 577, baseType: !130, size: 32, offset: 800)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "val_format_endian_default", scope: !4493, file: !12, line: 578, baseType: !130, size: 32, offset: 832)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "max_raw_read", scope: !4493, file: !12, line: 579, baseType: !322, size: 64, offset: 896)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "max_raw_write", scope: !4493, file: !12, line: 580, baseType: !322, size: 64, offset: 960)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "bus_context", scope: !3991, file: !3982, line: 73, baseType: !155, size: 64, offset: 1408)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3991, file: !3982, line: 74, baseType: !194, size: 64, offset: 1472)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "async", scope: !3991, file: !3982, line: 76, baseType: !878, size: 8, offset: 1536)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "async_lock", scope: !3991, file: !3982, line: 77, baseType: !205, size: 32, offset: 1568)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "async_waitq", scope: !3991, file: !3982, line: 78, baseType: !754, size: 192, offset: 1600)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "async_list", scope: !3991, file: !3982, line: 79, baseType: !177, size: 128, offset: 1792)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "async_free", scope: !3991, file: !3982, line: 80, baseType: !177, size: 128, offset: 1920)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "async_ret", scope: !3991, file: !3982, line: 81, baseType: !98, size: 32, offset: 2048)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_disable", scope: !3991, file: !3982, line: 84, baseType: !878, size: 8, offset: 2080)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs", scope: !3991, file: !3982, line: 85, baseType: !389, size: 64, offset: 2112)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_name", scope: !3991, file: !3982, line: 86, baseType: !194, size: 64, offset: 2176)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_reg_len", scope: !3991, file: !3982, line: 88, baseType: !13, size: 32, offset: 2240)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_val_len", scope: !3991, file: !3982, line: 89, baseType: !13, size: 32, offset: 2272)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_tot_len", scope: !3991, file: !3982, line: 90, baseType: !13, size: 32, offset: 2304)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_off_cache", scope: !3991, file: !3982, line: 92, baseType: !177, size: 128, offset: 2368)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "cache_lock", scope: !3991, file: !3982, line: 93, baseType: !638, size: 256, offset: 2496)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "max_register", scope: !3991, file: !3982, line: 96, baseType: !13, size: 32, offset: 2752)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "writeable_reg", scope: !3991, file: !3982, line: 97, baseType: !4578, size: 64, offset: 2816)
!4578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4579, size: 64)
!4579 = !DISubroutineType(types: !4580)
!4580 = !{!878, !4017, !13}
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "readable_reg", scope: !3991, file: !3982, line: 98, baseType: !4578, size: 64, offset: 2880)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_reg", scope: !3991, file: !3982, line: 99, baseType: !4578, size: 64, offset: 2944)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "precious_reg", scope: !3991, file: !3982, line: 100, baseType: !4578, size: 64, offset: 3008)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "writeable_noinc_reg", scope: !3991, file: !3982, line: 101, baseType: !4578, size: 64, offset: 3072)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "readable_noinc_reg", scope: !3991, file: !3982, line: 102, baseType: !4578, size: 64, offset: 3136)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "wr_table", scope: !3991, file: !3982, line: 103, baseType: !4587, size: 64, offset: 3200)
!4587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4588, size: 64)
!4588 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4589)
!4589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regmap_access_table", file: !12, line: 237, size: 256, elements: !4590)
!4590 = !{!4591, !4598, !4599, !4600}
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "yes_ranges", scope: !4589, file: !12, line: 238, baseType: !4592, size: 64)
!4592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4593, size: 64)
!4593 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4594)
!4594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regmap_range", file: !12, line: 217, size: 64, elements: !4595)
!4595 = !{!4596, !4597}
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "range_min", scope: !4594, file: !12, line: 218, baseType: !13, size: 32)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "range_max", scope: !4594, file: !12, line: 219, baseType: !13, size: 32, offset: 32)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "n_yes_ranges", scope: !4589, file: !12, line: 239, baseType: !13, size: 32, offset: 64)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "no_ranges", scope: !4589, file: !12, line: 240, baseType: !4592, size: 64, offset: 128)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "n_no_ranges", scope: !4589, file: !12, line: 241, baseType: !13, size: 32, offset: 192)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "rd_table", scope: !3991, file: !3982, line: 104, baseType: !4587, size: 64, offset: 3264)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_table", scope: !3991, file: !3982, line: 105, baseType: !4587, size: 64, offset: 3328)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "precious_table", scope: !3991, file: !3982, line: 106, baseType: !4587, size: 64, offset: 3392)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "wr_noinc_table", scope: !3991, file: !3982, line: 107, baseType: !4587, size: 64, offset: 3456)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "rd_noinc_table", scope: !3991, file: !3982, line: 108, baseType: !4587, size: 64, offset: 3520)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "reg_read", scope: !3991, file: !3982, line: 110, baseType: !4540, size: 64, offset: 3584)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "reg_write", scope: !3991, file: !3982, line: 111, baseType: !4520, size: 64, offset: 3648)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "reg_update_bits", scope: !3991, file: !3982, line: 112, baseType: !4530, size: 64, offset: 3712)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3991, file: !3982, line: 115, baseType: !4535, size: 64, offset: 3776)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3991, file: !3982, line: 117, baseType: !4499, size: 64, offset: 3840)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "defer_caching", scope: !3991, file: !3982, line: 119, baseType: !878, size: 8, offset: 3904)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "read_flag_mask", scope: !3991, file: !3982, line: 121, baseType: !154, size: 64, offset: 3968)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "write_flag_mask", scope: !3991, file: !3982, line: 122, baseType: !154, size: 64, offset: 4032)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "reg_shift", scope: !3991, file: !3982, line: 125, baseType: !98, size: 32, offset: 4096)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "reg_stride", scope: !3991, file: !3982, line: 126, baseType: !98, size: 32, offset: 4128)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "reg_stride_order", scope: !3991, file: !3982, line: 127, baseType: !98, size: 32, offset: 4160)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "force_write_field", scope: !3991, file: !3982, line: 130, baseType: !878, size: 8, offset: 4192)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "cache_ops", scope: !3991, file: !3982, line: 133, baseType: !4619, size: 64, offset: 4224)
!4619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4620, size: 64)
!4620 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3981)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "cache_type", scope: !3991, file: !3982, line: 134, baseType: !11, size: 32, offset: 4288)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "cache_size_raw", scope: !3991, file: !3982, line: 137, baseType: !13, size: 32, offset: 4320)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "cache_word_size", scope: !3991, file: !3982, line: 139, baseType: !13, size: 32, offset: 4352)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "num_reg_defaults", scope: !3991, file: !3982, line: 141, baseType: !13, size: 32, offset: 4384)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "num_reg_defaults_raw", scope: !3991, file: !3982, line: 143, baseType: !13, size: 32, offset: 4416)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "cache_only", scope: !3991, file: !3982, line: 146, baseType: !878, size: 8, offset: 4448)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "cache_bypass", scope: !3991, file: !3982, line: 148, baseType: !878, size: 8, offset: 4456)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "cache_free", scope: !3991, file: !3982, line: 150, baseType: !878, size: 8, offset: 4464)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "reg_defaults", scope: !3991, file: !3982, line: 152, baseType: !4630, size: 64, offset: 4480)
!4630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4631, size: 64)
!4631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_default", file: !12, line: 74, size: 64, elements: !4632)
!4632 = !{!4633, !4634}
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !4631, file: !12, line: 75, baseType: !13, size: 32)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !4631, file: !12, line: 76, baseType: !13, size: 32, offset: 32)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "reg_defaults_raw", scope: !3991, file: !3982, line: 153, baseType: !1209, size: 64, offset: 4544)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !3991, file: !3982, line: 154, baseType: !155, size: 64, offset: 4608)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "cache_dirty", scope: !3991, file: !3982, line: 156, baseType: !878, size: 8, offset: 4672)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "no_sync_defaults", scope: !3991, file: !3982, line: 158, baseType: !878, size: 8, offset: 4680)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "patch", scope: !3991, file: !3982, line: 160, baseType: !4640, size: 64, offset: 4736)
!4640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4641, size: 64)
!4641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_sequence", file: !12, line: 89, size: 96, elements: !4642)
!4642 = !{!4643, !4644, !4645}
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !4641, file: !12, line: 90, baseType: !13, size: 32)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !4641, file: !12, line: 91, baseType: !13, size: 32, offset: 32)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "delay_us", scope: !4641, file: !12, line: 92, baseType: !13, size: 32, offset: 64)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "patch_regs", scope: !3991, file: !3982, line: 161, baseType: !98, size: 32, offset: 4800)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "use_single_read", scope: !3991, file: !3982, line: 164, baseType: !878, size: 8, offset: 4832)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "use_single_write", scope: !3991, file: !3982, line: 166, baseType: !878, size: 8, offset: 4840)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "can_multi_write", scope: !3991, file: !3982, line: 168, baseType: !878, size: 8, offset: 4848)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "max_raw_read", scope: !3991, file: !3982, line: 171, baseType: !322, size: 64, offset: 4864)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "max_raw_write", scope: !3991, file: !3982, line: 172, baseType: !322, size: 64, offset: 4928)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "range_tree", scope: !3991, file: !3982, line: 174, baseType: !1868, size: 64, offset: 4992)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "selector_work_buf", scope: !3991, file: !3982, line: 175, baseType: !155, size: 64, offset: 5056)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "hwlock", scope: !3991, file: !3982, line: 177, baseType: !4655, size: 64, offset: 5120)
!4655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4656, size: 64)
!4656 = !DICompositeType(tag: DW_TAG_structure_type, name: "hwspinlock", file: !3982, line: 177, flags: DIFlagFwdDecl)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "can_sleep", scope: !3991, file: !3982, line: 180, baseType: !878, size: 8, offset: 5184)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !3981, file: !3982, line: 187, baseType: !3987, size: 64, offset: 192)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_init", scope: !3981, file: !3982, line: 189, baseType: !4660, size: 64, offset: 256)
!4660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4661, size: 64)
!4661 = !DISubroutineType(types: !4662)
!4662 = !{null, !3990}
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3981, file: !3982, line: 191, baseType: !4664, size: 64, offset: 320)
!4664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4665, size: 64)
!4665 = !DISubroutineType(types: !4666)
!4666 = !{!98, !3990, !13, !1689}
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3981, file: !3982, line: 192, baseType: !4668, size: 64, offset: 384)
!4668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4669, size: 64)
!4669 = !DISubroutineType(types: !4670)
!4670 = !{!98, !3990, !13, !13}
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3981, file: !3982, line: 193, baseType: !4668, size: 64, offset: 448)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "drop", scope: !3981, file: !3982, line: 194, baseType: !4668, size: 64, offset: 512)
!4673 = !{i32 7, !"Dwarf Version", i32 5}
!4674 = !{i32 2, !"Debug Info Version", i32 3}
!4675 = !{i32 1, !"wchar_size", i32 2}
!4676 = !{i32 8, !"cf-protection-branch", i32 1}
!4677 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4678 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4679 = !{i32 1, !"Code Model", i32 2}
!4680 = !{i32 1, !"override-stack-alignment", i32 8}
!4681 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4682 = distinct !DISubprogram(name: "regcache_rbtree_init", scope: !2, file: !2, line: 184, type: !3988, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4683)
!4683 = !{!4684, !4685, !4691, !4692, !4693}
!4684 = !DILocalVariable(name: "map", arg: 1, scope: !4682, file: !2, line: 184, type: !3990)
!4685 = !DILocalVariable(name: "rbtree_ctx", scope: !4682, file: !2, line: 186, type: !4686)
!4686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4687, size: 64)
!4687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regcache_rbtree_ctx", file: !2, line: 34, size: 128, elements: !4688)
!4688 = !{!4689, !4690}
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4687, file: !2, line: 35, baseType: !1868, size: 64)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "cached_rbnode", scope: !4687, file: !2, line: 36, baseType: !156, size: 64, offset: 64)
!4691 = !DILocalVariable(name: "i", scope: !4682, file: !2, line: 187, type: !98)
!4692 = !DILocalVariable(name: "ret", scope: !4682, file: !2, line: 188, type: !98)
!4693 = !DILabel(scope: !4682, name: "err", file: !2, line: 208)
!4694 = !DILocation(line: 184, column: 48, scope: !4682)
!4695 = !DILocation(line: 186, column: 2, scope: !4682)
!4696 = !DILocation(line: 186, column: 30, scope: !4682)
!4697 = !DILocation(line: 187, column: 2, scope: !4682)
!4698 = !DILocation(line: 187, column: 6, scope: !4682)
!4699 = !DILocation(line: 188, column: 2, scope: !4682)
!4700 = !DILocation(line: 188, column: 6, scope: !4682)
!4701 = !DILocation(line: 190, column: 15, scope: !4682)
!4702 = !DILocation(line: 190, column: 2, scope: !4682)
!4703 = !DILocation(line: 190, column: 7, scope: !4682)
!4704 = !DILocation(line: 190, column: 13, scope: !4682)
!4705 = !DILocation(line: 191, column: 7, scope: !4706)
!4706 = distinct !DILexicalBlock(scope: !4682, file: !2, line: 191, column: 6)
!4707 = !DILocation(line: 191, column: 12, scope: !4706)
!4708 = !DILocation(line: 191, column: 6, scope: !4682)
!4709 = !DILocation(line: 192, column: 3, scope: !4706)
!4710 = !DILocation(line: 194, column: 15, scope: !4682)
!4711 = !DILocation(line: 194, column: 20, scope: !4682)
!4712 = !DILocation(line: 194, column: 13, scope: !4682)
!4713 = !DILocation(line: 195, column: 2, scope: !4682)
!4714 = !DILocation(line: 195, column: 14, scope: !4682)
!4715 = !DILocation(line: 195, column: 21, scope: !4682)
!4716 = !DILocation(line: 196, column: 2, scope: !4682)
!4717 = !DILocation(line: 196, column: 14, scope: !4682)
!4718 = !DILocation(line: 196, column: 28, scope: !4682)
!4719 = !DILocation(line: 198, column: 9, scope: !4720)
!4720 = distinct !DILexicalBlock(scope: !4682, file: !2, line: 198, column: 2)
!4721 = !DILocation(line: 198, column: 7, scope: !4720)
!4722 = !DILocation(line: 198, column: 14, scope: !4723)
!4723 = distinct !DILexicalBlock(scope: !4720, file: !2, line: 198, column: 2)
!4724 = !DILocation(line: 198, column: 18, scope: !4723)
!4725 = !DILocation(line: 198, column: 23, scope: !4723)
!4726 = !DILocation(line: 198, column: 16, scope: !4723)
!4727 = !DILocation(line: 198, column: 2, scope: !4720)
!4728 = !DILocation(line: 199, column: 31, scope: !4729)
!4729 = distinct !DILexicalBlock(scope: !4723, file: !2, line: 198, column: 46)
!4730 = !DILocation(line: 200, column: 10, scope: !4729)
!4731 = !DILocation(line: 200, column: 15, scope: !4729)
!4732 = !DILocation(line: 200, column: 28, scope: !4729)
!4733 = !DILocation(line: 200, column: 31, scope: !4729)
!4734 = !DILocation(line: 201, column: 10, scope: !4729)
!4735 = !DILocation(line: 201, column: 15, scope: !4729)
!4736 = !DILocation(line: 201, column: 28, scope: !4729)
!4737 = !DILocation(line: 201, column: 31, scope: !4729)
!4738 = !DILocation(line: 199, column: 9, scope: !4729)
!4739 = !DILocation(line: 199, column: 7, scope: !4729)
!4740 = !DILocation(line: 202, column: 7, scope: !4741)
!4741 = distinct !DILexicalBlock(scope: !4729, file: !2, line: 202, column: 7)
!4742 = !DILocation(line: 202, column: 7, scope: !4729)
!4743 = !DILocation(line: 203, column: 4, scope: !4741)
!4744 = !DILocation(line: 204, column: 2, scope: !4729)
!4745 = !DILocation(line: 198, column: 42, scope: !4723)
!4746 = !DILocation(line: 198, column: 2, scope: !4723)
!4747 = distinct !{!4747, !4727, !4748, !4749, !4750}
!4748 = !DILocation(line: 204, column: 2, scope: !4720)
!4749 = !{!"llvm.loop.mustprogress"}
!4750 = !{!"llvm.loop.unroll.disable"}
!4751 = !DILocation(line: 206, column: 2, scope: !4682)
!4752 = !DILocation(line: 208, column: 1, scope: !4682)
!4753 = !DILocation(line: 209, column: 23, scope: !4682)
!4754 = !DILocation(line: 209, column: 2, scope: !4682)
!4755 = !DILocation(line: 210, column: 9, scope: !4682)
!4756 = !DILocation(line: 210, column: 2, scope: !4682)
!4757 = !DILocation(line: 211, column: 1, scope: !4682)
!4758 = distinct !DISubprogram(name: "regcache_rbtree_exit", scope: !2, file: !2, line: 213, type: !3988, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4759)
!4759 = !{!4760, !4761, !4762, !4763, !4764}
!4760 = !DILocalVariable(name: "map", arg: 1, scope: !4758, file: !2, line: 213, type: !3990)
!4761 = !DILocalVariable(name: "next", scope: !4758, file: !2, line: 215, type: !170)
!4762 = !DILocalVariable(name: "rbtree_ctx", scope: !4758, file: !2, line: 216, type: !4686)
!4763 = !DILocalVariable(name: "rbtree_node", scope: !4758, file: !2, line: 217, type: !156)
!4764 = !DILocalVariable(name: "__mptr", scope: !4765, file: !2, line: 227, type: !155)
!4765 = distinct !DILexicalBlock(scope: !4766, file: !2, line: 227, column: 17)
!4766 = distinct !DILexicalBlock(scope: !4758, file: !2, line: 226, column: 15)
!4767 = !DILocation(line: 213, column: 48, scope: !4758)
!4768 = !DILocation(line: 215, column: 2, scope: !4758)
!4769 = !DILocation(line: 215, column: 18, scope: !4758)
!4770 = !DILocation(line: 216, column: 2, scope: !4758)
!4771 = !DILocation(line: 216, column: 30, scope: !4758)
!4772 = !DILocation(line: 217, column: 2, scope: !4758)
!4773 = !DILocation(line: 217, column: 31, scope: !4758)
!4774 = !DILocation(line: 220, column: 15, scope: !4758)
!4775 = !DILocation(line: 220, column: 20, scope: !4758)
!4776 = !DILocation(line: 220, column: 13, scope: !4758)
!4777 = !DILocation(line: 221, column: 7, scope: !4778)
!4778 = distinct !DILexicalBlock(scope: !4758, file: !2, line: 221, column: 6)
!4779 = !DILocation(line: 221, column: 6, scope: !4758)
!4780 = !DILocation(line: 222, column: 3, scope: !4778)
!4781 = !DILocation(line: 225, column: 19, scope: !4758)
!4782 = !DILocation(line: 225, column: 31, scope: !4758)
!4783 = !DILocation(line: 225, column: 9, scope: !4758)
!4784 = !DILocation(line: 225, column: 7, scope: !4758)
!4785 = !DILocation(line: 226, column: 2, scope: !4758)
!4786 = !DILocation(line: 226, column: 9, scope: !4758)
!4787 = !DILocation(line: 227, column: 17, scope: !4765)
!4788 = !DILocation(line: 227, column: 17, scope: !4766)
!4789 = !DILocation(line: 227, column: 15, scope: !4766)
!4790 = !DILocation(line: 228, column: 19, scope: !4766)
!4791 = !DILocation(line: 228, column: 32, scope: !4766)
!4792 = !DILocation(line: 228, column: 10, scope: !4766)
!4793 = !DILocation(line: 228, column: 8, scope: !4766)
!4794 = !DILocation(line: 229, column: 13, scope: !4766)
!4795 = !DILocation(line: 229, column: 26, scope: !4766)
!4796 = !DILocation(line: 229, column: 33, scope: !4766)
!4797 = !DILocation(line: 229, column: 45, scope: !4766)
!4798 = !DILocation(line: 229, column: 3, scope: !4766)
!4799 = !DILocation(line: 230, column: 9, scope: !4766)
!4800 = !DILocation(line: 230, column: 22, scope: !4766)
!4801 = !DILocation(line: 230, column: 3, scope: !4766)
!4802 = !DILocation(line: 231, column: 9, scope: !4766)
!4803 = !DILocation(line: 231, column: 22, scope: !4766)
!4804 = !DILocation(line: 231, column: 3, scope: !4766)
!4805 = !DILocation(line: 232, column: 9, scope: !4766)
!4806 = !DILocation(line: 232, column: 3, scope: !4766)
!4807 = distinct !{!4807, !4785, !4808, !4749, !4750}
!4808 = !DILocation(line: 233, column: 2, scope: !4758)
!4809 = !DILocation(line: 236, column: 8, scope: !4758)
!4810 = !DILocation(line: 236, column: 13, scope: !4758)
!4811 = !DILocation(line: 236, column: 2, scope: !4758)
!4812 = !DILocation(line: 237, column: 2, scope: !4758)
!4813 = !DILocation(line: 237, column: 7, scope: !4758)
!4814 = !DILocation(line: 237, column: 13, scope: !4758)
!4815 = !DILocation(line: 239, column: 2, scope: !4758)
!4816 = !DILocation(line: 240, column: 1, scope: !4758)
!4817 = distinct !DISubprogram(name: "rbtree_debugfs_init", scope: !2, file: !2, line: 178, type: !4661, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4818)
!4818 = !{!4819}
!4819 = !DILocalVariable(name: "map", arg: 1, scope: !4817, file: !2, line: 178, type: !3990)
!4820 = !DILocation(line: 178, column: 48, scope: !4817)
!4821 = !DILocation(line: 180, column: 38, scope: !4817)
!4822 = !DILocation(line: 180, column: 43, scope: !4817)
!4823 = !DILocation(line: 180, column: 52, scope: !4817)
!4824 = !DILocation(line: 180, column: 2, scope: !4817)
!4825 = !DILocation(line: 181, column: 1, scope: !4817)
!4826 = distinct !DISubprogram(name: "regcache_rbtree_read", scope: !2, file: !2, line: 242, type: !4665, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4827)
!4827 = !{!4828, !4829, !4830, !4831, !4832}
!4828 = !DILocalVariable(name: "map", arg: 1, scope: !4826, file: !2, line: 242, type: !3990)
!4829 = !DILocalVariable(name: "reg", arg: 2, scope: !4826, file: !2, line: 243, type: !13)
!4830 = !DILocalVariable(name: "value", arg: 3, scope: !4826, file: !2, line: 243, type: !1689)
!4831 = !DILocalVariable(name: "rbnode", scope: !4826, file: !2, line: 245, type: !156)
!4832 = !DILocalVariable(name: "reg_tmp", scope: !4826, file: !2, line: 246, type: !13)
!4833 = !DILocation(line: 242, column: 48, scope: !4826)
!4834 = !DILocation(line: 243, column: 18, scope: !4826)
!4835 = !DILocation(line: 243, column: 37, scope: !4826)
!4836 = !DILocation(line: 245, column: 2, scope: !4826)
!4837 = !DILocation(line: 245, column: 31, scope: !4826)
!4838 = !DILocation(line: 246, column: 2, scope: !4826)
!4839 = !DILocation(line: 246, column: 15, scope: !4826)
!4840 = !DILocation(line: 248, column: 34, scope: !4826)
!4841 = !DILocation(line: 248, column: 39, scope: !4826)
!4842 = !DILocation(line: 248, column: 11, scope: !4826)
!4843 = !DILocation(line: 248, column: 9, scope: !4826)
!4844 = !DILocation(line: 249, column: 6, scope: !4845)
!4845 = distinct !DILexicalBlock(scope: !4826, file: !2, line: 249, column: 6)
!4846 = !DILocation(line: 249, column: 6, scope: !4826)
!4847 = !DILocation(line: 250, column: 14, scope: !4848)
!4848 = distinct !DILexicalBlock(scope: !4845, file: !2, line: 249, column: 14)
!4849 = !DILocation(line: 250, column: 20, scope: !4848)
!4850 = !DILocation(line: 250, column: 28, scope: !4848)
!4851 = !DILocation(line: 250, column: 18, scope: !4848)
!4852 = !DILocation(line: 250, column: 40, scope: !4848)
!4853 = !DILocation(line: 250, column: 45, scope: !4848)
!4854 = !DILocation(line: 250, column: 38, scope: !4848)
!4855 = !DILocation(line: 250, column: 11, scope: !4848)
!4856 = !DILocation(line: 251, column: 8, scope: !4857)
!4857 = distinct !DILexicalBlock(scope: !4848, file: !2, line: 251, column: 7)
!4858 = !DILocation(line: 251, column: 7, scope: !4848)
!4859 = !DILocation(line: 252, column: 4, scope: !4857)
!4860 = !DILocation(line: 253, column: 41, scope: !4848)
!4861 = !DILocation(line: 253, column: 46, scope: !4848)
!4862 = !DILocation(line: 253, column: 54, scope: !4848)
!4863 = !DILocation(line: 253, column: 12, scope: !4848)
!4864 = !DILocation(line: 253, column: 4, scope: !4848)
!4865 = !DILocation(line: 253, column: 10, scope: !4848)
!4866 = !DILocation(line: 254, column: 2, scope: !4848)
!4867 = !DILocation(line: 255, column: 3, scope: !4868)
!4868 = distinct !DILexicalBlock(scope: !4845, file: !2, line: 254, column: 9)
!4869 = !DILocation(line: 258, column: 2, scope: !4826)
!4870 = !DILocation(line: 259, column: 1, scope: !4826)
!4871 = distinct !DISubprogram(name: "regcache_rbtree_write", scope: !2, file: !2, line: 368, type: !4669, scopeLine: 370, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4872)
!4872 = !{!4873, !4874, !4875, !4876, !4877, !4878, !4879, !4880, !4881, !4882, !4885, !4886, !4887, !4888, !4889, !4890, !4891, !4892, !4893, !4896, !4902, !4903, !4905}
!4873 = !DILocalVariable(name: "map", arg: 1, scope: !4871, file: !2, line: 368, type: !3990)
!4874 = !DILocalVariable(name: "reg", arg: 2, scope: !4871, file: !2, line: 368, type: !13)
!4875 = !DILocalVariable(name: "value", arg: 3, scope: !4871, file: !2, line: 369, type: !13)
!4876 = !DILocalVariable(name: "rbtree_ctx", scope: !4871, file: !2, line: 371, type: !4686)
!4877 = !DILocalVariable(name: "rbnode", scope: !4871, file: !2, line: 372, type: !156)
!4878 = !DILocalVariable(name: "rbnode_tmp", scope: !4871, file: !2, line: 372, type: !156)
!4879 = !DILocalVariable(name: "node", scope: !4871, file: !2, line: 373, type: !170)
!4880 = !DILocalVariable(name: "reg_tmp", scope: !4871, file: !2, line: 374, type: !13)
!4881 = !DILocalVariable(name: "ret", scope: !4871, file: !2, line: 375, type: !98)
!4882 = !DILocalVariable(name: "base_reg", scope: !4883, file: !2, line: 387, type: !13)
!4883 = distinct !DILexicalBlock(scope: !4884, file: !2, line: 386, column: 9)
!4884 = distinct !DILexicalBlock(scope: !4871, file: !2, line: 383, column: 6)
!4885 = !DILocalVariable(name: "top_reg", scope: !4883, file: !2, line: 387, type: !13)
!4886 = !DILocalVariable(name: "new_base_reg", scope: !4883, file: !2, line: 388, type: !13)
!4887 = !DILocalVariable(name: "new_top_reg", scope: !4883, file: !2, line: 388, type: !13)
!4888 = !DILocalVariable(name: "min", scope: !4883, file: !2, line: 389, type: !13)
!4889 = !DILocalVariable(name: "max", scope: !4883, file: !2, line: 389, type: !13)
!4890 = !DILocalVariable(name: "max_dist", scope: !4883, file: !2, line: 390, type: !13)
!4891 = !DILocalVariable(name: "dist", scope: !4883, file: !2, line: 391, type: !13)
!4892 = !DILocalVariable(name: "best_dist", scope: !4883, file: !2, line: 391, type: !13)
!4893 = !DILocalVariable(name: "__mptr", scope: !4894, file: !2, line: 404, type: !155)
!4894 = distinct !DILexicalBlock(scope: !4895, file: !2, line: 404, column: 17)
!4895 = distinct !DILexicalBlock(scope: !4883, file: !2, line: 403, column: 16)
!4896 = !DILocalVariable(name: "__UNIQUE_ID___x267", scope: !4897, file: !2, line: 420, type: !13)
!4897 = distinct !DILexicalBlock(scope: !4898, file: !2, line: 420, column: 21)
!4898 = distinct !DILexicalBlock(scope: !4899, file: !2, line: 417, column: 27)
!4899 = distinct !DILexicalBlock(scope: !4900, file: !2, line: 417, column: 9)
!4900 = distinct !DILexicalBlock(scope: !4901, file: !2, line: 410, column: 43)
!4901 = distinct !DILexicalBlock(scope: !4895, file: !2, line: 410, column: 8)
!4902 = !DILocalVariable(name: "__UNIQUE_ID___y268", scope: !4897, file: !2, line: 420, type: !13)
!4903 = !DILocalVariable(name: "__UNIQUE_ID___x269", scope: !4904, file: !2, line: 421, type: !13)
!4904 = distinct !DILexicalBlock(scope: !4898, file: !2, line: 421, column: 20)
!4905 = !DILocalVariable(name: "__UNIQUE_ID___y270", scope: !4904, file: !2, line: 421, type: !13)
!4906 = !DILocation(line: 368, column: 49, scope: !4871)
!4907 = !DILocation(line: 368, column: 67, scope: !4871)
!4908 = !DILocation(line: 369, column: 19, scope: !4871)
!4909 = !DILocation(line: 371, column: 2, scope: !4871)
!4910 = !DILocation(line: 371, column: 30, scope: !4871)
!4911 = !DILocation(line: 372, column: 2, scope: !4871)
!4912 = !DILocation(line: 372, column: 31, scope: !4871)
!4913 = !DILocation(line: 372, column: 40, scope: !4871)
!4914 = !DILocation(line: 373, column: 2, scope: !4871)
!4915 = !DILocation(line: 373, column: 18, scope: !4871)
!4916 = !DILocation(line: 374, column: 2, scope: !4871)
!4917 = !DILocation(line: 374, column: 15, scope: !4871)
!4918 = !DILocation(line: 375, column: 2, scope: !4871)
!4919 = !DILocation(line: 375, column: 6, scope: !4871)
!4920 = !DILocation(line: 377, column: 15, scope: !4871)
!4921 = !DILocation(line: 377, column: 20, scope: !4871)
!4922 = !DILocation(line: 377, column: 13, scope: !4871)
!4923 = !DILocation(line: 382, column: 34, scope: !4871)
!4924 = !DILocation(line: 382, column: 39, scope: !4871)
!4925 = !DILocation(line: 382, column: 11, scope: !4871)
!4926 = !DILocation(line: 382, column: 9, scope: !4871)
!4927 = !DILocation(line: 383, column: 6, scope: !4884)
!4928 = !DILocation(line: 383, column: 6, scope: !4871)
!4929 = !DILocation(line: 384, column: 14, scope: !4930)
!4930 = distinct !DILexicalBlock(scope: !4884, file: !2, line: 383, column: 14)
!4931 = !DILocation(line: 384, column: 20, scope: !4930)
!4932 = !DILocation(line: 384, column: 28, scope: !4930)
!4933 = !DILocation(line: 384, column: 18, scope: !4930)
!4934 = !DILocation(line: 384, column: 40, scope: !4930)
!4935 = !DILocation(line: 384, column: 45, scope: !4930)
!4936 = !DILocation(line: 384, column: 38, scope: !4930)
!4937 = !DILocation(line: 384, column: 11, scope: !4930)
!4938 = !DILocation(line: 385, column: 32, scope: !4930)
!4939 = !DILocation(line: 385, column: 37, scope: !4930)
!4940 = !DILocation(line: 385, column: 45, scope: !4930)
!4941 = !DILocation(line: 385, column: 54, scope: !4930)
!4942 = !DILocation(line: 385, column: 3, scope: !4930)
!4943 = !DILocation(line: 386, column: 2, scope: !4930)
!4944 = !DILocation(line: 387, column: 3, scope: !4883)
!4945 = !DILocation(line: 387, column: 16, scope: !4883)
!4946 = !DILocation(line: 387, column: 26, scope: !4883)
!4947 = !DILocation(line: 388, column: 3, scope: !4883)
!4948 = !DILocation(line: 388, column: 16, scope: !4883)
!4949 = !DILocation(line: 388, column: 30, scope: !4883)
!4950 = !DILocation(line: 389, column: 3, scope: !4883)
!4951 = !DILocation(line: 389, column: 16, scope: !4883)
!4952 = !DILocation(line: 389, column: 21, scope: !4883)
!4953 = !DILocation(line: 390, column: 3, scope: !4883)
!4954 = !DILocation(line: 390, column: 16, scope: !4883)
!4955 = !DILocation(line: 391, column: 3, scope: !4883)
!4956 = !DILocation(line: 391, column: 16, scope: !4883)
!4957 = !DILocation(line: 391, column: 22, scope: !4883)
!4958 = !DILocation(line: 393, column: 14, scope: !4883)
!4959 = !DILocation(line: 393, column: 19, scope: !4883)
!4960 = !DILocation(line: 393, column: 30, scope: !4883)
!4961 = !DILocation(line: 394, column: 4, scope: !4883)
!4962 = !DILocation(line: 394, column: 9, scope: !4883)
!4963 = !DILocation(line: 393, column: 52, scope: !4883)
!4964 = !DILocation(line: 393, column: 12, scope: !4883)
!4965 = !DILocation(line: 395, column: 7, scope: !4966)
!4966 = distinct !DILexicalBlock(scope: !4883, file: !2, line: 395, column: 7)
!4967 = !DILocation(line: 395, column: 13, scope: !4966)
!4968 = !DILocation(line: 395, column: 11, scope: !4966)
!4969 = !DILocation(line: 395, column: 7, scope: !4883)
!4970 = !DILocation(line: 396, column: 8, scope: !4966)
!4971 = !DILocation(line: 396, column: 4, scope: !4966)
!4972 = !DILocation(line: 398, column: 10, scope: !4966)
!4973 = !DILocation(line: 398, column: 16, scope: !4966)
!4974 = !DILocation(line: 398, column: 14, scope: !4966)
!4975 = !DILocation(line: 398, column: 8, scope: !4966)
!4976 = !DILocation(line: 399, column: 9, scope: !4883)
!4977 = !DILocation(line: 399, column: 15, scope: !4883)
!4978 = !DILocation(line: 399, column: 13, scope: !4883)
!4979 = !DILocation(line: 399, column: 7, scope: !4883)
!4980 = !DILocation(line: 402, column: 10, scope: !4883)
!4981 = !DILocation(line: 402, column: 22, scope: !4883)
!4982 = !DILocation(line: 402, column: 27, scope: !4883)
!4983 = !DILocation(line: 402, column: 8, scope: !4883)
!4984 = !DILocation(line: 403, column: 3, scope: !4883)
!4985 = !DILocation(line: 403, column: 10, scope: !4883)
!4986 = !DILocation(line: 404, column: 17, scope: !4894)
!4987 = !DILocation(line: 404, column: 17, scope: !4895)
!4988 = !DILocation(line: 404, column: 15, scope: !4895)
!4989 = !DILocation(line: 407, column: 37, scope: !4895)
!4990 = !DILocation(line: 407, column: 42, scope: !4895)
!4991 = !DILocation(line: 407, column: 4, scope: !4895)
!4992 = !DILocation(line: 410, column: 8, scope: !4901)
!4993 = !DILocation(line: 410, column: 20, scope: !4901)
!4994 = !DILocation(line: 410, column: 17, scope: !4901)
!4995 = !DILocation(line: 410, column: 24, scope: !4901)
!4996 = !DILocation(line: 410, column: 27, scope: !4901)
!4997 = !DILocation(line: 410, column: 38, scope: !4901)
!4998 = !DILocation(line: 410, column: 35, scope: !4901)
!4999 = !DILocation(line: 410, column: 8, scope: !4895)
!5000 = !DILocation(line: 411, column: 9, scope: !5001)
!5001 = distinct !DILexicalBlock(scope: !4900, file: !2, line: 411, column: 9)
!5002 = !DILocation(line: 411, column: 15, scope: !5001)
!5003 = !DILocation(line: 411, column: 13, scope: !5001)
!5004 = !DILocation(line: 411, column: 9, scope: !4900)
!5005 = !DILocation(line: 412, column: 13, scope: !5001)
!5006 = !DILocation(line: 412, column: 24, scope: !5001)
!5007 = !DILocation(line: 412, column: 22, scope: !5001)
!5008 = !DILocation(line: 412, column: 11, scope: !5001)
!5009 = !DILocation(line: 412, column: 6, scope: !5001)
!5010 = !DILocation(line: 413, column: 14, scope: !5011)
!5011 = distinct !DILexicalBlock(scope: !5001, file: !2, line: 413, column: 14)
!5012 = !DILocation(line: 413, column: 20, scope: !5011)
!5013 = !DILocation(line: 413, column: 18, scope: !5011)
!5014 = !DILocation(line: 413, column: 14, scope: !5001)
!5015 = !DILocation(line: 414, column: 13, scope: !5011)
!5016 = !DILocation(line: 414, column: 19, scope: !5011)
!5017 = !DILocation(line: 414, column: 17, scope: !5011)
!5018 = !DILocation(line: 414, column: 11, scope: !5011)
!5019 = !DILocation(line: 414, column: 6, scope: !5011)
!5020 = !DILocation(line: 416, column: 11, scope: !5011)
!5021 = !DILocation(line: 417, column: 9, scope: !4899)
!5022 = !DILocation(line: 417, column: 16, scope: !4899)
!5023 = !DILocation(line: 417, column: 14, scope: !4899)
!5024 = !DILocation(line: 417, column: 9, scope: !4900)
!5025 = !DILocation(line: 418, column: 15, scope: !4898)
!5026 = !DILocation(line: 418, column: 13, scope: !4898)
!5027 = !DILocation(line: 419, column: 18, scope: !4898)
!5028 = !DILocation(line: 419, column: 16, scope: !4898)
!5029 = !DILocation(line: 420, column: 21, scope: !4897)
!5030 = !DILocation(line: 420, column: 21, scope: !4898)
!5031 = !DILocation(line: 420, column: 19, scope: !4898)
!5032 = !DILocation(line: 421, column: 20, scope: !4904)
!5033 = !DILocation(line: 421, column: 20, scope: !4898)
!5034 = !DILocation(line: 421, column: 18, scope: !4898)
!5035 = !DILocation(line: 422, column: 5, scope: !4898)
!5036 = !DILocation(line: 423, column: 4, scope: !4900)
!5037 = !DILocation(line: 430, column: 8, scope: !5038)
!5038 = distinct !DILexicalBlock(scope: !4895, file: !2, line: 430, column: 8)
!5039 = !DILocation(line: 430, column: 14, scope: !5038)
!5040 = !DILocation(line: 430, column: 12, scope: !5038)
!5041 = !DILocation(line: 430, column: 8, scope: !4895)
!5042 = !DILocation(line: 431, column: 12, scope: !5038)
!5043 = !DILocation(line: 431, column: 18, scope: !5038)
!5044 = !DILocation(line: 431, column: 10, scope: !5038)
!5045 = !DILocation(line: 431, column: 5, scope: !5038)
!5046 = !DILocation(line: 432, column: 13, scope: !5047)
!5047 = distinct !DILexicalBlock(scope: !5038, file: !2, line: 432, column: 13)
!5048 = !DILocation(line: 432, column: 19, scope: !5047)
!5049 = !DILocation(line: 432, column: 17, scope: !5047)
!5050 = !DILocation(line: 432, column: 13, scope: !5038)
!5051 = !DILocation(line: 433, column: 12, scope: !5047)
!5052 = !DILocation(line: 433, column: 18, scope: !5047)
!5053 = !DILocation(line: 433, column: 10, scope: !5047)
!5054 = !DILocation(line: 433, column: 5, scope: !5047)
!5055 = !DILocation(line: 435, column: 5, scope: !5047)
!5056 = distinct !{!5056, !4984, !5057, !4749, !4750}
!5057 = !DILocation(line: 436, column: 3, scope: !4883)
!5058 = !DILocation(line: 438, column: 7, scope: !5059)
!5059 = distinct !DILexicalBlock(scope: !4883, file: !2, line: 438, column: 7)
!5060 = !DILocation(line: 438, column: 7, scope: !4883)
!5061 = !DILocation(line: 439, column: 42, scope: !5062)
!5062 = distinct !DILexicalBlock(scope: !5059, file: !2, line: 438, column: 15)
!5063 = !DILocation(line: 439, column: 47, scope: !5062)
!5064 = !DILocation(line: 440, column: 14, scope: !5062)
!5065 = !DILocation(line: 441, column: 14, scope: !5062)
!5066 = !DILocation(line: 441, column: 27, scope: !5062)
!5067 = !DILocation(line: 442, column: 14, scope: !5062)
!5068 = !DILocation(line: 439, column: 10, scope: !5062)
!5069 = !DILocation(line: 439, column: 8, scope: !5062)
!5070 = !DILocation(line: 443, column: 8, scope: !5071)
!5071 = distinct !DILexicalBlock(scope: !5062, file: !2, line: 443, column: 8)
!5072 = !DILocation(line: 443, column: 8, scope: !5062)
!5073 = !DILocation(line: 444, column: 12, scope: !5071)
!5074 = !DILocation(line: 444, column: 5, scope: !5071)
!5075 = !DILocation(line: 445, column: 32, scope: !5062)
!5076 = !DILocation(line: 445, column: 4, scope: !5062)
!5077 = !DILocation(line: 445, column: 16, scope: !5062)
!5078 = !DILocation(line: 445, column: 30, scope: !5062)
!5079 = !DILocation(line: 446, column: 4, scope: !5062)
!5080 = !DILocation(line: 452, column: 39, scope: !4883)
!5081 = !DILocation(line: 452, column: 44, scope: !4883)
!5082 = !DILocation(line: 452, column: 12, scope: !4883)
!5083 = !DILocation(line: 452, column: 10, scope: !4883)
!5084 = !DILocation(line: 453, column: 8, scope: !5085)
!5085 = distinct !DILexicalBlock(scope: !4883, file: !2, line: 453, column: 7)
!5086 = !DILocation(line: 453, column: 7, scope: !4883)
!5087 = !DILocation(line: 454, column: 4, scope: !5085)
!5088 = !DILocation(line: 455, column: 32, scope: !4883)
!5089 = !DILocation(line: 455, column: 37, scope: !4883)
!5090 = !DILocation(line: 456, column: 12, scope: !4883)
!5091 = !DILocation(line: 456, column: 18, scope: !4883)
!5092 = !DILocation(line: 456, column: 26, scope: !4883)
!5093 = !DILocation(line: 456, column: 16, scope: !4883)
!5094 = !DILocation(line: 456, column: 38, scope: !4883)
!5095 = !DILocation(line: 456, column: 43, scope: !4883)
!5096 = !DILocation(line: 456, column: 36, scope: !4883)
!5097 = !DILocation(line: 457, column: 11, scope: !4883)
!5098 = !DILocation(line: 455, column: 3, scope: !4883)
!5099 = !DILocation(line: 458, column: 26, scope: !4883)
!5100 = !DILocation(line: 458, column: 32, scope: !4883)
!5101 = !DILocation(line: 458, column: 44, scope: !4883)
!5102 = !DILocation(line: 458, column: 50, scope: !4883)
!5103 = !DILocation(line: 458, column: 3, scope: !4883)
!5104 = !DILocation(line: 459, column: 31, scope: !4883)
!5105 = !DILocation(line: 459, column: 3, scope: !4883)
!5106 = !DILocation(line: 459, column: 15, scope: !4883)
!5107 = !DILocation(line: 459, column: 29, scope: !4883)
!5108 = !DILocation(line: 460, column: 2, scope: !4884)
!5109 = !DILocation(line: 462, column: 2, scope: !4871)
!5110 = !DILocation(line: 463, column: 1, scope: !4871)
!5111 = distinct !DISubprogram(name: "regcache_rbtree_sync", scope: !2, file: !2, line: 465, type: !4669, scopeLine: 467, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5112)
!5112 = !{!5113, !5114, !5115, !5116, !5117, !5118, !5119, !5120, !5121, !5122, !5123, !5124}
!5113 = !DILocalVariable(name: "map", arg: 1, scope: !5111, file: !2, line: 465, type: !3990)
!5114 = !DILocalVariable(name: "min", arg: 2, scope: !5111, file: !2, line: 465, type: !13)
!5115 = !DILocalVariable(name: "max", arg: 3, scope: !5111, file: !2, line: 466, type: !13)
!5116 = !DILocalVariable(name: "rbtree_ctx", scope: !5111, file: !2, line: 468, type: !4686)
!5117 = !DILocalVariable(name: "node", scope: !5111, file: !2, line: 469, type: !170)
!5118 = !DILocalVariable(name: "rbnode", scope: !5111, file: !2, line: 470, type: !156)
!5119 = !DILocalVariable(name: "base_reg", scope: !5111, file: !2, line: 471, type: !13)
!5120 = !DILocalVariable(name: "top_reg", scope: !5111, file: !2, line: 471, type: !13)
!5121 = !DILocalVariable(name: "start", scope: !5111, file: !2, line: 472, type: !13)
!5122 = !DILocalVariable(name: "end", scope: !5111, file: !2, line: 472, type: !13)
!5123 = !DILocalVariable(name: "ret", scope: !5111, file: !2, line: 473, type: !98)
!5124 = !DILocalVariable(name: "__mptr", scope: !5125, file: !2, line: 479, type: !155)
!5125 = distinct !DILexicalBlock(scope: !5126, file: !2, line: 479, column: 12)
!5126 = distinct !DILexicalBlock(scope: !5127, file: !2, line: 478, column: 71)
!5127 = distinct !DILexicalBlock(scope: !5128, file: !2, line: 478, column: 2)
!5128 = distinct !DILexicalBlock(scope: !5111, file: !2, line: 478, column: 2)
!5129 = !DILocation(line: 465, column: 48, scope: !5111)
!5130 = !DILocation(line: 465, column: 66, scope: !5111)
!5131 = !DILocation(line: 466, column: 18, scope: !5111)
!5132 = !DILocation(line: 468, column: 2, scope: !5111)
!5133 = !DILocation(line: 468, column: 30, scope: !5111)
!5134 = !DILocation(line: 469, column: 2, scope: !5111)
!5135 = !DILocation(line: 469, column: 18, scope: !5111)
!5136 = !DILocation(line: 470, column: 2, scope: !5111)
!5137 = !DILocation(line: 470, column: 31, scope: !5111)
!5138 = !DILocation(line: 471, column: 2, scope: !5111)
!5139 = !DILocation(line: 471, column: 15, scope: !5111)
!5140 = !DILocation(line: 471, column: 25, scope: !5111)
!5141 = !DILocation(line: 472, column: 2, scope: !5111)
!5142 = !DILocation(line: 472, column: 15, scope: !5111)
!5143 = !DILocation(line: 472, column: 22, scope: !5111)
!5144 = !DILocation(line: 473, column: 2, scope: !5111)
!5145 = !DILocation(line: 473, column: 6, scope: !5111)
!5146 = !DILocation(line: 475, column: 2, scope: !5111)
!5147 = !DILocation(line: 475, column: 7, scope: !5111)
!5148 = !DILocation(line: 475, column: 13, scope: !5111)
!5149 = !DILocation(line: 477, column: 15, scope: !5111)
!5150 = !DILocation(line: 477, column: 20, scope: !5111)
!5151 = !DILocation(line: 477, column: 13, scope: !5111)
!5152 = !DILocation(line: 478, column: 24, scope: !5128)
!5153 = !DILocation(line: 478, column: 36, scope: !5128)
!5154 = !DILocation(line: 478, column: 14, scope: !5128)
!5155 = !DILocation(line: 478, column: 12, scope: !5128)
!5156 = !DILocation(line: 478, column: 7, scope: !5128)
!5157 = !DILocation(line: 478, column: 43, scope: !5127)
!5158 = !DILocation(line: 478, column: 2, scope: !5128)
!5159 = !DILocation(line: 479, column: 12, scope: !5125)
!5160 = !DILocation(line: 479, column: 12, scope: !5126)
!5161 = !DILocation(line: 479, column: 10, scope: !5126)
!5162 = !DILocation(line: 481, column: 36, scope: !5126)
!5163 = !DILocation(line: 481, column: 41, scope: !5126)
!5164 = !DILocation(line: 481, column: 3, scope: !5126)
!5165 = !DILocation(line: 483, column: 7, scope: !5166)
!5166 = distinct !DILexicalBlock(scope: !5126, file: !2, line: 483, column: 7)
!5167 = !DILocation(line: 483, column: 18, scope: !5166)
!5168 = !DILocation(line: 483, column: 16, scope: !5166)
!5169 = !DILocation(line: 483, column: 7, scope: !5126)
!5170 = !DILocation(line: 484, column: 4, scope: !5166)
!5171 = !DILocation(line: 485, column: 7, scope: !5172)
!5172 = distinct !DILexicalBlock(scope: !5126, file: !2, line: 485, column: 7)
!5173 = !DILocation(line: 485, column: 17, scope: !5172)
!5174 = !DILocation(line: 485, column: 15, scope: !5172)
!5175 = !DILocation(line: 485, column: 7, scope: !5126)
!5176 = !DILocation(line: 486, column: 4, scope: !5172)
!5177 = !DILocation(line: 488, column: 7, scope: !5178)
!5178 = distinct !DILexicalBlock(scope: !5126, file: !2, line: 488, column: 7)
!5179 = !DILocation(line: 488, column: 13, scope: !5178)
!5180 = !DILocation(line: 488, column: 11, scope: !5178)
!5181 = !DILocation(line: 488, column: 7, scope: !5126)
!5182 = !DILocation(line: 489, column: 13, scope: !5178)
!5183 = !DILocation(line: 489, column: 19, scope: !5178)
!5184 = !DILocation(line: 489, column: 17, scope: !5178)
!5185 = !DILocation(line: 489, column: 31, scope: !5178)
!5186 = !DILocation(line: 489, column: 36, scope: !5178)
!5187 = !DILocation(line: 489, column: 29, scope: !5178)
!5188 = !DILocation(line: 489, column: 10, scope: !5178)
!5189 = !DILocation(line: 489, column: 4, scope: !5178)
!5190 = !DILocation(line: 491, column: 10, scope: !5178)
!5191 = !DILocation(line: 493, column: 7, scope: !5192)
!5192 = distinct !DILexicalBlock(scope: !5126, file: !2, line: 493, column: 7)
!5193 = !DILocation(line: 493, column: 13, scope: !5192)
!5194 = !DILocation(line: 493, column: 11, scope: !5192)
!5195 = !DILocation(line: 493, column: 7, scope: !5126)
!5196 = !DILocation(line: 494, column: 11, scope: !5192)
!5197 = !DILocation(line: 494, column: 17, scope: !5192)
!5198 = !DILocation(line: 494, column: 15, scope: !5192)
!5199 = !DILocation(line: 494, column: 29, scope: !5192)
!5200 = !DILocation(line: 494, column: 34, scope: !5192)
!5201 = !DILocation(line: 494, column: 27, scope: !5192)
!5202 = !DILocation(line: 494, column: 45, scope: !5192)
!5203 = !DILocation(line: 494, column: 8, scope: !5192)
!5204 = !DILocation(line: 494, column: 4, scope: !5192)
!5205 = !DILocation(line: 496, column: 10, scope: !5192)
!5206 = !DILocation(line: 496, column: 18, scope: !5192)
!5207 = !DILocation(line: 496, column: 8, scope: !5192)
!5208 = !DILocation(line: 498, column: 29, scope: !5126)
!5209 = !DILocation(line: 498, column: 34, scope: !5126)
!5210 = !DILocation(line: 498, column: 42, scope: !5126)
!5211 = !DILocation(line: 499, column: 8, scope: !5126)
!5212 = !DILocation(line: 499, column: 16, scope: !5126)
!5213 = !DILocation(line: 500, column: 8, scope: !5126)
!5214 = !DILocation(line: 500, column: 16, scope: !5126)
!5215 = !DILocation(line: 500, column: 26, scope: !5126)
!5216 = !DILocation(line: 500, column: 33, scope: !5126)
!5217 = !DILocation(line: 498, column: 9, scope: !5126)
!5218 = !DILocation(line: 498, column: 7, scope: !5126)
!5219 = !DILocation(line: 501, column: 7, scope: !5220)
!5220 = distinct !DILexicalBlock(scope: !5126, file: !2, line: 501, column: 7)
!5221 = !DILocation(line: 501, column: 11, scope: !5220)
!5222 = !DILocation(line: 501, column: 7, scope: !5126)
!5223 = !DILocation(line: 502, column: 11, scope: !5220)
!5224 = !DILocation(line: 502, column: 4, scope: !5220)
!5225 = !DILocation(line: 503, column: 2, scope: !5126)
!5226 = !DILocation(line: 478, column: 64, scope: !5127)
!5227 = !DILocation(line: 478, column: 56, scope: !5127)
!5228 = !DILocation(line: 478, column: 54, scope: !5127)
!5229 = !DILocation(line: 478, column: 2, scope: !5127)
!5230 = distinct !{!5230, !5158, !5231, !4749, !4750}
!5231 = !DILocation(line: 503, column: 2, scope: !5128)
!5232 = !DILocation(line: 505, column: 2, scope: !5111)
!5233 = !DILocation(line: 505, column: 7, scope: !5111)
!5234 = !DILocation(line: 505, column: 13, scope: !5111)
!5235 = !DILocation(line: 507, column: 31, scope: !5111)
!5236 = !DILocation(line: 507, column: 9, scope: !5111)
!5237 = !DILocation(line: 507, column: 2, scope: !5111)
!5238 = !DILocation(line: 508, column: 1, scope: !5111)
!5239 = distinct !DISubprogram(name: "regcache_rbtree_drop", scope: !2, file: !2, line: 510, type: !4669, scopeLine: 512, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5240)
!5240 = !{!5241, !5242, !5243, !5244, !5245, !5246, !5247, !5248, !5249, !5250, !5251}
!5241 = !DILocalVariable(name: "map", arg: 1, scope: !5239, file: !2, line: 510, type: !3990)
!5242 = !DILocalVariable(name: "min", arg: 2, scope: !5239, file: !2, line: 510, type: !13)
!5243 = !DILocalVariable(name: "max", arg: 3, scope: !5239, file: !2, line: 511, type: !13)
!5244 = !DILocalVariable(name: "rbtree_ctx", scope: !5239, file: !2, line: 513, type: !4686)
!5245 = !DILocalVariable(name: "rbnode", scope: !5239, file: !2, line: 514, type: !156)
!5246 = !DILocalVariable(name: "node", scope: !5239, file: !2, line: 515, type: !170)
!5247 = !DILocalVariable(name: "base_reg", scope: !5239, file: !2, line: 516, type: !13)
!5248 = !DILocalVariable(name: "top_reg", scope: !5239, file: !2, line: 516, type: !13)
!5249 = !DILocalVariable(name: "start", scope: !5239, file: !2, line: 517, type: !13)
!5250 = !DILocalVariable(name: "end", scope: !5239, file: !2, line: 517, type: !13)
!5251 = !DILocalVariable(name: "__mptr", scope: !5252, file: !2, line: 521, type: !155)
!5252 = distinct !DILexicalBlock(scope: !5253, file: !2, line: 521, column: 12)
!5253 = distinct !DILexicalBlock(scope: !5254, file: !2, line: 520, column: 71)
!5254 = distinct !DILexicalBlock(scope: !5255, file: !2, line: 520, column: 2)
!5255 = distinct !DILexicalBlock(scope: !5239, file: !2, line: 520, column: 2)
!5256 = !DILocation(line: 510, column: 48, scope: !5239)
!5257 = !DILocation(line: 510, column: 66, scope: !5239)
!5258 = !DILocation(line: 511, column: 18, scope: !5239)
!5259 = !DILocation(line: 513, column: 2, scope: !5239)
!5260 = !DILocation(line: 513, column: 30, scope: !5239)
!5261 = !DILocation(line: 514, column: 2, scope: !5239)
!5262 = !DILocation(line: 514, column: 31, scope: !5239)
!5263 = !DILocation(line: 515, column: 2, scope: !5239)
!5264 = !DILocation(line: 515, column: 18, scope: !5239)
!5265 = !DILocation(line: 516, column: 2, scope: !5239)
!5266 = !DILocation(line: 516, column: 15, scope: !5239)
!5267 = !DILocation(line: 516, column: 25, scope: !5239)
!5268 = !DILocation(line: 517, column: 2, scope: !5239)
!5269 = !DILocation(line: 517, column: 15, scope: !5239)
!5270 = !DILocation(line: 517, column: 22, scope: !5239)
!5271 = !DILocation(line: 519, column: 15, scope: !5239)
!5272 = !DILocation(line: 519, column: 20, scope: !5239)
!5273 = !DILocation(line: 519, column: 13, scope: !5239)
!5274 = !DILocation(line: 520, column: 24, scope: !5255)
!5275 = !DILocation(line: 520, column: 36, scope: !5255)
!5276 = !DILocation(line: 520, column: 14, scope: !5255)
!5277 = !DILocation(line: 520, column: 12, scope: !5255)
!5278 = !DILocation(line: 520, column: 7, scope: !5255)
!5279 = !DILocation(line: 520, column: 43, scope: !5254)
!5280 = !DILocation(line: 520, column: 2, scope: !5255)
!5281 = !DILocation(line: 521, column: 12, scope: !5252)
!5282 = !DILocation(line: 521, column: 12, scope: !5253)
!5283 = !DILocation(line: 521, column: 10, scope: !5253)
!5284 = !DILocation(line: 523, column: 36, scope: !5253)
!5285 = !DILocation(line: 523, column: 41, scope: !5253)
!5286 = !DILocation(line: 523, column: 3, scope: !5253)
!5287 = !DILocation(line: 525, column: 7, scope: !5288)
!5288 = distinct !DILexicalBlock(scope: !5253, file: !2, line: 525, column: 7)
!5289 = !DILocation(line: 525, column: 18, scope: !5288)
!5290 = !DILocation(line: 525, column: 16, scope: !5288)
!5291 = !DILocation(line: 525, column: 7, scope: !5253)
!5292 = !DILocation(line: 526, column: 4, scope: !5288)
!5293 = !DILocation(line: 527, column: 7, scope: !5294)
!5294 = distinct !DILexicalBlock(scope: !5253, file: !2, line: 527, column: 7)
!5295 = !DILocation(line: 527, column: 17, scope: !5294)
!5296 = !DILocation(line: 527, column: 15, scope: !5294)
!5297 = !DILocation(line: 527, column: 7, scope: !5253)
!5298 = !DILocation(line: 528, column: 4, scope: !5294)
!5299 = !DILocation(line: 530, column: 7, scope: !5300)
!5300 = distinct !DILexicalBlock(scope: !5253, file: !2, line: 530, column: 7)
!5301 = !DILocation(line: 530, column: 13, scope: !5300)
!5302 = !DILocation(line: 530, column: 11, scope: !5300)
!5303 = !DILocation(line: 530, column: 7, scope: !5253)
!5304 = !DILocation(line: 531, column: 13, scope: !5300)
!5305 = !DILocation(line: 531, column: 19, scope: !5300)
!5306 = !DILocation(line: 531, column: 17, scope: !5300)
!5307 = !DILocation(line: 531, column: 31, scope: !5300)
!5308 = !DILocation(line: 531, column: 36, scope: !5300)
!5309 = !DILocation(line: 531, column: 29, scope: !5300)
!5310 = !DILocation(line: 531, column: 10, scope: !5300)
!5311 = !DILocation(line: 531, column: 4, scope: !5300)
!5312 = !DILocation(line: 533, column: 10, scope: !5300)
!5313 = !DILocation(line: 535, column: 7, scope: !5314)
!5314 = distinct !DILexicalBlock(scope: !5253, file: !2, line: 535, column: 7)
!5315 = !DILocation(line: 535, column: 13, scope: !5314)
!5316 = !DILocation(line: 535, column: 11, scope: !5314)
!5317 = !DILocation(line: 535, column: 7, scope: !5253)
!5318 = !DILocation(line: 536, column: 11, scope: !5314)
!5319 = !DILocation(line: 536, column: 17, scope: !5314)
!5320 = !DILocation(line: 536, column: 15, scope: !5314)
!5321 = !DILocation(line: 536, column: 29, scope: !5314)
!5322 = !DILocation(line: 536, column: 34, scope: !5314)
!5323 = !DILocation(line: 536, column: 27, scope: !5314)
!5324 = !DILocation(line: 536, column: 45, scope: !5314)
!5325 = !DILocation(line: 536, column: 8, scope: !5314)
!5326 = !DILocation(line: 536, column: 4, scope: !5314)
!5327 = !DILocation(line: 538, column: 10, scope: !5314)
!5328 = !DILocation(line: 538, column: 18, scope: !5314)
!5329 = !DILocation(line: 538, column: 8, scope: !5314)
!5330 = !DILocation(line: 540, column: 16, scope: !5253)
!5331 = !DILocation(line: 540, column: 24, scope: !5253)
!5332 = !DILocation(line: 540, column: 39, scope: !5253)
!5333 = !DILocation(line: 540, column: 46, scope: !5253)
!5334 = !DILocation(line: 540, column: 52, scope: !5253)
!5335 = !DILocation(line: 540, column: 50, scope: !5253)
!5336 = !DILocation(line: 540, column: 3, scope: !5253)
!5337 = !DILocation(line: 541, column: 2, scope: !5253)
!5338 = !DILocation(line: 520, column: 64, scope: !5254)
!5339 = !DILocation(line: 520, column: 56, scope: !5254)
!5340 = !DILocation(line: 520, column: 54, scope: !5254)
!5341 = !DILocation(line: 520, column: 2, scope: !5254)
!5342 = distinct !{!5342, !5280, !5343, !4749, !4750}
!5343 = !DILocation(line: 541, column: 2, scope: !5255)
!5344 = !DILocation(line: 544, column: 1, scope: !5239)
!5345 = !DILocation(line: 543, column: 2, scope: !5239)
!5346 = distinct !DISubprogram(name: "kmalloc", scope: !142, file: !142, line: 591, type: !5347, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5349)
!5347 = !DISubroutineType(types: !5348)
!5348 = !{!155, !322, !152}
!5349 = !{!5350, !5351, !5352}
!5350 = !DILocalVariable(name: "size", arg: 1, scope: !5346, file: !142, line: 591, type: !322)
!5351 = !DILocalVariable(name: "flags", arg: 2, scope: !5346, file: !142, line: 591, type: !152)
!5352 = !DILocalVariable(name: "index", scope: !5353, file: !142, line: 594, type: !13)
!5353 = distinct !DILexicalBlock(scope: !5354, file: !142, line: 593, column: 42)
!5354 = distinct !DILexicalBlock(scope: !5346, file: !142, line: 593, column: 6)
!5355 = !DILocation(line: 591, column: 61, scope: !5346)
!5356 = !DILocation(line: 591, column: 73, scope: !5346)
!5357 = !DILocation(line: 593, column: 27, scope: !5354)
!5358 = !DILocation(line: 593, column: 6, scope: !5354)
!5359 = !DILocation(line: 593, column: 33, scope: !5354)
!5360 = !DILocation(line: 593, column: 36, scope: !5354)
!5361 = !DILocation(line: 593, column: 6, scope: !5346)
!5362 = !DILocation(line: 594, column: 3, scope: !5353)
!5363 = !DILocation(line: 594, column: 16, scope: !5353)
!5364 = !DILocation(line: 596, column: 7, scope: !5365)
!5365 = distinct !DILexicalBlock(scope: !5353, file: !142, line: 596, column: 7)
!5366 = !DILocation(line: 596, column: 12, scope: !5365)
!5367 = !DILocation(line: 596, column: 7, scope: !5353)
!5368 = !DILocation(line: 597, column: 25, scope: !5365)
!5369 = !DILocation(line: 597, column: 31, scope: !5365)
!5370 = !DILocation(line: 597, column: 11, scope: !5365)
!5371 = !DILocation(line: 597, column: 4, scope: !5365)
!5372 = !DILocation(line: 599, column: 11, scope: !5353)
!5373 = !DILocation(line: 599, column: 9, scope: !5353)
!5374 = !DILocation(line: 601, column: 33, scope: !5353)
!5375 = !DILocation(line: 601, column: 40, scope: !5353)
!5376 = !DILocation(line: 601, column: 20, scope: !5353)
!5377 = !DILocation(line: 601, column: 5, scope: !5353)
!5378 = !DILocation(line: 601, column: 51, scope: !5353)
!5379 = !DILocation(line: 602, column: 5, scope: !5353)
!5380 = !DILocation(line: 602, column: 12, scope: !5353)
!5381 = !DILocation(line: 600, column: 10, scope: !5353)
!5382 = !DILocation(line: 600, column: 3, scope: !5353)
!5383 = !DILocation(line: 603, column: 2, scope: !5354)
!5384 = !DILocation(line: 604, column: 19, scope: !5346)
!5385 = !DILocation(line: 604, column: 25, scope: !5346)
!5386 = !DILocation(line: 604, column: 9, scope: !5346)
!5387 = !DILocation(line: 604, column: 2, scope: !5346)
!5388 = !DILocation(line: 605, column: 1, scope: !5346)
!5389 = !DISubprogram(name: "kmalloc_large", scope: !142, file: !142, line: 531, type: !5347, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5390 = distinct !DISubprogram(name: "__kmalloc_index", scope: !142, file: !142, line: 444, type: !5391, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5393)
!5391 = !DISubroutineType(types: !5392)
!5392 = !{!13, !322, !878}
!5393 = !{!5394, !5395}
!5394 = !DILocalVariable(name: "size", arg: 1, scope: !5390, file: !142, line: 444, type: !322)
!5395 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5390, file: !142, line: 445, type: !878)
!5396 = !DILocation(line: 444, column: 60, scope: !5390)
!5397 = !DILocation(line: 445, column: 16, scope: !5390)
!5398 = !DILocation(line: 447, column: 7, scope: !5399)
!5399 = distinct !DILexicalBlock(scope: !5390, file: !142, line: 447, column: 6)
!5400 = !DILocation(line: 447, column: 6, scope: !5390)
!5401 = !DILocation(line: 448, column: 3, scope: !5399)
!5402 = !DILocation(line: 450, column: 6, scope: !5403)
!5403 = distinct !DILexicalBlock(scope: !5390, file: !142, line: 450, column: 6)
!5404 = !DILocation(line: 450, column: 11, scope: !5403)
!5405 = !DILocation(line: 450, column: 6, scope: !5390)
!5406 = !DILocation(line: 451, column: 3, scope: !5403)
!5407 = !DILocation(line: 453, column: 32, scope: !5408)
!5408 = distinct !DILexicalBlock(scope: !5390, file: !142, line: 453, column: 6)
!5409 = !DILocation(line: 453, column: 37, scope: !5408)
!5410 = !DILocation(line: 453, column: 42, scope: !5408)
!5411 = !DILocation(line: 453, column: 45, scope: !5408)
!5412 = !DILocation(line: 453, column: 50, scope: !5408)
!5413 = !DILocation(line: 453, column: 6, scope: !5390)
!5414 = !DILocation(line: 454, column: 3, scope: !5408)
!5415 = !DILocation(line: 455, column: 32, scope: !5416)
!5416 = distinct !DILexicalBlock(scope: !5390, file: !142, line: 455, column: 6)
!5417 = !DILocation(line: 455, column: 37, scope: !5416)
!5418 = !DILocation(line: 455, column: 43, scope: !5416)
!5419 = !DILocation(line: 455, column: 46, scope: !5416)
!5420 = !DILocation(line: 455, column: 51, scope: !5416)
!5421 = !DILocation(line: 455, column: 6, scope: !5390)
!5422 = !DILocation(line: 456, column: 3, scope: !5416)
!5423 = !DILocation(line: 457, column: 6, scope: !5424)
!5424 = distinct !DILexicalBlock(scope: !5390, file: !142, line: 457, column: 6)
!5425 = !DILocation(line: 457, column: 11, scope: !5424)
!5426 = !DILocation(line: 457, column: 6, scope: !5390)
!5427 = !DILocation(line: 457, column: 26, scope: !5424)
!5428 = !DILocation(line: 458, column: 6, scope: !5429)
!5429 = distinct !DILexicalBlock(scope: !5390, file: !142, line: 458, column: 6)
!5430 = !DILocation(line: 458, column: 11, scope: !5429)
!5431 = !DILocation(line: 458, column: 6, scope: !5390)
!5432 = !DILocation(line: 458, column: 26, scope: !5429)
!5433 = !DILocation(line: 459, column: 6, scope: !5434)
!5434 = distinct !DILexicalBlock(scope: !5390, file: !142, line: 459, column: 6)
!5435 = !DILocation(line: 459, column: 11, scope: !5434)
!5436 = !DILocation(line: 459, column: 6, scope: !5390)
!5437 = !DILocation(line: 459, column: 26, scope: !5434)
!5438 = !DILocation(line: 460, column: 6, scope: !5439)
!5439 = distinct !DILexicalBlock(scope: !5390, file: !142, line: 460, column: 6)
!5440 = !DILocation(line: 460, column: 11, scope: !5439)
!5441 = !DILocation(line: 460, column: 6, scope: !5390)
!5442 = !DILocation(line: 460, column: 26, scope: !5439)
!5443 = !DILocation(line: 461, column: 6, scope: !5444)
!5444 = distinct !DILexicalBlock(scope: !5390, file: !142, line: 461, column: 6)
!5445 = !DILocation(line: 461, column: 11, scope: !5444)
!5446 = !DILocation(line: 461, column: 6, scope: !5390)
!5447 = !DILocation(line: 461, column: 26, scope: !5444)
!5448 = !DILocation(line: 462, column: 6, scope: !5449)
!5449 = distinct !DILexicalBlock(scope: !5390, file: !142, line: 462, column: 6)
!5450 = !DILocation(line: 462, column: 11, scope: !5449)
!5451 = !DILocation(line: 462, column: 6, scope: !5390)
!5452 = !DILocation(line: 462, column: 26, scope: !5449)
!5453 = !DILocation(line: 463, column: 6, scope: !5454)
!5454 = distinct !DILexicalBlock(scope: !5390, file: !142, line: 463, column: 6)
!5455 = !DILocation(line: 463, column: 11, scope: !5454)
!5456 = !DILocation(line: 463, column: 6, scope: !5390)
!5457 = !DILocation(line: 463, column: 26, scope: !5454)
!5458 = !DILocation(line: 464, column: 6, scope: !5459)
!5459 = distinct !DILexicalBlock(scope: !5390, file: !142, line: 464, column: 6)
!5460 = !DILocation(line: 464, column: 11, scope: !5459)
!5461 = !DILocation(line: 464, column: 6, scope: !5390)
!5462 = !DILocation(line: 464, column: 26, scope: !5459)
!5463 = !DILocation(line: 465, column: 6, scope: !5464)
!5464 = distinct !DILexicalBlock(scope: !5390, file: !142, line: 465, column: 6)
!5465 = !DILocation(line: 465, column: 11, scope: !5464)
!5466 = !DILocation(line: 465, column: 6, scope: !5390)
!5467 = !DILocation(line: 465, column: 26, scope: !5464)
!5468 = !DILocation(line: 466, column: 6, scope: !5469)
!5469 = distinct !DILexicalBlock(scope: !5390, file: !142, line: 466, column: 6)
!5470 = !DILocation(line: 466, column: 11, scope: !5469)
!5471 = !DILocation(line: 466, column: 6, scope: !5390)
!5472 = !DILocation(line: 466, column: 26, scope: !5469)
!5473 = !DILocation(line: 467, column: 6, scope: !5474)
!5474 = distinct !DILexicalBlock(scope: !5390, file: !142, line: 467, column: 6)
!5475 = !DILocation(line: 467, column: 11, scope: !5474)
!5476 = !DILocation(line: 467, column: 6, scope: !5390)
!5477 = !DILocation(line: 467, column: 26, scope: !5474)
!5478 = !DILocation(line: 468, column: 6, scope: !5479)
!5479 = distinct !DILexicalBlock(scope: !5390, file: !142, line: 468, column: 6)
!5480 = !DILocation(line: 468, column: 11, scope: !5479)
!5481 = !DILocation(line: 468, column: 6, scope: !5390)
!5482 = !DILocation(line: 468, column: 26, scope: !5479)
!5483 = !DILocation(line: 469, column: 6, scope: !5484)
!5484 = distinct !DILexicalBlock(scope: !5390, file: !142, line: 469, column: 6)
!5485 = !DILocation(line: 469, column: 11, scope: !5484)
!5486 = !DILocation(line: 469, column: 6, scope: !5390)
!5487 = !DILocation(line: 469, column: 26, scope: !5484)
!5488 = !DILocation(line: 470, column: 6, scope: !5489)
!5489 = distinct !DILexicalBlock(scope: !5390, file: !142, line: 470, column: 6)
!5490 = !DILocation(line: 470, column: 11, scope: !5489)
!5491 = !DILocation(line: 470, column: 6, scope: !5390)
!5492 = !DILocation(line: 470, column: 26, scope: !5489)
!5493 = !DILocation(line: 471, column: 6, scope: !5494)
!5494 = distinct !DILexicalBlock(scope: !5390, file: !142, line: 471, column: 6)
!5495 = !DILocation(line: 471, column: 11, scope: !5494)
!5496 = !DILocation(line: 471, column: 6, scope: !5390)
!5497 = !DILocation(line: 471, column: 26, scope: !5494)
!5498 = !DILocation(line: 472, column: 6, scope: !5499)
!5499 = distinct !DILexicalBlock(scope: !5390, file: !142, line: 472, column: 6)
!5500 = !DILocation(line: 472, column: 11, scope: !5499)
!5501 = !DILocation(line: 472, column: 6, scope: !5390)
!5502 = !DILocation(line: 472, column: 26, scope: !5499)
!5503 = !DILocation(line: 473, column: 6, scope: !5504)
!5504 = distinct !DILexicalBlock(scope: !5390, file: !142, line: 473, column: 6)
!5505 = !DILocation(line: 473, column: 11, scope: !5504)
!5506 = !DILocation(line: 473, column: 6, scope: !5390)
!5507 = !DILocation(line: 473, column: 26, scope: !5504)
!5508 = !DILocation(line: 474, column: 6, scope: !5509)
!5509 = distinct !DILexicalBlock(scope: !5390, file: !142, line: 474, column: 6)
!5510 = !DILocation(line: 474, column: 11, scope: !5509)
!5511 = !DILocation(line: 474, column: 6, scope: !5390)
!5512 = !DILocation(line: 474, column: 27, scope: !5509)
!5513 = !DILocation(line: 475, column: 6, scope: !5514)
!5514 = distinct !DILexicalBlock(scope: !5390, file: !142, line: 475, column: 6)
!5515 = !DILocation(line: 475, column: 11, scope: !5514)
!5516 = !DILocation(line: 475, column: 6, scope: !5390)
!5517 = !DILocation(line: 475, column: 32, scope: !5514)
!5518 = !DILocation(line: 477, column: 50, scope: !5519)
!5519 = distinct !DILexicalBlock(scope: !5390, file: !142, line: 477, column: 6)
!5520 = !{i8 0, i8 2}
!5521 = !DILocation(line: 477, column: 6, scope: !5390)
!5522 = !DILocation(line: 478, column: 3, scope: !5519)
!5523 = !DILocation(line: 478, column: 3, scope: !5524)
!5524 = distinct !DILexicalBlock(scope: !5525, file: !142, line: 478, column: 3)
!5525 = distinct !DILexicalBlock(scope: !5519, file: !142, line: 478, column: 3)
!5526 = !{i32 -2141698999}
!5527 = !DILocation(line: 478, column: 3, scope: !5525)
!5528 = !DILocation(line: 480, column: 3, scope: !5519)
!5529 = !DILocation(line: 480, column: 3, scope: !5530)
!5530 = distinct !DILexicalBlock(scope: !5519, file: !142, line: 480, column: 3)
!5531 = !DILocation(line: 480, column: 3, scope: !5532)
!5532 = distinct !DILexicalBlock(scope: !5530, file: !142, line: 480, column: 3)
!5533 = !DILocation(line: 480, column: 3, scope: !5534)
!5534 = distinct !DILexicalBlock(scope: !5530, file: !142, line: 480, column: 3)
!5535 = !{i64 2153268500, i64 2153268529, i64 2153268575, i64 2153268633, i64 2153268687, i64 2153268741, i64 2153268796, i64 2153268827}
!5536 = !DILocation(line: 483, column: 2, scope: !5390)
!5537 = !DILocation(line: 484, column: 1, scope: !5390)
!5538 = !DISubprogram(name: "kmalloc_trace", scope: !142, file: !142, line: 525, type: !5539, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5539 = !DISubroutineType(types: !5540)
!5540 = !{!155, !5541, !152, !322}
!5541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5542, size: 64)
!5542 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !5543, line: 325, flags: DIFlagFwdDecl)
!5543 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!5544 = distinct !DISubprogram(name: "kmalloc_type", scope: !142, file: !142, line: 401, type: !5545, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5547)
!5545 = !DISubroutineType(types: !5546)
!5546 = !{!141, !152, !154}
!5547 = !{!5548, !5549}
!5548 = !DILocalVariable(name: "flags", arg: 1, scope: !5544, file: !142, line: 401, type: !152)
!5549 = !DILocalVariable(name: "caller", arg: 2, scope: !5544, file: !142, line: 401, type: !154)
!5550 = !DILocation(line: 401, column: 67, scope: !5544)
!5551 = !DILocation(line: 401, column: 88, scope: !5544)
!5552 = !DILocation(line: 407, column: 6, scope: !5553)
!5553 = distinct !DILexicalBlock(scope: !5544, file: !142, line: 407, column: 6)
!5554 = !DILocation(line: 407, column: 6, scope: !5544)
!5555 = !DILocation(line: 413, column: 3, scope: !5553)
!5556 = !DILocation(line: 423, column: 38, scope: !5557)
!5557 = distinct !DILexicalBlock(scope: !5544, file: !142, line: 423, column: 6)
!5558 = !DILocation(line: 423, column: 44, scope: !5557)
!5559 = !DILocation(line: 423, column: 6, scope: !5544)
!5560 = !DILocation(line: 424, column: 3, scope: !5557)
!5561 = !DILocation(line: 426, column: 3, scope: !5562)
!5562 = distinct !DILexicalBlock(scope: !5544, file: !142, line: 425, column: 6)
!5563 = !DILocation(line: 429, column: 1, scope: !5544)
!5564 = !DISubprogram(name: "__kmalloc", scope: !142, file: !142, line: 488, type: !5347, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5565 = !DISubprogram(name: "__compiletime_assert_245", scope: !142, file: !142, line: 478, type: !2327, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5566 = !DISubprogram(name: "rb_first", scope: !5567, file: !5567, line: 46, type: !5568, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5567 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6e0facf00d8c55244f0fbd487ce02705")
!5568 = !DISubroutineType(types: !5569)
!5569 = !{!170, !5570}
!5570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5571, size: 64)
!5571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1868)
!5572 = !DISubprogram(name: "rb_next", scope: !5567, file: !5567, line: 44, type: !5573, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5573 = !DISubroutineType(types: !5574)
!5574 = !{!170, !5575}
!5575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5576, size: 64)
!5576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !165)
!5577 = !DISubprogram(name: "rb_erase", scope: !5567, file: !5567, line: 40, type: !5578, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5578 = !DISubroutineType(types: !5579)
!5579 = !{null, !170, !5580}
!5580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!5581 = !DISubprogram(name: "kfree", scope: !142, file: !142, line: 227, type: !5582, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5582 = !DISubroutineType(types: !5583)
!5583 = !{null, !1209}
!5584 = !DISubprogram(name: "debugfs_create_file", scope: !5585, file: !5585, line: 75, type: !5586, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5585 = !DIFile(filename: "./include/linux/debugfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6e6228d229e8266f5bff9327360d42a5")
!5586 = !DISubroutineType(types: !5587)
!5587 = !{!389, !194, !317, !389, !155, !997}
!5588 = distinct !DISubprogram(name: "rbtree_open", scope: !2, file: !2, line: 176, type: !1306, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5589)
!5589 = !{!5590, !5591}
!5590 = !DILocalVariable(name: "inode", arg: 1, scope: !5588, file: !2, line: 176, type: !354)
!5591 = !DILocalVariable(name: "file", arg: 2, scope: !5588, file: !2, line: 176, type: !1006)
!5592 = !DILocation(line: 176, column: 1, scope: !5588)
!5593 = !DISubprogram(name: "single_open", scope: !628, file: !628, line: 166, type: !5594, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5594 = !DISubroutineType(types: !5595)
!5595 = !{!98, !1006, !677, !155}
!5596 = distinct !DISubprogram(name: "rbtree_show", scope: !2, file: !2, line: 132, type: !678, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5597)
!5597 = !{!5598, !5599, !5600, !5601, !5602, !5603, !5604, !5605, !5606, !5607, !5608, !5609, !5610, !5611}
!5598 = !DILocalVariable(name: "s", arg: 1, scope: !5596, file: !2, line: 132, type: !626)
!5599 = !DILocalVariable(name: "ignored", arg: 2, scope: !5596, file: !2, line: 132, type: !155)
!5600 = !DILocalVariable(name: "map", scope: !5596, file: !2, line: 134, type: !3990)
!5601 = !DILocalVariable(name: "rbtree_ctx", scope: !5596, file: !2, line: 135, type: !4686)
!5602 = !DILocalVariable(name: "n", scope: !5596, file: !2, line: 136, type: !156)
!5603 = !DILocalVariable(name: "node", scope: !5596, file: !2, line: 137, type: !170)
!5604 = !DILocalVariable(name: "base", scope: !5596, file: !2, line: 138, type: !13)
!5605 = !DILocalVariable(name: "top", scope: !5596, file: !2, line: 138, type: !13)
!5606 = !DILocalVariable(name: "mem_size", scope: !5596, file: !2, line: 139, type: !322)
!5607 = !DILocalVariable(name: "nodes", scope: !5596, file: !2, line: 140, type: !98)
!5608 = !DILocalVariable(name: "registers", scope: !5596, file: !2, line: 141, type: !98)
!5609 = !DILocalVariable(name: "this_registers", scope: !5596, file: !2, line: 142, type: !98)
!5610 = !DILocalVariable(name: "average", scope: !5596, file: !2, line: 142, type: !98)
!5611 = !DILocalVariable(name: "__mptr", scope: !5612, file: !2, line: 150, type: !155)
!5612 = distinct !DILexicalBlock(scope: !5613, file: !2, line: 150, column: 7)
!5613 = distinct !DILexicalBlock(scope: !5614, file: !2, line: 149, column: 29)
!5614 = distinct !DILexicalBlock(scope: !5615, file: !2, line: 148, column: 2)
!5615 = distinct !DILexicalBlock(scope: !5596, file: !2, line: 148, column: 2)
!5616 = !DILocation(line: 132, column: 41, scope: !5596)
!5617 = !DILocation(line: 132, column: 50, scope: !5596)
!5618 = !DILocation(line: 134, column: 2, scope: !5596)
!5619 = !DILocation(line: 134, column: 17, scope: !5596)
!5620 = !DILocation(line: 134, column: 23, scope: !5596)
!5621 = !DILocation(line: 134, column: 26, scope: !5596)
!5622 = !DILocation(line: 135, column: 2, scope: !5596)
!5623 = !DILocation(line: 135, column: 30, scope: !5596)
!5624 = !DILocation(line: 135, column: 43, scope: !5596)
!5625 = !DILocation(line: 135, column: 48, scope: !5596)
!5626 = !DILocation(line: 136, column: 2, scope: !5596)
!5627 = !DILocation(line: 136, column: 31, scope: !5596)
!5628 = !DILocation(line: 137, column: 2, scope: !5596)
!5629 = !DILocation(line: 137, column: 18, scope: !5596)
!5630 = !DILocation(line: 138, column: 2, scope: !5596)
!5631 = !DILocation(line: 138, column: 15, scope: !5596)
!5632 = !DILocation(line: 138, column: 21, scope: !5596)
!5633 = !DILocation(line: 139, column: 2, scope: !5596)
!5634 = !DILocation(line: 139, column: 9, scope: !5596)
!5635 = !DILocation(line: 140, column: 2, scope: !5596)
!5636 = !DILocation(line: 140, column: 6, scope: !5596)
!5637 = !DILocation(line: 141, column: 2, scope: !5596)
!5638 = !DILocation(line: 141, column: 6, scope: !5596)
!5639 = !DILocation(line: 142, column: 2, scope: !5596)
!5640 = !DILocation(line: 142, column: 6, scope: !5596)
!5641 = !DILocation(line: 142, column: 22, scope: !5596)
!5642 = !DILocation(line: 144, column: 2, scope: !5596)
!5643 = !DILocation(line: 144, column: 7, scope: !5596)
!5644 = !DILocation(line: 144, column: 12, scope: !5596)
!5645 = !DILocation(line: 144, column: 17, scope: !5596)
!5646 = !DILocation(line: 146, column: 11, scope: !5596)
!5647 = !DILocation(line: 148, column: 24, scope: !5615)
!5648 = !DILocation(line: 148, column: 36, scope: !5615)
!5649 = !DILocation(line: 148, column: 14, scope: !5615)
!5650 = !DILocation(line: 148, column: 12, scope: !5615)
!5651 = !DILocation(line: 148, column: 7, scope: !5615)
!5652 = !DILocation(line: 148, column: 43, scope: !5614)
!5653 = !DILocation(line: 148, column: 48, scope: !5614)
!5654 = !DILocation(line: 148, column: 2, scope: !5615)
!5655 = !DILocation(line: 150, column: 7, scope: !5612)
!5656 = !DILocation(line: 150, column: 7, scope: !5613)
!5657 = !DILocation(line: 150, column: 5, scope: !5613)
!5658 = !DILocation(line: 151, column: 12, scope: !5613)
!5659 = !DILocation(line: 152, column: 16, scope: !5613)
!5660 = !DILocation(line: 152, column: 19, scope: !5613)
!5661 = !DILocation(line: 152, column: 28, scope: !5613)
!5662 = !DILocation(line: 152, column: 33, scope: !5613)
!5663 = !DILocation(line: 152, column: 26, scope: !5613)
!5664 = !DILocation(line: 152, column: 15, scope: !5613)
!5665 = !DILocation(line: 152, column: 12, scope: !5613)
!5666 = !DILocation(line: 153, column: 15, scope: !5613)
!5667 = !DILocation(line: 153, column: 40, scope: !5613)
!5668 = !DILocation(line: 153, column: 12, scope: !5613)
!5669 = !DILocation(line: 155, column: 36, scope: !5613)
!5670 = !DILocation(line: 155, column: 41, scope: !5613)
!5671 = !DILocation(line: 155, column: 3, scope: !5613)
!5672 = !DILocation(line: 156, column: 22, scope: !5613)
!5673 = !DILocation(line: 156, column: 28, scope: !5613)
!5674 = !DILocation(line: 156, column: 26, scope: !5613)
!5675 = !DILocation(line: 156, column: 36, scope: !5613)
!5676 = !DILocation(line: 156, column: 41, scope: !5613)
!5677 = !DILocation(line: 156, column: 34, scope: !5613)
!5678 = !DILocation(line: 156, column: 53, scope: !5613)
!5679 = !DILocation(line: 156, column: 18, scope: !5613)
!5680 = !DILocation(line: 157, column: 14, scope: !5613)
!5681 = !DILocation(line: 157, column: 33, scope: !5613)
!5682 = !DILocation(line: 157, column: 39, scope: !5613)
!5683 = !DILocation(line: 157, column: 44, scope: !5613)
!5684 = !DILocation(line: 157, column: 3, scope: !5613)
!5685 = !DILocation(line: 159, column: 8, scope: !5613)
!5686 = !DILocation(line: 160, column: 16, scope: !5613)
!5687 = !DILocation(line: 160, column: 13, scope: !5613)
!5688 = !DILocation(line: 161, column: 2, scope: !5613)
!5689 = !DILocation(line: 149, column: 22, scope: !5614)
!5690 = !DILocation(line: 149, column: 14, scope: !5614)
!5691 = !DILocation(line: 149, column: 12, scope: !5614)
!5692 = !DILocation(line: 148, column: 2, scope: !5614)
!5693 = distinct !{!5693, !5654, !5694, !4749, !4750}
!5694 = !DILocation(line: 161, column: 2, scope: !5615)
!5695 = !DILocation(line: 163, column: 6, scope: !5696)
!5696 = distinct !DILexicalBlock(scope: !5596, file: !2, line: 163, column: 6)
!5697 = !DILocation(line: 163, column: 6, scope: !5596)
!5698 = !DILocation(line: 164, column: 13, scope: !5696)
!5699 = !DILocation(line: 164, column: 25, scope: !5696)
!5700 = !DILocation(line: 164, column: 23, scope: !5696)
!5701 = !DILocation(line: 164, column: 11, scope: !5696)
!5702 = !DILocation(line: 164, column: 3, scope: !5696)
!5703 = !DILocation(line: 166, column: 11, scope: !5696)
!5704 = !DILocation(line: 168, column: 13, scope: !5596)
!5705 = !DILocation(line: 169, column: 6, scope: !5596)
!5706 = !DILocation(line: 169, column: 13, scope: !5596)
!5707 = !DILocation(line: 169, column: 24, scope: !5596)
!5708 = !DILocation(line: 169, column: 33, scope: !5596)
!5709 = !DILocation(line: 168, column: 2, scope: !5596)
!5710 = !DILocation(line: 171, column: 2, scope: !5596)
!5711 = !DILocation(line: 171, column: 7, scope: !5596)
!5712 = !DILocation(line: 171, column: 14, scope: !5596)
!5713 = !DILocation(line: 171, column: 19, scope: !5596)
!5714 = !DILocation(line: 174, column: 1, scope: !5596)
!5715 = !DILocation(line: 173, column: 2, scope: !5596)
!5716 = distinct !DISubprogram(name: "regcache_rbtree_get_base_top_reg", scope: !2, file: !2, line: 39, type: !5717, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5719)
!5717 = !DISubroutineType(types: !5718)
!5718 = !{null, !3990, !156, !1689, !1689}
!5719 = !{!5720, !5721, !5722, !5723}
!5720 = !DILocalVariable(name: "map", arg: 1, scope: !5716, file: !2, line: 40, type: !3990)
!5721 = !DILocalVariable(name: "rbnode", arg: 2, scope: !5716, file: !2, line: 41, type: !156)
!5722 = !DILocalVariable(name: "base", arg: 3, scope: !5716, file: !2, line: 42, type: !1689)
!5723 = !DILocalVariable(name: "top", arg: 4, scope: !5716, file: !2, line: 42, type: !1689)
!5724 = !DILocation(line: 40, column: 17, scope: !5716)
!5725 = !DILocation(line: 41, column: 31, scope: !5716)
!5726 = !DILocation(line: 42, column: 16, scope: !5716)
!5727 = !DILocation(line: 42, column: 36, scope: !5716)
!5728 = !DILocation(line: 44, column: 10, scope: !5716)
!5729 = !DILocation(line: 44, column: 18, scope: !5716)
!5730 = !DILocation(line: 44, column: 3, scope: !5716)
!5731 = !DILocation(line: 44, column: 8, scope: !5716)
!5732 = !DILocation(line: 45, column: 9, scope: !5716)
!5733 = !DILocation(line: 45, column: 17, scope: !5716)
!5734 = !DILocation(line: 45, column: 30, scope: !5716)
!5735 = !DILocation(line: 45, column: 38, scope: !5716)
!5736 = !DILocation(line: 45, column: 45, scope: !5716)
!5737 = !DILocation(line: 45, column: 52, scope: !5716)
!5738 = !DILocation(line: 45, column: 57, scope: !5716)
!5739 = !DILocation(line: 45, column: 50, scope: !5716)
!5740 = !DILocation(line: 45, column: 26, scope: !5716)
!5741 = !DILocation(line: 45, column: 3, scope: !5716)
!5742 = !DILocation(line: 45, column: 7, scope: !5716)
!5743 = !DILocation(line: 46, column: 1, scope: !5716)
!5744 = !DISubprogram(name: "seq_printf", scope: !628, file: !628, line: 119, type: !5745, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5745 = !DISubroutineType(types: !5746)
!5746 = !{null, !626, !194, null}
!5747 = distinct !DISubprogram(name: "regcache_rbtree_lookup", scope: !2, file: !2, line: 62, type: !5748, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5750)
!5748 = !DISubroutineType(types: !5749)
!5749 = !{!156, !3990, !13}
!5750 = !{!5751, !5752, !5753, !5754, !5755, !5756, !5757, !5758}
!5751 = !DILocalVariable(name: "map", arg: 1, scope: !5747, file: !2, line: 62, type: !3990)
!5752 = !DILocalVariable(name: "reg", arg: 2, scope: !5747, file: !2, line: 63, type: !13)
!5753 = !DILocalVariable(name: "rbtree_ctx", scope: !5747, file: !2, line: 65, type: !4686)
!5754 = !DILocalVariable(name: "node", scope: !5747, file: !2, line: 66, type: !170)
!5755 = !DILocalVariable(name: "rbnode", scope: !5747, file: !2, line: 67, type: !156)
!5756 = !DILocalVariable(name: "base_reg", scope: !5747, file: !2, line: 68, type: !13)
!5757 = !DILocalVariable(name: "top_reg", scope: !5747, file: !2, line: 68, type: !13)
!5758 = !DILocalVariable(name: "__mptr", scope: !5759, file: !2, line: 80, type: !155)
!5759 = distinct !DILexicalBlock(scope: !5760, file: !2, line: 80, column: 12)
!5760 = distinct !DILexicalBlock(scope: !5747, file: !2, line: 79, column: 15)
!5761 = !DILocation(line: 62, column: 75, scope: !5747)
!5762 = !DILocation(line: 63, column: 24, scope: !5747)
!5763 = !DILocation(line: 65, column: 2, scope: !5747)
!5764 = !DILocation(line: 65, column: 30, scope: !5747)
!5765 = !DILocation(line: 65, column: 43, scope: !5747)
!5766 = !DILocation(line: 65, column: 48, scope: !5747)
!5767 = !DILocation(line: 66, column: 2, scope: !5747)
!5768 = !DILocation(line: 66, column: 18, scope: !5747)
!5769 = !DILocation(line: 67, column: 2, scope: !5747)
!5770 = !DILocation(line: 67, column: 31, scope: !5747)
!5771 = !DILocation(line: 68, column: 2, scope: !5747)
!5772 = !DILocation(line: 68, column: 15, scope: !5747)
!5773 = !DILocation(line: 68, column: 25, scope: !5747)
!5774 = !DILocation(line: 70, column: 11, scope: !5747)
!5775 = !DILocation(line: 70, column: 23, scope: !5747)
!5776 = !DILocation(line: 70, column: 9, scope: !5747)
!5777 = !DILocation(line: 71, column: 6, scope: !5778)
!5778 = distinct !DILexicalBlock(scope: !5747, file: !2, line: 71, column: 6)
!5779 = !DILocation(line: 71, column: 6, scope: !5747)
!5780 = !DILocation(line: 72, column: 36, scope: !5781)
!5781 = distinct !DILexicalBlock(scope: !5778, file: !2, line: 71, column: 14)
!5782 = !DILocation(line: 72, column: 41, scope: !5781)
!5783 = !DILocation(line: 72, column: 3, scope: !5781)
!5784 = !DILocation(line: 74, column: 7, scope: !5785)
!5785 = distinct !DILexicalBlock(scope: !5781, file: !2, line: 74, column: 7)
!5786 = !DILocation(line: 74, column: 14, scope: !5785)
!5787 = !DILocation(line: 74, column: 11, scope: !5785)
!5788 = !DILocation(line: 74, column: 23, scope: !5785)
!5789 = !DILocation(line: 74, column: 26, scope: !5785)
!5790 = !DILocation(line: 74, column: 33, scope: !5785)
!5791 = !DILocation(line: 74, column: 30, scope: !5785)
!5792 = !DILocation(line: 74, column: 7, scope: !5781)
!5793 = !DILocation(line: 75, column: 11, scope: !5785)
!5794 = !DILocation(line: 75, column: 4, scope: !5785)
!5795 = !DILocation(line: 76, column: 2, scope: !5781)
!5796 = !DILocation(line: 78, column: 9, scope: !5747)
!5797 = !DILocation(line: 78, column: 21, scope: !5747)
!5798 = !DILocation(line: 78, column: 26, scope: !5747)
!5799 = !DILocation(line: 78, column: 7, scope: !5747)
!5800 = !DILocation(line: 79, column: 2, scope: !5747)
!5801 = !DILocation(line: 79, column: 9, scope: !5747)
!5802 = !DILocation(line: 80, column: 12, scope: !5759)
!5803 = !DILocation(line: 80, column: 12, scope: !5760)
!5804 = !DILocation(line: 80, column: 10, scope: !5760)
!5805 = !DILocation(line: 81, column: 36, scope: !5760)
!5806 = !DILocation(line: 81, column: 41, scope: !5760)
!5807 = !DILocation(line: 81, column: 3, scope: !5760)
!5808 = !DILocation(line: 83, column: 7, scope: !5809)
!5809 = distinct !DILexicalBlock(scope: !5760, file: !2, line: 83, column: 7)
!5810 = !DILocation(line: 83, column: 14, scope: !5809)
!5811 = !DILocation(line: 83, column: 11, scope: !5809)
!5812 = !DILocation(line: 83, column: 23, scope: !5809)
!5813 = !DILocation(line: 83, column: 26, scope: !5809)
!5814 = !DILocation(line: 83, column: 33, scope: !5809)
!5815 = !DILocation(line: 83, column: 30, scope: !5809)
!5816 = !DILocation(line: 83, column: 7, scope: !5760)
!5817 = !DILocation(line: 84, column: 32, scope: !5818)
!5818 = distinct !DILexicalBlock(scope: !5809, file: !2, line: 83, column: 42)
!5819 = !DILocation(line: 84, column: 4, scope: !5818)
!5820 = !DILocation(line: 84, column: 16, scope: !5818)
!5821 = !DILocation(line: 84, column: 30, scope: !5818)
!5822 = !DILocation(line: 85, column: 11, scope: !5818)
!5823 = !DILocation(line: 85, column: 4, scope: !5818)
!5824 = !DILocation(line: 86, column: 14, scope: !5825)
!5825 = distinct !DILexicalBlock(scope: !5809, file: !2, line: 86, column: 14)
!5826 = !DILocation(line: 86, column: 20, scope: !5825)
!5827 = !DILocation(line: 86, column: 18, scope: !5825)
!5828 = !DILocation(line: 86, column: 14, scope: !5809)
!5829 = !DILocation(line: 87, column: 11, scope: !5830)
!5830 = distinct !DILexicalBlock(scope: !5825, file: !2, line: 86, column: 29)
!5831 = !DILocation(line: 87, column: 17, scope: !5830)
!5832 = !DILocation(line: 87, column: 9, scope: !5830)
!5833 = !DILocation(line: 88, column: 3, scope: !5830)
!5834 = !DILocation(line: 88, column: 14, scope: !5835)
!5835 = distinct !DILexicalBlock(scope: !5825, file: !2, line: 88, column: 14)
!5836 = !DILocation(line: 88, column: 20, scope: !5835)
!5837 = !DILocation(line: 88, column: 18, scope: !5835)
!5838 = !DILocation(line: 88, column: 14, scope: !5825)
!5839 = !DILocation(line: 89, column: 11, scope: !5840)
!5840 = distinct !DILexicalBlock(scope: !5835, file: !2, line: 88, column: 30)
!5841 = !DILocation(line: 89, column: 17, scope: !5840)
!5842 = !DILocation(line: 89, column: 9, scope: !5840)
!5843 = !DILocation(line: 90, column: 3, scope: !5840)
!5844 = distinct !{!5844, !5800, !5845, !4749, !4750}
!5845 = !DILocation(line: 91, column: 2, scope: !5747)
!5846 = !DILocation(line: 93, column: 2, scope: !5747)
!5847 = !DILocation(line: 94, column: 1, scope: !5747)
!5848 = distinct !DISubprogram(name: "const_test_bit", scope: !5849, file: !5849, line: 166, type: !5850, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5855)
!5849 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!5850 = !DISubroutineType(types: !5851)
!5851 = !{!878, !154, !5852}
!5852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5853, size: 64)
!5853 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5854)
!5854 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !154)
!5855 = !{!5856, !5857, !5858, !5859, !5860}
!5856 = !DILocalVariable(name: "nr", arg: 1, scope: !5848, file: !5849, line: 166, type: !154)
!5857 = !DILocalVariable(name: "addr", arg: 2, scope: !5848, file: !5849, line: 166, type: !5852)
!5858 = !DILocalVariable(name: "p", scope: !5848, file: !5849, line: 168, type: !3959)
!5859 = !DILocalVariable(name: "mask", scope: !5848, file: !5849, line: 169, type: !154)
!5860 = !DILocalVariable(name: "val", scope: !5848, file: !5849, line: 170, type: !154)
!5861 = !DILocation(line: 166, column: 30, scope: !5848)
!5862 = !DILocation(line: 166, column: 64, scope: !5848)
!5863 = !DILocation(line: 168, column: 2, scope: !5848)
!5864 = !DILocation(line: 168, column: 23, scope: !5848)
!5865 = !DILocation(line: 168, column: 50, scope: !5848)
!5866 = !DILocation(line: 168, column: 57, scope: !5848)
!5867 = !DILocation(line: 168, column: 55, scope: !5848)
!5868 = !DILocation(line: 169, column: 2, scope: !5848)
!5869 = !DILocation(line: 169, column: 16, scope: !5848)
!5870 = !DILocation(line: 169, column: 23, scope: !5848)
!5871 = !DILocation(line: 170, column: 2, scope: !5848)
!5872 = !DILocation(line: 170, column: 16, scope: !5848)
!5873 = !DILocation(line: 170, column: 23, scope: !5848)
!5874 = !DILocation(line: 170, column: 22, scope: !5848)
!5875 = !DILocation(line: 172, column: 12, scope: !5848)
!5876 = !DILocation(line: 172, column: 18, scope: !5848)
!5877 = !DILocation(line: 172, column: 16, scope: !5848)
!5878 = !DILocation(line: 172, column: 10, scope: !5848)
!5879 = !DILocation(line: 172, column: 9, scope: !5848)
!5880 = !DILocation(line: 173, column: 1, scope: !5848)
!5881 = !DILocation(line: 172, column: 2, scope: !5848)
!5882 = distinct !DISubprogram(name: "_test_bit", scope: !5883, file: !5883, line: 139, type: !5850, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5884)
!5883 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!5884 = !{!5885, !5886}
!5885 = !DILocalVariable(name: "nr", arg: 1, scope: !5882, file: !5883, line: 139, type: !154)
!5886 = !DILocalVariable(name: "addr", arg: 2, scope: !5882, file: !5883, line: 139, type: !5852)
!5887 = !DILocation(line: 139, column: 25, scope: !5882)
!5888 = !DILocation(line: 139, column: 59, scope: !5882)
!5889 = !DILocation(line: 141, column: 25, scope: !5882)
!5890 = !DILocation(line: 141, column: 32, scope: !5882)
!5891 = !DILocation(line: 141, column: 30, scope: !5882)
!5892 = !DILocation(line: 141, column: 2, scope: !5882)
!5893 = !DILocation(line: 142, column: 23, scope: !5882)
!5894 = !DILocation(line: 142, column: 27, scope: !5882)
!5895 = !DILocation(line: 142, column: 9, scope: !5882)
!5896 = !DILocation(line: 142, column: 2, scope: !5882)
!5897 = distinct !DISubprogram(name: "regcache_rbtree_get_register", scope: !2, file: !2, line: 48, type: !5898, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5900)
!5898 = !DISubroutineType(types: !5899)
!5899 = !{!13, !3990, !156, !13}
!5900 = !{!5901, !5902, !5903}
!5901 = !DILocalVariable(name: "map", arg: 1, scope: !5897, file: !2, line: 48, type: !3990)
!5902 = !DILocalVariable(name: "rbnode", arg: 2, scope: !5897, file: !2, line: 49, type: !156)
!5903 = !DILocalVariable(name: "idx", arg: 3, scope: !5897, file: !2, line: 49, type: !13)
!5904 = !DILocation(line: 48, column: 65, scope: !5897)
!5905 = !DILocation(line: 49, column: 31, scope: !5897)
!5906 = !DILocation(line: 49, column: 52, scope: !5897)
!5907 = !DILocation(line: 51, column: 26, scope: !5897)
!5908 = !DILocation(line: 51, column: 31, scope: !5897)
!5909 = !DILocation(line: 51, column: 39, scope: !5897)
!5910 = !DILocation(line: 51, column: 46, scope: !5897)
!5911 = !DILocation(line: 51, column: 9, scope: !5897)
!5912 = !DILocation(line: 51, column: 2, scope: !5897)
!5913 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !5914, file: !5914, line: 66, type: !5915, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5920)
!5914 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5915 = !DISubroutineType(types: !5916)
!5916 = !{null, !5917, !322}
!5917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5918, size: 64)
!5918 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5919)
!5919 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5920 = !{!5921, !5922}
!5921 = !DILocalVariable(name: "v", arg: 1, scope: !5913, file: !5914, line: 66, type: !5917)
!5922 = !DILocalVariable(name: "size", arg: 2, scope: !5913, file: !5914, line: 66, type: !322)
!5923 = !DILocation(line: 66, column: 73, scope: !5913)
!5924 = !DILocation(line: 66, column: 83, scope: !5913)
!5925 = !DILocation(line: 68, column: 19, scope: !5913)
!5926 = !DILocation(line: 68, column: 22, scope: !5913)
!5927 = !DILocation(line: 68, column: 2, scope: !5913)
!5928 = !DILocation(line: 69, column: 2, scope: !5913)
!5929 = !DILocation(line: 70, column: 1, scope: !5913)
!5930 = distinct !DISubprogram(name: "arch_test_bit", scope: !5931, file: !5931, line: 237, type: !5850, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5932)
!5931 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!5932 = !{!5933, !5934}
!5933 = !DILocalVariable(name: "nr", arg: 1, scope: !5930, file: !5931, line: 237, type: !154)
!5934 = !DILocalVariable(name: "addr", arg: 2, scope: !5930, file: !5931, line: 237, type: !5852)
!5935 = !DILocation(line: 237, column: 29, scope: !5930)
!5936 = !DILocation(line: 237, column: 63, scope: !5930)
!5937 = !DILocation(line: 239, column: 30, scope: !5930)
!5938 = !DILocation(line: 239, column: 9, scope: !5930)
!5939 = !DILocation(line: 239, column: 54, scope: !5930)
!5940 = !DILocation(line: 239, column: 58, scope: !5930)
!5941 = !DILocation(line: 239, column: 36, scope: !5930)
!5942 = !DILocation(line: 240, column: 26, scope: !5930)
!5943 = !DILocation(line: 240, column: 30, scope: !5930)
!5944 = !DILocation(line: 240, column: 8, scope: !5930)
!5945 = !DILocation(line: 239, column: 2, scope: !5930)
!5946 = distinct !DISubprogram(name: "kasan_check_read", scope: !5947, file: !5947, line: 40, type: !5948, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5950)
!5947 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5948 = !DISubroutineType(types: !5949)
!5949 = !{!878, !5917, !13}
!5950 = !{!5951, !5952}
!5951 = !DILocalVariable(name: "p", arg: 1, scope: !5946, file: !5947, line: 40, type: !5917)
!5952 = !DILocalVariable(name: "size", arg: 2, scope: !5946, file: !5947, line: 40, type: !13)
!5953 = !DILocation(line: 40, column: 58, scope: !5946)
!5954 = !DILocation(line: 40, column: 74, scope: !5946)
!5955 = !DILocation(line: 42, column: 2, scope: !5946)
!5956 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5957, file: !5957, line: 229, type: !5958, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5960)
!5957 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5958 = !DISubroutineType(types: !5959)
!5959 = !{null, !5917, !322, !98}
!5960 = !{!5961, !5962, !5963}
!5961 = !DILocalVariable(name: "ptr", arg: 1, scope: !5956, file: !5957, line: 229, type: !5917)
!5962 = !DILocalVariable(name: "size", arg: 2, scope: !5956, file: !5957, line: 229, type: !322)
!5963 = !DILocalVariable(name: "type", arg: 3, scope: !5956, file: !5957, line: 230, type: !98)
!5964 = !DILocation(line: 229, column: 60, scope: !5956)
!5965 = !DILocation(line: 229, column: 72, scope: !5956)
!5966 = !DILocation(line: 230, column: 15, scope: !5956)
!5967 = !DILocation(line: 230, column: 23, scope: !5956)
!5968 = distinct !DISubprogram(name: "constant_test_bit", scope: !5931, file: !5931, line: 204, type: !5969, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5971)
!5969 = !DISubroutineType(types: !5970)
!5970 = !{!878, !311, !5852}
!5971 = !{!5972, !5973}
!5972 = !DILocalVariable(name: "nr", arg: 1, scope: !5968, file: !5931, line: 204, type: !311)
!5973 = !DILocalVariable(name: "addr", arg: 2, scope: !5968, file: !5931, line: 204, type: !5852)
!5974 = !DILocation(line: 204, column: 52, scope: !5968)
!5975 = !DILocation(line: 204, column: 86, scope: !5968)
!5976 = !DILocation(line: 206, column: 19, scope: !5968)
!5977 = !DILocation(line: 206, column: 22, scope: !5968)
!5978 = !DILocation(line: 206, column: 15, scope: !5968)
!5979 = !DILocation(line: 207, column: 4, scope: !5968)
!5980 = !DILocation(line: 207, column: 9, scope: !5968)
!5981 = !DILocation(line: 207, column: 12, scope: !5968)
!5982 = !DILocation(line: 206, column: 44, scope: !5968)
!5983 = !DILocation(line: 207, column: 37, scope: !5968)
!5984 = !DILocation(line: 206, column: 2, scope: !5968)
!5985 = distinct !DISubprogram(name: "variable_test_bit", scope: !5931, file: !5931, line: 224, type: !5969, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5986)
!5986 = !{!5987, !5988, !5989}
!5987 = !DILocalVariable(name: "nr", arg: 1, scope: !5985, file: !5931, line: 224, type: !311)
!5988 = !DILocalVariable(name: "addr", arg: 2, scope: !5985, file: !5931, line: 224, type: !5852)
!5989 = !DILocalVariable(name: "oldbit", scope: !5985, file: !5931, line: 226, type: !878)
!5990 = !DILocation(line: 224, column: 52, scope: !5985)
!5991 = !DILocation(line: 224, column: 86, scope: !5985)
!5992 = !DILocation(line: 226, column: 2, scope: !5985)
!5993 = !DILocation(line: 226, column: 7, scope: !5985)
!5994 = !DILocation(line: 231, column: 33, scope: !5985)
!5995 = !DILocation(line: 231, column: 46, scope: !5985)
!5996 = !DILocation(line: 228, column: 2, scope: !5985)
!5997 = !{i64 2148162568, i64 2148162642}
!5998 = !DILocation(line: 233, column: 9, scope: !5985)
!5999 = !DILocation(line: 234, column: 1, scope: !5985)
!6000 = !DILocation(line: 233, column: 2, scope: !5985)
!6001 = !DISubprogram(name: "regcache_get_val", scope: !3982, file: !3982, line: 274, type: !6002, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6002 = !DISubroutineType(types: !6003)
!6003 = !{!13, !3990, !1209, !13}
!6004 = distinct !DISubprogram(name: "regcache_rbtree_set_register", scope: !2, file: !2, line: 54, type: !6005, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6007)
!6005 = !DISubroutineType(types: !6006)
!6006 = !{null, !3990, !156, !13, !13}
!6007 = !{!6008, !6009, !6010, !6011}
!6008 = !DILocalVariable(name: "map", arg: 1, scope: !6004, file: !2, line: 54, type: !3990)
!6009 = !DILocalVariable(name: "rbnode", arg: 2, scope: !6004, file: !2, line: 55, type: !156)
!6010 = !DILocalVariable(name: "idx", arg: 3, scope: !6004, file: !2, line: 56, type: !13)
!6011 = !DILocalVariable(name: "val", arg: 4, scope: !6004, file: !2, line: 56, type: !13)
!6012 = !DILocation(line: 54, column: 57, scope: !6004)
!6013 = !DILocation(line: 55, column: 36, scope: !6004)
!6014 = !DILocation(line: 56, column: 20, scope: !6004)
!6015 = !DILocation(line: 56, column: 38, scope: !6004)
!6016 = !DILocation(line: 58, column: 10, scope: !6004)
!6017 = !DILocation(line: 58, column: 15, scope: !6004)
!6018 = !DILocation(line: 58, column: 23, scope: !6004)
!6019 = !DILocation(line: 58, column: 2, scope: !6004)
!6020 = !DILocation(line: 59, column: 19, scope: !6004)
!6021 = !DILocation(line: 59, column: 24, scope: !6004)
!6022 = !DILocation(line: 59, column: 32, scope: !6004)
!6023 = !DILocation(line: 59, column: 39, scope: !6004)
!6024 = !DILocation(line: 59, column: 44, scope: !6004)
!6025 = !DILocation(line: 59, column: 2, scope: !6004)
!6026 = !DILocation(line: 60, column: 1, scope: !6004)
!6027 = distinct !DISubprogram(name: "regcache_rbtree_insert_to_block", scope: !2, file: !2, line: 262, type: !6028, scopeLine: 268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6030)
!6028 = !DISubroutineType(types: !6029)
!6029 = !{!98, !3990, !156, !13, !13, !13, !13}
!6030 = !{!6031, !6032, !6033, !6034, !6035, !6036, !6037, !6038, !6039, !6040, !6041}
!6031 = !DILocalVariable(name: "map", arg: 1, scope: !6027, file: !2, line: 262, type: !3990)
!6032 = !DILocalVariable(name: "rbnode", arg: 2, scope: !6027, file: !2, line: 263, type: !156)
!6033 = !DILocalVariable(name: "base_reg", arg: 3, scope: !6027, file: !2, line: 264, type: !13)
!6034 = !DILocalVariable(name: "top_reg", arg: 4, scope: !6027, file: !2, line: 265, type: !13)
!6035 = !DILocalVariable(name: "reg", arg: 5, scope: !6027, file: !2, line: 266, type: !13)
!6036 = !DILocalVariable(name: "value", arg: 6, scope: !6027, file: !2, line: 267, type: !13)
!6037 = !DILocalVariable(name: "blklen", scope: !6027, file: !2, line: 269, type: !13)
!6038 = !DILocalVariable(name: "pos", scope: !6027, file: !2, line: 270, type: !13)
!6039 = !DILocalVariable(name: "offset", scope: !6027, file: !2, line: 270, type: !13)
!6040 = !DILocalVariable(name: "present", scope: !6027, file: !2, line: 271, type: !161)
!6041 = !DILocalVariable(name: "blk", scope: !6027, file: !2, line: 272, type: !6042)
!6042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!6043 = !DILocation(line: 262, column: 59, scope: !6027)
!6044 = !DILocation(line: 263, column: 38, scope: !6027)
!6045 = !DILocation(line: 264, column: 22, scope: !6027)
!6046 = !DILocation(line: 265, column: 22, scope: !6027)
!6047 = !DILocation(line: 266, column: 22, scope: !6027)
!6048 = !DILocation(line: 267, column: 22, scope: !6027)
!6049 = !DILocation(line: 269, column: 2, scope: !6027)
!6050 = !DILocation(line: 269, column: 15, scope: !6027)
!6051 = !DILocation(line: 270, column: 2, scope: !6027)
!6052 = !DILocation(line: 270, column: 15, scope: !6027)
!6053 = !DILocation(line: 270, column: 20, scope: !6027)
!6054 = !DILocation(line: 271, column: 2, scope: !6027)
!6055 = !DILocation(line: 271, column: 17, scope: !6027)
!6056 = !DILocation(line: 272, column: 2, scope: !6027)
!6057 = !DILocation(line: 272, column: 6, scope: !6027)
!6058 = !DILocation(line: 274, column: 12, scope: !6027)
!6059 = !DILocation(line: 274, column: 22, scope: !6027)
!6060 = !DILocation(line: 274, column: 20, scope: !6027)
!6061 = !DILocation(line: 274, column: 34, scope: !6027)
!6062 = !DILocation(line: 274, column: 39, scope: !6027)
!6063 = !DILocation(line: 274, column: 32, scope: !6027)
!6064 = !DILocation(line: 274, column: 50, scope: !6027)
!6065 = !DILocation(line: 274, column: 9, scope: !6027)
!6066 = !DILocation(line: 275, column: 9, scope: !6027)
!6067 = !DILocation(line: 275, column: 15, scope: !6027)
!6068 = !DILocation(line: 275, column: 13, scope: !6027)
!6069 = !DILocation(line: 275, column: 27, scope: !6027)
!6070 = !DILocation(line: 275, column: 32, scope: !6027)
!6071 = !DILocation(line: 275, column: 25, scope: !6027)
!6072 = !DILocation(line: 275, column: 6, scope: !6027)
!6073 = !DILocation(line: 276, column: 12, scope: !6027)
!6074 = !DILocation(line: 276, column: 20, scope: !6027)
!6075 = !DILocation(line: 276, column: 31, scope: !6027)
!6076 = !DILocation(line: 276, column: 29, scope: !6027)
!6077 = !DILocation(line: 276, column: 43, scope: !6027)
!6078 = !DILocation(line: 276, column: 48, scope: !6027)
!6079 = !DILocation(line: 276, column: 41, scope: !6027)
!6080 = !DILocation(line: 276, column: 9, scope: !6027)
!6081 = !DILocation(line: 278, column: 17, scope: !6027)
!6082 = !DILocation(line: 278, column: 25, scope: !6027)
!6083 = !DILocation(line: 279, column: 10, scope: !6027)
!6084 = !DILocation(line: 279, column: 19, scope: !6027)
!6085 = !DILocation(line: 279, column: 24, scope: !6027)
!6086 = !DILocation(line: 279, column: 17, scope: !6027)
!6087 = !DILocation(line: 280, column: 10, scope: !6027)
!6088 = !DILocation(line: 280, column: 15, scope: !6027)
!6089 = !DILocation(line: 278, column: 8, scope: !6027)
!6090 = !DILocation(line: 278, column: 6, scope: !6027)
!6091 = !DILocation(line: 281, column: 7, scope: !6092)
!6092 = distinct !DILexicalBlock(scope: !6027, file: !2, line: 281, column: 6)
!6093 = !DILocation(line: 281, column: 6, scope: !6027)
!6094 = !DILocation(line: 282, column: 3, scope: !6092)
!6095 = !DILocation(line: 284, column: 18, scope: !6027)
!6096 = !DILocation(line: 284, column: 2, scope: !6027)
!6097 = !DILocation(line: 284, column: 10, scope: !6027)
!6098 = !DILocation(line: 284, column: 16, scope: !6027)
!6099 = !DILocation(line: 286, column: 6, scope: !6100)
!6100 = distinct !DILexicalBlock(scope: !6027, file: !2, line: 286, column: 6)
!6101 = !DILocation(line: 286, column: 30, scope: !6100)
!6102 = !DILocation(line: 286, column: 28, scope: !6100)
!6103 = !DILocation(line: 286, column: 6, scope: !6027)
!6104 = !DILocation(line: 287, column: 22, scope: !6105)
!6105 = distinct !DILexicalBlock(scope: !6100, file: !2, line: 286, column: 61)
!6106 = !DILocation(line: 287, column: 30, scope: !6105)
!6107 = !DILocation(line: 288, column: 8, scope: !6105)
!6108 = !DILocation(line: 288, column: 30, scope: !6105)
!6109 = !DILocation(line: 289, column: 8, scope: !6105)
!6110 = !DILocation(line: 289, column: 13, scope: !6105)
!6111 = !DILocation(line: 287, column: 13, scope: !6105)
!6112 = !DILocation(line: 287, column: 11, scope: !6105)
!6113 = !DILocation(line: 290, column: 8, scope: !6114)
!6114 = distinct !DILexicalBlock(scope: !6105, file: !2, line: 290, column: 7)
!6115 = !DILocation(line: 290, column: 7, scope: !6105)
!6116 = !DILocation(line: 291, column: 4, scope: !6114)
!6117 = !DILocation(line: 293, column: 10, scope: !6105)
!6118 = !DILocation(line: 293, column: 20, scope: !6105)
!6119 = !DILocation(line: 293, column: 18, scope: !6105)
!6120 = !DILocation(line: 294, column: 11, scope: !6105)
!6121 = !DILocation(line: 294, column: 35, scope: !6105)
!6122 = !DILocation(line: 294, column: 33, scope: !6105)
!6123 = !DILocation(line: 295, column: 10, scope: !6105)
!6124 = !DILocation(line: 293, column: 3, scope: !6105)
!6125 = !DILocation(line: 296, column: 2, scope: !6105)
!6126 = !DILocation(line: 297, column: 13, scope: !6127)
!6127 = distinct !DILexicalBlock(scope: !6100, file: !2, line: 296, column: 9)
!6128 = !DILocation(line: 297, column: 21, scope: !6127)
!6129 = !DILocation(line: 297, column: 11, scope: !6127)
!6130 = !DILocation(line: 301, column: 6, scope: !6131)
!6131 = distinct !DILexicalBlock(scope: !6027, file: !2, line: 301, column: 6)
!6132 = !DILocation(line: 301, column: 10, scope: !6131)
!6133 = !DILocation(line: 301, column: 6, scope: !6027)
!6134 = !DILocation(line: 302, column: 11, scope: !6135)
!6135 = distinct !DILexicalBlock(scope: !6131, file: !2, line: 301, column: 16)
!6136 = !DILocation(line: 302, column: 17, scope: !6135)
!6137 = !DILocation(line: 302, column: 26, scope: !6135)
!6138 = !DILocation(line: 302, column: 31, scope: !6135)
!6139 = !DILocation(line: 302, column: 24, scope: !6135)
!6140 = !DILocation(line: 302, column: 15, scope: !6135)
!6141 = !DILocation(line: 303, column: 4, scope: !6135)
!6142 = !DILocation(line: 303, column: 9, scope: !6135)
!6143 = !DILocation(line: 303, column: 17, scope: !6135)
!6144 = !DILocation(line: 303, column: 26, scope: !6135)
!6145 = !DILocation(line: 303, column: 31, scope: !6135)
!6146 = !DILocation(line: 303, column: 24, scope: !6135)
!6147 = !DILocation(line: 302, column: 3, scope: !6135)
!6148 = !DILocation(line: 304, column: 21, scope: !6135)
!6149 = !DILocation(line: 304, column: 30, scope: !6135)
!6150 = !DILocation(line: 304, column: 39, scope: !6135)
!6151 = !DILocation(line: 304, column: 47, scope: !6135)
!6152 = !DILocation(line: 304, column: 3, scope: !6135)
!6153 = !DILocation(line: 305, column: 2, scope: !6135)
!6154 = !DILocation(line: 308, column: 19, scope: !6027)
!6155 = !DILocation(line: 308, column: 2, scope: !6027)
!6156 = !DILocation(line: 308, column: 10, scope: !6027)
!6157 = !DILocation(line: 308, column: 17, scope: !6027)
!6158 = !DILocation(line: 309, column: 21, scope: !6027)
!6159 = !DILocation(line: 309, column: 2, scope: !6027)
!6160 = !DILocation(line: 309, column: 10, scope: !6027)
!6161 = !DILocation(line: 309, column: 19, scope: !6027)
!6162 = !DILocation(line: 310, column: 26, scope: !6027)
!6163 = !DILocation(line: 310, column: 2, scope: !6027)
!6164 = !DILocation(line: 310, column: 10, scope: !6027)
!6165 = !DILocation(line: 310, column: 24, scope: !6027)
!6166 = !DILocation(line: 312, column: 31, scope: !6027)
!6167 = !DILocation(line: 312, column: 36, scope: !6027)
!6168 = !DILocation(line: 312, column: 44, scope: !6027)
!6169 = !DILocation(line: 312, column: 49, scope: !6027)
!6170 = !DILocation(line: 312, column: 2, scope: !6027)
!6171 = !DILocation(line: 313, column: 2, scope: !6027)
!6172 = !DILocation(line: 314, column: 1, scope: !6027)
!6173 = distinct !DISubprogram(name: "regcache_rbtree_node_alloc", scope: !2, file: !2, line: 317, type: !5748, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6174)
!6174 = !{!6175, !6176, !6177, !6178, !6179, !6180, !6181}
!6175 = !DILocalVariable(name: "map", arg: 1, scope: !6173, file: !2, line: 317, type: !3990)
!6176 = !DILocalVariable(name: "reg", arg: 2, scope: !6173, file: !2, line: 317, type: !13)
!6177 = !DILocalVariable(name: "rbnode", scope: !6173, file: !2, line: 319, type: !156)
!6178 = !DILocalVariable(name: "range", scope: !6173, file: !2, line: 320, type: !4592)
!6179 = !DILocalVariable(name: "i", scope: !6173, file: !2, line: 321, type: !98)
!6180 = !DILabel(scope: !6173, name: "err_free_block", file: !2, line: 361)
!6181 = !DILabel(scope: !6173, name: "err_free", file: !2, line: 363)
!6182 = !DILocation(line: 317, column: 43, scope: !6173)
!6183 = !DILocation(line: 317, column: 61, scope: !6173)
!6184 = !DILocation(line: 319, column: 2, scope: !6173)
!6185 = !DILocation(line: 319, column: 31, scope: !6173)
!6186 = !DILocation(line: 320, column: 2, scope: !6173)
!6187 = !DILocation(line: 320, column: 29, scope: !6173)
!6188 = !DILocation(line: 321, column: 2, scope: !6173)
!6189 = !DILocation(line: 321, column: 6, scope: !6173)
!6190 = !DILocation(line: 323, column: 36, scope: !6173)
!6191 = !DILocation(line: 323, column: 41, scope: !6173)
!6192 = !DILocation(line: 323, column: 11, scope: !6173)
!6193 = !DILocation(line: 323, column: 9, scope: !6173)
!6194 = !DILocation(line: 324, column: 7, scope: !6195)
!6195 = distinct !DILexicalBlock(scope: !6173, file: !2, line: 324, column: 6)
!6196 = !DILocation(line: 324, column: 6, scope: !6173)
!6197 = !DILocation(line: 325, column: 3, scope: !6195)
!6198 = !DILocation(line: 328, column: 6, scope: !6199)
!6199 = distinct !DILexicalBlock(scope: !6173, file: !2, line: 328, column: 6)
!6200 = !DILocation(line: 328, column: 11, scope: !6199)
!6201 = !DILocation(line: 328, column: 6, scope: !6173)
!6202 = !DILocation(line: 329, column: 10, scope: !6203)
!6203 = distinct !DILexicalBlock(scope: !6204, file: !2, line: 329, column: 3)
!6204 = distinct !DILexicalBlock(scope: !6199, file: !2, line: 328, column: 21)
!6205 = !DILocation(line: 329, column: 8, scope: !6203)
!6206 = !DILocation(line: 329, column: 15, scope: !6207)
!6207 = distinct !DILexicalBlock(scope: !6203, file: !2, line: 329, column: 3)
!6208 = !DILocation(line: 329, column: 19, scope: !6207)
!6209 = !DILocation(line: 329, column: 24, scope: !6207)
!6210 = !DILocation(line: 329, column: 34, scope: !6207)
!6211 = !DILocation(line: 329, column: 17, scope: !6207)
!6212 = !DILocation(line: 329, column: 3, scope: !6203)
!6213 = !DILocation(line: 330, column: 28, scope: !6214)
!6214 = distinct !DILexicalBlock(scope: !6215, file: !2, line: 330, column: 8)
!6215 = distinct !DILexicalBlock(scope: !6207, file: !2, line: 329, column: 53)
!6216 = !DILocation(line: 331, column: 8, scope: !6214)
!6217 = !DILocation(line: 331, column: 13, scope: !6214)
!6218 = !DILocation(line: 331, column: 23, scope: !6214)
!6219 = !DILocation(line: 331, column: 34, scope: !6214)
!6220 = !DILocation(line: 330, column: 8, scope: !6214)
!6221 = !DILocation(line: 330, column: 8, scope: !6215)
!6222 = !DILocation(line: 332, column: 5, scope: !6214)
!6223 = !DILocation(line: 333, column: 3, scope: !6215)
!6224 = !DILocation(line: 329, column: 49, scope: !6207)
!6225 = !DILocation(line: 329, column: 3, scope: !6207)
!6226 = distinct !{!6226, !6212, !6227, !4749, !4750}
!6227 = !DILocation(line: 333, column: 3, scope: !6203)
!6228 = !DILocation(line: 335, column: 7, scope: !6229)
!6229 = distinct !DILexicalBlock(scope: !6204, file: !2, line: 335, column: 7)
!6230 = !DILocation(line: 335, column: 12, scope: !6229)
!6231 = !DILocation(line: 335, column: 17, scope: !6229)
!6232 = !DILocation(line: 335, column: 27, scope: !6229)
!6233 = !DILocation(line: 335, column: 9, scope: !6229)
!6234 = !DILocation(line: 335, column: 7, scope: !6204)
!6235 = !DILocation(line: 336, column: 13, scope: !6236)
!6236 = distinct !DILexicalBlock(scope: !6229, file: !2, line: 335, column: 41)
!6237 = !DILocation(line: 336, column: 18, scope: !6236)
!6238 = !DILocation(line: 336, column: 28, scope: !6236)
!6239 = !DILocation(line: 336, column: 39, scope: !6236)
!6240 = !DILocation(line: 336, column: 10, scope: !6236)
!6241 = !DILocation(line: 337, column: 22, scope: !6236)
!6242 = !DILocation(line: 337, column: 29, scope: !6236)
!6243 = !DILocation(line: 337, column: 41, scope: !6236)
!6244 = !DILocation(line: 337, column: 48, scope: !6236)
!6245 = !DILocation(line: 337, column: 39, scope: !6236)
!6246 = !DILocation(line: 338, column: 5, scope: !6236)
!6247 = !DILocation(line: 338, column: 10, scope: !6236)
!6248 = !DILocation(line: 337, column: 59, scope: !6236)
!6249 = !DILocation(line: 338, column: 21, scope: !6236)
!6250 = !DILocation(line: 337, column: 4, scope: !6236)
!6251 = !DILocation(line: 337, column: 12, scope: !6236)
!6252 = !DILocation(line: 337, column: 19, scope: !6236)
!6253 = !DILocation(line: 339, column: 23, scope: !6236)
!6254 = !DILocation(line: 339, column: 30, scope: !6236)
!6255 = !DILocation(line: 339, column: 4, scope: !6236)
!6256 = !DILocation(line: 339, column: 12, scope: !6236)
!6257 = !DILocation(line: 339, column: 21, scope: !6236)
!6258 = !DILocation(line: 340, column: 3, scope: !6236)
!6259 = !DILocation(line: 341, column: 2, scope: !6204)
!6260 = !DILocation(line: 343, column: 7, scope: !6261)
!6261 = distinct !DILexicalBlock(scope: !6173, file: !2, line: 343, column: 6)
!6262 = !DILocation(line: 343, column: 15, scope: !6261)
!6263 = !DILocation(line: 343, column: 6, scope: !6173)
!6264 = !DILocation(line: 344, column: 3, scope: !6265)
!6265 = distinct !DILexicalBlock(scope: !6261, file: !2, line: 343, column: 23)
!6266 = !DILocation(line: 344, column: 11, scope: !6265)
!6267 = !DILocation(line: 344, column: 18, scope: !6265)
!6268 = !DILocation(line: 345, column: 22, scope: !6265)
!6269 = !DILocation(line: 345, column: 3, scope: !6265)
!6270 = !DILocation(line: 345, column: 11, scope: !6265)
!6271 = !DILocation(line: 345, column: 20, scope: !6265)
!6272 = !DILocation(line: 346, column: 2, scope: !6265)
!6273 = !DILocation(line: 348, column: 32, scope: !6173)
!6274 = !DILocation(line: 348, column: 40, scope: !6173)
!6275 = !DILocation(line: 348, column: 48, scope: !6173)
!6276 = !DILocation(line: 348, column: 53, scope: !6173)
!6277 = !DILocation(line: 349, column: 11, scope: !6173)
!6278 = !DILocation(line: 349, column: 16, scope: !6173)
!6279 = !DILocation(line: 348, column: 18, scope: !6173)
!6280 = !DILocation(line: 348, column: 2, scope: !6173)
!6281 = !DILocation(line: 348, column: 10, scope: !6173)
!6282 = !DILocation(line: 348, column: 16, scope: !6173)
!6283 = !DILocation(line: 350, column: 7, scope: !6284)
!6284 = distinct !DILexicalBlock(scope: !6173, file: !2, line: 350, column: 6)
!6285 = !DILocation(line: 350, column: 15, scope: !6284)
!6286 = !DILocation(line: 350, column: 6, scope: !6173)
!6287 = !DILocation(line: 351, column: 3, scope: !6284)
!6288 = !DILocation(line: 353, column: 34, scope: !6173)
!6289 = !DILocation(line: 355, column: 6, scope: !6173)
!6290 = !DILocation(line: 355, column: 11, scope: !6173)
!6291 = !DILocation(line: 353, column: 26, scope: !6173)
!6292 = !DILocation(line: 353, column: 2, scope: !6173)
!6293 = !DILocation(line: 353, column: 10, scope: !6173)
!6294 = !DILocation(line: 353, column: 24, scope: !6173)
!6295 = !DILocation(line: 356, column: 7, scope: !6296)
!6296 = distinct !DILexicalBlock(scope: !6173, file: !2, line: 356, column: 6)
!6297 = !DILocation(line: 356, column: 15, scope: !6296)
!6298 = !DILocation(line: 356, column: 6, scope: !6173)
!6299 = !DILocation(line: 357, column: 3, scope: !6296)
!6300 = !DILocation(line: 359, column: 9, scope: !6173)
!6301 = !DILocation(line: 359, column: 2, scope: !6173)
!6302 = !DILocation(line: 361, column: 1, scope: !6173)
!6303 = !DILocation(line: 362, column: 8, scope: !6173)
!6304 = !DILocation(line: 362, column: 16, scope: !6173)
!6305 = !DILocation(line: 362, column: 2, scope: !6173)
!6306 = !DILocation(line: 363, column: 1, scope: !6173)
!6307 = !DILocation(line: 364, column: 8, scope: !6173)
!6308 = !DILocation(line: 364, column: 2, scope: !6173)
!6309 = !DILocation(line: 365, column: 2, scope: !6173)
!6310 = !DILocation(line: 366, column: 1, scope: !6173)
!6311 = distinct !DISubprogram(name: "regcache_rbtree_insert", scope: !2, file: !2, line: 96, type: !6312, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6314)
!6312 = !DISubroutineType(types: !6313)
!6313 = !{!98, !3990, !5580, !156}
!6314 = !{!6315, !6316, !6317, !6318, !6320, !6321, !6322, !6323, !6324, !6325}
!6315 = !DILocalVariable(name: "map", arg: 1, scope: !6311, file: !2, line: 96, type: !3990)
!6316 = !DILocalVariable(name: "root", arg: 2, scope: !6311, file: !2, line: 96, type: !5580)
!6317 = !DILocalVariable(name: "rbnode", arg: 3, scope: !6311, file: !2, line: 97, type: !156)
!6318 = !DILocalVariable(name: "new", scope: !6311, file: !2, line: 99, type: !6319)
!6319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!6320 = !DILocalVariable(name: "parent", scope: !6311, file: !2, line: 99, type: !170)
!6321 = !DILocalVariable(name: "rbnode_tmp", scope: !6311, file: !2, line: 100, type: !156)
!6322 = !DILocalVariable(name: "base_reg_tmp", scope: !6311, file: !2, line: 101, type: !13)
!6323 = !DILocalVariable(name: "top_reg_tmp", scope: !6311, file: !2, line: 101, type: !13)
!6324 = !DILocalVariable(name: "base_reg", scope: !6311, file: !2, line: 102, type: !13)
!6325 = !DILocalVariable(name: "__mptr", scope: !6326, file: !2, line: 107, type: !155)
!6326 = distinct !DILexicalBlock(scope: !6327, file: !2, line: 107, column: 16)
!6327 = distinct !DILexicalBlock(scope: !6311, file: !2, line: 106, column: 15)
!6328 = !DILocation(line: 96, column: 50, scope: !6311)
!6329 = !DILocation(line: 96, column: 71, scope: !6311)
!6330 = !DILocation(line: 97, column: 36, scope: !6311)
!6331 = !DILocation(line: 99, column: 2, scope: !6311)
!6332 = !DILocation(line: 99, column: 19, scope: !6311)
!6333 = !DILocation(line: 99, column: 25, scope: !6311)
!6334 = !DILocation(line: 100, column: 2, scope: !6311)
!6335 = !DILocation(line: 100, column: 31, scope: !6311)
!6336 = !DILocation(line: 101, column: 2, scope: !6311)
!6337 = !DILocation(line: 101, column: 15, scope: !6311)
!6338 = !DILocation(line: 101, column: 29, scope: !6311)
!6339 = !DILocation(line: 102, column: 2, scope: !6311)
!6340 = !DILocation(line: 102, column: 15, scope: !6311)
!6341 = !DILocation(line: 104, column: 9, scope: !6311)
!6342 = !DILocation(line: 105, column: 9, scope: !6311)
!6343 = !DILocation(line: 105, column: 15, scope: !6311)
!6344 = !DILocation(line: 105, column: 6, scope: !6311)
!6345 = !DILocation(line: 106, column: 2, scope: !6311)
!6346 = !DILocation(line: 106, column: 10, scope: !6311)
!6347 = !DILocation(line: 106, column: 9, scope: !6311)
!6348 = !DILocation(line: 107, column: 16, scope: !6326)
!6349 = !DILocation(line: 107, column: 16, scope: !6327)
!6350 = !DILocation(line: 107, column: 14, scope: !6327)
!6351 = !DILocation(line: 109, column: 36, scope: !6327)
!6352 = !DILocation(line: 109, column: 41, scope: !6327)
!6353 = !DILocation(line: 109, column: 3, scope: !6327)
!6354 = !DILocation(line: 112, column: 14, scope: !6327)
!6355 = !DILocation(line: 112, column: 22, scope: !6327)
!6356 = !DILocation(line: 112, column: 12, scope: !6327)
!6357 = !DILocation(line: 113, column: 13, scope: !6327)
!6358 = !DILocation(line: 113, column: 12, scope: !6327)
!6359 = !DILocation(line: 113, column: 10, scope: !6327)
!6360 = !DILocation(line: 115, column: 7, scope: !6361)
!6361 = distinct !DILexicalBlock(scope: !6327, file: !2, line: 115, column: 7)
!6362 = !DILocation(line: 115, column: 19, scope: !6361)
!6363 = !DILocation(line: 115, column: 16, scope: !6361)
!6364 = !DILocation(line: 115, column: 32, scope: !6361)
!6365 = !DILocation(line: 116, column: 7, scope: !6361)
!6366 = !DILocation(line: 116, column: 19, scope: !6361)
!6367 = !DILocation(line: 116, column: 16, scope: !6361)
!6368 = !DILocation(line: 115, column: 7, scope: !6327)
!6369 = !DILocation(line: 117, column: 4, scope: !6361)
!6370 = !DILocation(line: 118, column: 12, scope: !6371)
!6371 = distinct !DILexicalBlock(scope: !6361, file: !2, line: 118, column: 12)
!6372 = !DILocation(line: 118, column: 23, scope: !6371)
!6373 = !DILocation(line: 118, column: 21, scope: !6371)
!6374 = !DILocation(line: 118, column: 12, scope: !6361)
!6375 = !DILocation(line: 119, column: 14, scope: !6371)
!6376 = !DILocation(line: 119, column: 13, scope: !6371)
!6377 = !DILocation(line: 119, column: 20, scope: !6371)
!6378 = !DILocation(line: 119, column: 8, scope: !6371)
!6379 = !DILocation(line: 119, column: 4, scope: !6371)
!6380 = !DILocation(line: 120, column: 12, scope: !6381)
!6381 = distinct !DILexicalBlock(scope: !6371, file: !2, line: 120, column: 12)
!6382 = !DILocation(line: 120, column: 23, scope: !6381)
!6383 = !DILocation(line: 120, column: 21, scope: !6381)
!6384 = !DILocation(line: 120, column: 12, scope: !6371)
!6385 = !DILocation(line: 121, column: 14, scope: !6381)
!6386 = !DILocation(line: 121, column: 13, scope: !6381)
!6387 = !DILocation(line: 121, column: 20, scope: !6381)
!6388 = !DILocation(line: 121, column: 8, scope: !6381)
!6389 = !DILocation(line: 121, column: 4, scope: !6381)
!6390 = distinct !{!6390, !6345, !6391, !4749, !4750}
!6391 = !DILocation(line: 122, column: 2, scope: !6311)
!6392 = !DILocation(line: 125, column: 16, scope: !6311)
!6393 = !DILocation(line: 125, column: 24, scope: !6311)
!6394 = !DILocation(line: 125, column: 30, scope: !6311)
!6395 = !DILocation(line: 125, column: 38, scope: !6311)
!6396 = !DILocation(line: 125, column: 2, scope: !6311)
!6397 = !DILocation(line: 126, column: 19, scope: !6311)
!6398 = !DILocation(line: 126, column: 27, scope: !6311)
!6399 = !DILocation(line: 126, column: 33, scope: !6311)
!6400 = !DILocation(line: 126, column: 2, scope: !6311)
!6401 = !DILocation(line: 128, column: 2, scope: !6311)
!6402 = !DILocation(line: 129, column: 1, scope: !6311)
!6403 = distinct !DISubprogram(name: "set_bit", scope: !6404, file: !6404, line: 26, type: !6405, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6408)
!6404 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!6405 = !DISubroutineType(types: !6406)
!6406 = !{null, !311, !6407}
!6407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5854, size: 64)
!6408 = !{!6409, !6410}
!6409 = !DILocalVariable(name: "nr", arg: 1, scope: !6403, file: !6404, line: 26, type: !311)
!6410 = !DILocalVariable(name: "addr", arg: 2, scope: !6403, file: !6404, line: 26, type: !6407)
!6411 = !DILocation(line: 26, column: 42, scope: !6403)
!6412 = !DILocation(line: 26, column: 70, scope: !6403)
!6413 = !DILocation(line: 28, column: 26, scope: !6403)
!6414 = !DILocation(line: 28, column: 33, scope: !6403)
!6415 = !DILocation(line: 28, column: 31, scope: !6403)
!6416 = !DILocation(line: 28, column: 2, scope: !6403)
!6417 = !DILocation(line: 29, column: 15, scope: !6403)
!6418 = !DILocation(line: 29, column: 19, scope: !6403)
!6419 = !DILocation(line: 29, column: 2, scope: !6403)
!6420 = !DILocation(line: 30, column: 1, scope: !6403)
!6421 = !DISubprogram(name: "regcache_set_val", scope: !3982, file: !3982, line: 276, type: !6422, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6422 = !DISubroutineType(types: !6423)
!6423 = !{null, !3990, !155, !13, !13}
!6424 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !5914, file: !5914, line: 80, type: !5915, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6425)
!6425 = !{!6426, !6427}
!6426 = !DILocalVariable(name: "v", arg: 1, scope: !6424, file: !5914, line: 80, type: !5917)
!6427 = !DILocalVariable(name: "size", arg: 2, scope: !6424, file: !5914, line: 80, type: !322)
!6428 = !DILocation(line: 80, column: 74, scope: !6424)
!6429 = !DILocation(line: 80, column: 84, scope: !6424)
!6430 = !DILocation(line: 82, column: 20, scope: !6424)
!6431 = !DILocation(line: 82, column: 23, scope: !6424)
!6432 = !DILocation(line: 82, column: 2, scope: !6424)
!6433 = !DILocation(line: 83, column: 2, scope: !6424)
!6434 = !DILocation(line: 84, column: 1, scope: !6424)
!6435 = distinct !DISubprogram(name: "arch_set_bit", scope: !5931, file: !5931, line: 52, type: !6405, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6436)
!6436 = !{!6437, !6438}
!6437 = !DILocalVariable(name: "nr", arg: 1, scope: !6435, file: !5931, line: 52, type: !311)
!6438 = !DILocalVariable(name: "addr", arg: 2, scope: !6435, file: !5931, line: 52, type: !6407)
!6439 = !DILocation(line: 52, column: 19, scope: !6435)
!6440 = !DILocation(line: 52, column: 47, scope: !6435)
!6441 = !DILocation(line: 54, column: 27, scope: !6442)
!6442 = distinct !DILexicalBlock(scope: !6435, file: !5931, line: 54, column: 6)
!6443 = !DILocation(line: 54, column: 6, scope: !6442)
!6444 = !DILocation(line: 54, column: 6, scope: !6435)
!6445 = !DILocation(line: 56, column: 6, scope: !6446)
!6446 = distinct !DILexicalBlock(scope: !6442, file: !5931, line: 54, column: 32)
!6447 = !DILocation(line: 57, column: 12, scope: !6446)
!6448 = !DILocation(line: 55, column: 3, scope: !6446)
!6449 = !{i64 2148148956, i64 2148148995, i64 2148149016, i64 2148149053, i64 2148149076, i64 2148148946}
!6450 = !DILocation(line: 59, column: 2, scope: !6446)
!6451 = !DILocation(line: 61, column: 8, scope: !6452)
!6452 = distinct !DILexicalBlock(scope: !6442, file: !5931, line: 59, column: 9)
!6453 = !DILocation(line: 61, column: 32, scope: !6452)
!6454 = !DILocation(line: 60, column: 3, scope: !6452)
!6455 = !{i64 2148149241, i64 2148149280, i64 2148149301, i64 2148149338, i64 2148149361, i64 2148149231}
!6456 = !DILocation(line: 63, column: 1, scope: !6435)
!6457 = distinct !DISubprogram(name: "kasan_check_write", scope: !5947, file: !5947, line: 44, type: !5948, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6458)
!6458 = !{!6459, !6460}
!6459 = !DILocalVariable(name: "p", arg: 1, scope: !6457, file: !5947, line: 44, type: !5917)
!6460 = !DILocalVariable(name: "size", arg: 2, scope: !6457, file: !5947, line: 44, type: !13)
!6461 = !DILocation(line: 44, column: 59, scope: !6457)
!6462 = !DILocation(line: 44, column: 75, scope: !6457)
!6463 = !DILocation(line: 46, column: 2, scope: !6457)
!6464 = !DISubprogram(name: "krealloc", scope: !142, file: !142, line: 226, type: !6465, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6465 = !DISubroutineType(types: !6466)
!6466 = !{!155, !1209, !322, !152}
!6467 = distinct !DISubprogram(name: "bitmap_shift_left", scope: !6468, file: !6468, line: 510, type: !6469, scopeLine: 512, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6471)
!6468 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e602e35f6e89a2b4274644378845f524")
!6469 = !DISubroutineType(types: !6470)
!6470 = !{null, !161, !3959, !13, !13}
!6471 = !{!6472, !6473, !6474, !6475}
!6472 = !DILocalVariable(name: "dst", arg: 1, scope: !6467, file: !6468, line: 510, type: !161)
!6473 = !DILocalVariable(name: "src", arg: 2, scope: !6467, file: !6468, line: 510, type: !3959)
!6474 = !DILocalVariable(name: "shift", arg: 3, scope: !6467, file: !6468, line: 511, type: !13)
!6475 = !DILocalVariable(name: "nbits", arg: 4, scope: !6467, file: !6468, line: 511, type: !13)
!6476 = !DILocation(line: 510, column: 53, scope: !6467)
!6477 = !DILocation(line: 510, column: 79, scope: !6467)
!6478 = !DILocation(line: 511, column: 18, scope: !6467)
!6479 = !DILocation(line: 511, column: 38, scope: !6467)
!6480 = !DILocation(line: 513, column: 6, scope: !6481)
!6481 = distinct !DILexicalBlock(scope: !6467, file: !6468, line: 513, column: 6)
!6482 = !DILocation(line: 513, column: 6, scope: !6467)
!6483 = !DILocation(line: 514, column: 12, scope: !6481)
!6484 = !DILocation(line: 514, column: 11, scope: !6481)
!6485 = !DILocation(line: 514, column: 19, scope: !6481)
!6486 = !DILocation(line: 514, column: 16, scope: !6481)
!6487 = !DILocation(line: 514, column: 28, scope: !6481)
!6488 = !DILocation(line: 514, column: 26, scope: !6481)
!6489 = !DILocation(line: 514, column: 4, scope: !6481)
!6490 = !DILocation(line: 514, column: 8, scope: !6481)
!6491 = !DILocation(line: 514, column: 3, scope: !6481)
!6492 = !DILocation(line: 516, column: 23, scope: !6481)
!6493 = !DILocation(line: 516, column: 28, scope: !6481)
!6494 = !DILocation(line: 516, column: 33, scope: !6481)
!6495 = !DILocation(line: 516, column: 40, scope: !6481)
!6496 = !DILocation(line: 516, column: 3, scope: !6481)
!6497 = !DILocation(line: 517, column: 1, scope: !6467)
!6498 = !DISubprogram(name: "__bitmap_shift_left", scope: !6468, file: !6468, line: 152, type: !6469, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6499 = distinct !DISubprogram(name: "kzalloc", scope: !142, file: !142, line: 719, type: !5347, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6500)
!6500 = !{!6501, !6502}
!6501 = !DILocalVariable(name: "size", arg: 1, scope: !6499, file: !142, line: 719, type: !322)
!6502 = !DILocalVariable(name: "flags", arg: 2, scope: !6499, file: !142, line: 719, type: !152)
!6503 = !DILocation(line: 719, column: 52, scope: !6499)
!6504 = !DILocation(line: 719, column: 64, scope: !6499)
!6505 = !DILocation(line: 721, column: 17, scope: !6499)
!6506 = !DILocation(line: 721, column: 23, scope: !6499)
!6507 = !DILocation(line: 721, column: 29, scope: !6499)
!6508 = !DILocation(line: 721, column: 9, scope: !6499)
!6509 = !DILocation(line: 721, column: 2, scope: !6499)
!6510 = distinct !DISubprogram(name: "regmap_reg_in_range", scope: !12, file: !12, line: 1301, type: !6511, scopeLine: 1303, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6513)
!6511 = !DISubroutineType(types: !6512)
!6512 = !{!878, !13, !4592}
!6513 = !{!6514, !6515}
!6514 = !DILocalVariable(name: "reg", arg: 1, scope: !6510, file: !12, line: 1301, type: !13)
!6515 = !DILocalVariable(name: "range", arg: 2, scope: !6510, file: !12, line: 1302, type: !4592)
!6516 = !DILocation(line: 1301, column: 53, scope: !6510)
!6517 = !DILocation(line: 1302, column: 39, scope: !6510)
!6518 = !DILocation(line: 1304, column: 9, scope: !6510)
!6519 = !DILocation(line: 1304, column: 16, scope: !6510)
!6520 = !DILocation(line: 1304, column: 23, scope: !6510)
!6521 = !DILocation(line: 1304, column: 13, scope: !6510)
!6522 = !DILocation(line: 1304, column: 33, scope: !6510)
!6523 = !DILocation(line: 1304, column: 36, scope: !6510)
!6524 = !DILocation(line: 1304, column: 43, scope: !6510)
!6525 = !DILocation(line: 1304, column: 50, scope: !6510)
!6526 = !DILocation(line: 1304, column: 40, scope: !6510)
!6527 = !DILocation(line: 0, scope: !6510)
!6528 = !DILocation(line: 1304, column: 2, scope: !6510)
!6529 = distinct !DISubprogram(name: "kmalloc_array", scope: !142, file: !142, line: 629, type: !6530, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6532)
!6530 = !DISubroutineType(types: !6531)
!6531 = !{!155, !322, !322, !152}
!6532 = !{!6533, !6534, !6535, !6536}
!6533 = !DILocalVariable(name: "n", arg: 1, scope: !6529, file: !142, line: 629, type: !322)
!6534 = !DILocalVariable(name: "size", arg: 2, scope: !6529, file: !142, line: 629, type: !322)
!6535 = !DILocalVariable(name: "flags", arg: 3, scope: !6529, file: !142, line: 629, type: !152)
!6536 = !DILocalVariable(name: "bytes", scope: !6529, file: !142, line: 631, type: !322)
!6537 = !DILocation(line: 629, column: 61, scope: !6529)
!6538 = !DILocation(line: 629, column: 71, scope: !6529)
!6539 = !DILocation(line: 629, column: 83, scope: !6529)
!6540 = !DILocation(line: 631, column: 2, scope: !6529)
!6541 = !DILocation(line: 631, column: 9, scope: !6529)
!6542 = !DILocation(line: 633, column: 6, scope: !6543)
!6543 = distinct !DILexicalBlock(scope: !6529, file: !142, line: 633, column: 6)
!6544 = !DILocation(line: 633, column: 6, scope: !6529)
!6545 = !DILocation(line: 634, column: 3, scope: !6543)
!6546 = !DILocation(line: 635, column: 27, scope: !6547)
!6547 = distinct !DILexicalBlock(scope: !6529, file: !142, line: 635, column: 6)
!6548 = !DILocation(line: 635, column: 6, scope: !6547)
!6549 = !DILocation(line: 635, column: 30, scope: !6547)
!6550 = !DILocation(line: 635, column: 54, scope: !6547)
!6551 = !DILocation(line: 635, column: 33, scope: !6547)
!6552 = !DILocation(line: 635, column: 6, scope: !6529)
!6553 = !DILocation(line: 636, column: 18, scope: !6547)
!6554 = !DILocation(line: 636, column: 25, scope: !6547)
!6555 = !DILocation(line: 636, column: 10, scope: !6547)
!6556 = !DILocation(line: 636, column: 3, scope: !6547)
!6557 = !DILocation(line: 637, column: 19, scope: !6529)
!6558 = !DILocation(line: 637, column: 26, scope: !6529)
!6559 = !DILocation(line: 637, column: 9, scope: !6529)
!6560 = !DILocation(line: 637, column: 2, scope: !6529)
!6561 = !DILocation(line: 638, column: 1, scope: !6529)
!6562 = distinct !DISubprogram(name: "kcalloc", scope: !142, file: !142, line: 666, type: !6530, scopeLine: 667, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6563)
!6563 = !{!6564, !6565, !6566}
!6564 = !DILocalVariable(name: "n", arg: 1, scope: !6562, file: !142, line: 666, type: !322)
!6565 = !DILocalVariable(name: "size", arg: 2, scope: !6562, file: !142, line: 666, type: !322)
!6566 = !DILocalVariable(name: "flags", arg: 3, scope: !6562, file: !142, line: 666, type: !152)
!6567 = !DILocation(line: 666, column: 55, scope: !6562)
!6568 = !DILocation(line: 666, column: 65, scope: !6562)
!6569 = !DILocation(line: 666, column: 77, scope: !6562)
!6570 = !DILocation(line: 668, column: 23, scope: !6562)
!6571 = !DILocation(line: 668, column: 26, scope: !6562)
!6572 = !DILocation(line: 668, column: 32, scope: !6562)
!6573 = !DILocation(line: 668, column: 38, scope: !6562)
!6574 = !DILocation(line: 668, column: 9, scope: !6562)
!6575 = !DILocation(line: 668, column: 2, scope: !6562)
!6576 = distinct !DISubprogram(name: "__must_check_overflow", scope: !6577, file: !6577, line: 51, type: !6578, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6580)
!6577 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!6578 = !DISubroutineType(types: !6579)
!6579 = !{!878, !878}
!6580 = !{!6581}
!6581 = !DILocalVariable(name: "overflow", arg: 1, scope: !6576, file: !6577, line: 51, type: !878)
!6582 = !DILocation(line: 51, column: 60, scope: !6576)
!6583 = !DILocation(line: 53, column: 9, scope: !6576)
!6584 = !DILocation(line: 53, column: 2, scope: !6576)
!6585 = distinct !DISubprogram(name: "rb_link_node", scope: !5567, file: !5567, line: 59, type: !6586, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6588)
!6586 = !DISubroutineType(types: !6587)
!6587 = !{null, !170, !170, !6319}
!6588 = !{!6589, !6590, !6591}
!6589 = !DILocalVariable(name: "node", arg: 1, scope: !6585, file: !5567, line: 59, type: !170)
!6590 = !DILocalVariable(name: "parent", arg: 2, scope: !6585, file: !5567, line: 59, type: !170)
!6591 = !DILocalVariable(name: "rb_link", arg: 3, scope: !6585, file: !5567, line: 60, type: !6319)
!6592 = !DILocation(line: 59, column: 49, scope: !6585)
!6593 = !DILocation(line: 59, column: 71, scope: !6585)
!6594 = !DILocation(line: 60, column: 22, scope: !6585)
!6595 = !DILocation(line: 62, column: 43, scope: !6585)
!6596 = !DILocation(line: 62, column: 28, scope: !6585)
!6597 = !DILocation(line: 62, column: 2, scope: !6585)
!6598 = !DILocation(line: 62, column: 8, scope: !6585)
!6599 = !DILocation(line: 62, column: 26, scope: !6585)
!6600 = !DILocation(line: 63, column: 18, scope: !6585)
!6601 = !DILocation(line: 63, column: 24, scope: !6585)
!6602 = !DILocation(line: 63, column: 33, scope: !6585)
!6603 = !DILocation(line: 63, column: 2, scope: !6585)
!6604 = !DILocation(line: 63, column: 8, scope: !6585)
!6605 = !DILocation(line: 63, column: 16, scope: !6585)
!6606 = !DILocation(line: 65, column: 13, scope: !6585)
!6607 = !DILocation(line: 65, column: 3, scope: !6585)
!6608 = !DILocation(line: 65, column: 11, scope: !6585)
!6609 = !DILocation(line: 66, column: 1, scope: !6585)
!6610 = !DISubprogram(name: "rb_insert_color", scope: !5567, file: !5567, line: 39, type: !5578, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6611 = !DISubprogram(name: "regcache_sync_block", scope: !3982, file: !3982, line: 260, type: !6612, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6612 = !DISubroutineType(types: !6613)
!6613 = !{!98, !3990, !155, !161, !13, !13, !13}
!6614 = !DISubprogram(name: "regmap_async_complete", scope: !12, file: !12, line: 1278, type: !3988, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6615 = distinct !DISubprogram(name: "bitmap_clear", scope: !6468, file: !6468, line: 485, type: !6616, scopeLine: 487, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6618)
!6616 = !DISubroutineType(types: !6617)
!6617 = !{null, !161, !13, !13}
!6618 = !{!6619, !6620, !6621}
!6619 = !DILocalVariable(name: "map", arg: 1, scope: !6615, file: !6468, line: 485, type: !161)
!6620 = !DILocalVariable(name: "start", arg: 2, scope: !6615, file: !6468, line: 485, type: !13)
!6621 = !DILocalVariable(name: "nbits", arg: 3, scope: !6615, file: !6468, line: 486, type: !13)
!6622 = !DILocation(line: 485, column: 57, scope: !6615)
!6623 = !DILocation(line: 485, column: 75, scope: !6615)
!6624 = !DILocation(line: 486, column: 16, scope: !6615)
!6625 = !DILocation(line: 488, column: 27, scope: !6626)
!6626 = distinct !DILexicalBlock(scope: !6615, file: !6468, line: 488, column: 6)
!6627 = !DILocation(line: 488, column: 6, scope: !6626)
!6628 = !DILocation(line: 488, column: 34, scope: !6626)
!6629 = !DILocation(line: 488, column: 37, scope: !6626)
!6630 = !DILocation(line: 488, column: 43, scope: !6626)
!6631 = !DILocation(line: 488, column: 6, scope: !6615)
!6632 = !DILocation(line: 489, column: 3, scope: !6626)
!6633 = !DILocation(line: 490, column: 11, scope: !6634)
!6634 = distinct !DILexicalBlock(scope: !6626, file: !6468, line: 490, column: 11)
!6635 = !DILocation(line: 490, column: 11, scope: !6626)
!6636 = !DILocation(line: 491, column: 12, scope: !6634)
!6637 = !DILocation(line: 491, column: 11, scope: !6634)
!6638 = !DILocation(line: 491, column: 4, scope: !6634)
!6639 = !DILocation(line: 491, column: 8, scope: !6634)
!6640 = !DILocation(line: 491, column: 3, scope: !6634)
!6641 = !DILocation(line: 492, column: 32, scope: !6642)
!6642 = distinct !DILexicalBlock(scope: !6634, file: !6468, line: 492, column: 11)
!6643 = !DILocation(line: 492, column: 38, scope: !6642)
!6644 = !DILocation(line: 492, column: 11, scope: !6642)
!6645 = !DILocation(line: 492, column: 57, scope: !6642)
!6646 = !DILocation(line: 493, column: 4, scope: !6642)
!6647 = !DILocation(line: 493, column: 44, scope: !6642)
!6648 = !DILocation(line: 494, column: 25, scope: !6642)
!6649 = !DILocation(line: 494, column: 31, scope: !6642)
!6650 = !DILocation(line: 494, column: 4, scope: !6642)
!6651 = !DILocation(line: 494, column: 50, scope: !6642)
!6652 = !DILocation(line: 495, column: 4, scope: !6642)
!6653 = !DILocation(line: 492, column: 11, scope: !6634)
!6654 = !DILocation(line: 496, column: 18, scope: !6642)
!6655 = !DILocation(line: 496, column: 24, scope: !6642)
!6656 = !DILocation(line: 496, column: 30, scope: !6642)
!6657 = !DILocation(line: 496, column: 22, scope: !6642)
!6658 = !DILocation(line: 496, column: 38, scope: !6642)
!6659 = !DILocation(line: 496, column: 44, scope: !6642)
!6660 = !DILocation(line: 496, column: 3, scope: !6642)
!6661 = !DILocation(line: 498, column: 18, scope: !6642)
!6662 = !DILocation(line: 498, column: 23, scope: !6642)
!6663 = !DILocation(line: 498, column: 30, scope: !6642)
!6664 = !DILocation(line: 498, column: 3, scope: !6642)
!6665 = !DILocation(line: 499, column: 1, scope: !6615)
!6666 = distinct !DISubprogram(name: "generic___clear_bit", scope: !5849, file: !5849, line: 37, type: !6667, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6669)
!6667 = !DISubroutineType(types: !6668)
!6668 = !{null, !154, !6407}
!6669 = !{!6670, !6671, !6672, !6673}
!6670 = !DILocalVariable(name: "nr", arg: 1, scope: !6666, file: !5849, line: 37, type: !154)
!6671 = !DILocalVariable(name: "addr", arg: 2, scope: !6666, file: !5849, line: 37, type: !6407)
!6672 = !DILocalVariable(name: "mask", scope: !6666, file: !5849, line: 39, type: !154)
!6673 = !DILocalVariable(name: "p", scope: !6666, file: !5849, line: 40, type: !161)
!6674 = !DILocation(line: 37, column: 35, scope: !6666)
!6675 = !DILocation(line: 37, column: 63, scope: !6666)
!6676 = !DILocation(line: 39, column: 2, scope: !6666)
!6677 = !DILocation(line: 39, column: 16, scope: !6666)
!6678 = !DILocation(line: 39, column: 23, scope: !6666)
!6679 = !DILocation(line: 40, column: 2, scope: !6666)
!6680 = !DILocation(line: 40, column: 17, scope: !6666)
!6681 = !DILocation(line: 40, column: 39, scope: !6666)
!6682 = !DILocation(line: 40, column: 47, scope: !6666)
!6683 = !DILocation(line: 40, column: 45, scope: !6666)
!6684 = !DILocation(line: 42, column: 9, scope: !6666)
!6685 = !DILocation(line: 42, column: 8, scope: !6666)
!6686 = !DILocation(line: 42, column: 3, scope: !6666)
!6687 = !DILocation(line: 42, column: 5, scope: !6666)
!6688 = !DILocation(line: 43, column: 1, scope: !6666)
!6689 = distinct !DISubprogram(name: "___clear_bit", scope: !5883, file: !5883, line: 42, type: !6667, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6690)
!6690 = !{!6691, !6692}
!6691 = !DILocalVariable(name: "nr", arg: 1, scope: !6689, file: !5883, line: 42, type: !154)
!6692 = !DILocalVariable(name: "addr", arg: 2, scope: !6689, file: !5883, line: 42, type: !6407)
!6693 = !DILocation(line: 42, column: 28, scope: !6689)
!6694 = !DILocation(line: 42, column: 56, scope: !6689)
!6695 = !DILocation(line: 44, column: 19, scope: !6689)
!6696 = !DILocation(line: 44, column: 26, scope: !6689)
!6697 = !DILocation(line: 44, column: 24, scope: !6689)
!6698 = !DILocation(line: 44, column: 2, scope: !6689)
!6699 = !DILocation(line: 45, column: 19, scope: !6689)
!6700 = !DILocation(line: 45, column: 23, scope: !6689)
!6701 = !DILocation(line: 45, column: 2, scope: !6689)
!6702 = !DILocation(line: 46, column: 1, scope: !6689)
!6703 = !DISubprogram(name: "__bitmap_clear", scope: !6468, file: !6468, line: 175, type: !6704, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6704 = !DISubroutineType(types: !6705)
!6705 = !{null, !161, !13, !98}
!6706 = distinct !DISubprogram(name: "instrument_write", scope: !5914, file: !5914, line: 38, type: !5915, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6707)
!6707 = !{!6708, !6709}
!6708 = !DILocalVariable(name: "v", arg: 1, scope: !6706, file: !5914, line: 38, type: !5917)
!6709 = !DILocalVariable(name: "size", arg: 2, scope: !6706, file: !5914, line: 38, type: !322)
!6710 = !DILocation(line: 38, column: 67, scope: !6706)
!6711 = !DILocation(line: 38, column: 77, scope: !6706)
!6712 = !DILocation(line: 40, column: 20, scope: !6706)
!6713 = !DILocation(line: 40, column: 23, scope: !6706)
!6714 = !DILocation(line: 40, column: 2, scope: !6706)
!6715 = !DILocation(line: 41, column: 2, scope: !6706)
!6716 = !DILocation(line: 42, column: 1, scope: !6706)
!6717 = distinct !DISubprogram(name: "arch___clear_bit", scope: !5931, file: !5931, line: 92, type: !6667, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6718)
!6718 = !{!6719, !6720}
!6719 = !DILocalVariable(name: "nr", arg: 1, scope: !6717, file: !5931, line: 92, type: !154)
!6720 = !DILocalVariable(name: "addr", arg: 2, scope: !6717, file: !5931, line: 92, type: !6407)
!6721 = !DILocation(line: 92, column: 32, scope: !6717)
!6722 = !DILocation(line: 92, column: 60, scope: !6717)
!6723 = !DILocation(line: 94, column: 44, scope: !6717)
!6724 = !DILocation(line: 94, column: 56, scope: !6717)
!6725 = !DILocation(line: 94, column: 2, scope: !6717)
!6726 = !{i64 2148151415}
!6727 = !DILocation(line: 95, column: 1, scope: !6717)
