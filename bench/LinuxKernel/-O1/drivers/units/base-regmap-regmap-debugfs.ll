; ModuleID = 'drivers/base/regmap/regmap-debugfs.c'
source_filename = "drivers/base/regmap/regmap-debugfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regmap = type { %union.anon.13, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.regmap_format, ptr, ptr, ptr, i8, %struct.spinlock, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, i8, ptr, ptr, i32, i32, i32, %struct.list_head, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i64, i64, i32, i32, i32, i8, ptr, i32, i32, i32, i32, i32, i8, i8, i8, ptr, ptr, ptr, i8, i8, ptr, i32, i8, i8, i8, i64, i64, %struct.rb_root, ptr, ptr, i8 }
%union.anon.13 = type { %struct.mutex }
%struct.regmap_format = type { i64, i64, i64, i64, i8, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rb_root = type { ptr }
%struct.regmap_debugfs_node = type { ptr, %struct.list_head }
%struct.regmap_range_node = type { %struct.rb_node, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.regcache_ops = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.regmap_debugfs_off_cache = type { %struct.list_head, i64, i64, i32, i32 }
%struct.file = type { %union.anon.16, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.16 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.17, %struct.qspinlock }
%union.anon.17 = type { %struct.atomic_t }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.path = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.19, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.20, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.21, ptr, %struct.address_space, %struct.list_head, %union.anon.22, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.19 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.20 = type { %struct.callback_head }
%union.anon.21 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.22 = type { ptr }
%struct.seq_file = type { ptr, i64, i64, i64, i64, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@.str = private unnamed_addr constant [6 x i8] c"dummy\00", align 1, !dbg !0
@regmap_debugfs_root = internal global ptr null, align 8, !dbg !7
@regmap_debugfs_early_lock = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @regmap_debugfs_early_lock, i64 16), ptr getelementptr (i8, ptr @regmap_debugfs_early_lock, i64 16) } }, align 8, !dbg !4743
@regmap_debugfs_early_list = internal global %struct.list_head { ptr @regmap_debugfs_early_list, ptr @regmap_debugfs_early_list }, align 8, !dbg !4745
@regmap_debugfs_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4679
@.str.1 = private unnamed_addr constant [17 x i8] c"&map->cache_lock\00", align 1, !dbg !4697
@.str.2 = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1, !dbg !4702
@.str.3 = private unnamed_addr constant [8 x i8] c"dummy%d\00", align 1, !dbg !4704
@dummy_index = internal global i32 0, align 4, !dbg !4736
@.str.4 = private unnamed_addr constant [5 x i8] c"name\00", align 1, !dbg !4706
@regmap_name_fops = internal constant %struct.file_operations { ptr null, ptr @default_llseek, ptr @regmap_name_read_file, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i64 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !4747
@.str.5 = private unnamed_addr constant [6 x i8] c"range\00", align 1, !dbg !4711
@regmap_reg_ranges_fops = internal constant %struct.file_operations { ptr null, ptr @default_llseek, ptr @regmap_reg_ranges_read_file, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i64 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !4754
@.str.6 = private unnamed_addr constant [10 x i8] c"registers\00", align 1, !dbg !4713
@regmap_map_fops = internal constant %struct.file_operations { ptr null, ptr @default_llseek, ptr @regmap_map_read_file, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i64 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !4772
@.str.7 = private unnamed_addr constant [7 x i8] c"access\00", align 1, !dbg !4718
@regmap_access_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i64 0, ptr @regmap_access_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !4778
@.str.8 = private unnamed_addr constant [11 x i8] c"cache_only\00", align 1, !dbg !4721
@regmap_cache_only_fops = internal constant %struct.file_operations { ptr null, ptr null, ptr @debugfs_read_file_bool, ptr @regmap_cache_only_write_file, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i64 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !4785
@.str.9 = private unnamed_addr constant [12 x i8] c"cache_dirty\00", align 1, !dbg !4726
@.str.10 = private unnamed_addr constant [13 x i8] c"cache_bypass\00", align 1, !dbg !4729
@regmap_cache_bypass_fops = internal constant %struct.file_operations { ptr null, ptr null, ptr @debugfs_read_file_bool, ptr @regmap_cache_bypass_write_file, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i64 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !4802
@regmap_range_fops = internal constant %struct.file_operations { ptr null, ptr @default_llseek, ptr @regmap_range_read_file, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i64 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !4811
@.str.11 = private unnamed_addr constant [7 x i8] c"regmap\00", align 1, !dbg !4734
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.12 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4738
@.str.13 = private unnamed_addr constant [6 x i8] c"nodev\00", align 1, !dbg !4749
@.str.14 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1, !dbg !4751
@.str.15 = private unnamed_addr constant [7 x i8] c"%x-%x\0A\00", align 1, !dbg !4756
@.str.16 = private unnamed_addr constant [3 x i8] c"%x\00", align 1, !dbg !4758
@.str.17 = private unnamed_addr constant [37 x i8] c"drivers/base/regmap/regmap-debugfs.c\00", align 1, !dbg !4761
@.str.18 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1, !dbg !4766
@.str.19 = private unnamed_addr constant [7 x i8] c"%.*x: \00", align 1, !dbg !4774
@.str.20 = private unnamed_addr constant [5 x i8] c"%.*x\00", align 1, !dbg !4776
@.str.21 = private unnamed_addr constant [19 x i8] c"%.*x: %c %c %c %c\0A\00", align 1, !dbg !4780
@.str.22 = private unnamed_addr constant [29 x i8] c"debugfs cache_only=Y forced\0A\00", align 1, !dbg !4787
@.str.23 = private unnamed_addr constant [44 x i8] c"debugfs cache_only=N forced: syncing cache\0A\00", align 1, !dbg !4792
@.str.24 = private unnamed_addr constant [25 x i8] c"Failed to sync cache %d\0A\00", align 1, !dbg !4797
@.str.25 = private unnamed_addr constant [31 x i8] c"debugfs cache_bypass=Y forced\0A\00", align 1, !dbg !4804
@.str.26 = private unnamed_addr constant [31 x i8] c"debugfs cache_bypass=N forced\0A\00", align 1, !dbg !4809

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @regmap_debugfs_init(ptr noundef %map) #0 align 16 !dbg !4681 {
entry:
  %map.addr = alloca ptr, align 8
  %next = alloca ptr, align 8
  %range_node = alloca ptr, align 8
  %devname = alloca ptr, align 8
  %name = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %node = alloca ptr, align 8
  %registers_mode = alloca i16, align 2
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %map, ptr %map.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !4683, metadata !DIExpression()), !dbg !4822
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #18, !dbg !4823
  call void @llvm.dbg.declare(metadata ptr %next, metadata !4684, metadata !DIExpression()), !dbg !4824
  call void @llvm.lifetime.start.p0(i64 8, ptr %range_node) #18, !dbg !4825
  call void @llvm.dbg.declare(metadata ptr %range_node, metadata !4685, metadata !DIExpression()), !dbg !4826
  call void @llvm.lifetime.start.p0(i64 8, ptr %devname) #18, !dbg !4827
  call void @llvm.dbg.declare(metadata ptr %devname, metadata !4686, metadata !DIExpression()), !dbg !4828
  store ptr @.str, ptr %devname, align 8, !dbg !4828
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #18, !dbg !4829
  call void @llvm.dbg.declare(metadata ptr %name, metadata !4687, metadata !DIExpression()), !dbg !4830
  %0 = load ptr, ptr %map.addr, align 8, !dbg !4831
  %name1 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 12, !dbg !4832
  %1 = load ptr, ptr %name1, align 8, !dbg !4832
  store ptr %1, ptr %name, align 8, !dbg !4830
  %2 = load ptr, ptr %map.addr, align 8, !dbg !4833
  %debugfs_disable = getelementptr inbounds %struct.regmap, ptr %2, i32 0, i32 19, !dbg !4835
  %3 = load i8, ptr %debugfs_disable, align 4, !dbg !4835, !range !4836, !noundef !266
  %tobool = trunc i8 %3 to i1, !dbg !4835
  br i1 %tobool, label %if.then, label %if.end, !dbg !4837

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup78, !dbg !4838

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr @regmap_debugfs_root, align 8, !dbg !4840
  %tobool2 = icmp ne ptr %4, null, !dbg !4840
  br i1 %tobool2, label %if.end8, label %if.then3, !dbg !4841

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #18, !dbg !4842
  call void @llvm.dbg.declare(metadata ptr %node, metadata !4688, metadata !DIExpression()), !dbg !4843
  %call = call noalias ptr @kzalloc(i64 noundef 24, i32 noundef 3264) #19, !dbg !4844
  store ptr %call, ptr %node, align 8, !dbg !4845
  %5 = load ptr, ptr %node, align 8, !dbg !4846
  %tobool4 = icmp ne ptr %5, null, !dbg !4846
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !4848

if.then5:                                         ; preds = %if.then3
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4849

if.end6:                                          ; preds = %if.then3
  %6 = load ptr, ptr %map.addr, align 8, !dbg !4850
  %7 = load ptr, ptr %node, align 8, !dbg !4851
  %map7 = getelementptr inbounds %struct.regmap_debugfs_node, ptr %7, i32 0, i32 0, !dbg !4852
  store ptr %6, ptr %map7, align 8, !dbg !4853
  call void @mutex_lock(ptr noundef @regmap_debugfs_early_lock) #20, !dbg !4854
  %8 = load ptr, ptr %node, align 8, !dbg !4855
  %link = getelementptr inbounds %struct.regmap_debugfs_node, ptr %8, i32 0, i32 1, !dbg !4856
  call void @list_add(ptr noundef %link, ptr noundef @regmap_debugfs_early_list) #20, !dbg !4857
  call void @mutex_unlock(ptr noundef @regmap_debugfs_early_lock) #20, !dbg !4858
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4859

cleanup:                                          ; preds = %if.end6, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #18, !dbg !4860
  br label %cleanup78

if.end8:                                          ; preds = %if.end
  %9 = load ptr, ptr %map.addr, align 8, !dbg !4861
  %debugfs_off_cache = getelementptr inbounds %struct.regmap, ptr %9, i32 0, i32 25, !dbg !4862
  call void @INIT_LIST_HEAD(ptr noundef %debugfs_off_cache) #20, !dbg !4863
  br label %do.body, !dbg !4864

do.body:                                          ; preds = %if.end8
  %10 = load ptr, ptr %map.addr, align 8, !dbg !4865
  %cache_lock = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 26, !dbg !4865
  call void @__mutex_init(ptr noundef %cache_lock, ptr noundef @.str.1, ptr noundef @regmap_debugfs_init.__key) #20, !dbg !4865
  br label %do.cond, !dbg !4865

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4865

do.end:                                           ; preds = %do.cond
  %11 = load ptr, ptr %map.addr, align 8, !dbg !4867
  %dev = getelementptr inbounds %struct.regmap, ptr %11, i32 0, i32 7, !dbg !4869
  %12 = load ptr, ptr %dev, align 8, !dbg !4869
  %tobool9 = icmp ne ptr %12, null, !dbg !4867
  br i1 %tobool9, label %if.then10, label %if.end13, !dbg !4870

if.then10:                                        ; preds = %do.end
  %13 = load ptr, ptr %map.addr, align 8, !dbg !4871
  %dev11 = getelementptr inbounds %struct.regmap, ptr %13, i32 0, i32 7, !dbg !4872
  %14 = load ptr, ptr %dev11, align 8, !dbg !4872
  %call12 = call ptr @dev_name(ptr noundef %14) #20, !dbg !4873
  store ptr %call12, ptr %devname, align 8, !dbg !4874
  br label %if.end13, !dbg !4875

if.end13:                                         ; preds = %if.then10, %do.end
  %15 = load ptr, ptr %name, align 8, !dbg !4876
  %tobool14 = icmp ne ptr %15, null, !dbg !4876
  br i1 %tobool14, label %if.then15, label %if.else, !dbg !4878

if.then15:                                        ; preds = %if.end13
  %16 = load ptr, ptr %map.addr, align 8, !dbg !4879
  %debugfs_name = getelementptr inbounds %struct.regmap, ptr %16, i32 0, i32 21, !dbg !4882
  %17 = load ptr, ptr %debugfs_name, align 8, !dbg !4882
  %tobool16 = icmp ne ptr %17, null, !dbg !4879
  br i1 %tobool16, label %if.end24, label %if.then17, !dbg !4883

if.then17:                                        ; preds = %if.then15
  %18 = load ptr, ptr %devname, align 8, !dbg !4884
  %19 = load ptr, ptr %name, align 8, !dbg !4886
  %call18 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef @.str.2, ptr noundef %18, ptr noundef %19) #20, !dbg !4887
  %20 = load ptr, ptr %map.addr, align 8, !dbg !4888
  %debugfs_name19 = getelementptr inbounds %struct.regmap, ptr %20, i32 0, i32 21, !dbg !4889
  store ptr %call18, ptr %debugfs_name19, align 8, !dbg !4890
  %21 = load ptr, ptr %map.addr, align 8, !dbg !4891
  %debugfs_name20 = getelementptr inbounds %struct.regmap, ptr %21, i32 0, i32 21, !dbg !4893
  %22 = load ptr, ptr %debugfs_name20, align 8, !dbg !4893
  %tobool21 = icmp ne ptr %22, null, !dbg !4891
  br i1 %tobool21, label %if.end23, label %if.then22, !dbg !4894

if.then22:                                        ; preds = %if.then17
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup78, !dbg !4895

if.end23:                                         ; preds = %if.then17
  br label %if.end24, !dbg !4896

if.end24:                                         ; preds = %if.end23, %if.then15
  %23 = load ptr, ptr %map.addr, align 8, !dbg !4897
  %debugfs_name25 = getelementptr inbounds %struct.regmap, ptr %23, i32 0, i32 21, !dbg !4898
  %24 = load ptr, ptr %debugfs_name25, align 8, !dbg !4898
  store ptr %24, ptr %name, align 8, !dbg !4899
  br label %if.end26, !dbg !4900

if.else:                                          ; preds = %if.end13
  %25 = load ptr, ptr %devname, align 8, !dbg !4901
  store ptr %25, ptr %name, align 8, !dbg !4903
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.end24
  %26 = load ptr, ptr %name, align 8, !dbg !4904
  %call27 = call i32 @strcmp(ptr noundef %26, ptr noundef @.str) #20, !dbg !4906
  %tobool28 = icmp ne i32 %call27, 0, !dbg !4906
  br i1 %tobool28, label %if.end38, label %if.then29, !dbg !4907

if.then29:                                        ; preds = %if.end26
  %27 = load ptr, ptr %map.addr, align 8, !dbg !4908
  %debugfs_name30 = getelementptr inbounds %struct.regmap, ptr %27, i32 0, i32 21, !dbg !4910
  %28 = load ptr, ptr %debugfs_name30, align 8, !dbg !4910
  call void @kfree(ptr noundef %28) #20, !dbg !4911
  %29 = load i32, ptr @dummy_index, align 4, !dbg !4912
  %call31 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef @.str.3, i32 noundef %29) #20, !dbg !4913
  %30 = load ptr, ptr %map.addr, align 8, !dbg !4914
  %debugfs_name32 = getelementptr inbounds %struct.regmap, ptr %30, i32 0, i32 21, !dbg !4915
  store ptr %call31, ptr %debugfs_name32, align 8, !dbg !4916
  %31 = load ptr, ptr %map.addr, align 8, !dbg !4917
  %debugfs_name33 = getelementptr inbounds %struct.regmap, ptr %31, i32 0, i32 21, !dbg !4919
  %32 = load ptr, ptr %debugfs_name33, align 8, !dbg !4919
  %tobool34 = icmp ne ptr %32, null, !dbg !4917
  br i1 %tobool34, label %if.end36, label %if.then35, !dbg !4920

if.then35:                                        ; preds = %if.then29
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup78, !dbg !4921

if.end36:                                         ; preds = %if.then29
  %33 = load ptr, ptr %map.addr, align 8, !dbg !4922
  %debugfs_name37 = getelementptr inbounds %struct.regmap, ptr %33, i32 0, i32 21, !dbg !4923
  %34 = load ptr, ptr %debugfs_name37, align 8, !dbg !4923
  store ptr %34, ptr %name, align 8, !dbg !4924
  %35 = load i32, ptr @dummy_index, align 4, !dbg !4925
  %inc = add i32 %35, 1, !dbg !4925
  store i32 %inc, ptr @dummy_index, align 4, !dbg !4925
  br label %if.end38, !dbg !4926

if.end38:                                         ; preds = %if.end36, %if.end26
  %36 = load ptr, ptr %name, align 8, !dbg !4927
  %37 = load ptr, ptr @regmap_debugfs_root, align 8, !dbg !4928
  %call39 = call ptr @debugfs_create_dir(ptr noundef %36, ptr noundef %37) #20, !dbg !4929
  %38 = load ptr, ptr %map.addr, align 8, !dbg !4930
  %debugfs = getelementptr inbounds %struct.regmap, ptr %38, i32 0, i32 20, !dbg !4931
  store ptr %call39, ptr %debugfs, align 8, !dbg !4932
  %39 = load ptr, ptr %map.addr, align 8, !dbg !4933
  %debugfs40 = getelementptr inbounds %struct.regmap, ptr %39, i32 0, i32 20, !dbg !4934
  %40 = load ptr, ptr %debugfs40, align 8, !dbg !4934
  %41 = load ptr, ptr %map.addr, align 8, !dbg !4935
  %call41 = call ptr @debugfs_create_file(ptr noundef @.str.4, i16 noundef zeroext 256, ptr noundef %40, ptr noundef %41, ptr noundef @regmap_name_fops) #20, !dbg !4936
  %42 = load ptr, ptr %map.addr, align 8, !dbg !4937
  %debugfs42 = getelementptr inbounds %struct.regmap, ptr %42, i32 0, i32 20, !dbg !4938
  %43 = load ptr, ptr %debugfs42, align 8, !dbg !4938
  %44 = load ptr, ptr %map.addr, align 8, !dbg !4939
  %call43 = call ptr @debugfs_create_file(ptr noundef @.str.5, i16 noundef zeroext 256, ptr noundef %43, ptr noundef %44, ptr noundef @regmap_reg_ranges_fops) #20, !dbg !4940
  %45 = load ptr, ptr %map.addr, align 8, !dbg !4941
  %max_register = getelementptr inbounds %struct.regmap, ptr %45, i32 0, i32 27, !dbg !4942
  %46 = load i32, ptr %max_register, align 8, !dbg !4942
  %tobool44 = icmp ne i32 %46, 0, !dbg !4941
  br i1 %tobool44, label %if.then46, label %lor.lhs.false, !dbg !4943

lor.lhs.false:                                    ; preds = %if.end38
  %47 = load ptr, ptr %map.addr, align 8, !dbg !4944
  %call45 = call zeroext i1 @regmap_readable(ptr noundef %47, i32 noundef 0) #20, !dbg !4945
  br i1 %call45, label %if.then46, label %if.end51, !dbg !4946

if.then46:                                        ; preds = %lor.lhs.false, %if.end38
  call void @llvm.lifetime.start.p0(i64 2, ptr %registers_mode) #18, !dbg !4947
  call void @llvm.dbg.declare(metadata ptr %registers_mode, metadata !4691, metadata !DIExpression()), !dbg !4948
  store i16 256, ptr %registers_mode, align 2, !dbg !4949
  %48 = load i16, ptr %registers_mode, align 2, !dbg !4950
  %49 = load ptr, ptr %map.addr, align 8, !dbg !4951
  %debugfs47 = getelementptr inbounds %struct.regmap, ptr %49, i32 0, i32 20, !dbg !4952
  %50 = load ptr, ptr %debugfs47, align 8, !dbg !4952
  %51 = load ptr, ptr %map.addr, align 8, !dbg !4953
  %call48 = call ptr @debugfs_create_file(ptr noundef @.str.6, i16 noundef zeroext %48, ptr noundef %50, ptr noundef %51, ptr noundef @regmap_map_fops) #20, !dbg !4954
  %52 = load ptr, ptr %map.addr, align 8, !dbg !4955
  %debugfs49 = getelementptr inbounds %struct.regmap, ptr %52, i32 0, i32 20, !dbg !4956
  %53 = load ptr, ptr %debugfs49, align 8, !dbg !4956
  %54 = load ptr, ptr %map.addr, align 8, !dbg !4957
  %call50 = call ptr @debugfs_create_file(ptr noundef @.str.7, i16 noundef zeroext 256, ptr noundef %53, ptr noundef %54, ptr noundef @regmap_access_fops) #20, !dbg !4958
  call void @llvm.lifetime.end.p0(i64 2, ptr %registers_mode) #18, !dbg !4959
  br label %if.end51, !dbg !4960

if.end51:                                         ; preds = %if.then46, %lor.lhs.false
  %55 = load ptr, ptr %map.addr, align 8, !dbg !4961
  %cache_type = getelementptr inbounds %struct.regmap, ptr %55, i32 0, i32 53, !dbg !4963
  %56 = load i32, ptr %cache_type, align 8, !dbg !4963
  %tobool52 = icmp ne i32 %56, 0, !dbg !4961
  br i1 %tobool52, label %if.then53, label %if.end59, !dbg !4964

if.then53:                                        ; preds = %if.end51
  %57 = load ptr, ptr %map.addr, align 8, !dbg !4965
  %debugfs54 = getelementptr inbounds %struct.regmap, ptr %57, i32 0, i32 20, !dbg !4967
  %58 = load ptr, ptr %debugfs54, align 8, !dbg !4967
  %59 = load ptr, ptr %map.addr, align 8, !dbg !4968
  %cache_only = getelementptr inbounds %struct.regmap, ptr %59, i32 0, i32 58, !dbg !4969
  %call55 = call ptr @debugfs_create_file(ptr noundef @.str.8, i16 noundef zeroext 384, ptr noundef %58, ptr noundef %cache_only, ptr noundef @regmap_cache_only_fops) #20, !dbg !4970
  %60 = load ptr, ptr %map.addr, align 8, !dbg !4971
  %debugfs56 = getelementptr inbounds %struct.regmap, ptr %60, i32 0, i32 20, !dbg !4972
  %61 = load ptr, ptr %debugfs56, align 8, !dbg !4972
  %62 = load ptr, ptr %map.addr, align 8, !dbg !4973
  %cache_dirty = getelementptr inbounds %struct.regmap, ptr %62, i32 0, i32 64, !dbg !4974
  call void @debugfs_create_bool(ptr noundef @.str.9, i16 noundef zeroext 256, ptr noundef %61, ptr noundef %cache_dirty) #20, !dbg !4975
  %63 = load ptr, ptr %map.addr, align 8, !dbg !4976
  %debugfs57 = getelementptr inbounds %struct.regmap, ptr %63, i32 0, i32 20, !dbg !4977
  %64 = load ptr, ptr %debugfs57, align 8, !dbg !4977
  %65 = load ptr, ptr %map.addr, align 8, !dbg !4978
  %cache_bypass = getelementptr inbounds %struct.regmap, ptr %65, i32 0, i32 59, !dbg !4979
  %call58 = call ptr @debugfs_create_file(ptr noundef @.str.10, i16 noundef zeroext 384, ptr noundef %64, ptr noundef %cache_bypass, ptr noundef @regmap_cache_bypass_fops) #20, !dbg !4980
  br label %if.end59, !dbg !4981

if.end59:                                         ; preds = %if.then53, %if.end51
  %66 = load ptr, ptr %map.addr, align 8, !dbg !4982
  %range_tree = getelementptr inbounds %struct.regmap, ptr %66, i32 0, i32 73, !dbg !4983
  %call60 = call ptr @rb_first(ptr noundef %range_tree) #20, !dbg !4984
  store ptr %call60, ptr %next, align 8, !dbg !4985
  br label %while.cond, !dbg !4986

while.cond:                                       ; preds = %if.end68, %if.end59
  %67 = load ptr, ptr %next, align 8, !dbg !4987
  %tobool61 = icmp ne ptr %67, null, !dbg !4986
  br i1 %tobool61, label %while.body, label %while.end, !dbg !4986

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !4988
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4694, metadata !DIExpression()), !dbg !4988
  %68 = load ptr, ptr %next, align 8, !dbg !4988
  store ptr %68, ptr %__mptr, align 8, !dbg !4988
  %69 = load ptr, ptr %__mptr, align 8, !dbg !4988
  %add.ptr = getelementptr i8, ptr %69, i64 0, !dbg !4988
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4988
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !4989
  %70 = load ptr, ptr %tmp, align 8, !dbg !4988
  store ptr %70, ptr %range_node, align 8, !dbg !4990
  %71 = load ptr, ptr %range_node, align 8, !dbg !4991
  %name62 = getelementptr inbounds %struct.regmap_range_node, ptr %71, i32 0, i32 1, !dbg !4993
  %72 = load ptr, ptr %name62, align 8, !dbg !4993
  %tobool63 = icmp ne ptr %72, null, !dbg !4991
  br i1 %tobool63, label %if.then64, label %if.end68, !dbg !4994

if.then64:                                        ; preds = %while.body
  %73 = load ptr, ptr %range_node, align 8, !dbg !4995
  %name65 = getelementptr inbounds %struct.regmap_range_node, ptr %73, i32 0, i32 1, !dbg !4996
  %74 = load ptr, ptr %name65, align 8, !dbg !4996
  %75 = load ptr, ptr %map.addr, align 8, !dbg !4997
  %debugfs66 = getelementptr inbounds %struct.regmap, ptr %75, i32 0, i32 20, !dbg !4998
  %76 = load ptr, ptr %debugfs66, align 8, !dbg !4998
  %77 = load ptr, ptr %range_node, align 8, !dbg !4999
  %call67 = call ptr @debugfs_create_file(ptr noundef %74, i16 noundef zeroext 256, ptr noundef %76, ptr noundef %77, ptr noundef @regmap_range_fops) #20, !dbg !5000
  br label %if.end68, !dbg !5000

if.end68:                                         ; preds = %if.then64, %while.body
  %78 = load ptr, ptr %range_node, align 8, !dbg !5001
  %node69 = getelementptr inbounds %struct.regmap_range_node, ptr %78, i32 0, i32 0, !dbg !5002
  %call70 = call ptr @rb_next(ptr noundef %node69) #20, !dbg !5003
  store ptr %call70, ptr %next, align 8, !dbg !5004
  br label %while.cond, !dbg !4986, !llvm.loop !5005

while.end:                                        ; preds = %while.cond
  %79 = load ptr, ptr %map.addr, align 8, !dbg !5009
  %cache_ops = getelementptr inbounds %struct.regmap, ptr %79, i32 0, i32 52, !dbg !5011
  %80 = load ptr, ptr %cache_ops, align 8, !dbg !5011
  %tobool71 = icmp ne ptr %80, null, !dbg !5009
  br i1 %tobool71, label %land.lhs.true, label %if.end77, !dbg !5012

land.lhs.true:                                    ; preds = %while.end
  %81 = load ptr, ptr %map.addr, align 8, !dbg !5013
  %cache_ops72 = getelementptr inbounds %struct.regmap, ptr %81, i32 0, i32 52, !dbg !5014
  %82 = load ptr, ptr %cache_ops72, align 8, !dbg !5014
  %debugfs_init = getelementptr inbounds %struct.regcache_ops, ptr %82, i32 0, i32 4, !dbg !5015
  %83 = load ptr, ptr %debugfs_init, align 8, !dbg !5015
  %tobool73 = icmp ne ptr %83, null, !dbg !5013
  br i1 %tobool73, label %if.then74, label %if.end77, !dbg !5016

if.then74:                                        ; preds = %land.lhs.true
  %84 = load ptr, ptr %map.addr, align 8, !dbg !5017
  %cache_ops75 = getelementptr inbounds %struct.regmap, ptr %84, i32 0, i32 52, !dbg !5018
  %85 = load ptr, ptr %cache_ops75, align 8, !dbg !5018
  %debugfs_init76 = getelementptr inbounds %struct.regcache_ops, ptr %85, i32 0, i32 4, !dbg !5019
  %86 = load ptr, ptr %debugfs_init76, align 8, !dbg !5019
  %87 = load ptr, ptr %map.addr, align 8, !dbg !5020
  call void %86(ptr noundef %87) #20, !dbg !5017
  br label %if.end77, !dbg !5017

if.end77:                                         ; preds = %if.then74, %land.lhs.true, %while.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5021
  br label %cleanup78, !dbg !5021

cleanup78:                                        ; preds = %if.end77, %if.then35, %if.then22, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #18, !dbg !5021
  call void @llvm.lifetime.end.p0(i64 8, ptr %devname) #18, !dbg !5021
  call void @llvm.lifetime.end.p0(i64 8, ptr %range_node) #18, !dbg !5021
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #18, !dbg !5021
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup78, %cleanup78
  ret void, !dbg !5021

unreachable:                                      ; preds = %cleanup78
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #3 align 16 !dbg !5022 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5026, metadata !DIExpression()), !dbg !5028
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5027, metadata !DIExpression()), !dbg !5029
  %0 = load i64, ptr %size.addr, align 8, !dbg !5030
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5031
  %or = or i32 %1, 256, !dbg !5032
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #19, !dbg !5033
  ret ptr %call, !dbg !5034
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5035 dso_local void @mutex_lock(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add(ptr noundef %new, ptr noundef %head) #5 align 16 !dbg !5039 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5044, metadata !DIExpression()), !dbg !5046
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5045, metadata !DIExpression()), !dbg !5047
  %0 = load ptr, ptr %new.addr, align 8, !dbg !5048
  %1 = load ptr, ptr %head.addr, align 8, !dbg !5049
  %2 = load ptr, ptr %head.addr, align 8, !dbg !5050
  %next = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !5051
  %3 = load ptr, ptr %next, align 8, !dbg !5051
  call void @__list_add(ptr noundef %0, ptr noundef %1, ptr noundef %3) #20, !dbg !5052
  ret void, !dbg !5053
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5054 dso_local void @mutex_unlock(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #5 align 16 !dbg !5055 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !5059, metadata !DIExpression()), !dbg !5060
  br label %do.body, !dbg !5061

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5062

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5064

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5062

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !5066
  %1 = load ptr, ptr %list.addr, align 8, !dbg !5066
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !5066
  store volatile ptr %0, ptr %next, align 8, !dbg !5066
  br label %do.end3, !dbg !5066

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !5062

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !5068

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !5069

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !5071

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !5069

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !5073
  %3 = load ptr, ptr %list.addr, align 8, !dbg !5073
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !5073
  store volatile ptr %2, ptr %prev, align 8, !dbg !5073
  br label %do.end9, !dbg !5073

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !5069

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !5075
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5076 dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dev_name(ptr noundef %dev) #5 align 16 !dbg !5079 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5083, metadata !DIExpression()), !dbg !5084
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5085
  %init_name = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3, !dbg !5087
  %1 = load ptr, ptr %init_name, align 8, !dbg !5087
  %tobool = icmp ne ptr %1, null, !dbg !5085
  br i1 %tobool, label %if.then, label %if.end, !dbg !5088

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5089
  %init_name1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 3, !dbg !5090
  %3 = load ptr, ptr %init_name1, align 8, !dbg !5090
  store ptr %3, ptr %retval, align 8, !dbg !5091
  br label %return, !dbg !5091

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !5092
  %kobj = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 0, !dbg !5093
  %call = call ptr @kobject_name(ptr noundef %kobj) #20, !dbg !5094
  store ptr %call, ptr %retval, align 8, !dbg !5095
  br label %return, !dbg !5095

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8, !dbg !5096
  ret ptr %5, !dbg !5096
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5097 dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5101 dso_local i32 @strcmp(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5105 dso_local void @kfree(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5108 dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5112 dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5115 dso_local zeroext i1 @regmap_readable(ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5118 dso_local void @debugfs_create_bool(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5121 dso_local ptr @rb_first(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5127 dso_local ptr @rb_next(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @regmap_debugfs_exit(ptr noundef %map) #0 align 16 !dbg !5132 {
entry:
  %map.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  %__mptr5 = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  %__mptr13 = alloca ptr, align 8
  %tmp16 = alloca ptr, align 8
  store ptr %map, ptr %map.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !5134, metadata !DIExpression()), !dbg !5147
  %0 = load ptr, ptr %map.addr, align 8, !dbg !5148
  %debugfs = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 20, !dbg !5149
  %1 = load ptr, ptr %debugfs, align 8, !dbg !5149
  %tobool = icmp ne ptr %1, null, !dbg !5148
  br i1 %tobool, label %if.then, label %if.else, !dbg !5150

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %map.addr, align 8, !dbg !5151
  %debugfs1 = getelementptr inbounds %struct.regmap, ptr %2, i32 0, i32 20, !dbg !5153
  %3 = load ptr, ptr %debugfs1, align 8, !dbg !5153
  call void @debugfs_remove(ptr noundef %3) #20, !dbg !5154
  %4 = load ptr, ptr %map.addr, align 8, !dbg !5155
  %cache_lock = getelementptr inbounds %struct.regmap, ptr %4, i32 0, i32 26, !dbg !5156
  call void @mutex_lock(ptr noundef %cache_lock) #20, !dbg !5157
  %5 = load ptr, ptr %map.addr, align 8, !dbg !5158
  call void @regmap_debugfs_free_dump_cache(ptr noundef %5) #20, !dbg !5159
  %6 = load ptr, ptr %map.addr, align 8, !dbg !5160
  %cache_lock2 = getelementptr inbounds %struct.regmap, ptr %6, i32 0, i32 26, !dbg !5161
  call void @mutex_unlock(ptr noundef %cache_lock2) #20, !dbg !5162
  %7 = load ptr, ptr %map.addr, align 8, !dbg !5163
  %debugfs_name = getelementptr inbounds %struct.regmap, ptr %7, i32 0, i32 21, !dbg !5164
  %8 = load ptr, ptr %debugfs_name, align 8, !dbg !5164
  call void @kfree(ptr noundef %8) #20, !dbg !5165
  %9 = load ptr, ptr %map.addr, align 8, !dbg !5166
  %debugfs_name3 = getelementptr inbounds %struct.regmap, ptr %9, i32 0, i32 21, !dbg !5167
  store ptr null, ptr %debugfs_name3, align 8, !dbg !5168
  br label %if.end18, !dbg !5169

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #18, !dbg !5170
  call void @llvm.dbg.declare(metadata ptr %node, metadata !5135, metadata !DIExpression()), !dbg !5171
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #18, !dbg !5170
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !5138, metadata !DIExpression()), !dbg !5172
  call void @mutex_lock(ptr noundef @regmap_debugfs_early_lock) #20, !dbg !5173
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !5174
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5139, metadata !DIExpression()), !dbg !5174
  %10 = load ptr, ptr @regmap_debugfs_early_list, align 8, !dbg !5174
  store ptr %10, ptr %__mptr, align 8, !dbg !5174
  %11 = load ptr, ptr %__mptr, align 8, !dbg !5174
  %add.ptr = getelementptr i8, ptr %11, i64 -8, !dbg !5174
  store ptr %add.ptr, ptr %tmp4, align 8, !dbg !5174
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !5175
  %12 = load ptr, ptr %tmp4, align 8, !dbg !5174
  store ptr %12, ptr %node, align 8, !dbg !5175
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr5) #18, !dbg !5176
  call void @llvm.dbg.declare(metadata ptr %__mptr5, metadata !5142, metadata !DIExpression()), !dbg !5176
  %13 = load ptr, ptr %node, align 8, !dbg !5176
  %link = getelementptr inbounds %struct.regmap_debugfs_node, ptr %13, i32 0, i32 1, !dbg !5176
  %next = getelementptr inbounds %struct.list_head, ptr %link, i32 0, i32 0, !dbg !5176
  %14 = load ptr, ptr %next, align 8, !dbg !5176
  store ptr %14, ptr %__mptr5, align 8, !dbg !5176
  %15 = load ptr, ptr %__mptr5, align 8, !dbg !5176
  %add.ptr7 = getelementptr i8, ptr %15, i64 -8, !dbg !5176
  store ptr %add.ptr7, ptr %tmp6, align 8, !dbg !5176
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr5) #18, !dbg !5175
  %16 = load ptr, ptr %tmp6, align 8, !dbg !5176
  store ptr %16, ptr %tmp, align 8, !dbg !5175
  br label %for.cond, !dbg !5175

for.cond:                                         ; preds = %for.inc, %if.else
  %17 = load ptr, ptr %node, align 8, !dbg !5177
  %link8 = getelementptr inbounds %struct.regmap_debugfs_node, ptr %17, i32 0, i32 1, !dbg !5177
  %cmp = icmp eq ptr %link8, @regmap_debugfs_early_list, !dbg !5177
  %lnot = xor i1 %cmp, true, !dbg !5177
  br i1 %lnot, label %for.body, label %for.end, !dbg !5175

for.body:                                         ; preds = %for.cond
  %18 = load ptr, ptr %node, align 8, !dbg !5178
  %map9 = getelementptr inbounds %struct.regmap_debugfs_node, ptr %18, i32 0, i32 0, !dbg !5181
  %19 = load ptr, ptr %map9, align 8, !dbg !5181
  %20 = load ptr, ptr %map.addr, align 8, !dbg !5182
  %cmp10 = icmp eq ptr %19, %20, !dbg !5183
  br i1 %cmp10, label %if.then11, label %if.end, !dbg !5184

if.then11:                                        ; preds = %for.body
  %21 = load ptr, ptr %node, align 8, !dbg !5185
  %link12 = getelementptr inbounds %struct.regmap_debugfs_node, ptr %21, i32 0, i32 1, !dbg !5187
  call void @list_del(ptr noundef %link12) #20, !dbg !5188
  %22 = load ptr, ptr %node, align 8, !dbg !5189
  call void @kfree(ptr noundef %22) #20, !dbg !5190
  br label %if.end, !dbg !5191

if.end:                                           ; preds = %if.then11, %for.body
  br label %for.inc, !dbg !5192

for.inc:                                          ; preds = %if.end
  %23 = load ptr, ptr %tmp, align 8, !dbg !5177
  store ptr %23, ptr %node, align 8, !dbg !5177
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr13) #18, !dbg !5193
  call void @llvm.dbg.declare(metadata ptr %__mptr13, metadata !5144, metadata !DIExpression()), !dbg !5193
  %24 = load ptr, ptr %tmp, align 8, !dbg !5193
  %link14 = getelementptr inbounds %struct.regmap_debugfs_node, ptr %24, i32 0, i32 1, !dbg !5193
  %next15 = getelementptr inbounds %struct.list_head, ptr %link14, i32 0, i32 0, !dbg !5193
  %25 = load ptr, ptr %next15, align 8, !dbg !5193
  store ptr %25, ptr %__mptr13, align 8, !dbg !5193
  %26 = load ptr, ptr %__mptr13, align 8, !dbg !5193
  %add.ptr17 = getelementptr i8, ptr %26, i64 -8, !dbg !5193
  store ptr %add.ptr17, ptr %tmp16, align 8, !dbg !5193
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr13) #18, !dbg !5177
  %27 = load ptr, ptr %tmp16, align 8, !dbg !5193
  store ptr %27, ptr %tmp, align 8, !dbg !5177
  br label %for.cond, !dbg !5177, !llvm.loop !5194

for.end:                                          ; preds = %for.cond
  call void @mutex_unlock(ptr noundef @regmap_debugfs_early_lock) #20, !dbg !5196
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #18, !dbg !5197
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #18, !dbg !5197
  br label %if.end18

if.end18:                                         ; preds = %for.end, %if.then
  ret void, !dbg !5198
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5199 dso_local void @debugfs_remove(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @regmap_debugfs_free_dump_cache(ptr noundef %map) #0 align 16 !dbg !5200 {
entry:
  %map.addr = alloca ptr, align 8
  %c = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %map, ptr %map.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !5202, metadata !DIExpression()), !dbg !5207
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #18, !dbg !5208
  call void @llvm.dbg.declare(metadata ptr %c, metadata !5203, metadata !DIExpression()), !dbg !5209
  br label %while.cond, !dbg !5210

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %map.addr, align 8, !dbg !5211
  %debugfs_off_cache = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 25, !dbg !5212
  %call = call i32 @list_empty(ptr noundef %debugfs_off_cache) #20, !dbg !5213
  %tobool = icmp ne i32 %call, 0, !dbg !5214
  %lnot = xor i1 %tobool, true, !dbg !5214
  br i1 %lnot, label %while.body, label %while.end, !dbg !5210

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !5215
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5204, metadata !DIExpression()), !dbg !5215
  %1 = load ptr, ptr %map.addr, align 8, !dbg !5215
  %debugfs_off_cache1 = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 25, !dbg !5215
  %next = getelementptr inbounds %struct.list_head, ptr %debugfs_off_cache1, i32 0, i32 0, !dbg !5215
  %2 = load ptr, ptr %next, align 8, !dbg !5215
  store ptr %2, ptr %__mptr, align 8, !dbg !5215
  %3 = load ptr, ptr %__mptr, align 8, !dbg !5215
  %add.ptr = getelementptr i8, ptr %3, i64 0, !dbg !5215
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5215
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !5216
  %4 = load ptr, ptr %tmp, align 8, !dbg !5215
  store ptr %4, ptr %c, align 8, !dbg !5217
  %5 = load ptr, ptr %c, align 8, !dbg !5218
  %list = getelementptr inbounds %struct.regmap_debugfs_off_cache, ptr %5, i32 0, i32 0, !dbg !5219
  call void @list_del(ptr noundef %list) #20, !dbg !5220
  %6 = load ptr, ptr %c, align 8, !dbg !5221
  call void @kfree(ptr noundef %6) #20, !dbg !5222
  br label %while.cond, !dbg !5210, !llvm.loop !5223

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #18, !dbg !5225
  ret void, !dbg !5225
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #5 align 16 !dbg !5226 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5228, metadata !DIExpression()), !dbg !5229
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !5230
  call void @__list_del_entry(ptr noundef %0) #20, !dbg !5231
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5232
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !5233
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !5234
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !5235
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !5236
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !5237
  ret void, !dbg !5238
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @regmap_debugfs_initcall() #0 align 16 !dbg !5239 {
entry:
  %node = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %__mptr2 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %__mptr7 = alloca ptr, align 8
  %tmp10 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #18, !dbg !5251
  call void @llvm.dbg.declare(metadata ptr %node, metadata !5241, metadata !DIExpression()), !dbg !5252
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #18, !dbg !5251
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !5242, metadata !DIExpression()), !dbg !5253
  %call = call ptr @debugfs_create_dir(ptr noundef @.str.11, ptr noundef null) #20, !dbg !5254
  store ptr %call, ptr @regmap_debugfs_root, align 8, !dbg !5255
  call void @mutex_lock(ptr noundef @regmap_debugfs_early_lock) #20, !dbg !5256
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !5257
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5243, metadata !DIExpression()), !dbg !5257
  %0 = load ptr, ptr @regmap_debugfs_early_list, align 8, !dbg !5257
  store ptr %0, ptr %__mptr, align 8, !dbg !5257
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5257
  %add.ptr = getelementptr i8, ptr %1, i64 -8, !dbg !5257
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !5257
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !5258
  %2 = load ptr, ptr %tmp1, align 8, !dbg !5257
  store ptr %2, ptr %node, align 8, !dbg !5258
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr2) #18, !dbg !5259
  call void @llvm.dbg.declare(metadata ptr %__mptr2, metadata !5246, metadata !DIExpression()), !dbg !5259
  %3 = load ptr, ptr %node, align 8, !dbg !5259
  %link = getelementptr inbounds %struct.regmap_debugfs_node, ptr %3, i32 0, i32 1, !dbg !5259
  %next = getelementptr inbounds %struct.list_head, ptr %link, i32 0, i32 0, !dbg !5259
  %4 = load ptr, ptr %next, align 8, !dbg !5259
  store ptr %4, ptr %__mptr2, align 8, !dbg !5259
  %5 = load ptr, ptr %__mptr2, align 8, !dbg !5259
  %add.ptr4 = getelementptr i8, ptr %5, i64 -8, !dbg !5259
  store ptr %add.ptr4, ptr %tmp3, align 8, !dbg !5259
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr2) #18, !dbg !5258
  %6 = load ptr, ptr %tmp3, align 8, !dbg !5259
  store ptr %6, ptr %tmp, align 8, !dbg !5258
  br label %for.cond, !dbg !5258

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load ptr, ptr %node, align 8, !dbg !5260
  %link5 = getelementptr inbounds %struct.regmap_debugfs_node, ptr %7, i32 0, i32 1, !dbg !5260
  %cmp = icmp eq ptr %link5, @regmap_debugfs_early_list, !dbg !5260
  %lnot = xor i1 %cmp, true, !dbg !5260
  br i1 %lnot, label %for.body, label %for.end, !dbg !5258

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %node, align 8, !dbg !5261
  %map = getelementptr inbounds %struct.regmap_debugfs_node, ptr %8, i32 0, i32 0, !dbg !5263
  %9 = load ptr, ptr %map, align 8, !dbg !5263
  call void @regmap_debugfs_init(ptr noundef %9) #20, !dbg !5264
  %10 = load ptr, ptr %node, align 8, !dbg !5265
  %link6 = getelementptr inbounds %struct.regmap_debugfs_node, ptr %10, i32 0, i32 1, !dbg !5266
  call void @list_del(ptr noundef %link6) #20, !dbg !5267
  %11 = load ptr, ptr %node, align 8, !dbg !5268
  call void @kfree(ptr noundef %11) #20, !dbg !5269
  br label %for.inc, !dbg !5270

for.inc:                                          ; preds = %for.body
  %12 = load ptr, ptr %tmp, align 8, !dbg !5260
  store ptr %12, ptr %node, align 8, !dbg !5260
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr7) #18, !dbg !5271
  call void @llvm.dbg.declare(metadata ptr %__mptr7, metadata !5248, metadata !DIExpression()), !dbg !5271
  %13 = load ptr, ptr %tmp, align 8, !dbg !5271
  %link8 = getelementptr inbounds %struct.regmap_debugfs_node, ptr %13, i32 0, i32 1, !dbg !5271
  %next9 = getelementptr inbounds %struct.list_head, ptr %link8, i32 0, i32 0, !dbg !5271
  %14 = load ptr, ptr %next9, align 8, !dbg !5271
  store ptr %14, ptr %__mptr7, align 8, !dbg !5271
  %15 = load ptr, ptr %__mptr7, align 8, !dbg !5271
  %add.ptr11 = getelementptr i8, ptr %15, i64 -8, !dbg !5271
  store ptr %add.ptr11, ptr %tmp10, align 8, !dbg !5271
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr7) #18, !dbg !5260
  %16 = load ptr, ptr %tmp10, align 8, !dbg !5271
  store ptr %16, ptr %tmp, align 8, !dbg !5260
  br label %for.cond, !dbg !5260, !llvm.loop !5272

for.end:                                          ; preds = %for.cond
  call void @mutex_unlock(ptr noundef @regmap_debugfs_early_lock) #20, !dbg !5274
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #18, !dbg !5275
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #18, !dbg !5275
  ret void, !dbg !5275
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !5276 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5278, metadata !DIExpression()), !dbg !5283
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5279, metadata !DIExpression()), !dbg !5284
  %0 = load i64, ptr %size.addr, align 8, !dbg !5285
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5286
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5287

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5288
  %tobool = icmp ne i64 %2, 0, !dbg !5288
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5289

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #18, !dbg !5290
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5280, metadata !DIExpression()), !dbg !5291
  %3 = load i64, ptr %size.addr, align 8, !dbg !5292
  %cmp = icmp ugt i64 %3, 8192, !dbg !5294
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5295

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5296
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5297
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #19, !dbg !5298
  store ptr %call, ptr %retval, align 8, !dbg !5299
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5299

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5300
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #20, !dbg !5300
  store i32 %call2, ptr %index, align 4, !dbg !5301
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5302
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5303
  %9 = ptrtoint ptr %8 to i64, !dbg !5303
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #20, !dbg !5304
  %idxprom = zext i32 %call3 to i64, !dbg !5305
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5305
  %10 = load i32, ptr %index, align 4, !dbg !5306
  %idxprom4 = zext i32 %10 to i64, !dbg !5305
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5305
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5305
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5307
  %13 = load i64, ptr %size.addr, align 8, !dbg !5308
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #21, !dbg !5309
  store ptr %call6, ptr %retval, align 8, !dbg !5310
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5310

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #18, !dbg !5311
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5312
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5313
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #19, !dbg !5314
  store ptr %call8, ptr %retval, align 8, !dbg !5315
  br label %return, !dbg !5315

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5316
  ret ptr %16, !dbg !5316
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5317 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #9 align 16 !dbg !5318 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5322, metadata !DIExpression()), !dbg !5324
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5323, metadata !DIExpression()), !dbg !5325
  %0 = load i64, ptr %size.addr, align 8, !dbg !5326
  %tobool = icmp ne i64 %0, 0, !dbg !5326
  br i1 %tobool, label %if.end, label %if.then, !dbg !5328

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5329
  br label %return, !dbg !5329

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5330
  %cmp = icmp ule i64 %1, 8, !dbg !5332
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5333

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5334
  br label %return, !dbg !5334

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5335
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5337
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5338

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5339
  %cmp4 = icmp ule i64 %3, 96, !dbg !5340
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5341

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5342
  br label %return, !dbg !5342

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5343
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5345
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5346

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5347
  %cmp9 = icmp ule i64 %5, 192, !dbg !5348
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5349

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5350
  br label %return, !dbg !5350

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5351
  %cmp12 = icmp ule i64 %6, 8, !dbg !5353
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5354

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5355
  br label %return, !dbg !5355

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5356
  %cmp15 = icmp ule i64 %7, 16, !dbg !5358
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5359

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5360
  br label %return, !dbg !5360

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5361
  %cmp18 = icmp ule i64 %8, 32, !dbg !5363
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5364

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5365
  br label %return, !dbg !5365

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5366
  %cmp21 = icmp ule i64 %9, 64, !dbg !5368
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5369

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5370
  br label %return, !dbg !5370

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5371
  %cmp24 = icmp ule i64 %10, 128, !dbg !5373
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5374

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5375
  br label %return, !dbg !5375

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5376
  %cmp27 = icmp ule i64 %11, 256, !dbg !5378
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5379

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5380
  br label %return, !dbg !5380

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5381
  %cmp30 = icmp ule i64 %12, 512, !dbg !5383
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5384

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5385
  br label %return, !dbg !5385

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5386
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5388
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5389

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5390
  br label %return, !dbg !5390

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5391
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5393
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5394

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5395
  br label %return, !dbg !5395

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5396
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5398
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5399

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5400
  br label %return, !dbg !5400

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5401
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5403
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5404

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5405
  br label %return, !dbg !5405

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5406
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5408
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5409

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5410
  br label %return, !dbg !5410

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5411
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5413
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5414

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5415
  br label %return, !dbg !5415

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5416
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5418
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5419

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !5420
  br label %return, !dbg !5420

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !5421
  %cmp54 = icmp ule i64 %20, 131072, !dbg !5423
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5424

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !5425
  br label %return, !dbg !5425

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !5426
  %cmp57 = icmp ule i64 %21, 262144, !dbg !5428
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5429

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !5430
  br label %return, !dbg !5430

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !5431
  %cmp60 = icmp ule i64 %22, 524288, !dbg !5433
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !5434

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !5435
  br label %return, !dbg !5435

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !5436
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !5438
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5439

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5440
  br label %return, !dbg !5440

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5441
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !5443
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !5444

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !5445
  br label %return, !dbg !5445

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !5446, !range !4836, !noundef !266
  %tobool69 = trunc i8 %25 to i1, !dbg !5446
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !5448

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !5449

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #22, !dbg !5450, !srcloc !5453
  unreachable, !dbg !5450

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !5454

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !5455

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !5456

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5458

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !5456

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.12, i32 480, i32 0, i64 12) #18, !dbg !5460, !srcloc !5462
  br label %do.end75, !dbg !5460

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !5456

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !5463
  br label %return, !dbg !5463

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5464
  ret i32 %26, !dbg !5464
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !5465 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #9 align 16 !dbg !5471 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5475, metadata !DIExpression()), !dbg !5477
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5476, metadata !DIExpression()), !dbg !5478
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5479
  %and = and i32 %0, 17, !dbg !5479
  %cmp = icmp eq i32 %and, 0, !dbg !5479
  %lnot = xor i1 %cmp, true, !dbg !5479
  %lnot1 = xor i1 %lnot, true, !dbg !5479
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5479
  %conv = sext i32 %lnot.ext to i64, !dbg !5479
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5479
  %tobool = icmp ne i64 %expval, 0, !dbg !5479
  br i1 %tobool, label %if.then, label %if.end, !dbg !5481

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5482
  br label %return, !dbg !5482

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5483
  %and2 = and i32 %1, 1, !dbg !5485
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5485
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5486

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5487
  br label %return, !dbg !5487

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5488
  br label %return, !dbg !5488

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5490
  ret i32 %2, !dbg !5490
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5491 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #8

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5492 dso_local void @__compiletime_assert_117() #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #11

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !5493 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5497, metadata !DIExpression()), !dbg !5500
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5498, metadata !DIExpression()), !dbg !5501
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5499, metadata !DIExpression()), !dbg !5502
  %0 = load ptr, ptr %new.addr, align 8, !dbg !5503
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !5505
  %2 = load ptr, ptr %next.addr, align 8, !dbg !5506
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #20, !dbg !5507
  br i1 %call, label %if.end, label %if.then, !dbg !5508

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !5509

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !5510
  %4 = load ptr, ptr %next.addr, align 8, !dbg !5511
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !5512
  store ptr %3, ptr %prev1, align 8, !dbg !5513
  %5 = load ptr, ptr %next.addr, align 8, !dbg !5514
  %6 = load ptr, ptr %new.addr, align 8, !dbg !5515
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !5516
  store ptr %5, ptr %next2, align 8, !dbg !5517
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !5518
  %8 = load ptr, ptr %new.addr, align 8, !dbg !5519
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !5520
  store ptr %7, ptr %prev3, align 8, !dbg !5521
  br label %do.body, !dbg !5522

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !5523

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !5525

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !5523

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !5527
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !5527
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !5527
  store volatile ptr %9, ptr %next6, align 8, !dbg !5527
  br label %do.end7, !dbg !5527

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !5523

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !5529
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !5530 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5534, metadata !DIExpression()), !dbg !5537
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5535, metadata !DIExpression()), !dbg !5538
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5536, metadata !DIExpression()), !dbg !5539
  ret i1 true, !dbg !5540
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kobject_name(ptr noundef %kobj) #5 align 16 !dbg !5541 {
entry:
  %kobj.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !5543, metadata !DIExpression()), !dbg !5544
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !5545
  %name = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 0, !dbg !5546
  %1 = load ptr, ptr %name, align 8, !dbg !5546
  ret ptr %1, !dbg !5547
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @regmap_name_read_file(ptr noundef %file, ptr noundef %user_buf, i64 noundef %count, ptr noundef %ppos) #0 align 16 !dbg !5548 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %user_buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %ppos.addr = alloca ptr, align 8
  %map = alloca ptr, align 8
  %name = alloca ptr, align 8
  %ret = alloca i32, align 4
  %buf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5550, metadata !DIExpression()), !dbg !5558
  store ptr %user_buf, ptr %user_buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %user_buf.addr, metadata !5551, metadata !DIExpression()), !dbg !5559
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5552, metadata !DIExpression()), !dbg !5560
  store ptr %ppos, ptr %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ppos.addr, metadata !5553, metadata !DIExpression()), !dbg !5561
  call void @llvm.lifetime.start.p0(i64 8, ptr %map) #18, !dbg !5562
  call void @llvm.dbg.declare(metadata ptr %map, metadata !5554, metadata !DIExpression()), !dbg !5563
  %0 = load ptr, ptr %file.addr, align 8, !dbg !5564
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !5565
  %1 = load ptr, ptr %private_data, align 8, !dbg !5565
  store ptr %1, ptr %map, align 8, !dbg !5563
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #18, !dbg !5566
  call void @llvm.dbg.declare(metadata ptr %name, metadata !5555, metadata !DIExpression()), !dbg !5567
  store ptr @.str.13, ptr %name, align 8, !dbg !5567
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #18, !dbg !5568
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5556, metadata !DIExpression()), !dbg !5569
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #18, !dbg !5570
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !5557, metadata !DIExpression()), !dbg !5571
  %call = call noalias ptr @kmalloc(i64 noundef 4096, i32 noundef 3264) #19, !dbg !5572
  store ptr %call, ptr %buf, align 8, !dbg !5573
  %2 = load ptr, ptr %buf, align 8, !dbg !5574
  %tobool = icmp ne ptr %2, null, !dbg !5574
  br i1 %tobool, label %if.end, label %if.then, !dbg !5576

if.then:                                          ; preds = %entry
  store i64 -12, ptr %retval, align 8, !dbg !5577
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5577

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %map, align 8, !dbg !5578
  %dev = getelementptr inbounds %struct.regmap, ptr %3, i32 0, i32 7, !dbg !5580
  %4 = load ptr, ptr %dev, align 8, !dbg !5580
  %tobool1 = icmp ne ptr %4, null, !dbg !5578
  br i1 %tobool1, label %land.lhs.true, label %if.end8, !dbg !5581

land.lhs.true:                                    ; preds = %if.end
  %5 = load ptr, ptr %map, align 8, !dbg !5582
  %dev2 = getelementptr inbounds %struct.regmap, ptr %5, i32 0, i32 7, !dbg !5583
  %6 = load ptr, ptr %dev2, align 8, !dbg !5583
  %driver = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 6, !dbg !5584
  %7 = load ptr, ptr %driver, align 8, !dbg !5584
  %tobool3 = icmp ne ptr %7, null, !dbg !5582
  br i1 %tobool3, label %if.then4, label %if.end8, !dbg !5585

if.then4:                                         ; preds = %land.lhs.true
  %8 = load ptr, ptr %map, align 8, !dbg !5586
  %dev5 = getelementptr inbounds %struct.regmap, ptr %8, i32 0, i32 7, !dbg !5587
  %9 = load ptr, ptr %dev5, align 8, !dbg !5587
  %driver6 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 6, !dbg !5588
  %10 = load ptr, ptr %driver6, align 8, !dbg !5588
  %name7 = getelementptr inbounds %struct.device_driver, ptr %10, i32 0, i32 0, !dbg !5589
  %11 = load ptr, ptr %name7, align 8, !dbg !5589
  store ptr %11, ptr %name, align 8, !dbg !5590
  br label %if.end8, !dbg !5591

if.end8:                                          ; preds = %if.then4, %land.lhs.true, %if.end
  %12 = load ptr, ptr %buf, align 8, !dbg !5592
  %13 = load ptr, ptr %name, align 8, !dbg !5593
  %call9 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %12, i64 noundef 4096, ptr noundef @.str.14, ptr noundef %13) #20, !dbg !5594
  store i32 %call9, ptr %ret, align 4, !dbg !5595
  %14 = load i32, ptr %ret, align 4, !dbg !5596
  %conv = sext i32 %14 to i64, !dbg !5596
  %cmp = icmp uge i64 %conv, 4096, !dbg !5598
  br i1 %cmp, label %if.then11, label %if.end13, !dbg !5599

if.then11:                                        ; preds = %if.end8
  %15 = load ptr, ptr %buf, align 8, !dbg !5600
  call void @kfree(ptr noundef %15) #20, !dbg !5602
  %16 = load i32, ptr %ret, align 4, !dbg !5603
  %conv12 = sext i32 %16 to i64, !dbg !5603
  store i64 %conv12, ptr %retval, align 8, !dbg !5604
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5604

if.end13:                                         ; preds = %if.end8
  %17 = load ptr, ptr %user_buf.addr, align 8, !dbg !5605
  %18 = load i64, ptr %count.addr, align 8, !dbg !5606
  %19 = load ptr, ptr %ppos.addr, align 8, !dbg !5607
  %20 = load ptr, ptr %buf, align 8, !dbg !5608
  %21 = load i32, ptr %ret, align 4, !dbg !5609
  %conv14 = sext i32 %21 to i64, !dbg !5609
  %call15 = call i64 @simple_read_from_buffer(ptr noundef %17, i64 noundef %18, ptr noundef %19, ptr noundef %20, i64 noundef %conv14) #20, !dbg !5610
  %conv16 = trunc i64 %call15 to i32, !dbg !5610
  store i32 %conv16, ptr %ret, align 4, !dbg !5611
  %22 = load ptr, ptr %buf, align 8, !dbg !5612
  call void @kfree(ptr noundef %22) #20, !dbg !5613
  %23 = load i32, ptr %ret, align 4, !dbg !5614
  %conv17 = sext i32 %23 to i64, !dbg !5614
  store i64 %conv17, ptr %retval, align 8, !dbg !5615
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5615

cleanup:                                          ; preds = %if.end13, %if.then11, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #18, !dbg !5616
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #18, !dbg !5616
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #18, !dbg !5616
  call void @llvm.lifetime.end.p0(i64 8, ptr %map) #18, !dbg !5616
  %24 = load i64, ptr %retval, align 8, !dbg !5616
  ret i64 %24, !dbg !5616
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5617 dso_local i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5620 dso_local i64 @simple_read_from_buffer(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @regmap_reg_ranges_read_file(ptr noundef %file, ptr noundef %user_buf, i64 noundef %count, ptr noundef %ppos) #0 align 16 !dbg !5623 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %user_buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %ppos.addr = alloca ptr, align 8
  %map = alloca ptr, align 8
  %c = alloca ptr, align 8
  %p = alloca i64, align 8
  %buf_pos = alloca i64, align 8
  %buf = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %ret = alloca i32, align 4
  %entry_len = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr29 = alloca ptr, align 8
  %tmp32 = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5625, metadata !DIExpression()), !dbg !5644
  store ptr %user_buf, ptr %user_buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %user_buf.addr, metadata !5626, metadata !DIExpression()), !dbg !5645
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5627, metadata !DIExpression()), !dbg !5646
  store ptr %ppos, ptr %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ppos.addr, metadata !5628, metadata !DIExpression()), !dbg !5647
  call void @llvm.lifetime.start.p0(i64 8, ptr %map) #18, !dbg !5648
  call void @llvm.dbg.declare(metadata ptr %map, metadata !5629, metadata !DIExpression()), !dbg !5649
  %0 = load ptr, ptr %file.addr, align 8, !dbg !5650
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !5651
  %1 = load ptr, ptr %private_data, align 8, !dbg !5651
  store ptr %1, ptr %map, align 8, !dbg !5649
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #18, !dbg !5652
  call void @llvm.dbg.declare(metadata ptr %c, metadata !5630, metadata !DIExpression()), !dbg !5653
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #18, !dbg !5654
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5631, metadata !DIExpression()), !dbg !5655
  store i64 0, ptr %p, align 8, !dbg !5655
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf_pos) #18, !dbg !5656
  call void @llvm.dbg.declare(metadata ptr %buf_pos, metadata !5632, metadata !DIExpression()), !dbg !5657
  store i64 0, ptr %buf_pos, align 8, !dbg !5657
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #18, !dbg !5658
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !5633, metadata !DIExpression()), !dbg !5659
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #18, !dbg !5660
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !5634, metadata !DIExpression()), !dbg !5661
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #18, !dbg !5662
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5635, metadata !DIExpression()), !dbg !5663
  call void @llvm.lifetime.start.p0(i64 4, ptr %entry_len) #18, !dbg !5664
  call void @llvm.dbg.declare(metadata ptr %entry_len, metadata !5636, metadata !DIExpression()), !dbg !5665
  %2 = load ptr, ptr %ppos.addr, align 8, !dbg !5666
  %3 = load i64, ptr %2, align 8, !dbg !5668
  %cmp = icmp slt i64 %3, 0, !dbg !5669
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5670

lor.lhs.false:                                    ; preds = %entry
  %4 = load i64, ptr %count.addr, align 8, !dbg !5671
  %tobool = icmp ne i64 %4, 0, !dbg !5671
  br i1 %tobool, label %if.end, label %if.then, !dbg !5672

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i64 -22, ptr %retval, align 8, !dbg !5673
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5673

if.end:                                           ; preds = %lor.lhs.false
  %5 = load i64, ptr %count.addr, align 8, !dbg !5674
  %cmp2 = icmp ugt i64 %5, 4194304, !dbg !5676
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !5677

if.then3:                                         ; preds = %if.end
  store i64 4194304, ptr %count.addr, align 8, !dbg !5678
  br label %if.end4, !dbg !5679

if.end4:                                          ; preds = %if.then3, %if.end
  %6 = load i64, ptr %count.addr, align 8, !dbg !5680
  %call = call noalias ptr @kmalloc(i64 noundef %6, i32 noundef 3264) #19, !dbg !5681
  store ptr %call, ptr %buf, align 8, !dbg !5682
  %7 = load ptr, ptr %buf, align 8, !dbg !5683
  %tobool5 = icmp ne ptr %7, null, !dbg !5683
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !5685

if.then6:                                         ; preds = %if.end4
  store i64 -12, ptr %retval, align 8, !dbg !5686
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5686

if.end7:                                          ; preds = %if.end4
  %call8 = call noalias ptr @kmalloc(i64 noundef 4096, i32 noundef 3264) #19, !dbg !5687
  store ptr %call8, ptr %entry1, align 8, !dbg !5688
  %8 = load ptr, ptr %entry1, align 8, !dbg !5689
  %tobool9 = icmp ne ptr %8, null, !dbg !5689
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !5691

if.then10:                                        ; preds = %if.end7
  %9 = load ptr, ptr %buf, align 8, !dbg !5692
  call void @kfree(ptr noundef %9) #20, !dbg !5694
  store i64 -12, ptr %retval, align 8, !dbg !5695
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5695

if.end11:                                         ; preds = %if.end7
  %10 = load ptr, ptr %map, align 8, !dbg !5696
  %11 = load ptr, ptr %buf, align 8, !dbg !5697
  %12 = load i64, ptr %count.addr, align 8, !dbg !5698
  call void @regmap_calc_tot_len(ptr noundef %10, ptr noundef %11, i64 noundef %12) #20, !dbg !5699
  %13 = load ptr, ptr %map, align 8, !dbg !5700
  %14 = load ptr, ptr %ppos.addr, align 8, !dbg !5701
  %15 = load i64, ptr %14, align 8, !dbg !5702
  %call12 = call i32 @regmap_debugfs_get_dump_start(ptr noundef %13, i32 noundef 0, i64 noundef %15, ptr noundef %p) #20, !dbg !5703
  store i64 0, ptr %p, align 8, !dbg !5704
  %16 = load ptr, ptr %map, align 8, !dbg !5705
  %cache_lock = getelementptr inbounds %struct.regmap, ptr %16, i32 0, i32 26, !dbg !5706
  call void @mutex_lock(ptr noundef %cache_lock) #20, !dbg !5707
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !5708
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5637, metadata !DIExpression()), !dbg !5708
  %17 = load ptr, ptr %map, align 8, !dbg !5708
  %debugfs_off_cache = getelementptr inbounds %struct.regmap, ptr %17, i32 0, i32 25, !dbg !5708
  %next = getelementptr inbounds %struct.list_head, ptr %debugfs_off_cache, i32 0, i32 0, !dbg !5708
  %18 = load ptr, ptr %next, align 8, !dbg !5708
  store ptr %18, ptr %__mptr, align 8, !dbg !5708
  %19 = load ptr, ptr %__mptr, align 8, !dbg !5708
  %add.ptr = getelementptr i8, ptr %19, i64 0, !dbg !5708
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5708
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !5709
  %20 = load ptr, ptr %tmp, align 8, !dbg !5708
  store ptr %20, ptr %c, align 8, !dbg !5709
  br label %for.cond, !dbg !5709

for.cond:                                         ; preds = %for.inc, %if.end11
  %21 = load ptr, ptr %c, align 8, !dbg !5710
  %list = getelementptr inbounds %struct.regmap_debugfs_off_cache, ptr %21, i32 0, i32 0, !dbg !5710
  %22 = load ptr, ptr %map, align 8, !dbg !5710
  %debugfs_off_cache13 = getelementptr inbounds %struct.regmap, ptr %22, i32 0, i32 25, !dbg !5710
  %cmp14 = icmp eq ptr %list, %debugfs_off_cache13, !dbg !5710
  %lnot = xor i1 %cmp14, true, !dbg !5710
  br i1 %lnot, label %for.body, label %for.end, !dbg !5709

for.body:                                         ; preds = %for.cond
  %23 = load ptr, ptr %entry1, align 8, !dbg !5711
  %24 = load ptr, ptr %c, align 8, !dbg !5713
  %base_reg = getelementptr inbounds %struct.regmap_debugfs_off_cache, ptr %24, i32 0, i32 3, !dbg !5714
  %25 = load i32, ptr %base_reg, align 8, !dbg !5714
  %26 = load ptr, ptr %c, align 8, !dbg !5715
  %max_reg = getelementptr inbounds %struct.regmap_debugfs_off_cache, ptr %26, i32 0, i32 4, !dbg !5716
  %27 = load i32, ptr %max_reg, align 4, !dbg !5716
  %call15 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %23, i64 noundef 4096, ptr noundef @.str.15, i32 noundef %25, i32 noundef %27) #20, !dbg !5717
  store i32 %call15, ptr %entry_len, align 4, !dbg !5718
  %28 = load i64, ptr %p, align 8, !dbg !5719
  %29 = load ptr, ptr %ppos.addr, align 8, !dbg !5721
  %30 = load i64, ptr %29, align 8, !dbg !5722
  %cmp16 = icmp sge i64 %28, %30, !dbg !5723
  br i1 %cmp16, label %if.then17, label %if.end26, !dbg !5724

if.then17:                                        ; preds = %for.body
  %31 = load i64, ptr %buf_pos, align 8, !dbg !5725
  %32 = load i32, ptr %entry_len, align 4, !dbg !5728
  %conv = zext i32 %32 to i64, !dbg !5728
  %add = add i64 %31, %conv, !dbg !5729
  %33 = load i64, ptr %count.addr, align 8, !dbg !5730
  %cmp18 = icmp ugt i64 %add, %33, !dbg !5731
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !5732

if.then20:                                        ; preds = %if.then17
  br label %for.end, !dbg !5733

if.end21:                                         ; preds = %if.then17
  %34 = load ptr, ptr %buf, align 8, !dbg !5734
  %35 = load i64, ptr %buf_pos, align 8, !dbg !5735
  %add.ptr22 = getelementptr i8, ptr %34, i64 %35, !dbg !5736
  %36 = load ptr, ptr %entry1, align 8, !dbg !5737
  %37 = load i32, ptr %entry_len, align 4, !dbg !5738
  %conv23 = zext i32 %37 to i64, !dbg !5738
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr22, ptr align 1 %36, i64 %conv23, i1 false), !dbg !5739
  %38 = load i32, ptr %entry_len, align 4, !dbg !5740
  %conv24 = zext i32 %38 to i64, !dbg !5740
  %39 = load i64, ptr %buf_pos, align 8, !dbg !5741
  %add25 = add i64 %39, %conv24, !dbg !5741
  store i64 %add25, ptr %buf_pos, align 8, !dbg !5741
  br label %if.end26, !dbg !5742

if.end26:                                         ; preds = %if.end21, %for.body
  %40 = load i32, ptr %entry_len, align 4, !dbg !5743
  %conv27 = zext i32 %40 to i64, !dbg !5743
  %41 = load i64, ptr %p, align 8, !dbg !5744
  %add28 = add i64 %41, %conv27, !dbg !5744
  store i64 %add28, ptr %p, align 8, !dbg !5744
  br label %for.inc, !dbg !5745

for.inc:                                          ; preds = %if.end26
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr29) #18, !dbg !5746
  call void @llvm.dbg.declare(metadata ptr %__mptr29, metadata !5640, metadata !DIExpression()), !dbg !5746
  %42 = load ptr, ptr %c, align 8, !dbg !5746
  %list30 = getelementptr inbounds %struct.regmap_debugfs_off_cache, ptr %42, i32 0, i32 0, !dbg !5746
  %next31 = getelementptr inbounds %struct.list_head, ptr %list30, i32 0, i32 0, !dbg !5746
  %43 = load ptr, ptr %next31, align 8, !dbg !5746
  store ptr %43, ptr %__mptr29, align 8, !dbg !5746
  %44 = load ptr, ptr %__mptr29, align 8, !dbg !5746
  %add.ptr33 = getelementptr i8, ptr %44, i64 0, !dbg !5746
  store ptr %add.ptr33, ptr %tmp32, align 8, !dbg !5746
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr29) #18, !dbg !5710
  %45 = load ptr, ptr %tmp32, align 8, !dbg !5746
  store ptr %45, ptr %c, align 8, !dbg !5710
  br label %for.cond, !dbg !5710, !llvm.loop !5747

for.end:                                          ; preds = %if.then20, %for.cond
  %46 = load ptr, ptr %map, align 8, !dbg !5749
  %cache_lock34 = getelementptr inbounds %struct.regmap, ptr %46, i32 0, i32 26, !dbg !5750
  call void @mutex_unlock(ptr noundef %cache_lock34) #20, !dbg !5751
  %47 = load ptr, ptr %entry1, align 8, !dbg !5752
  call void @kfree(ptr noundef %47) #20, !dbg !5753
  %48 = load i64, ptr %buf_pos, align 8, !dbg !5754
  %conv35 = trunc i64 %48 to i32, !dbg !5754
  store i32 %conv35, ptr %ret, align 4, !dbg !5755
  %49 = load ptr, ptr %user_buf.addr, align 8, !dbg !5756
  %50 = load ptr, ptr %buf, align 8, !dbg !5758
  %51 = load i64, ptr %buf_pos, align 8, !dbg !5759
  %call36 = call i64 @copy_to_user(ptr noundef %49, ptr noundef %50, i64 noundef %51) #20, !dbg !5760
  %tobool37 = icmp ne i64 %call36, 0, !dbg !5760
  br i1 %tobool37, label %if.then38, label %if.end39, !dbg !5761

if.then38:                                        ; preds = %for.end
  store i32 -14, ptr %ret, align 4, !dbg !5762
  br label %out_buf, !dbg !5764

if.end39:                                         ; preds = %for.end
  %52 = load i64, ptr %buf_pos, align 8, !dbg !5765
  %53 = load ptr, ptr %ppos.addr, align 8, !dbg !5766
  %54 = load i64, ptr %53, align 8, !dbg !5767
  %add40 = add i64 %54, %52, !dbg !5767
  store i64 %add40, ptr %53, align 8, !dbg !5767
  br label %out_buf, !dbg !5768

out_buf:                                          ; preds = %if.end39, %if.then38
  call void @llvm.dbg.label(metadata !5643), !dbg !5769
  %55 = load ptr, ptr %buf, align 8, !dbg !5770
  call void @kfree(ptr noundef %55) #20, !dbg !5771
  %56 = load i32, ptr %ret, align 4, !dbg !5772
  %conv41 = sext i32 %56 to i64, !dbg !5772
  store i64 %conv41, ptr %retval, align 8, !dbg !5773
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5773

cleanup:                                          ; preds = %out_buf, %if.then10, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %entry_len) #18, !dbg !5774
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #18, !dbg !5774
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #18, !dbg !5774
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #18, !dbg !5774
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf_pos) #18, !dbg !5774
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #18, !dbg !5774
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #18, !dbg !5774
  call void @llvm.lifetime.end.p0(i64 8, ptr %map) #18, !dbg !5774
  %57 = load i64, ptr %retval, align 8, !dbg !5774
  ret i64 %57, !dbg !5774
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @regmap_calc_tot_len(ptr noundef %map, ptr noundef %buf, i64 noundef %count) #5 align 16 !dbg !5775 {
entry:
  %map.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  store ptr %map, ptr %map.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !5779, metadata !DIExpression()), !dbg !5782
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5780, metadata !DIExpression()), !dbg !5783
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5781, metadata !DIExpression()), !dbg !5784
  %0 = load ptr, ptr %map.addr, align 8, !dbg !5785
  %debugfs_tot_len = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 24, !dbg !5787
  %1 = load i32, ptr %debugfs_tot_len, align 8, !dbg !5787
  %tobool = icmp ne i32 %1, 0, !dbg !5785
  br i1 %tobool, label %if.end, label %if.then, !dbg !5788

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %map.addr, align 8, !dbg !5789
  %max_register = getelementptr inbounds %struct.regmap, ptr %2, i32 0, i32 27, !dbg !5791
  %3 = load i32, ptr %max_register, align 8, !dbg !5791
  %call = call i64 @regmap_calc_reg_len(i32 noundef %3) #20, !dbg !5792
  %conv = trunc i64 %call to i32, !dbg !5792
  %4 = load ptr, ptr %map.addr, align 8, !dbg !5793
  %debugfs_reg_len = getelementptr inbounds %struct.regmap, ptr %4, i32 0, i32 22, !dbg !5794
  store i32 %conv, ptr %debugfs_reg_len, align 8, !dbg !5795
  %5 = load ptr, ptr %map.addr, align 8, !dbg !5796
  %format = getelementptr inbounds %struct.regmap, ptr %5, i32 0, i32 9, !dbg !5797
  %val_bytes = getelementptr inbounds %struct.regmap_format, ptr %format, i32 0, i32 3, !dbg !5798
  %6 = load i64, ptr %val_bytes, align 8, !dbg !5798
  %mul = mul i64 2, %6, !dbg !5799
  %conv1 = trunc i64 %mul to i32, !dbg !5800
  %7 = load ptr, ptr %map.addr, align 8, !dbg !5801
  %debugfs_val_len = getelementptr inbounds %struct.regmap, ptr %7, i32 0, i32 23, !dbg !5802
  store i32 %conv1, ptr %debugfs_val_len, align 4, !dbg !5803
  %8 = load ptr, ptr %map.addr, align 8, !dbg !5804
  %debugfs_reg_len2 = getelementptr inbounds %struct.regmap, ptr %8, i32 0, i32 22, !dbg !5805
  %9 = load i32, ptr %debugfs_reg_len2, align 8, !dbg !5805
  %10 = load ptr, ptr %map.addr, align 8, !dbg !5806
  %debugfs_val_len3 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 23, !dbg !5807
  %11 = load i32, ptr %debugfs_val_len3, align 4, !dbg !5807
  %add = add i32 %9, %11, !dbg !5808
  %add4 = add i32 %add, 3, !dbg !5809
  %12 = load ptr, ptr %map.addr, align 8, !dbg !5810
  %debugfs_tot_len5 = getelementptr inbounds %struct.regmap, ptr %12, i32 0, i32 24, !dbg !5811
  store i32 %add4, ptr %debugfs_tot_len5, align 8, !dbg !5812
  br label %if.end, !dbg !5813

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5814
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @regmap_debugfs_get_dump_start(ptr noundef %map, i32 noundef %base, i64 noundef %from, ptr noundef %pos) #0 align 16 !dbg !5815 {
entry:
  %retval = alloca i32, align 4
  %map.addr = alloca ptr, align 8
  %base.addr = alloca i32, align 4
  %from.addr = alloca i64, align 8
  %pos.addr = alloca ptr, align 8
  %c = alloca ptr, align 8
  %p = alloca i64, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %fpos_offset = alloca i32, align 4
  %reg_offset = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__mptr = alloca ptr, align 8
  %tmp62 = alloca ptr, align 8
  %__mptr95 = alloca ptr, align 8
  %tmp98 = alloca ptr, align 8
  store ptr %map, ptr %map.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !5819, metadata !DIExpression()), !dbg !5840
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !5820, metadata !DIExpression()), !dbg !5841
  store i64 %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !5821, metadata !DIExpression()), !dbg !5842
  store ptr %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !5822, metadata !DIExpression()), !dbg !5843
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #18, !dbg !5844
  call void @llvm.dbg.declare(metadata ptr %c, metadata !5823, metadata !DIExpression()), !dbg !5845
  store ptr null, ptr %c, align 8, !dbg !5845
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #18, !dbg !5846
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5824, metadata !DIExpression()), !dbg !5847
  store i64 0, ptr %p, align 8, !dbg !5847
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #18, !dbg !5848
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5825, metadata !DIExpression()), !dbg !5849
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #18, !dbg !5848
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5826, metadata !DIExpression()), !dbg !5850
  call void @llvm.lifetime.start.p0(i64 4, ptr %fpos_offset) #18, !dbg !5851
  call void @llvm.dbg.declare(metadata ptr %fpos_offset, metadata !5827, metadata !DIExpression()), !dbg !5852
  call void @llvm.lifetime.start.p0(i64 4, ptr %reg_offset) #18, !dbg !5853
  call void @llvm.dbg.declare(metadata ptr %reg_offset, metadata !5828, metadata !DIExpression()), !dbg !5854
  %0 = load i32, ptr %base.addr, align 4, !dbg !5855
  %tobool = icmp ne i32 %0, 0, !dbg !5855
  br i1 %tobool, label %if.then, label %if.end, !dbg !5857

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %base.addr, align 4, !dbg !5858
  store i32 %1, ptr %retval, align 4, !dbg !5859
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5859

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %map.addr, align 8, !dbg !5860
  %cache_lock = getelementptr inbounds %struct.regmap, ptr %2, i32 0, i32 26, !dbg !5861
  call void @mutex_lock(ptr noundef %cache_lock) #20, !dbg !5862
  %3 = load i32, ptr %base.addr, align 4, !dbg !5863
  store i32 %3, ptr %i, align 4, !dbg !5864
  %4 = load ptr, ptr %map.addr, align 8, !dbg !5865
  %debugfs_off_cache = getelementptr inbounds %struct.regmap, ptr %4, i32 0, i32 25, !dbg !5867
  %call = call i32 @list_empty(ptr noundef %debugfs_off_cache) #20, !dbg !5868
  %tobool1 = icmp ne i32 %call, 0, !dbg !5868
  br i1 %tobool1, label %if.then2, label %if.end21, !dbg !5869

if.then2:                                         ; preds = %if.end
  br label %for.cond, !dbg !5870

for.cond:                                         ; preds = %for.inc, %if.then2
  %5 = load i32, ptr %i, align 4, !dbg !5872
  %6 = load ptr, ptr %map.addr, align 8, !dbg !5875
  %max_register = getelementptr inbounds %struct.regmap, ptr %6, i32 0, i32 27, !dbg !5876
  %7 = load i32, ptr %max_register, align 8, !dbg !5876
  %cmp = icmp ule i32 %5, %7, !dbg !5877
  br i1 %cmp, label %for.body, label %for.end, !dbg !5878

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %map.addr, align 8, !dbg !5879
  %9 = load i32, ptr %i, align 4, !dbg !5882
  %call3 = call zeroext i1 @regmap_printable(ptr noundef %8, i32 noundef %9) #20, !dbg !5883
  br i1 %call3, label %if.end10, label %if.then4, !dbg !5884

if.then4:                                         ; preds = %for.body
  %10 = load ptr, ptr %c, align 8, !dbg !5885
  %tobool5 = icmp ne ptr %10, null, !dbg !5885
  br i1 %tobool5, label %if.then6, label %if.end9, !dbg !5888

if.then6:                                         ; preds = %if.then4
  %11 = load i64, ptr %p, align 8, !dbg !5889
  %sub = sub i64 %11, 1, !dbg !5891
  %12 = load ptr, ptr %c, align 8, !dbg !5892
  %max = getelementptr inbounds %struct.regmap_debugfs_off_cache, ptr %12, i32 0, i32 2, !dbg !5893
  store i64 %sub, ptr %max, align 8, !dbg !5894
  %13 = load i32, ptr %i, align 4, !dbg !5895
  %14 = load ptr, ptr %map.addr, align 8, !dbg !5896
  %reg_stride = getelementptr inbounds %struct.regmap, ptr %14, i32 0, i32 49, !dbg !5897
  %15 = load i32, ptr %reg_stride, align 4, !dbg !5897
  %sub7 = sub i32 %13, %15, !dbg !5898
  %16 = load ptr, ptr %c, align 8, !dbg !5899
  %max_reg = getelementptr inbounds %struct.regmap_debugfs_off_cache, ptr %16, i32 0, i32 4, !dbg !5900
  store i32 %sub7, ptr %max_reg, align 4, !dbg !5901
  %17 = load ptr, ptr %c, align 8, !dbg !5902
  %list = getelementptr inbounds %struct.regmap_debugfs_off_cache, ptr %17, i32 0, i32 0, !dbg !5903
  %18 = load ptr, ptr %map.addr, align 8, !dbg !5904
  %debugfs_off_cache8 = getelementptr inbounds %struct.regmap, ptr %18, i32 0, i32 25, !dbg !5905
  call void @list_add_tail(ptr noundef %list, ptr noundef %debugfs_off_cache8) #20, !dbg !5906
  store ptr null, ptr %c, align 8, !dbg !5907
  br label %if.end9, !dbg !5908

if.end9:                                          ; preds = %if.then6, %if.then4
  br label %for.inc, !dbg !5909

if.end10:                                         ; preds = %for.body
  %19 = load ptr, ptr %c, align 8, !dbg !5910
  %tobool11 = icmp ne ptr %19, null, !dbg !5910
  br i1 %tobool11, label %if.end18, label %if.then12, !dbg !5912

if.then12:                                        ; preds = %if.end10
  %call13 = call noalias ptr @kzalloc(i64 noundef 40, i32 noundef 3264) #19, !dbg !5913
  store ptr %call13, ptr %c, align 8, !dbg !5915
  %20 = load ptr, ptr %c, align 8, !dbg !5916
  %tobool14 = icmp ne ptr %20, null, !dbg !5916
  br i1 %tobool14, label %if.end17, label %if.then15, !dbg !5918

if.then15:                                        ; preds = %if.then12
  %21 = load ptr, ptr %map.addr, align 8, !dbg !5919
  call void @regmap_debugfs_free_dump_cache(ptr noundef %21) #20, !dbg !5921
  %22 = load ptr, ptr %map.addr, align 8, !dbg !5922
  %cache_lock16 = getelementptr inbounds %struct.regmap, ptr %22, i32 0, i32 26, !dbg !5923
  call void @mutex_unlock(ptr noundef %cache_lock16) #20, !dbg !5924
  %23 = load i32, ptr %base.addr, align 4, !dbg !5925
  store i32 %23, ptr %retval, align 4, !dbg !5926
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5926

if.end17:                                         ; preds = %if.then12
  %24 = load i64, ptr %p, align 8, !dbg !5927
  %25 = load ptr, ptr %c, align 8, !dbg !5928
  %min = getelementptr inbounds %struct.regmap_debugfs_off_cache, ptr %25, i32 0, i32 1, !dbg !5929
  store i64 %24, ptr %min, align 8, !dbg !5930
  %26 = load i32, ptr %i, align 4, !dbg !5931
  %27 = load ptr, ptr %c, align 8, !dbg !5932
  %base_reg = getelementptr inbounds %struct.regmap_debugfs_off_cache, ptr %27, i32 0, i32 3, !dbg !5933
  store i32 %26, ptr %base_reg, align 8, !dbg !5934
  br label %if.end18, !dbg !5935

if.end18:                                         ; preds = %if.end17, %if.end10
  %28 = load ptr, ptr %map.addr, align 8, !dbg !5936
  %debugfs_tot_len = getelementptr inbounds %struct.regmap, ptr %28, i32 0, i32 24, !dbg !5937
  %29 = load i32, ptr %debugfs_tot_len, align 8, !dbg !5937
  %conv = zext i32 %29 to i64, !dbg !5936
  %30 = load i64, ptr %p, align 8, !dbg !5938
  %add = add i64 %30, %conv, !dbg !5938
  store i64 %add, ptr %p, align 8, !dbg !5938
  br label %for.inc, !dbg !5939

for.inc:                                          ; preds = %if.end18, %if.end9
  %31 = load ptr, ptr %map.addr, align 8, !dbg !5940
  %reg_stride19 = getelementptr inbounds %struct.regmap, ptr %31, i32 0, i32 49, !dbg !5941
  %32 = load i32, ptr %reg_stride19, align 4, !dbg !5941
  %33 = load i32, ptr %i, align 4, !dbg !5942
  %add20 = add i32 %33, %32, !dbg !5942
  store i32 %add20, ptr %i, align 4, !dbg !5942
  br label %for.cond, !dbg !5943, !llvm.loop !5944

for.end:                                          ; preds = %for.cond
  br label %if.end21, !dbg !5946

if.end21:                                         ; preds = %for.end, %if.end
  %34 = load ptr, ptr %c, align 8, !dbg !5947
  %tobool22 = icmp ne ptr %34, null, !dbg !5947
  br i1 %tobool22, label %if.then23, label %if.end31, !dbg !5949

if.then23:                                        ; preds = %if.end21
  %35 = load i64, ptr %p, align 8, !dbg !5950
  %sub24 = sub i64 %35, 1, !dbg !5952
  %36 = load ptr, ptr %c, align 8, !dbg !5953
  %max25 = getelementptr inbounds %struct.regmap_debugfs_off_cache, ptr %36, i32 0, i32 2, !dbg !5954
  store i64 %sub24, ptr %max25, align 8, !dbg !5955
  %37 = load i32, ptr %i, align 4, !dbg !5956
  %38 = load ptr, ptr %map.addr, align 8, !dbg !5957
  %reg_stride26 = getelementptr inbounds %struct.regmap, ptr %38, i32 0, i32 49, !dbg !5958
  %39 = load i32, ptr %reg_stride26, align 4, !dbg !5958
  %sub27 = sub i32 %37, %39, !dbg !5959
  %40 = load ptr, ptr %c, align 8, !dbg !5960
  %max_reg28 = getelementptr inbounds %struct.regmap_debugfs_off_cache, ptr %40, i32 0, i32 4, !dbg !5961
  store i32 %sub27, ptr %max_reg28, align 4, !dbg !5962
  %41 = load ptr, ptr %c, align 8, !dbg !5963
  %list29 = getelementptr inbounds %struct.regmap_debugfs_off_cache, ptr %41, i32 0, i32 0, !dbg !5964
  %42 = load ptr, ptr %map.addr, align 8, !dbg !5965
  %debugfs_off_cache30 = getelementptr inbounds %struct.regmap, ptr %42, i32 0, i32 25, !dbg !5966
  call void @list_add_tail(ptr noundef %list29, ptr noundef %debugfs_off_cache30) #20, !dbg !5967
  br label %if.end31, !dbg !5968

if.end31:                                         ; preds = %if.then23, %if.end21
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #18, !dbg !5969
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5829, metadata !DIExpression()), !dbg !5969
  %43 = load ptr, ptr %map.addr, align 8, !dbg !5969
  %debugfs_off_cache32 = getelementptr inbounds %struct.regmap, ptr %43, i32 0, i32 25, !dbg !5969
  %call33 = call i32 @list_empty(ptr noundef %debugfs_off_cache32) #20, !dbg !5969
  %tobool34 = icmp ne i32 %call33, 0, !dbg !5969
  %lnot = xor i1 %tobool34, true, !dbg !5969
  %lnot35 = xor i1 %lnot, true, !dbg !5969
  %lnot.ext = zext i1 %lnot35 to i32, !dbg !5969
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5969
  %44 = load i32, ptr %__ret_warn_on, align 4, !dbg !5970
  %tobool36 = icmp ne i32 %44, 0, !dbg !5970
  %lnot37 = xor i1 %tobool36, true, !dbg !5970
  %lnot39 = xor i1 %lnot37, true, !dbg !5970
  %lnot.ext40 = zext i1 %lnot39 to i32, !dbg !5970
  %conv41 = sext i32 %lnot.ext40 to i64, !dbg !5970
  %expval = call i64 @llvm.expect.i64(i64 %conv41, i64 0), !dbg !5970
  %tobool42 = icmp ne i64 %expval, 0, !dbg !5970
  br i1 %tobool42, label %if.then43, label %if.end53, !dbg !5969

if.then43:                                        ; preds = %if.end31
  br label %do.body, !dbg !5970

do.body:                                          ; preds = %if.then43
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #18, !dbg !5971
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5831, metadata !DIExpression()), !dbg !5971
  store i32 2305, ptr %__flags, align 4, !dbg !5971
  br label %do.body44, !dbg !5971

do.body44:                                        ; preds = %do.body
  br label %do.cond, !dbg !5972

do.cond:                                          ; preds = %do.body44
  br label %do.end, !dbg !5972

do.end:                                           ; preds = %do.cond
  br label %do.body45, !dbg !5971

do.body45:                                        ; preds = %do.end
  %45 = load i32, ptr %__flags, align 4, !dbg !5974
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.17, i32 160, i32 %45, i64 12) #18, !dbg !5974, !srcloc !5976
  br label %do.cond46, !dbg !5974

do.cond46:                                        ; preds = %do.body45
  br label %do.end47, !dbg !5974

do.end47:                                         ; preds = %do.cond46
  br label %do.body48, !dbg !5971

do.body48:                                        ; preds = %do.end47
  br label %do.cond49, !dbg !5977

do.cond49:                                        ; preds = %do.body48
  br label %do.end50, !dbg !5977

do.end50:                                         ; preds = %do.cond49
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #18, !dbg !5970
  br label %do.cond51, !dbg !5971

do.cond51:                                        ; preds = %do.end50
  br label %do.end52, !dbg !5971

do.end52:                                         ; preds = %do.cond51
  br label %if.end53, !dbg !5971

if.end53:                                         ; preds = %do.end52, %if.end31
  %46 = load i32, ptr %__ret_warn_on, align 4, !dbg !5969
  %tobool54 = icmp ne i32 %46, 0, !dbg !5969
  %lnot55 = xor i1 %tobool54, true, !dbg !5969
  %lnot57 = xor i1 %lnot55, true, !dbg !5969
  %lnot.ext58 = zext i1 %lnot57 to i32, !dbg !5969
  %conv59 = sext i32 %lnot.ext58 to i64, !dbg !5969
  %expval60 = call i64 @llvm.expect.i64(i64 %conv59, i64 0), !dbg !5969
  store i64 %expval60, ptr %tmp, align 8, !dbg !5970
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #18, !dbg !5979
  %47 = load i64, ptr %tmp, align 8, !dbg !5969
  %48 = load i32, ptr %base.addr, align 4, !dbg !5980
  store i32 %48, ptr %ret, align 4, !dbg !5981
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !5982
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5834, metadata !DIExpression()), !dbg !5982
  %49 = load ptr, ptr %map.addr, align 8, !dbg !5982
  %debugfs_off_cache61 = getelementptr inbounds %struct.regmap, ptr %49, i32 0, i32 25, !dbg !5982
  %next = getelementptr inbounds %struct.list_head, ptr %debugfs_off_cache61, i32 0, i32 0, !dbg !5982
  %50 = load ptr, ptr %next, align 8, !dbg !5982
  store ptr %50, ptr %__mptr, align 8, !dbg !5982
  %51 = load ptr, ptr %__mptr, align 8, !dbg !5982
  %add.ptr = getelementptr i8, ptr %51, i64 0, !dbg !5982
  store ptr %add.ptr, ptr %tmp62, align 8, !dbg !5982
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !5983
  %52 = load ptr, ptr %tmp62, align 8, !dbg !5982
  store ptr %52, ptr %c, align 8, !dbg !5983
  br label %for.cond63, !dbg !5983

for.cond63:                                       ; preds = %for.inc94, %if.end53
  %53 = load ptr, ptr %c, align 8, !dbg !5984
  %list64 = getelementptr inbounds %struct.regmap_debugfs_off_cache, ptr %53, i32 0, i32 0, !dbg !5984
  %54 = load ptr, ptr %map.addr, align 8, !dbg !5984
  %debugfs_off_cache65 = getelementptr inbounds %struct.regmap, ptr %54, i32 0, i32 25, !dbg !5984
  %cmp66 = icmp eq ptr %list64, %debugfs_off_cache65, !dbg !5984
  %lnot68 = xor i1 %cmp66, true, !dbg !5984
  br i1 %lnot68, label %for.body70, label %for.end100, !dbg !5983

for.body70:                                       ; preds = %for.cond63
  %55 = load i64, ptr %from.addr, align 8, !dbg !5985
  %56 = load ptr, ptr %c, align 8, !dbg !5988
  %min71 = getelementptr inbounds %struct.regmap_debugfs_off_cache, ptr %56, i32 0, i32 1, !dbg !5989
  %57 = load i64, ptr %min71, align 8, !dbg !5989
  %cmp72 = icmp sge i64 %55, %57, !dbg !5990
  br i1 %cmp72, label %land.lhs.true, label %if.end91, !dbg !5991

land.lhs.true:                                    ; preds = %for.body70
  %58 = load i64, ptr %from.addr, align 8, !dbg !5992
  %59 = load ptr, ptr %c, align 8, !dbg !5993
  %max74 = getelementptr inbounds %struct.regmap_debugfs_off_cache, ptr %59, i32 0, i32 2, !dbg !5994
  %60 = load i64, ptr %max74, align 8, !dbg !5994
  %cmp75 = icmp sle i64 %58, %60, !dbg !5995
  br i1 %cmp75, label %if.then77, label %if.end91, !dbg !5996

if.then77:                                        ; preds = %land.lhs.true
  %61 = load i64, ptr %from.addr, align 8, !dbg !5997
  %62 = load ptr, ptr %c, align 8, !dbg !5999
  %min78 = getelementptr inbounds %struct.regmap_debugfs_off_cache, ptr %62, i32 0, i32 1, !dbg !6000
  %63 = load i64, ptr %min78, align 8, !dbg !6000
  %sub79 = sub i64 %61, %63, !dbg !6001
  %conv80 = trunc i64 %sub79 to i32, !dbg !5997
  store i32 %conv80, ptr %fpos_offset, align 4, !dbg !6002
  %64 = load i32, ptr %fpos_offset, align 4, !dbg !6003
  %65 = load ptr, ptr %map.addr, align 8, !dbg !6004
  %debugfs_tot_len81 = getelementptr inbounds %struct.regmap, ptr %65, i32 0, i32 24, !dbg !6005
  %66 = load i32, ptr %debugfs_tot_len81, align 8, !dbg !6005
  %div = udiv i32 %64, %66, !dbg !6006
  store i32 %div, ptr %reg_offset, align 4, !dbg !6007
  %67 = load ptr, ptr %c, align 8, !dbg !6008
  %min82 = getelementptr inbounds %struct.regmap_debugfs_off_cache, ptr %67, i32 0, i32 1, !dbg !6009
  %68 = load i64, ptr %min82, align 8, !dbg !6009
  %69 = load i32, ptr %reg_offset, align 4, !dbg !6010
  %70 = load ptr, ptr %map.addr, align 8, !dbg !6011
  %debugfs_tot_len83 = getelementptr inbounds %struct.regmap, ptr %70, i32 0, i32 24, !dbg !6012
  %71 = load i32, ptr %debugfs_tot_len83, align 8, !dbg !6012
  %mul = mul i32 %69, %71, !dbg !6013
  %conv84 = zext i32 %mul to i64, !dbg !6014
  %add85 = add i64 %68, %conv84, !dbg !6015
  %72 = load ptr, ptr %pos.addr, align 8, !dbg !6016
  store i64 %add85, ptr %72, align 8, !dbg !6017
  %73 = load ptr, ptr %map.addr, align 8, !dbg !6018
  %cache_lock86 = getelementptr inbounds %struct.regmap, ptr %73, i32 0, i32 26, !dbg !6019
  call void @mutex_unlock(ptr noundef %cache_lock86) #20, !dbg !6020
  %74 = load ptr, ptr %c, align 8, !dbg !6021
  %base_reg87 = getelementptr inbounds %struct.regmap_debugfs_off_cache, ptr %74, i32 0, i32 3, !dbg !6022
  %75 = load i32, ptr %base_reg87, align 8, !dbg !6022
  %76 = load i32, ptr %reg_offset, align 4, !dbg !6023
  %77 = load ptr, ptr %map.addr, align 8, !dbg !6024
  %reg_stride88 = getelementptr inbounds %struct.regmap, ptr %77, i32 0, i32 49, !dbg !6025
  %78 = load i32, ptr %reg_stride88, align 4, !dbg !6025
  %mul89 = mul i32 %76, %78, !dbg !6026
  %add90 = add i32 %75, %mul89, !dbg !6027
  store i32 %add90, ptr %retval, align 4, !dbg !6028
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6028

if.end91:                                         ; preds = %land.lhs.true, %for.body70
  %79 = load ptr, ptr %c, align 8, !dbg !6029
  %max92 = getelementptr inbounds %struct.regmap_debugfs_off_cache, ptr %79, i32 0, i32 2, !dbg !6030
  %80 = load i64, ptr %max92, align 8, !dbg !6030
  %81 = load ptr, ptr %pos.addr, align 8, !dbg !6031
  store i64 %80, ptr %81, align 8, !dbg !6032
  %82 = load ptr, ptr %c, align 8, !dbg !6033
  %max_reg93 = getelementptr inbounds %struct.regmap_debugfs_off_cache, ptr %82, i32 0, i32 4, !dbg !6034
  %83 = load i32, ptr %max_reg93, align 4, !dbg !6034
  store i32 %83, ptr %ret, align 4, !dbg !6035
  br label %for.inc94, !dbg !6036

for.inc94:                                        ; preds = %if.end91
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr95) #18, !dbg !6037
  call void @llvm.dbg.declare(metadata ptr %__mptr95, metadata !5837, metadata !DIExpression()), !dbg !6037
  %84 = load ptr, ptr %c, align 8, !dbg !6037
  %list96 = getelementptr inbounds %struct.regmap_debugfs_off_cache, ptr %84, i32 0, i32 0, !dbg !6037
  %next97 = getelementptr inbounds %struct.list_head, ptr %list96, i32 0, i32 0, !dbg !6037
  %85 = load ptr, ptr %next97, align 8, !dbg !6037
  store ptr %85, ptr %__mptr95, align 8, !dbg !6037
  %86 = load ptr, ptr %__mptr95, align 8, !dbg !6037
  %add.ptr99 = getelementptr i8, ptr %86, i64 0, !dbg !6037
  store ptr %add.ptr99, ptr %tmp98, align 8, !dbg !6037
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr95) #18, !dbg !5984
  %87 = load ptr, ptr %tmp98, align 8, !dbg !6037
  store ptr %87, ptr %c, align 8, !dbg !5984
  br label %for.cond63, !dbg !5984, !llvm.loop !6038

for.end100:                                       ; preds = %for.cond63
  %88 = load ptr, ptr %map.addr, align 8, !dbg !6040
  %cache_lock101 = getelementptr inbounds %struct.regmap, ptr %88, i32 0, i32 26, !dbg !6041
  call void @mutex_unlock(ptr noundef %cache_lock101) #20, !dbg !6042
  %89 = load i32, ptr %ret, align 4, !dbg !6043
  store i32 %89, ptr %retval, align 4, !dbg !6044
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6044

cleanup:                                          ; preds = %for.end100, %if.then77, %if.then15, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %reg_offset) #18, !dbg !6045
  call void @llvm.lifetime.end.p0(i64 4, ptr %fpos_offset) #18, !dbg !6045
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #18, !dbg !6045
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #18, !dbg !6045
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #18, !dbg !6045
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #18, !dbg !6045
  %90 = load i32, ptr %retval, align 4, !dbg !6045
  ret i32 %90, !dbg !6045
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #9 align 16 !dbg !6046 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6051, metadata !DIExpression()), !dbg !6054
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6052, metadata !DIExpression()), !dbg !6055
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6053, metadata !DIExpression()), !dbg !6056
  %0 = load ptr, ptr %from.addr, align 8, !dbg !6057
  %1 = load i64, ptr %n.addr, align 8, !dbg !6059
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext true) #20, !dbg !6060
  br i1 %call, label %if.then, label %if.end, !dbg !6061

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !6062
  %3 = load ptr, ptr %from.addr, align 8, !dbg !6063
  %4 = load i64, ptr %n.addr, align 8, !dbg !6064
  %call1 = call i64 @_copy_to_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #20, !dbg !6065
  store i64 %call1, ptr %n.addr, align 8, !dbg !6066
  br label %if.end, !dbg !6067

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !6068
  ret i64 %5, !dbg !6069
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @regmap_calc_reg_len(i32 noundef %max_val) #0 align 16 !dbg !6070 {
entry:
  %max_val.addr = alloca i32, align 4
  store i32 %max_val, ptr %max_val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %max_val.addr, metadata !6074, metadata !DIExpression()), !dbg !6075
  %0 = load i32, ptr %max_val.addr, align 4, !dbg !6076
  %call = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef @.str.16, i32 noundef %0) #20, !dbg !6077
  %conv = sext i32 %call to i64, !dbg !6077
  ret i64 %conv, !dbg !6078
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #5 align 16 !dbg !6079 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6085, metadata !DIExpression()), !dbg !6086
  br label %do.body, !dbg !6087

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6089

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !6087
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !6087
  %1 = load volatile ptr, ptr %next, align 8, !dbg !6087
  store ptr %1, ptr %tmp, align 8, !dbg !6089
  %2 = load ptr, ptr %tmp, align 8, !dbg !6087
  %3 = load ptr, ptr %head.addr, align 8, !dbg !6091
  %cmp = icmp eq ptr %2, %3, !dbg !6092
  %conv = zext i1 %cmp to i32, !dbg !6092
  ret i32 %conv, !dbg !6093
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @regmap_printable(ptr noundef %map, i32 noundef %reg) #0 align 16 !dbg !6094 {
entry:
  %retval = alloca i1, align 1
  %map.addr = alloca ptr, align 8
  %reg.addr = alloca i32, align 4
  store ptr %map, ptr %map.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !6096, metadata !DIExpression()), !dbg !6098
  store i32 %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !6097, metadata !DIExpression()), !dbg !6099
  %0 = load ptr, ptr %map.addr, align 8, !dbg !6100
  %1 = load i32, ptr %reg.addr, align 4, !dbg !6102
  %call = call zeroext i1 @regmap_precious(ptr noundef %0, i32 noundef %1) #20, !dbg !6103
  br i1 %call, label %if.then, label %if.end, !dbg !6104

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !6105
  br label %return, !dbg !6105

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %map.addr, align 8, !dbg !6106
  %3 = load i32, ptr %reg.addr, align 4, !dbg !6108
  %call1 = call zeroext i1 @regmap_readable(ptr noundef %2, i32 noundef %3) #20, !dbg !6109
  br i1 %call1, label %if.end4, label %land.lhs.true, !dbg !6110

land.lhs.true:                                    ; preds = %if.end
  %4 = load ptr, ptr %map.addr, align 8, !dbg !6111
  %5 = load i32, ptr %reg.addr, align 4, !dbg !6112
  %call2 = call zeroext i1 @regmap_cached(ptr noundef %4, i32 noundef %5) #20, !dbg !6113
  br i1 %call2, label %if.end4, label %if.then3, !dbg !6114

if.then3:                                         ; preds = %land.lhs.true
  store i1 false, ptr %retval, align 1, !dbg !6115
  br label %return, !dbg !6115

if.end4:                                          ; preds = %land.lhs.true, %if.end
  store i1 true, ptr %retval, align 1, !dbg !6116
  br label %return, !dbg !6116

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %6 = load i1, ptr %retval, align 1, !dbg !6117
  ret i1 %6, !dbg !6117
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #5 align 16 !dbg !6118 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6120, metadata !DIExpression()), !dbg !6122
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6121, metadata !DIExpression()), !dbg !6123
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6124
  %1 = load ptr, ptr %head.addr, align 8, !dbg !6125
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6126
  %2 = load ptr, ptr %prev, align 8, !dbg !6126
  %3 = load ptr, ptr %head.addr, align 8, !dbg !6127
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #20, !dbg !6128
  ret void, !dbg !6129
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6130 dso_local zeroext i1 @regmap_precious(ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6131 dso_local zeroext i1 @regmap_cached(ptr noundef, i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_copy_size(ptr noundef %addr, i64 noundef %bytes, i1 noundef zeroext %is_source) #9 align 16 !dbg !6132 {
entry:
  %retval = alloca i1, align 1
  %addr.addr = alloca ptr, align 8
  %bytes.addr = alloca i64, align 8
  %is_source.addr = alloca i8, align 1
  %sz = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6136, metadata !DIExpression()), !dbg !6146
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !6137, metadata !DIExpression()), !dbg !6147
  %frombool = zext i1 %is_source to i8
  store i8 %frombool, ptr %is_source.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_source.addr, metadata !6138, metadata !DIExpression()), !dbg !6148
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #18, !dbg !6149
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !6139, metadata !DIExpression()), !dbg !6150
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6151
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false), !dbg !6152
  %conv = trunc i64 %1 to i32, !dbg !6152
  store i32 %conv, ptr %sz, align 4, !dbg !6150
  %2 = load i32, ptr %sz, align 4, !dbg !6153
  %cmp = icmp sge i32 %2, 0, !dbg !6153
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !6153

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %sz, align 4, !dbg !6153
  %conv2 = sext i32 %3 to i64, !dbg !6153
  %4 = load i64, ptr %bytes.addr, align 8, !dbg !6153
  %cmp3 = icmp ult i64 %conv2, %4, !dbg !6153
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !dbg !6155
  %lnot = xor i1 %5, true, !dbg !6153
  %lnot5 = xor i1 %lnot, true, !dbg !6153
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !6153
  %conv6 = sext i32 %lnot.ext to i64, !dbg !6153
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !6153
  %tobool = icmp ne i64 %expval, 0, !dbg !6153
  br i1 %tobool, label %if.then, label %if.end12, !dbg !6156

if.then:                                          ; preds = %land.end
  %6 = load i64, ptr %bytes.addr, align 8, !dbg !6157
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !6160
  br i1 %7, label %if.else, label %if.then7, !dbg !6161

if.then7:                                         ; preds = %if.then
  %8 = load i32, ptr %sz, align 4, !dbg !6162
  %9 = load i64, ptr %bytes.addr, align 8, !dbg !6163
  call void @copy_overflow(i32 noundef %8, i64 noundef %9) #20, !dbg !6164
  br label %if.end11, !dbg !6164

if.else:                                          ; preds = %if.then
  %10 = load i8, ptr %is_source.addr, align 1, !dbg !6165, !range !4836, !noundef !266
  %tobool8 = trunc i8 %10 to i1, !dbg !6165
  br i1 %tobool8, label %if.then9, label %if.else10, !dbg !6167

if.then9:                                         ; preds = %if.else
  call void @__bad_copy_from() #20, !dbg !6168, !srcloc !6169
  br label %if.end, !dbg !6168

if.else10:                                        ; preds = %if.else
  call void @__bad_copy_to() #20, !dbg !6170, !srcloc !6171
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then7
  store i1 false, ptr %retval, align 1, !dbg !6172
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6172

if.end12:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #18, !dbg !6173
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6140, metadata !DIExpression()), !dbg !6173
  %11 = load i64, ptr %bytes.addr, align 8, !dbg !6173
  %cmp13 = icmp ugt i64 %11, 2147483647, !dbg !6173
  %lnot15 = xor i1 %cmp13, true, !dbg !6173
  %lnot17 = xor i1 %lnot15, true, !dbg !6173
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !6173
  store i32 %lnot.ext18, ptr %__ret_warn_on, align 4, !dbg !6173
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !6174
  %tobool19 = icmp ne i32 %12, 0, !dbg !6174
  %lnot20 = xor i1 %tobool19, true, !dbg !6174
  %lnot22 = xor i1 %lnot20, true, !dbg !6174
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !6174
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !6174
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !6174
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !6174
  br i1 %tobool26, label %if.then27, label %if.end37, !dbg !6173

if.then27:                                        ; preds = %if.end12
  br label %do.body, !dbg !6174

do.body:                                          ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #18, !dbg !6175
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6143, metadata !DIExpression()), !dbg !6175
  store i32 2307, ptr %__flags, align 4, !dbg !6175
  br label %do.body28, !dbg !6175

do.body28:                                        ; preds = %do.body
  br label %do.cond, !dbg !6176

do.cond:                                          ; preds = %do.body28
  br label %do.end, !dbg !6176

do.end:                                           ; preds = %do.cond
  br label %do.body29, !dbg !6175

do.body29:                                        ; preds = %do.end
  %13 = load i32, ptr %__flags, align 4, !dbg !6178
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.18, i32 249, i32 %13, i64 12) #18, !dbg !6178, !srcloc !6180
  br label %do.cond30, !dbg !6178

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !6178

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !6175

do.body32:                                        ; preds = %do.end31
  br label %do.cond33, !dbg !6181

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !6181

do.end34:                                         ; preds = %do.cond33
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #18, !dbg !6174
  br label %do.cond35, !dbg !6175

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !6175

do.end36:                                         ; preds = %do.cond35
  br label %if.end37, !dbg !6175

if.end37:                                         ; preds = %do.end36, %if.end12
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !6173
  %tobool38 = icmp ne i32 %14, 0, !dbg !6173
  %lnot39 = xor i1 %tobool38, true, !dbg !6173
  %lnot41 = xor i1 %lnot39, true, !dbg !6173
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !6173
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !6173
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !6173
  store i64 %expval44, ptr %tmp, align 8, !dbg !6174
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #18, !dbg !6183
  %15 = load i64, ptr %tmp, align 8, !dbg !6173
  %tobool45 = icmp ne i64 %15, 0, !dbg !6183
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !6184

if.then46:                                        ; preds = %if.end37
  store i1 false, ptr %retval, align 1, !dbg !6185
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6185

if.end47:                                         ; preds = %if.end37
  %16 = load ptr, ptr %addr.addr, align 8, !dbg !6186
  %17 = load i64, ptr %bytes.addr, align 8, !dbg !6187
  %18 = load i8, ptr %is_source.addr, align 1, !dbg !6188, !range !4836, !noundef !266
  %tobool48 = trunc i8 %18 to i1, !dbg !6188
  call void @check_object_size(ptr noundef %16, i64 noundef %17, i1 noundef zeroext %tobool48) #20, !dbg !6189
  store i1 true, ptr %retval, align 1, !dbg !6190
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6190

cleanup:                                          ; preds = %if.end47, %if.then46, %if.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #18, !dbg !6191
  %19 = load i1, ptr %retval, align 1, !dbg !6191
  ret i1 %19, !dbg !6191
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6192 dso_local i64 @_copy_to_user(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @copy_overflow(i32 noundef %size, i64 noundef %count) #5 align 16 !dbg !6193 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6197, metadata !DIExpression()), !dbg !6199
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6198, metadata !DIExpression()), !dbg !6200
  %0 = load i32, ptr %size.addr, align 4, !dbg !6201
  %1 = load i64, ptr %count.addr, align 8, !dbg !6203
  call void @__copy_overflow(i32 noundef %0, i64 noundef %1) #20, !dbg !6204
  ret void, !dbg !6205
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6206 dso_local void @__bad_copy_from() #14

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6207 dso_local void @__bad_copy_to() #15

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_object_size(ptr noundef %ptr, i64 noundef %n, i1 noundef zeroext %to_user) #5 align 16 !dbg !6208 {
entry:
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6212, metadata !DIExpression()), !dbg !6215
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6213, metadata !DIExpression()), !dbg !6216
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, ptr %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %to_user.addr, metadata !6214, metadata !DIExpression()), !dbg !6217
  ret void, !dbg !6218
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6219 dso_local void @__copy_overflow(i32 noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @regmap_map_read_file(ptr noundef %file, ptr noundef %user_buf, i64 noundef %count, ptr noundef %ppos) #0 align 16 !dbg !6220 {
entry:
  %file.addr = alloca ptr, align 8
  %user_buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %ppos.addr = alloca ptr, align 8
  %map = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6222, metadata !DIExpression()), !dbg !6227
  store ptr %user_buf, ptr %user_buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %user_buf.addr, metadata !6223, metadata !DIExpression()), !dbg !6228
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6224, metadata !DIExpression()), !dbg !6229
  store ptr %ppos, ptr %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ppos.addr, metadata !6225, metadata !DIExpression()), !dbg !6230
  call void @llvm.lifetime.start.p0(i64 8, ptr %map) #18, !dbg !6231
  call void @llvm.dbg.declare(metadata ptr %map, metadata !6226, metadata !DIExpression()), !dbg !6232
  %0 = load ptr, ptr %file.addr, align 8, !dbg !6233
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !6234
  %1 = load ptr, ptr %private_data, align 8, !dbg !6234
  store ptr %1, ptr %map, align 8, !dbg !6232
  %2 = load ptr, ptr %map, align 8, !dbg !6235
  %3 = load ptr, ptr %map, align 8, !dbg !6236
  %max_register = getelementptr inbounds %struct.regmap, ptr %3, i32 0, i32 27, !dbg !6237
  %4 = load i32, ptr %max_register, align 8, !dbg !6237
  %5 = load ptr, ptr %user_buf.addr, align 8, !dbg !6238
  %6 = load i64, ptr %count.addr, align 8, !dbg !6239
  %7 = load ptr, ptr %ppos.addr, align 8, !dbg !6240
  %call = call i64 @regmap_read_debugfs(ptr noundef %2, i32 noundef 0, i32 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7) #20, !dbg !6241
  call void @llvm.lifetime.end.p0(i64 8, ptr %map) #18, !dbg !6242
  ret i64 %call, !dbg !6243
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @regmap_read_debugfs(ptr noundef %map, i32 noundef %from, i32 noundef %to, ptr noundef %user_buf, i64 noundef %count, ptr noundef %ppos) #0 align 16 !dbg !6244 {
entry:
  %retval = alloca i64, align 8
  %map.addr = alloca ptr, align 8
  %from.addr = alloca i32, align 4
  %to.addr = alloca i32, align 4
  %user_buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %ppos.addr = alloca ptr, align 8
  %buf_pos = alloca i64, align 8
  %p = alloca i64, align 8
  %ret = alloca i64, align 8
  %i = alloca i32, align 4
  %buf = alloca ptr, align 8
  %val = alloca i32, align 4
  %start_reg = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %map, ptr %map.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !6248, metadata !DIExpression()), !dbg !6262
  store i32 %from, ptr %from.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6249, metadata !DIExpression()), !dbg !6263
  store i32 %to, ptr %to.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6250, metadata !DIExpression()), !dbg !6264
  store ptr %user_buf, ptr %user_buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %user_buf.addr, metadata !6251, metadata !DIExpression()), !dbg !6265
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6252, metadata !DIExpression()), !dbg !6266
  store ptr %ppos, ptr %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ppos.addr, metadata !6253, metadata !DIExpression()), !dbg !6267
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf_pos) #18, !dbg !6268
  call void @llvm.dbg.declare(metadata ptr %buf_pos, metadata !6254, metadata !DIExpression()), !dbg !6269
  store i64 0, ptr %buf_pos, align 8, !dbg !6269
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #18, !dbg !6270
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6255, metadata !DIExpression()), !dbg !6271
  %0 = load ptr, ptr %ppos.addr, align 8, !dbg !6272
  %1 = load i64, ptr %0, align 8, !dbg !6273
  store i64 %1, ptr %p, align 8, !dbg !6271
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #18, !dbg !6274
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6256, metadata !DIExpression()), !dbg !6275
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #18, !dbg !6276
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6257, metadata !DIExpression()), !dbg !6277
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #18, !dbg !6278
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !6258, metadata !DIExpression()), !dbg !6279
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #18, !dbg !6280
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6259, metadata !DIExpression()), !dbg !6281
  call void @llvm.lifetime.start.p0(i64 4, ptr %start_reg) #18, !dbg !6280
  call void @llvm.dbg.declare(metadata ptr %start_reg, metadata !6260, metadata !DIExpression()), !dbg !6282
  %2 = load ptr, ptr %ppos.addr, align 8, !dbg !6283
  %3 = load i64, ptr %2, align 8, !dbg !6285
  %cmp = icmp slt i64 %3, 0, !dbg !6286
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !6287

lor.lhs.false:                                    ; preds = %entry
  %4 = load i64, ptr %count.addr, align 8, !dbg !6288
  %tobool = icmp ne i64 %4, 0, !dbg !6288
  br i1 %tobool, label %if.end, label %if.then, !dbg !6289

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i64 -22, ptr %retval, align 8, !dbg !6290
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6290

if.end:                                           ; preds = %lor.lhs.false
  %5 = load i64, ptr %count.addr, align 8, !dbg !6291
  %cmp1 = icmp ugt i64 %5, 4194304, !dbg !6293
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !6294

if.then2:                                         ; preds = %if.end
  store i64 4194304, ptr %count.addr, align 8, !dbg !6295
  br label %if.end3, !dbg !6296

if.end3:                                          ; preds = %if.then2, %if.end
  %6 = load i64, ptr %count.addr, align 8, !dbg !6297
  %call = call noalias ptr @kmalloc(i64 noundef %6, i32 noundef 3264) #19, !dbg !6298
  store ptr %call, ptr %buf, align 8, !dbg !6299
  %7 = load ptr, ptr %buf, align 8, !dbg !6300
  %tobool4 = icmp ne ptr %7, null, !dbg !6300
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !6302

if.then5:                                         ; preds = %if.end3
  store i64 -12, ptr %retval, align 8, !dbg !6303
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6303

if.end6:                                          ; preds = %if.end3
  %8 = load ptr, ptr %map.addr, align 8, !dbg !6304
  %9 = load ptr, ptr %buf, align 8, !dbg !6305
  %10 = load i64, ptr %count.addr, align 8, !dbg !6306
  call void @regmap_calc_tot_len(ptr noundef %8, ptr noundef %9, i64 noundef %10) #20, !dbg !6307
  %11 = load ptr, ptr %map.addr, align 8, !dbg !6308
  %12 = load i32, ptr %from.addr, align 4, !dbg !6309
  %13 = load ptr, ptr %ppos.addr, align 8, !dbg !6310
  %14 = load i64, ptr %13, align 8, !dbg !6311
  %call7 = call i32 @regmap_debugfs_get_dump_start(ptr noundef %11, i32 noundef %12, i64 noundef %14, ptr noundef %p) #20, !dbg !6312
  store i32 %call7, ptr %start_reg, align 4, !dbg !6313
  %15 = load i32, ptr %start_reg, align 4, !dbg !6314
  store i32 %15, ptr %i, align 4, !dbg !6316
  br label %for.cond, !dbg !6317

for.cond:                                         ; preds = %for.inc, %if.end6
  %16 = load i32, ptr %i, align 4, !dbg !6318
  %cmp8 = icmp sge i32 %16, 0, !dbg !6320
  br i1 %cmp8, label %land.rhs, label %land.end, !dbg !6321

land.rhs:                                         ; preds = %for.cond
  %17 = load i32, ptr %i, align 4, !dbg !6322
  %18 = load i32, ptr %to.addr, align 4, !dbg !6323
  %cmp9 = icmp ule i32 %17, %18, !dbg !6324
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %19 = phi i1 [ false, %for.cond ], [ %cmp9, %land.rhs ], !dbg !6325
  br i1 %19, label %for.body, label %for.end, !dbg !6326

for.body:                                         ; preds = %land.end
  %20 = load i64, ptr %p, align 8, !dbg !6327
  %21 = load ptr, ptr %ppos.addr, align 8, !dbg !6330
  %22 = load i64, ptr %21, align 8, !dbg !6331
  %cmp10 = icmp sge i64 %20, %22, !dbg !6332
  br i1 %cmp10, label %if.then11, label %if.end35, !dbg !6333

if.then11:                                        ; preds = %for.body
  %23 = load i64, ptr %buf_pos, align 8, !dbg !6334
  %24 = load ptr, ptr %map.addr, align 8, !dbg !6337
  %debugfs_tot_len = getelementptr inbounds %struct.regmap, ptr %24, i32 0, i32 24, !dbg !6338
  %25 = load i32, ptr %debugfs_tot_len, align 8, !dbg !6338
  %conv = zext i32 %25 to i64, !dbg !6337
  %add = add i64 %23, %conv, !dbg !6339
  %26 = load i64, ptr %count.addr, align 8, !dbg !6340
  %cmp12 = icmp ugt i64 %add, %26, !dbg !6341
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !6342

if.then14:                                        ; preds = %if.then11
  br label %for.end, !dbg !6343

if.end15:                                         ; preds = %if.then11
  %27 = load ptr, ptr %buf, align 8, !dbg !6344
  %28 = load i64, ptr %buf_pos, align 8, !dbg !6345
  %add.ptr = getelementptr i8, ptr %27, i64 %28, !dbg !6346
  %29 = load i64, ptr %count.addr, align 8, !dbg !6347
  %30 = load i64, ptr %buf_pos, align 8, !dbg !6348
  %sub = sub i64 %29, %30, !dbg !6349
  %31 = load ptr, ptr %map.addr, align 8, !dbg !6350
  %debugfs_reg_len = getelementptr inbounds %struct.regmap, ptr %31, i32 0, i32 22, !dbg !6351
  %32 = load i32, ptr %debugfs_reg_len, align 8, !dbg !6351
  %33 = load i32, ptr %i, align 4, !dbg !6352
  %34 = load i32, ptr %from.addr, align 4, !dbg !6353
  %sub16 = sub i32 %33, %34, !dbg !6354
  %call17 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr, i64 noundef %sub, ptr noundef @.str.19, i32 noundef %32, i32 noundef %sub16) #20, !dbg !6355
  %35 = load ptr, ptr %map.addr, align 8, !dbg !6356
  %debugfs_reg_len18 = getelementptr inbounds %struct.regmap, ptr %35, i32 0, i32 22, !dbg !6357
  %36 = load i32, ptr %debugfs_reg_len18, align 8, !dbg !6357
  %add19 = add i32 %36, 2, !dbg !6358
  %conv20 = zext i32 %add19 to i64, !dbg !6356
  %37 = load i64, ptr %buf_pos, align 8, !dbg !6359
  %add21 = add i64 %37, %conv20, !dbg !6359
  store i64 %add21, ptr %buf_pos, align 8, !dbg !6359
  %38 = load ptr, ptr %map.addr, align 8, !dbg !6360
  %39 = load i32, ptr %i, align 4, !dbg !6361
  %call22 = call i32 @regmap_read(ptr noundef %38, i32 noundef %39, ptr noundef %val) #20, !dbg !6362
  %conv23 = sext i32 %call22 to i64, !dbg !6362
  store i64 %conv23, ptr %ret, align 8, !dbg !6363
  %40 = load i64, ptr %ret, align 8, !dbg !6364
  %cmp24 = icmp eq i64 %40, 0, !dbg !6366
  br i1 %cmp24, label %if.then26, label %if.else, !dbg !6367

if.then26:                                        ; preds = %if.end15
  %41 = load ptr, ptr %buf, align 8, !dbg !6368
  %42 = load i64, ptr %buf_pos, align 8, !dbg !6369
  %add.ptr27 = getelementptr i8, ptr %41, i64 %42, !dbg !6370
  %43 = load i64, ptr %count.addr, align 8, !dbg !6371
  %44 = load i64, ptr %buf_pos, align 8, !dbg !6372
  %sub28 = sub i64 %43, %44, !dbg !6373
  %45 = load ptr, ptr %map.addr, align 8, !dbg !6374
  %debugfs_val_len = getelementptr inbounds %struct.regmap, ptr %45, i32 0, i32 23, !dbg !6375
  %46 = load i32, ptr %debugfs_val_len, align 4, !dbg !6375
  %47 = load i32, ptr %val, align 4, !dbg !6376
  %call29 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr27, i64 noundef %sub28, ptr noundef @.str.20, i32 noundef %46, i32 noundef %47) #20, !dbg !6377
  br label %if.end33, !dbg !6377

if.else:                                          ; preds = %if.end15
  %48 = load ptr, ptr %buf, align 8, !dbg !6378
  %49 = load i64, ptr %buf_pos, align 8, !dbg !6379
  %add.ptr30 = getelementptr i8, ptr %48, i64 %49, !dbg !6380
  %50 = load ptr, ptr %map.addr, align 8, !dbg !6381
  %debugfs_val_len31 = getelementptr inbounds %struct.regmap, ptr %50, i32 0, i32 23, !dbg !6382
  %51 = load i32, ptr %debugfs_val_len31, align 4, !dbg !6382
  %conv32 = zext i32 %51 to i64, !dbg !6381
  call void @llvm.memset.p0.i64(ptr align 1 %add.ptr30, i8 88, i64 %conv32, i1 false), !dbg !6383
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then26
  %52 = load ptr, ptr %map.addr, align 8, !dbg !6384
  %format = getelementptr inbounds %struct.regmap, ptr %52, i32 0, i32 9, !dbg !6385
  %val_bytes = getelementptr inbounds %struct.regmap_format, ptr %format, i32 0, i32 3, !dbg !6386
  %53 = load i64, ptr %val_bytes, align 8, !dbg !6386
  %mul = mul i64 2, %53, !dbg !6387
  %54 = load i64, ptr %buf_pos, align 8, !dbg !6388
  %add34 = add i64 %54, %mul, !dbg !6388
  store i64 %add34, ptr %buf_pos, align 8, !dbg !6388
  %55 = load ptr, ptr %buf, align 8, !dbg !6389
  %56 = load i64, ptr %buf_pos, align 8, !dbg !6390
  %inc = add i64 %56, 1, !dbg !6390
  store i64 %inc, ptr %buf_pos, align 8, !dbg !6390
  %arrayidx = getelementptr i8, ptr %55, i64 %56, !dbg !6389
  store i8 10, ptr %arrayidx, align 1, !dbg !6391
  br label %if.end35, !dbg !6392

if.end35:                                         ; preds = %if.end33, %for.body
  %57 = load ptr, ptr %map.addr, align 8, !dbg !6393
  %debugfs_tot_len36 = getelementptr inbounds %struct.regmap, ptr %57, i32 0, i32 24, !dbg !6394
  %58 = load i32, ptr %debugfs_tot_len36, align 8, !dbg !6394
  %conv37 = zext i32 %58 to i64, !dbg !6393
  %59 = load i64, ptr %p, align 8, !dbg !6395
  %add38 = add i64 %59, %conv37, !dbg !6395
  store i64 %add38, ptr %p, align 8, !dbg !6395
  br label %for.inc, !dbg !6396

for.inc:                                          ; preds = %if.end35
  %60 = load ptr, ptr %map.addr, align 8, !dbg !6397
  %61 = load i32, ptr %i, align 4, !dbg !6398
  %call39 = call i32 @regmap_next_readable_reg(ptr noundef %60, i32 noundef %61) #20, !dbg !6399
  store i32 %call39, ptr %i, align 4, !dbg !6400
  br label %for.cond, !dbg !6401, !llvm.loop !6402

for.end:                                          ; preds = %if.then14, %land.end
  %62 = load i64, ptr %buf_pos, align 8, !dbg !6404
  store i64 %62, ptr %ret, align 8, !dbg !6405
  %63 = load ptr, ptr %user_buf.addr, align 8, !dbg !6406
  %64 = load ptr, ptr %buf, align 8, !dbg !6408
  %65 = load i64, ptr %buf_pos, align 8, !dbg !6409
  %call40 = call i64 @copy_to_user(ptr noundef %63, ptr noundef %64, i64 noundef %65) #20, !dbg !6410
  %tobool41 = icmp ne i64 %call40, 0, !dbg !6410
  br i1 %tobool41, label %if.then42, label %if.end43, !dbg !6411

if.then42:                                        ; preds = %for.end
  store i64 -14, ptr %ret, align 8, !dbg !6412
  br label %out, !dbg !6414

if.end43:                                         ; preds = %for.end
  %66 = load i64, ptr %buf_pos, align 8, !dbg !6415
  %67 = load ptr, ptr %ppos.addr, align 8, !dbg !6416
  %68 = load i64, ptr %67, align 8, !dbg !6417
  %add44 = add i64 %68, %66, !dbg !6417
  store i64 %add44, ptr %67, align 8, !dbg !6417
  br label %out, !dbg !6418

out:                                              ; preds = %if.end43, %if.then42
  call void @llvm.dbg.label(metadata !6261), !dbg !6419
  %69 = load ptr, ptr %buf, align 8, !dbg !6420
  call void @kfree(ptr noundef %69) #20, !dbg !6421
  %70 = load i64, ptr %ret, align 8, !dbg !6422
  store i64 %70, ptr %retval, align 8, !dbg !6423
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6423

cleanup:                                          ; preds = %out, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %start_reg) #18, !dbg !6424
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #18, !dbg !6424
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #18, !dbg !6424
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #18, !dbg !6424
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #18, !dbg !6424
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #18, !dbg !6424
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf_pos) #18, !dbg !6424
  %71 = load i64, ptr %retval, align 8, !dbg !6424
  ret i64 %71, !dbg !6424
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6425 dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @regmap_next_readable_reg(ptr noundef %map, i32 noundef %reg) #0 align 16 !dbg !6426 {
entry:
  %map.addr = alloca ptr, align 8
  %reg.addr = alloca i32, align 4
  %c = alloca ptr, align 8
  %ret = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr10 = alloca ptr, align 8
  %tmp13 = alloca ptr, align 8
  store ptr %map, ptr %map.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !6430, metadata !DIExpression()), !dbg !6442
  store i32 %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !6431, metadata !DIExpression()), !dbg !6443
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #18, !dbg !6444
  call void @llvm.dbg.declare(metadata ptr %c, metadata !6432, metadata !DIExpression()), !dbg !6445
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #18, !dbg !6446
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6433, metadata !DIExpression()), !dbg !6447
  store i32 -22, ptr %ret, align 4, !dbg !6447
  %0 = load ptr, ptr %map.addr, align 8, !dbg !6448
  %1 = load i32, ptr %reg.addr, align 4, !dbg !6449
  %2 = load ptr, ptr %map.addr, align 8, !dbg !6450
  %reg_stride = getelementptr inbounds %struct.regmap, ptr %2, i32 0, i32 49, !dbg !6451
  %3 = load i32, ptr %reg_stride, align 4, !dbg !6451
  %add = add i32 %1, %3, !dbg !6452
  %call = call zeroext i1 @regmap_printable(ptr noundef %0, i32 noundef %add) #20, !dbg !6453
  br i1 %call, label %if.then, label %if.else, !dbg !6454

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %reg.addr, align 4, !dbg !6455
  %5 = load ptr, ptr %map.addr, align 8, !dbg !6457
  %reg_stride1 = getelementptr inbounds %struct.regmap, ptr %5, i32 0, i32 49, !dbg !6458
  %6 = load i32, ptr %reg_stride1, align 4, !dbg !6458
  %add2 = add i32 %4, %6, !dbg !6459
  store i32 %add2, ptr %ret, align 4, !dbg !6460
  br label %if.end16, !dbg !6461

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %map.addr, align 8, !dbg !6462
  %cache_lock = getelementptr inbounds %struct.regmap, ptr %7, i32 0, i32 26, !dbg !6463
  call void @mutex_lock(ptr noundef %cache_lock) #20, !dbg !6464
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !6465
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6434, metadata !DIExpression()), !dbg !6465
  %8 = load ptr, ptr %map.addr, align 8, !dbg !6465
  %debugfs_off_cache = getelementptr inbounds %struct.regmap, ptr %8, i32 0, i32 25, !dbg !6465
  %next = getelementptr inbounds %struct.list_head, ptr %debugfs_off_cache, i32 0, i32 0, !dbg !6465
  %9 = load ptr, ptr %next, align 8, !dbg !6465
  store ptr %9, ptr %__mptr, align 8, !dbg !6465
  %10 = load ptr, ptr %__mptr, align 8, !dbg !6465
  %add.ptr = getelementptr i8, ptr %10, i64 0, !dbg !6465
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6465
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !6466
  %11 = load ptr, ptr %tmp, align 8, !dbg !6465
  store ptr %11, ptr %c, align 8, !dbg !6466
  br label %for.cond, !dbg !6466

for.cond:                                         ; preds = %for.inc, %if.else
  %12 = load ptr, ptr %c, align 8, !dbg !6467
  %list = getelementptr inbounds %struct.regmap_debugfs_off_cache, ptr %12, i32 0, i32 0, !dbg !6467
  %13 = load ptr, ptr %map.addr, align 8, !dbg !6467
  %debugfs_off_cache3 = getelementptr inbounds %struct.regmap, ptr %13, i32 0, i32 25, !dbg !6467
  %cmp = icmp eq ptr %list, %debugfs_off_cache3, !dbg !6467
  %lnot = xor i1 %cmp, true, !dbg !6467
  br i1 %lnot, label %for.body, label %for.end, !dbg !6466

for.body:                                         ; preds = %for.cond
  %14 = load i32, ptr %reg.addr, align 4, !dbg !6468
  %15 = load ptr, ptr %c, align 8, !dbg !6471
  %max_reg = getelementptr inbounds %struct.regmap_debugfs_off_cache, ptr %15, i32 0, i32 4, !dbg !6472
  %16 = load i32, ptr %max_reg, align 4, !dbg !6472
  %cmp4 = icmp ugt i32 %14, %16, !dbg !6473
  br i1 %cmp4, label %if.then5, label %if.end, !dbg !6474

if.then5:                                         ; preds = %for.body
  br label %for.inc, !dbg !6475

if.end:                                           ; preds = %for.body
  %17 = load i32, ptr %reg.addr, align 4, !dbg !6476
  %18 = load ptr, ptr %c, align 8, !dbg !6478
  %base_reg = getelementptr inbounds %struct.regmap_debugfs_off_cache, ptr %18, i32 0, i32 3, !dbg !6479
  %19 = load i32, ptr %base_reg, align 8, !dbg !6479
  %cmp6 = icmp ult i32 %17, %19, !dbg !6480
  br i1 %cmp6, label %if.then7, label %if.end9, !dbg !6481

if.then7:                                         ; preds = %if.end
  %20 = load ptr, ptr %c, align 8, !dbg !6482
  %base_reg8 = getelementptr inbounds %struct.regmap_debugfs_off_cache, ptr %20, i32 0, i32 3, !dbg !6484
  %21 = load i32, ptr %base_reg8, align 8, !dbg !6484
  store i32 %21, ptr %ret, align 4, !dbg !6485
  br label %for.end, !dbg !6486

if.end9:                                          ; preds = %if.end
  br label %for.inc, !dbg !6487

for.inc:                                          ; preds = %if.end9, %if.then5
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr10) #18, !dbg !6488
  call void @llvm.dbg.declare(metadata ptr %__mptr10, metadata !6439, metadata !DIExpression()), !dbg !6488
  %22 = load ptr, ptr %c, align 8, !dbg !6488
  %list11 = getelementptr inbounds %struct.regmap_debugfs_off_cache, ptr %22, i32 0, i32 0, !dbg !6488
  %next12 = getelementptr inbounds %struct.list_head, ptr %list11, i32 0, i32 0, !dbg !6488
  %23 = load ptr, ptr %next12, align 8, !dbg !6488
  store ptr %23, ptr %__mptr10, align 8, !dbg !6488
  %24 = load ptr, ptr %__mptr10, align 8, !dbg !6488
  %add.ptr14 = getelementptr i8, ptr %24, i64 0, !dbg !6488
  store ptr %add.ptr14, ptr %tmp13, align 8, !dbg !6488
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr10) #18, !dbg !6467
  %25 = load ptr, ptr %tmp13, align 8, !dbg !6488
  store ptr %25, ptr %c, align 8, !dbg !6467
  br label %for.cond, !dbg !6467, !llvm.loop !6489

for.end:                                          ; preds = %if.then7, %for.cond
  %26 = load ptr, ptr %map.addr, align 8, !dbg !6491
  %cache_lock15 = getelementptr inbounds %struct.regmap, ptr %26, i32 0, i32 26, !dbg !6492
  call void @mutex_unlock(ptr noundef %cache_lock15) #20, !dbg !6493
  br label %if.end16

if.end16:                                         ; preds = %for.end, %if.then
  %27 = load i32, ptr %ret, align 4, !dbg !6494
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #18, !dbg !6495
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #18, !dbg !6495
  ret i32 %27, !dbg !6496
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @seq_read(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @regmap_access_open(ptr noundef %inode, ptr noundef %file) #0 align 16 !dbg !6497 {
entry:
  %inode.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6499, metadata !DIExpression()), !dbg !6501
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6500, metadata !DIExpression()), !dbg !6501
  %0 = load ptr, ptr %file.addr, align 8, !dbg !6501
  %1 = load ptr, ptr %inode.addr, align 8, !dbg !6501
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 47, !dbg !6501
  %2 = load ptr, ptr %i_private, align 8, !dbg !6501
  %call = call i32 @single_open(ptr noundef %0, ptr noundef @regmap_access_show, ptr noundef %2) #20, !dbg !6501
  ret i32 %call, !dbg !6501
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6502 dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @regmap_access_show(ptr noundef %s, ptr noundef %ignored) #0 align 16 !dbg !6505 {
entry:
  %s.addr = alloca ptr, align 8
  %ignored.addr = alloca ptr, align 8
  %map = alloca ptr, align 8
  %i = alloca i32, align 4
  %reg_len = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !6507, metadata !DIExpression()), !dbg !6512
  store ptr %ignored, ptr %ignored.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ignored.addr, metadata !6508, metadata !DIExpression()), !dbg !6513
  call void @llvm.lifetime.start.p0(i64 8, ptr %map) #18, !dbg !6514
  call void @llvm.dbg.declare(metadata ptr %map, metadata !6509, metadata !DIExpression()), !dbg !6515
  %0 = load ptr, ptr %s.addr, align 8, !dbg !6516
  %private = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11, !dbg !6517
  %1 = load ptr, ptr %private, align 8, !dbg !6517
  store ptr %1, ptr %map, align 8, !dbg !6515
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #18, !dbg !6518
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6510, metadata !DIExpression()), !dbg !6519
  call void @llvm.lifetime.start.p0(i64 4, ptr %reg_len) #18, !dbg !6518
  call void @llvm.dbg.declare(metadata ptr %reg_len, metadata !6511, metadata !DIExpression()), !dbg !6520
  %2 = load ptr, ptr %map, align 8, !dbg !6521
  %max_register = getelementptr inbounds %struct.regmap, ptr %2, i32 0, i32 27, !dbg !6522
  %3 = load i32, ptr %max_register, align 8, !dbg !6522
  %call = call i64 @regmap_calc_reg_len(i32 noundef %3) #20, !dbg !6523
  %conv = trunc i64 %call to i32, !dbg !6523
  store i32 %conv, ptr %reg_len, align 4, !dbg !6524
  store i32 0, ptr %i, align 4, !dbg !6525
  br label %for.cond, !dbg !6527

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %i, align 4, !dbg !6528
  %5 = load ptr, ptr %map, align 8, !dbg !6530
  %max_register1 = getelementptr inbounds %struct.regmap, ptr %5, i32 0, i32 27, !dbg !6531
  %6 = load i32, ptr %max_register1, align 8, !dbg !6531
  %cmp = icmp ule i32 %4, %6, !dbg !6532
  br i1 %cmp, label %for.body, label %for.end, !dbg !6533

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %map, align 8, !dbg !6534
  %8 = load i32, ptr %i, align 4, !dbg !6537
  %call3 = call zeroext i1 @regmap_readable(ptr noundef %7, i32 noundef %8) #20, !dbg !6538
  br i1 %call3, label %if.end, label %land.lhs.true, !dbg !6539

land.lhs.true:                                    ; preds = %for.body
  %9 = load ptr, ptr %map, align 8, !dbg !6540
  %10 = load i32, ptr %i, align 4, !dbg !6541
  %call4 = call zeroext i1 @regmap_writeable(ptr noundef %9, i32 noundef %10) #20, !dbg !6542
  br i1 %call4, label %if.end, label %if.then, !dbg !6543

if.then:                                          ; preds = %land.lhs.true
  br label %for.inc, !dbg !6544

if.end:                                           ; preds = %land.lhs.true, %for.body
  %11 = load ptr, ptr %s.addr, align 8, !dbg !6545
  %12 = load i32, ptr %reg_len, align 4, !dbg !6546
  %13 = load i32, ptr %i, align 4, !dbg !6547
  %14 = load ptr, ptr %map, align 8, !dbg !6548
  %15 = load i32, ptr %i, align 4, !dbg !6549
  %call5 = call zeroext i1 @regmap_readable(ptr noundef %14, i32 noundef %15) #20, !dbg !6550
  %16 = zext i1 %call5 to i64, !dbg !6550
  %cond = select i1 %call5, i32 121, i32 110, !dbg !6550
  %17 = load ptr, ptr %map, align 8, !dbg !6551
  %18 = load i32, ptr %i, align 4, !dbg !6552
  %call7 = call zeroext i1 @regmap_writeable(ptr noundef %17, i32 noundef %18) #20, !dbg !6553
  %19 = zext i1 %call7 to i64, !dbg !6553
  %cond9 = select i1 %call7, i32 121, i32 110, !dbg !6553
  %20 = load ptr, ptr %map, align 8, !dbg !6554
  %21 = load i32, ptr %i, align 4, !dbg !6555
  %call10 = call zeroext i1 @regmap_volatile(ptr noundef %20, i32 noundef %21) #20, !dbg !6556
  %22 = zext i1 %call10 to i64, !dbg !6556
  %cond12 = select i1 %call10, i32 121, i32 110, !dbg !6556
  %23 = load ptr, ptr %map, align 8, !dbg !6557
  %24 = load i32, ptr %i, align 4, !dbg !6558
  %call13 = call zeroext i1 @regmap_precious(ptr noundef %23, i32 noundef %24) #20, !dbg !6559
  %25 = zext i1 %call13 to i64, !dbg !6559
  %cond15 = select i1 %call13, i32 121, i32 110, !dbg !6559
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %11, ptr noundef @.str.21, i32 noundef %12, i32 noundef %13, i32 noundef %cond, i32 noundef %cond9, i32 noundef %cond12, i32 noundef %cond15) #20, !dbg !6560
  br label %for.inc, !dbg !6561

for.inc:                                          ; preds = %if.end, %if.then
  %26 = load ptr, ptr %map, align 8, !dbg !6562
  %reg_stride = getelementptr inbounds %struct.regmap, ptr %26, i32 0, i32 49, !dbg !6563
  %27 = load i32, ptr %reg_stride, align 4, !dbg !6563
  %28 = load i32, ptr %i, align 4, !dbg !6564
  %add = add i32 %28, %27, !dbg !6564
  store i32 %add, ptr %i, align 4, !dbg !6564
  br label %for.cond, !dbg !6565, !llvm.loop !6566

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %reg_len) #18, !dbg !6568
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #18, !dbg !6568
  call void @llvm.lifetime.end.p0(i64 8, ptr %map) #18, !dbg !6568
  ret i32 0, !dbg !6569
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6570 dso_local zeroext i1 @regmap_writeable(ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6571 dso_local void @seq_printf(ptr noundef, ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6574 dso_local zeroext i1 @regmap_volatile(ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @debugfs_read_file_bool(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @regmap_cache_only_write_file(ptr noundef %file, ptr noundef %user_buf, i64 noundef %count, ptr noundef %ppos) #0 align 16 !dbg !6575 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %user_buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %ppos.addr = alloca ptr, align 8
  %map = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %new_val = alloca i8, align 1
  %require_sync = alloca i8, align 1
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6577, metadata !DIExpression()), !dbg !6587
  store ptr %user_buf, ptr %user_buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %user_buf.addr, metadata !6578, metadata !DIExpression()), !dbg !6588
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6579, metadata !DIExpression()), !dbg !6589
  store ptr %ppos, ptr %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ppos.addr, metadata !6580, metadata !DIExpression()), !dbg !6590
  call void @llvm.lifetime.start.p0(i64 8, ptr %map) #18, !dbg !6591
  call void @llvm.dbg.declare(metadata ptr %map, metadata !6581, metadata !DIExpression()), !dbg !6592
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !6593
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6582, metadata !DIExpression()), !dbg !6593
  %0 = load ptr, ptr %file.addr, align 8, !dbg !6593
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !6593
  %1 = load ptr, ptr %private_data, align 8, !dbg !6593
  store ptr %1, ptr %__mptr, align 8, !dbg !6593
  %2 = load ptr, ptr %__mptr, align 8, !dbg !6593
  %add.ptr = getelementptr i8, ptr %2, i64 -556, !dbg !6593
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6593
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !6594
  %3 = load ptr, ptr %tmp, align 8, !dbg !6593
  store ptr %3, ptr %map, align 8, !dbg !6592
  call void @llvm.lifetime.start.p0(i64 1, ptr %new_val) #18, !dbg !6595
  call void @llvm.dbg.declare(metadata ptr %new_val, metadata !6584, metadata !DIExpression()), !dbg !6596
  call void @llvm.lifetime.start.p0(i64 1, ptr %require_sync) #18, !dbg !6595
  call void @llvm.dbg.declare(metadata ptr %require_sync, metadata !6585, metadata !DIExpression()), !dbg !6597
  store i8 0, ptr %require_sync, align 1, !dbg !6597
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #18, !dbg !6598
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6586, metadata !DIExpression()), !dbg !6599
  %4 = load ptr, ptr %user_buf.addr, align 8, !dbg !6600
  %5 = load i64, ptr %count.addr, align 8, !dbg !6601
  %call = call i32 @kstrtobool_from_user(ptr noundef %4, i64 noundef %5, ptr noundef %new_val) #20, !dbg !6602
  store i32 %call, ptr %err, align 4, !dbg !6603
  %6 = load i32, ptr %err, align 4, !dbg !6604
  %tobool = icmp ne i32 %6, 0, !dbg !6604
  br i1 %tobool, label %if.then, label %if.end, !dbg !6606

if.then:                                          ; preds = %entry
  %7 = load i64, ptr %count.addr, align 8, !dbg !6607
  store i64 %7, ptr %retval, align 8, !dbg !6608
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6608

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %file.addr, align 8, !dbg !6609
  %f_path = getelementptr inbounds %struct.file, ptr %8, i32 0, i32 10, !dbg !6610
  %dentry = getelementptr inbounds %struct.path, ptr %f_path, i32 0, i32 1, !dbg !6611
  %9 = load ptr, ptr %dentry, align 8, !dbg !6611
  %call1 = call i32 @debugfs_file_get(ptr noundef %9) #20, !dbg !6612
  store i32 %call1, ptr %err, align 4, !dbg !6613
  %10 = load i32, ptr %err, align 4, !dbg !6614
  %tobool2 = icmp ne i32 %10, 0, !dbg !6614
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !6616

if.then3:                                         ; preds = %if.end
  %11 = load i32, ptr %err, align 4, !dbg !6617
  %conv = sext i32 %11 to i64, !dbg !6617
  store i64 %conv, ptr %retval, align 8, !dbg !6618
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6618

if.end4:                                          ; preds = %if.end
  %12 = load ptr, ptr %map, align 8, !dbg !6619
  %lock = getelementptr inbounds %struct.regmap, ptr %12, i32 0, i32 2, !dbg !6620
  %13 = load ptr, ptr %lock, align 8, !dbg !6620
  %14 = load ptr, ptr %map, align 8, !dbg !6621
  %lock_arg = getelementptr inbounds %struct.regmap, ptr %14, i32 0, i32 4, !dbg !6622
  %15 = load ptr, ptr %lock_arg, align 8, !dbg !6622
  call void %13(ptr noundef %15) #20, !dbg !6619
  %16 = load i8, ptr %new_val, align 1, !dbg !6623, !range !4836, !noundef !266
  %tobool5 = trunc i8 %16 to i1, !dbg !6623
  br i1 %tobool5, label %land.lhs.true, label %if.else, !dbg !6625

land.lhs.true:                                    ; preds = %if.end4
  %17 = load ptr, ptr %map, align 8, !dbg !6626
  %cache_only = getelementptr inbounds %struct.regmap, ptr %17, i32 0, i32 58, !dbg !6627
  %18 = load i8, ptr %cache_only, align 4, !dbg !6627, !range !4836, !noundef !266
  %tobool7 = trunc i8 %18 to i1, !dbg !6627
  br i1 %tobool7, label %if.else, label %if.then8, !dbg !6628

if.then8:                                         ; preds = %land.lhs.true
  br label %do.body, !dbg !6629

do.body:                                          ; preds = %if.then8
  br label %do.cond, !dbg !6632

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6632

do.end:                                           ; preds = %do.cond
  %19 = load ptr, ptr %map, align 8, !dbg !6629
  %dev = getelementptr inbounds %struct.regmap, ptr %19, i32 0, i32 7, !dbg !6629
  %20 = load ptr, ptr %dev, align 8, !dbg !6629
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef @.str.22) #23, !dbg !6629
  call void @add_taint(i32 noundef 6, i32 noundef 0) #20, !dbg !6634
  br label %if.end20, !dbg !6635

if.else:                                          ; preds = %land.lhs.true, %if.end4
  %21 = load i8, ptr %new_val, align 1, !dbg !6636, !range !4836, !noundef !266
  %tobool9 = trunc i8 %21 to i1, !dbg !6636
  br i1 %tobool9, label %if.end19, label %land.lhs.true10, !dbg !6638

land.lhs.true10:                                  ; preds = %if.else
  %22 = load ptr, ptr %map, align 8, !dbg !6639
  %cache_only11 = getelementptr inbounds %struct.regmap, ptr %22, i32 0, i32 58, !dbg !6640
  %23 = load i8, ptr %cache_only11, align 4, !dbg !6640, !range !4836, !noundef !266
  %tobool12 = trunc i8 %23 to i1, !dbg !6640
  br i1 %tobool12, label %if.then14, label %if.end19, !dbg !6641

if.then14:                                        ; preds = %land.lhs.true10
  br label %do.body15, !dbg !6642

do.body15:                                        ; preds = %if.then14
  br label %do.cond16, !dbg !6645

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !6645

do.end17:                                         ; preds = %do.cond16
  %24 = load ptr, ptr %map, align 8, !dbg !6642
  %dev18 = getelementptr inbounds %struct.regmap, ptr %24, i32 0, i32 7, !dbg !6642
  %25 = load ptr, ptr %dev18, align 8, !dbg !6642
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef @.str.23) #23, !dbg !6642
  store i8 1, ptr %require_sync, align 1, !dbg !6647
  br label %if.end19, !dbg !6648

if.end19:                                         ; preds = %do.end17, %land.lhs.true10, %if.else
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %do.end
  %26 = load i8, ptr %new_val, align 1, !dbg !6649, !range !4836, !noundef !266
  %tobool21 = trunc i8 %26 to i1, !dbg !6649
  %27 = load ptr, ptr %map, align 8, !dbg !6650
  %cache_only22 = getelementptr inbounds %struct.regmap, ptr %27, i32 0, i32 58, !dbg !6651
  %frombool = zext i1 %tobool21 to i8, !dbg !6652
  store i8 %frombool, ptr %cache_only22, align 4, !dbg !6652
  %28 = load ptr, ptr %map, align 8, !dbg !6653
  %unlock = getelementptr inbounds %struct.regmap, ptr %28, i32 0, i32 3, !dbg !6654
  %29 = load ptr, ptr %unlock, align 8, !dbg !6654
  %30 = load ptr, ptr %map, align 8, !dbg !6655
  %lock_arg23 = getelementptr inbounds %struct.regmap, ptr %30, i32 0, i32 4, !dbg !6656
  %31 = load ptr, ptr %lock_arg23, align 8, !dbg !6656
  call void %29(ptr noundef %31) #20, !dbg !6653
  %32 = load ptr, ptr %file.addr, align 8, !dbg !6657
  %f_path24 = getelementptr inbounds %struct.file, ptr %32, i32 0, i32 10, !dbg !6658
  %dentry25 = getelementptr inbounds %struct.path, ptr %f_path24, i32 0, i32 1, !dbg !6659
  %33 = load ptr, ptr %dentry25, align 8, !dbg !6659
  call void @debugfs_file_put(ptr noundef %33) #20, !dbg !6660
  %34 = load i8, ptr %require_sync, align 1, !dbg !6661, !range !4836, !noundef !266
  %tobool26 = trunc i8 %34 to i1, !dbg !6661
  br i1 %tobool26, label %if.then27, label %if.end36, !dbg !6663

if.then27:                                        ; preds = %if.end20
  %35 = load ptr, ptr %map, align 8, !dbg !6664
  %call28 = call i32 @regcache_sync(ptr noundef %35) #20, !dbg !6666
  store i32 %call28, ptr %err, align 4, !dbg !6667
  %36 = load i32, ptr %err, align 4, !dbg !6668
  %tobool29 = icmp ne i32 %36, 0, !dbg !6668
  br i1 %tobool29, label %if.then30, label %if.end35, !dbg !6670

if.then30:                                        ; preds = %if.then27
  br label %do.body31, !dbg !6671

do.body31:                                        ; preds = %if.then30
  br label %do.cond32, !dbg !6673

do.cond32:                                        ; preds = %do.body31
  br label %do.end33, !dbg !6673

do.end33:                                         ; preds = %do.cond32
  %37 = load ptr, ptr %map, align 8, !dbg !6671
  %dev34 = getelementptr inbounds %struct.regmap, ptr %37, i32 0, i32 7, !dbg !6671
  %38 = load ptr, ptr %dev34, align 8, !dbg !6671
  %39 = load i32, ptr %err, align 4, !dbg !6671
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef @.str.24, i32 noundef %39) #23, !dbg !6671
  br label %if.end35, !dbg !6675

if.end35:                                         ; preds = %do.end33, %if.then27
  br label %if.end36, !dbg !6676

if.end36:                                         ; preds = %if.end35, %if.end20
  %40 = load i64, ptr %count.addr, align 8, !dbg !6677
  store i64 %40, ptr %retval, align 8, !dbg !6678
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6678

cleanup:                                          ; preds = %if.end36, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #18, !dbg !6679
  call void @llvm.lifetime.end.p0(i64 1, ptr %require_sync) #18, !dbg !6679
  call void @llvm.lifetime.end.p0(i64 1, ptr %new_val) #18, !dbg !6679
  call void @llvm.lifetime.end.p0(i64 8, ptr %map) #18, !dbg !6679
  %41 = load i64, ptr %retval, align 8, !dbg !6679
  ret i64 %41, !dbg !6679
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6680 dso_local i32 @kstrtobool_from_user(ptr noundef, i64 noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6684 dso_local i32 @debugfs_file_get(ptr noundef) #4

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6685 dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) #17

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6689 dso_local void @add_taint(i32 noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6692 dso_local void @debugfs_file_put(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6693 dso_local i32 @regcache_sync(ptr noundef) #4

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6694 dso_local void @_dev_err(ptr noundef, ptr noundef, ...) #17

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @regmap_cache_bypass_write_file(ptr noundef %file, ptr noundef %user_buf, i64 noundef %count, ptr noundef %ppos) #0 align 16 !dbg !6695 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %user_buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %ppos.addr = alloca ptr, align 8
  %map = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %new_val = alloca i8, align 1
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6697, metadata !DIExpression()), !dbg !6706
  store ptr %user_buf, ptr %user_buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %user_buf.addr, metadata !6698, metadata !DIExpression()), !dbg !6707
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6699, metadata !DIExpression()), !dbg !6708
  store ptr %ppos, ptr %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ppos.addr, metadata !6700, metadata !DIExpression()), !dbg !6709
  call void @llvm.lifetime.start.p0(i64 8, ptr %map) #18, !dbg !6710
  call void @llvm.dbg.declare(metadata ptr %map, metadata !6701, metadata !DIExpression()), !dbg !6711
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !6712
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6702, metadata !DIExpression()), !dbg !6712
  %0 = load ptr, ptr %file.addr, align 8, !dbg !6712
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !6712
  %1 = load ptr, ptr %private_data, align 8, !dbg !6712
  store ptr %1, ptr %__mptr, align 8, !dbg !6712
  %2 = load ptr, ptr %__mptr, align 8, !dbg !6712
  %add.ptr = getelementptr i8, ptr %2, i64 -557, !dbg !6712
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6712
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !6713
  %3 = load ptr, ptr %tmp, align 8, !dbg !6712
  store ptr %3, ptr %map, align 8, !dbg !6711
  call void @llvm.lifetime.start.p0(i64 1, ptr %new_val) #18, !dbg !6714
  call void @llvm.dbg.declare(metadata ptr %new_val, metadata !6704, metadata !DIExpression()), !dbg !6715
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #18, !dbg !6716
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6705, metadata !DIExpression()), !dbg !6717
  %4 = load ptr, ptr %user_buf.addr, align 8, !dbg !6718
  %5 = load i64, ptr %count.addr, align 8, !dbg !6719
  %call = call i32 @kstrtobool_from_user(ptr noundef %4, i64 noundef %5, ptr noundef %new_val) #20, !dbg !6720
  store i32 %call, ptr %err, align 4, !dbg !6721
  %6 = load i32, ptr %err, align 4, !dbg !6722
  %tobool = icmp ne i32 %6, 0, !dbg !6722
  br i1 %tobool, label %if.then, label %if.end, !dbg !6724

if.then:                                          ; preds = %entry
  %7 = load i64, ptr %count.addr, align 8, !dbg !6725
  store i64 %7, ptr %retval, align 8, !dbg !6726
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6726

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %file.addr, align 8, !dbg !6727
  %f_path = getelementptr inbounds %struct.file, ptr %8, i32 0, i32 10, !dbg !6728
  %dentry = getelementptr inbounds %struct.path, ptr %f_path, i32 0, i32 1, !dbg !6729
  %9 = load ptr, ptr %dentry, align 8, !dbg !6729
  %call1 = call i32 @debugfs_file_get(ptr noundef %9) #20, !dbg !6730
  store i32 %call1, ptr %err, align 4, !dbg !6731
  %10 = load i32, ptr %err, align 4, !dbg !6732
  %tobool2 = icmp ne i32 %10, 0, !dbg !6732
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !6734

if.then3:                                         ; preds = %if.end
  %11 = load i32, ptr %err, align 4, !dbg !6735
  %conv = sext i32 %11 to i64, !dbg !6735
  store i64 %conv, ptr %retval, align 8, !dbg !6736
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6736

if.end4:                                          ; preds = %if.end
  %12 = load ptr, ptr %map, align 8, !dbg !6737
  %lock = getelementptr inbounds %struct.regmap, ptr %12, i32 0, i32 2, !dbg !6738
  %13 = load ptr, ptr %lock, align 8, !dbg !6738
  %14 = load ptr, ptr %map, align 8, !dbg !6739
  %lock_arg = getelementptr inbounds %struct.regmap, ptr %14, i32 0, i32 4, !dbg !6740
  %15 = load ptr, ptr %lock_arg, align 8, !dbg !6740
  call void %13(ptr noundef %15) #20, !dbg !6737
  %16 = load i8, ptr %new_val, align 1, !dbg !6741, !range !4836, !noundef !266
  %tobool5 = trunc i8 %16 to i1, !dbg !6741
  br i1 %tobool5, label %land.lhs.true, label %if.else, !dbg !6743

land.lhs.true:                                    ; preds = %if.end4
  %17 = load ptr, ptr %map, align 8, !dbg !6744
  %cache_bypass = getelementptr inbounds %struct.regmap, ptr %17, i32 0, i32 59, !dbg !6745
  %18 = load i8, ptr %cache_bypass, align 1, !dbg !6745, !range !4836, !noundef !266
  %tobool7 = trunc i8 %18 to i1, !dbg !6745
  br i1 %tobool7, label %if.else, label %if.then8, !dbg !6746

if.then8:                                         ; preds = %land.lhs.true
  br label %do.body, !dbg !6747

do.body:                                          ; preds = %if.then8
  br label %do.cond, !dbg !6750

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6750

do.end:                                           ; preds = %do.cond
  %19 = load ptr, ptr %map, align 8, !dbg !6747
  %dev = getelementptr inbounds %struct.regmap, ptr %19, i32 0, i32 7, !dbg !6747
  %20 = load ptr, ptr %dev, align 8, !dbg !6747
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef @.str.25) #23, !dbg !6747
  call void @add_taint(i32 noundef 6, i32 noundef 0) #20, !dbg !6752
  br label %if.end20, !dbg !6753

if.else:                                          ; preds = %land.lhs.true, %if.end4
  %21 = load i8, ptr %new_val, align 1, !dbg !6754, !range !4836, !noundef !266
  %tobool9 = trunc i8 %21 to i1, !dbg !6754
  br i1 %tobool9, label %if.end19, label %land.lhs.true10, !dbg !6756

land.lhs.true10:                                  ; preds = %if.else
  %22 = load ptr, ptr %map, align 8, !dbg !6757
  %cache_bypass11 = getelementptr inbounds %struct.regmap, ptr %22, i32 0, i32 59, !dbg !6758
  %23 = load i8, ptr %cache_bypass11, align 1, !dbg !6758, !range !4836, !noundef !266
  %tobool12 = trunc i8 %23 to i1, !dbg !6758
  br i1 %tobool12, label %if.then14, label %if.end19, !dbg !6759

if.then14:                                        ; preds = %land.lhs.true10
  br label %do.body15, !dbg !6760

do.body15:                                        ; preds = %if.then14
  br label %do.cond16, !dbg !6763

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !6763

do.end17:                                         ; preds = %do.cond16
  %24 = load ptr, ptr %map, align 8, !dbg !6760
  %dev18 = getelementptr inbounds %struct.regmap, ptr %24, i32 0, i32 7, !dbg !6760
  %25 = load ptr, ptr %dev18, align 8, !dbg !6760
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef @.str.26) #23, !dbg !6760
  br label %if.end19, !dbg !6765

if.end19:                                         ; preds = %do.end17, %land.lhs.true10, %if.else
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %do.end
  %26 = load i8, ptr %new_val, align 1, !dbg !6766, !range !4836, !noundef !266
  %tobool21 = trunc i8 %26 to i1, !dbg !6766
  %27 = load ptr, ptr %map, align 8, !dbg !6767
  %cache_bypass22 = getelementptr inbounds %struct.regmap, ptr %27, i32 0, i32 59, !dbg !6768
  %frombool = zext i1 %tobool21 to i8, !dbg !6769
  store i8 %frombool, ptr %cache_bypass22, align 1, !dbg !6769
  %28 = load ptr, ptr %map, align 8, !dbg !6770
  %unlock = getelementptr inbounds %struct.regmap, ptr %28, i32 0, i32 3, !dbg !6771
  %29 = load ptr, ptr %unlock, align 8, !dbg !6771
  %30 = load ptr, ptr %map, align 8, !dbg !6772
  %lock_arg23 = getelementptr inbounds %struct.regmap, ptr %30, i32 0, i32 4, !dbg !6773
  %31 = load ptr, ptr %lock_arg23, align 8, !dbg !6773
  call void %29(ptr noundef %31) #20, !dbg !6770
  %32 = load ptr, ptr %file.addr, align 8, !dbg !6774
  %f_path24 = getelementptr inbounds %struct.file, ptr %32, i32 0, i32 10, !dbg !6775
  %dentry25 = getelementptr inbounds %struct.path, ptr %f_path24, i32 0, i32 1, !dbg !6776
  %33 = load ptr, ptr %dentry25, align 8, !dbg !6776
  call void @debugfs_file_put(ptr noundef %33) #20, !dbg !6777
  %34 = load i64, ptr %count.addr, align 8, !dbg !6778
  store i64 %34, ptr %retval, align 8, !dbg !6779
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6779

cleanup:                                          ; preds = %if.end20, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #18, !dbg !6780
  call void @llvm.lifetime.end.p0(i64 1, ptr %new_val) #18, !dbg !6780
  call void @llvm.lifetime.end.p0(i64 8, ptr %map) #18, !dbg !6780
  %35 = load i64, ptr %retval, align 8, !dbg !6780
  ret i64 %35, !dbg !6780
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @regmap_range_read_file(ptr noundef %file, ptr noundef %user_buf, i64 noundef %count, ptr noundef %ppos) #0 align 16 !dbg !6781 {
entry:
  %file.addr = alloca ptr, align 8
  %user_buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %ppos.addr = alloca ptr, align 8
  %range = alloca ptr, align 8
  %map = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6783, metadata !DIExpression()), !dbg !6789
  store ptr %user_buf, ptr %user_buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %user_buf.addr, metadata !6784, metadata !DIExpression()), !dbg !6790
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6785, metadata !DIExpression()), !dbg !6791
  store ptr %ppos, ptr %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ppos.addr, metadata !6786, metadata !DIExpression()), !dbg !6792
  call void @llvm.lifetime.start.p0(i64 8, ptr %range) #18, !dbg !6793
  call void @llvm.dbg.declare(metadata ptr %range, metadata !6787, metadata !DIExpression()), !dbg !6794
  %0 = load ptr, ptr %file.addr, align 8, !dbg !6795
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !6796
  %1 = load ptr, ptr %private_data, align 8, !dbg !6796
  store ptr %1, ptr %range, align 8, !dbg !6794
  call void @llvm.lifetime.start.p0(i64 8, ptr %map) #18, !dbg !6797
  call void @llvm.dbg.declare(metadata ptr %map, metadata !6788, metadata !DIExpression()), !dbg !6798
  %2 = load ptr, ptr %range, align 8, !dbg !6799
  %map1 = getelementptr inbounds %struct.regmap_range_node, ptr %2, i32 0, i32 2, !dbg !6800
  %3 = load ptr, ptr %map1, align 8, !dbg !6800
  store ptr %3, ptr %map, align 8, !dbg !6798
  %4 = load ptr, ptr %map, align 8, !dbg !6801
  %5 = load ptr, ptr %range, align 8, !dbg !6802
  %range_min = getelementptr inbounds %struct.regmap_range_node, ptr %5, i32 0, i32 3, !dbg !6803
  %6 = load i32, ptr %range_min, align 8, !dbg !6803
  %7 = load ptr, ptr %range, align 8, !dbg !6804
  %range_max = getelementptr inbounds %struct.regmap_range_node, ptr %7, i32 0, i32 4, !dbg !6805
  %8 = load i32, ptr %range_max, align 4, !dbg !6805
  %9 = load ptr, ptr %user_buf.addr, align 8, !dbg !6806
  %10 = load i64, ptr %count.addr, align 8, !dbg !6807
  %11 = load ptr, ptr %ppos.addr, align 8, !dbg !6808
  %call = call i64 @regmap_read_debugfs(ptr noundef %4, i32 noundef %6, i32 noundef %8, ptr noundef %9, i64 noundef %10, ptr noundef %11) #20, !dbg !6809
  call void @llvm.lifetime.end.p0(i64 8, ptr %map) #18, !dbg !6810
  call void @llvm.lifetime.end.p0(i64 8, ptr %range) #18, !dbg !6810
  ret i64 %call, !dbg !6811
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #5 align 16 !dbg !6812 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6814, metadata !DIExpression()), !dbg !6815
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6816
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #20, !dbg !6818
  br i1 %call, label %if.end, label %if.then, !dbg !6819

if.then:                                          ; preds = %entry
  br label %return, !dbg !6820

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6821
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6822
  %2 = load ptr, ptr %prev, align 8, !dbg !6822
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !6823
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6824
  %4 = load ptr, ptr %next, align 8, !dbg !6824
  call void @__list_del(ptr noundef %2, ptr noundef %4) #20, !dbg !6825
  br label %return, !dbg !6826

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6826
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #5 align 16 !dbg !6827 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6831, metadata !DIExpression()), !dbg !6832
  ret i1 true, !dbg !6833
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !6834 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6836, metadata !DIExpression()), !dbg !6838
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6837, metadata !DIExpression()), !dbg !6839
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !6840
  %1 = load ptr, ptr %next.addr, align 8, !dbg !6841
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6842
  store ptr %0, ptr %prev1, align 8, !dbg !6843
  br label %do.body, !dbg !6844

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !6845

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !6847

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !6845

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6849
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !6849
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6849
  store volatile ptr %2, ptr %next4, align 8, !dbg !6849
  br label %do.end5, !dbg !6849

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !6845

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !6851
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { noredzone null_pointer_is_valid "dontcall-error"="copy source size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone null_pointer_is_valid "dontcall-error"="copy destination size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #18 = { nounwind }
attributes #19 = { noredzone allocsize(0) }
attributes #20 = { noredzone }
attributes #21 = { noredzone allocsize(2) }
attributes #22 = { noredzone noreturn }
attributes #23 = { cold noredzone }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!4813, !4814, !4815, !4816, !4817, !4818, !4819, !4820}
!llvm.ident = !{!4821}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 550, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/base/regmap/regmap-debugfs.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4398ce221496a8741e73b35ffc966ede")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 6)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "regmap_debugfs_root", scope: !9, file: !2, line: 24, type: !437, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/base/regmap/.regmap-debugfs.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/base/regmap/regmap-debugfs\22 -D KBUILD_BASENAME=\22regmap_debugfs\22 -D KBUILD_MODNAME=\22regmap_debugfs\22 -D __KBUILD_MODNAME=kmod_regmap_debugfs -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/base/regmap/regmap-debugfs.ll drivers/base/regmap/regmap-debugfs.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !156, globals: !4678, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !19, !24, !32, !38, !43, !49, !56, !63, !69, !75, !82, !90, !98, !107, !112, !117, !123, !130, !136, !141, !151}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !12, line: 312, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16, !17, !18}
!15 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!16 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!17 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!18 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !20, line: 2052, baseType: !13, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!21 = !{!22, !23}
!22 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!23 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !25, line: 9, baseType: !13, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!26 = !{!27, !28, !29, !30, !31}
!27 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!28 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!29 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!30 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!31 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !33, line: 54, baseType: !13, size: 32, elements: !34)
!33 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!34 = !{!35, !36, !37}
!35 = !DIEnumerator(name: "USRQUOTA", value: 0)
!36 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!37 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !39, line: 65, baseType: !13, size: 32, elements: !40)
!39 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!40 = !{!41, !42}
!41 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!42 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !44, line: 16, baseType: !13, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!45 = !{!46, !47, !48}
!46 = !DIEnumerator(name: "TT_NONE", value: 0)
!47 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!48 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !50, line: 51, baseType: !13, size: 32, elements: !51)
!50 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!51 = !{!52, !53, !54, !55}
!52 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!53 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!54 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!55 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !57, line: 15, baseType: !13, size: 32, elements: !58)
!57 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!58 = !{!59, !60, !61, !62}
!59 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!60 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!61 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!62 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !64, line: 26, baseType: !13, size: 32, elements: !65)
!64 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!65 = !{!66, !67, !68}
!66 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!67 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!68 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !70, line: 45, baseType: !13, size: 32, elements: !71)
!70 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!71 = !{!72, !73, !74}
!72 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!73 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!74 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !76, line: 487, baseType: !13, size: 32, elements: !77)
!76 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!77 = !{!78, !79, !80, !81}
!78 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!79 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!80 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!81 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!82 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !83, line: 620, baseType: !13, size: 32, elements: !84)
!83 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!84 = !{!85, !86, !87, !88, !89}
!85 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!86 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!87 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!88 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!89 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!90 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !83, line: 597, baseType: !91, size: 32, elements: !92)
!91 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!92 = !{!93, !94, !95, !96, !97}
!93 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!94 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!95 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!96 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!97 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!98 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !76, line: 547, baseType: !13, size: 32, elements: !99)
!99 = !{!100, !101, !102, !103, !104, !105, !106}
!100 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!101 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!102 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!103 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!104 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!105 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!106 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !76, line: 564, baseType: !13, size: 32, elements: !108)
!108 = !{!109, !110, !111}
!109 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!110 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!111 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !76, line: 577, baseType: !13, size: 32, elements: !113)
!113 = !{!114, !115, !116}
!114 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!115 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!116 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !76, line: 503, baseType: !13, size: 32, elements: !118)
!118 = !{!119, !120, !121, !122}
!119 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!120 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!121 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!122 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!123 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "regmap_endian", file: !124, line: 202, baseType: !13, size: 32, elements: !125)
!124 = !DIFile(filename: "./include/linux/regmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fe5626d9d627f4ed2a386e72c96db98d")
!125 = !{!126, !127, !128, !129}
!126 = !DIEnumerator(name: "REGMAP_ENDIAN_DEFAULT", value: 0)
!127 = !DIEnumerator(name: "REGMAP_ENDIAN_BIG", value: 1)
!128 = !DIEnumerator(name: "REGMAP_ENDIAN_LITTLE", value: 2)
!129 = !DIEnumerator(name: "REGMAP_ENDIAN_NATIVE", value: 3)
!130 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "regcache_type", file: !124, line: 58, baseType: !13, size: 32, elements: !131)
!131 = !{!132, !133, !134, !135}
!132 = !DIEnumerator(name: "REGCACHE_NONE", value: 0)
!133 = !DIEnumerator(name: "REGCACHE_RBTREE", value: 1)
!134 = !DIEnumerator(name: "REGCACHE_FLAT", value: 2)
!135 = !DIEnumerator(name: "REGCACHE_MAPLE", value: 3)
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
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lockdep_ok", file: !152, line: 87, baseType: !13, size: 32, elements: !153)
!152 = !DIFile(filename: "./include/linux/panic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3219e8109531a92b450817dd7e3cc0fb")
!153 = !{!154, !155}
!154 = !DIEnumerator(name: "LOCKDEP_STILL_OK", value: 0)
!155 = !DIEnumerator(name: "LOCKDEP_NOW_UNRELIABLE", value: 1)
!156 = !{!157, !159, !160, !4659, !169, !4664, !4666, !4676, !91, !590, !177}
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !158, line: 154, baseType: !13)
!158 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regmap_range_node", file: !162, line: 208, size: 576, elements: !163)
!162 = !DIFile(filename: "drivers/base/regmap/internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "77b9eb926d1adf1db721df0ad8f0ff41")
!163 = !{!164, !173, !176, !4652, !4653, !4654, !4655, !4656, !4657, !4658}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !161, file: !162, line: 209, baseType: !165, size: 192, align: 64)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !166, line: 5, size: 192, align: 64, elements: !167)
!166 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!167 = !{!168, !170, !172}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !165, file: !166, line: 6, baseType: !169, size: 64)
!169 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !165, file: !166, line: 7, baseType: !171, size: 64, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !165, file: !166, line: 8, baseType: !171, size: 64, offset: 128)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !161, file: !162, line: 210, baseType: !174, size: 64, offset: 192)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !161, file: !162, line: 211, baseType: !177, size: 64, offset: 256)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regmap", file: !162, line: 50, size: 5248, elements: !179)
!179 = !{!180, !262, !267, !272, !274, !275, !276, !277, !4438, !4439, !4461, !4531, !4532, !4533, !4534, !4535, !4536, !4537, !4538, !4539, !4540, !4541, !4542, !4543, !4544, !4545, !4546, !4547, !4548, !4552, !4553, !4554, !4555, !4556, !4557, !4572, !4573, !4574, !4575, !4576, !4577, !4578, !4579, !4580, !4581, !4582, !4583, !4584, !4585, !4586, !4587, !4588, !4589, !4615, !4616, !4617, !4618, !4619, !4620, !4621, !4622, !4623, !4629, !4630, !4631, !4632, !4633, !4640, !4641, !4642, !4643, !4644, !4645, !4646, !4647, !4648, !4651}
!180 = !DIDerivedType(tag: DW_TAG_member, scope: !178, file: !162, line: 51, baseType: !181, size: 256)
!181 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !178, file: !162, line: 51, size: 256, elements: !182)
!182 = !{!183, !244, !257}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !181, file: !162, line: 52, baseType: !184, size: 256)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !185, line: 66, size: 256, elements: !186)
!185 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!186 = !{!187, !199, !233, !238}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !184, file: !185, line: 67, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !189, line: 13, baseType: !190)
!189 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !158, line: 181, baseType: !191)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !158, line: 179, size: 64, elements: !192)
!192 = !{!193}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !191, file: !158, line: 180, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !195, line: 22, baseType: !196)
!195 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !197, line: 30, baseType: !198)
!197 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!198 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !184, file: !185, line: 68, baseType: !200, size: 32, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !201, line: 23, baseType: !202)
!201 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !201, line: 14, size: 32, elements: !203)
!203 = !{!204}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !202, file: !201, line: 15, baseType: !205, size: 32)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !206, line: 44, baseType: !207)
!206 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !206, line: 14, size: 32, elements: !208)
!208 = !{!209}
!209 = !DIDerivedType(tag: DW_TAG_member, scope: !207, file: !206, line: 15, baseType: !210, size: 32)
!210 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !207, file: !206, line: 15, size: 32, elements: !211)
!211 = !{!212, !217, !225}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !210, file: !206, line: 16, baseType: !213, size: 32)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !158, line: 174, baseType: !214)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !158, line: 172, size: 32, elements: !215)
!215 = !{!216}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !214, file: !158, line: 173, baseType: !91, size: 32)
!217 = !DIDerivedType(tag: DW_TAG_member, scope: !210, file: !206, line: 24, baseType: !218, size: 16)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !210, file: !206, line: 24, size: 16, elements: !219)
!219 = !{!220, !224}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !218, file: !206, line: 25, baseType: !221, size: 8)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !195, line: 17, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !197, line: 21, baseType: !223)
!223 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !218, file: !206, line: 26, baseType: !221, size: 8, offset: 8)
!225 = !DIDerivedType(tag: DW_TAG_member, scope: !210, file: !206, line: 28, baseType: !226, size: 32)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !210, file: !206, line: 28, size: 32, elements: !227)
!227 = !{!228, !232}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !226, file: !206, line: 29, baseType: !229, size: 16)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !195, line: 19, baseType: !230)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !197, line: 24, baseType: !231)
!231 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !226, file: !206, line: 30, baseType: !229, size: 16, offset: 16)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !184, file: !185, line: 70, baseType: !234, size: 32, offset: 96)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !235, line: 15, size: 32, elements: !236)
!235 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!236 = !{!237}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !234, file: !235, line: 20, baseType: !213, size: 32)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !184, file: !185, line: 72, baseType: !239, size: 128, offset: 128)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !158, line: 190, size: 128, elements: !240)
!240 = !{!241, !243}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !239, file: !158, line: 191, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !239, file: !158, line: 191, baseType: !242, size: 64, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, scope: !181, file: !162, line: 53, baseType: !245, size: 128)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !181, file: !162, line: 53, size: 128, elements: !246)
!246 = !{!247, !256}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "spinlock", scope: !245, file: !162, line: 54, baseType: !248, size: 32)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !249, line: 29, baseType: !250)
!249 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !249, line: 17, size: 32, elements: !251)
!251 = !{!252}
!252 = !DIDerivedType(tag: DW_TAG_member, scope: !250, file: !249, line: 18, baseType: !253, size: 32)
!253 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !250, file: !249, line: 18, size: 32, elements: !254)
!254 = !{!255}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !253, file: !249, line: 19, baseType: !202, size: 32)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "spinlock_flags", scope: !245, file: !162, line: 55, baseType: !169, size: 64, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, scope: !181, file: !162, line: 57, baseType: !258, size: 128)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !181, file: !162, line: 57, size: 128, elements: !259)
!259 = !{!260, !261}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "raw_spinlock", scope: !258, file: !162, line: 58, baseType: !200, size: 32)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "raw_spinlock_flags", scope: !258, file: !162, line: 59, baseType: !169, size: 64, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !178, file: !162, line: 62, baseType: !263, size: 64, offset: 256)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !265, line: 206, elements: !266)
!265 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!266 = !{}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !178, file: !162, line: 63, baseType: !268, size: 64, offset: 320)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_lock", file: !124, line: 244, baseType: !269)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{null, !159}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "unlock", scope: !178, file: !162, line: 64, baseType: !273, size: 64, offset: 384)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_unlock", file: !124, line: 245, baseType: !269)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "lock_arg", scope: !178, file: !162, line: 65, baseType: !159, size: 64, offset: 448)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_flags", scope: !178, file: !162, line: 66, baseType: !157, size: 32, offset: 512)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "reg_base", scope: !178, file: !162, line: 67, baseType: !13, size: 32, offset: 544)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !178, file: !162, line: 69, baseType: !278, size: 64, offset: 576)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !76, line: 705, size: 5824, elements: !280)
!280 = !{!281, !3992, !3993, !3996, !3997, !4050, !4120, !4121, !4122, !4123, !4124, !4131, !4223, !4236, !4246, !4250, !4252, !4253, !4254, !4258, !4265, !4266, !4269, !4272, !4276, !4380, !4381, !4382, !4383, !4384, !4385, !4415, !4416, !4417, !4420, !4423, !4432, !4433, !4434, !4435, !4436, !4437}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !279, file: !76, line: 706, baseType: !282, size: 512)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !283, line: 64, size: 512, elements: !284)
!283 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!284 = !{!285, !286, !287, !289, !336, !3890, !3982, !3987, !3988, !3989, !3990, !3991}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !282, file: !283, line: 65, baseType: !174, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !282, file: !283, line: 66, baseType: !239, size: 128, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !282, file: !283, line: 67, baseType: !288, size: 64, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !282, file: !283, line: 68, baseType: !290, size: 64, offset: 256)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !283, line: 168, size: 768, elements: !292)
!292 = !{!293, !294, !295, !296}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !291, file: !283, line: 169, baseType: !239, size: 128)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !291, file: !283, line: 170, baseType: !248, size: 32, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !291, file: !283, line: 171, baseType: !282, size: 512, offset: 192)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !291, file: !283, line: 172, baseType: !297, size: 64, offset: 704)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !299)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !283, line: 133, size: 192, elements: !300)
!300 = !{!301, !308, !313}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !299, file: !283, line: 134, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !303)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DISubroutineType(types: !305)
!305 = !{!91, !306}
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !282)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !299, file: !283, line: 135, baseType: !309, size: 64, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !310)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{!174, !306}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !299, file: !283, line: 136, baseType: !314, size: 64, offset: 128)
!314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !315)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DISubroutineType(types: !317)
!317 = !{!91, !306, !318}
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !283, line: 125, size: 20736, elements: !320)
!320 = !{!321, !326, !330, !331, !335}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !319, file: !283, line: 126, baseType: !322, size: 192)
!322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 192, elements: !324)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!324 = !{!325}
!325 = !DISubrange(count: 3)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !319, file: !283, line: 127, baseType: !327, size: 4096, offset: 192)
!327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 4096, elements: !328)
!328 = !{!329}
!329 = !DISubrange(count: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !319, file: !283, line: 128, baseType: !91, size: 32, offset: 4288)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !319, file: !283, line: 129, baseType: !332, size: 16384, offset: 4320)
!332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !333)
!333 = !{!334}
!334 = !DISubrange(count: 2048)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !319, file: !283, line: 130, baseType: !91, size: 32, offset: 20704)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !282, file: !283, line: 69, baseType: !337, size: 64, offset: 320)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !339)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !283, line: 116, size: 384, elements: !340)
!340 = !{!341, !345, !373, !3852, !3880, !3884}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !339, file: !283, line: 117, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DISubroutineType(types: !344)
!344 = !{null, !288}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !339, file: !283, line: 118, baseType: !346, size: 64, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !348)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !349, line: 254, size: 128, elements: !350)
!349 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!350 = !{!351, !366}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !348, file: !349, line: 255, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DISubroutineType(types: !354)
!354 = !{!355, !288, !360, !323}
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !158, line: 66, baseType: !356)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !357, line: 73, baseType: !358)
!357 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !357, line: 15, baseType: !359)
!359 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !349, line: 30, size: 128, elements: !362)
!362 = !{!363, !364}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !361, file: !349, line: 31, baseType: !174, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !361, file: !349, line: 32, baseType: !365, size: 16, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !158, line: 24, baseType: !231)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !348, file: !349, line: 256, baseType: !367, size: 64, offset: 64)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DISubroutineType(types: !369)
!369 = !{!355, !288, !360, !174, !370}
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !158, line: 61, baseType: !371)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !357, line: 72, baseType: !372)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !357, line: 16, baseType: !169)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !339, file: !283, line: 119, baseType: !374, size: 64, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !377)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !349, line: 84, size: 320, elements: !378)
!378 = !{!379, !380, !384, !3848, !3850}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !377, file: !349, line: 85, baseType: !174, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !377, file: !349, line: 86, baseType: !381, size: 64, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DISubroutineType(types: !383)
!383 = !{!365, !288, !360, !91}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !377, file: !349, line: 88, baseType: !385, size: 64, offset: 128)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DISubroutineType(types: !387)
!387 = !{!365, !288, !388, !91}
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !349, line: 175, size: 512, elements: !390)
!390 = !{!391, !392, !393, !394, !3839, !3843, !3844}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !389, file: !349, line: 176, baseType: !361, size: 128)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !389, file: !349, line: 177, baseType: !370, size: 64, offset: 128)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !389, file: !349, line: 178, baseType: !159, size: 64, offset: 192)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !389, file: !349, line: 179, baseType: !395, size: 64, offset: 256)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DISubroutineType(types: !397)
!397 = !{!398}
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !20, line: 472, size: 1536, align: 64, elements: !400)
!400 = !{!401, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3833, !3834, !3835, !3836, !3837, !3838}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !399, file: !20, line: 473, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !20, line: 641, size: 4800, elements: !404)
!404 = !{!405, !406, !407, !415, !416, !423, !424, !427, !428, !3612, !3613, !3614, !3615, !3616, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3656, !3659, !3660, !3661, !3670, !3671, !3672, !3673}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !403, file: !20, line: 642, baseType: !365, size: 16)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !403, file: !20, line: 643, baseType: !231, size: 16, offset: 16)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !403, file: !20, line: 644, baseType: !408, size: 32, offset: 32)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !409, line: 23, baseType: !410)
!409 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !409, line: 21, size: 32, elements: !411)
!411 = !{!412}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !410, file: !409, line: 22, baseType: !413, size: 32)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !158, line: 37, baseType: !414)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !357, line: 49, baseType: !13)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !403, file: !20, line: 645, baseType: !239, size: 128, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !403, file: !20, line: 646, baseType: !417, size: 32, offset: 192)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !409, line: 28, baseType: !418)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !409, line: 26, size: 32, elements: !419)
!419 = !{!420}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !418, file: !409, line: 27, baseType: !421, size: 32)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !158, line: 38, baseType: !422)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !357, line: 50, baseType: !13)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !403, file: !20, line: 647, baseType: !13, size: 32, offset: 224)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !403, file: !20, line: 650, baseType: !425, size: 64, offset: 256)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !20, line: 607, flags: DIFlagFwdDecl)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !403, file: !20, line: 651, baseType: !425, size: 64, offset: 320)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !403, file: !20, line: 654, baseType: !429, size: 64, offset: 384)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !431)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !20, line: 1966, size: 2048, align: 512, elements: !432)
!432 = !{!433, !3440, !3450, !3454, !3458, !3462, !3466, !3470, !3474, !3478, !3482, !3483, !3487, !3491, !3528, !3557, !3561, !3567, !3571, !3575, !3579, !3583, !3587, !3593, !3597}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !431, file: !20, line: 1967, baseType: !434, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DISubroutineType(types: !436)
!436 = !{!437, !402, !437, !13}
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !439, line: 82, size: 1536, elements: !440)
!439 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!440 = !{!441, !442, !452, !460, !461, !481, !482, !486, !499, !3423, !3424, !3425, !3426, !3432, !3433, !3434}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !438, file: !439, line: 84, baseType: !13, size: 32)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !438, file: !439, line: 85, baseType: !443, size: 32, offset: 32)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !444, line: 275, baseType: !445)
!444 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !444, line: 275, size: 32, elements: !446)
!446 = !{!447}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !445, file: !444, line: 275, baseType: !448, size: 32)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !444, line: 69, baseType: !449)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !444, line: 64, size: 32, elements: !450)
!450 = !{!451}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !449, file: !444, line: 65, baseType: !13, size: 32)
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
!463 = !{!464, !478}
!464 = !DIDerivedType(tag: DW_TAG_member, scope: !462, file: !439, line: 50, baseType: !465, size: 64)
!465 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !462, file: !439, line: 50, size: 64, elements: !466)
!466 = !{!467, !474}
!467 = !DIDerivedType(tag: DW_TAG_member, scope: !465, file: !439, line: 51, baseType: !468, size: 64)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !465, file: !439, line: 51, size: 64, elements: !469)
!469 = !{!470, !473}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !468, file: !439, line: 52, baseType: !471, size: 32)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !195, line: 21, baseType: !472)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !197, line: 27, baseType: !13)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !468, file: !439, line: 52, baseType: !471, size: 32, offset: 32)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !465, file: !439, line: 54, baseType: !475, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !195, line: 23, baseType: !476)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !197, line: 31, baseType: !477)
!477 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !462, file: !439, line: 56, baseType: !479, size: 64, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !223)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !438, file: !439, line: 89, baseType: !402, size: 64, offset: 384)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !438, file: !439, line: 91, baseType: !483, size: 256, offset: 448)
!483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 256, elements: !484)
!484 = !{!485}
!485 = !DISubrange(count: 32)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !438, file: !439, line: 94, baseType: !487, size: 64, offset: 704)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !488, line: 25, size: 64, elements: !489)
!488 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!489 = !{!490}
!490 = !DIDerivedType(tag: DW_TAG_member, scope: !487, file: !488, line: 26, baseType: !491, size: 64)
!491 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !487, file: !488, line: 26, size: 64, elements: !492)
!492 = !{!493, !494}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !491, file: !488, line: 28, baseType: !476, size: 64, align: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, scope: !491, file: !488, line: 30, baseType: !495, size: 64)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !491, file: !488, line: 30, size: 64, elements: !496)
!496 = !{!497, !498}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !495, file: !488, line: 31, baseType: !248, size: 32)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !495, file: !488, line: 32, baseType: !91, size: 32, offset: 32)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !438, file: !439, line: 95, baseType: !500, size: 64, offset: 768)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !502)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !439, line: 128, size: 1024, align: 512, elements: !503)
!503 = !{!504, !508, !509, !516, !522, !526, !530, !534, !535, !539, !543, !3413, !3417}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !502, file: !439, line: 129, baseType: !505, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DISubroutineType(types: !507)
!507 = !{!91, !437, !13}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !502, file: !439, line: 130, baseType: !505, size: 64, offset: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !502, file: !439, line: 131, baseType: !510, size: 64, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{!91, !513, !515}
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !438)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !502, file: !439, line: 132, baseType: !517, size: 64, offset: 192)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DISubroutineType(types: !519)
!519 = !{!91, !513, !13, !174, !520}
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !462)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !502, file: !439, line: 134, baseType: !523, size: 64, offset: 256)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DISubroutineType(types: !525)
!525 = !{!91, !513}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !502, file: !439, line: 135, baseType: !527, size: 64, offset: 320)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{!91, !437}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !502, file: !439, line: 136, baseType: !531, size: 64, offset: 384)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{null, !437}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !502, file: !439, line: 137, baseType: !531, size: 64, offset: 448)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !502, file: !439, line: 138, baseType: !536, size: 64, offset: 512)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{null, !437, !402}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !502, file: !439, line: 139, baseType: !540, size: 64, offset: 576)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DISubroutineType(types: !542)
!542 = !{!323, !437, !323, !91}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !502, file: !439, line: 140, baseType: !544, size: 64, offset: 640)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{!547, !3412}
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !549, line: 70, size: 256, elements: !550)
!549 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!550 = !{!551, !552, !3408, !3409}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !548, file: !549, line: 71, baseType: !437, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !548, file: !549, line: 72, baseType: !553, size: 64, offset: 64)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !20, line: 1190, size: 10752, elements: !555)
!555 = !{!556, !557, !560, !561, !562, !565, !1011, !1861, !1901, !1986, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !2003, !2007, !2008, !2011, !2014, !2017, !2020, !2021, !2022, !2063, !3341, !3342, !3343, !3344, !3345, !3346, !3349, !3351, !3358, !3359, !3360, !3361, !3362, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !554, file: !20, line: 1191, baseType: !239, size: 128)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !554, file: !20, line: 1192, baseType: !558, size: 32, offset: 128)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !158, line: 21, baseType: !559)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !158, line: 18, baseType: !471)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !554, file: !20, line: 1193, baseType: !223, size: 8, offset: 160)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !554, file: !20, line: 1194, baseType: !169, size: 64, offset: 192)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !554, file: !20, line: 1195, baseType: !563, size: 64, offset: 256)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !158, line: 52, baseType: !564)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !357, line: 88, baseType: !198)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !554, file: !20, line: 1196, baseType: !566, size: 64, offset: 320)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !20, line: 2366, size: 576, elements: !568)
!568 = !{!569, !570, !571, !577, !581, !585, !589, !997, !998, !1002, !1003, !1004, !1005, !1007, !1008, !1009, !1010}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !567, file: !20, line: 2367, baseType: !174, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !567, file: !20, line: 2368, baseType: !91, size: 32, offset: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !567, file: !20, line: 2376, baseType: !572, size: 64, offset: 128)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{!91, !575}
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !549, line: 21, flags: DIFlagFwdDecl)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !567, file: !20, line: 2377, baseType: !578, size: 64, offset: 192)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !580)
!580 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !20, line: 75, flags: DIFlagFwdDecl)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !567, file: !20, line: 2378, baseType: !582, size: 64, offset: 256)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DISubroutineType(types: !584)
!584 = !{!437, !566, !91, !174, !159}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !567, file: !20, line: 2380, baseType: !586, size: 64, offset: 320)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DISubroutineType(types: !588)
!588 = !{null, !553}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !567, file: !20, line: 2381, baseType: !590, size: 64, offset: 384)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !12, line: 402, size: 9216, align: 512, elements: !592)
!592 = !{!593, !594, !595, !599, !620, !646, !647, !648, !649, !653, !658, !659, !660, !713, !714, !715, !716, !717, !720, !721, !722, !730, !734, !754, !775, !776, !777, !778, !787, !810, !811, !814, !817, !818, !819, !820, !821, !822, !823, !828, !829, !955, !963, !964, !965, !967, !971, !972, !976, !977, !978, !979, !981, !982, !983, !990, !991, !992, !996}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !591, file: !12, line: 403, baseType: !11, size: 32)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !591, file: !12, line: 406, baseType: !239, size: 128, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !591, file: !12, line: 409, baseType: !596, size: 448, offset: 192)
!596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !597)
!597 = !{!598}
!598 = !DISubrange(count: 56)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !591, file: !12, line: 417, baseType: !600, size: 768, offset: 640)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !12, line: 45, size: 768, elements: !601)
!601 = !{!602, !603, !604, !605, !608}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !600, file: !12, line: 46, baseType: !282, size: 512)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !600, file: !12, line: 47, baseType: !590, size: 64, offset: 512)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !600, file: !12, line: 48, baseType: !288, size: 64, offset: 576)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !600, file: !12, line: 49, baseType: !606, size: 64, offset: 640)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !12, line: 49, flags: DIFlagFwdDecl)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !600, file: !12, line: 50, baseType: !609, size: 64, offset: 704)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !611, line: 26, size: 256, elements: !612)
!611 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!612 = !{!613, !614}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !610, file: !611, line: 27, baseType: !13, size: 32)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !610, file: !611, line: 28, baseType: !615, size: 192, offset: 64)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !616, line: 43, size: 192, elements: !617)
!616 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!617 = !{!618, !619}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !615, file: !616, line: 44, baseType: !200, size: 32)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !615, file: !616, line: 45, baseType: !239, size: 128, offset: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !591, file: !12, line: 418, baseType: !621, size: 64, offset: 1408)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !12, line: 53, size: 448, elements: !623)
!623 = !{!624, !625, !630, !634, !638, !642}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !622, file: !12, line: 54, baseType: !361, size: 128)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !622, file: !12, line: 55, baseType: !626, size: 64, offset: 128)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DISubroutineType(types: !628)
!628 = !{!355, !621, !629, !323}
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !622, file: !12, line: 57, baseType: !631, size: 64, offset: 192)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DISubroutineType(types: !633)
!633 = !{!355, !621, !629, !174, !370}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !622, file: !12, line: 59, baseType: !635, size: 64, offset: 256)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DISubroutineType(types: !637)
!637 = !{null, !590, !174}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !622, file: !12, line: 60, baseType: !639, size: 64, offset: 320)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{!91, !590}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !622, file: !12, line: 61, baseType: !643, size: 64, offset: 384)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DISubroutineType(types: !645)
!645 = !{null, !590}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !591, file: !12, line: 419, baseType: !174, size: 64, offset: 1472)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !591, file: !12, line: 420, baseType: !174, size: 64, offset: 1536)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !591, file: !12, line: 421, baseType: !288, size: 64, offset: 1600)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !591, file: !12, line: 424, baseType: !650, size: 64, offset: 1664)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !652)
!652 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !12, line: 424, flags: DIFlagFwdDecl)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !591, file: !12, line: 425, baseType: !654, size: 64, offset: 1728)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !656)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !195, line: 20, baseType: !657)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !197, line: 26, baseType: !91)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !591, file: !12, line: 426, baseType: !13, size: 32, offset: 1792)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !591, file: !12, line: 435, baseType: !184, size: 256, offset: 1856)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !591, file: !12, line: 437, baseType: !661, size: 64, offset: 2112)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !663, line: 69, size: 320, elements: !664)
!663 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!664 = !{!665, !666, !667, !684, !686, !690, !691}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !662, file: !663, line: 70, baseType: !174, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !662, file: !663, line: 71, baseType: !590, size: 64, offset: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !662, file: !663, line: 72, baseType: !668, size: 64, offset: 128)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !670)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !663, line: 47, size: 256, elements: !671)
!671 = !{!672, !673, !679, !683}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !670, file: !663, line: 49, baseType: !13, size: 32)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !670, file: !663, line: 51, baseType: !674, size: 64, offset: 64)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DISubroutineType(types: !676)
!676 = !{!91, !174, !677}
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !662)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !670, file: !663, line: 53, baseType: !680, size: 64, offset: 128)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DISubroutineType(types: !682)
!682 = !{!91, !323, !677}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !670, file: !663, line: 55, baseType: !269, size: 64, offset: 192)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !662, file: !663, line: 73, baseType: !685, size: 16, offset: 192)
!685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !229)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !662, file: !663, line: 74, baseType: !687, size: 8, offset: 208)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !195, line: 16, baseType: !688)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !197, line: 20, baseType: !689)
!689 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !662, file: !663, line: 75, baseType: !221, size: 8, offset: 216)
!691 = !DIDerivedType(tag: DW_TAG_member, scope: !662, file: !663, line: 76, baseType: !692, size: 64, offset: 256)
!692 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !662, file: !663, line: 76, size: 64, elements: !693)
!693 = !{!694, !695, !702}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !692, file: !663, line: 77, baseType: !159, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !692, file: !663, line: 78, baseType: !696, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !698)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !663, line: 86, size: 128, elements: !699)
!699 = !{!700, !701}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !698, file: !663, line: 87, baseType: !13, size: 32)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !698, file: !663, line: 88, baseType: !323, size: 64, offset: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !692, file: !663, line: 79, baseType: !703, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !705)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !663, line: 92, size: 256, elements: !706)
!706 = !{!707, !708, !709, !711, !712}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !705, file: !663, line: 94, baseType: !13, size: 32)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !705, file: !663, line: 95, baseType: !13, size: 32, offset: 32)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !705, file: !663, line: 96, baseType: !710, size: 64, offset: 64)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !705, file: !663, line: 97, baseType: !668, size: 64, offset: 128)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !705, file: !663, line: 98, baseType: !159, size: 64, offset: 192)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !591, file: !12, line: 438, baseType: !13, size: 32, offset: 2176)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !591, file: !12, line: 441, baseType: !13, size: 32, offset: 2208)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !591, file: !12, line: 442, baseType: !650, size: 64, offset: 2240)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !591, file: !12, line: 443, baseType: !654, size: 64, offset: 2304)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !591, file: !12, line: 444, baseType: !718, size: 8, offset: 2368)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !158, line: 35, baseType: !719)
!719 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !591, file: !12, line: 451, baseType: !718, size: 8, offset: 2376)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !591, file: !12, line: 454, baseType: !13, size: 32, offset: 2400)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !591, file: !12, line: 455, baseType: !723, size: 64, offset: 2432)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !725, line: 23, size: 96, elements: !726)
!725 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!726 = !{!727, !728, !729}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !724, file: !725, line: 24, baseType: !91, size: 32)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !724, file: !725, line: 24, baseType: !91, size: 32, offset: 32)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !724, file: !725, line: 24, baseType: !91, size: 32, offset: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !591, file: !12, line: 458, baseType: !731, size: 64, offset: 2496)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DISubroutineType(types: !733)
!733 = !{!91}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !591, file: !12, line: 460, baseType: !735, size: 4032, align: 512, offset: 2560)
!735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !736, size: 4032, elements: !752)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !12, line: 362, size: 576, elements: !737)
!737 = !{!738, !739, !740}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !736, file: !12, line: 363, baseType: !159, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !736, file: !12, line: 364, baseType: !13, size: 32, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !736, file: !12, line: 367, baseType: !741, size: 448, offset: 128)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !12, line: 319, size: 448, elements: !742)
!742 = !{!743, !744}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !741, file: !12, line: 320, baseType: !590, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !741, file: !12, line: 321, baseType: !745, size: 384, offset: 64)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !746, line: 40, size: 384, elements: !747)
!746 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!747 = !{!748}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !745, file: !746, line: 41, baseType: !749, size: 384, align: 64)
!749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 384, align: 64, elements: !750)
!750 = !{!751}
!751 = !DISubrange(count: 2)
!752 = !{!753}
!753 = !DISubrange(count: 7)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !591, file: !12, line: 463, baseType: !755, size: 192, offset: 6592)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !756, line: 8, size: 192, elements: !757)
!756 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!757 = !{!758, !759, !761}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !755, file: !756, line: 10, baseType: !13, size: 32)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !755, file: !756, line: 11, baseType: !760, size: 64, offset: 64)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !755, file: !756, line: 12, baseType: !762, size: 64, offset: 128)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !764, line: 59, size: 48, elements: !765)
!764 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!765 = !{!766, !770, !771, !772, !773, !774}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !763, file: !764, line: 60, baseType: !767, size: 16)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !195, line: 18, baseType: !768)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !197, line: 23, baseType: !769)
!769 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !763, file: !764, line: 61, baseType: !767, size: 16, offset: 16)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !763, file: !764, line: 63, baseType: !13, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !763, file: !764, line: 64, baseType: !13, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !763, file: !764, line: 65, baseType: !13, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !763, file: !764, line: 66, baseType: !13, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !591, file: !12, line: 465, baseType: !169, size: 64, offset: 6784)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !591, file: !12, line: 469, baseType: !13, size: 32, offset: 6848)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !591, file: !12, line: 470, baseType: !239, size: 128, offset: 6912)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !591, file: !12, line: 471, baseType: !779, size: 64, offset: 7040)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !781, line: 33, size: 96, elements: !782)
!781 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!782 = !{!783, !784, !785, !786}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !780, file: !781, line: 37, baseType: !91, size: 32)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !780, file: !781, line: 43, baseType: !91, size: 32, offset: 32)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !780, file: !781, line: 45, baseType: !231, size: 16, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !780, file: !781, line: 47, baseType: !231, size: 16, offset: 80)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !591, file: !12, line: 476, baseType: !788, size: 64, offset: 7104)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !12, line: 378, size: 256, elements: !790)
!790 = !{!791, !807, !808, !809}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !789, file: !12, line: 379, baseType: !792, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !794, line: 204, baseType: !795)
!794 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !794, line: 197, size: 192, elements: !796)
!796 = !{!797, !799, !800, !801, !803, !805}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !795, file: !794, line: 198, baseType: !798, size: 32)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !794, line: 21, baseType: !472)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !795, file: !794, line: 199, baseType: !223, size: 8, offset: 32)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !795, file: !794, line: 200, baseType: !223, size: 8, offset: 40)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !795, file: !794, line: 201, baseType: !802, size: 16, offset: 48)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !794, line: 17, baseType: !230)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !795, file: !794, line: 202, baseType: !804, size: 64, offset: 64)
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !794, line: 16, baseType: !476)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !795, file: !794, line: 203, baseType: !806, size: 64, offset: 128)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !794, line: 22, baseType: !476)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !789, file: !12, line: 380, baseType: !13, size: 32, offset: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !789, file: !12, line: 381, baseType: !323, size: 64, offset: 128)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !789, file: !12, line: 382, baseType: !323, size: 64, offset: 192)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !591, file: !12, line: 477, baseType: !789, size: 256, offset: 7168)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !591, file: !12, line: 480, baseType: !812, size: 64, offset: 7424)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !12, line: 480, flags: DIFlagFwdDecl)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !591, file: !12, line: 483, baseType: !815, size: 64, offset: 7488)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !12, line: 483, flags: DIFlagFwdDecl)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !591, file: !12, line: 488, baseType: !323, size: 64, offset: 7552)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !591, file: !12, line: 492, baseType: !159, size: 64, offset: 7616)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !591, file: !12, line: 493, baseType: !13, size: 32, offset: 7680)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !591, file: !12, line: 495, baseType: !159, size: 64, offset: 7744)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !591, file: !12, line: 496, baseType: !13, size: 32, offset: 7808)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !591, file: !12, line: 499, baseType: !13, size: 32, offset: 7840)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !591, file: !12, line: 500, baseType: !824, size: 64, offset: 7872)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !826, line: 45, baseType: !827)
!826 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!827 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !591, file: !12, line: 503, baseType: !13, size: 32, offset: 7936)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !591, file: !12, line: 504, baseType: !830, size: 64, offset: 8000)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !833, line: 96, size: 192, elements: !834)
!833 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!834 = !{!835, !836, !917, !919}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !832, file: !833, line: 97, baseType: !13, size: 32)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !832, file: !833, line: 98, baseType: !837, size: 64, offset: 64)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !833, line: 24, size: 3072, elements: !839)
!839 = !{!840, !842, !843, !844, !845, !869, !870, !871, !872, !890, !902, !903, !914, !915, !916}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !838, file: !833, line: 26, baseType: !841, size: 128)
!841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 128, elements: !750)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !838, file: !833, line: 27, baseType: !841, size: 128, offset: 128)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !838, file: !833, line: 28, baseType: !91, size: 32, offset: 256)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !838, file: !833, line: 31, baseType: !248, size: 32, align: 512, offset: 512)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !838, file: !833, line: 32, baseType: !846, size: 960, offset: 576)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !847, line: 206, size: 960, elements: !848)
!847 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!848 = !{!849, !858, !863, !865, !866, !868}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !846, file: !847, line: 207, baseType: !850, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !158, line: 232, size: 128, align: 64, elements: !852)
!852 = !{!853, !854}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !851, file: !158, line: 233, baseType: !850, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !851, file: !158, line: 234, baseType: !855, size: 64, offset: 64)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DISubroutineType(types: !857)
!857 = !{null, !850}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !846, file: !847, line: 208, baseType: !859, size: 256, offset: 64)
!859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !860, size: 256, elements: !861)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!861 = !{!862}
!862 = !DISubrange(count: 4)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !846, file: !847, line: 209, baseType: !864, size: 256, offset: 320)
!864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 256, elements: !861)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !846, file: !847, line: 213, baseType: !359, size: 64, offset: 576)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !846, file: !847, line: 215, baseType: !867, size: 256, offset: 640)
!867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !359, size: 256, elements: !861)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !846, file: !847, line: 216, baseType: !221, size: 8, offset: 896)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !838, file: !833, line: 33, baseType: !169, size: 64, offset: 1536)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !838, file: !833, line: 34, baseType: !169, size: 64, offset: 1600)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !838, file: !833, line: 35, baseType: !718, size: 8, offset: 1664)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !838, file: !833, line: 36, baseType: !873, size: 320, offset: 1728)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !874, line: 11, size: 320, elements: !875)
!874 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!875 = !{!876, !883, !884, !889}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !873, file: !874, line: 16, baseType: !877, size: 128)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !158, line: 198, size: 128, elements: !878)
!878 = !{!879, !881}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !877, file: !158, line: 199, baseType: !880, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !877, file: !158, line: 199, baseType: !882, size: 64, offset: 64)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !873, file: !874, line: 17, baseType: !169, size: 64, offset: 128)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !873, file: !874, line: 18, baseType: !885, size: 64, offset: 192)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DISubroutineType(types: !887)
!887 = !{null, !888}
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !873, file: !874, line: 19, baseType: !471, size: 32, offset: 256)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !838, file: !833, line: 37, baseType: !891, size: 256, offset: 2048)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !892, line: 98, size: 256, elements: !893)
!892 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!893 = !{!894, !895, !896}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !891, file: !892, line: 99, baseType: !188, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !891, file: !892, line: 100, baseType: !239, size: 128, offset: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !891, file: !892, line: 101, baseType: !897, size: 64, offset: 192)
!897 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !892, line: 21, baseType: !898)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DISubroutineType(types: !900)
!900 = !{null, !901}
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !838, file: !833, line: 38, baseType: !851, size: 128, align: 64, offset: 2304)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !838, file: !833, line: 39, baseType: !904, size: 64, offset: 2432)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !833, line: 49, size: 768, elements: !906)
!906 = !{!907, !908, !909, !910, !911, !912, !913}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !905, file: !833, line: 50, baseType: !248, size: 32)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !905, file: !833, line: 51, baseType: !864, size: 256, offset: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !905, file: !833, line: 53, baseType: !864, size: 256, offset: 320)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !905, file: !833, line: 54, baseType: !169, size: 64, offset: 576)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !905, file: !833, line: 55, baseType: !904, size: 64, offset: 640)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !905, file: !833, line: 56, baseType: !91, size: 32, offset: 704)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !905, file: !833, line: 57, baseType: !91, size: 32, offset: 736)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !838, file: !833, line: 40, baseType: !169, size: 64, offset: 2496)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !838, file: !833, line: 42, baseType: !91, size: 32, offset: 2560)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !838, file: !833, line: 43, baseType: !831, size: 64, offset: 2624)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !832, file: !833, line: 99, baseType: !918, offset: 128)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !265, line: 211, elements: !266)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !832, file: !833, line: 100, baseType: !920, size: 64, offset: 128)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !833, line: 63, size: 3008, elements: !922)
!922 = !{!923, !924, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !954}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !921, file: !833, line: 64, baseType: !904, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !921, file: !833, line: 65, baseType: !925, size: 192, offset: 64)
!925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !904, size: 192, elements: !324)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !921, file: !833, line: 67, baseType: !91, size: 32, offset: 256)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !921, file: !833, line: 68, baseType: !184, size: 256, offset: 320)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !921, file: !833, line: 69, baseType: !248, size: 32, offset: 576)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !921, file: !833, line: 70, baseType: !184, size: 256, offset: 640)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !921, file: !833, line: 71, baseType: !169, size: 64, offset: 896)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !921, file: !833, line: 72, baseType: !169, size: 64, offset: 960)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !921, file: !833, line: 73, baseType: !169, size: 64, offset: 1024)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !921, file: !833, line: 74, baseType: !169, size: 64, offset: 1088)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !921, file: !833, line: 75, baseType: !169, size: 64, offset: 1152)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !921, file: !833, line: 76, baseType: !169, size: 64, offset: 1216)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !921, file: !833, line: 77, baseType: !169, size: 64, offset: 1280)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !921, file: !833, line: 78, baseType: !169, size: 64, offset: 1344)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !921, file: !833, line: 79, baseType: !718, size: 8, offset: 1408)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !921, file: !833, line: 80, baseType: !169, size: 64, offset: 1472)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !921, file: !833, line: 81, baseType: !184, size: 256, offset: 1536)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !921, file: !833, line: 82, baseType: !610, size: 256, offset: 1792)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !921, file: !833, line: 84, baseType: !213, size: 32, offset: 2048)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !921, file: !833, line: 87, baseType: !169, size: 64, offset: 2112)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !921, file: !833, line: 88, baseType: !169, size: 64, offset: 2176)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !921, file: !833, line: 89, baseType: !946, size: 704, offset: 2240)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !892, line: 111, size: 704, elements: !947)
!947 = !{!948, !949, !950, !953}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !946, file: !892, line: 112, baseType: !891, size: 256)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !946, file: !892, line: 113, baseType: !873, size: 320, offset: 256)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !946, file: !892, line: 116, baseType: !951, size: 64, offset: 576)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !892, line: 18, flags: DIFlagFwdDecl)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !946, file: !892, line: 117, baseType: !91, size: 32, offset: 640)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !921, file: !833, line: 90, baseType: !831, size: 64, offset: 2944)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !591, file: !12, line: 515, baseType: !956, size: 64, offset: 8064)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !958, line: 117, size: 128, elements: !959)
!958 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!959 = !{!960, !961, !962}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !957, file: !958, line: 118, baseType: !656, size: 32)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !957, file: !958, line: 119, baseType: !656, size: 32, offset: 32)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !957, file: !958, line: 120, baseType: !359, size: 64, offset: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !591, file: !12, line: 516, baseType: !13, size: 32, offset: 8128)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !591, file: !12, line: 519, baseType: !13, size: 32, offset: 8160)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !591, file: !12, line: 520, baseType: !966, size: 64, offset: 8192)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !591, file: !12, line: 523, baseType: !968, size: 64, offset: 8256)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !12, line: 523, flags: DIFlagFwdDecl)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !591, file: !12, line: 524, baseType: !13, size: 32, offset: 8320)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !591, file: !12, line: 525, baseType: !973, size: 64, offset: 8384)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !12, line: 525, flags: DIFlagFwdDecl)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !591, file: !12, line: 526, baseType: !13, size: 32, offset: 8448)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !591, file: !12, line: 533, baseType: !159, size: 64, offset: 8512)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !591, file: !12, line: 534, baseType: !13, size: 32, offset: 8576)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !591, file: !12, line: 535, baseType: !980, size: 64, offset: 8640)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !591, file: !12, line: 536, baseType: !13, size: 32, offset: 8704)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !591, file: !12, line: 539, baseType: !91, size: 32, offset: 8736)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !591, file: !12, line: 540, baseType: !984, size: 64, offset: 8768)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !986, line: 32, size: 64, elements: !987)
!986 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!987 = !{!988, !989}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !985, file: !986, line: 33, baseType: !656, size: 32)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !985, file: !986, line: 34, baseType: !656, size: 32, offset: 32)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !591, file: !12, line: 563, baseType: !239, size: 128, offset: 8832)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !591, file: !12, line: 565, baseType: !239, size: 128, offset: 8960)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !591, file: !12, line: 568, baseType: !993, size: 64, offset: 9088)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DISubroutineType(types: !995)
!995 = !{null}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !591, file: !12, line: 570, baseType: !213, size: 32, offset: 9152)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !567, file: !20, line: 2382, baseType: !566, size: 64, offset: 448)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !567, file: !20, line: 2383, baseType: !999, size: 64, offset: 512)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !158, line: 194, size: 64, elements: !1000)
!1000 = !{!1001}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !999, file: !158, line: 195, baseType: !880, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !567, file: !20, line: 2385, baseType: !264, offset: 576)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !567, file: !20, line: 2386, baseType: !264, offset: 576)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !567, file: !20, line: 2387, baseType: !264, offset: 576)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !567, file: !20, line: 2388, baseType: !1006, offset: 576)
!1006 = !DICompositeType(tag: DW_TAG_array_type, baseType: !264, elements: !324)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !567, file: !20, line: 2390, baseType: !264, offset: 576)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !567, file: !20, line: 2391, baseType: !264, offset: 576)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !567, file: !20, line: 2392, baseType: !264, offset: 576)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !567, file: !20, line: 2393, baseType: !264, offset: 576)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !554, file: !20, line: 1197, baseType: !1012, size: 64, offset: 384)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1014)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !20, line: 2057, size: 1664, elements: !1015)
!1015 = !{!1016, !1020, !1024, !1025, !1029, !1035, !1039, !1040, !1041, !1045, !1049, !1053, !1054, !1055, !1061, !1065, !1066, !1786, !1787, !1788, !1789, !1793, !1797, !1844, !1859, !1860}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1014, file: !20, line: 2058, baseType: !1017, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!402, !553}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1014, file: !20, line: 2059, baseType: !1021, size: 64, offset: 64)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{null, !402}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1014, file: !20, line: 2060, baseType: !1021, size: 64, offset: 128)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1014, file: !20, line: 2062, baseType: !1026, size: 64, offset: 192)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{null, !402, !91}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1014, file: !20, line: 2063, baseType: !1030, size: 64, offset: 256)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!91, !402, !1033}
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !20, line: 309, flags: DIFlagFwdDecl)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1014, file: !20, line: 2064, baseType: !1036, size: 64, offset: 320)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!91, !402}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1014, file: !20, line: 2065, baseType: !1021, size: 64, offset: 384)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1014, file: !20, line: 2066, baseType: !586, size: 64, offset: 448)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1014, file: !20, line: 2067, baseType: !1042, size: 64, offset: 512)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!91, !553, !91}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1014, file: !20, line: 2068, baseType: !1046, size: 64, offset: 576)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!91, !553, !19}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1014, file: !20, line: 2069, baseType: !1050, size: 64, offset: 640)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!91, !553}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1014, file: !20, line: 2070, baseType: !1046, size: 64, offset: 704)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1014, file: !20, line: 2071, baseType: !1050, size: 64, offset: 768)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1014, file: !20, line: 2072, baseType: !1056, size: 64, offset: 832)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!91, !437, !1059}
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !20, line: 62, flags: DIFlagFwdDecl)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1014, file: !20, line: 2073, baseType: !1062, size: 64, offset: 896)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!91, !553, !760, !323}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1014, file: !20, line: 2074, baseType: !586, size: 64, offset: 960)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1014, file: !20, line: 2076, baseType: !1067, size: 64, offset: 1024)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!91, !1070, !437}
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1072, line: 17, size: 960, elements: !1073)
!1072 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1073 = !{!1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1104, !1105, !1785}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1071, file: !1072, line: 18, baseType: !323, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1071, file: !1072, line: 19, baseType: !370, size: 64, offset: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1071, file: !1072, line: 20, baseType: !370, size: 64, offset: 128)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1071, file: !1072, line: 21, baseType: !370, size: 64, offset: 192)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1071, file: !1072, line: 22, baseType: !370, size: 64, offset: 256)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1071, file: !1072, line: 23, baseType: !563, size: 64, offset: 320)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1071, file: !1072, line: 24, baseType: !563, size: 64, offset: 384)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1071, file: !1072, line: 25, baseType: !184, size: 256, offset: 448)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1071, file: !1072, line: 26, baseType: !1083, size: 64, offset: 704)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1085)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1072, line: 32, size: 256, elements: !1086)
!1086 = !{!1087, !1092, !1096, !1100}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1085, file: !1072, line: 33, baseType: !1088, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{!159, !1070, !1091}
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1085, file: !1072, line: 34, baseType: !1093, size: 64, offset: 64)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{null, !1070, !159}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1085, file: !1072, line: 35, baseType: !1097, size: 64, offset: 128)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!159, !1070, !159, !1091}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1085, file: !1072, line: 36, baseType: !1101, size: 64, offset: 192)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!91, !1070, !159}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1071, file: !1072, line: 27, baseType: !91, size: 32, offset: 768)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1071, file: !1072, line: 28, baseType: !1106, size: 64, offset: 832)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1108)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !20, line: 994, size: 1856, align: 64, elements: !1109)
!1109 = !{!1110, !1121, !1122, !1124, !1125, !1126, !1127, !1128, !1189, !1387, !1396, !1402, !1403, !1775, !1776, !1777, !1778, !1780, !1781, !1784}
!1110 = !DIDerivedType(tag: DW_TAG_member, scope: !1108, file: !20, line: 995, baseType: !1111, size: 128)
!1111 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1108, file: !20, line: 995, size: 128, elements: !1112)
!1112 = !{!1113, !1119, !1120}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1111, file: !20, line: 996, baseType: !1114, size: 64)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1115, line: 60, size: 64, elements: !1116)
!1115 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1116 = !{!1117}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1114, file: !1115, line: 61, baseType: !1118, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1111, file: !20, line: 997, baseType: !851, size: 128, align: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1111, file: !20, line: 998, baseType: !13, size: 32)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1108, file: !20, line: 1005, baseType: !248, size: 32, offset: 128)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1108, file: !20, line: 1006, baseType: !1123, size: 32, offset: 160)
!1123 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !158, line: 156, baseType: !13)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1108, file: !20, line: 1007, baseType: !188, size: 64, offset: 192)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1108, file: !20, line: 1008, baseType: !184, size: 256, offset: 256)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1108, file: !20, line: 1009, baseType: !563, size: 64, offset: 512)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1108, file: !20, line: 1010, baseType: !13, size: 32, offset: 576)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1108, file: !20, line: 1011, baseType: !1129, size: 256, offset: 640)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !20, line: 948, size: 256, elements: !1130)
!1130 = !{!1131, !1152, !1185, !1186, !1187, !1188}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1129, file: !20, line: 949, baseType: !1132, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1133, line: 34, baseType: !1134)
!1133 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1133, line: 25, size: 64, elements: !1135)
!1135 = !{!1136}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1134, file: !1133, line: 26, baseType: !1137, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1138, line: 27, baseType: !1139)
!1138 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1138, line: 13, size: 64, elements: !1140)
!1140 = !{!1141, !1151}
!1141 = !DIDerivedType(tag: DW_TAG_member, scope: !1139, file: !1138, line: 14, baseType: !1142, size: 32)
!1142 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1139, file: !1138, line: 14, size: 32, elements: !1143)
!1143 = !{!1144, !1145}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1142, file: !1138, line: 15, baseType: !213, size: 32)
!1145 = !DIDerivedType(tag: DW_TAG_member, scope: !1142, file: !1138, line: 16, baseType: !1146, size: 32)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1142, file: !1138, line: 16, size: 32, elements: !1147)
!1147 = !{!1148, !1149}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1146, file: !1138, line: 18, baseType: !221, size: 8)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1146, file: !1138, line: 19, baseType: !1150, size: 24, offset: 8)
!1150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 24, elements: !324)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1139, file: !1138, line: 26, baseType: !205, size: 32, offset: 32)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1129, file: !20, line: 950, baseType: !1153, size: 64, offset: 64)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !25, line: 59, size: 768, elements: !1155)
!1155 = !{!1156, !1162, !1163, !1164, !1166, !1167, !1174, !1175}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1154, file: !25, line: 61, baseType: !1157, size: 32)
!1157 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1158, line: 113, baseType: !1159)
!1158 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1158, line: 111, size: 32, elements: !1160)
!1160 = !{!1161}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1159, file: !1158, line: 112, baseType: !213, size: 32)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1154, file: !25, line: 62, baseType: !13, size: 32, offset: 32)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1154, file: !25, line: 63, baseType: !248, size: 32, offset: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1154, file: !25, line: 65, baseType: !1165, size: 256, offset: 128)
!1165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !999, size: 256, elements: !861)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1154, file: !25, line: 66, baseType: !999, size: 64, offset: 384)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1154, file: !25, line: 68, baseType: !1168, size: 192, offset: 448)
!1168 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1169, line: 41, baseType: !1170)
!1169 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1169, line: 37, size: 192, elements: !1171)
!1171 = !{!1172, !1173}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1170, file: !1169, line: 38, baseType: !248, size: 32)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1170, file: !1169, line: 39, baseType: !239, size: 128, offset: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1154, file: !25, line: 69, baseType: !851, size: 128, align: 64, offset: 640)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1154, file: !25, line: 70, baseType: !1176, offset: 768)
!1176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1177, elements: !1183)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !25, line: 54, size: 128, elements: !1178)
!1178 = !{!1179, !1180}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1177, file: !25, line: 55, baseType: !91, size: 32)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1177, file: !25, line: 56, baseType: !1181, size: 64, offset: 64)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !25, line: 56, flags: DIFlagFwdDecl)
!1183 = !{!1184}
!1184 = !DISubrange(count: -1)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1129, file: !20, line: 951, baseType: !24, size: 32, offset: 128)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1129, file: !20, line: 952, baseType: !408, size: 32, offset: 160)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1129, file: !20, line: 952, baseType: !408, size: 32, offset: 192)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1129, file: !20, line: 953, baseType: !91, size: 32, offset: 224)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1108, file: !20, line: 1012, baseType: !1190, size: 64, offset: 896)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1192)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1193, line: 110, size: 1472, elements: !1194)
!1193 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1194 = !{!1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1211, !1212, !1213, !1214, !1215, !1216, !1331, !1332, !1333, !1334, !1335, !1366, !1370, !1374, !1382}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1192, file: !1193, line: 111, baseType: !188, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1192, file: !1193, line: 112, baseType: !408, size: 32, offset: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1192, file: !1193, line: 113, baseType: !417, size: 32, offset: 96)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1192, file: !1193, line: 114, baseType: !408, size: 32, offset: 128)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1192, file: !1193, line: 115, baseType: !417, size: 32, offset: 160)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1192, file: !1193, line: 116, baseType: !408, size: 32, offset: 192)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1192, file: !1193, line: 117, baseType: !417, size: 32, offset: 224)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1192, file: !1193, line: 118, baseType: !408, size: 32, offset: 256)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1192, file: !1193, line: 119, baseType: !417, size: 32, offset: 288)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1192, file: !1193, line: 120, baseType: !13, size: 32, offset: 320)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1192, file: !1193, line: 121, baseType: !1206, size: 64, offset: 384)
!1206 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1207, line: 24, baseType: !1208)
!1207 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1207, line: 24, size: 64, elements: !1209)
!1209 = !{!1210}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1208, file: !1207, line: 24, baseType: !475, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1192, file: !1193, line: 122, baseType: !1206, size: 64, offset: 448)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1192, file: !1193, line: 123, baseType: !1206, size: 64, offset: 512)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1192, file: !1193, line: 124, baseType: !1206, size: 64, offset: 576)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1192, file: !1193, line: 125, baseType: !1206, size: 64, offset: 640)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1192, file: !1193, line: 127, baseType: !223, size: 8, offset: 704)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1192, file: !1193, line: 129, baseType: !1217, size: 64, offset: 768)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1219, line: 195, size: 1728, elements: !1220)
!1219 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1220 = !{!1221, !1222, !1225, !1230, !1239, !1242, !1243, !1250, !1251, !1252, !1253, !1256, !1257, !1258, !1259, !1260, !1295, !1316}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1218, file: !1219, line: 196, baseType: !1157, size: 32)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1218, file: !1219, line: 197, baseType: !1223, size: 32, offset: 32)
!1223 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1219, line: 28, baseType: !1224)
!1224 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !158, line: 104, baseType: !656)
!1225 = !DIDerivedType(tag: DW_TAG_member, scope: !1218, file: !1219, line: 198, baseType: !1226, size: 192, offset: 64)
!1226 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1218, file: !1219, line: 198, size: 192, elements: !1227)
!1227 = !{!1228, !1229}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1226, file: !1219, line: 199, baseType: !239, size: 128)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1226, file: !1219, line: 200, baseType: !165, size: 192, align: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1218, file: !1219, line: 205, baseType: !1231, size: 320, offset: 256)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1232, line: 48, size: 320, elements: !1233)
!1232 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1233 = !{!1234, !1235, !1236, !1237, !1238}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1231, file: !1232, line: 49, baseType: !188, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1231, file: !1232, line: 55, baseType: !188, size: 64, offset: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1231, file: !1232, line: 57, baseType: !234, size: 32, offset: 128)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1231, file: !1232, line: 59, baseType: !200, size: 32, offset: 160)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1231, file: !1232, line: 60, baseType: !239, size: 128, offset: 192)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1218, file: !1219, line: 206, baseType: !1240, size: 64, offset: 576)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1219, line: 206, flags: DIFlagFwdDecl)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1218, file: !1219, line: 207, baseType: !159, size: 64, offset: 640)
!1243 = !DIDerivedType(tag: DW_TAG_member, scope: !1218, file: !1219, line: 208, baseType: !1244, size: 64, offset: 704)
!1244 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1218, file: !1219, line: 208, size: 64, elements: !1245)
!1245 = !{!1246, !1249}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1244, file: !1219, line: 209, baseType: !1247, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1248, line: 8, baseType: !196)
!1248 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1244, file: !1219, line: 210, baseType: !1247, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1218, file: !1219, line: 212, baseType: !1247, size: 64, offset: 768)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1218, file: !1219, line: 213, baseType: !408, size: 32, offset: 832)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1218, file: !1219, line: 214, baseType: !417, size: 32, offset: 864)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1218, file: !1219, line: 215, baseType: !1254, size: 32, offset: 896)
!1254 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1219, line: 31, baseType: !1255)
!1255 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !158, line: 110, baseType: !471)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1218, file: !1219, line: 216, baseType: !231, size: 16, offset: 928)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1218, file: !1219, line: 217, baseType: !231, size: 16, offset: 944)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1218, file: !1219, line: 221, baseType: !769, size: 16, offset: 960)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1218, file: !1219, line: 228, baseType: !169, size: 64, offset: 1024)
!1260 = !DIDerivedType(tag: DW_TAG_member, scope: !1218, file: !1219, line: 245, baseType: !1261, size: 320, offset: 1088)
!1261 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1218, file: !1219, line: 245, size: 320, elements: !1262)
!1262 = !{!1263, !1287}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1261, file: !1219, line: 246, baseType: !1264, size: 320)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1219, line: 114, size: 320, elements: !1265)
!1265 = !{!1266, !1267, !1276, !1279, !1286}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1264, file: !1219, line: 116, baseType: !169, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_member, scope: !1264, file: !1219, line: 117, baseType: !1268, size: 64, offset: 64)
!1268 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1264, file: !1219, line: 117, size: 64, elements: !1269)
!1269 = !{!1270, !1275}
!1270 = !DIDerivedType(tag: DW_TAG_member, scope: !1268, file: !1219, line: 118, baseType: !1271, size: 64)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1268, file: !1219, line: 118, size: 64, elements: !1272)
!1272 = !{!1273, !1274}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1271, file: !1219, line: 120, baseType: !229, size: 16)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1271, file: !1219, line: 121, baseType: !3, size: 48, offset: 16)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1268, file: !1219, line: 127, baseType: !169, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1264, file: !1219, line: 129, baseType: !1277, size: 64, offset: 128)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1219, line: 102, flags: DIFlagFwdDecl)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1264, file: !1219, line: 130, baseType: !1280, size: 64, offset: 192)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1219, line: 108, size: 192, elements: !1282)
!1282 = !{!1283, !1284, !1285}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1281, file: !1219, line: 109, baseType: !851, size: 128, align: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1281, file: !1219, line: 110, baseType: !1157, size: 32, offset: 128)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1281, file: !1219, line: 111, baseType: !718, size: 8, offset: 160)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1264, file: !1219, line: 131, baseType: !174, size: 64, offset: 256)
!1287 = !DIDerivedType(tag: DW_TAG_member, scope: !1261, file: !1219, line: 247, baseType: !1288, size: 320)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1261, file: !1219, line: 247, size: 320, elements: !1289)
!1289 = !{!1290, !1291, !1292, !1293, !1294}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1288, file: !1219, line: 248, baseType: !169, size: 64)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1288, file: !1219, line: 249, baseType: !169, size: 64, offset: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1288, file: !1219, line: 250, baseType: !1277, size: 64, offset: 128)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1288, file: !1219, line: 251, baseType: !1280, size: 64, offset: 192)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1288, file: !1219, line: 252, baseType: !323, size: 64, offset: 256)
!1295 = !DIDerivedType(tag: DW_TAG_member, scope: !1218, file: !1219, line: 260, baseType: !1296, size: 256, offset: 1408)
!1296 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1218, file: !1219, line: 260, size: 256, elements: !1297)
!1297 = !{!1298, !1304}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1296, file: !1219, line: 261, baseType: !1299, size: 256)
!1299 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1219, line: 134, size: 256, elements: !1300)
!1300 = !{!1301, !1302}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1299, file: !1219, line: 135, baseType: !159, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1299, file: !1219, line: 136, baseType: !1303, size: 256)
!1303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 256, elements: !861)
!1304 = !DIDerivedType(tag: DW_TAG_member, scope: !1296, file: !1219, line: 262, baseType: !1305, size: 256)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1296, file: !1219, line: 262, size: 256, elements: !1306)
!1306 = !{!1307, !1308}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1305, file: !1219, line: 264, baseType: !239, size: 128)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1305, file: !1219, line: 265, baseType: !1309, size: 128, offset: 128)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1310, line: 22, size: 128, elements: !1311)
!1310 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1311 = !{!1312, !1315}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1309, file: !1310, line: 23, baseType: !1313, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1310, line: 23, flags: DIFlagFwdDecl)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1309, file: !1310, line: 24, baseType: !169, size: 64, offset: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1218, file: !1219, line: 280, baseType: !1317, size: 64, offset: 1664)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1219, line: 176, size: 192, elements: !1319)
!1319 = !{!1320, !1329, !1330}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1318, file: !1219, line: 177, baseType: !1321, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1219, line: 171, baseType: !1322)
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1323 = !DISubroutineType(types: !1324)
!1324 = !{!91, !1217, !1325, !1327, !1217}
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1278)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1299)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1318, file: !1219, line: 178, baseType: !1217, size: 64, offset: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1318, file: !1219, line: 179, baseType: !1277, size: 64, offset: 128)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1192, file: !1193, line: 130, baseType: !1217, size: 64, offset: 832)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1192, file: !1193, line: 131, baseType: !1217, size: 64, offset: 896)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1192, file: !1193, line: 132, baseType: !1217, size: 64, offset: 960)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1192, file: !1193, line: 135, baseType: !159, size: 64, offset: 1024)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1192, file: !1193, line: 137, baseType: !1336, size: 64, offset: 1088)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1338, line: 14, size: 1088, elements: !1339)
!1338 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1339 = !{!1340, !1341, !1350, !1351, !1352, !1353, !1354, !1355}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1337, file: !1338, line: 15, baseType: !1157, size: 32)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1337, file: !1338, line: 17, baseType: !1342, size: 320, offset: 64)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1343, line: 22, size: 320, elements: !1344)
!1343 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1344 = !{!1345, !1346, !1347, !1348}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1342, file: !1343, line: 23, baseType: !200, size: 32)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1342, file: !1343, line: 24, baseType: !194, size: 64, offset: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1342, file: !1343, line: 26, baseType: !239, size: 128, offset: 128)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1342, file: !1343, line: 28, baseType: !1349, size: 64, offset: 256)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1337, file: !1338, line: 19, baseType: !169, size: 64, offset: 384)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1337, file: !1338, line: 20, baseType: !188, size: 64, offset: 448)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1337, file: !1338, line: 23, baseType: !877, size: 128, offset: 512)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1337, file: !1338, line: 24, baseType: !408, size: 32, offset: 640)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1337, file: !1338, line: 29, baseType: !188, size: 64, offset: 704)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1337, file: !1338, line: 36, baseType: !1356, size: 320, offset: 768)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1357, line: 15, size: 320, elements: !1358)
!1357 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1358 = !{!1359, !1360, !1361, !1362, !1363, !1364, !1365}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1356, file: !1357, line: 16, baseType: !200, size: 32)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1356, file: !1357, line: 18, baseType: !91, size: 32, offset: 32)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1356, file: !1357, line: 19, baseType: !91, size: 32, offset: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1356, file: !1357, line: 20, baseType: !91, size: 32, offset: 96)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1356, file: !1357, line: 21, baseType: !91, size: 32, offset: 128)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1356, file: !1357, line: 22, baseType: !169, size: 64, offset: 192)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1356, file: !1357, line: 23, baseType: !169, size: 64, offset: 256)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1192, file: !1193, line: 138, baseType: !1367, size: 64, offset: 1152)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1369, line: 901, flags: DIFlagFwdDecl)
!1369 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1192, file: !1193, line: 139, baseType: !1371, size: 64, offset: 1216)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1373, line: 16, flags: DIFlagFwdDecl)
!1373 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1192, file: !1193, line: 140, baseType: !1375, size: 64, offset: 1280)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1193, line: 25, size: 64, elements: !1377)
!1377 = !{!1378, !1379, !1380}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1376, file: !1193, line: 26, baseType: !213, size: 32)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1376, file: !1193, line: 27, baseType: !91, size: 32, offset: 32)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1376, file: !1193, line: 28, baseType: !1381, offset: 64)
!1381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !417, elements: !1183)
!1382 = !DIDerivedType(tag: DW_TAG_member, scope: !1192, file: !1193, line: 142, baseType: !1383, size: 128, offset: 1344)
!1383 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1192, file: !1193, line: 142, size: 128, elements: !1384)
!1384 = !{!1385, !1386}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1383, file: !1193, line: 143, baseType: !91, size: 32)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1383, file: !1193, line: 144, baseType: !851, size: 128, align: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1108, file: !20, line: 1013, baseType: !1388, size: 256, offset: 960)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !20, line: 970, size: 256, elements: !1389)
!1389 = !{!1390, !1391, !1392, !1393, !1394, !1395}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1388, file: !20, line: 971, baseType: !169, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1388, file: !20, line: 972, baseType: !13, size: 32, offset: 64)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1388, file: !20, line: 973, baseType: !13, size: 32, offset: 96)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1388, file: !20, line: 974, baseType: !13, size: 32, offset: 128)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1388, file: !20, line: 975, baseType: !13, size: 32, offset: 160)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1388, file: !20, line: 976, baseType: !563, size: 64, offset: 192)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1108, file: !20, line: 1014, baseType: !1397, size: 128, offset: 1216)
!1397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1398, line: 8, size: 128, elements: !1399)
!1398 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1399 = !{!1400, !1401}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1397, file: !1398, line: 9, baseType: !547, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1397, file: !1398, line: 10, baseType: !437, size: 64, offset: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1108, file: !20, line: 1015, baseType: !402, size: 64, offset: 1344)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1108, file: !20, line: 1016, baseType: !1404, size: 64, offset: 1408)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1406)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !20, line: 1914, size: 2112, elements: !1407)
!1407 = !{!1408, !1409, !1414, !1418, !1422, !1450, !1451, !1457, !1470, !1478, !1482, !1483, !1696, !1697, !1701, !1706, !1707, !1711, !1715, !1721, !1722, !1726, !1727, !1734, !1738, !1742, !1748, !1752, !1756, !1760, !1764, !1765, !1771}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1406, file: !20, line: 1915, baseType: !590, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1406, file: !20, line: 1916, baseType: !1410, size: 64, offset: 64)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{!563, !1413, !563, !91}
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1406, file: !20, line: 1917, baseType: !1415, size: 64, offset: 128)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!355, !1413, !323, !370, !1091}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1406, file: !20, line: 1918, baseType: !1419, size: 64, offset: 192)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{!355, !1413, !174, !370, !1091}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1406, file: !20, line: 1919, baseType: !1423, size: 64, offset: 256)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = !DISubroutineType(types: !1425)
!1425 = !{!355, !1426, !1448}
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !20, line: 373, size: 384, elements: !1428)
!1428 = !{!1429, !1430, !1431, !1435, !1436, !1437, !1438}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1427, file: !20, line: 374, baseType: !1413, size: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1427, file: !20, line: 375, baseType: !563, size: 64, offset: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1427, file: !20, line: 376, baseType: !1432, size: 64, offset: 128)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = !DISubroutineType(types: !1434)
!1434 = !{null, !1426, !359}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1427, file: !20, line: 377, baseType: !159, size: 64, offset: 192)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1427, file: !20, line: 378, baseType: !91, size: 32, offset: 256)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1427, file: !20, line: 379, baseType: !229, size: 16, offset: 288)
!1438 = !DIDerivedType(tag: DW_TAG_member, scope: !1427, file: !20, line: 380, baseType: !1439, size: 64, offset: 320)
!1439 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1427, file: !20, line: 380, size: 64, elements: !1440)
!1440 = !{!1441, !1444}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1439, file: !20, line: 386, baseType: !1442, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !20, line: 386, flags: DIFlagFwdDecl)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1439, file: !20, line: 395, baseType: !1445, size: 64)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{!355, !159}
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !20, line: 69, flags: DIFlagFwdDecl)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1406, file: !20, line: 1920, baseType: !1423, size: 64, offset: 320)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1406, file: !20, line: 1921, baseType: !1452, size: 64, offset: 384)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{!91, !1426, !1455, !13}
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !20, line: 53, flags: DIFlagFwdDecl)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1406, file: !20, line: 1923, baseType: !1458, size: 64, offset: 448)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DISubroutineType(types: !1460)
!1460 = !{!91, !1413, !1461}
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !20, line: 1858, size: 128, elements: !1463)
!1463 = !{!1464, !1469}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1462, file: !20, line: 1859, baseType: !1465, size: 64)
!1465 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !20, line: 1855, baseType: !1466)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = !DISubroutineType(types: !1468)
!1468 = !{!718, !1461, !174, !91, !563, !475, !13}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1462, file: !20, line: 1860, baseType: !563, size: 64, offset: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1406, file: !20, line: 1924, baseType: !1471, size: 64, offset: 512)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = !DISubroutineType(types: !1473)
!1473 = !{!1474, !1413, !1476}
!1474 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1475, line: 59, baseType: !13)
!1475 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !20, line: 61, flags: DIFlagFwdDecl)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1406, file: !20, line: 1925, baseType: !1479, size: 64, offset: 576)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = !DISubroutineType(types: !1481)
!1481 = !{!359, !1413, !13, !169}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1406, file: !20, line: 1926, baseType: !1479, size: 64, offset: 640)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1406, file: !20, line: 1927, baseType: !1484, size: 64, offset: 704)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DISubroutineType(types: !1486)
!1486 = !{!91, !1413, !1487}
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !1369, line: 625, size: 1344, elements: !1489)
!1489 = !{!1490, !1499, !1654, !1660, !1667, !1668, !1673, !1674, !1679, !1680, !1683, !1687, !1688, !1689, !1690, !1691, !1694}
!1490 = !DIDerivedType(tag: DW_TAG_member, scope: !1488, file: !1369, line: 628, baseType: !1491, size: 128)
!1491 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1488, file: !1369, line: 628, size: 128, elements: !1492)
!1492 = !{!1493, !1498}
!1493 = !DIDerivedType(tag: DW_TAG_member, scope: !1491, file: !1369, line: 629, baseType: !1494, size: 128)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1491, file: !1369, line: 629, size: 128, elements: !1495)
!1495 = !{!1496, !1497}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1494, file: !1369, line: 631, baseType: !169, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1494, file: !1369, line: 632, baseType: !169, size: 64, offset: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1491, file: !1369, line: 635, baseType: !851, size: 128, align: 64)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1488, file: !1369, line: 639, baseType: !1500, size: 64, offset: 128)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1369, line: 733, size: 10240, elements: !1502)
!1502 = !{!1503, !1652}
!1503 = !DIDerivedType(tag: DW_TAG_member, scope: !1501, file: !1369, line: 734, baseType: !1504, size: 10240)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1501, file: !1369, line: 734, size: 10240, elements: !1505)
!1505 = !{!1506, !1510, !1523, !1527, !1528, !1529, !1530, !1531, !1532, !1541, !1542, !1543, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1582, !1584, !1587, !1632, !1633, !1634, !1637, !1638, !1639, !1642, !1643, !1644, !1650, !1651}
!1506 = !DIDerivedType(tag: DW_TAG_member, scope: !1504, file: !1369, line: 739, baseType: !1507, size: 512, align: 512)
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1504, file: !1369, line: 739, size: 512, align: 512, elements: !1508)
!1508 = !{!1509}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1507, file: !1369, line: 747, baseType: !213, size: 32)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1504, file: !1369, line: 750, baseType: !1511, size: 128, offset: 512)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1512, line: 218, size: 128, elements: !1513)
!1512 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1513 = !{!1514, !1521, !1522}
!1514 = !DIDerivedType(tag: DW_TAG_member, scope: !1511, file: !1512, line: 219, baseType: !1515, size: 32)
!1515 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1511, file: !1512, line: 219, size: 32, elements: !1516)
!1516 = !{!1517, !1518}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1515, file: !1512, line: 220, baseType: !248, size: 32)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1515, file: !1512, line: 221, baseType: !1519)
!1519 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1512, line: 197, baseType: !1520)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1512, line: 197, elements: !266)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1511, file: !1512, line: 223, baseType: !13, size: 32, offset: 32)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1511, file: !1512, line: 224, baseType: !159, size: 64, offset: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1504, file: !1369, line: 752, baseType: !1524, size: 64, offset: 640)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = !DISubroutineType(types: !1526)
!1526 = !{!169, !1413, !169, !169, !169, !169}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1504, file: !1369, line: 756, baseType: !169, size: 64, offset: 704)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1504, file: !1369, line: 757, baseType: !169, size: 64, offset: 768)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1504, file: !1369, line: 760, baseType: !169, size: 64, offset: 832)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1504, file: !1369, line: 761, baseType: !169, size: 64, offset: 896)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1504, file: !1369, line: 763, baseType: !169, size: 64, offset: 960)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1504, file: !1369, line: 764, baseType: !1533, size: 64, offset: 1024)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1535, line: 299, baseType: !1536)
!1535 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1535, line: 299, size: 64, elements: !1537)
!1537 = !{!1538}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1536, file: !1535, line: 299, baseType: !1539, size: 64)
!1539 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1540, line: 18, baseType: !169)
!1540 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1504, file: !1369, line: 773, baseType: !213, size: 32, offset: 1088)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1504, file: !1369, line: 785, baseType: !213, size: 32, offset: 1120)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1504, file: !1369, line: 795, baseType: !1544, size: 64, offset: 1152)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !1369, line: 726, size: 128, elements: !1546)
!1546 = !{!1547, !1548}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1545, file: !1369, line: 727, baseType: !475, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1545, file: !1369, line: 728, baseType: !91, size: 32, offset: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1504, file: !1369, line: 801, baseType: !169, size: 64, offset: 1216)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1504, file: !1369, line: 804, baseType: !188, size: 64, offset: 1280)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1504, file: !1369, line: 806, baseType: !91, size: 32, offset: 1344)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1504, file: !1369, line: 808, baseType: !248, size: 32, offset: 1376)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1504, file: !1369, line: 823, baseType: !1231, size: 320, offset: 1408)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1504, file: !1369, line: 825, baseType: !239, size: 128, offset: 1728)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1504, file: !1369, line: 845, baseType: !91, size: 32, offset: 1856)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1504, file: !1369, line: 849, baseType: !169, size: 64, offset: 1920)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1504, file: !1369, line: 850, baseType: !169, size: 64, offset: 1984)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1504, file: !1369, line: 852, baseType: !169, size: 64, offset: 2048)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1504, file: !1369, line: 853, baseType: !169, size: 64, offset: 2112)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1504, file: !1369, line: 854, baseType: !190, size: 64, offset: 2176)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1504, file: !1369, line: 855, baseType: !169, size: 64, offset: 2240)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1504, file: !1369, line: 856, baseType: !169, size: 64, offset: 2304)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1504, file: !1369, line: 857, baseType: !169, size: 64, offset: 2368)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1504, file: !1369, line: 858, baseType: !169, size: 64, offset: 2432)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1504, file: !1369, line: 865, baseType: !448, size: 32, offset: 2496)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1504, file: !1369, line: 867, baseType: !248, size: 32, offset: 2528)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1504, file: !1369, line: 869, baseType: !169, size: 64, offset: 2560)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1504, file: !1369, line: 869, baseType: !169, size: 64, offset: 2624)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1504, file: !1369, line: 869, baseType: !169, size: 64, offset: 2688)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1504, file: !1369, line: 869, baseType: !169, size: 64, offset: 2752)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1504, file: !1369, line: 870, baseType: !169, size: 64, offset: 2816)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1504, file: !1369, line: 870, baseType: !169, size: 64, offset: 2880)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1504, file: !1369, line: 870, baseType: !169, size: 64, offset: 2944)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1504, file: !1369, line: 871, baseType: !169, size: 64, offset: 3008)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1504, file: !1369, line: 871, baseType: !169, size: 64, offset: 3072)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1504, file: !1369, line: 871, baseType: !169, size: 64, offset: 3136)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1504, file: !1369, line: 871, baseType: !169, size: 64, offset: 3200)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1504, file: !1369, line: 873, baseType: !1579, size: 3328, offset: 3264)
!1579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 3328, elements: !1580)
!1580 = !{!1581}
!1581 = !DISubrange(count: 52)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1504, file: !1369, line: 875, baseType: !1583, size: 1280, offset: 6592)
!1583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1342, size: 1280, elements: !861)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1504, file: !1369, line: 877, baseType: !1585, size: 64, offset: 7872)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1369, line: 877, flags: DIFlagFwdDecl)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1504, file: !1369, line: 880, baseType: !1588, size: 1088, offset: 7936)
!1588 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1589, line: 72, baseType: !1590)
!1589 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1590 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1589, line: 23, size: 1088, elements: !1591)
!1591 = !{!1592, !1593, !1594, !1595, !1596, !1599, !1600, !1601, !1602, !1629, !1630, !1631}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1590, file: !1589, line: 28, baseType: !475, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1590, file: !1589, line: 38, baseType: !190, size: 64, offset: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1590, file: !1589, line: 40, baseType: !169, size: 64, offset: 128)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1590, file: !1589, line: 43, baseType: !1231, size: 320, offset: 192)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1590, file: !1589, line: 44, baseType: !1597, size: 64, offset: 512)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1589, line: 44, flags: DIFlagFwdDecl)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1590, file: !1589, line: 48, baseType: !169, size: 64, offset: 576)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1590, file: !1589, line: 59, baseType: !184, size: 256, offset: 640)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1590, file: !1589, line: 60, baseType: !159, size: 64, offset: 896)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1590, file: !1589, line: 61, baseType: !1603, size: 64, offset: 960)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1605)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1606, line: 13, size: 1216, elements: !1607)
!1606 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1607 = !{!1608, !1609, !1610, !1611, !1612, !1613, !1614, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1605, file: !1606, line: 14, baseType: !159, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1605, file: !1606, line: 15, baseType: !169, size: 64, offset: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1605, file: !1606, line: 17, baseType: !169, size: 64, offset: 128)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1605, file: !1606, line: 17, baseType: !169, size: 64, offset: 192)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1605, file: !1606, line: 18, baseType: !169, size: 64, offset: 256)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1605, file: !1606, line: 18, baseType: !169, size: 64, offset: 320)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1605, file: !1606, line: 19, baseType: !1615, size: 64, offset: 384)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1605, file: !1606, line: 21, baseType: !359, size: 64, offset: 448)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1605, file: !1606, line: 23, baseType: !359, size: 64, offset: 512)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1605, file: !1606, line: 24, baseType: !359, size: 64, offset: 576)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1605, file: !1606, line: 25, baseType: !359, size: 64, offset: 640)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1605, file: !1606, line: 26, baseType: !359, size: 64, offset: 704)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1605, file: !1606, line: 27, baseType: !359, size: 64, offset: 768)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1605, file: !1606, line: 28, baseType: !359, size: 64, offset: 832)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1605, file: !1606, line: 29, baseType: !359, size: 64, offset: 896)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1605, file: !1606, line: 30, baseType: !359, size: 64, offset: 960)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1605, file: !1606, line: 31, baseType: !359, size: 64, offset: 1024)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1605, file: !1606, line: 32, baseType: !359, size: 64, offset: 1088)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1605, file: !1606, line: 33, baseType: !359, size: 64, offset: 1152)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1590, file: !1589, line: 63, baseType: !213, size: 32, offset: 1024)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1590, file: !1589, line: 69, baseType: !229, size: 16, offset: 1056)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1590, file: !1589, line: 70, baseType: !767, size: 16, offset: 1072)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1504, file: !1369, line: 882, baseType: !169, size: 64, offset: 9024)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1504, file: !1369, line: 885, baseType: !248, size: 32, offset: 9088)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1504, file: !1369, line: 886, baseType: !1635, size: 64, offset: 9152)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1369, line: 732, flags: DIFlagFwdDecl)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1504, file: !1369, line: 901, baseType: !1367, size: 64, offset: 9216)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1504, file: !1369, line: 904, baseType: !1413, size: 64, offset: 9280)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1504, file: !1369, line: 906, baseType: !1640, size: 64, offset: 9344)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1369, line: 906, flags: DIFlagFwdDecl)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1504, file: !1369, line: 930, baseType: !213, size: 32, offset: 9408)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1504, file: !1369, line: 933, baseType: !213, size: 32, offset: 9440)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1504, file: !1369, line: 935, baseType: !1645, size: 64, offset: 9472)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !50, line: 103, size: 64, elements: !1646)
!1646 = !{!1647}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1645, file: !50, line: 104, baseType: !1648, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !50, line: 101, flags: DIFlagFwdDecl)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1504, file: !1369, line: 940, baseType: !188, size: 64, offset: 9536)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1504, file: !1369, line: 942, baseType: !891, size: 256, offset: 9600)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1501, file: !1369, line: 986, baseType: !1653, offset: 10240)
!1653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, elements: !1183)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1488, file: !1369, line: 640, baseType: !1655, size: 64, offset: 192)
!1655 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1535, line: 297, baseType: !1656)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1535, line: 297, size: 64, elements: !1657)
!1657 = !{!1658}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1656, file: !1535, line: 297, baseType: !1659, size: 64)
!1659 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1540, line: 19, baseType: !169)
!1660 = !DIDerivedType(tag: DW_TAG_member, scope: !1488, file: !1369, line: 646, baseType: !1661, size: 64, offset: 256)
!1661 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1488, file: !1369, line: 646, size: 64, elements: !1662)
!1662 = !{!1663, !1666}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1661, file: !1369, line: 647, baseType: !1664, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1665)
!1665 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !1369, line: 542, baseType: !169)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1661, file: !1369, line: 648, baseType: !1665, size: 64)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1488, file: !1369, line: 666, baseType: !91, size: 32, offset: 320)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1488, file: !1369, line: 667, baseType: !1669, size: 64, offset: 384)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !1369, line: 579, size: 320, elements: !1671)
!1671 = !{!1672}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1670, file: !1369, line: 580, baseType: !1231, size: 320)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1488, file: !1369, line: 670, baseType: !718, size: 8, offset: 448)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1488, file: !1369, line: 681, baseType: !1675, size: 256, offset: 512)
!1675 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1488, file: !1369, line: 678, size: 256, elements: !1676)
!1676 = !{!1677, !1678}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1675, file: !1369, line: 679, baseType: !165, size: 192, align: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1675, file: !1369, line: 680, baseType: !169, size: 64, offset: 192)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1488, file: !1369, line: 689, baseType: !239, size: 128, offset: 768)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1488, file: !1369, line: 691, baseType: !1681, size: 64, offset: 896)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1369, line: 691, flags: DIFlagFwdDecl)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1488, file: !1369, line: 694, baseType: !1684, size: 64, offset: 960)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1686)
!1686 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1369, line: 694, flags: DIFlagFwdDecl)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1488, file: !1369, line: 697, baseType: !169, size: 64, offset: 1024)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1488, file: !1369, line: 699, baseType: !1413, size: 64, offset: 1088)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1488, file: !1369, line: 700, baseType: !159, size: 64, offset: 1152)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1488, file: !1369, line: 711, baseType: !188, size: 64, offset: 1216)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1488, file: !1369, line: 717, baseType: !1692, size: 64, offset: 1280)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1369, line: 717, flags: DIFlagFwdDecl)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1488, file: !1369, line: 722, baseType: !1695, offset: 1344)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !1369, line: 570, elements: !266)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1406, file: !20, line: 1928, baseType: !169, size: 64, offset: 768)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1406, file: !20, line: 1929, baseType: !1698, size: 64, offset: 832)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!91, !402, !1413}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1406, file: !20, line: 1930, baseType: !1702, size: 64, offset: 896)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{!91, !1413, !1705}
!1705 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !20, line: 1061, baseType: !159)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1406, file: !20, line: 1931, baseType: !1698, size: 64, offset: 960)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1406, file: !20, line: 1932, baseType: !1708, size: 64, offset: 1024)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DISubroutineType(types: !1710)
!1710 = !{!91, !1413, !563, !563, !91}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1406, file: !20, line: 1933, baseType: !1712, size: 64, offset: 1088)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{!91, !91, !1413, !91}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1406, file: !20, line: 1934, baseType: !1716, size: 64, offset: 1152)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{!91, !1413, !91, !1719}
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !20, line: 1063, flags: DIFlagFwdDecl)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1406, file: !20, line: 1935, baseType: !1524, size: 64, offset: 1216)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1406, file: !20, line: 1936, baseType: !1723, size: 64, offset: 1280)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{!91, !91}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1406, file: !20, line: 1937, baseType: !1716, size: 64, offset: 1344)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1406, file: !20, line: 1938, baseType: !1728, size: 64, offset: 1408)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{!355, !1731, !1413, !1091, !370, !13}
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1733, line: 59, flags: DIFlagFwdDecl)
!1733 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1406, file: !20, line: 1939, baseType: !1735, size: 64, offset: 1472)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{!355, !1413, !1091, !1731, !370, !13}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1406, file: !20, line: 1940, baseType: !1739, size: 64, offset: 1536)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{null, !1413}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1406, file: !20, line: 1941, baseType: !1743, size: 64, offset: 1600)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DISubroutineType(types: !1745)
!1745 = !{!91, !1413, !91, !1746, !1747}
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1406, file: !20, line: 1942, baseType: !1749, size: 64, offset: 1664)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DISubroutineType(types: !1751)
!1751 = !{!359, !1413, !91, !563, !563}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1406, file: !20, line: 1944, baseType: !1753, size: 64, offset: 1728)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{null, !1070, !1413}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1406, file: !20, line: 1948, baseType: !1757, size: 64, offset: 1792)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DISubroutineType(types: !1759)
!1759 = !{!355, !1413, !563, !1413, !563, !370, !13}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1406, file: !20, line: 1950, baseType: !1761, size: 64, offset: 1856)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{!563, !1413, !563, !1413, !563, !563, !13}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1406, file: !20, line: 1953, baseType: !1708, size: 64, offset: 1920)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1406, file: !20, line: 1954, baseType: !1766, size: 64, offset: 1984)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DISubroutineType(types: !1768)
!1768 = !{!91, !1769, !13}
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !20, line: 1911, flags: DIFlagFwdDecl)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1406, file: !20, line: 1955, baseType: !1772, size: 64, offset: 2048)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = !DISubroutineType(types: !1774)
!1774 = !{!91, !1769, !1455, !13}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1108, file: !20, line: 1018, baseType: !475, size: 64, offset: 1472)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1108, file: !20, line: 1020, baseType: !159, size: 64, offset: 1536)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1108, file: !20, line: 1023, baseType: !159, size: 64, offset: 1600)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1108, file: !20, line: 1027, baseType: !1779, size: 64, offset: 1664)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1108, file: !20, line: 1029, baseType: !398, size: 64, offset: 1728)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1108, file: !20, line: 1030, baseType: !1782, size: 32, offset: 1792)
!1782 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1783, line: 8, baseType: !471)
!1783 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1108, file: !20, line: 1031, baseType: !1782, size: 32, offset: 1824)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1071, file: !1072, line: 29, baseType: !159, size: 64, offset: 896)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1014, file: !20, line: 2077, baseType: !1067, size: 64, offset: 1088)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1014, file: !20, line: 2078, baseType: !1067, size: 64, offset: 1152)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1014, file: !20, line: 2079, baseType: !1067, size: 64, offset: 1216)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1014, file: !20, line: 2081, baseType: !1790, size: 64, offset: 1280)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{!355, !553, !91, !323, !370, !563}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1014, file: !20, line: 2082, baseType: !1794, size: 64, offset: 1344)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DISubroutineType(types: !1796)
!1796 = !{!355, !553, !91, !174, !370, !563}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1014, file: !20, line: 2083, baseType: !1798, size: 64, offset: 1408)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DISubroutineType(types: !1800)
!1800 = !{!1801, !402}
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !33, line: 296, size: 1664, elements: !1804)
!1804 = !{!1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1829, !1830, !1831}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1803, file: !33, line: 297, baseType: !877, size: 128)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1803, file: !33, line: 298, baseType: !239, size: 128, offset: 128)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1803, file: !33, line: 299, baseType: !239, size: 128, offset: 256)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1803, file: !33, line: 300, baseType: !239, size: 128, offset: 384)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1803, file: !33, line: 301, baseType: !184, size: 256, offset: 512)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1803, file: !33, line: 302, baseType: !248, size: 32, offset: 768)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1803, file: !33, line: 303, baseType: !213, size: 32, offset: 800)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1803, file: !33, line: 304, baseType: !553, size: 64, offset: 832)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1803, file: !33, line: 305, baseType: !1814, size: 64, offset: 896)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !33, line: 68, size: 64, elements: !1815)
!1815 = !{!1816, !1828}
!1816 = !DIDerivedType(tag: DW_TAG_member, scope: !1814, file: !33, line: 69, baseType: !1817, size: 32)
!1817 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1814, file: !33, line: 69, size: 32, elements: !1818)
!1818 = !{!1819, !1820, !1821}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1817, file: !33, line: 70, baseType: !408, size: 32)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1817, file: !33, line: 71, baseType: !417, size: 32)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1817, file: !33, line: 72, baseType: !1822, size: 32)
!1822 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1823, line: 24, baseType: !1824)
!1823 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1823, line: 22, size: 32, elements: !1825)
!1825 = !{!1826}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1824, file: !1823, line: 23, baseType: !1827, size: 32)
!1827 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1823, line: 20, baseType: !414)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1814, file: !33, line: 74, baseType: !32, size: 32, offset: 32)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1803, file: !33, line: 306, baseType: !563, size: 64, offset: 960)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1803, file: !33, line: 307, baseType: !169, size: 64, offset: 1024)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1803, file: !33, line: 308, baseType: !1832, size: 576, offset: 1088)
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !33, line: 205, size: 576, elements: !1833)
!1833 = !{!1834, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1832, file: !33, line: 206, baseType: !1835, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !33, line: 66, baseType: !198)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1832, file: !33, line: 207, baseType: !1835, size: 64, offset: 64)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1832, file: !33, line: 208, baseType: !1835, size: 64, offset: 128)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1832, file: !33, line: 209, baseType: !1835, size: 64, offset: 192)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1832, file: !33, line: 210, baseType: !1835, size: 64, offset: 256)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1832, file: !33, line: 211, baseType: !1835, size: 64, offset: 320)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1832, file: !33, line: 212, baseType: !1835, size: 64, offset: 384)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1832, file: !33, line: 213, baseType: !1247, size: 64, offset: 448)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1832, file: !33, line: 214, baseType: !1247, size: 64, offset: 512)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1014, file: !20, line: 2085, baseType: !1845, size: 64, offset: 1472)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DISubroutineType(types: !1847)
!1847 = !{!359, !553, !1848}
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1850, line: 15, size: 256, elements: !1851)
!1850 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1851 = !{!1852, !1853, !1854, !1855, !1856}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1849, file: !1850, line: 16, baseType: !157, size: 32)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1849, file: !1850, line: 19, baseType: !91, size: 32, offset: 32)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1849, file: !1850, line: 26, baseType: !169, size: 64, offset: 64)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1849, file: !1850, line: 33, baseType: !169, size: 64, offset: 128)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1849, file: !1850, line: 36, baseType: !1857, size: 64, offset: 192)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1369, line: 33, flags: DIFlagFwdDecl)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1014, file: !20, line: 2087, baseType: !1845, size: 64, offset: 1536)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1014, file: !20, line: 2089, baseType: !586, size: 64, offset: 1600)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !554, file: !20, line: 1198, baseType: !1862, size: 64, offset: 448)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1864)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !33, line: 324, size: 704, elements: !1865)
!1865 = !{!1866, !1870, !1874, !1878, !1879, !1880, !1881, !1882, !1887, !1892, !1896}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1864, file: !33, line: 325, baseType: !1867, size: 64)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{!91, !1802}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1864, file: !33, line: 326, baseType: !1871, size: 64, offset: 64)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = !DISubroutineType(types: !1873)
!1873 = !{!1802, !553, !91}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1864, file: !33, line: 327, baseType: !1875, size: 64, offset: 128)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DISubroutineType(types: !1877)
!1877 = !{null, !1802}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1864, file: !33, line: 328, baseType: !1867, size: 64, offset: 192)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1864, file: !33, line: 329, baseType: !1867, size: 64, offset: 256)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1864, file: !33, line: 330, baseType: !1867, size: 64, offset: 320)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1864, file: !33, line: 331, baseType: !1042, size: 64, offset: 384)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1864, file: !33, line: 334, baseType: !1883, size: 64, offset: 448)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DISubroutineType(types: !1885)
!1885 = !{!1886, !402}
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1864, file: !33, line: 335, baseType: !1888, size: 64, offset: 512)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{!91, !402, !1891}
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1864, file: !33, line: 337, baseType: !1893, size: 64, offset: 576)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DISubroutineType(types: !1895)
!1895 = !{!91, !402, !1886}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1864, file: !33, line: 339, baseType: !1897, size: 64, offset: 640)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DISubroutineType(types: !1899)
!1899 = !{!91, !553, !1900}
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !554, file: !20, line: 1199, baseType: !1902, size: 64, offset: 512)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1904)
!1904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !33, line: 430, size: 704, elements: !1905)
!1905 = !{!1906, !1912, !1913, !1917, !1918, !1919, !1934, !1957, !1961, !1962, !1985}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1904, file: !33, line: 431, baseType: !1907, size: 64)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{!91, !553, !91, !91, !1910}
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1397)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1904, file: !33, line: 432, baseType: !1042, size: 64, offset: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1904, file: !33, line: 433, baseType: !1914, size: 64, offset: 128)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DISubroutineType(types: !1916)
!1916 = !{!91, !553, !13}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1904, file: !33, line: 434, baseType: !1914, size: 64, offset: 192)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1904, file: !33, line: 435, baseType: !1042, size: 64, offset: 256)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1904, file: !33, line: 436, baseType: !1920, size: 64, offset: 320)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{!91, !553, !91, !1923}
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !33, line: 417, size: 256, elements: !1925)
!1925 = !{!1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1924, file: !33, line: 418, baseType: !91, size: 32)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1924, file: !33, line: 419, baseType: !13, size: 32, offset: 32)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1924, file: !33, line: 420, baseType: !13, size: 32, offset: 64)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1924, file: !33, line: 422, baseType: !13, size: 32, offset: 96)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1924, file: !33, line: 423, baseType: !13, size: 32, offset: 128)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1924, file: !33, line: 424, baseType: !13, size: 32, offset: 160)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1924, file: !33, line: 425, baseType: !13, size: 32, offset: 192)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1924, file: !33, line: 426, baseType: !13, size: 32, offset: 224)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1904, file: !33, line: 437, baseType: !1935, size: 64, offset: 384)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{!91, !553, !1814, !1938}
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !33, line: 345, size: 960, elements: !1940)
!1940 = !{!1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1939, file: !33, line: 346, baseType: !91, size: 32)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1939, file: !33, line: 347, baseType: !475, size: 64, offset: 64)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1939, file: !33, line: 348, baseType: !475, size: 64, offset: 128)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1939, file: !33, line: 349, baseType: !475, size: 64, offset: 192)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1939, file: !33, line: 350, baseType: !475, size: 64, offset: 256)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1939, file: !33, line: 351, baseType: !475, size: 64, offset: 320)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1939, file: !33, line: 352, baseType: !475, size: 64, offset: 384)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1939, file: !33, line: 353, baseType: !194, size: 64, offset: 448)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1939, file: !33, line: 355, baseType: !194, size: 64, offset: 512)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1939, file: !33, line: 356, baseType: !91, size: 32, offset: 576)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1939, file: !33, line: 357, baseType: !91, size: 32, offset: 608)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1939, file: !33, line: 358, baseType: !475, size: 64, offset: 640)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1939, file: !33, line: 359, baseType: !475, size: 64, offset: 704)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1939, file: !33, line: 360, baseType: !475, size: 64, offset: 768)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1939, file: !33, line: 361, baseType: !194, size: 64, offset: 832)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1939, file: !33, line: 362, baseType: !91, size: 32, offset: 896)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1904, file: !33, line: 438, baseType: !1958, size: 64, offset: 448)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = !DISubroutineType(types: !1960)
!1960 = !{!91, !553, !1900, !1938}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1904, file: !33, line: 440, baseType: !1935, size: 64, offset: 512)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1904, file: !33, line: 441, baseType: !1963, size: 64, offset: 576)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{!91, !553, !1966}
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !33, line: 411, size: 1408, elements: !1968)
!1968 = !{!1969, !1970}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1967, file: !33, line: 412, baseType: !13, size: 32)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1967, file: !33, line: 413, baseType: !1971, size: 1344, offset: 64)
!1971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1972, size: 1344, elements: !324)
!1972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !33, line: 397, size: 448, elements: !1973)
!1973 = !{!1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1984}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1972, file: !33, line: 398, baseType: !13, size: 32)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1972, file: !33, line: 399, baseType: !13, size: 32, offset: 32)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1972, file: !33, line: 401, baseType: !13, size: 32, offset: 64)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1972, file: !33, line: 402, baseType: !13, size: 32, offset: 96)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1972, file: !33, line: 403, baseType: !13, size: 32, offset: 128)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1972, file: !33, line: 404, baseType: !13, size: 32, offset: 160)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1972, file: !33, line: 405, baseType: !13, size: 32, offset: 192)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1972, file: !33, line: 406, baseType: !477, size: 64, offset: 256)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1972, file: !33, line: 407, baseType: !1983, size: 64, offset: 320)
!1983 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !158, line: 132, baseType: !475)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1972, file: !33, line: 408, baseType: !1983, size: 64, offset: 384)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1904, file: !33, line: 442, baseType: !1914, size: 64, offset: 640)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !554, file: !20, line: 1200, baseType: !1987, size: 64, offset: 576)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1989)
!1989 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !20, line: 54, flags: DIFlagFwdDecl)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !554, file: !20, line: 1201, baseType: !169, size: 64, offset: 640)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !554, file: !20, line: 1202, baseType: !169, size: 64, offset: 704)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !554, file: !20, line: 1203, baseType: !169, size: 64, offset: 768)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !554, file: !20, line: 1204, baseType: !437, size: 64, offset: 832)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !554, file: !20, line: 1205, baseType: !1231, size: 320, offset: 896)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !554, file: !20, line: 1206, baseType: !91, size: 32, offset: 1216)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !554, file: !20, line: 1207, baseType: !213, size: 32, offset: 1248)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !554, file: !20, line: 1209, baseType: !159, size: 64, offset: 1280)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !554, file: !20, line: 1211, baseType: !1999, size: 64, offset: 1344)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2002)
!2002 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !20, line: 1211, flags: DIFlagFwdDecl)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !554, file: !20, line: 1223, baseType: !2004, size: 64, offset: 1408)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !454, line: 34, size: 64, elements: !2005)
!2005 = !{!2006}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2004, file: !454, line: 35, baseType: !457, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !554, file: !20, line: 1224, baseType: !239, size: 128, offset: 1472)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !554, file: !20, line: 1225, baseType: !2009, size: 64, offset: 1600)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !20, line: 1225, flags: DIFlagFwdDecl)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !554, file: !20, line: 1226, baseType: !2012, size: 64, offset: 1664)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !20, line: 1226, flags: DIFlagFwdDecl)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !554, file: !20, line: 1227, baseType: !2015, size: 64, offset: 1728)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !20, line: 50, flags: DIFlagFwdDecl)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !554, file: !20, line: 1228, baseType: !2018, size: 64, offset: 1792)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !20, line: 1228, flags: DIFlagFwdDecl)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !554, file: !20, line: 1229, baseType: !877, size: 128, offset: 1856)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !554, file: !20, line: 1230, baseType: !13, size: 32, offset: 1984)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !554, file: !20, line: 1231, baseType: !2023, size: 2496, offset: 2048)
!2023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !33, line: 521, size: 2496, elements: !2024)
!2024 = !{!2025, !2026, !2027, !2029, !2061}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2023, file: !33, line: 522, baseType: !13, size: 32)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2023, file: !33, line: 523, baseType: !1231, size: 320, offset: 64)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2023, file: !33, line: 524, baseType: !2028, size: 192, offset: 384)
!2028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !402, size: 192, elements: !324)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2023, file: !33, line: 525, baseType: !2030, size: 1728, offset: 576)
!2030 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2031, size: 1728, elements: !324)
!2031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !33, line: 222, size: 576, elements: !2032)
!2032 = !{!2033, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2031, file: !33, line: 223, baseType: !2034, size: 64)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !33, line: 445, size: 256, elements: !2036)
!2036 = !{!2037, !2038, !2051, !2052}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2035, file: !33, line: 446, baseType: !91, size: 32)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2035, file: !33, line: 447, baseType: !2039, size: 64, offset: 64)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2041)
!2041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !33, line: 312, size: 512, elements: !2042)
!2042 = !{!2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2041, file: !33, line: 313, baseType: !1042, size: 64)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2041, file: !33, line: 314, baseType: !1042, size: 64, offset: 64)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2041, file: !33, line: 315, baseType: !1042, size: 64, offset: 128)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2041, file: !33, line: 316, baseType: !1042, size: 64, offset: 192)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2041, file: !33, line: 317, baseType: !1867, size: 64, offset: 256)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2041, file: !33, line: 318, baseType: !1867, size: 64, offset: 320)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2041, file: !33, line: 319, baseType: !1867, size: 64, offset: 384)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2041, file: !33, line: 320, baseType: !1897, size: 64, offset: 448)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2035, file: !33, line: 448, baseType: !590, size: 64, offset: 128)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2035, file: !33, line: 449, baseType: !2034, size: 64, offset: 192)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2031, file: !33, line: 224, baseType: !91, size: 32, offset: 64)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2031, file: !33, line: 226, baseType: !239, size: 128, offset: 128)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2031, file: !33, line: 227, baseType: !169, size: 64, offset: 256)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2031, file: !33, line: 228, baseType: !13, size: 32, offset: 320)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2031, file: !33, line: 229, baseType: !13, size: 32, offset: 352)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2031, file: !33, line: 230, baseType: !1835, size: 64, offset: 384)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2031, file: !33, line: 231, baseType: !1835, size: 64, offset: 448)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2031, file: !33, line: 232, baseType: !159, size: 64, offset: 512)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2023, file: !33, line: 526, baseType: !2062, size: 192, offset: 2304)
!2062 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2039, size: 192, elements: !324)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !554, file: !20, line: 1233, baseType: !2064, size: 2368, offset: 4544)
!2064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !20, line: 1184, size: 2368, elements: !2065)
!2065 = !{!2066, !2067, !2068}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2064, file: !20, line: 1185, baseType: !231, size: 16)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2064, file: !20, line: 1186, baseType: !231, size: 16, offset: 16)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2064, file: !20, line: 1187, baseType: !2069, size: 2304, offset: 64)
!2069 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2070, size: 2304, elements: !324)
!2070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2071, line: 12, size: 768, elements: !2072)
!2071 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2072 = !{!2073, !2081, !2082, !3339, !3340}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2070, file: !2071, line: 13, baseType: !2074, size: 384)
!2074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2075, line: 17, size: 384, elements: !2076)
!2075 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2076 = !{!2077, !2078, !2079, !2080}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2074, file: !2075, line: 18, baseType: !91, size: 32)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2074, file: !2075, line: 19, baseType: !91, size: 32, offset: 32)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2074, file: !2075, line: 20, baseType: !1168, size: 192, offset: 64)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2074, file: !2075, line: 22, baseType: !851, size: 128, align: 64, offset: 256)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2070, file: !2071, line: 14, baseType: !710, size: 64, offset: 384)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2070, file: !2071, line: 15, baseType: !2083, size: 64, offset: 448)
!2083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2084, line: 16, size: 64, elements: !2085)
!2084 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2085 = !{!2086}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2083, file: !2084, line: 17, baseType: !2087, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1733, line: 746, size: 58368, elements: !2089)
!2089 = !{!2090, !2098, !2099, !2100, !2101, !2102, !2103, !2104, !2116, !2117, !2118, !2119, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2170, !2181, !2276, !2280, !2283, !2314, !2315, !2316, !2317, !2328, !2330, !2331, !2332, !2333, !2334, !2335, !2346, !2347, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2364, !2365, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2453, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2463, !2464, !2465, !2466, !2468, !2469, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2483, !2484, !2485, !2486, !2487, !2488, !2489, !2501, !2507, !2508, !2509, !2510, !2511, !2515, !2518, !2525, !2530, !2533, !2536, !2539, !2542, !2680, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2718, !2719, !2720, !2729, !2737, !2738, !2739, !2740, !2741, !2746, !2747, !2748, !2751, !2752, !2755, !2758, !2761, !2769, !2772, !2773, !2859, !2860, !2861, !2862, !2863, !2869, !2870, !2871, !2872, !2875, !2876, !2879, !2882, !2883, !2886, !2887, !2888, !2891, !2892, !2893, !2894, !2895, !2896, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2928, !2929, !2995, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3007, !3079, !3081, !3082, !3083, !3084, !3085, !3086, !3102, !3103, !3104, !3105, !3106, !3107, !3108, !3109, !3110, !3111, !3112, !3116, !3117, !3118}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2088, file: !1733, line: 752, baseType: !2091, size: 192)
!2091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2092, line: 56, size: 192, elements: !2093)
!2092 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2093 = !{!2094, !2095, !2096, !2097}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2091, file: !2092, line: 57, baseType: !169, size: 64)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2091, file: !2092, line: 58, baseType: !169, size: 64, offset: 64)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2091, file: !2092, line: 59, baseType: !471, size: 32, offset: 128)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2091, file: !2092, line: 61, baseType: !471, size: 32, offset: 160)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2088, file: !1733, line: 754, baseType: !13, size: 32, offset: 192)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2088, file: !1733, line: 767, baseType: !159, size: 64, offset: 256)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2088, file: !1733, line: 768, baseType: !1157, size: 32, offset: 320)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2088, file: !1733, line: 770, baseType: !13, size: 32, offset: 352)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2088, file: !1733, line: 771, baseType: !13, size: 32, offset: 384)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2088, file: !1733, line: 774, baseType: !91, size: 32, offset: 416)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2088, file: !1733, line: 775, baseType: !2105, size: 128, offset: 448)
!2105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2106, line: 58, size: 128, elements: !2107)
!2106 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2107 = !{!2108, !2109, !2114, !2115}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2105, file: !2106, line: 59, baseType: !1114, size: 64)
!2109 = !DIDerivedType(tag: DW_TAG_member, scope: !2105, file: !2106, line: 60, baseType: !2110, size: 32, offset: 64)
!2110 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2105, file: !2106, line: 60, size: 32, elements: !2111)
!2111 = !{!2112, !2113}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2110, file: !2106, line: 61, baseType: !13, size: 32)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2110, file: !2106, line: 62, baseType: !213, size: 32)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2105, file: !2106, line: 65, baseType: !229, size: 16, offset: 96)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2105, file: !2106, line: 65, baseType: !229, size: 16, offset: 112)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2088, file: !1733, line: 776, baseType: !13, size: 32, offset: 576)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2088, file: !1733, line: 777, baseType: !169, size: 64, offset: 640)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2088, file: !1733, line: 778, baseType: !2087, size: 64, offset: 704)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2088, file: !1733, line: 787, baseType: !91, size: 32, offset: 768)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2088, file: !1733, line: 788, baseType: !91, size: 32, offset: 800)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2088, file: !1733, line: 790, baseType: !91, size: 32, offset: 832)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2088, file: !1733, line: 792, baseType: !91, size: 32, offset: 864)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2088, file: !1733, line: 793, baseType: !91, size: 32, offset: 896)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2088, file: !1733, line: 794, baseType: !91, size: 32, offset: 928)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2088, file: !1733, line: 795, baseType: !13, size: 32, offset: 960)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2088, file: !1733, line: 797, baseType: !2127, size: 2048, offset: 1024)
!2127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1733, line: 551, size: 2048, elements: !2128)
!2128 = !{!2129, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2145, !2146, !2147, !2149, !2152, !2153, !2154}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2127, file: !1733, line: 553, baseType: !2130, size: 128)
!2130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1733, line: 411, size: 128, elements: !2131)
!2131 = !{!2132, !2133}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2130, file: !1733, line: 412, baseType: !169, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2130, file: !1733, line: 413, baseType: !471, size: 32, offset: 64)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2127, file: !1733, line: 554, baseType: !165, size: 192, align: 64, offset: 128)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2127, file: !1733, line: 555, baseType: !475, size: 64, offset: 320)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2127, file: !1733, line: 556, baseType: !475, size: 64, offset: 384)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2127, file: !1733, line: 558, baseType: !239, size: 128, offset: 448)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2127, file: !1733, line: 559, baseType: !13, size: 32, offset: 576)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2127, file: !1733, line: 561, baseType: !475, size: 64, offset: 640)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2127, file: !1733, line: 562, baseType: !475, size: 64, offset: 704)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2127, file: !1733, line: 563, baseType: !475, size: 64, offset: 768)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2127, file: !1733, line: 564, baseType: !475, size: 64, offset: 832)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2127, file: !1733, line: 565, baseType: !194, size: 64, offset: 896)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2127, file: !1733, line: 566, baseType: !475, size: 64, offset: 960)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2127, file: !1733, line: 568, baseType: !475, size: 64, offset: 1024)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2127, file: !1733, line: 571, baseType: !91, size: 32, offset: 1088)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2127, file: !1733, line: 572, baseType: !2148, size: 64, offset: 1152)
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2127, file: !1733, line: 574, baseType: !2150, size: 64, offset: 1216)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1733, line: 49, flags: DIFlagFwdDecl)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2127, file: !1733, line: 576, baseType: !2150, size: 64, offset: 1280)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2127, file: !1733, line: 578, baseType: !169, size: 64, offset: 1344)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2127, file: !1733, line: 588, baseType: !2155, size: 512, align: 512, offset: 1536)
!2155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1733, line: 497, size: 512, align: 512, elements: !2156)
!2156 = !{!2157, !2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2155, file: !1733, line: 498, baseType: !475, size: 64)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2155, file: !1733, line: 499, baseType: !475, size: 64, offset: 64)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2155, file: !1733, line: 500, baseType: !475, size: 64, offset: 128)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2155, file: !1733, line: 501, baseType: !471, size: 32, offset: 192)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2155, file: !1733, line: 502, baseType: !471, size: 32, offset: 224)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2155, file: !1733, line: 503, baseType: !169, size: 64, offset: 256)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2155, file: !1733, line: 504, baseType: !169, size: 64, offset: 320)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2155, file: !1733, line: 505, baseType: !169, size: 64, offset: 384)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2155, file: !1733, line: 506, baseType: !2166, size: 64, align: 64, offset: 448)
!2166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1733, line: 445, size: 64, align: 64, elements: !2167)
!2167 = !{!2168, !2169}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2166, file: !1733, line: 446, baseType: !13, size: 32)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2166, file: !1733, line: 447, baseType: !13, size: 32, offset: 32)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2088, file: !1733, line: 798, baseType: !2171, size: 384, offset: 3072)
!2171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1733, line: 592, size: 384, elements: !2172)
!2172 = !{!2173, !2174, !2175, !2176, !2177, !2178, !2179}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2171, file: !1733, line: 593, baseType: !239, size: 128)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2171, file: !1733, line: 594, baseType: !169, size: 64, offset: 128)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2171, file: !1733, line: 595, baseType: !169, size: 64, offset: 192)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2171, file: !1733, line: 596, baseType: !13, size: 32, offset: 256)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2171, file: !1733, line: 597, baseType: !231, size: 16, offset: 288)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2171, file: !1733, line: 598, baseType: !231, size: 16, offset: 304)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2171, file: !1733, line: 600, baseType: !2180, size: 64, offset: 320)
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2088, file: !1733, line: 799, baseType: !2182, size: 1792, offset: 3456)
!2182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1733, line: 610, size: 1792, elements: !2183)
!2183 = !{!2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2273, !2274}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2182, file: !1733, line: 611, baseType: !165, size: 192, align: 64)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2182, file: !1733, line: 618, baseType: !475, size: 64, offset: 192)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2182, file: !1733, line: 619, baseType: !475, size: 64, offset: 256)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2182, file: !1733, line: 620, baseType: !475, size: 64, offset: 320)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2182, file: !1733, line: 621, baseType: !475, size: 64, offset: 384)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2182, file: !1733, line: 622, baseType: !475, size: 64, offset: 448)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2182, file: !1733, line: 629, baseType: !194, size: 64, offset: 512)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2182, file: !1733, line: 630, baseType: !475, size: 64, offset: 576)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2182, file: !1733, line: 631, baseType: !13, size: 32, offset: 640)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2182, file: !1733, line: 653, baseType: !13, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2182, file: !1733, line: 654, baseType: !13, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2182, file: !1733, line: 655, baseType: !13, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2182, file: !1733, line: 656, baseType: !13, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2182, file: !1733, line: 662, baseType: !2198, size: 512, offset: 704)
!2198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !39, line: 118, size: 512, elements: !2199)
!2199 = !{!2200, !2208, !2209, !2214, !2269, !2270, !2271, !2272}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2198, file: !39, line: 119, baseType: !2201, size: 256)
!2201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2202, line: 9, size: 256, elements: !2203)
!2202 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2203 = !{!2204, !2205}
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2201, file: !2202, line: 10, baseType: !165, size: 192, align: 64)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2201, file: !2202, line: 11, baseType: !2206, size: 64, offset: 192)
!2206 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2207, line: 29, baseType: !194)
!2207 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2198, file: !39, line: 120, baseType: !2206, size: 64, offset: 256)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2198, file: !39, line: 121, baseType: !2210, size: 64, offset: 320)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = !DISubroutineType(types: !2212)
!2212 = !{!38, !2213}
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2198, file: !39, line: 122, baseType: !2215, size: 64, offset: 384)
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2216, size: 64)
!2216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !39, line: 159, size: 512, align: 512, elements: !2217)
!2217 = !{!2218, !2243, !2244, !2247, !2252, !2253, !2264, !2268}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2216, file: !39, line: 160, baseType: !2219, size: 64)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !39, line: 215, size: 4608, align: 512, elements: !2221)
!2221 = !{!2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2220, file: !39, line: 216, baseType: !200, size: 32)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2220, file: !39, line: 217, baseType: !13, size: 32, offset: 32)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2220, file: !39, line: 218, baseType: !13, size: 32, offset: 64)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2220, file: !39, line: 219, baseType: !13, size: 32, offset: 96)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2220, file: !39, line: 220, baseType: !13, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2220, file: !39, line: 221, baseType: !13, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2220, file: !39, line: 222, baseType: !13, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2220, file: !39, line: 223, baseType: !13, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2220, file: !39, line: 224, baseType: !13, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2220, file: !39, line: 226, baseType: !13, size: 32, offset: 160)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2220, file: !39, line: 227, baseType: !231, size: 16, offset: 192)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2220, file: !39, line: 228, baseType: !231, size: 16, offset: 208)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2220, file: !39, line: 229, baseType: !13, size: 32, offset: 224)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2220, file: !39, line: 235, baseType: !2206, size: 64, offset: 256)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2220, file: !39, line: 236, baseType: !2213, size: 64, offset: 320)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2220, file: !39, line: 237, baseType: !2206, size: 64, offset: 384)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2220, file: !39, line: 238, baseType: !2213, size: 64, offset: 448)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2220, file: !39, line: 239, baseType: !2240, size: 4096, align: 512, offset: 512)
!2240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2216, size: 4096, align: 512, elements: !2241)
!2241 = !{!2242}
!2242 = !DISubrange(count: 8)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2216, file: !39, line: 161, baseType: !13, size: 32, offset: 64)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2216, file: !39, line: 162, baseType: !2245, size: 32, offset: 96)
!2245 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !158, line: 32, baseType: !2246)
!2246 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !357, line: 96, baseType: !91)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2216, file: !39, line: 163, baseType: !2248, size: 32, offset: 128)
!2248 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !444, line: 274, baseType: !2249)
!2249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !444, line: 274, size: 32, elements: !2250)
!2250 = !{!2251}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2249, file: !444, line: 274, baseType: !448, size: 32)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2216, file: !39, line: 164, baseType: !2213, size: 64, offset: 192)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2216, file: !39, line: 165, baseType: !2254, size: 128, offset: 256)
!2254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2202, line: 14, size: 128, elements: !2255)
!2255 = !{!2256}
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2254, file: !2202, line: 15, baseType: !2257, size: 128)
!2257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !166, line: 26, size: 128, elements: !2258)
!2258 = !{!2259, !2263}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2257, file: !166, line: 27, baseType: !2260, size: 64)
!2260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !166, line: 12, size: 64, elements: !2261)
!2261 = !{!2262}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2260, file: !166, line: 13, baseType: !171, size: 64)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !2257, file: !166, line: 28, baseType: !171, size: 64, offset: 64)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2216, file: !39, line: 166, baseType: !2265, size: 64, offset: 384)
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = !DISubroutineType(types: !2267)
!2267 = !{!2206}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2216, file: !39, line: 167, baseType: !2206, size: 64, offset: 448)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2198, file: !39, line: 123, baseType: !221, size: 8, offset: 448)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2198, file: !39, line: 124, baseType: !221, size: 8, offset: 456)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2198, file: !39, line: 125, baseType: !221, size: 8, offset: 464)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2198, file: !39, line: 126, baseType: !221, size: 8, offset: 472)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2182, file: !1733, line: 671, baseType: !2198, size: 512, offset: 1216)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2182, file: !1733, line: 679, baseType: !2275, size: 64, offset: 1728)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2088, file: !1733, line: 800, baseType: !2277, size: 64, offset: 5248)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2279)
!2279 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1733, line: 800, flags: DIFlagFwdDecl)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2088, file: !1733, line: 809, baseType: !2281, size: 64, offset: 5312)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1733, line: 70, flags: DIFlagFwdDecl)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2088, file: !1733, line: 825, baseType: !2284, size: 2048, align: 512, offset: 5632)
!2284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1733, line: 509, size: 2048, align: 512, elements: !2285)
!2285 = !{!2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2284, file: !1733, line: 511, baseType: !475, size: 64)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2284, file: !1733, line: 512, baseType: !475, size: 64, offset: 64)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2284, file: !1733, line: 513, baseType: !475, size: 64, offset: 128)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2284, file: !1733, line: 514, baseType: !475, size: 64, offset: 192)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2284, file: !1733, line: 515, baseType: !475, size: 64, offset: 256)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2284, file: !1733, line: 516, baseType: !475, size: 64, offset: 320)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2284, file: !1733, line: 518, baseType: !475, size: 64, offset: 384)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2284, file: !1733, line: 519, baseType: !475, size: 64, offset: 448)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2284, file: !1733, line: 520, baseType: !194, size: 64, offset: 512)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2284, file: !1733, line: 522, baseType: !475, size: 64, offset: 576)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2284, file: !1733, line: 523, baseType: !475, size: 64, offset: 640)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2284, file: !1733, line: 524, baseType: !194, size: 64, offset: 704)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2284, file: !1733, line: 526, baseType: !194, size: 64, offset: 768)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2284, file: !1733, line: 527, baseType: !475, size: 64, offset: 832)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2284, file: !1733, line: 529, baseType: !475, size: 64, offset: 896)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2284, file: !1733, line: 530, baseType: !475, size: 64, offset: 960)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2284, file: !1733, line: 531, baseType: !475, size: 64, offset: 1024)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2284, file: !1733, line: 532, baseType: !475, size: 64, offset: 1088)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2284, file: !1733, line: 533, baseType: !475, size: 64, offset: 1152)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2284, file: !1733, line: 535, baseType: !475, size: 64, offset: 1216)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2284, file: !1733, line: 536, baseType: !475, size: 64, offset: 1280)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2284, file: !1733, line: 537, baseType: !475, size: 64, offset: 1344)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2284, file: !1733, line: 538, baseType: !475, size: 64, offset: 1408)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2284, file: !1733, line: 539, baseType: !475, size: 64, offset: 1472)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2284, file: !1733, line: 540, baseType: !475, size: 64, offset: 1536)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2284, file: !1733, line: 541, baseType: !475, size: 64, offset: 1600)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2284, file: !1733, line: 542, baseType: !475, size: 64, offset: 1664)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2284, file: !1733, line: 543, baseType: !475, size: 64, offset: 1728)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2088, file: !1733, line: 833, baseType: !13, size: 32, offset: 7680)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2088, file: !1733, line: 836, baseType: !13, size: 32, offset: 7712)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2088, file: !1733, line: 837, baseType: !91, size: 32, offset: 7744)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2088, file: !1733, line: 838, baseType: !2318, size: 64, offset: 7808)
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2320)
!2320 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2321, line: 19, baseType: !2322)
!2321 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2321, line: 19, size: 64, elements: !2323)
!2323 = !{!2324}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2322, file: !2321, line: 19, baseType: !2325, size: 64)
!2325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 64, elements: !2326)
!2326 = !{!2327}
!2327 = !DISubrange(count: 1)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2088, file: !1733, line: 839, baseType: !2329, size: 64, offset: 7872)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2088, file: !1733, line: 840, baseType: !2320, size: 64, offset: 7936)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2088, file: !1733, line: 841, baseType: !159, size: 64, offset: 8000)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2088, file: !1733, line: 843, baseType: !231, size: 16, offset: 8064)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2088, file: !1733, line: 845, baseType: !231, size: 16, offset: 8080)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2088, file: !1733, line: 848, baseType: !91, size: 32, offset: 8096)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2088, file: !1733, line: 849, baseType: !2336, size: 32, offset: 8128)
!2336 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1733, line: 718, size: 32, elements: !2337)
!2337 = !{!2338, !2345}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2336, file: !1733, line: 724, baseType: !2339, size: 32)
!2339 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2336, file: !1733, line: 719, size: 32, elements: !2340)
!2340 = !{!2341, !2342, !2343, !2344}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2339, file: !1733, line: 720, baseType: !221, size: 8)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2339, file: !1733, line: 721, baseType: !221, size: 8, offset: 8)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2339, file: !1733, line: 722, baseType: !221, size: 8, offset: 16)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2339, file: !1733, line: 723, baseType: !221, size: 8, offset: 24)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2336, file: !1733, line: 725, baseType: !471, size: 32)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2088, file: !1733, line: 850, baseType: !239, size: 128, offset: 8192)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2088, file: !1733, line: 851, baseType: !2348, size: 64, offset: 8320)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1733, line: 60, flags: DIFlagFwdDecl)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2088, file: !1733, line: 855, baseType: !169, size: 64, offset: 8384)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2088, file: !1733, line: 856, baseType: !221, size: 8, offset: 8448)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2088, file: !1733, line: 857, baseType: !221, size: 8, offset: 8456)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2088, file: !1733, line: 858, baseType: !91, size: 32, offset: 8480)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2088, file: !1733, line: 859, baseType: !239, size: 128, offset: 8512)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2088, file: !1733, line: 860, baseType: !91, size: 32, offset: 8640)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2088, file: !1733, line: 861, baseType: !239, size: 128, offset: 8704)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2088, file: !1733, line: 873, baseType: !2358, size: 256, offset: 8832)
!2358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1733, line: 376, size: 256, elements: !2359)
!2359 = !{!2360, !2361, !2362, !2363}
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2358, file: !1733, line: 381, baseType: !169, size: 64)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2358, file: !1733, line: 384, baseType: !477, size: 64, offset: 64)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2358, file: !1733, line: 389, baseType: !477, size: 64, offset: 128)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2358, file: !1733, line: 392, baseType: !477, size: 64, offset: 192)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2088, file: !1733, line: 875, baseType: !239, size: 128, offset: 9088)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2088, file: !1733, line: 877, baseType: !2366, size: 320, offset: 9216)
!2366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2367, line: 86, size: 320, elements: !2368)
!2367 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2368 = !{!2369, !2370, !2371}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2366, file: !2367, line: 87, baseType: !91, size: 32)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2366, file: !2367, line: 88, baseType: !239, size: 128, offset: 64)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2366, file: !2367, line: 89, baseType: !239, size: 128, offset: 192)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2088, file: !1733, line: 878, baseType: !165, size: 192, align: 64, offset: 9536)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2088, file: !1733, line: 881, baseType: !1500, size: 64, offset: 9728)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2088, file: !1733, line: 882, baseType: !1500, size: 64, offset: 9792)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2088, file: !1733, line: 884, baseType: !91, size: 32, offset: 9856)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2088, file: !1733, line: 885, baseType: !91, size: 32, offset: 9888)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2088, file: !1733, line: 886, baseType: !91, size: 32, offset: 9920)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2088, file: !1733, line: 888, baseType: !91, size: 32, offset: 9952)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2088, file: !1733, line: 890, baseType: !169, size: 64, offset: 9984)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2088, file: !1733, line: 893, baseType: !13, size: 32, offset: 10048)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2088, file: !1733, line: 896, baseType: !13, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2088, file: !1733, line: 897, baseType: !13, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2088, file: !1733, line: 898, baseType: !13, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2088, file: !1733, line: 899, baseType: !13, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2088, file: !1733, line: 919, baseType: !13, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2088, file: !1733, line: 922, baseType: !13, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2088, file: !1733, line: 923, baseType: !13, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2088, file: !1733, line: 925, baseType: !13, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2088, file: !1733, line: 939, baseType: !13, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2088, file: !1733, line: 941, baseType: !13, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2088, file: !1733, line: 944, baseType: !13, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2088, file: !1733, line: 956, baseType: !13, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2088, file: !1733, line: 962, baseType: !13, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2088, file: !1733, line: 966, baseType: !13, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2088, file: !1733, line: 969, baseType: !169, size: 64, offset: 10176)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2088, file: !1733, line: 971, baseType: !2397, size: 448, offset: 10240)
!2397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !44, line: 25, size: 448, elements: !2398)
!2398 = !{!2399, !2400, !2405}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2397, file: !44, line: 26, baseType: !169, size: 64)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2397, file: !44, line: 27, baseType: !2401, size: 64, offset: 64)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = !DISubroutineType(types: !2403)
!2403 = !{!359, !2404}
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2405 = !DIDerivedType(tag: DW_TAG_member, scope: !2397, file: !44, line: 28, baseType: !2406, size: 320, offset: 128)
!2406 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2397, file: !44, line: 28, size: 320, elements: !2407)
!2407 = !{!2408, !2418, !2443}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2406, file: !44, line: 37, baseType: !2409, size: 320)
!2409 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2406, file: !44, line: 30, size: 320, elements: !2410)
!2410 = !{!2411, !2413, !2414, !2415, !2416, !2417}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2409, file: !44, line: 31, baseType: !2412, size: 64)
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2409, file: !44, line: 32, baseType: !471, size: 32, offset: 64)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2409, file: !44, line: 33, baseType: !471, size: 32, offset: 96)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2409, file: !44, line: 34, baseType: !471, size: 32, offset: 128)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2409, file: !44, line: 35, baseType: !475, size: 64, offset: 192)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2409, file: !44, line: 36, baseType: !2412, size: 64, offset: 256)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2406, file: !44, line: 47, baseType: !2419, size: 192)
!2419 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2406, file: !44, line: 39, size: 192, elements: !2420)
!2420 = !{!2421, !2422, !2423, !2442}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2419, file: !44, line: 40, baseType: !2245, size: 32)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2419, file: !44, line: 41, baseType: !43, size: 32, offset: 32)
!2423 = !DIDerivedType(tag: DW_TAG_member, scope: !2419, file: !44, line: 42, baseType: !2424, size: 64, offset: 64)
!2424 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2419, file: !44, line: 42, size: 64, elements: !2425)
!2425 = !{!2426, !2434}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2424, file: !44, line: 43, baseType: !2427, size: 64)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2429, line: 7, size: 128, elements: !2430)
!2429 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2430 = !{!2431, !2433}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2428, file: !2429, line: 8, baseType: !2432, size: 64)
!2432 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !357, line: 93, baseType: !198)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2428, file: !2429, line: 9, baseType: !198, size: 64, offset: 64)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2424, file: !44, line: 44, baseType: !2435, size: 64)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2437, line: 7, size: 64, elements: !2438)
!2437 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2438 = !{!2439, !2441}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2436, file: !2437, line: 8, baseType: !2440, size: 32)
!2440 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2437, line: 5, baseType: !656)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2436, file: !2437, line: 9, baseType: !656, size: 32, offset: 32)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2419, file: !44, line: 46, baseType: !475, size: 64, offset: 128)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2406, file: !44, line: 55, baseType: !2444, size: 256)
!2444 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2406, file: !44, line: 49, size: 256, elements: !2445)
!2445 = !{!2446, !2449, !2450, !2451, !2452}
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2444, file: !44, line: 50, baseType: !2447, size: 64)
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2448 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !44, line: 14, flags: DIFlagFwdDecl)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2444, file: !44, line: 51, baseType: !91, size: 32, offset: 64)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2444, file: !44, line: 52, baseType: !91, size: 32, offset: 96)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2444, file: !44, line: 53, baseType: !169, size: 64, offset: 128)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2444, file: !44, line: 54, baseType: !169, size: 64, offset: 192)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2088, file: !1733, line: 973, baseType: !2454, size: 32, offset: 10688)
!2454 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !158, line: 27, baseType: !2455)
!2455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !357, line: 28, baseType: !91)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2088, file: !1733, line: 974, baseType: !2454, size: 32, offset: 10720)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2088, file: !1733, line: 978, baseType: !169, size: 64, offset: 10752)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2088, file: !1733, line: 987, baseType: !2087, size: 64, offset: 10816)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2088, file: !1733, line: 990, baseType: !2087, size: 64, offset: 10880)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2088, file: !1733, line: 995, baseType: !239, size: 128, offset: 10944)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2088, file: !1733, line: 996, baseType: !239, size: 128, offset: 11072)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2088, file: !1733, line: 997, baseType: !2087, size: 64, offset: 11200)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2088, file: !1733, line: 1005, baseType: !239, size: 128, offset: 11264)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2088, file: !1733, line: 1006, baseType: !239, size: 128, offset: 11392)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2088, file: !1733, line: 1009, baseType: !1153, size: 64, offset: 11520)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2088, file: !1733, line: 1010, baseType: !2467, size: 512, offset: 11584)
!2467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !877, size: 512, elements: !861)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2088, file: !1733, line: 1011, baseType: !239, size: 128, offset: 12096)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2088, file: !1733, line: 1012, baseType: !239, size: 128, offset: 12224)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2088, file: !1733, line: 1014, baseType: !609, size: 64, offset: 12352)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2088, file: !1733, line: 1017, baseType: !760, size: 64, offset: 12416)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2088, file: !1733, line: 1020, baseType: !760, size: 64, offset: 12480)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2088, file: !1733, line: 1023, baseType: !159, size: 64, offset: 12544)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2088, file: !1733, line: 1025, baseType: !475, size: 64, offset: 12608)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2088, file: !1733, line: 1026, baseType: !475, size: 64, offset: 12672)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2088, file: !1733, line: 1031, baseType: !475, size: 64, offset: 12736)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2088, file: !1733, line: 1032, baseType: !2478, size: 192, offset: 12800)
!2478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1733, line: 324, size: 192, elements: !2479)
!2479 = !{!2480, !2481, !2482}
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2478, file: !1733, line: 326, baseType: !475, size: 64)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2478, file: !1733, line: 327, baseType: !475, size: 64, offset: 64)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2478, file: !1733, line: 328, baseType: !200, size: 32, offset: 128)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2088, file: !1733, line: 1041, baseType: !169, size: 64, offset: 12992)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2088, file: !1733, line: 1042, baseType: !169, size: 64, offset: 13056)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2088, file: !1733, line: 1045, baseType: !475, size: 64, offset: 13120)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2088, file: !1733, line: 1048, baseType: !475, size: 64, offset: 13184)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2088, file: !1733, line: 1051, baseType: !169, size: 64, offset: 13248)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2088, file: !1733, line: 1052, baseType: !169, size: 64, offset: 13312)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2088, file: !1733, line: 1055, baseType: !2490, size: 640, offset: 13376)
!2490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2491, line: 132, size: 640, elements: !2492)
!2491 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2492 = !{!2493, !2499, !2500}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2490, file: !2491, line: 133, baseType: !2494, size: 576)
!2494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2495, size: 576, elements: !324)
!2495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2491, line: 117, size: 192, elements: !2496)
!2496 = !{!2497, !2498}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2495, file: !2491, line: 118, baseType: !475, size: 64)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2495, file: !2491, line: 119, baseType: !2254, size: 128, offset: 64)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2490, file: !2491, line: 134, baseType: !13, size: 32, offset: 576)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2490, file: !2491, line: 135, baseType: !13, size: 32, offset: 608)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2088, file: !1733, line: 1058, baseType: !2502, size: 448, offset: 14016)
!2502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2491, line: 144, size: 448, elements: !2503)
!2503 = !{!2504, !2505, !2506}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2502, file: !2491, line: 145, baseType: !851, size: 128, align: 64)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2502, file: !2491, line: 146, baseType: !184, size: 256, offset: 128)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2502, file: !2491, line: 147, baseType: !13, size: 32, offset: 384)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2088, file: !1733, line: 1064, baseType: !1190, size: 64, offset: 14464)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2088, file: !1733, line: 1067, baseType: !1190, size: 64, offset: 14528)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2088, file: !1733, line: 1070, baseType: !1190, size: 64, offset: 14592)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2088, file: !1733, line: 1074, baseType: !1217, size: 64, offset: 14656)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2088, file: !1733, line: 1084, baseType: !2512, size: 128, offset: 14720)
!2512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !2513)
!2513 = !{!2514}
!2514 = !DISubrange(count: 16)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2088, file: !1733, line: 1086, baseType: !2516, size: 64, offset: 14848)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1733, line: 55, flags: DIFlagFwdDecl)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2088, file: !1733, line: 1089, baseType: !2519, size: 64, offset: 14912)
!2519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2520, line: 12, size: 64, elements: !2521)
!2520 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2521 = !{!2522}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2519, file: !2520, line: 13, baseType: !2523, size: 64)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2520, line: 8, flags: DIFlagFwdDecl)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2088, file: !1733, line: 1090, baseType: !2526, size: 128, offset: 14976)
!2526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2527, line: 13, size: 128, elements: !2528)
!2527 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2528 = !{!2529}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2526, file: !2527, line: 14, baseType: !239, size: 128)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2088, file: !1733, line: 1097, baseType: !2531, size: 64, offset: 15104)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1733, line: 50, flags: DIFlagFwdDecl)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2088, file: !1733, line: 1100, baseType: !2534, size: 64, offset: 15168)
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2535 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1733, line: 1100, flags: DIFlagFwdDecl)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2088, file: !1733, line: 1103, baseType: !2537, size: 64, offset: 15232)
!2537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2538, size: 64)
!2538 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1733, line: 53, flags: DIFlagFwdDecl)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2088, file: !1733, line: 1107, baseType: !2540, size: 64, offset: 15296)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1733, line: 56, flags: DIFlagFwdDecl)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2088, file: !1733, line: 1110, baseType: !2543, size: 64, offset: 15360)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2545, line: 93, size: 8768, elements: !2546)
!2545 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2546 = !{!2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2594, !2603, !2604, !2606, !2607, !2608, !2611, !2617, !2618, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2649, !2650, !2657, !2667, !2670, !2671, !2674, !2675, !2676, !2677, !2678, !2679}
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2544, file: !2545, line: 94, baseType: !1157, size: 32)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2544, file: !2545, line: 95, baseType: !213, size: 32, offset: 32)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2544, file: !2545, line: 96, baseType: !91, size: 32, offset: 64)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2544, file: !2545, line: 97, baseType: !91, size: 32, offset: 96)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2544, file: !2545, line: 98, baseType: !239, size: 128, offset: 128)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2544, file: !2545, line: 100, baseType: !1168, size: 192, offset: 256)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2544, file: !2545, line: 103, baseType: !2087, size: 64, offset: 448)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2544, file: !2545, line: 106, baseType: !2555, size: 192, offset: 512)
!2555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1373, line: 32, size: 192, elements: !2556)
!2556 = !{!2557, !2558}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2555, file: !1373, line: 33, baseType: !239, size: 128)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2555, file: !1373, line: 34, baseType: !2559, size: 64, offset: 128)
!2559 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2560, line: 25, baseType: !2561)
!2560 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2561 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2560, line: 23, size: 64, elements: !2562)
!2562 = !{!2563}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2561, file: !2560, line: 24, baseType: !2325, size: 64)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2544, file: !2545, line: 109, baseType: !999, size: 64, offset: 704)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2544, file: !2545, line: 112, baseType: !91, size: 32, offset: 768)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2544, file: !2545, line: 114, baseType: !91, size: 32, offset: 800)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2544, file: !2545, line: 115, baseType: !2087, size: 64, offset: 832)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2544, file: !2545, line: 118, baseType: !91, size: 32, offset: 896)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2544, file: !2545, line: 119, baseType: !13, size: 32, offset: 928)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2544, file: !2545, line: 121, baseType: !2571, size: 64, offset: 960)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2545, line: 80, size: 448, elements: !2573)
!2573 = !{!2574, !2575, !2581}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2572, file: !2545, line: 81, baseType: !213, size: 32)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2572, file: !2545, line: 82, baseType: !2576, size: 128, offset: 64)
!2576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2545, line: 75, size: 128, elements: !2577)
!2577 = !{!2578, !2579}
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2576, file: !2545, line: 76, baseType: !2087, size: 64)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2576, file: !2545, line: 77, baseType: !2580, size: 64, offset: 64)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2576, size: 64)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2572, file: !2545, line: 83, baseType: !610, size: 256, offset: 192)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2544, file: !2545, line: 132, baseType: !13, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2544, file: !2545, line: 133, baseType: !13, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2544, file: !2545, line: 138, baseType: !13, size: 32, offset: 1056)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2544, file: !2545, line: 139, baseType: !239, size: 128, offset: 1088)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2544, file: !2545, line: 142, baseType: !2198, size: 512, offset: 1216)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2544, file: !2545, line: 143, baseType: !2206, size: 64, offset: 1728)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2544, file: !2545, line: 150, baseType: !2589, size: 256, offset: 1792)
!2589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2590, size: 256, elements: !750)
!2590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2545, line: 38, size: 128, elements: !2591)
!2591 = !{!2592, !2593}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2590, file: !2545, line: 39, baseType: !475, size: 64)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2590, file: !2545, line: 40, baseType: !475, size: 64, offset: 64)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2544, file: !2545, line: 156, baseType: !2595, size: 192, offset: 2048)
!2595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2545, line: 66, size: 192, elements: !2596)
!2596 = !{!2597}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2595, file: !2545, line: 67, baseType: !2598, size: 192)
!2598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2545, line: 47, size: 192, elements: !2599)
!2599 = !{!2600, !2601, !2602}
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2598, file: !2545, line: 48, baseType: !190, size: 64)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2598, file: !2545, line: 49, baseType: !190, size: 64, offset: 64)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2598, file: !2545, line: 50, baseType: !190, size: 64, offset: 128)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2544, file: !2545, line: 160, baseType: !2490, size: 640, offset: 2240)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2544, file: !2545, line: 163, baseType: !2605, size: 256, offset: 2880)
!2605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1153, size: 256, elements: !861)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2544, file: !2545, line: 169, baseType: !1153, size: 64, offset: 3136)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2544, file: !2545, line: 172, baseType: !91, size: 32, offset: 3200)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2544, file: !2545, line: 174, baseType: !2609, size: 64, offset: 3264)
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2610 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2545, line: 174, flags: DIFlagFwdDecl)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2544, file: !2545, line: 185, baseType: !2612, size: 64, offset: 3328)
!2612 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !444, line: 860, baseType: !2613)
!2613 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !444, line: 853, size: 64, elements: !2614)
!2614 = !{!2615, !2616}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2613, file: !444, line: 858, baseType: !443, size: 32)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2613, file: !444, line: 859, baseType: !248, size: 32, offset: 32)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2544, file: !2545, line: 186, baseType: !475, size: 64, offset: 3392)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2544, file: !2545, line: 186, baseType: !475, size: 64, offset: 3456)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2544, file: !2545, line: 186, baseType: !475, size: 64, offset: 3520)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2544, file: !2545, line: 186, baseType: !475, size: 64, offset: 3584)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2544, file: !2545, line: 187, baseType: !475, size: 64, offset: 3648)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2544, file: !2545, line: 188, baseType: !475, size: 64, offset: 3712)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2544, file: !2545, line: 189, baseType: !2478, size: 192, offset: 3776)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2544, file: !2545, line: 190, baseType: !169, size: 64, offset: 3968)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2544, file: !2545, line: 190, baseType: !169, size: 64, offset: 4032)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2544, file: !2545, line: 190, baseType: !169, size: 64, offset: 4096)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2544, file: !2545, line: 190, baseType: !169, size: 64, offset: 4160)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2544, file: !2545, line: 191, baseType: !169, size: 64, offset: 4224)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2544, file: !2545, line: 191, baseType: !169, size: 64, offset: 4288)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2544, file: !2545, line: 191, baseType: !169, size: 64, offset: 4352)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2544, file: !2545, line: 191, baseType: !169, size: 64, offset: 4416)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2544, file: !2545, line: 192, baseType: !169, size: 64, offset: 4480)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2544, file: !2545, line: 192, baseType: !169, size: 64, offset: 4544)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2544, file: !2545, line: 192, baseType: !169, size: 64, offset: 4608)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2544, file: !2545, line: 192, baseType: !169, size: 64, offset: 4672)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2544, file: !2545, line: 193, baseType: !169, size: 64, offset: 4736)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2544, file: !2545, line: 193, baseType: !169, size: 64, offset: 4800)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2544, file: !2545, line: 194, baseType: !2639, size: 448, offset: 4864)
!2639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2640, line: 12, size: 448, elements: !2641)
!2640 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2641 = !{!2642, !2643, !2644, !2645, !2646, !2647, !2648}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2639, file: !2640, line: 15, baseType: !475, size: 64)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2639, file: !2640, line: 17, baseType: !475, size: 64, offset: 64)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2639, file: !2640, line: 19, baseType: !475, size: 64, offset: 128)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2639, file: !2640, line: 21, baseType: !475, size: 64, offset: 192)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2639, file: !2640, line: 29, baseType: !475, size: 64, offset: 256)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2639, file: !2640, line: 35, baseType: !475, size: 64, offset: 320)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2639, file: !2640, line: 44, baseType: !475, size: 64, offset: 384)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2544, file: !2545, line: 202, baseType: !477, size: 64, offset: 5312)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2544, file: !2545, line: 213, baseType: !2651, size: 2048, offset: 5376)
!2651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2652, size: 2048, elements: !2513)
!2652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2653, line: 43, size: 128, elements: !2654)
!2653 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2654 = !{!2655, !2656}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2652, file: !2653, line: 44, baseType: !372, size: 64)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2652, file: !2653, line: 45, baseType: !372, size: 64, offset: 64)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2544, file: !2545, line: 216, baseType: !2658, size: 448, offset: 7424)
!2658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2545, line: 30, size: 448, elements: !2659)
!2659 = !{!2660, !2661, !2662, !2663, !2664, !2665, !2666}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2658, file: !2545, line: 31, baseType: !91, size: 32)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2658, file: !2545, line: 32, baseType: !359, size: 64, offset: 64)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2658, file: !2545, line: 33, baseType: !169, size: 64, offset: 128)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2658, file: !2545, line: 34, baseType: !475, size: 64, offset: 192)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2658, file: !2545, line: 34, baseType: !475, size: 64, offset: 256)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2658, file: !2545, line: 35, baseType: !169, size: 64, offset: 320)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2658, file: !2545, line: 35, baseType: !169, size: 64, offset: 384)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2544, file: !2545, line: 219, baseType: !2668, size: 64, offset: 7872)
!2668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2669, size: 64)
!2669 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2545, line: 219, flags: DIFlagFwdDecl)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2544, file: !2545, line: 222, baseType: !13, size: 32, offset: 7936)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2544, file: !2545, line: 223, baseType: !2672, size: 64, offset: 8000)
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2673, size: 64)
!2673 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2545, line: 223, flags: DIFlagFwdDecl)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2544, file: !2545, line: 230, baseType: !718, size: 8, offset: 8064)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2544, file: !2545, line: 231, baseType: !769, size: 16, offset: 8080)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2544, file: !2545, line: 232, baseType: !769, size: 16, offset: 8096)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2544, file: !2545, line: 234, baseType: !1500, size: 64, offset: 8128)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2544, file: !2545, line: 237, baseType: !184, size: 256, offset: 8192)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2544, file: !2545, line: 243, baseType: !1231, size: 320, offset: 8448)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2088, file: !1733, line: 1111, baseType: !2681, size: 64, offset: 15424)
!2681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2682, size: 64)
!2682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2545, line: 20, size: 16640, elements: !2683)
!2683 = !{!2684, !2685, !2686, !2687}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2682, file: !2545, line: 21, baseType: !248, size: 32)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2682, file: !2545, line: 22, baseType: !1157, size: 32, offset: 32)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2682, file: !2545, line: 23, baseType: !1168, size: 192, offset: 64)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2682, file: !2545, line: 24, baseType: !2688, size: 16384, offset: 256)
!2688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2689, size: 16384, elements: !328)
!2689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1373, line: 51, size: 256, elements: !2690)
!2690 = !{!2691}
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2689, file: !1373, line: 52, baseType: !2692, size: 256)
!2692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1373, line: 37, size: 256, elements: !2693)
!2693 = !{!2694, !2701, !2702, !2706}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2692, file: !1373, line: 39, baseType: !2695, size: 64)
!2695 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2696, line: 83, baseType: !2697)
!2696 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2696, line: 82, baseType: !2699)
!2699 = !DISubroutineType(types: !2700)
!2700 = !{null, !91}
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2692, file: !1373, line: 40, baseType: !169, size: 64, offset: 64)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2692, file: !1373, line: 46, baseType: !2703, size: 64, offset: 128)
!2703 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2696, line: 86, baseType: !2704)
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2696, line: 85, baseType: !994)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2692, file: !1373, line: 48, baseType: !2559, size: 64, offset: 192)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2088, file: !1733, line: 1112, baseType: !2559, size: 64, offset: 15488)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2088, file: !1733, line: 1113, baseType: !2559, size: 64, offset: 15552)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2088, file: !1733, line: 1115, baseType: !2559, size: 64, offset: 15616)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2088, file: !1733, line: 1116, baseType: !2555, size: 192, offset: 15680)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2088, file: !1733, line: 1117, baseType: !169, size: 64, offset: 15872)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2088, file: !1733, line: 1118, baseType: !370, size: 64, offset: 15936)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2088, file: !1733, line: 1119, baseType: !13, size: 32, offset: 16000)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2088, file: !1733, line: 1121, baseType: !850, size: 64, offset: 16064)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2088, file: !1733, line: 1125, baseType: !2716, size: 64, offset: 16128)
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2717, size: 64)
!2717 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1733, line: 43, flags: DIFlagFwdDecl)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2088, file: !1733, line: 1127, baseType: !408, size: 32, offset: 16192)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2088, file: !1733, line: 1128, baseType: !13, size: 32, offset: 16224)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2088, file: !1733, line: 1130, baseType: !2721, size: 128, offset: 16256)
!2721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2722, line: 37, size: 128, elements: !2723)
!2722 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2723 = !{!2724, !2725, !2726}
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2721, file: !2722, line: 38, baseType: !91, size: 32)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2721, file: !2722, line: 39, baseType: !213, size: 32, offset: 32)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2721, file: !2722, line: 40, baseType: !2727, size: 64, offset: 64)
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2728 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2722, line: 24, flags: DIFlagFwdDecl)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2088, file: !1733, line: 1131, baseType: !2730, size: 256, offset: 16384)
!2730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2731, line: 12, size: 256, elements: !2732)
!2731 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2732 = !{!2733, !2734, !2735, !2736}
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2730, file: !2731, line: 13, baseType: !323, size: 64)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2730, file: !2731, line: 14, baseType: !169, size: 64, offset: 64)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2730, file: !2731, line: 15, baseType: !169, size: 64, offset: 128)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2730, file: !2731, line: 16, baseType: !718, size: 8, offset: 192)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2088, file: !1733, line: 1134, baseType: !475, size: 64, offset: 16640)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2088, file: !1733, line: 1135, baseType: !475, size: 64, offset: 16704)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2088, file: !1733, line: 1138, baseType: !248, size: 32, offset: 16768)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2088, file: !1733, line: 1141, baseType: !200, size: 32, offset: 16800)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2088, file: !1733, line: 1143, baseType: !2742, size: 64, offset: 16832)
!2742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1733, line: 735, size: 64, elements: !2743)
!2743 = !{!2744}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2742, file: !1733, line: 736, baseType: !2745, size: 64)
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2088, file: !1733, line: 1147, baseType: !2257, size: 128, offset: 16896)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2088, file: !1733, line: 1149, baseType: !2087, size: 64, offset: 17024)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2088, file: !1733, line: 1151, baseType: !2749, size: 64, offset: 17088)
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2750 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1733, line: 1151, flags: DIFlagFwdDecl)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2088, file: !1733, line: 1188, baseType: !159, size: 64, offset: 17152)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2088, file: !1733, line: 1191, baseType: !2753, size: 64, offset: 17216)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1733, line: 44, flags: DIFlagFwdDecl)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2088, file: !1733, line: 1194, baseType: !2756, size: 64, offset: 17280)
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!2757 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1733, line: 45, flags: DIFlagFwdDecl)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2088, file: !1733, line: 1197, baseType: !2759, size: 64, offset: 17344)
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!2760 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1733, line: 61, flags: DIFlagFwdDecl)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2088, file: !1733, line: 1199, baseType: !2762, size: 64, offset: 17408)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2764, line: 99, size: 128, elements: !2765)
!2764 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2765 = !{!2766, !2767, !2768}
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2763, file: !2764, line: 100, baseType: !188, size: 64)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2763, file: !2764, line: 101, baseType: !213, size: 32, offset: 64)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2763, file: !2764, line: 103, baseType: !231, size: 16, offset: 96)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2088, file: !1733, line: 1202, baseType: !2770, size: 64, offset: 17472)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1733, line: 48, flags: DIFlagFwdDecl)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2088, file: !1733, line: 1205, baseType: !169, size: 64, offset: 17536)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2088, file: !1733, line: 1206, baseType: !2774, size: 64, offset: 17600)
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1373, line: 14, baseType: !2776)
!2776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1373, line: 12, size: 384, elements: !2777)
!2777 = !{!2778}
!2778 = !DIDerivedType(tag: DW_TAG_member, scope: !2776, file: !1373, line: 13, baseType: !2779, size: 384)
!2779 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2776, file: !1373, line: 13, size: 384, elements: !2780)
!2780 = !{!2781, !2782, !2783, !2784}
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2779, file: !1373, line: 13, baseType: !91, size: 32)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2779, file: !1373, line: 13, baseType: !91, size: 32, offset: 32)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2779, file: !1373, line: 13, baseType: !91, size: 32, offset: 64)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2779, file: !1373, line: 13, baseType: !2785, size: 256, offset: 128)
!2785 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2786, line: 37, size: 256, elements: !2787)
!2786 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2787 = !{!2788, !2793, !2806, !2812, !2821, !2848, !2853}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2785, file: !2786, line: 42, baseType: !2789, size: 64)
!2789 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2785, file: !2786, line: 39, size: 64, elements: !2790)
!2790 = !{!2791, !2792}
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2789, file: !2786, line: 40, baseType: !2455, size: 32)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2789, file: !2786, line: 41, baseType: !414, size: 32, offset: 32)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2785, file: !2786, line: 50, baseType: !2794, size: 192)
!2794 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2785, file: !2786, line: 45, size: 192, elements: !2795)
!2795 = !{!2796, !2798, !2799, !2805}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2794, file: !2786, line: 46, baseType: !2797, size: 32)
!2797 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !357, line: 95, baseType: !91)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2794, file: !2786, line: 47, baseType: !91, size: 32, offset: 32)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2794, file: !2786, line: 48, baseType: !2800, size: 64, offset: 64)
!2800 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2786, line: 11, baseType: !2801)
!2801 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2786, line: 8, size: 64, elements: !2802)
!2802 = !{!2803, !2804}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2801, file: !2786, line: 9, baseType: !91, size: 32)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2801, file: !2786, line: 10, baseType: !159, size: 64)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2794, file: !2786, line: 49, baseType: !91, size: 32, offset: 128)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2785, file: !2786, line: 57, baseType: !2807, size: 128)
!2807 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2785, file: !2786, line: 53, size: 128, elements: !2808)
!2808 = !{!2809, !2810, !2811}
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2807, file: !2786, line: 54, baseType: !2455, size: 32)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2807, file: !2786, line: 55, baseType: !414, size: 32, offset: 32)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2807, file: !2786, line: 56, baseType: !2800, size: 64, offset: 64)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2785, file: !2786, line: 66, baseType: !2813, size: 256)
!2813 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2785, file: !2786, line: 60, size: 256, elements: !2814)
!2814 = !{!2815, !2816, !2817, !2818, !2820}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2813, file: !2786, line: 61, baseType: !2455, size: 32)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2813, file: !2786, line: 62, baseType: !414, size: 32, offset: 32)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2813, file: !2786, line: 63, baseType: !91, size: 32, offset: 64)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2813, file: !2786, line: 64, baseType: !2819, size: 64, offset: 128)
!2819 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !357, line: 94, baseType: !358)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2813, file: !2786, line: 65, baseType: !2819, size: 64, offset: 192)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2785, file: !2786, line: 105, baseType: !2822, size: 256)
!2822 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2785, file: !2786, line: 69, size: 256, elements: !2823)
!2823 = !{!2824, !2825}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2822, file: !2786, line: 70, baseType: !159, size: 64)
!2825 = !DIDerivedType(tag: DW_TAG_member, scope: !2822, file: !2786, line: 79, baseType: !2826, size: 192, offset: 64)
!2826 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2822, file: !2786, line: 79, size: 192, elements: !2827)
!2827 = !{!2828, !2829, !2830, !2837, !2842}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2826, file: !2786, line: 81, baseType: !91, size: 32)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2826, file: !2786, line: 86, baseType: !769, size: 16)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2826, file: !2786, line: 92, baseType: !2831, size: 192)
!2831 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2826, file: !2786, line: 88, size: 192, elements: !2832)
!2832 = !{!2833, !2835, !2836}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2831, file: !2786, line: 89, baseType: !2834, size: 64)
!2834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !2241)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2831, file: !2786, line: 90, baseType: !159, size: 64, offset: 64)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2831, file: !2786, line: 91, baseType: !159, size: 64, offset: 128)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2826, file: !2786, line: 97, baseType: !2838, size: 96)
!2838 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2826, file: !2786, line: 94, size: 96, elements: !2839)
!2839 = !{!2840, !2841}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2838, file: !2786, line: 95, baseType: !2834, size: 64)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2838, file: !2786, line: 96, baseType: !472, size: 32, offset: 64)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2826, file: !2786, line: 103, baseType: !2843, size: 128)
!2843 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2826, file: !2786, line: 99, size: 128, elements: !2844)
!2844 = !{!2845, !2846, !2847}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2843, file: !2786, line: 100, baseType: !169, size: 64)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2843, file: !2786, line: 101, baseType: !472, size: 32, offset: 64)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2843, file: !2786, line: 102, baseType: !472, size: 32, offset: 96)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2785, file: !2786, line: 111, baseType: !2849, size: 128)
!2849 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2785, file: !2786, line: 108, size: 128, elements: !2850)
!2850 = !{!2851, !2852}
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2849, file: !2786, line: 109, baseType: !359, size: 64)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2849, file: !2786, line: 110, baseType: !91, size: 32, offset: 64)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2785, file: !2786, line: 118, baseType: !2854, size: 128)
!2854 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2785, file: !2786, line: 114, size: 128, elements: !2855)
!2855 = !{!2856, !2857, !2858}
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2854, file: !2786, line: 115, baseType: !159, size: 64)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2854, file: !2786, line: 116, baseType: !91, size: 32, offset: 64)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2854, file: !2786, line: 117, baseType: !13, size: 32, offset: 96)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2088, file: !1733, line: 1208, baseType: !2639, size: 448, offset: 17664)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2088, file: !1733, line: 1215, baseType: !475, size: 64, offset: 18112)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2088, file: !1733, line: 1217, baseType: !475, size: 64, offset: 18176)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2088, file: !1733, line: 1219, baseType: !475, size: 64, offset: 18240)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2088, file: !1733, line: 1223, baseType: !2864, size: 64, offset: 18304)
!2864 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2865, line: 99, baseType: !2866)
!2865 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2866 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2865, line: 99, size: 64, elements: !2867)
!2867 = !{!2868}
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2866, file: !2865, line: 99, baseType: !2325, size: 64)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2088, file: !1733, line: 1225, baseType: !443, size: 32, offset: 18368)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2088, file: !1733, line: 1226, baseType: !91, size: 32, offset: 18400)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2088, file: !1733, line: 1227, baseType: !91, size: 32, offset: 18432)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2088, file: !1733, line: 1231, baseType: !2873, size: 64, offset: 18496)
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2874, size: 64)
!2874 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1733, line: 1231, flags: DIFlagFwdDecl)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2088, file: !1733, line: 1233, baseType: !239, size: 128, offset: 18560)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2088, file: !1733, line: 1240, baseType: !2877, size: 64, offset: 18688)
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2878, size: 64)
!2878 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1733, line: 62, flags: DIFlagFwdDecl)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2088, file: !1733, line: 1242, baseType: !2880, size: 64, offset: 18752)
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2881, size: 64)
!2881 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1733, line: 1242, flags: DIFlagFwdDecl)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2088, file: !1733, line: 1244, baseType: !239, size: 128, offset: 18816)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2088, file: !1733, line: 1245, baseType: !2884, size: 64, offset: 18944)
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2885 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1733, line: 51, flags: DIFlagFwdDecl)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2088, file: !1733, line: 1246, baseType: !184, size: 256, offset: 19008)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2088, file: !1733, line: 1247, baseType: !13, size: 32, offset: 19264)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2088, file: !1733, line: 1250, baseType: !2889, size: 64, offset: 19328)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1733, line: 57, flags: DIFlagFwdDecl)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2088, file: !1733, line: 1251, baseType: !184, size: 256, offset: 19392)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2088, file: !1733, line: 1252, baseType: !239, size: 128, offset: 19648)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2088, file: !1733, line: 1259, baseType: !1692, size: 64, offset: 19776)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2088, file: !1733, line: 1260, baseType: !769, size: 16, offset: 19840)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2088, file: !1733, line: 1261, baseType: !769, size: 16, offset: 19856)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2088, file: !1733, line: 1314, baseType: !2897, size: 64, offset: 19904)
!2897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2898, size: 64)
!2898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2899, line: 62, size: 256, align: 256, elements: !2900)
!2899 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2900 = !{!2901, !2902, !2903, !2904, !2905, !2906, !2907}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2898, file: !2899, line: 75, baseType: !472, size: 32)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2898, file: !2899, line: 90, baseType: !472, size: 32, offset: 32)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2898, file: !2899, line: 112, baseType: !476, size: 64, offset: 64)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2898, file: !2899, line: 132, baseType: !472, size: 32, offset: 128)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2898, file: !2899, line: 140, baseType: !472, size: 32, offset: 160)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2898, file: !2899, line: 149, baseType: !472, size: 32, offset: 192)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2898, file: !2899, line: 154, baseType: !2908, offset: 224)
!2908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !1183)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2088, file: !1733, line: 1315, baseType: !471, size: 32, offset: 19968)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2088, file: !1733, line: 1316, baseType: !471, size: 32, offset: 20000)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2088, file: !1733, line: 1321, baseType: !169, size: 64, offset: 20032)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2088, file: !1733, line: 1325, baseType: !91, size: 32, offset: 20096)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2088, file: !1733, line: 1326, baseType: !91, size: 32, offset: 20128)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2088, file: !1733, line: 1327, baseType: !91, size: 32, offset: 20160)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2088, file: !1733, line: 1328, baseType: !91, size: 32, offset: 20192)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2088, file: !1733, line: 1329, baseType: !851, size: 128, align: 64, offset: 20224)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2088, file: !1733, line: 1332, baseType: !2918, size: 128, offset: 20352)
!2918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2919, line: 51, size: 128, elements: !2920)
!2919 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2920 = !{!2921, !2926, !2927}
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2918, file: !2919, line: 60, baseType: !2922, size: 64)
!2922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2923, line: 7, size: 64, elements: !2924)
!2923 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2924 = !{!2925}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2922, file: !2923, line: 12, baseType: !2322, size: 64)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2918, file: !2919, line: 63, baseType: !718, size: 8, offset: 64)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2918, file: !2919, line: 70, baseType: !718, size: 8, offset: 72)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2088, file: !1733, line: 1335, baseType: !1731, size: 64, offset: 20480)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2088, file: !1733, line: 1337, baseType: !2930, size: 128, offset: 20544)
!2930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2919, line: 39, size: 128, elements: !2931)
!2931 = !{!2932, !2993, !2994}
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2930, file: !2919, line: 40, baseType: !2933, size: 64)
!2933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2934, size: 64)
!2934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1369, line: 74, size: 512, align: 128, elements: !2935)
!2935 = !{!2936, !2937, !2987, !2992}
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2934, file: !1369, line: 75, baseType: !169, size: 64)
!2937 = !DIDerivedType(tag: DW_TAG_member, scope: !2934, file: !1369, line: 83, baseType: !2938, size: 320, offset: 64)
!2938 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2934, file: !1369, line: 83, size: 320, elements: !2939)
!2939 = !{!2940, !2961, !2975, !2979, !2986}
!2940 = !DIDerivedType(tag: DW_TAG_member, scope: !2938, file: !1369, line: 84, baseType: !2941, size: 320)
!2941 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2938, file: !1369, line: 84, size: 320, elements: !2942)
!2942 = !{!2943, !2954, !2955, !2960}
!2943 = !DIDerivedType(tag: DW_TAG_member, scope: !2941, file: !1369, line: 90, baseType: !2944, size: 128)
!2944 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2941, file: !1369, line: 90, size: 128, elements: !2945)
!2945 = !{!2946, !2947, !2952, !2953}
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2944, file: !1369, line: 91, baseType: !239, size: 128)
!2947 = !DIDerivedType(tag: DW_TAG_member, scope: !2944, file: !1369, line: 94, baseType: !2948, size: 128)
!2948 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2944, file: !1369, line: 94, size: 128, elements: !2949)
!2949 = !{!2950, !2951}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2948, file: !1369, line: 96, baseType: !159, size: 64)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2948, file: !1369, line: 98, baseType: !13, size: 32, offset: 64)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2944, file: !1369, line: 102, baseType: !239, size: 128)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2944, file: !1369, line: 103, baseType: !239, size: 128)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2941, file: !1369, line: 106, baseType: !398, size: 64, offset: 128)
!2955 = !DIDerivedType(tag: DW_TAG_member, scope: !2941, file: !1369, line: 107, baseType: !2956, size: 64, offset: 192)
!2956 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2941, file: !1369, line: 107, size: 64, elements: !2957)
!2957 = !{!2958, !2959}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2956, file: !1369, line: 108, baseType: !169, size: 64)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2956, file: !1369, line: 109, baseType: !169, size: 64)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2941, file: !1369, line: 117, baseType: !169, size: 64, offset: 256)
!2961 = !DIDerivedType(tag: DW_TAG_member, scope: !2938, file: !1369, line: 119, baseType: !2962, size: 320)
!2962 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2938, file: !1369, line: 119, size: 320, elements: !2963)
!2963 = !{!2964, !2965, !2968, !2969, !2970}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2962, file: !1369, line: 124, baseType: !169, size: 64)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2962, file: !1369, line: 125, baseType: !2966, size: 64, offset: 64)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !1369, line: 125, flags: DIFlagFwdDecl)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2962, file: !1369, line: 126, baseType: !169, size: 64, offset: 128)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2962, file: !1369, line: 127, baseType: !169, size: 64, offset: 192)
!2970 = !DIDerivedType(tag: DW_TAG_member, scope: !2962, file: !1369, line: 128, baseType: !2971, size: 64, offset: 256)
!2971 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2962, file: !1369, line: 128, size: 64, elements: !2972)
!2972 = !{!2973, !2974}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2971, file: !1369, line: 133, baseType: !169, size: 64)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2971, file: !1369, line: 138, baseType: !188, size: 64)
!2975 = !DIDerivedType(tag: DW_TAG_member, scope: !2938, file: !1369, line: 141, baseType: !2976, size: 64)
!2976 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2938, file: !1369, line: 141, size: 64, elements: !2977)
!2977 = !{!2978}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2976, file: !1369, line: 142, baseType: !169, size: 64)
!2979 = !DIDerivedType(tag: DW_TAG_member, scope: !2938, file: !1369, line: 144, baseType: !2980, size: 128)
!2980 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2938, file: !1369, line: 144, size: 128, elements: !2981)
!2981 = !{!2982, !2985}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2980, file: !1369, line: 146, baseType: !2983, size: 64)
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2984 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1369, line: 146, flags: DIFlagFwdDecl)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2980, file: !1369, line: 147, baseType: !159, size: 64, offset: 64)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2938, file: !1369, line: 161, baseType: !851, size: 128, align: 64)
!2987 = !DIDerivedType(tag: DW_TAG_member, scope: !2934, file: !1369, line: 164, baseType: !2988, size: 32, offset: 384)
!2988 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2934, file: !1369, line: 164, size: 32, elements: !2989)
!2989 = !{!2990, !2991}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2988, file: !1369, line: 169, baseType: !213, size: 32)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2988, file: !1369, line: 177, baseType: !13, size: 32)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2934, file: !1369, line: 181, baseType: !213, size: 32, offset: 416)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2930, file: !2919, line: 42, baseType: !472, size: 32, offset: 64)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2930, file: !2919, line: 43, baseType: !472, size: 32, offset: 96)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2088, file: !1733, line: 1340, baseType: !2996, size: 64, offset: 20672)
!2996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2997, size: 64)
!2997 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1733, line: 69, flags: DIFlagFwdDecl)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2088, file: !1733, line: 1351, baseType: !91, size: 32, offset: 20736)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2088, file: !1733, line: 1352, baseType: !91, size: 32, offset: 20768)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2088, file: !1733, line: 1354, baseType: !169, size: 64, offset: 20800)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2088, file: !1733, line: 1364, baseType: !475, size: 64, offset: 20864)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2088, file: !1733, line: 1365, baseType: !475, size: 64, offset: 20928)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2088, file: !1733, line: 1412, baseType: !169, size: 64, offset: 20992)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2088, file: !1733, line: 1453, baseType: !3005, size: 64, offset: 21056)
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3006, size: 64)
!3006 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1733, line: 1453, flags: DIFlagFwdDecl)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2088, file: !1733, line: 1457, baseType: !3008, size: 64, offset: 21120)
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !50, line: 61, size: 576, elements: !3010)
!3010 = !{!3011, !3012, !3031, !3034, !3035, !3068, !3078}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3009, file: !50, line: 62, baseType: !49, size: 32)
!3012 = !DIDerivedType(tag: DW_TAG_member, scope: !3009, file: !50, line: 64, baseType: !3013, size: 192, offset: 64)
!3013 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3009, file: !50, line: 64, size: 192, elements: !3014)
!3014 = !{!3015, !3026}
!3015 = !DIDerivedType(tag: DW_TAG_member, scope: !3013, file: !50, line: 65, baseType: !3016, size: 192)
!3016 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3013, file: !50, line: 65, size: 192, elements: !3017)
!3017 = !{!3018, !3025}
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3016, file: !50, line: 66, baseType: !3019, size: 128)
!3019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3020, line: 50, size: 128, elements: !3021)
!3020 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3021 = !{!3022, !3023, !3024}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3019, file: !3020, line: 52, baseType: !169, size: 64)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3019, file: !3020, line: 54, baseType: !13, size: 32, offset: 64)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3019, file: !3020, line: 55, baseType: !13, size: 32, offset: 96)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3016, file: !50, line: 67, baseType: !169, size: 64, offset: 128)
!3026 = !DIDerivedType(tag: DW_TAG_member, scope: !3013, file: !50, line: 70, baseType: !3027, size: 192)
!3027 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3013, file: !50, line: 70, size: 192, elements: !3028)
!3028 = !{!3029, !3030}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3027, file: !50, line: 71, baseType: !851, size: 128, align: 64)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3027, file: !50, line: 72, baseType: !169, size: 64, offset: 128)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3009, file: !50, line: 76, baseType: !3032, size: 64, offset: 256)
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3033, size: 64)
!3033 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !50, line: 76, flags: DIFlagFwdDecl)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3009, file: !50, line: 77, baseType: !169, size: 64, offset: 320)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3009, file: !50, line: 79, baseType: !3036, size: 64, offset: 384)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3020, line: 25, size: 256, elements: !3038)
!3038 = !{!3039, !3045, !3049}
!3039 = !DIDerivedType(tag: DW_TAG_member, scope: !3037, file: !3020, line: 26, baseType: !3040, size: 128)
!3040 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3037, file: !3020, line: 26, size: 128, elements: !3041)
!3041 = !{!3042, !3044}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3040, file: !3020, line: 27, baseType: !3043, size: 128)
!3043 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 128, elements: !2513)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3040, file: !3020, line: 28, baseType: !3043, size: 128)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3037, file: !3020, line: 31, baseType: !3046, size: 64, offset: 128)
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3047, size: 64)
!3047 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3048)
!3048 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3020, line: 23, flags: DIFlagFwdDecl)
!3049 = !DIDerivedType(tag: DW_TAG_member, scope: !3037, file: !3020, line: 33, baseType: !3050, size: 64, offset: 192)
!3050 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3037, file: !3020, line: 33, size: 64, elements: !3051)
!3051 = !{!3052, !3058, !3063}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3050, file: !3020, line: 38, baseType: !3053, size: 64)
!3053 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3050, file: !3020, line: 34, size: 64, elements: !3054)
!3054 = !{!3055, !3056, !3057}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3053, file: !3020, line: 35, baseType: !656, size: 32)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3053, file: !3020, line: 36, baseType: !221, size: 8, offset: 32)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3053, file: !3020, line: 37, baseType: !221, size: 8, offset: 40)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3050, file: !3020, line: 42, baseType: !3059, size: 16)
!3059 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3050, file: !3020, line: 39, size: 16, elements: !3060)
!3060 = !{!3061, !3062}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3059, file: !3020, line: 40, baseType: !221, size: 8)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3059, file: !3020, line: 41, baseType: !221, size: 8, offset: 8)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3050, file: !3020, line: 46, baseType: !3064, size: 16)
!3064 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3050, file: !3020, line: 43, size: 16, elements: !3065)
!3065 = !{!3066, !3067}
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3064, file: !3020, line: 44, baseType: !221, size: 8)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3064, file: !3020, line: 45, baseType: !221, size: 8, offset: 8)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3009, file: !50, line: 81, baseType: !3069, size: 64, offset: 448)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !50, line: 85, size: 384, elements: !3071)
!3071 = !{!3072, !3073, !3074, !3075, !3076, !3077}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3070, file: !50, line: 86, baseType: !3032, size: 64)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3070, file: !50, line: 87, baseType: !169, size: 64, offset: 64)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3070, file: !50, line: 88, baseType: !169, size: 64, offset: 128)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3070, file: !50, line: 89, baseType: !169, size: 64, offset: 192)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3070, file: !50, line: 90, baseType: !718, size: 8, offset: 256)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3070, file: !50, line: 92, baseType: !3069, size: 64, offset: 320)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3009, file: !50, line: 82, baseType: !13, size: 32, offset: 512)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2088, file: !1733, line: 1463, baseType: !3080, offset: 21184)
!3080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1733, line: 739, elements: !266)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2088, file: !1733, line: 1470, baseType: !851, size: 128, align: 64, offset: 21184)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2088, file: !1733, line: 1471, baseType: !1157, size: 32, offset: 21312)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2088, file: !1733, line: 1472, baseType: !91, size: 32, offset: 21344)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2088, file: !1733, line: 1474, baseType: !2087, size: 64, offset: 21376)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2088, file: !1733, line: 1475, baseType: !873, size: 320, offset: 21440)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2088, file: !1733, line: 1478, baseType: !3087, size: 64, offset: 21760)
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3088, size: 64)
!3088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3089, line: 49, size: 512, elements: !3090)
!3089 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3090 = !{!3091, !3092, !3093, !3094, !3095, !3097, !3098, !3099, !3101}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3088, file: !3089, line: 50, baseType: !3087, size: 64)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3088, file: !3089, line: 51, baseType: !159, size: 64, offset: 64)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3088, file: !3089, line: 52, baseType: !169, size: 64, offset: 128)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3088, file: !3089, line: 53, baseType: !169, size: 64, offset: 192)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3088, file: !3089, line: 54, baseType: !3096, size: 64, offset: 256)
!3096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2933, size: 64)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3088, file: !3089, line: 56, baseType: !13, size: 32, offset: 320)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3088, file: !3089, line: 58, baseType: !13, size: 32, offset: 352)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3088, file: !3089, line: 59, baseType: !3100, size: 64, offset: 384)
!3100 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !158, line: 159, baseType: !475)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3088, file: !3089, line: 60, baseType: !1615, size: 64, offset: 448)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2088, file: !1733, line: 1482, baseType: !1157, size: 32, offset: 21824)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2088, file: !1733, line: 1489, baseType: !159, size: 64, offset: 21888)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2088, file: !1733, line: 1504, baseType: !159, size: 64, offset: 21952)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2088, file: !1733, line: 1505, baseType: !476, size: 64, offset: 22016)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2088, file: !1733, line: 1506, baseType: !475, size: 64, offset: 22080)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2088, file: !1733, line: 1507, baseType: !476, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2088, file: !1733, line: 1508, baseType: !476, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2088, file: !1733, line: 1509, baseType: !476, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2088, file: !1733, line: 1510, baseType: !851, size: 128, align: 64, offset: 22208)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2088, file: !1733, line: 1511, baseType: !91, size: 32, offset: 22336)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2088, file: !1733, line: 1515, baseType: !3113, size: 64, offset: 22400)
!3113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1115, line: 56, size: 64, elements: !3114)
!3114 = !{!3115}
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3113, file: !1115, line: 57, baseType: !1118, size: 64)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2088, file: !1733, line: 1518, baseType: !3113, size: 64, offset: 22464)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2088, file: !1733, line: 1528, baseType: !851, size: 128, align: 64, offset: 22528)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2088, file: !1733, line: 1552, baseType: !3119, size: 35328, offset: 23040)
!3119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3120, line: 430, size: 35328, elements: !3121)
!3120 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3121 = !{!3122, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3151, !3152, !3153, !3154, !3155, !3156, !3159, !3160, !3161, !3162}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3119, file: !3120, line: 432, baseType: !3123, size: 192)
!3123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3124, size: 192, elements: !324)
!3124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3125, line: 16, size: 64, elements: !3126)
!3125 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3126 = !{!3127, !3128, !3129, !3130, !3131, !3132, !3133, !3134, !3135, !3136, !3137, !3138, !3139}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3124, file: !3125, line: 17, baseType: !229, size: 16)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3124, file: !3125, line: 18, baseType: !229, size: 16, offset: 16)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3124, file: !3125, line: 19, baseType: !229, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3124, file: !3125, line: 19, baseType: !229, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3124, file: !3125, line: 19, baseType: !229, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3124, file: !3125, line: 19, baseType: !229, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3124, file: !3125, line: 19, baseType: !229, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3124, file: !3125, line: 20, baseType: !229, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3124, file: !3125, line: 20, baseType: !229, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3124, file: !3125, line: 20, baseType: !229, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3124, file: !3125, line: 20, baseType: !229, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3124, file: !3125, line: 20, baseType: !229, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3124, file: !3125, line: 20, baseType: !229, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3119, file: !3120, line: 436, baseType: !169, size: 64, offset: 192)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3119, file: !3120, line: 440, baseType: !231, size: 16, offset: 256)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3119, file: !3120, line: 441, baseType: !231, size: 16, offset: 272)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3119, file: !3120, line: 442, baseType: !231, size: 16, offset: 288)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3119, file: !3120, line: 443, baseType: !231, size: 16, offset: 304)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3119, file: !3120, line: 447, baseType: !169, size: 64, offset: 320)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3119, file: !3120, line: 448, baseType: !169, size: 64, offset: 384)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3119, file: !3120, line: 459, baseType: !3148, size: 256, offset: 448)
!3148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3149, size: 256, elements: !861)
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3150 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3120, line: 428, flags: DIFlagFwdDecl)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3119, file: !3120, line: 461, baseType: !169, size: 64, offset: 704)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3119, file: !3120, line: 463, baseType: !169, size: 64, offset: 768)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3119, file: !3120, line: 465, baseType: !169, size: 64, offset: 832)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3119, file: !3120, line: 466, baseType: !169, size: 64, offset: 896)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3119, file: !3120, line: 467, baseType: !169, size: 64, offset: 960)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3119, file: !3120, line: 473, baseType: !3157, size: 64, offset: 1024)
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3158 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3120, line: 10, flags: DIFlagFwdDecl)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3119, file: !3120, line: 480, baseType: !169, size: 64, offset: 1088)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3119, file: !3120, line: 482, baseType: !13, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3119, file: !3120, line: 491, baseType: !471, size: 32, offset: 1184)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3119, file: !3120, line: 501, baseType: !3163, size: 33792, offset: 1536)
!3163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3164, line: 448, size: 33792, elements: !3165)
!3164 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3165 = !{!3166, !3167, !3168, !3330, !3331, !3337, !3338}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3163, file: !3164, line: 461, baseType: !13, size: 32)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3163, file: !3164, line: 468, baseType: !169, size: 64, offset: 64)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3163, file: !3164, line: 476, baseType: !3169, size: 64, offset: 128)
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3164, line: 356, size: 33280, align: 512, elements: !3171)
!3171 = !{!3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3170, file: !3164, line: 358, baseType: !13, size: 32)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3170, file: !3164, line: 361, baseType: !13, size: 32, offset: 32)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3170, file: !3164, line: 364, baseType: !475, size: 64, offset: 64)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3170, file: !3164, line: 367, baseType: !475, size: 64, offset: 128)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3170, file: !3164, line: 370, baseType: !475, size: 64, offset: 192)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3170, file: !3164, line: 373, baseType: !13, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3170, file: !3164, line: 376, baseType: !13, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3170, file: !3164, line: 391, baseType: !13, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3170, file: !3164, line: 394, baseType: !13, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3170, file: !3164, line: 397, baseType: !3182, size: 32768, offset: 512)
!3182 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3164, line: 348, size: 32768, elements: !3183)
!3183 = !{!3184, !3199, !3236, !3313, !3326}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3182, file: !3164, line: 349, baseType: !3185, size: 896)
!3185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3164, line: 12, size: 896, elements: !3186)
!3186 = !{!3187, !3188, !3189, !3190, !3191, !3192, !3193, !3194, !3198}
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3185, file: !3164, line: 13, baseType: !471, size: 32)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3185, file: !3164, line: 14, baseType: !471, size: 32, offset: 32)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3185, file: !3164, line: 15, baseType: !471, size: 32, offset: 64)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3185, file: !3164, line: 16, baseType: !471, size: 32, offset: 96)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3185, file: !3164, line: 17, baseType: !471, size: 32, offset: 128)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3185, file: !3164, line: 18, baseType: !471, size: 32, offset: 160)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3185, file: !3164, line: 19, baseType: !471, size: 32, offset: 192)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3185, file: !3164, line: 22, baseType: !3195, size: 640, offset: 224)
!3195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !471, size: 640, elements: !3196)
!3196 = !{!3197}
!3197 = !DISubrange(count: 20)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3185, file: !3164, line: 25, baseType: !471, size: 32, offset: 864)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3182, file: !3164, line: 350, baseType: !3200, size: 4096, align: 128)
!3200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3164, line: 34, size: 4096, align: 128, elements: !3201)
!3201 = !{!3202, !3203, !3204, !3205, !3206, !3221, !3222, !3223, !3225, !3227, !3231}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3200, file: !3164, line: 35, baseType: !229, size: 16)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3200, file: !3164, line: 36, baseType: !229, size: 16, offset: 16)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3200, file: !3164, line: 37, baseType: !229, size: 16, offset: 32)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3200, file: !3164, line: 38, baseType: !229, size: 16, offset: 48)
!3206 = !DIDerivedType(tag: DW_TAG_member, scope: !3200, file: !3164, line: 39, baseType: !3207, size: 128, offset: 64)
!3207 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3200, file: !3164, line: 39, size: 128, elements: !3208)
!3208 = !{!3209, !3214}
!3209 = !DIDerivedType(tag: DW_TAG_member, scope: !3207, file: !3164, line: 40, baseType: !3210, size: 128)
!3210 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3207, file: !3164, line: 40, size: 128, elements: !3211)
!3211 = !{!3212, !3213}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3210, file: !3164, line: 41, baseType: !475, size: 64)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3210, file: !3164, line: 42, baseType: !475, size: 64, offset: 64)
!3214 = !DIDerivedType(tag: DW_TAG_member, scope: !3207, file: !3164, line: 44, baseType: !3215, size: 128)
!3215 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3207, file: !3164, line: 44, size: 128, elements: !3216)
!3216 = !{!3217, !3218, !3219, !3220}
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3215, file: !3164, line: 45, baseType: !471, size: 32)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3215, file: !3164, line: 46, baseType: !471, size: 32, offset: 32)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3215, file: !3164, line: 47, baseType: !471, size: 32, offset: 64)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3215, file: !3164, line: 48, baseType: !471, size: 32, offset: 96)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3200, file: !3164, line: 51, baseType: !471, size: 32, offset: 192)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3200, file: !3164, line: 52, baseType: !471, size: 32, offset: 224)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3200, file: !3164, line: 55, baseType: !3224, size: 1024, offset: 256)
!3224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !471, size: 1024, elements: !484)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3200, file: !3164, line: 58, baseType: !3226, size: 2048, offset: 1280)
!3226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !471, size: 2048, elements: !328)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3200, file: !3164, line: 60, baseType: !3228, size: 384, offset: 3328)
!3228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !471, size: 384, elements: !3229)
!3229 = !{!3230}
!3230 = !DISubrange(count: 12)
!3231 = !DIDerivedType(tag: DW_TAG_member, scope: !3200, file: !3164, line: 62, baseType: !3232, size: 384, offset: 3712)
!3232 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3200, file: !3164, line: 62, size: 384, elements: !3233)
!3233 = !{!3234, !3235}
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3232, file: !3164, line: 63, baseType: !3228, size: 384)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3232, file: !3164, line: 64, baseType: !3228, size: 384)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3182, file: !3164, line: 351, baseType: !3237, size: 1088)
!3237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3164, line: 79, size: 1088, elements: !3238)
!3238 = !{!3239, !3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3312}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3237, file: !3164, line: 80, baseType: !471, size: 32)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3237, file: !3164, line: 81, baseType: !471, size: 32, offset: 32)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3237, file: !3164, line: 82, baseType: !471, size: 32, offset: 64)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3237, file: !3164, line: 83, baseType: !471, size: 32, offset: 96)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3237, file: !3164, line: 84, baseType: !471, size: 32, offset: 128)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3237, file: !3164, line: 85, baseType: !471, size: 32, offset: 160)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3237, file: !3164, line: 86, baseType: !471, size: 32, offset: 192)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3237, file: !3164, line: 88, baseType: !3195, size: 640, offset: 224)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3237, file: !3164, line: 89, baseType: !221, size: 8, offset: 864)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3237, file: !3164, line: 90, baseType: !221, size: 8, offset: 872)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3237, file: !3164, line: 91, baseType: !221, size: 8, offset: 880)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3237, file: !3164, line: 92, baseType: !221, size: 8, offset: 888)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3237, file: !3164, line: 93, baseType: !221, size: 8, offset: 896)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3237, file: !3164, line: 94, baseType: !221, size: 8, offset: 904)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3237, file: !3164, line: 95, baseType: !3254, size: 64, offset: 960)
!3254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3255, size: 64)
!3255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3256, line: 11, size: 128, elements: !3257)
!3256 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3257 = !{!3258, !3259}
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3255, file: !3256, line: 12, baseType: !359, size: 64)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3255, file: !3256, line: 13, baseType: !3260, size: 64, offset: 64)
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3262, line: 103, size: 1344, elements: !3263)
!3262 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3263 = !{!3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3292, !3293, !3294}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3261, file: !3262, line: 109, baseType: !169, size: 64)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3261, file: !3262, line: 110, baseType: !169, size: 64, offset: 64)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3261, file: !3262, line: 111, baseType: !169, size: 64, offset: 128)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3261, file: !3262, line: 112, baseType: !169, size: 64, offset: 192)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3261, file: !3262, line: 113, baseType: !169, size: 64, offset: 256)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3261, file: !3262, line: 114, baseType: !169, size: 64, offset: 320)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3261, file: !3262, line: 117, baseType: !169, size: 64, offset: 384)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3261, file: !3262, line: 118, baseType: !169, size: 64, offset: 448)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3261, file: !3262, line: 119, baseType: !169, size: 64, offset: 512)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3261, file: !3262, line: 120, baseType: !169, size: 64, offset: 576)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3261, file: !3262, line: 121, baseType: !169, size: 64, offset: 640)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3261, file: !3262, line: 122, baseType: !169, size: 64, offset: 704)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3261, file: !3262, line: 123, baseType: !169, size: 64, offset: 768)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3261, file: !3262, line: 124, baseType: !169, size: 64, offset: 832)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3261, file: !3262, line: 125, baseType: !169, size: 64, offset: 896)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3261, file: !3262, line: 139, baseType: !169, size: 64, offset: 960)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3261, file: !3262, line: 142, baseType: !169, size: 64, offset: 1024)
!3281 = !DIDerivedType(tag: DW_TAG_member, scope: !3261, file: !3262, line: 144, baseType: !3282, size: 64, offset: 1088)
!3282 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3261, file: !3262, line: 144, size: 64, elements: !3283)
!3283 = !{!3284, !3285, !3286}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3282, file: !3262, line: 146, baseType: !229, size: 16)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3282, file: !3262, line: 148, baseType: !475, size: 64)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3282, file: !3262, line: 150, baseType: !3287, size: 64)
!3287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3262, line: 59, size: 64, elements: !3288)
!3288 = !{!3289, !3290, !3291}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3287, file: !3262, line: 61, baseType: !475, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3287, file: !3262, line: 63, baseType: !475, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3287, file: !3262, line: 65, baseType: !475, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3261, file: !3262, line: 153, baseType: !169, size: 64, offset: 1152)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3261, file: !3262, line: 154, baseType: !169, size: 64, offset: 1216)
!3294 = !DIDerivedType(tag: DW_TAG_member, scope: !3261, file: !3262, line: 156, baseType: !3295, size: 64, offset: 1280)
!3295 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3261, file: !3262, line: 156, size: 64, elements: !3296)
!3296 = !{!3297, !3298, !3299}
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3295, file: !3262, line: 158, baseType: !229, size: 16)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3295, file: !3262, line: 160, baseType: !475, size: 64)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3295, file: !3262, line: 162, baseType: !3300, size: 64)
!3300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3262, line: 69, size: 64, elements: !3301)
!3301 = !{!3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311}
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3300, file: !3262, line: 71, baseType: !475, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3300, file: !3262, line: 73, baseType: !475, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3300, file: !3262, line: 75, baseType: !475, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3300, file: !3262, line: 77, baseType: !475, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3300, file: !3262, line: 80, baseType: !475, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3300, file: !3262, line: 83, baseType: !475, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3300, file: !3262, line: 86, baseType: !475, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3300, file: !3262, line: 88, baseType: !475, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3300, file: !3262, line: 93, baseType: !475, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3300, file: !3262, line: 100, baseType: !475, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3237, file: !3164, line: 96, baseType: !471, size: 32, offset: 1024)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3182, file: !3164, line: 352, baseType: !3314, size: 4608, align: 512)
!3314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3164, line: 333, size: 4608, align: 512, elements: !3315)
!3315 = !{!3316, !3317, !3324}
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3314, file: !3164, line: 334, baseType: !3200, size: 4096, align: 128)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3314, file: !3164, line: 335, baseType: !3318, size: 512, offset: 4096)
!3318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3164, line: 312, size: 512, elements: !3319)
!3319 = !{!3320, !3321, !3322}
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3318, file: !3164, line: 313, baseType: !475, size: 64)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3318, file: !3164, line: 314, baseType: !475, size: 64, offset: 64)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3318, file: !3164, line: 315, baseType: !3323, size: 384, offset: 128)
!3323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !475, size: 384, elements: !5)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3314, file: !3164, line: 336, baseType: !3325, offset: 4608)
!3325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, elements: !1183)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3182, file: !3164, line: 353, baseType: !3327, size: 32768)
!3327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 32768, elements: !3328)
!3328 = !{!3329}
!3329 = !DISubrange(count: 4096)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3163, file: !3164, line: 484, baseType: !3169, size: 64, offset: 192)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3163, file: !3164, line: 491, baseType: !3332, size: 128, offset: 256)
!3332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3164, line: 404, size: 128, elements: !3333)
!3333 = !{!3334, !3335, !3336}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3332, file: !3164, line: 424, baseType: !475, size: 64)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3332, file: !3164, line: 432, baseType: !13, size: 32, offset: 64)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3332, file: !3164, line: 440, baseType: !13, size: 32, offset: 96)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3163, file: !3164, line: 498, baseType: !3332, size: 128, offset: 384)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3163, file: !3164, line: 508, baseType: !3170, size: 33280, align: 512, offset: 512)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2070, file: !2071, line: 16, baseType: !1168, size: 192, offset: 512)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2070, file: !2071, line: 17, baseType: !213, size: 32, offset: 704)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !554, file: !20, line: 1240, baseType: !159, size: 64, offset: 6912)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !554, file: !20, line: 1243, baseType: !471, size: 32, offset: 6976)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !554, file: !20, line: 1245, baseType: !1247, size: 64, offset: 7040)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !554, file: !20, line: 1246, baseType: !1247, size: 64, offset: 7104)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !554, file: !20, line: 1248, baseType: !472, size: 32, offset: 7168)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !554, file: !20, line: 1249, baseType: !3347, size: 64, offset: 7232)
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!3348 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !20, line: 634, flags: DIFlagFwdDecl)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !554, file: !20, line: 1252, baseType: !3350, size: 256, offset: 7296)
!3350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !484)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !554, file: !20, line: 1253, baseType: !3352, size: 128, offset: 7552)
!3352 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3353, line: 21, baseType: !3354)
!3353 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3354 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3353, line: 19, size: 128, elements: !3355)
!3355 = !{!3356}
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3354, file: !3353, line: 20, baseType: !3357, size: 128)
!3357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 128, elements: !2513)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !554, file: !20, line: 1255, baseType: !13, size: 32, offset: 7680)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !554, file: !20, line: 1261, baseType: !184, size: 256, offset: 7744)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !554, file: !20, line: 1267, baseType: !174, size: 64, offset: 8000)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !554, file: !20, line: 1269, baseType: !500, size: 64, offset: 8064)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !554, file: !20, line: 1271, baseType: !3363, size: 448, offset: 8128)
!3363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1850, line: 63, size: 448, elements: !3364)
!3364 = !{!3365, !3370, !3371, !3372, !3373, !3374, !3375}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3363, file: !1850, line: 64, baseType: !3366, size: 64)
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3367 = !DISubroutineType(types: !3368)
!3368 = !{!169, !3369, !1848}
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3363, file: !1850, line: 66, baseType: !3366, size: 64, offset: 64)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3363, file: !1850, line: 69, baseType: !359, size: 64, offset: 128)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3363, file: !1850, line: 70, baseType: !91, size: 32, offset: 192)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3363, file: !1850, line: 71, baseType: !13, size: 32, offset: 224)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3363, file: !1850, line: 74, baseType: !239, size: 128, offset: 256)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3363, file: !1850, line: 85, baseType: !3376, size: 64, offset: 384)
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !554, file: !20, line: 1274, baseType: !188, size: 64, offset: 8576)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !554, file: !20, line: 1280, baseType: !188, size: 64, offset: 8640)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !554, file: !20, line: 1283, baseType: !91, size: 32, offset: 8704)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !554, file: !20, line: 1286, baseType: !1782, size: 32, offset: 8736)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !554, file: !20, line: 1289, baseType: !951, size: 64, offset: 8768)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !554, file: !20, line: 1290, baseType: !999, size: 64, offset: 8832)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !554, file: !20, line: 1297, baseType: !1367, size: 64, offset: 8896)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !554, file: !20, line: 1304, baseType: !3385, size: 64, offset: 8960)
!3385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3386, line: 49, size: 64, elements: !3387)
!3386 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3387 = !{!3388}
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3385, file: !3386, line: 50, baseType: !3389, size: 64)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3386, line: 41, size: 512, align: 512, elements: !3391)
!3391 = !{!3392, !3393, !3398}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3390, file: !3386, line: 43, baseType: !248, size: 32)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3390, file: !3386, line: 45, baseType: !3394, size: 192, offset: 64)
!3394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3386, line: 29, size: 192, elements: !3395)
!3395 = !{!3396, !3397}
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3394, file: !3386, line: 30, baseType: !239, size: 128)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3394, file: !3386, line: 32, baseType: !359, size: 64, offset: 128)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3390, file: !3386, line: 46, baseType: !359, size: 64, offset: 256)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !554, file: !20, line: 1305, baseType: !3385, size: 64, offset: 9024)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !554, file: !20, line: 1306, baseType: !851, size: 128, align: 64, offset: 9088)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !554, file: !20, line: 1307, baseType: !891, size: 256, offset: 9216)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !554, file: !20, line: 1309, baseType: !184, size: 256, offset: 9472)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !554, file: !20, line: 1314, baseType: !91, size: 32, offset: 9728)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !554, file: !20, line: 1317, baseType: !248, size: 32, align: 512, offset: 10240)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !554, file: !20, line: 1318, baseType: !239, size: 128, offset: 10304)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !554, file: !20, line: 1320, baseType: !248, size: 32, offset: 10432)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !554, file: !20, line: 1321, baseType: !239, size: 128, offset: 10496)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !548, file: !549, line: 73, baseType: !91, size: 32, offset: 128)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !548, file: !549, line: 74, baseType: !3410, size: 64, offset: 192)
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3411 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1207, line: 42, flags: DIFlagFwdDecl)
!3412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !502, file: !439, line: 141, baseType: !3414, size: 64, offset: 704)
!3414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3415, size: 64)
!3415 = !DISubroutineType(types: !3416)
!3416 = !{!91, !1910, !718}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !502, file: !439, line: 142, baseType: !3418, size: 64, offset: 768)
!3418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3419, size: 64)
!3419 = !DISubroutineType(types: !3420)
!3420 = !{!437, !437, !3421}
!3421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3422, size: 64)
!3422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !403)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !438, file: !439, line: 96, baseType: !553, size: 64, offset: 832)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !438, file: !439, line: 97, baseType: !169, size: 64, offset: 896)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !438, file: !439, line: 98, baseType: !159, size: 64, offset: 960)
!3426 = !DIDerivedType(tag: DW_TAG_member, scope: !438, file: !439, line: 100, baseType: !3427, size: 128, offset: 1024)
!3427 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !438, file: !439, line: 100, size: 128, elements: !3428)
!3428 = !{!3429, !3430}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3427, file: !439, line: 101, baseType: !239, size: 128)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3427, file: !439, line: 102, baseType: !3431, size: 64)
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !438, file: !439, line: 104, baseType: !239, size: 128, offset: 1152)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !438, file: !439, line: 105, baseType: !239, size: 128, offset: 1280)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !438, file: !439, line: 113, baseType: !3435, size: 128, offset: 1408)
!3435 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !438, file: !439, line: 109, size: 128, elements: !3436)
!3436 = !{!3437, !3438, !3439}
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3435, file: !439, line: 110, baseType: !877, size: 128)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3435, file: !439, line: 111, baseType: !453, size: 128)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3435, file: !439, line: 112, baseType: !851, size: 128, align: 64)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !431, file: !20, line: 1968, baseType: !3441, size: 64, offset: 64)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = !DISubroutineType(types: !3443)
!3443 = !{!174, !437, !402, !3444}
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3446, line: 10, size: 128, elements: !3447)
!3446 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3447 = !{!3448, !3449}
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3445, file: !3446, line: 11, baseType: !269, size: 64)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3445, file: !3446, line: 12, baseType: !159, size: 64, offset: 64)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !431, file: !20, line: 1969, baseType: !3451, size: 64, offset: 128)
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3452 = !DISubroutineType(types: !3453)
!3453 = !{!91, !3410, !402, !91}
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !431, file: !20, line: 1970, baseType: !3455, size: 64, offset: 192)
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = !DISubroutineType(types: !3457)
!3457 = !{!425, !402, !91, !718}
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !431, file: !20, line: 1972, baseType: !3459, size: 64, offset: 256)
!3459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3460, size: 64)
!3460 = !DISubroutineType(types: !3461)
!3461 = !{!91, !437, !323, !91}
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !431, file: !20, line: 1974, baseType: !3463, size: 64, offset: 320)
!3463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3464, size: 64)
!3464 = !DISubroutineType(types: !3465)
!3465 = !{!91, !3410, !402, !437, !365, !718}
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !431, file: !20, line: 1976, baseType: !3467, size: 64, offset: 384)
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3468 = !DISubroutineType(types: !3469)
!3469 = !{!91, !437, !402, !437}
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !431, file: !20, line: 1977, baseType: !3471, size: 64, offset: 448)
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!3472 = !DISubroutineType(types: !3473)
!3473 = !{!91, !402, !437}
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !431, file: !20, line: 1978, baseType: !3475, size: 64, offset: 512)
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3476, size: 64)
!3476 = !DISubroutineType(types: !3477)
!3477 = !{!91, !3410, !402, !437, !174}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !431, file: !20, line: 1980, baseType: !3479, size: 64, offset: 576)
!3479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3480, size: 64)
!3480 = !DISubroutineType(types: !3481)
!3481 = !{!91, !3410, !402, !437, !365}
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !431, file: !20, line: 1982, baseType: !3471, size: 64, offset: 640)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !431, file: !20, line: 1983, baseType: !3484, size: 64, offset: 704)
!3484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3485, size: 64)
!3485 = !DISubroutineType(types: !3486)
!3486 = !{!91, !3410, !402, !437, !365, !558}
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !431, file: !20, line: 1985, baseType: !3488, size: 64, offset: 768)
!3488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3489, size: 64)
!3489 = !DISubroutineType(types: !3490)
!3490 = !{!91, !3410, !402, !437, !402, !437, !13}
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !431, file: !20, line: 1987, baseType: !3492, size: 64, offset: 832)
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3493 = !DISubroutineType(types: !3494)
!3494 = !{!91, !3410, !437, !3495}
!3495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3496, size: 64)
!3496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !20, line: 226, size: 640, elements: !3497)
!3497 = !{!3498, !3499, !3500, !3510, !3519, !3520, !3525, !3526, !3527}
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3496, file: !20, line: 227, baseType: !13, size: 32)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3496, file: !20, line: 228, baseType: !365, size: 16, offset: 32)
!3500 = !DIDerivedType(tag: DW_TAG_member, scope: !3496, file: !20, line: 241, baseType: !3501, size: 32, offset: 64)
!3501 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3496, file: !20, line: 241, size: 32, elements: !3502)
!3502 = !{!3503, !3504}
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3501, file: !20, line: 242, baseType: !408, size: 32)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3501, file: !20, line: 243, baseType: !3505, size: 32)
!3505 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3506, line: 16, baseType: !3507)
!3506 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3507 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3506, line: 14, size: 32, elements: !3508)
!3508 = !{!3509}
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3507, file: !3506, line: 15, baseType: !413, size: 32)
!3510 = !DIDerivedType(tag: DW_TAG_member, scope: !3496, file: !20, line: 245, baseType: !3511, size: 32, offset: 96)
!3511 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3496, file: !20, line: 245, size: 32, elements: !3512)
!3512 = !{!3513, !3514}
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3511, file: !20, line: 246, baseType: !417, size: 32)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3511, file: !20, line: 247, baseType: !3515, size: 32)
!3515 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3506, line: 20, baseType: !3516)
!3516 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3506, line: 18, size: 32, elements: !3517)
!3517 = !{!3518}
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3516, file: !3506, line: 19, baseType: !421, size: 32)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3496, file: !20, line: 249, baseType: !563, size: 64, offset: 128)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3496, file: !20, line: 250, baseType: !3521, size: 128, offset: 192)
!3521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1248, line: 13, size: 128, elements: !3522)
!3522 = !{!3523, !3524}
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3521, file: !1248, line: 14, baseType: !1247, size: 64)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3521, file: !1248, line: 15, baseType: !359, size: 64, offset: 64)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3496, file: !20, line: 251, baseType: !3521, size: 128, offset: 320)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3496, file: !20, line: 252, baseType: !3521, size: 128, offset: 448)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3496, file: !20, line: 259, baseType: !1413, size: 64, offset: 576)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !431, file: !20, line: 1988, baseType: !3529, size: 64, offset: 896)
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3530, size: 64)
!3530 = !DISubroutineType(types: !3531)
!3531 = !{!91, !3410, !1910, !3532, !471, !13}
!3532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3533, size: 64)
!3533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3534, line: 22, size: 1280, elements: !3535)
!3534 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3535 = !{!3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556}
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3533, file: !3534, line: 23, baseType: !471, size: 32)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3533, file: !3534, line: 24, baseType: !365, size: 16, offset: 32)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3533, file: !3534, line: 25, baseType: !13, size: 32, offset: 64)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3533, file: !3534, line: 26, baseType: !1255, size: 32, offset: 96)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3533, file: !3534, line: 27, baseType: !475, size: 64, offset: 128)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3533, file: !3534, line: 28, baseType: !475, size: 64, offset: 192)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3533, file: !3534, line: 41, baseType: !475, size: 64, offset: 256)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3533, file: !3534, line: 42, baseType: !558, size: 32, offset: 320)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3533, file: !3534, line: 43, baseType: !558, size: 32, offset: 352)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3533, file: !3534, line: 44, baseType: !408, size: 32, offset: 384)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3533, file: !3534, line: 45, baseType: !417, size: 32, offset: 416)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3533, file: !3534, line: 46, baseType: !563, size: 64, offset: 448)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3533, file: !3534, line: 47, baseType: !3521, size: 128, offset: 512)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3533, file: !3534, line: 48, baseType: !3521, size: 128, offset: 640)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3533, file: !3534, line: 49, baseType: !3521, size: 128, offset: 768)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3533, file: !3534, line: 50, baseType: !3521, size: 128, offset: 896)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3533, file: !3534, line: 51, baseType: !475, size: 64, offset: 1024)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3533, file: !3534, line: 52, baseType: !475, size: 64, offset: 1088)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3533, file: !3534, line: 53, baseType: !471, size: 32, offset: 1152)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3533, file: !3534, line: 54, baseType: !471, size: 32, offset: 1184)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3533, file: !3534, line: 55, baseType: !475, size: 64, offset: 1216)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !431, file: !20, line: 1990, baseType: !3558, size: 64, offset: 960)
!3558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3559, size: 64)
!3559 = !DISubroutineType(types: !3560)
!3560 = !{!355, !437, !323, !370}
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !431, file: !20, line: 1991, baseType: !3562, size: 64, offset: 1024)
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = !DISubroutineType(types: !3564)
!3564 = !{!91, !402, !3565, !475, !475}
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3566 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !20, line: 55, flags: DIFlagFwdDecl)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !431, file: !20, line: 1993, baseType: !3568, size: 64, offset: 1088)
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3569, size: 64)
!3569 = !DISubroutineType(types: !3570)
!3570 = !{!91, !402, !91}
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !431, file: !20, line: 1994, baseType: !3572, size: 64, offset: 1152)
!3572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3573, size: 64)
!3573 = !DISubroutineType(types: !3574)
!3574 = !{!91, !402, !437, !1413, !13, !365}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !431, file: !20, line: 1997, baseType: !3576, size: 64, offset: 1216)
!3576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3577, size: 64)
!3577 = !DISubroutineType(types: !3578)
!3578 = !{!91, !3410, !402, !1413, !365}
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !431, file: !20, line: 1999, baseType: !3580, size: 64, offset: 1280)
!3580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3581, size: 64)
!3581 = !DISubroutineType(types: !3582)
!3582 = !{!425, !3410, !437, !91}
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !431, file: !20, line: 2001, baseType: !3584, size: 64, offset: 1344)
!3584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3585, size: 64)
!3585 = !DISubroutineType(types: !3586)
!3586 = !{!91, !3410, !437, !425, !91}
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !431, file: !20, line: 2003, baseType: !3588, size: 64, offset: 1408)
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3589 = !DISubroutineType(types: !3590)
!3590 = !{!91, !3410, !437, !3591}
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3592 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !20, line: 76, flags: DIFlagFwdDecl)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !431, file: !20, line: 2005, baseType: !3594, size: 64, offset: 1472)
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3595, size: 64)
!3595 = !DISubroutineType(types: !3596)
!3596 = !{!91, !437, !3591}
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !431, file: !20, line: 2006, baseType: !3598, size: 64, offset: 1536)
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3599, size: 64)
!3599 = !DISubroutineType(types: !3600)
!3600 = !{!3601, !402}
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3602, size: 64)
!3602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !20, line: 3192, size: 192, elements: !3603)
!3603 = !{!3604, !3611}
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3602, file: !20, line: 3193, baseType: !3605, size: 128)
!3605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3606, line: 296, size: 128, elements: !3607)
!3606 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3607 = !{!3608, !3609, !3610}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3605, file: !3606, line: 297, baseType: !248, size: 32)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3605, file: !3606, line: 299, baseType: !157, size: 32, offset: 32)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3605, file: !3606, line: 300, baseType: !159, size: 64, offset: 64)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3602, file: !20, line: 3194, baseType: !471, size: 32, offset: 128)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !403, file: !20, line: 655, baseType: !553, size: 64, offset: 448)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !403, file: !20, line: 656, baseType: !398, size: 64, offset: 512)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !403, file: !20, line: 659, baseType: !159, size: 64, offset: 576)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !403, file: !20, line: 663, baseType: !169, size: 64, offset: 640)
!3616 = !DIDerivedType(tag: DW_TAG_member, scope: !403, file: !20, line: 671, baseType: !3617, size: 32, offset: 704)
!3617 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !403, file: !20, line: 671, size: 32, elements: !3618)
!3618 = !{!3619, !3621}
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3617, file: !20, line: 672, baseType: !3620, size: 32)
!3620 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3617, file: !20, line: 673, baseType: !13, size: 32)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !403, file: !20, line: 675, baseType: !558, size: 32, offset: 736)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !403, file: !20, line: 676, baseType: !563, size: 64, offset: 768)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !403, file: !20, line: 677, baseType: !3521, size: 128, offset: 832)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !403, file: !20, line: 678, baseType: !3521, size: 128, offset: 960)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !403, file: !20, line: 679, baseType: !3521, size: 128, offset: 1088)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !403, file: !20, line: 680, baseType: !248, size: 32, offset: 1216)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !403, file: !20, line: 681, baseType: !231, size: 16, offset: 1248)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !403, file: !20, line: 682, baseType: !221, size: 8, offset: 1264)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !403, file: !20, line: 683, baseType: !221, size: 8, offset: 1272)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !403, file: !20, line: 684, baseType: !1983, size: 64, offset: 1280)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !403, file: !20, line: 691, baseType: !169, size: 64, offset: 1344)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !403, file: !20, line: 692, baseType: !1231, size: 320, offset: 1408)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !403, file: !20, line: 694, baseType: !169, size: 64, offset: 1728)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !403, file: !20, line: 695, baseType: !169, size: 64, offset: 1792)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !403, file: !20, line: 697, baseType: !877, size: 128, offset: 1856)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !403, file: !20, line: 698, baseType: !239, size: 128, offset: 1984)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !403, file: !20, line: 707, baseType: !239, size: 128, offset: 2112)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !403, file: !20, line: 708, baseType: !239, size: 128, offset: 2240)
!3640 = !DIDerivedType(tag: DW_TAG_member, scope: !403, file: !20, line: 709, baseType: !3641, size: 128, offset: 2368)
!3641 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !403, file: !20, line: 709, size: 128, elements: !3642)
!3642 = !{!3643, !3644}
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3641, file: !20, line: 710, baseType: !999, size: 64)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3641, file: !20, line: 711, baseType: !851, size: 128, align: 64)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !403, file: !20, line: 713, baseType: !190, size: 64, offset: 2496)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !403, file: !20, line: 714, baseType: !190, size: 64, offset: 2560)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !403, file: !20, line: 715, baseType: !213, size: 32, offset: 2624)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !403, file: !20, line: 716, baseType: !213, size: 32, offset: 2656)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !403, file: !20, line: 717, baseType: !213, size: 32, offset: 2688)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !403, file: !20, line: 719, baseType: !213, size: 32, offset: 2720)
!3651 = !DIDerivedType(tag: DW_TAG_member, scope: !403, file: !20, line: 721, baseType: !3652, size: 64, offset: 2752)
!3652 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !403, file: !20, line: 721, size: 64, elements: !3653)
!3653 = !{!3654, !3655}
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3652, file: !20, line: 722, baseType: !1404, size: 64)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3652, file: !20, line: 723, baseType: !1021, size: 64)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !403, file: !20, line: 725, baseType: !3657, size: 64, offset: 2816)
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !20, line: 725, flags: DIFlagFwdDecl)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !403, file: !20, line: 726, baseType: !399, size: 1536, align: 64, offset: 2880)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !403, file: !20, line: 727, baseType: !239, size: 128, offset: 4416)
!3661 = !DIDerivedType(tag: DW_TAG_member, scope: !403, file: !20, line: 728, baseType: !3662, size: 64, offset: 4544)
!3662 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !403, file: !20, line: 728, size: 64, elements: !3663)
!3663 = !{!3664, !3665, !3668, !3669}
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3662, file: !20, line: 729, baseType: !1731, size: 64)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3662, file: !20, line: 730, baseType: !3666, size: 64)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3667 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !20, line: 730, flags: DIFlagFwdDecl)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3662, file: !20, line: 731, baseType: !323, size: 64)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3662, file: !20, line: 732, baseType: !13, size: 32)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !403, file: !20, line: 735, baseType: !472, size: 32, offset: 4608)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !403, file: !20, line: 738, baseType: !472, size: 32, offset: 4640)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !403, file: !20, line: 739, baseType: !3347, size: 64, offset: 4672)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !403, file: !20, line: 750, baseType: !159, size: 64, offset: 4736)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !399, file: !20, line: 474, baseType: !3605, size: 128, offset: 64)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !399, file: !20, line: 475, baseType: !1231, size: 320, offset: 192)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !399, file: !20, line: 476, baseType: !157, size: 32, offset: 512)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !399, file: !20, line: 477, baseType: !213, size: 32, offset: 544)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !399, file: !20, line: 482, baseType: !2257, size: 128, offset: 576)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !399, file: !20, line: 483, baseType: !169, size: 64, offset: 704)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !399, file: !20, line: 484, baseType: !169, size: 64, offset: 768)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !399, file: !20, line: 485, baseType: !3682, size: 64, offset: 832)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3684)
!3684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !20, line: 404, size: 1280, elements: !3685)
!3685 = !{!3686, !3690, !3760, !3764, !3768, !3774, !3778, !3782, !3787, !3791, !3795, !3799, !3800, !3804, !3808, !3812, !3817, !3821, !3828, !3829}
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3684, file: !20, line: 405, baseType: !3687, size: 64)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DISubroutineType(types: !3689)
!3689 = !{!91, !2933, !1033}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3684, file: !20, line: 406, baseType: !3691, size: 64, offset: 64)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = !DISubroutineType(types: !3693)
!3693 = !{!91, !1413, !3694}
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3695, size: 64)
!3695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !1369, line: 293, size: 1536, elements: !3696)
!3696 = !{!3697, !3727, !3741}
!3697 = !DIDerivedType(tag: DW_TAG_member, scope: !3695, file: !1369, line: 295, baseType: !3698, size: 512)
!3698 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3695, file: !1369, line: 295, size: 512, elements: !3699)
!3699 = !{!3700, !3726}
!3700 = !DIDerivedType(tag: DW_TAG_member, scope: !3698, file: !1369, line: 296, baseType: !3701, size: 448)
!3701 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3698, file: !1369, line: 296, size: 448, elements: !3702)
!3702 = !{!3703, !3704, !3713, !3714, !3715, !3724, !3725}
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3701, file: !1369, line: 298, baseType: !169, size: 64)
!3704 = !DIDerivedType(tag: DW_TAG_member, scope: !3701, file: !1369, line: 299, baseType: !3705, size: 128, offset: 64)
!3705 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3701, file: !1369, line: 299, size: 128, elements: !3706)
!3706 = !{!3707, !3708}
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3705, file: !1369, line: 300, baseType: !239, size: 128)
!3708 = !DIDerivedType(tag: DW_TAG_member, scope: !3705, file: !1369, line: 302, baseType: !3709, size: 128)
!3709 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3705, file: !1369, line: 302, size: 128, elements: !3710)
!3710 = !{!3711, !3712}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3709, file: !1369, line: 303, baseType: !159, size: 64)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3709, file: !1369, line: 305, baseType: !13, size: 32, offset: 64)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3701, file: !1369, line: 310, baseType: !398, size: 64, offset: 192)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3701, file: !1369, line: 311, baseType: !169, size: 64, offset: 256)
!3715 = !DIDerivedType(tag: DW_TAG_member, scope: !3701, file: !1369, line: 312, baseType: !3716, size: 64, offset: 320)
!3716 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3701, file: !1369, line: 312, size: 64, elements: !3717)
!3717 = !{!3718, !3719}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3716, file: !1369, line: 313, baseType: !159, size: 64)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3716, file: !1369, line: 314, baseType: !3720, size: 64)
!3720 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !1369, line: 257, baseType: !3721)
!3721 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1369, line: 255, size: 64, elements: !3722)
!3722 = !{!3723}
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3721, file: !1369, line: 256, baseType: !169, size: 64)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3701, file: !1369, line: 316, baseType: !213, size: 32, offset: 384)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3701, file: !1369, line: 317, baseType: !213, size: 32, offset: 416)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3698, file: !1369, line: 323, baseType: !2934, size: 512, align: 128)
!3727 = !DIDerivedType(tag: DW_TAG_member, scope: !3695, file: !1369, line: 325, baseType: !3728, size: 512, offset: 512)
!3728 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3695, file: !1369, line: 325, size: 512, elements: !3729)
!3729 = !{!3730, !3740}
!3730 = !DIDerivedType(tag: DW_TAG_member, scope: !3728, file: !1369, line: 326, baseType: !3731, size: 320)
!3731 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3728, file: !1369, line: 326, size: 320, elements: !3732)
!3732 = !{!3733, !3734, !3735, !3736, !3737, !3738, !3739}
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3731, file: !1369, line: 327, baseType: !169, size: 64)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3731, file: !1369, line: 328, baseType: !169, size: 64, offset: 64)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3731, file: !1369, line: 329, baseType: !169, size: 64, offset: 128)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3731, file: !1369, line: 331, baseType: !213, size: 32, offset: 192)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3731, file: !1369, line: 332, baseType: !213, size: 32, offset: 224)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3731, file: !1369, line: 333, baseType: !213, size: 32, offset: 256)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3731, file: !1369, line: 335, baseType: !13, size: 32, offset: 288)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3728, file: !1369, line: 339, baseType: !2934, size: 512, align: 128)
!3741 = !DIDerivedType(tag: DW_TAG_member, scope: !3695, file: !1369, line: 341, baseType: !3742, size: 512, offset: 1024)
!3742 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3695, file: !1369, line: 341, size: 512, elements: !3743)
!3743 = !{!3744, !3753, !3759}
!3744 = !DIDerivedType(tag: DW_TAG_member, scope: !3742, file: !1369, line: 342, baseType: !3745, size: 384)
!3745 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3742, file: !1369, line: 342, size: 384, elements: !3746)
!3746 = !{!3747, !3748, !3749, !3750, !3751, !3752}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3745, file: !1369, line: 343, baseType: !169, size: 64)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3745, file: !1369, line: 344, baseType: !169, size: 64, offset: 64)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3745, file: !1369, line: 346, baseType: !159, size: 64, offset: 128)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3745, file: !1369, line: 347, baseType: !159, size: 64, offset: 192)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3745, file: !1369, line: 348, baseType: !159, size: 64, offset: 256)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3745, file: !1369, line: 349, baseType: !159, size: 64, offset: 320)
!3753 = !DIDerivedType(tag: DW_TAG_member, scope: !3742, file: !1369, line: 352, baseType: !3754, size: 256)
!3754 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3742, file: !1369, line: 352, size: 256, elements: !3755)
!3755 = !{!3756, !3757, !3758}
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3754, file: !1369, line: 353, baseType: !169, size: 64)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3754, file: !1369, line: 354, baseType: !169, size: 64, offset: 64)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3754, file: !1369, line: 356, baseType: !239, size: 128, offset: 128)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3742, file: !1369, line: 359, baseType: !2934, size: 512, align: 128)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3684, file: !20, line: 409, baseType: !3761, size: 64, offset: 128)
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3762, size: 64)
!3762 = !DISubroutineType(types: !3763)
!3763 = !{!91, !398, !1033}
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3684, file: !20, line: 412, baseType: !3765, size: 64, offset: 192)
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3766, size: 64)
!3766 = !DISubroutineType(types: !3767)
!3767 = !{!718, !398, !3694}
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3684, file: !20, line: 414, baseType: !3769, size: 64, offset: 256)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = !DISubroutineType(types: !3771)
!3771 = !{null, !3772}
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !20, line: 310, flags: DIFlagFwdDecl)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3684, file: !20, line: 416, baseType: !3775, size: 64, offset: 320)
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3776 = !DISubroutineType(types: !3777)
!3777 = !{!91, !1413, !398, !563, !13, !3096, !1747}
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3684, file: !20, line: 419, baseType: !3779, size: 64, offset: 384)
!3779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3780, size: 64)
!3780 = !DISubroutineType(types: !3781)
!3781 = !{!91, !1413, !398, !563, !13, !13, !2933, !159}
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3684, file: !20, line: 424, baseType: !3783, size: 64, offset: 448)
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3784, size: 64)
!3784 = !DISubroutineType(types: !3785)
!3785 = !{!3786, !398, !3786}
!3786 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !158, line: 131, baseType: !475)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3684, file: !20, line: 425, baseType: !3788, size: 64, offset: 512)
!3788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3789, size: 64)
!3789 = !DISubroutineType(types: !3790)
!3790 = !{null, !3694, !370, !370}
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3684, file: !20, line: 426, baseType: !3792, size: 64, offset: 576)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = !DISubroutineType(types: !3794)
!3794 = !{!718, !3694, !157}
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3684, file: !20, line: 427, baseType: !3796, size: 64, offset: 640)
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = !DISubroutineType(types: !3798)
!3798 = !{null, !3694}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3684, file: !20, line: 428, baseType: !1423, size: 64, offset: 704)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3684, file: !20, line: 433, baseType: !3801, size: 64, offset: 768)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = !DISubroutineType(types: !3803)
!3803 = !{!91, !398, !3694, !3694, !56}
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3684, file: !20, line: 435, baseType: !3805, size: 64, offset: 832)
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = !DISubroutineType(types: !3807)
!3807 = !{!91, !3694}
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3684, file: !20, line: 436, baseType: !3809, size: 64, offset: 896)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = !DISubroutineType(types: !3811)
!3811 = !{!718, !3694, !370, !370}
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3684, file: !20, line: 438, baseType: !3813, size: 64, offset: 960)
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3814, size: 64)
!3814 = !DISubroutineType(types: !3815)
!3815 = !{null, !3694, !3816, !3816}
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3684, file: !20, line: 439, baseType: !3818, size: 64, offset: 1024)
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3819 = !DISubroutineType(types: !3820)
!3820 = !{!91, !398, !2933}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3684, file: !20, line: 442, baseType: !3822, size: 64, offset: 1088)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DISubroutineType(types: !3824)
!3824 = !{!91, !3825, !1413, !3827}
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3826, size: 64)
!3826 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !20, line: 66, flags: DIFlagFwdDecl)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3684, file: !20, line: 444, baseType: !1739, size: 64, offset: 1152)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3684, file: !20, line: 445, baseType: !3830, size: 64, offset: 1216)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = !DISubroutineType(types: !3832)
!3832 = !{!91, !1426, !1448}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !399, file: !20, line: 486, baseType: !169, size: 64, offset: 896)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !399, file: !20, line: 487, baseType: !1231, size: 320, offset: 960)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !399, file: !20, line: 488, baseType: !1782, size: 32, offset: 1280)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !399, file: !20, line: 489, baseType: !248, size: 32, offset: 1312)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !399, file: !20, line: 490, baseType: !239, size: 128, offset: 1344)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !399, file: !20, line: 491, baseType: !159, size: 64, offset: 1472)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !389, file: !349, line: 180, baseType: !3840, size: 64, offset: 320)
!3840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3841, size: 64)
!3841 = !DISubroutineType(types: !3842)
!3842 = !{!355, !1413, !288, !388, !323, !563, !370}
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !389, file: !349, line: 182, baseType: !3840, size: 64, offset: 384)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !389, file: !349, line: 184, baseType: !3845, size: 64, offset: 448)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = !DISubroutineType(types: !3847)
!3847 = !{!91, !1413, !288, !388, !1487}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !377, file: !349, line: 90, baseType: !3849, size: 64, offset: 192)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !377, file: !349, line: 91, baseType: !3851, size: 64, offset: 256)
!3851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !339, file: !283, line: 120, baseType: !3853, size: 64, offset: 192)
!3853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3854, size: 64)
!3854 = !DISubroutineType(types: !3855)
!3855 = !{!3856, !306}
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3858)
!3858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !64, line: 39, size: 384, elements: !3859)
!3859 = !{!3860, !3861, !3865, !3869, !3875, !3879}
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3858, file: !64, line: 40, baseType: !63, size: 32)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3858, file: !64, line: 41, baseType: !3862, size: 64, offset: 64)
!3862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3863, size: 64)
!3863 = !DISubroutineType(types: !3864)
!3864 = !{!718}
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3858, file: !64, line: 42, baseType: !3866, size: 64, offset: 128)
!3866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3867, size: 64)
!3867 = !DISubroutineType(types: !3868)
!3868 = !{!159}
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3858, file: !64, line: 43, baseType: !3870, size: 64, offset: 192)
!3870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3871, size: 64)
!3871 = !DISubroutineType(types: !3872)
!3872 = !{!1615, !3873}
!3873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3874, size: 64)
!3874 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !64, line: 19, flags: DIFlagFwdDecl)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3858, file: !64, line: 44, baseType: !3876, size: 64, offset: 256)
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = !DISubroutineType(types: !3878)
!3878 = !{!1615}
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3858, file: !64, line: 45, baseType: !269, size: 64, offset: 320)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !339, file: !283, line: 121, baseType: !3881, size: 64, offset: 256)
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3882 = !DISubroutineType(types: !3883)
!3883 = !{!1615, !306}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !339, file: !283, line: 122, baseType: !3885, size: 64, offset: 320)
!3885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3886, size: 64)
!3886 = !DISubroutineType(types: !3887)
!3887 = !{null, !306, !3888, !3889}
!3888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !282, file: !283, line: 70, baseType: !3891, size: 64, offset: 384)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !3893, line: 190, size: 1152, elements: !3894)
!3893 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!3894 = !{!3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3974, !3975, !3976, !3977, !3978, !3981}
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3892, file: !3893, line: 191, baseType: !213, size: 32)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3892, file: !3893, line: 192, baseType: !213, size: 32, offset: 32)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3892, file: !3893, line: 202, baseType: !3891, size: 64, offset: 64)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3892, file: !3893, line: 203, baseType: !174, size: 64, offset: 128)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3892, file: !3893, line: 205, baseType: !165, size: 192, align: 64, offset: 192)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3892, file: !3893, line: 207, baseType: !1615, size: 64, offset: 384)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3892, file: !3893, line: 208, baseType: !13, size: 32, offset: 448)
!3902 = !DIDerivedType(tag: DW_TAG_member, scope: !3892, file: !3893, line: 209, baseType: !3903, size: 256, offset: 512)
!3903 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3892, file: !3893, line: 209, size: 256, elements: !3904)
!3904 = !{!3905, !3914, !3918}
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3903, file: !3893, line: 210, baseType: !3906, size: 256)
!3906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !3893, line: 153, size: 256, elements: !3907)
!3907 = !{!3908, !3909, !3910, !3913}
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3906, file: !3893, line: 154, baseType: !169, size: 64)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3906, file: !3893, line: 156, baseType: !2260, size: 64, offset: 64)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3906, file: !3893, line: 162, baseType: !3911, size: 64, offset: 128)
!3911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3912, size: 64)
!3912 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !3893, line: 162, flags: DIFlagFwdDecl)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3906, file: !3893, line: 167, baseType: !169, size: 64, offset: 192)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3903, file: !3893, line: 211, baseType: !3915, size: 64)
!3915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !3893, line: 170, size: 64, elements: !3916)
!3916 = !{!3917}
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3915, file: !3893, line: 171, baseType: !3891, size: 64)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3903, file: !3893, line: 212, baseType: !3919, size: 256)
!3919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !3893, line: 174, size: 256, elements: !3920)
!3920 = !{!3921, !3969, !3972, !3973}
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3919, file: !3893, line: 175, baseType: !3922, size: 64)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3924)
!3924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !3893, line: 271, size: 768, elements: !3925)
!3925 = !{!3926, !3946, !3950, !3951, !3952, !3953, !3954, !3958, !3959, !3960, !3961, !3965}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3924, file: !3893, line: 276, baseType: !3927, size: 64)
!3927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3928, size: 64)
!3928 = !DISubroutineType(types: !3929)
!3929 = !{!91, !3930}
!3930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3931, size: 64)
!3931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !3893, line: 251, size: 1216, elements: !3932)
!3932 = !{!3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945}
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3931, file: !3893, line: 253, baseType: !3891, size: 64)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3931, file: !3893, line: 254, baseType: !1413, size: 64, offset: 64)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3931, file: !3893, line: 255, baseType: !1070, size: 64, offset: 128)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3931, file: !3893, line: 256, baseType: !159, size: 64, offset: 192)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3931, file: !3893, line: 259, baseType: !184, size: 256, offset: 256)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3931, file: !3893, line: 260, baseType: !184, size: 256, offset: 512)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3931, file: !3893, line: 261, baseType: !91, size: 32, offset: 768)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3931, file: !3893, line: 262, baseType: !239, size: 128, offset: 832)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3931, file: !3893, line: 263, baseType: !323, size: 64, offset: 960)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3931, file: !3893, line: 265, baseType: !370, size: 64, offset: 1024)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3931, file: !3893, line: 266, baseType: !718, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3931, file: !3893, line: 267, baseType: !718, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3931, file: !3893, line: 268, baseType: !1684, size: 64, offset: 1152)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3924, file: !3893, line: 277, baseType: !3947, size: 64, offset: 64)
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!3948 = !DISubroutineType(types: !3949)
!3949 = !{null, !3930}
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3924, file: !3893, line: 290, baseType: !1101, size: 64, offset: 128)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3924, file: !3893, line: 292, baseType: !1088, size: 64, offset: 192)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3924, file: !3893, line: 293, baseType: !1097, size: 64, offset: 256)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3924, file: !3893, line: 294, baseType: !1093, size: 64, offset: 320)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3924, file: !3893, line: 296, baseType: !3955, size: 64, offset: 384)
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3956, size: 64)
!3956 = !DISubroutineType(types: !3957)
!3957 = !{!355, !3930, !323, !370, !563}
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3924, file: !3893, line: 306, baseType: !370, size: 64, offset: 448)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3924, file: !3893, line: 313, baseType: !718, size: 8, offset: 512)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3924, file: !3893, line: 314, baseType: !3955, size: 64, offset: 576)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3924, file: !3893, line: 317, baseType: !3962, size: 64, offset: 640)
!3962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3963, size: 64)
!3963 = !DISubroutineType(types: !3964)
!3964 = !{!1474, !3930, !1476}
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3924, file: !3893, line: 320, baseType: !3966, size: 64, offset: 704)
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3967, size: 64)
!3967 = !DISubroutineType(types: !3968)
!3968 = !{!91, !3930, !1487}
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3919, file: !3893, line: 176, baseType: !3970, size: 64, offset: 64)
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !3893, line: 35, flags: DIFlagFwdDecl)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3919, file: !3893, line: 177, baseType: !563, size: 64, offset: 128)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3919, file: !3893, line: 178, baseType: !3891, size: 64, offset: 192)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3892, file: !3893, line: 215, baseType: !159, size: 64, offset: 768)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3892, file: !3893, line: 221, baseType: !475, size: 64, offset: 832)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3892, file: !3893, line: 223, baseType: !231, size: 16, offset: 896)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3892, file: !3893, line: 224, baseType: !365, size: 16, offset: 912)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3892, file: !3893, line: 225, baseType: !3979, size: 64, offset: 960)
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3980, size: 64)
!3980 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !3893, line: 36, flags: DIFlagFwdDecl)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3892, file: !3893, line: 227, baseType: !851, size: 128, align: 64, offset: 1024)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !282, file: !283, line: 71, baseType: !3983, size: 32, offset: 448)
!3983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3984, line: 19, size: 32, elements: !3985)
!3984 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!3985 = !{!3986}
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3983, file: !3984, line: 20, baseType: !1157, size: 32)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !282, file: !283, line: 73, baseType: !13, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !282, file: !283, line: 74, baseType: !13, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !282, file: !283, line: 75, baseType: !13, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !282, file: !283, line: 76, baseType: !13, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !282, file: !283, line: 77, baseType: !13, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !279, file: !76, line: 707, baseType: !278, size: 64, offset: 512)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !279, file: !76, line: 709, baseType: !3994, size: 64, offset: 576)
!3994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3995, size: 64)
!3995 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !76, line: 37, flags: DIFlagFwdDecl)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !279, file: !76, line: 711, baseType: !174, size: 64, offset: 640)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !279, file: !76, line: 712, baseType: !3998, size: 64, offset: 704)
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3999, size: 64)
!3999 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4000)
!4000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !76, line: 89, size: 384, elements: !4001)
!4001 = !{!4002, !4003, !4004, !4010, !4015, !4019}
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4000, file: !76, line: 90, baseType: !174, size: 64)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4000, file: !76, line: 91, baseType: !374, size: 64, offset: 64)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4000, file: !76, line: 92, baseType: !4005, size: 64, offset: 128)
!4005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4006, size: 64)
!4006 = !DISubroutineType(types: !4007)
!4007 = !{!91, !4008, !318}
!4008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4009, size: 64)
!4009 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !279)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4000, file: !76, line: 93, baseType: !4011, size: 64, offset: 192)
!4011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4012, size: 64)
!4012 = !DISubroutineType(types: !4013)
!4013 = !{!323, !4008, !4014, !3888, !3889}
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4000, file: !76, line: 95, baseType: !4016, size: 64, offset: 256)
!4016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4017, size: 64)
!4017 = !DISubroutineType(types: !4018)
!4018 = !{null, !278}
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4000, file: !76, line: 97, baseType: !4020, size: 64, offset: 320)
!4020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4021, size: 64)
!4021 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4022)
!4022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !83, line: 286, size: 1472, elements: !4023)
!4023 = !{!4024, !4028, !4029, !4030, !4031, !4032, !4033, !4034, !4035, !4036, !4037, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048, !4049}
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4022, file: !83, line: 287, baseType: !4025, size: 64)
!4025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4026, size: 64)
!4026 = !DISubroutineType(types: !4027)
!4027 = !{!91, !278}
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4022, file: !83, line: 288, baseType: !4016, size: 64, offset: 64)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4022, file: !83, line: 289, baseType: !4025, size: 64, offset: 128)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4022, file: !83, line: 290, baseType: !4025, size: 64, offset: 192)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4022, file: !83, line: 291, baseType: !4025, size: 64, offset: 256)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4022, file: !83, line: 292, baseType: !4025, size: 64, offset: 320)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4022, file: !83, line: 293, baseType: !4025, size: 64, offset: 384)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4022, file: !83, line: 294, baseType: !4025, size: 64, offset: 448)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4022, file: !83, line: 295, baseType: !4025, size: 64, offset: 512)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4022, file: !83, line: 296, baseType: !4025, size: 64, offset: 576)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4022, file: !83, line: 297, baseType: !4025, size: 64, offset: 640)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4022, file: !83, line: 298, baseType: !4025, size: 64, offset: 704)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4022, file: !83, line: 299, baseType: !4025, size: 64, offset: 768)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4022, file: !83, line: 300, baseType: !4025, size: 64, offset: 832)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4022, file: !83, line: 301, baseType: !4025, size: 64, offset: 896)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4022, file: !83, line: 302, baseType: !4025, size: 64, offset: 960)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4022, file: !83, line: 303, baseType: !4025, size: 64, offset: 1024)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4022, file: !83, line: 304, baseType: !4025, size: 64, offset: 1088)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4022, file: !83, line: 305, baseType: !4025, size: 64, offset: 1152)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4022, file: !83, line: 306, baseType: !4025, size: 64, offset: 1216)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4022, file: !83, line: 307, baseType: !4025, size: 64, offset: 1280)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4022, file: !83, line: 308, baseType: !4025, size: 64, offset: 1344)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4022, file: !83, line: 309, baseType: !4025, size: 64, offset: 1408)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !279, file: !76, line: 714, baseType: !4051, size: 64, offset: 768)
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4052, size: 64)
!4052 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4053)
!4053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4054, line: 80, size: 1344, elements: !4055)
!4054 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4055 = !{!4056, !4057, !4058, !4059, !4060, !4061, !4102, !4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4119}
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4053, file: !4054, line: 81, baseType: !174, size: 64)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4053, file: !4054, line: 82, baseType: !174, size: 64, offset: 64)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4053, file: !4054, line: 83, baseType: !374, size: 64, offset: 128)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4053, file: !4054, line: 84, baseType: !374, size: 64, offset: 192)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4053, file: !4054, line: 85, baseType: !374, size: 64, offset: 256)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4053, file: !4054, line: 87, baseType: !4062, size: 64, offset: 320)
!4062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4063, size: 64)
!4063 = !DISubroutineType(types: !4064)
!4064 = !{!91, !278, !4065}
!4065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4066, size: 64)
!4066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !70, line: 96, size: 1152, elements: !4067)
!4067 = !{!4068, !4069, !4070, !4071, !4072, !4073, !4074, !4078, !4082, !4083, !4084, !4085, !4086, !4094, !4095, !4096, !4097, !4098, !4099}
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4066, file: !70, line: 97, baseType: !174, size: 64)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4066, file: !70, line: 98, baseType: !4051, size: 64, offset: 64)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4066, file: !70, line: 100, baseType: !590, size: 64, offset: 128)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4066, file: !70, line: 101, baseType: !174, size: 64, offset: 192)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4066, file: !70, line: 103, baseType: !718, size: 8, offset: 256)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4066, file: !70, line: 104, baseType: !69, size: 32, offset: 288)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4066, file: !70, line: 106, baseType: !4075, size: 64, offset: 320)
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4076, size: 64)
!4076 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4077)
!4077 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !70, line: 106, flags: DIFlagFwdDecl)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4066, file: !70, line: 107, baseType: !4079, size: 64, offset: 384)
!4079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4080, size: 64)
!4080 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4081)
!4081 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !70, line: 107, flags: DIFlagFwdDecl)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4066, file: !70, line: 109, baseType: !4025, size: 64, offset: 448)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4066, file: !70, line: 110, baseType: !4016, size: 64, offset: 512)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4066, file: !70, line: 111, baseType: !4025, size: 64, offset: 576)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4066, file: !70, line: 112, baseType: !4016, size: 64, offset: 640)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4066, file: !70, line: 113, baseType: !4087, size: 64, offset: 704)
!4087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4088, size: 64)
!4088 = !DISubroutineType(types: !4089)
!4089 = !{!91, !278, !4090}
!4090 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !83, line: 60, baseType: !4091)
!4091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !83, line: 58, size: 32, elements: !4092)
!4092 = !{!4093}
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4091, file: !83, line: 59, baseType: !91, size: 32)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4066, file: !70, line: 114, baseType: !4025, size: 64, offset: 768)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4066, file: !70, line: 115, baseType: !374, size: 64, offset: 832)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4066, file: !70, line: 116, baseType: !374, size: 64, offset: 896)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4066, file: !70, line: 118, baseType: !4020, size: 64, offset: 960)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4066, file: !70, line: 119, baseType: !4016, size: 64, offset: 1024)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4066, file: !70, line: 121, baseType: !4100, size: 64, offset: 1088)
!4100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4101, size: 64)
!4101 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !70, line: 121, flags: DIFlagFwdDecl)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4053, file: !4054, line: 88, baseType: !4005, size: 64, offset: 384)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4053, file: !4054, line: 89, baseType: !4025, size: 64, offset: 448)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4053, file: !4054, line: 90, baseType: !4016, size: 64, offset: 512)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4053, file: !4054, line: 91, baseType: !4016, size: 64, offset: 576)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4053, file: !4054, line: 92, baseType: !4016, size: 64, offset: 640)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4053, file: !4054, line: 94, baseType: !4025, size: 64, offset: 704)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4053, file: !4054, line: 95, baseType: !4025, size: 64, offset: 768)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4053, file: !4054, line: 97, baseType: !4087, size: 64, offset: 832)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4053, file: !4054, line: 98, baseType: !4025, size: 64, offset: 896)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4053, file: !4054, line: 100, baseType: !4025, size: 64, offset: 960)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4053, file: !4054, line: 102, baseType: !4025, size: 64, offset: 1024)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4053, file: !4054, line: 103, baseType: !4016, size: 64, offset: 1088)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4053, file: !4054, line: 105, baseType: !4020, size: 64, offset: 1152)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4053, file: !4054, line: 107, baseType: !4116, size: 64, offset: 1216)
!4116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4117, size: 64)
!4117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4118)
!4118 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4054, line: 107, flags: DIFlagFwdDecl)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4053, file: !4054, line: 109, baseType: !718, size: 8, offset: 1280)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !279, file: !76, line: 715, baseType: !4065, size: 64, offset: 832)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !279, file: !76, line: 717, baseType: !159, size: 64, offset: 896)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !279, file: !76, line: 719, baseType: !159, size: 64, offset: 960)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !279, file: !76, line: 721, baseType: !184, size: 256, offset: 1024)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !279, file: !76, line: 725, baseType: !4125, size: 448, offset: 1280)
!4125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !76, line: 517, size: 448, elements: !4126)
!4126 = !{!4127, !4128, !4129, !4130}
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4125, file: !76, line: 518, baseType: !239, size: 128)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4125, file: !76, line: 519, baseType: !239, size: 128, offset: 128)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4125, file: !76, line: 520, baseType: !239, size: 128, offset: 256)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4125, file: !76, line: 521, baseType: !75, size: 32, offset: 384)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !279, file: !76, line: 726, baseType: !4132, size: 2496, offset: 1728)
!4132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !83, line: 663, size: 2496, elements: !4133)
!4133 = !{!4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4189, !4190, !4191, !4192, !4193, !4194, !4195, !4196, !4197, !4198, !4199, !4200, !4201, !4202, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4216, !4220}
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4132, file: !83, line: 664, baseType: !4090, size: 32)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4132, file: !83, line: 665, baseType: !13, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4132, file: !83, line: 666, baseType: !13, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4132, file: !83, line: 667, baseType: !718, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4132, file: !83, line: 668, baseType: !718, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4132, file: !83, line: 669, baseType: !718, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4132, file: !83, line: 670, baseType: !718, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4132, file: !83, line: 671, baseType: !718, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4132, file: !83, line: 672, baseType: !718, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4132, file: !83, line: 673, baseType: !718, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4132, file: !83, line: 674, baseType: !718, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4132, file: !83, line: 675, baseType: !471, size: 32, offset: 64)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4132, file: !83, line: 676, baseType: !248, size: 32, offset: 96)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4132, file: !83, line: 678, baseType: !239, size: 128, offset: 128)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4132, file: !83, line: 679, baseType: !610, size: 256, offset: 256)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4132, file: !83, line: 680, baseType: !4150, size: 64, offset: 512)
!4150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4151, size: 64)
!4151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4152, line: 43, size: 1536, elements: !4153)
!4152 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4153 = !{!4154, !4155, !4156, !4157, !4158, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4175}
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4151, file: !4152, line: 44, baseType: !174, size: 64)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4151, file: !4152, line: 45, baseType: !91, size: 32, offset: 64)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4151, file: !4152, line: 46, baseType: !239, size: 128, offset: 128)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4151, file: !4152, line: 47, baseType: !248, size: 32, offset: 256)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4151, file: !4152, line: 48, baseType: !4159, size: 64, offset: 320)
!4159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4160, size: 64)
!4160 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !83, line: 629, flags: DIFlagFwdDecl)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4151, file: !4152, line: 49, baseType: !873, size: 320, offset: 384)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4151, file: !4152, line: 50, baseType: !169, size: 64, offset: 704)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4151, file: !4152, line: 51, baseType: !2206, size: 64, offset: 768)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4151, file: !4152, line: 52, baseType: !2206, size: 64, offset: 832)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4151, file: !4152, line: 53, baseType: !2206, size: 64, offset: 896)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4151, file: !4152, line: 54, baseType: !2206, size: 64, offset: 960)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4151, file: !4152, line: 55, baseType: !2206, size: 64, offset: 1024)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4151, file: !4152, line: 56, baseType: !169, size: 64, offset: 1088)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4151, file: !4152, line: 57, baseType: !169, size: 64, offset: 1152)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4151, file: !4152, line: 58, baseType: !169, size: 64, offset: 1216)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4151, file: !4152, line: 59, baseType: !169, size: 64, offset: 1280)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4151, file: !4152, line: 60, baseType: !169, size: 64, offset: 1344)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4151, file: !4152, line: 61, baseType: !278, size: 64, offset: 1408)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4151, file: !4152, line: 62, baseType: !718, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4151, file: !4152, line: 63, baseType: !718, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4132, file: !83, line: 681, baseType: !718, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4132, file: !83, line: 682, baseType: !718, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4132, file: !83, line: 683, baseType: !718, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4132, file: !83, line: 684, baseType: !13, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4132, file: !83, line: 685, baseType: !13, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4132, file: !83, line: 690, baseType: !2198, size: 512, offset: 640)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4132, file: !83, line: 691, baseType: !475, size: 64, offset: 1152)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4132, file: !83, line: 692, baseType: !891, size: 256, offset: 1216)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4132, file: !83, line: 693, baseType: !1168, size: 192, offset: 1472)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4132, file: !83, line: 694, baseType: !4159, size: 64, offset: 1664)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4132, file: !83, line: 695, baseType: !213, size: 32, offset: 1728)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4132, file: !83, line: 696, baseType: !213, size: 32, offset: 1760)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4132, file: !83, line: 697, baseType: !13, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4132, file: !83, line: 698, baseType: !13, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4132, file: !83, line: 699, baseType: !13, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4132, file: !83, line: 700, baseType: !13, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4132, file: !83, line: 701, baseType: !13, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4132, file: !83, line: 702, baseType: !13, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4132, file: !83, line: 703, baseType: !718, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4132, file: !83, line: 704, baseType: !13, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4132, file: !83, line: 705, baseType: !13, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4132, file: !83, line: 706, baseType: !13, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4132, file: !83, line: 707, baseType: !13, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4132, file: !83, line: 708, baseType: !13, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4132, file: !83, line: 709, baseType: !13, size: 32, offset: 1824)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4132, file: !83, line: 710, baseType: !82, size: 32, offset: 1856)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4132, file: !83, line: 711, baseType: !90, size: 32, offset: 1888)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4132, file: !83, line: 712, baseType: !90, size: 32, offset: 1920)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4132, file: !83, line: 713, baseType: !91, size: 32, offset: 1952)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4132, file: !83, line: 714, baseType: !91, size: 32, offset: 1984)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4132, file: !83, line: 715, baseType: !475, size: 64, offset: 2048)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4132, file: !83, line: 716, baseType: !475, size: 64, offset: 2112)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4132, file: !83, line: 717, baseType: !475, size: 64, offset: 2176)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4132, file: !83, line: 718, baseType: !475, size: 64, offset: 2240)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4132, file: !83, line: 720, baseType: !4211, size: 64, offset: 2304)
!4211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4212, size: 64)
!4212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !83, line: 632, size: 64, elements: !4213)
!4213 = !{!4214, !4215}
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4212, file: !83, line: 633, baseType: !248, size: 32)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4212, file: !83, line: 634, baseType: !13, size: 32, offset: 32)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4132, file: !83, line: 721, baseType: !4217, size: 64, offset: 2368)
!4217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4218, size: 64)
!4218 = !DISubroutineType(types: !4219)
!4219 = !{null, !278, !656}
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4132, file: !83, line: 722, baseType: !4221, size: 64, offset: 2432)
!4221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4222, size: 64)
!4222 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !83, line: 722, flags: DIFlagFwdDecl)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !279, file: !76, line: 727, baseType: !4224, size: 64, offset: 4224)
!4224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4225, size: 64)
!4225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !83, line: 742, size: 1792, elements: !4226)
!4226 = !{!4227, !4228, !4229, !4233, !4234, !4235}
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4225, file: !83, line: 743, baseType: !4022, size: 1472)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4225, file: !83, line: 744, baseType: !4025, size: 64, offset: 1472)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4225, file: !83, line: 745, baseType: !4230, size: 64, offset: 1536)
!4230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4231, size: 64)
!4231 = !DISubroutineType(types: !4232)
!4232 = !{null, !278, !718}
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4225, file: !83, line: 746, baseType: !4025, size: 64, offset: 1600)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4225, file: !83, line: 747, baseType: !4016, size: 64, offset: 1664)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4225, file: !83, line: 748, baseType: !4016, size: 64, offset: 1728)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !279, file: !76, line: 736, baseType: !4237, size: 128, offset: 4288)
!4237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !76, line: 529, size: 128, elements: !4238)
!4238 = !{!4239, !4243}
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4237, file: !76, line: 531, baseType: !4240, size: 64)
!4240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4241, size: 64)
!4241 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4242, line: 13, flags: DIFlagFwdDecl)
!4242 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4237, file: !76, line: 532, baseType: !4244, size: 64, offset: 64)
!4244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4245, size: 64)
!4245 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !76, line: 49, flags: DIFlagFwdDecl)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !279, file: !76, line: 738, baseType: !4247, size: 64, offset: 4416)
!4247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4248, size: 64)
!4248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4249)
!4249 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !76, line: 738, flags: DIFlagFwdDecl)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !279, file: !76, line: 740, baseType: !4251, size: 64, offset: 4480)
!4251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !279, file: !76, line: 741, baseType: !475, size: 64, offset: 4544)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !279, file: !76, line: 746, baseType: !475, size: 64, offset: 4608)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !279, file: !76, line: 747, baseType: !4255, size: 64, offset: 4672)
!4255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4256, size: 64)
!4256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4257)
!4257 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !76, line: 747, flags: DIFlagFwdDecl)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !279, file: !76, line: 749, baseType: !4259, size: 64, offset: 4736)
!4259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4260, size: 64)
!4260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !76, line: 428, size: 128, elements: !4261)
!4261 = !{!4262, !4263, !4264}
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4260, file: !76, line: 433, baseType: !13, size: 32)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4260, file: !76, line: 434, baseType: !13, size: 32, offset: 32)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4260, file: !76, line: 435, baseType: !169, size: 64, offset: 64)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !279, file: !76, line: 751, baseType: !239, size: 128, offset: 4800)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !279, file: !76, line: 762, baseType: !4267, size: 64, offset: 4928)
!4267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4268, size: 64)
!4268 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !76, line: 762, flags: DIFlagFwdDecl)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !279, file: !76, line: 770, baseType: !4270, offset: 4992)
!4270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4271, line: 5, elements: !266)
!4271 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !279, file: !76, line: 772, baseType: !4273, size: 64, offset: 4992)
!4273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4274, size: 64)
!4274 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4275, line: 18, flags: DIFlagFwdDecl)
!4275 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !279, file: !76, line: 773, baseType: !4277, size: 64, offset: 5056)
!4277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4278, size: 64)
!4278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4279, line: 41, size: 512, elements: !4280)
!4279 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4280 = !{!4281, !4282, !4376, !4377, !4378, !4379}
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4278, file: !4279, line: 42, baseType: !4277, size: 64)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4278, file: !4279, line: 43, baseType: !4283, size: 64, offset: 64)
!4283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4284, size: 64)
!4284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4285)
!4285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4279, line: 125, size: 1408, elements: !4286)
!4286 = !{!4287, !4291, !4295, !4301, !4305, !4306, !4311, !4315, !4319, !4323, !4327, !4328, !4332, !4336, !4340, !4351, !4352, !4353, !4354, !4364, !4368, !4372}
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4285, file: !4279, line: 126, baseType: !4288, size: 64)
!4288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4289, size: 64)
!4289 = !DISubroutineType(types: !4290)
!4290 = !{!4277, !4277}
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4285, file: !4279, line: 127, baseType: !4292, size: 64, offset: 64)
!4292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4293, size: 64)
!4293 = !DISubroutineType(types: !4294)
!4294 = !{null, !4277}
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4285, file: !4279, line: 128, baseType: !4296, size: 64, offset: 128)
!4296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4297, size: 64)
!4297 = !DISubroutineType(types: !4298)
!4298 = !{!718, !4299}
!4299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4300, size: 64)
!4300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4278)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4285, file: !4279, line: 129, baseType: !4302, size: 64, offset: 192)
!4302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4303, size: 64)
!4303 = !DISubroutineType(types: !4304)
!4304 = !{!1615, !4299, !4008}
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4285, file: !4279, line: 131, baseType: !4296, size: 64, offset: 256)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4285, file: !4279, line: 133, baseType: !4307, size: 64, offset: 320)
!4307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4308, size: 64)
!4308 = !DISubroutineType(types: !4309)
!4309 = !{!4310, !4299}
!4310 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4279, line: 132, flags: DIFlagFwdDecl)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4285, file: !4279, line: 134, baseType: !4312, size: 64, offset: 384)
!4312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4313, size: 64)
!4313 = !DISubroutineType(types: !4314)
!4314 = !{!718, !4299, !174}
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4285, file: !4279, line: 136, baseType: !4316, size: 64, offset: 448)
!4316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4317, size: 64)
!4317 = !DISubroutineType(types: !4318)
!4318 = !{!91, !4299, !174, !13, !159, !370}
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4285, file: !4279, line: 141, baseType: !4320, size: 64, offset: 512)
!4320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4321, size: 64)
!4321 = !DISubroutineType(types: !4322)
!4322 = !{!91, !4299, !174, !966, !370}
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4285, file: !4279, line: 144, baseType: !4324, size: 64, offset: 576)
!4324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4325, size: 64)
!4325 = !DISubroutineType(types: !4326)
!4326 = !{!174, !4299}
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4285, file: !4279, line: 145, baseType: !4324, size: 64, offset: 640)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4285, file: !4279, line: 146, baseType: !4329, size: 64, offset: 704)
!4329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4330, size: 64)
!4330 = !DISubroutineType(types: !4331)
!4331 = !{!4277, !4299}
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4285, file: !4279, line: 148, baseType: !4333, size: 64, offset: 768)
!4333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4334, size: 64)
!4334 = !DISubroutineType(types: !4335)
!4335 = !{!4277, !4299, !4277}
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4285, file: !4279, line: 151, baseType: !4337, size: 64, offset: 832)
!4337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4338, size: 64)
!4338 = !DISubroutineType(types: !4339)
!4339 = !{!4277, !4299, !174}
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4285, file: !4279, line: 153, baseType: !4341, size: 64, offset: 896)
!4341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4342, size: 64)
!4342 = !DISubroutineType(types: !4343)
!4343 = !{!91, !4299, !174, !174, !13, !13, !4344}
!4344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4345, size: 64)
!4345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4279, line: 94, size: 640, elements: !4346)
!4346 = !{!4347, !4348, !4349}
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4345, file: !4279, line: 95, baseType: !4277, size: 64)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4345, file: !4279, line: 96, baseType: !13, size: 32, offset: 64)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4345, file: !4279, line: 97, baseType: !4350, size: 512, offset: 128)
!4350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !475, size: 512, elements: !2241)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4285, file: !4279, line: 158, baseType: !4333, size: 64, offset: 960)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4285, file: !4279, line: 161, baseType: !4329, size: 64, offset: 1024)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4285, file: !4279, line: 163, baseType: !4288, size: 64, offset: 1088)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4285, file: !4279, line: 164, baseType: !4355, size: 64, offset: 1152)
!4355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4356, size: 64)
!4356 = !DISubroutineType(types: !4357)
!4357 = !{!91, !4299, !4358}
!4358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4359, size: 64)
!4359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4279, line: 73, size: 128, elements: !4360)
!4360 = !{!4361, !4362, !4363}
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4359, file: !4279, line: 74, baseType: !13, size: 32)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4359, file: !4279, line: 75, baseType: !13, size: 32, offset: 32)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4359, file: !4279, line: 76, baseType: !4299, size: 64, offset: 64)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4285, file: !4279, line: 166, baseType: !4365, size: 64, offset: 1216)
!4365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4366, size: 64)
!4366 = !DISubroutineType(types: !4367)
!4367 = !{!159, !4277, !91}
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4285, file: !4279, line: 167, baseType: !4369, size: 64, offset: 1280)
!4369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4370, size: 64)
!4370 = !DISubroutineType(types: !4371)
!4371 = !{!91, !4299, !13}
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4285, file: !4279, line: 168, baseType: !4373, size: 64, offset: 1344)
!4373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4374, size: 64)
!4374 = !DISubroutineType(types: !4375)
!4375 = !{!91, !4277}
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4278, file: !4279, line: 44, baseType: !278, size: 64, offset: 128)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4278, file: !4279, line: 45, baseType: !239, size: 128, offset: 192)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4278, file: !4279, line: 46, baseType: !239, size: 128, offset: 320)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4278, file: !4279, line: 47, baseType: !221, size: 8, offset: 448)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !279, file: !76, line: 776, baseType: !91, size: 32, offset: 5120)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !279, file: !76, line: 778, baseType: !558, size: 32, offset: 5152)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !279, file: !76, line: 779, baseType: !471, size: 32, offset: 5184)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !279, file: !76, line: 781, baseType: !248, size: 32, offset: 5216)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !279, file: !76, line: 782, baseType: !239, size: 128, offset: 5248)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !279, file: !76, line: 784, baseType: !4386, size: 64, offset: 5376)
!4386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4387, size: 64)
!4387 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4388)
!4388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4389, line: 52, size: 768, elements: !4390)
!4389 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4390 = !{!4391, !4392, !4393, !4394, !4395, !4399, !4403, !4404, !4405, !4406, !4410, !4414}
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4388, file: !4389, line: 53, baseType: !174, size: 64)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4388, file: !4389, line: 55, baseType: !374, size: 64, offset: 64)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4388, file: !4389, line: 56, baseType: !374, size: 64, offset: 128)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4388, file: !4389, line: 58, baseType: !4005, size: 64, offset: 192)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4388, file: !4389, line: 59, baseType: !4396, size: 64, offset: 256)
!4396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4397, size: 64)
!4397 = !DISubroutineType(types: !4398)
!4398 = !{!323, !4008, !4014}
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4388, file: !4389, line: 61, baseType: !4400, size: 64, offset: 320)
!4400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4401, size: 64)
!4401 = !DISubroutineType(types: !4402)
!4402 = !{null, !4386}
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4388, file: !4389, line: 62, baseType: !4016, size: 64, offset: 384)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4388, file: !4389, line: 64, baseType: !4025, size: 64, offset: 448)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4388, file: !4389, line: 66, baseType: !3856, size: 64, offset: 512)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4388, file: !4389, line: 67, baseType: !4407, size: 64, offset: 576)
!4407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4408, size: 64)
!4408 = !DISubroutineType(types: !4409)
!4409 = !{!1615, !4008}
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4388, file: !4389, line: 69, baseType: !4411, size: 64, offset: 640)
!4411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4412, size: 64)
!4412 = !DISubroutineType(types: !4413)
!4413 = !{null, !4008, !3888, !3889}
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4388, file: !4389, line: 71, baseType: !4020, size: 64, offset: 704)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !279, file: !76, line: 785, baseType: !374, size: 64, offset: 5440)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !279, file: !76, line: 787, baseType: !4016, size: 64, offset: 5504)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !279, file: !76, line: 788, baseType: !4418, size: 64, offset: 5568)
!4418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4419, size: 64)
!4419 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !76, line: 46, flags: DIFlagFwdDecl)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !279, file: !76, line: 789, baseType: !4421, size: 64, offset: 5632)
!4421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4422, size: 64)
!4422 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !76, line: 48, flags: DIFlagFwdDecl)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !279, file: !76, line: 791, baseType: !4424, size: 64, offset: 5696)
!4424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4425, size: 64)
!4425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !76, line: 597, size: 128, elements: !4426)
!4426 = !{!4427, !4428, !4429, !4430, !4431}
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4425, file: !76, line: 598, baseType: !98, size: 32)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4425, file: !76, line: 599, baseType: !107, size: 32, offset: 32)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4425, file: !76, line: 600, baseType: !112, size: 32, offset: 64)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4425, file: !76, line: 601, baseType: !718, size: 8, offset: 96)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4425, file: !76, line: 602, baseType: !718, size: 8, offset: 104)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !279, file: !76, line: 793, baseType: !117, size: 32, offset: 5760)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !279, file: !76, line: 795, baseType: !718, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !279, file: !76, line: 796, baseType: !718, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !279, file: !76, line: 797, baseType: !718, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !279, file: !76, line: 798, baseType: !718, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !279, file: !76, line: 799, baseType: !718, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "work_buf", scope: !178, file: !162, line: 70, baseType: !159, size: 64, offset: 640)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !178, file: !162, line: 71, baseType: !4440, size: 640, offset: 704)
!4440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regmap_format", file: !162, line: 30, size: 640, elements: !4441)
!4441 = !{!4442, !4443, !4444, !4445, !4446, !4447, !4451, !4455, !4456, !4460}
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !4440, file: !162, line: 31, baseType: !370, size: 64)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "reg_bytes", scope: !4440, file: !162, line: 32, baseType: !370, size: 64, offset: 64)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "pad_bytes", scope: !4440, file: !162, line: 33, baseType: !370, size: 64, offset: 128)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "val_bytes", scope: !4440, file: !162, line: 34, baseType: !370, size: 64, offset: 192)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "reg_shift", scope: !4440, file: !162, line: 35, baseType: !687, size: 8, offset: 256)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "format_write", scope: !4440, file: !162, line: 36, baseType: !4448, size: 64, offset: 320)
!4448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4449, size: 64)
!4449 = !DISubroutineType(types: !4450)
!4450 = !{null, !177, !13, !13}
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "format_reg", scope: !4440, file: !162, line: 38, baseType: !4452, size: 64, offset: 384)
!4452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4453, size: 64)
!4453 = !DISubroutineType(types: !4454)
!4454 = !{null, !159, !13, !13}
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "format_val", scope: !4440, file: !162, line: 39, baseType: !4452, size: 64, offset: 448)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "parse_val", scope: !4440, file: !162, line: 40, baseType: !4457, size: 64, offset: 512)
!4457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4458, size: 64)
!4458 = !DISubroutineType(types: !4459)
!4459 = !{!13, !1615}
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "parse_inplace", scope: !4440, file: !162, line: 41, baseType: !269, size: 64, offset: 576)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !178, file: !162, line: 72, baseType: !4462, size: 64, offset: 1344)
!4462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4463, size: 64)
!4463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4464)
!4464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regmap_bus", file: !124, line: 562, size: 1024, elements: !4465)
!4465 = !{!4466, !4467, !4468, !4473, !4478, !4489, !4494, !4499, !4504, !4509, !4514, !4519, !4521, !4526, !4527, !4528, !4529, !4530}
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "fast_io", scope: !4464, file: !124, line: 563, baseType: !718, size: 8)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "free_on_exit", scope: !4464, file: !124, line: 564, baseType: !718, size: 8, offset: 8)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4464, file: !124, line: 565, baseType: !4469, size: 64, offset: 64)
!4469 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_hw_write", file: !124, line: 499, baseType: !4470)
!4470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4471, size: 64)
!4471 = !DISubroutineType(types: !4472)
!4472 = !{!91, !159, !1615, !370}
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "gather_write", scope: !4464, file: !124, line: 566, baseType: !4474, size: 64, offset: 128)
!4474 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_hw_gather_write", file: !124, line: 501, baseType: !4475)
!4475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4476, size: 64)
!4476 = !DISubroutineType(types: !4477)
!4477 = !{!91, !159, !1615, !370, !1615, !370}
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "async_write", scope: !4464, file: !124, line: 567, baseType: !4479, size: 64, offset: 192)
!4479 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_hw_async_write", file: !124, line: 504, baseType: !4480)
!4480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4481, size: 64)
!4481 = !DISubroutineType(types: !4482)
!4482 = !{!91, !159, !1615, !370, !1615, !370, !4483}
!4483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4484, size: 64)
!4484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regmap_async", file: !162, line: 44, size: 256, elements: !4485)
!4485 = !{!4486, !4487, !4488}
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4484, file: !162, line: 45, baseType: !239, size: 128)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !4484, file: !162, line: 46, baseType: !177, size: 64, offset: 128)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "work_buf", scope: !4484, file: !162, line: 47, baseType: !159, size: 64, offset: 192)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "reg_write", scope: !4464, file: !124, line: 568, baseType: !4490, size: 64, offset: 256)
!4490 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_hw_reg_write", file: !124, line: 515, baseType: !4491)
!4491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4492, size: 64)
!4492 = !DISubroutineType(types: !4493)
!4493 = !{!91, !159, !13, !13}
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "reg_noinc_write", scope: !4464, file: !124, line: 569, baseType: !4495, size: 64, offset: 320)
!4495 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_hw_reg_noinc_write", file: !124, line: 517, baseType: !4496)
!4496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4497, size: 64)
!4497 = !DISubroutineType(types: !4498)
!4498 = !{!91, !159, !13, !1615, !370}
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "reg_update_bits", scope: !4464, file: !124, line: 570, baseType: !4500, size: 64, offset: 384)
!4500 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_hw_reg_update_bits", file: !124, line: 519, baseType: !4501)
!4501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4502, size: 64)
!4502 = !DISubroutineType(types: !4503)
!4503 = !{!91, !159, !13, !13, !13}
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4464, file: !124, line: 571, baseType: !4505, size: 64, offset: 448)
!4505 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_hw_read", file: !124, line: 508, baseType: !4506)
!4506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4507, size: 64)
!4507 = !DISubroutineType(types: !4508)
!4508 = !{!91, !159, !1615, !370, !159, !370}
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "reg_read", scope: !4464, file: !124, line: 572, baseType: !4510, size: 64, offset: 512)
!4510 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_hw_reg_read", file: !124, line: 511, baseType: !4511)
!4511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4512, size: 64)
!4512 = !DISubroutineType(types: !4513)
!4513 = !{!91, !159, !13, !710}
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "reg_noinc_read", scope: !4464, file: !124, line: 573, baseType: !4515, size: 64, offset: 576)
!4515 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_hw_reg_noinc_read", file: !124, line: 513, baseType: !4516)
!4516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4517, size: 64)
!4517 = !DISubroutineType(types: !4518)
!4518 = !{!91, !159, !13, !159, !370}
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "free_context", scope: !4464, file: !124, line: 574, baseType: !4520, size: 64, offset: 640)
!4520 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_hw_free_context", file: !124, line: 522, baseType: !269)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "async_alloc", scope: !4464, file: !124, line: 575, baseType: !4522, size: 64, offset: 704)
!4522 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_hw_async_alloc", file: !124, line: 521, baseType: !4523)
!4523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4524, size: 64)
!4524 = !DISubroutineType(types: !4525)
!4525 = !{!4483}
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "read_flag_mask", scope: !4464, file: !124, line: 576, baseType: !221, size: 8, offset: 768)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "reg_format_endian_default", scope: !4464, file: !124, line: 577, baseType: !123, size: 32, offset: 800)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "val_format_endian_default", scope: !4464, file: !124, line: 578, baseType: !123, size: 32, offset: 832)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "max_raw_read", scope: !4464, file: !124, line: 579, baseType: !370, size: 64, offset: 896)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "max_raw_write", scope: !4464, file: !124, line: 580, baseType: !370, size: 64, offset: 960)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "bus_context", scope: !178, file: !162, line: 73, baseType: !159, size: 64, offset: 1408)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !178, file: !162, line: 74, baseType: !174, size: 64, offset: 1472)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "async", scope: !178, file: !162, line: 76, baseType: !718, size: 8, offset: 1536)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "async_lock", scope: !178, file: !162, line: 77, baseType: !248, size: 32, offset: 1568)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "async_waitq", scope: !178, file: !162, line: 78, baseType: !1168, size: 192, offset: 1600)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "async_list", scope: !178, file: !162, line: 79, baseType: !239, size: 128, offset: 1792)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "async_free", scope: !178, file: !162, line: 80, baseType: !239, size: 128, offset: 1920)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "async_ret", scope: !178, file: !162, line: 81, baseType: !91, size: 32, offset: 2048)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_disable", scope: !178, file: !162, line: 84, baseType: !718, size: 8, offset: 2080)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs", scope: !178, file: !162, line: 85, baseType: !437, size: 64, offset: 2112)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_name", scope: !178, file: !162, line: 86, baseType: !174, size: 64, offset: 2176)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_reg_len", scope: !178, file: !162, line: 88, baseType: !13, size: 32, offset: 2240)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_val_len", scope: !178, file: !162, line: 89, baseType: !13, size: 32, offset: 2272)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_tot_len", scope: !178, file: !162, line: 90, baseType: !13, size: 32, offset: 2304)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_off_cache", scope: !178, file: !162, line: 92, baseType: !239, size: 128, offset: 2368)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "cache_lock", scope: !178, file: !162, line: 93, baseType: !184, size: 256, offset: 2496)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "max_register", scope: !178, file: !162, line: 96, baseType: !13, size: 32, offset: 2752)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "writeable_reg", scope: !178, file: !162, line: 97, baseType: !4549, size: 64, offset: 2816)
!4549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4550, size: 64)
!4550 = !DISubroutineType(types: !4551)
!4551 = !{!718, !278, !13}
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "readable_reg", scope: !178, file: !162, line: 98, baseType: !4549, size: 64, offset: 2880)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_reg", scope: !178, file: !162, line: 99, baseType: !4549, size: 64, offset: 2944)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "precious_reg", scope: !178, file: !162, line: 100, baseType: !4549, size: 64, offset: 3008)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "writeable_noinc_reg", scope: !178, file: !162, line: 101, baseType: !4549, size: 64, offset: 3072)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "readable_noinc_reg", scope: !178, file: !162, line: 102, baseType: !4549, size: 64, offset: 3136)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "wr_table", scope: !178, file: !162, line: 103, baseType: !4558, size: 64, offset: 3200)
!4558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4559, size: 64)
!4559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4560)
!4560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regmap_access_table", file: !124, line: 237, size: 256, elements: !4561)
!4561 = !{!4562, !4569, !4570, !4571}
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "yes_ranges", scope: !4560, file: !124, line: 238, baseType: !4563, size: 64)
!4563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4564, size: 64)
!4564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4565)
!4565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regmap_range", file: !124, line: 217, size: 64, elements: !4566)
!4566 = !{!4567, !4568}
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "range_min", scope: !4565, file: !124, line: 218, baseType: !13, size: 32)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "range_max", scope: !4565, file: !124, line: 219, baseType: !13, size: 32, offset: 32)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "n_yes_ranges", scope: !4560, file: !124, line: 239, baseType: !13, size: 32, offset: 64)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "no_ranges", scope: !4560, file: !124, line: 240, baseType: !4563, size: 64, offset: 128)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "n_no_ranges", scope: !4560, file: !124, line: 241, baseType: !13, size: 32, offset: 192)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "rd_table", scope: !178, file: !162, line: 104, baseType: !4558, size: 64, offset: 3264)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_table", scope: !178, file: !162, line: 105, baseType: !4558, size: 64, offset: 3328)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "precious_table", scope: !178, file: !162, line: 106, baseType: !4558, size: 64, offset: 3392)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "wr_noinc_table", scope: !178, file: !162, line: 107, baseType: !4558, size: 64, offset: 3456)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "rd_noinc_table", scope: !178, file: !162, line: 108, baseType: !4558, size: 64, offset: 3520)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "reg_read", scope: !178, file: !162, line: 110, baseType: !4511, size: 64, offset: 3584)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "reg_write", scope: !178, file: !162, line: 111, baseType: !4491, size: 64, offset: 3648)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "reg_update_bits", scope: !178, file: !162, line: 112, baseType: !4501, size: 64, offset: 3712)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !178, file: !162, line: 115, baseType: !4506, size: 64, offset: 3776)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !178, file: !162, line: 117, baseType: !4470, size: 64, offset: 3840)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "defer_caching", scope: !178, file: !162, line: 119, baseType: !718, size: 8, offset: 3904)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "read_flag_mask", scope: !178, file: !162, line: 121, baseType: !169, size: 64, offset: 3968)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "write_flag_mask", scope: !178, file: !162, line: 122, baseType: !169, size: 64, offset: 4032)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "reg_shift", scope: !178, file: !162, line: 125, baseType: !91, size: 32, offset: 4096)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "reg_stride", scope: !178, file: !162, line: 126, baseType: !91, size: 32, offset: 4128)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "reg_stride_order", scope: !178, file: !162, line: 127, baseType: !91, size: 32, offset: 4160)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "force_write_field", scope: !178, file: !162, line: 130, baseType: !718, size: 8, offset: 4192)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "cache_ops", scope: !178, file: !162, line: 133, baseType: !4590, size: 64, offset: 4224)
!4590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4591, size: 64)
!4591 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4592)
!4592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regcache_ops", file: !162, line: 183, size: 576, elements: !4593)
!4593 = !{!4594, !4595, !4596, !4600, !4601, !4605, !4609, !4613, !4614}
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4592, file: !162, line: 184, baseType: !174, size: 64)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4592, file: !162, line: 185, baseType: !130, size: 32, offset: 64)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !4592, file: !162, line: 186, baseType: !4597, size: 64, offset: 128)
!4597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4598, size: 64)
!4598 = !DISubroutineType(types: !4599)
!4599 = !{!91, !177}
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !4592, file: !162, line: 187, baseType: !4597, size: 64, offset: 192)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_init", scope: !4592, file: !162, line: 189, baseType: !4602, size: 64, offset: 256)
!4602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4603, size: 64)
!4603 = !DISubroutineType(types: !4604)
!4604 = !{null, !177}
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4592, file: !162, line: 191, baseType: !4606, size: 64, offset: 320)
!4606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4607, size: 64)
!4607 = !DISubroutineType(types: !4608)
!4608 = !{!91, !177, !13, !710}
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4592, file: !162, line: 192, baseType: !4610, size: 64, offset: 384)
!4610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4611, size: 64)
!4611 = !DISubroutineType(types: !4612)
!4612 = !{!91, !177, !13, !13}
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4592, file: !162, line: 193, baseType: !4610, size: 64, offset: 448)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "drop", scope: !4592, file: !162, line: 194, baseType: !4610, size: 64, offset: 512)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "cache_type", scope: !178, file: !162, line: 134, baseType: !130, size: 32, offset: 4288)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "cache_size_raw", scope: !178, file: !162, line: 137, baseType: !13, size: 32, offset: 4320)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "cache_word_size", scope: !178, file: !162, line: 139, baseType: !13, size: 32, offset: 4352)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "num_reg_defaults", scope: !178, file: !162, line: 141, baseType: !13, size: 32, offset: 4384)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "num_reg_defaults_raw", scope: !178, file: !162, line: 143, baseType: !13, size: 32, offset: 4416)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "cache_only", scope: !178, file: !162, line: 146, baseType: !718, size: 8, offset: 4448)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "cache_bypass", scope: !178, file: !162, line: 148, baseType: !718, size: 8, offset: 4456)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "cache_free", scope: !178, file: !162, line: 150, baseType: !718, size: 8, offset: 4464)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "reg_defaults", scope: !178, file: !162, line: 152, baseType: !4624, size: 64, offset: 4480)
!4624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4625, size: 64)
!4625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_default", file: !124, line: 74, size: 64, elements: !4626)
!4626 = !{!4627, !4628}
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !4625, file: !124, line: 75, baseType: !13, size: 32)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !4625, file: !124, line: 76, baseType: !13, size: 32, offset: 32)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "reg_defaults_raw", scope: !178, file: !162, line: 153, baseType: !1615, size: 64, offset: 4544)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !178, file: !162, line: 154, baseType: !159, size: 64, offset: 4608)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "cache_dirty", scope: !178, file: !162, line: 156, baseType: !718, size: 8, offset: 4672)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "no_sync_defaults", scope: !178, file: !162, line: 158, baseType: !718, size: 8, offset: 4680)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "patch", scope: !178, file: !162, line: 160, baseType: !4634, size: 64, offset: 4736)
!4634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4635, size: 64)
!4635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_sequence", file: !124, line: 89, size: 96, elements: !4636)
!4636 = !{!4637, !4638, !4639}
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !4635, file: !124, line: 90, baseType: !13, size: 32)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !4635, file: !124, line: 91, baseType: !13, size: 32, offset: 32)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "delay_us", scope: !4635, file: !124, line: 92, baseType: !13, size: 32, offset: 64)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "patch_regs", scope: !178, file: !162, line: 161, baseType: !91, size: 32, offset: 4800)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "use_single_read", scope: !178, file: !162, line: 164, baseType: !718, size: 8, offset: 4832)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "use_single_write", scope: !178, file: !162, line: 166, baseType: !718, size: 8, offset: 4840)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "can_multi_write", scope: !178, file: !162, line: 168, baseType: !718, size: 8, offset: 4848)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "max_raw_read", scope: !178, file: !162, line: 171, baseType: !370, size: 64, offset: 4864)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "max_raw_write", scope: !178, file: !162, line: 172, baseType: !370, size: 64, offset: 4928)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "range_tree", scope: !178, file: !162, line: 174, baseType: !2260, size: 64, offset: 4992)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "selector_work_buf", scope: !178, file: !162, line: 175, baseType: !159, size: 64, offset: 5056)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "hwlock", scope: !178, file: !162, line: 177, baseType: !4649, size: 64, offset: 5120)
!4649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4650, size: 64)
!4650 = !DICompositeType(tag: DW_TAG_structure_type, name: "hwspinlock", file: !162, line: 177, flags: DIFlagFwdDecl)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "can_sleep", scope: !178, file: !162, line: 180, baseType: !718, size: 8, offset: 5184)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "range_min", scope: !161, file: !162, line: 213, baseType: !13, size: 32, offset: 320)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "range_max", scope: !161, file: !162, line: 214, baseType: !13, size: 32, offset: 352)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "selector_reg", scope: !161, file: !162, line: 216, baseType: !13, size: 32, offset: 384)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "selector_mask", scope: !161, file: !162, line: 217, baseType: !13, size: 32, offset: 416)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "selector_shift", scope: !161, file: !162, line: 218, baseType: !91, size: 32, offset: 448)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "window_start", scope: !161, file: !162, line: 220, baseType: !13, size: 32, offset: 480)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "window_len", scope: !161, file: !162, line: 221, baseType: !13, size: 32, offset: 512)
!4659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4660, size: 64)
!4660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regmap_debugfs_node", file: !2, line: 18, size: 192, elements: !4661)
!4661 = !{!4662, !4663}
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !4660, file: !2, line: 19, baseType: !177, size: 64)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !4660, file: !2, line: 20, baseType: !239, size: 128, offset: 64)
!4664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4665, size: 64)
!4665 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !242)
!4666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4667, size: 64)
!4667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regmap_debugfs_off_cache", file: !162, line: 22, size: 320, elements: !4668)
!4668 = !{!4669, !4670, !4673, !4674, !4675}
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4667, file: !162, line: 23, baseType: !239, size: 128)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !4667, file: !162, line: 24, baseType: !4671, size: 64, offset: 128)
!4671 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !158, line: 26, baseType: !4672)
!4672 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_off_t", file: !357, line: 87, baseType: !358)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !4667, file: !162, line: 25, baseType: !4671, size: 64, offset: 192)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "base_reg", scope: !4667, file: !162, line: 26, baseType: !13, size: 32, offset: 256)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "max_reg", scope: !4667, file: !162, line: 27, baseType: !13, size: 32, offset: 288)
!4676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4677, size: 64)
!4677 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4665)
!4678 = !{!0, !4679, !4697, !4702, !4704, !4706, !4711, !4713, !4718, !4721, !4726, !4729, !4734, !4736, !7, !4738, !4743, !4745, !4747, !4749, !4751, !4754, !4756, !4758, !4761, !4766, !4772, !4774, !4776, !4778, !4780, !4785, !4787, !4792, !4797, !4802, !4804, !4809, !4811}
!4679 = !DIGlobalVariableExpression(var: !4680, expr: !DIExpression())
!4680 = distinct !DIGlobalVariable(name: "__key", scope: !4681, file: !2, line: 579, type: !264, isLocal: true, isDefinition: true)
!4681 = distinct !DISubprogram(name: "regmap_debugfs_init", scope: !2, file: !2, line: 546, type: !4603, scopeLine: 547, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4682)
!4682 = !{!4683, !4684, !4685, !4686, !4687, !4688, !4691, !4694}
!4683 = !DILocalVariable(name: "map", arg: 1, scope: !4681, file: !2, line: 546, type: !177)
!4684 = !DILocalVariable(name: "next", scope: !4681, file: !2, line: 548, type: !171)
!4685 = !DILocalVariable(name: "range_node", scope: !4681, file: !2, line: 549, type: !160)
!4686 = !DILocalVariable(name: "devname", scope: !4681, file: !2, line: 550, type: !174)
!4687 = !DILocalVariable(name: "name", scope: !4681, file: !2, line: 551, type: !174)
!4688 = !DILocalVariable(name: "node", scope: !4689, file: !2, line: 567, type: !4659)
!4689 = distinct !DILexicalBlock(scope: !4690, file: !2, line: 566, column: 28)
!4690 = distinct !DILexicalBlock(scope: !4681, file: !2, line: 566, column: 6)
!4691 = !DILocalVariable(name: "registers_mode", scope: !4692, file: !2, line: 615, type: !365)
!4692 = distinct !DILexicalBlock(scope: !4693, file: !2, line: 614, column: 52)
!4693 = distinct !DILexicalBlock(scope: !4681, file: !2, line: 614, column: 6)
!4694 = !DILocalVariable(name: "__mptr", scope: !4695, file: !2, line: 652, type: !159)
!4695 = distinct !DILexicalBlock(scope: !4696, file: !2, line: 652, column: 16)
!4696 = distinct !DILexicalBlock(scope: !4681, file: !2, line: 651, column: 15)
!4697 = !DIGlobalVariableExpression(var: !4698, expr: !DIExpression())
!4698 = distinct !DIGlobalVariable(scope: null, file: !2, line: 579, type: !4699, isLocal: true, isDefinition: true)
!4699 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !4700)
!4700 = !{!4701}
!4701 = !DISubrange(count: 17)
!4702 = !DIGlobalVariableExpression(var: !4703, expr: !DIExpression())
!4703 = distinct !DIGlobalVariable(scope: null, file: !2, line: 586, type: !3, isLocal: true, isDefinition: true)
!4704 = !DIGlobalVariableExpression(var: !4705, expr: !DIExpression())
!4705 = distinct !DIGlobalVariable(scope: null, file: !2, line: 598, type: !2834, isLocal: true, isDefinition: true)
!4706 = !DIGlobalVariableExpression(var: !4707, expr: !DIExpression())
!4707 = distinct !DIGlobalVariable(scope: null, file: !2, line: 608, type: !4708, isLocal: true, isDefinition: true)
!4708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !4709)
!4709 = !{!4710}
!4710 = !DISubrange(count: 5)
!4711 = !DIGlobalVariableExpression(var: !4712, expr: !DIExpression())
!4712 = distinct !DIGlobalVariable(scope: null, file: !2, line: 611, type: !3, isLocal: true, isDefinition: true)
!4713 = !DIGlobalVariableExpression(var: !4714, expr: !DIExpression())
!4714 = distinct !DIGlobalVariable(scope: null, file: !2, line: 623, type: !4715, isLocal: true, isDefinition: true)
!4715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !4716)
!4716 = !{!4717}
!4717 = !DISubrange(count: 10)
!4718 = !DIGlobalVariableExpression(var: !4719, expr: !DIExpression())
!4719 = distinct !DIGlobalVariable(scope: null, file: !2, line: 625, type: !4720, isLocal: true, isDefinition: true)
!4720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !752)
!4721 = !DIGlobalVariableExpression(var: !4722, expr: !DIExpression())
!4722 = distinct !DIGlobalVariable(scope: null, file: !2, line: 630, type: !4723, isLocal: true, isDefinition: true)
!4723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !4724)
!4724 = !{!4725}
!4725 = !DISubrange(count: 11)
!4726 = !DIGlobalVariableExpression(var: !4727, expr: !DIExpression())
!4727 = distinct !DIGlobalVariable(scope: null, file: !2, line: 632, type: !4728, isLocal: true, isDefinition: true)
!4728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !3229)
!4729 = !DIGlobalVariableExpression(var: !4730, expr: !DIExpression())
!4730 = distinct !DIGlobalVariable(scope: null, file: !2, line: 634, type: !4731, isLocal: true, isDefinition: true)
!4731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !4732)
!4732 = !{!4733}
!4733 = !DISubrange(count: 13)
!4734 = !DIGlobalVariableExpression(var: !4735, expr: !DIExpression())
!4735 = distinct !DIGlobalVariable(scope: null, file: !2, line: 694, type: !4720, isLocal: true, isDefinition: true)
!4736 = !DIGlobalVariableExpression(var: !4737, expr: !DIExpression())
!4737 = distinct !DIGlobalVariable(name: "dummy_index", scope: !9, file: !2, line: 23, type: !13, isLocal: true, isDefinition: true)
!4738 = !DIGlobalVariableExpression(var: !4739, expr: !DIExpression())
!4739 = distinct !DIGlobalVariable(scope: null, file: !142, line: 480, type: !4740, isLocal: true, isDefinition: true)
!4740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !4741)
!4741 = !{!4742}
!4742 = !DISubrange(count: 21)
!4743 = !DIGlobalVariableExpression(var: !4744, expr: !DIExpression())
!4744 = distinct !DIGlobalVariable(name: "regmap_debugfs_early_lock", scope: !9, file: !2, line: 26, type: !184, isLocal: true, isDefinition: true)
!4745 = !DIGlobalVariableExpression(var: !4746, expr: !DIExpression())
!4746 = distinct !DIGlobalVariable(name: "regmap_debugfs_early_list", scope: !9, file: !2, line: 25, type: !239, isLocal: true, isDefinition: true)
!4747 = !DIGlobalVariableExpression(var: !4748, expr: !DIExpression())
!4748 = distinct !DIGlobalVariable(name: "regmap_name_fops", scope: !9, file: !2, line: 61, type: !1405, isLocal: true, isDefinition: true)
!4749 = !DIGlobalVariableExpression(var: !4750, expr: !DIExpression())
!4750 = distinct !DIGlobalVariable(scope: null, file: !2, line: 39, type: !3, isLocal: true, isDefinition: true)
!4751 = !DIGlobalVariableExpression(var: !4752, expr: !DIExpression())
!4752 = distinct !DIGlobalVariable(scope: null, file: !2, line: 50, type: !4753, isLocal: true, isDefinition: true)
!4753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !861)
!4754 = !DIGlobalVariableExpression(var: !4755, expr: !DIExpression())
!4755 = distinct !DIGlobalVariable(name: "regmap_reg_ranges_fops", scope: !9, file: !2, line: 428, type: !1405, isLocal: true, isDefinition: true)
!4756 = !DIGlobalVariableExpression(var: !4757, expr: !DIExpression())
!4757 = distinct !DIGlobalVariable(scope: null, file: !2, line: 402, type: !4720, isLocal: true, isDefinition: true)
!4758 = !DIGlobalVariableExpression(var: !4759, expr: !DIExpression())
!4759 = distinct !DIGlobalVariable(scope: null, file: !2, line: 31, type: !4760, isLocal: true, isDefinition: true)
!4760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !324)
!4761 = !DIGlobalVariableExpression(var: !4762, expr: !DIExpression())
!4762 = distinct !DIGlobalVariable(scope: null, file: !2, line: 160, type: !4763, isLocal: true, isDefinition: true)
!4763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !4764)
!4764 = !{!4765}
!4765 = !DISubrange(count: 37)
!4766 = !DIGlobalVariableExpression(var: !4767, expr: !DIExpression())
!4767 = distinct !DIGlobalVariable(scope: null, file: !4768, line: 249, type: !4769, isLocal: true, isDefinition: true)
!4768 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!4769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !4770)
!4770 = !{!4771}
!4771 = !DISubrange(count: 28)
!4772 = !DIGlobalVariableExpression(var: !4773, expr: !DIExpression())
!4773 = distinct !DIGlobalVariable(name: "regmap_map_fops", scope: !9, file: !2, line: 337, type: !1405, isLocal: true, isDefinition: true)
!4774 = !DIGlobalVariableExpression(var: !4775, expr: !DIExpression())
!4775 = distinct !DIGlobalVariable(scope: null, file: !2, line: 251, type: !4720, isLocal: true, isDefinition: true)
!4776 = !DIGlobalVariableExpression(var: !4777, expr: !DIExpression())
!4777 = distinct !DIGlobalVariable(scope: null, file: !2, line: 259, type: !4708, isLocal: true, isDefinition: true)
!4778 = !DIGlobalVariableExpression(var: !4779, expr: !DIExpression())
!4779 = distinct !DIGlobalVariable(name: "regmap_access_fops", scope: !9, file: !2, line: 457, type: !1405, isLocal: true, isDefinition: true)
!4780 = !DIGlobalVariableExpression(var: !4781, expr: !DIExpression())
!4781 = distinct !DIGlobalVariable(scope: null, file: !2, line: 447, type: !4782, isLocal: true, isDefinition: true)
!4782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !4783)
!4783 = !{!4784}
!4784 = !DISubrange(count: 19)
!4785 = !DIGlobalVariableExpression(var: !4786, expr: !DIExpression())
!4786 = distinct !DIGlobalVariable(name: "regmap_cache_only_fops", scope: !9, file: !2, line: 500, type: !1405, isLocal: true, isDefinition: true)
!4787 = !DIGlobalVariableExpression(var: !4788, expr: !DIExpression())
!4788 = distinct !DIGlobalVariable(scope: null, file: !2, line: 480, type: !4789, isLocal: true, isDefinition: true)
!4789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !4790)
!4790 = !{!4791}
!4791 = !DISubrange(count: 29)
!4792 = !DIGlobalVariableExpression(var: !4793, expr: !DIExpression())
!4793 = distinct !DIGlobalVariable(scope: null, file: !2, line: 483, type: !4794, isLocal: true, isDefinition: true)
!4794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !4795)
!4795 = !{!4796}
!4796 = !DISubrange(count: 44)
!4797 = !DIGlobalVariableExpression(var: !4798, expr: !DIExpression())
!4798 = distinct !DIGlobalVariable(scope: null, file: !2, line: 494, type: !4799, isLocal: true, isDefinition: true)
!4799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !4800)
!4800 = !{!4801}
!4801 = !DISubrange(count: 25)
!4802 = !DIGlobalVariableExpression(var: !4803, expr: !DIExpression())
!4803 = distinct !DIGlobalVariable(name: "regmap_cache_bypass_fops", scope: !9, file: !2, line: 540, type: !1405, isLocal: true, isDefinition: true)
!4804 = !DIGlobalVariableExpression(var: !4805, expr: !DIExpression())
!4805 = distinct !DIGlobalVariable(scope: null, file: !2, line: 527, type: !4806, isLocal: true, isDefinition: true)
!4806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !4807)
!4807 = !{!4808}
!4808 = !DISubrange(count: 31)
!4809 = !DIGlobalVariableExpression(var: !4810, expr: !DIExpression())
!4810 = distinct !DIGlobalVariable(scope: null, file: !2, line: 530, type: !4806, isLocal: true, isDefinition: true)
!4811 = !DIGlobalVariableExpression(var: !4812, expr: !DIExpression())
!4812 = distinct !DIGlobalVariable(name: "regmap_range_fops", scope: !9, file: !2, line: 354, type: !1405, isLocal: true, isDefinition: true)
!4813 = !{i32 7, !"Dwarf Version", i32 5}
!4814 = !{i32 2, !"Debug Info Version", i32 3}
!4815 = !{i32 1, !"wchar_size", i32 2}
!4816 = !{i32 8, !"cf-protection-branch", i32 1}
!4817 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4818 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4819 = !{i32 1, !"Code Model", i32 2}
!4820 = !{i32 1, !"override-stack-alignment", i32 8}
!4821 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4822 = !DILocation(line: 546, column: 41, scope: !4681)
!4823 = !DILocation(line: 548, column: 2, scope: !4681)
!4824 = !DILocation(line: 548, column: 18, scope: !4681)
!4825 = !DILocation(line: 549, column: 2, scope: !4681)
!4826 = !DILocation(line: 549, column: 28, scope: !4681)
!4827 = !DILocation(line: 550, column: 2, scope: !4681)
!4828 = !DILocation(line: 550, column: 14, scope: !4681)
!4829 = !DILocation(line: 551, column: 2, scope: !4681)
!4830 = !DILocation(line: 551, column: 14, scope: !4681)
!4831 = !DILocation(line: 551, column: 21, scope: !4681)
!4832 = !DILocation(line: 551, column: 26, scope: !4681)
!4833 = !DILocation(line: 560, column: 6, scope: !4834)
!4834 = distinct !DILexicalBlock(scope: !4681, file: !2, line: 560, column: 6)
!4835 = !DILocation(line: 560, column: 11, scope: !4834)
!4836 = !{i8 0, i8 2}
!4837 = !DILocation(line: 560, column: 6, scope: !4681)
!4838 = !DILocation(line: 562, column: 3, scope: !4839)
!4839 = distinct !DILexicalBlock(scope: !4834, file: !2, line: 560, column: 28)
!4840 = !DILocation(line: 566, column: 7, scope: !4690)
!4841 = !DILocation(line: 566, column: 6, scope: !4681)
!4842 = !DILocation(line: 567, column: 3, scope: !4689)
!4843 = !DILocation(line: 567, column: 31, scope: !4689)
!4844 = !DILocation(line: 568, column: 10, scope: !4689)
!4845 = !DILocation(line: 568, column: 8, scope: !4689)
!4846 = !DILocation(line: 569, column: 8, scope: !4847)
!4847 = distinct !DILexicalBlock(scope: !4689, file: !2, line: 569, column: 7)
!4848 = !DILocation(line: 569, column: 7, scope: !4689)
!4849 = !DILocation(line: 570, column: 4, scope: !4847)
!4850 = !DILocation(line: 571, column: 15, scope: !4689)
!4851 = !DILocation(line: 571, column: 3, scope: !4689)
!4852 = !DILocation(line: 571, column: 9, scope: !4689)
!4853 = !DILocation(line: 571, column: 13, scope: !4689)
!4854 = !DILocation(line: 572, column: 3, scope: !4689)
!4855 = !DILocation(line: 573, column: 13, scope: !4689)
!4856 = !DILocation(line: 573, column: 19, scope: !4689)
!4857 = !DILocation(line: 573, column: 3, scope: !4689)
!4858 = !DILocation(line: 574, column: 3, scope: !4689)
!4859 = !DILocation(line: 575, column: 3, scope: !4689)
!4860 = !DILocation(line: 576, column: 2, scope: !4690)
!4861 = !DILocation(line: 578, column: 18, scope: !4681)
!4862 = !DILocation(line: 578, column: 23, scope: !4681)
!4863 = !DILocation(line: 578, column: 2, scope: !4681)
!4864 = !DILocation(line: 579, column: 2, scope: !4681)
!4865 = !DILocation(line: 579, column: 2, scope: !4866)
!4866 = distinct !DILexicalBlock(scope: !4681, file: !2, line: 579, column: 2)
!4867 = !DILocation(line: 581, column: 6, scope: !4868)
!4868 = distinct !DILexicalBlock(scope: !4681, file: !2, line: 581, column: 6)
!4869 = !DILocation(line: 581, column: 11, scope: !4868)
!4870 = !DILocation(line: 581, column: 6, scope: !4681)
!4871 = !DILocation(line: 582, column: 22, scope: !4868)
!4872 = !DILocation(line: 582, column: 27, scope: !4868)
!4873 = !DILocation(line: 582, column: 13, scope: !4868)
!4874 = !DILocation(line: 582, column: 11, scope: !4868)
!4875 = !DILocation(line: 582, column: 3, scope: !4868)
!4876 = !DILocation(line: 584, column: 6, scope: !4877)
!4877 = distinct !DILexicalBlock(scope: !4681, file: !2, line: 584, column: 6)
!4878 = !DILocation(line: 584, column: 6, scope: !4681)
!4879 = !DILocation(line: 585, column: 8, scope: !4880)
!4880 = distinct !DILexicalBlock(scope: !4881, file: !2, line: 585, column: 7)
!4881 = distinct !DILexicalBlock(scope: !4877, file: !2, line: 584, column: 12)
!4882 = !DILocation(line: 585, column: 13, scope: !4880)
!4883 = !DILocation(line: 585, column: 7, scope: !4881)
!4884 = !DILocation(line: 587, column: 12, scope: !4885)
!4885 = distinct !DILexicalBlock(scope: !4880, file: !2, line: 585, column: 27)
!4886 = !DILocation(line: 587, column: 21, scope: !4885)
!4887 = !DILocation(line: 586, column: 24, scope: !4885)
!4888 = !DILocation(line: 586, column: 4, scope: !4885)
!4889 = !DILocation(line: 586, column: 9, scope: !4885)
!4890 = !DILocation(line: 586, column: 22, scope: !4885)
!4891 = !DILocation(line: 588, column: 9, scope: !4892)
!4892 = distinct !DILexicalBlock(scope: !4885, file: !2, line: 588, column: 8)
!4893 = !DILocation(line: 588, column: 14, scope: !4892)
!4894 = !DILocation(line: 588, column: 8, scope: !4885)
!4895 = !DILocation(line: 589, column: 5, scope: !4892)
!4896 = !DILocation(line: 590, column: 3, scope: !4885)
!4897 = !DILocation(line: 591, column: 10, scope: !4881)
!4898 = !DILocation(line: 591, column: 15, scope: !4881)
!4899 = !DILocation(line: 591, column: 8, scope: !4881)
!4900 = !DILocation(line: 592, column: 2, scope: !4881)
!4901 = !DILocation(line: 593, column: 10, scope: !4902)
!4902 = distinct !DILexicalBlock(scope: !4877, file: !2, line: 592, column: 9)
!4903 = !DILocation(line: 593, column: 8, scope: !4902)
!4904 = !DILocation(line: 596, column: 14, scope: !4905)
!4905 = distinct !DILexicalBlock(scope: !4681, file: !2, line: 596, column: 6)
!4906 = !DILocation(line: 596, column: 7, scope: !4905)
!4907 = !DILocation(line: 596, column: 6, scope: !4681)
!4908 = !DILocation(line: 597, column: 9, scope: !4909)
!4909 = distinct !DILexicalBlock(scope: !4905, file: !2, line: 596, column: 30)
!4910 = !DILocation(line: 597, column: 14, scope: !4909)
!4911 = !DILocation(line: 597, column: 3, scope: !4909)
!4912 = !DILocation(line: 599, column: 7, scope: !4909)
!4913 = !DILocation(line: 598, column: 23, scope: !4909)
!4914 = !DILocation(line: 598, column: 3, scope: !4909)
!4915 = !DILocation(line: 598, column: 8, scope: !4909)
!4916 = !DILocation(line: 598, column: 21, scope: !4909)
!4917 = !DILocation(line: 600, column: 8, scope: !4918)
!4918 = distinct !DILexicalBlock(scope: !4909, file: !2, line: 600, column: 7)
!4919 = !DILocation(line: 600, column: 13, scope: !4918)
!4920 = !DILocation(line: 600, column: 7, scope: !4909)
!4921 = !DILocation(line: 601, column: 4, scope: !4918)
!4922 = !DILocation(line: 602, column: 10, scope: !4909)
!4923 = !DILocation(line: 602, column: 15, scope: !4909)
!4924 = !DILocation(line: 602, column: 8, scope: !4909)
!4925 = !DILocation(line: 603, column: 14, scope: !4909)
!4926 = !DILocation(line: 604, column: 2, scope: !4909)
!4927 = !DILocation(line: 606, column: 36, scope: !4681)
!4928 = !DILocation(line: 606, column: 42, scope: !4681)
!4929 = !DILocation(line: 606, column: 17, scope: !4681)
!4930 = !DILocation(line: 606, column: 2, scope: !4681)
!4931 = !DILocation(line: 606, column: 7, scope: !4681)
!4932 = !DILocation(line: 606, column: 15, scope: !4681)
!4933 = !DILocation(line: 608, column: 36, scope: !4681)
!4934 = !DILocation(line: 608, column: 41, scope: !4681)
!4935 = !DILocation(line: 609, column: 8, scope: !4681)
!4936 = !DILocation(line: 608, column: 2, scope: !4681)
!4937 = !DILocation(line: 611, column: 37, scope: !4681)
!4938 = !DILocation(line: 611, column: 42, scope: !4681)
!4939 = !DILocation(line: 612, column: 8, scope: !4681)
!4940 = !DILocation(line: 611, column: 2, scope: !4681)
!4941 = !DILocation(line: 614, column: 6, scope: !4693)
!4942 = !DILocation(line: 614, column: 11, scope: !4693)
!4943 = !DILocation(line: 614, column: 24, scope: !4693)
!4944 = !DILocation(line: 614, column: 43, scope: !4693)
!4945 = !DILocation(line: 614, column: 27, scope: !4693)
!4946 = !DILocation(line: 614, column: 6, scope: !4681)
!4947 = !DILocation(line: 615, column: 3, scope: !4692)
!4948 = !DILocation(line: 615, column: 11, scope: !4692)
!4949 = !DILocation(line: 620, column: 18, scope: !4692)
!4950 = !DILocation(line: 623, column: 36, scope: !4692)
!4951 = !DILocation(line: 623, column: 52, scope: !4692)
!4952 = !DILocation(line: 623, column: 57, scope: !4692)
!4953 = !DILocation(line: 624, column: 9, scope: !4692)
!4954 = !DILocation(line: 623, column: 3, scope: !4692)
!4955 = !DILocation(line: 625, column: 39, scope: !4692)
!4956 = !DILocation(line: 625, column: 44, scope: !4692)
!4957 = !DILocation(line: 626, column: 9, scope: !4692)
!4958 = !DILocation(line: 625, column: 3, scope: !4692)
!4959 = !DILocation(line: 627, column: 2, scope: !4693)
!4960 = !DILocation(line: 627, column: 2, scope: !4692)
!4961 = !DILocation(line: 629, column: 6, scope: !4962)
!4962 = distinct !DILexicalBlock(scope: !4681, file: !2, line: 629, column: 6)
!4963 = !DILocation(line: 629, column: 11, scope: !4962)
!4964 = !DILocation(line: 629, column: 6, scope: !4681)
!4965 = !DILocation(line: 630, column: 43, scope: !4966)
!4966 = distinct !DILexicalBlock(scope: !4962, file: !2, line: 629, column: 23)
!4967 = !DILocation(line: 630, column: 48, scope: !4966)
!4968 = !DILocation(line: 631, column: 10, scope: !4966)
!4969 = !DILocation(line: 631, column: 15, scope: !4966)
!4970 = !DILocation(line: 630, column: 3, scope: !4966)
!4971 = !DILocation(line: 632, column: 44, scope: !4966)
!4972 = !DILocation(line: 632, column: 49, scope: !4966)
!4973 = !DILocation(line: 633, column: 10, scope: !4966)
!4974 = !DILocation(line: 633, column: 15, scope: !4966)
!4975 = !DILocation(line: 632, column: 3, scope: !4966)
!4976 = !DILocation(line: 634, column: 45, scope: !4966)
!4977 = !DILocation(line: 634, column: 50, scope: !4966)
!4978 = !DILocation(line: 635, column: 10, scope: !4966)
!4979 = !DILocation(line: 635, column: 15, scope: !4966)
!4980 = !DILocation(line: 634, column: 3, scope: !4966)
!4981 = !DILocation(line: 637, column: 2, scope: !4966)
!4982 = !DILocation(line: 650, column: 19, scope: !4681)
!4983 = !DILocation(line: 650, column: 24, scope: !4681)
!4984 = !DILocation(line: 650, column: 9, scope: !4681)
!4985 = !DILocation(line: 650, column: 7, scope: !4681)
!4986 = !DILocation(line: 651, column: 2, scope: !4681)
!4987 = !DILocation(line: 651, column: 9, scope: !4681)
!4988 = !DILocation(line: 652, column: 16, scope: !4695)
!4989 = !DILocation(line: 652, column: 16, scope: !4696)
!4990 = !DILocation(line: 652, column: 14, scope: !4696)
!4991 = !DILocation(line: 654, column: 7, scope: !4992)
!4992 = distinct !DILexicalBlock(scope: !4696, file: !2, line: 654, column: 7)
!4993 = !DILocation(line: 654, column: 19, scope: !4992)
!4994 = !DILocation(line: 654, column: 7, scope: !4696)
!4995 = !DILocation(line: 655, column: 24, scope: !4992)
!4996 = !DILocation(line: 655, column: 36, scope: !4992)
!4997 = !DILocation(line: 656, column: 10, scope: !4992)
!4998 = !DILocation(line: 656, column: 15, scope: !4992)
!4999 = !DILocation(line: 656, column: 24, scope: !4992)
!5000 = !DILocation(line: 655, column: 4, scope: !4992)
!5001 = !DILocation(line: 659, column: 19, scope: !4696)
!5002 = !DILocation(line: 659, column: 31, scope: !4696)
!5003 = !DILocation(line: 659, column: 10, scope: !4696)
!5004 = !DILocation(line: 659, column: 8, scope: !4696)
!5005 = distinct !{!5005, !4986, !5006, !5007, !5008}
!5006 = !DILocation(line: 660, column: 2, scope: !4681)
!5007 = !{!"llvm.loop.mustprogress"}
!5008 = !{!"llvm.loop.unroll.disable"}
!5009 = !DILocation(line: 662, column: 6, scope: !5010)
!5010 = distinct !DILexicalBlock(scope: !4681, file: !2, line: 662, column: 6)
!5011 = !DILocation(line: 662, column: 11, scope: !5010)
!5012 = !DILocation(line: 662, column: 21, scope: !5010)
!5013 = !DILocation(line: 662, column: 24, scope: !5010)
!5014 = !DILocation(line: 662, column: 29, scope: !5010)
!5015 = !DILocation(line: 662, column: 40, scope: !5010)
!5016 = !DILocation(line: 662, column: 6, scope: !4681)
!5017 = !DILocation(line: 663, column: 3, scope: !5010)
!5018 = !DILocation(line: 663, column: 8, scope: !5010)
!5019 = !DILocation(line: 663, column: 19, scope: !5010)
!5020 = !DILocation(line: 663, column: 32, scope: !5010)
!5021 = !DILocation(line: 664, column: 1, scope: !4681)
!5022 = distinct !DISubprogram(name: "kzalloc", scope: !142, file: !142, line: 719, type: !5023, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5025)
!5023 = !DISubroutineType(types: !5024)
!5024 = !{!159, !370, !157}
!5025 = !{!5026, !5027}
!5026 = !DILocalVariable(name: "size", arg: 1, scope: !5022, file: !142, line: 719, type: !370)
!5027 = !DILocalVariable(name: "flags", arg: 2, scope: !5022, file: !142, line: 719, type: !157)
!5028 = !DILocation(line: 719, column: 52, scope: !5022)
!5029 = !DILocation(line: 719, column: 64, scope: !5022)
!5030 = !DILocation(line: 721, column: 17, scope: !5022)
!5031 = !DILocation(line: 721, column: 23, scope: !5022)
!5032 = !DILocation(line: 721, column: 29, scope: !5022)
!5033 = !DILocation(line: 721, column: 9, scope: !5022)
!5034 = !DILocation(line: 721, column: 2, scope: !5022)
!5035 = !DISubprogram(name: "mutex_lock", scope: !185, file: !185, line: 227, type: !5036, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5036 = !DISubroutineType(types: !5037)
!5037 = !{null, !5038}
!5038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!5039 = distinct !DISubprogram(name: "list_add", scope: !5040, file: !5040, line: 167, type: !5041, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5043)
!5040 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!5041 = !DISubroutineType(types: !5042)
!5042 = !{null, !242, !242}
!5043 = !{!5044, !5045}
!5044 = !DILocalVariable(name: "new", arg: 1, scope: !5039, file: !5040, line: 167, type: !242)
!5045 = !DILocalVariable(name: "head", arg: 2, scope: !5039, file: !5040, line: 167, type: !242)
!5046 = !DILocation(line: 167, column: 47, scope: !5039)
!5047 = !DILocation(line: 167, column: 70, scope: !5039)
!5048 = !DILocation(line: 169, column: 13, scope: !5039)
!5049 = !DILocation(line: 169, column: 18, scope: !5039)
!5050 = !DILocation(line: 169, column: 24, scope: !5039)
!5051 = !DILocation(line: 169, column: 30, scope: !5039)
!5052 = !DILocation(line: 169, column: 2, scope: !5039)
!5053 = !DILocation(line: 170, column: 1, scope: !5039)
!5054 = !DISubprogram(name: "mutex_unlock", scope: !185, file: !185, line: 246, type: !5036, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5055 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !5040, file: !5040, line: 35, type: !5056, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5058)
!5056 = !DISubroutineType(types: !5057)
!5057 = !{null, !242}
!5058 = !{!5059}
!5059 = !DILocalVariable(name: "list", arg: 1, scope: !5055, file: !5040, line: 35, type: !242)
!5060 = !DILocation(line: 35, column: 53, scope: !5055)
!5061 = !DILocation(line: 37, column: 2, scope: !5055)
!5062 = !DILocation(line: 37, column: 2, scope: !5063)
!5063 = distinct !DILexicalBlock(scope: !5055, file: !5040, line: 37, column: 2)
!5064 = !DILocation(line: 37, column: 2, scope: !5065)
!5065 = distinct !DILexicalBlock(scope: !5063, file: !5040, line: 37, column: 2)
!5066 = !DILocation(line: 37, column: 2, scope: !5067)
!5067 = distinct !DILexicalBlock(scope: !5063, file: !5040, line: 37, column: 2)
!5068 = !DILocation(line: 38, column: 2, scope: !5055)
!5069 = !DILocation(line: 38, column: 2, scope: !5070)
!5070 = distinct !DILexicalBlock(scope: !5055, file: !5040, line: 38, column: 2)
!5071 = !DILocation(line: 38, column: 2, scope: !5072)
!5072 = distinct !DILexicalBlock(scope: !5070, file: !5040, line: 38, column: 2)
!5073 = !DILocation(line: 38, column: 2, scope: !5074)
!5074 = distinct !DILexicalBlock(scope: !5070, file: !5040, line: 38, column: 2)
!5075 = !DILocation(line: 39, column: 1, scope: !5055)
!5076 = !DISubprogram(name: "__mutex_init", scope: !185, file: !185, line: 121, type: !5077, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5077 = !DISubroutineType(types: !5078)
!5078 = !{null, !5038, !174, !263}
!5079 = distinct !DISubprogram(name: "dev_name", scope: !76, file: !76, line: 858, type: !5080, scopeLine: 859, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5082)
!5080 = !DISubroutineType(types: !5081)
!5081 = !{!174, !4008}
!5082 = !{!5083}
!5083 = !DILocalVariable(name: "dev", arg: 1, scope: !5079, file: !76, line: 858, type: !4008)
!5084 = !DILocation(line: 858, column: 57, scope: !5079)
!5085 = !DILocation(line: 861, column: 6, scope: !5086)
!5086 = distinct !DILexicalBlock(scope: !5079, file: !76, line: 861, column: 6)
!5087 = !DILocation(line: 861, column: 11, scope: !5086)
!5088 = !DILocation(line: 861, column: 6, scope: !5079)
!5089 = !DILocation(line: 862, column: 10, scope: !5086)
!5090 = !DILocation(line: 862, column: 15, scope: !5086)
!5091 = !DILocation(line: 862, column: 3, scope: !5086)
!5092 = !DILocation(line: 864, column: 23, scope: !5079)
!5093 = !DILocation(line: 864, column: 28, scope: !5079)
!5094 = !DILocation(line: 864, column: 9, scope: !5079)
!5095 = !DILocation(line: 864, column: 2, scope: !5079)
!5096 = !DILocation(line: 865, column: 1, scope: !5079)
!5097 = !DISubprogram(name: "kasprintf", scope: !5098, file: !5098, line: 16, type: !5099, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5098 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!5099 = !DISubroutineType(types: !5100)
!5100 = !{!323, !157, !174, null}
!5101 = !DISubprogram(name: "strcmp", scope: !5102, file: !5102, line: 88, type: !5103, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5102 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!5103 = !DISubroutineType(types: !5104)
!5104 = !{!91, !174, !174}
!5105 = !DISubprogram(name: "kfree", scope: !142, file: !142, line: 227, type: !5106, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5106 = !DISubroutineType(types: !5107)
!5107 = !{null, !1615}
!5108 = !DISubprogram(name: "debugfs_create_dir", scope: !5109, file: !5109, line: 87, type: !5110, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5109 = !DIFile(filename: "./include/linux/debugfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6e6228d229e8266f5bff9327360d42a5")
!5110 = !DISubroutineType(types: !5111)
!5111 = !{!437, !174, !437}
!5112 = !DISubprogram(name: "debugfs_create_file", scope: !5109, file: !5109, line: 75, type: !5113, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5113 = !DISubroutineType(types: !5114)
!5114 = !{!437, !174, !365, !437, !159, !1404}
!5115 = !DISubprogram(name: "regmap_readable", scope: !162, file: !162, line: 199, type: !5116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5116 = !DISubroutineType(types: !5117)
!5117 = !{!718, !177, !13}
!5118 = !DISubprogram(name: "debugfs_create_bool", scope: !5109, file: !5109, line: 139, type: !5119, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5119 = !DISubroutineType(types: !5120)
!5120 = !{null, !174, !365, !437, !3816}
!5121 = !DISubprogram(name: "rb_first", scope: !5122, file: !5122, line: 46, type: !5123, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5122 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6e0facf00d8c55244f0fbd487ce02705")
!5123 = !DISubroutineType(types: !5124)
!5124 = !{!171, !5125}
!5125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5126, size: 64)
!5126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2260)
!5127 = !DISubprogram(name: "rb_next", scope: !5122, file: !5122, line: 44, type: !5128, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5128 = !DISubroutineType(types: !5129)
!5129 = !{!171, !5130}
!5130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5131, size: 64)
!5131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !165)
!5132 = distinct !DISubprogram(name: "regmap_debugfs_exit", scope: !2, file: !2, line: 666, type: !4603, scopeLine: 667, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5133)
!5133 = !{!5134, !5135, !5138, !5139, !5142, !5144}
!5134 = !DILocalVariable(name: "map", arg: 1, scope: !5132, file: !2, line: 666, type: !177)
!5135 = !DILocalVariable(name: "node", scope: !5136, file: !2, line: 676, type: !4659)
!5136 = distinct !DILexicalBlock(scope: !5137, file: !2, line: 675, column: 9)
!5137 = distinct !DILexicalBlock(scope: !5132, file: !2, line: 668, column: 6)
!5138 = !DILocalVariable(name: "tmp", scope: !5136, file: !2, line: 676, type: !4659)
!5139 = !DILocalVariable(name: "__mptr", scope: !5140, file: !2, line: 679, type: !159)
!5140 = distinct !DILexicalBlock(scope: !5141, file: !2, line: 679, column: 3)
!5141 = distinct !DILexicalBlock(scope: !5136, file: !2, line: 679, column: 3)
!5142 = !DILocalVariable(name: "__mptr", scope: !5143, file: !2, line: 679, type: !159)
!5143 = distinct !DILexicalBlock(scope: !5141, file: !2, line: 679, column: 3)
!5144 = !DILocalVariable(name: "__mptr", scope: !5145, file: !2, line: 679, type: !159)
!5145 = distinct !DILexicalBlock(scope: !5146, file: !2, line: 679, column: 3)
!5146 = distinct !DILexicalBlock(scope: !5141, file: !2, line: 679, column: 3)
!5147 = !DILocation(line: 666, column: 41, scope: !5132)
!5148 = !DILocation(line: 668, column: 6, scope: !5137)
!5149 = !DILocation(line: 668, column: 11, scope: !5137)
!5150 = !DILocation(line: 668, column: 6, scope: !5132)
!5151 = !DILocation(line: 669, column: 28, scope: !5152)
!5152 = distinct !DILexicalBlock(scope: !5137, file: !2, line: 668, column: 20)
!5153 = !DILocation(line: 669, column: 33, scope: !5152)
!5154 = !DILocation(line: 669, column: 3, scope: !5152)
!5155 = !DILocation(line: 670, column: 15, scope: !5152)
!5156 = !DILocation(line: 670, column: 20, scope: !5152)
!5157 = !DILocation(line: 670, column: 3, scope: !5152)
!5158 = !DILocation(line: 671, column: 34, scope: !5152)
!5159 = !DILocation(line: 671, column: 3, scope: !5152)
!5160 = !DILocation(line: 672, column: 17, scope: !5152)
!5161 = !DILocation(line: 672, column: 22, scope: !5152)
!5162 = !DILocation(line: 672, column: 3, scope: !5152)
!5163 = !DILocation(line: 673, column: 9, scope: !5152)
!5164 = !DILocation(line: 673, column: 14, scope: !5152)
!5165 = !DILocation(line: 673, column: 3, scope: !5152)
!5166 = !DILocation(line: 674, column: 3, scope: !5152)
!5167 = !DILocation(line: 674, column: 8, scope: !5152)
!5168 = !DILocation(line: 674, column: 21, scope: !5152)
!5169 = !DILocation(line: 675, column: 2, scope: !5152)
!5170 = !DILocation(line: 676, column: 3, scope: !5136)
!5171 = !DILocation(line: 676, column: 31, scope: !5136)
!5172 = !DILocation(line: 676, column: 38, scope: !5136)
!5173 = !DILocation(line: 678, column: 3, scope: !5136)
!5174 = !DILocation(line: 679, column: 3, scope: !5140)
!5175 = !DILocation(line: 679, column: 3, scope: !5141)
!5176 = !DILocation(line: 679, column: 3, scope: !5143)
!5177 = !DILocation(line: 679, column: 3, scope: !5146)
!5178 = !DILocation(line: 681, column: 8, scope: !5179)
!5179 = distinct !DILexicalBlock(scope: !5180, file: !2, line: 681, column: 8)
!5180 = distinct !DILexicalBlock(scope: !5146, file: !2, line: 680, column: 13)
!5181 = !DILocation(line: 681, column: 14, scope: !5179)
!5182 = !DILocation(line: 681, column: 21, scope: !5179)
!5183 = !DILocation(line: 681, column: 18, scope: !5179)
!5184 = !DILocation(line: 681, column: 8, scope: !5180)
!5185 = !DILocation(line: 682, column: 15, scope: !5186)
!5186 = distinct !DILexicalBlock(scope: !5179, file: !2, line: 681, column: 26)
!5187 = !DILocation(line: 682, column: 21, scope: !5186)
!5188 = !DILocation(line: 682, column: 5, scope: !5186)
!5189 = !DILocation(line: 683, column: 11, scope: !5186)
!5190 = !DILocation(line: 683, column: 5, scope: !5186)
!5191 = !DILocation(line: 684, column: 4, scope: !5186)
!5192 = !DILocation(line: 685, column: 3, scope: !5180)
!5193 = !DILocation(line: 679, column: 3, scope: !5145)
!5194 = distinct !{!5194, !5175, !5195, !5007, !5008}
!5195 = !DILocation(line: 685, column: 3, scope: !5141)
!5196 = !DILocation(line: 686, column: 3, scope: !5136)
!5197 = !DILocation(line: 687, column: 2, scope: !5137)
!5198 = !DILocation(line: 688, column: 1, scope: !5132)
!5199 = !DISubprogram(name: "debugfs_remove", scope: !5109, file: !5109, line: 97, type: !532, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5200 = distinct !DISubprogram(name: "regmap_debugfs_free_dump_cache", scope: !2, file: !2, line: 67, type: !4603, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5201)
!5201 = !{!5202, !5203, !5204}
!5202 = !DILocalVariable(name: "map", arg: 1, scope: !5200, file: !2, line: 67, type: !177)
!5203 = !DILocalVariable(name: "c", scope: !5200, file: !2, line: 69, type: !4666)
!5204 = !DILocalVariable(name: "__mptr", scope: !5205, file: !2, line: 72, type: !159)
!5205 = distinct !DILexicalBlock(scope: !5206, file: !2, line: 72, column: 7)
!5206 = distinct !DILexicalBlock(scope: !5200, file: !2, line: 71, column: 47)
!5207 = !DILocation(line: 67, column: 59, scope: !5200)
!5208 = !DILocation(line: 69, column: 2, scope: !5200)
!5209 = !DILocation(line: 69, column: 35, scope: !5200)
!5210 = !DILocation(line: 71, column: 2, scope: !5200)
!5211 = !DILocation(line: 71, column: 22, scope: !5200)
!5212 = !DILocation(line: 71, column: 27, scope: !5200)
!5213 = !DILocation(line: 71, column: 10, scope: !5200)
!5214 = !DILocation(line: 71, column: 9, scope: !5200)
!5215 = !DILocation(line: 72, column: 7, scope: !5205)
!5216 = !DILocation(line: 72, column: 7, scope: !5206)
!5217 = !DILocation(line: 72, column: 5, scope: !5206)
!5218 = !DILocation(line: 75, column: 13, scope: !5206)
!5219 = !DILocation(line: 75, column: 16, scope: !5206)
!5220 = !DILocation(line: 75, column: 3, scope: !5206)
!5221 = !DILocation(line: 76, column: 9, scope: !5206)
!5222 = !DILocation(line: 76, column: 3, scope: !5206)
!5223 = distinct !{!5223, !5210, !5224, !5007, !5008}
!5224 = !DILocation(line: 77, column: 2, scope: !5200)
!5225 = !DILocation(line: 78, column: 1, scope: !5200)
!5226 = distinct !DISubprogram(name: "list_del", scope: !5040, file: !5040, line: 227, type: !5056, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5227)
!5227 = !{!5228}
!5228 = !DILocalVariable(name: "entry", arg: 1, scope: !5226, file: !5040, line: 227, type: !242)
!5229 = !DILocation(line: 227, column: 47, scope: !5226)
!5230 = !DILocation(line: 229, column: 19, scope: !5226)
!5231 = !DILocation(line: 229, column: 2, scope: !5226)
!5232 = !DILocation(line: 230, column: 2, scope: !5226)
!5233 = !DILocation(line: 230, column: 9, scope: !5226)
!5234 = !DILocation(line: 230, column: 14, scope: !5226)
!5235 = !DILocation(line: 231, column: 2, scope: !5226)
!5236 = !DILocation(line: 231, column: 9, scope: !5226)
!5237 = !DILocation(line: 231, column: 14, scope: !5226)
!5238 = !DILocation(line: 232, column: 1, scope: !5226)
!5239 = distinct !DISubprogram(name: "regmap_debugfs_initcall", scope: !2, file: !2, line: 690, type: !994, scopeLine: 691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5240)
!5240 = !{!5241, !5242, !5243, !5246, !5248}
!5241 = !DILocalVariable(name: "node", scope: !5239, file: !2, line: 692, type: !4659)
!5242 = !DILocalVariable(name: "tmp", scope: !5239, file: !2, line: 692, type: !4659)
!5243 = !DILocalVariable(name: "__mptr", scope: !5244, file: !2, line: 697, type: !159)
!5244 = distinct !DILexicalBlock(scope: !5245, file: !2, line: 697, column: 2)
!5245 = distinct !DILexicalBlock(scope: !5239, file: !2, line: 697, column: 2)
!5246 = !DILocalVariable(name: "__mptr", scope: !5247, file: !2, line: 697, type: !159)
!5247 = distinct !DILexicalBlock(scope: !5245, file: !2, line: 697, column: 2)
!5248 = !DILocalVariable(name: "__mptr", scope: !5249, file: !2, line: 697, type: !159)
!5249 = distinct !DILexicalBlock(scope: !5250, file: !2, line: 697, column: 2)
!5250 = distinct !DILexicalBlock(scope: !5245, file: !2, line: 697, column: 2)
!5251 = !DILocation(line: 692, column: 2, scope: !5239)
!5252 = !DILocation(line: 692, column: 30, scope: !5239)
!5253 = !DILocation(line: 692, column: 37, scope: !5239)
!5254 = !DILocation(line: 694, column: 24, scope: !5239)
!5255 = !DILocation(line: 694, column: 22, scope: !5239)
!5256 = !DILocation(line: 696, column: 2, scope: !5239)
!5257 = !DILocation(line: 697, column: 2, scope: !5244)
!5258 = !DILocation(line: 697, column: 2, scope: !5245)
!5259 = !DILocation(line: 697, column: 2, scope: !5247)
!5260 = !DILocation(line: 697, column: 2, scope: !5250)
!5261 = !DILocation(line: 698, column: 23, scope: !5262)
!5262 = distinct !DILexicalBlock(scope: !5250, file: !2, line: 697, column: 72)
!5263 = !DILocation(line: 698, column: 29, scope: !5262)
!5264 = !DILocation(line: 698, column: 3, scope: !5262)
!5265 = !DILocation(line: 699, column: 13, scope: !5262)
!5266 = !DILocation(line: 699, column: 19, scope: !5262)
!5267 = !DILocation(line: 699, column: 3, scope: !5262)
!5268 = !DILocation(line: 700, column: 9, scope: !5262)
!5269 = !DILocation(line: 700, column: 3, scope: !5262)
!5270 = !DILocation(line: 701, column: 2, scope: !5262)
!5271 = !DILocation(line: 697, column: 2, scope: !5249)
!5272 = distinct !{!5272, !5258, !5273, !5007, !5008}
!5273 = !DILocation(line: 701, column: 2, scope: !5245)
!5274 = !DILocation(line: 702, column: 2, scope: !5239)
!5275 = !DILocation(line: 703, column: 1, scope: !5239)
!5276 = distinct !DISubprogram(name: "kmalloc", scope: !142, file: !142, line: 591, type: !5023, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5277)
!5277 = !{!5278, !5279, !5280}
!5278 = !DILocalVariable(name: "size", arg: 1, scope: !5276, file: !142, line: 591, type: !370)
!5279 = !DILocalVariable(name: "flags", arg: 2, scope: !5276, file: !142, line: 591, type: !157)
!5280 = !DILocalVariable(name: "index", scope: !5281, file: !142, line: 594, type: !13)
!5281 = distinct !DILexicalBlock(scope: !5282, file: !142, line: 593, column: 42)
!5282 = distinct !DILexicalBlock(scope: !5276, file: !142, line: 593, column: 6)
!5283 = !DILocation(line: 591, column: 61, scope: !5276)
!5284 = !DILocation(line: 591, column: 73, scope: !5276)
!5285 = !DILocation(line: 593, column: 27, scope: !5282)
!5286 = !DILocation(line: 593, column: 6, scope: !5282)
!5287 = !DILocation(line: 593, column: 33, scope: !5282)
!5288 = !DILocation(line: 593, column: 36, scope: !5282)
!5289 = !DILocation(line: 593, column: 6, scope: !5276)
!5290 = !DILocation(line: 594, column: 3, scope: !5281)
!5291 = !DILocation(line: 594, column: 16, scope: !5281)
!5292 = !DILocation(line: 596, column: 7, scope: !5293)
!5293 = distinct !DILexicalBlock(scope: !5281, file: !142, line: 596, column: 7)
!5294 = !DILocation(line: 596, column: 12, scope: !5293)
!5295 = !DILocation(line: 596, column: 7, scope: !5281)
!5296 = !DILocation(line: 597, column: 25, scope: !5293)
!5297 = !DILocation(line: 597, column: 31, scope: !5293)
!5298 = !DILocation(line: 597, column: 11, scope: !5293)
!5299 = !DILocation(line: 597, column: 4, scope: !5293)
!5300 = !DILocation(line: 599, column: 11, scope: !5281)
!5301 = !DILocation(line: 599, column: 9, scope: !5281)
!5302 = !DILocation(line: 601, column: 33, scope: !5281)
!5303 = !DILocation(line: 601, column: 40, scope: !5281)
!5304 = !DILocation(line: 601, column: 20, scope: !5281)
!5305 = !DILocation(line: 601, column: 5, scope: !5281)
!5306 = !DILocation(line: 601, column: 51, scope: !5281)
!5307 = !DILocation(line: 602, column: 5, scope: !5281)
!5308 = !DILocation(line: 602, column: 12, scope: !5281)
!5309 = !DILocation(line: 600, column: 10, scope: !5281)
!5310 = !DILocation(line: 600, column: 3, scope: !5281)
!5311 = !DILocation(line: 603, column: 2, scope: !5282)
!5312 = !DILocation(line: 604, column: 19, scope: !5276)
!5313 = !DILocation(line: 604, column: 25, scope: !5276)
!5314 = !DILocation(line: 604, column: 9, scope: !5276)
!5315 = !DILocation(line: 604, column: 2, scope: !5276)
!5316 = !DILocation(line: 605, column: 1, scope: !5276)
!5317 = !DISubprogram(name: "kmalloc_large", scope: !142, file: !142, line: 531, type: !5023, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5318 = distinct !DISubprogram(name: "__kmalloc_index", scope: !142, file: !142, line: 444, type: !5319, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5321)
!5319 = !DISubroutineType(types: !5320)
!5320 = !{!13, !370, !718}
!5321 = !{!5322, !5323}
!5322 = !DILocalVariable(name: "size", arg: 1, scope: !5318, file: !142, line: 444, type: !370)
!5323 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5318, file: !142, line: 445, type: !718)
!5324 = !DILocation(line: 444, column: 60, scope: !5318)
!5325 = !DILocation(line: 445, column: 16, scope: !5318)
!5326 = !DILocation(line: 447, column: 7, scope: !5327)
!5327 = distinct !DILexicalBlock(scope: !5318, file: !142, line: 447, column: 6)
!5328 = !DILocation(line: 447, column: 6, scope: !5318)
!5329 = !DILocation(line: 448, column: 3, scope: !5327)
!5330 = !DILocation(line: 450, column: 6, scope: !5331)
!5331 = distinct !DILexicalBlock(scope: !5318, file: !142, line: 450, column: 6)
!5332 = !DILocation(line: 450, column: 11, scope: !5331)
!5333 = !DILocation(line: 450, column: 6, scope: !5318)
!5334 = !DILocation(line: 451, column: 3, scope: !5331)
!5335 = !DILocation(line: 453, column: 32, scope: !5336)
!5336 = distinct !DILexicalBlock(scope: !5318, file: !142, line: 453, column: 6)
!5337 = !DILocation(line: 453, column: 37, scope: !5336)
!5338 = !DILocation(line: 453, column: 42, scope: !5336)
!5339 = !DILocation(line: 453, column: 45, scope: !5336)
!5340 = !DILocation(line: 453, column: 50, scope: !5336)
!5341 = !DILocation(line: 453, column: 6, scope: !5318)
!5342 = !DILocation(line: 454, column: 3, scope: !5336)
!5343 = !DILocation(line: 455, column: 32, scope: !5344)
!5344 = distinct !DILexicalBlock(scope: !5318, file: !142, line: 455, column: 6)
!5345 = !DILocation(line: 455, column: 37, scope: !5344)
!5346 = !DILocation(line: 455, column: 43, scope: !5344)
!5347 = !DILocation(line: 455, column: 46, scope: !5344)
!5348 = !DILocation(line: 455, column: 51, scope: !5344)
!5349 = !DILocation(line: 455, column: 6, scope: !5318)
!5350 = !DILocation(line: 456, column: 3, scope: !5344)
!5351 = !DILocation(line: 457, column: 6, scope: !5352)
!5352 = distinct !DILexicalBlock(scope: !5318, file: !142, line: 457, column: 6)
!5353 = !DILocation(line: 457, column: 11, scope: !5352)
!5354 = !DILocation(line: 457, column: 6, scope: !5318)
!5355 = !DILocation(line: 457, column: 26, scope: !5352)
!5356 = !DILocation(line: 458, column: 6, scope: !5357)
!5357 = distinct !DILexicalBlock(scope: !5318, file: !142, line: 458, column: 6)
!5358 = !DILocation(line: 458, column: 11, scope: !5357)
!5359 = !DILocation(line: 458, column: 6, scope: !5318)
!5360 = !DILocation(line: 458, column: 26, scope: !5357)
!5361 = !DILocation(line: 459, column: 6, scope: !5362)
!5362 = distinct !DILexicalBlock(scope: !5318, file: !142, line: 459, column: 6)
!5363 = !DILocation(line: 459, column: 11, scope: !5362)
!5364 = !DILocation(line: 459, column: 6, scope: !5318)
!5365 = !DILocation(line: 459, column: 26, scope: !5362)
!5366 = !DILocation(line: 460, column: 6, scope: !5367)
!5367 = distinct !DILexicalBlock(scope: !5318, file: !142, line: 460, column: 6)
!5368 = !DILocation(line: 460, column: 11, scope: !5367)
!5369 = !DILocation(line: 460, column: 6, scope: !5318)
!5370 = !DILocation(line: 460, column: 26, scope: !5367)
!5371 = !DILocation(line: 461, column: 6, scope: !5372)
!5372 = distinct !DILexicalBlock(scope: !5318, file: !142, line: 461, column: 6)
!5373 = !DILocation(line: 461, column: 11, scope: !5372)
!5374 = !DILocation(line: 461, column: 6, scope: !5318)
!5375 = !DILocation(line: 461, column: 26, scope: !5372)
!5376 = !DILocation(line: 462, column: 6, scope: !5377)
!5377 = distinct !DILexicalBlock(scope: !5318, file: !142, line: 462, column: 6)
!5378 = !DILocation(line: 462, column: 11, scope: !5377)
!5379 = !DILocation(line: 462, column: 6, scope: !5318)
!5380 = !DILocation(line: 462, column: 26, scope: !5377)
!5381 = !DILocation(line: 463, column: 6, scope: !5382)
!5382 = distinct !DILexicalBlock(scope: !5318, file: !142, line: 463, column: 6)
!5383 = !DILocation(line: 463, column: 11, scope: !5382)
!5384 = !DILocation(line: 463, column: 6, scope: !5318)
!5385 = !DILocation(line: 463, column: 26, scope: !5382)
!5386 = !DILocation(line: 464, column: 6, scope: !5387)
!5387 = distinct !DILexicalBlock(scope: !5318, file: !142, line: 464, column: 6)
!5388 = !DILocation(line: 464, column: 11, scope: !5387)
!5389 = !DILocation(line: 464, column: 6, scope: !5318)
!5390 = !DILocation(line: 464, column: 26, scope: !5387)
!5391 = !DILocation(line: 465, column: 6, scope: !5392)
!5392 = distinct !DILexicalBlock(scope: !5318, file: !142, line: 465, column: 6)
!5393 = !DILocation(line: 465, column: 11, scope: !5392)
!5394 = !DILocation(line: 465, column: 6, scope: !5318)
!5395 = !DILocation(line: 465, column: 26, scope: !5392)
!5396 = !DILocation(line: 466, column: 6, scope: !5397)
!5397 = distinct !DILexicalBlock(scope: !5318, file: !142, line: 466, column: 6)
!5398 = !DILocation(line: 466, column: 11, scope: !5397)
!5399 = !DILocation(line: 466, column: 6, scope: !5318)
!5400 = !DILocation(line: 466, column: 26, scope: !5397)
!5401 = !DILocation(line: 467, column: 6, scope: !5402)
!5402 = distinct !DILexicalBlock(scope: !5318, file: !142, line: 467, column: 6)
!5403 = !DILocation(line: 467, column: 11, scope: !5402)
!5404 = !DILocation(line: 467, column: 6, scope: !5318)
!5405 = !DILocation(line: 467, column: 26, scope: !5402)
!5406 = !DILocation(line: 468, column: 6, scope: !5407)
!5407 = distinct !DILexicalBlock(scope: !5318, file: !142, line: 468, column: 6)
!5408 = !DILocation(line: 468, column: 11, scope: !5407)
!5409 = !DILocation(line: 468, column: 6, scope: !5318)
!5410 = !DILocation(line: 468, column: 26, scope: !5407)
!5411 = !DILocation(line: 469, column: 6, scope: !5412)
!5412 = distinct !DILexicalBlock(scope: !5318, file: !142, line: 469, column: 6)
!5413 = !DILocation(line: 469, column: 11, scope: !5412)
!5414 = !DILocation(line: 469, column: 6, scope: !5318)
!5415 = !DILocation(line: 469, column: 26, scope: !5412)
!5416 = !DILocation(line: 470, column: 6, scope: !5417)
!5417 = distinct !DILexicalBlock(scope: !5318, file: !142, line: 470, column: 6)
!5418 = !DILocation(line: 470, column: 11, scope: !5417)
!5419 = !DILocation(line: 470, column: 6, scope: !5318)
!5420 = !DILocation(line: 470, column: 26, scope: !5417)
!5421 = !DILocation(line: 471, column: 6, scope: !5422)
!5422 = distinct !DILexicalBlock(scope: !5318, file: !142, line: 471, column: 6)
!5423 = !DILocation(line: 471, column: 11, scope: !5422)
!5424 = !DILocation(line: 471, column: 6, scope: !5318)
!5425 = !DILocation(line: 471, column: 26, scope: !5422)
!5426 = !DILocation(line: 472, column: 6, scope: !5427)
!5427 = distinct !DILexicalBlock(scope: !5318, file: !142, line: 472, column: 6)
!5428 = !DILocation(line: 472, column: 11, scope: !5427)
!5429 = !DILocation(line: 472, column: 6, scope: !5318)
!5430 = !DILocation(line: 472, column: 26, scope: !5427)
!5431 = !DILocation(line: 473, column: 6, scope: !5432)
!5432 = distinct !DILexicalBlock(scope: !5318, file: !142, line: 473, column: 6)
!5433 = !DILocation(line: 473, column: 11, scope: !5432)
!5434 = !DILocation(line: 473, column: 6, scope: !5318)
!5435 = !DILocation(line: 473, column: 26, scope: !5432)
!5436 = !DILocation(line: 474, column: 6, scope: !5437)
!5437 = distinct !DILexicalBlock(scope: !5318, file: !142, line: 474, column: 6)
!5438 = !DILocation(line: 474, column: 11, scope: !5437)
!5439 = !DILocation(line: 474, column: 6, scope: !5318)
!5440 = !DILocation(line: 474, column: 27, scope: !5437)
!5441 = !DILocation(line: 475, column: 6, scope: !5442)
!5442 = distinct !DILexicalBlock(scope: !5318, file: !142, line: 475, column: 6)
!5443 = !DILocation(line: 475, column: 11, scope: !5442)
!5444 = !DILocation(line: 475, column: 6, scope: !5318)
!5445 = !DILocation(line: 475, column: 32, scope: !5442)
!5446 = !DILocation(line: 477, column: 50, scope: !5447)
!5447 = distinct !DILexicalBlock(scope: !5318, file: !142, line: 477, column: 6)
!5448 = !DILocation(line: 477, column: 6, scope: !5318)
!5449 = !DILocation(line: 478, column: 3, scope: !5447)
!5450 = !DILocation(line: 478, column: 3, scope: !5451)
!5451 = distinct !DILexicalBlock(scope: !5452, file: !142, line: 478, column: 3)
!5452 = distinct !DILexicalBlock(scope: !5447, file: !142, line: 478, column: 3)
!5453 = !{i32 -2143545727}
!5454 = !DILocation(line: 478, column: 3, scope: !5452)
!5455 = !DILocation(line: 480, column: 3, scope: !5447)
!5456 = !DILocation(line: 480, column: 3, scope: !5457)
!5457 = distinct !DILexicalBlock(scope: !5447, file: !142, line: 480, column: 3)
!5458 = !DILocation(line: 480, column: 3, scope: !5459)
!5459 = distinct !DILexicalBlock(scope: !5457, file: !142, line: 480, column: 3)
!5460 = !DILocation(line: 480, column: 3, scope: !5461)
!5461 = distinct !DILexicalBlock(scope: !5457, file: !142, line: 480, column: 3)
!5462 = !{i64 2151421772, i64 2151421801, i64 2151421847, i64 2151421905, i64 2151421959, i64 2151422013, i64 2151422068, i64 2151422099}
!5463 = !DILocation(line: 483, column: 2, scope: !5318)
!5464 = !DILocation(line: 484, column: 1, scope: !5318)
!5465 = !DISubprogram(name: "kmalloc_trace", scope: !142, file: !142, line: 525, type: !5466, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5466 = !DISubroutineType(types: !5467)
!5467 = !{!159, !5468, !157, !370}
!5468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5469, size: 64)
!5469 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !5470, line: 11, flags: DIFlagFwdDecl)
!5470 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!5471 = distinct !DISubprogram(name: "kmalloc_type", scope: !142, file: !142, line: 401, type: !5472, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5474)
!5472 = !DISubroutineType(types: !5473)
!5473 = !{!141, !157, !169}
!5474 = !{!5475, !5476}
!5475 = !DILocalVariable(name: "flags", arg: 1, scope: !5471, file: !142, line: 401, type: !157)
!5476 = !DILocalVariable(name: "caller", arg: 2, scope: !5471, file: !142, line: 401, type: !169)
!5477 = !DILocation(line: 401, column: 67, scope: !5471)
!5478 = !DILocation(line: 401, column: 88, scope: !5471)
!5479 = !DILocation(line: 407, column: 6, scope: !5480)
!5480 = distinct !DILexicalBlock(scope: !5471, file: !142, line: 407, column: 6)
!5481 = !DILocation(line: 407, column: 6, scope: !5471)
!5482 = !DILocation(line: 413, column: 3, scope: !5480)
!5483 = !DILocation(line: 423, column: 38, scope: !5484)
!5484 = distinct !DILexicalBlock(scope: !5471, file: !142, line: 423, column: 6)
!5485 = !DILocation(line: 423, column: 44, scope: !5484)
!5486 = !DILocation(line: 423, column: 6, scope: !5471)
!5487 = !DILocation(line: 424, column: 3, scope: !5484)
!5488 = !DILocation(line: 426, column: 3, scope: !5489)
!5489 = distinct !DILexicalBlock(scope: !5471, file: !142, line: 425, column: 6)
!5490 = !DILocation(line: 429, column: 1, scope: !5471)
!5491 = !DISubprogram(name: "__kmalloc", scope: !142, file: !142, line: 488, type: !5023, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5492 = !DISubprogram(name: "__compiletime_assert_117", scope: !142, file: !142, line: 478, type: !994, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5493 = distinct !DISubprogram(name: "__list_add", scope: !5040, file: !5040, line: 146, type: !5494, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5496)
!5494 = !DISubroutineType(types: !5495)
!5495 = !{null, !242, !242, !242}
!5496 = !{!5497, !5498, !5499}
!5497 = !DILocalVariable(name: "new", arg: 1, scope: !5493, file: !5040, line: 146, type: !242)
!5498 = !DILocalVariable(name: "prev", arg: 2, scope: !5493, file: !5040, line: 147, type: !242)
!5499 = !DILocalVariable(name: "next", arg: 3, scope: !5493, file: !5040, line: 148, type: !242)
!5500 = !DILocation(line: 146, column: 49, scope: !5493)
!5501 = !DILocation(line: 147, column: 28, scope: !5493)
!5502 = !DILocation(line: 148, column: 28, scope: !5493)
!5503 = !DILocation(line: 150, column: 24, scope: !5504)
!5504 = distinct !DILexicalBlock(scope: !5493, file: !5040, line: 150, column: 6)
!5505 = !DILocation(line: 150, column: 29, scope: !5504)
!5506 = !DILocation(line: 150, column: 35, scope: !5504)
!5507 = !DILocation(line: 150, column: 7, scope: !5504)
!5508 = !DILocation(line: 150, column: 6, scope: !5493)
!5509 = !DILocation(line: 151, column: 3, scope: !5504)
!5510 = !DILocation(line: 153, column: 15, scope: !5493)
!5511 = !DILocation(line: 153, column: 2, scope: !5493)
!5512 = !DILocation(line: 153, column: 8, scope: !5493)
!5513 = !DILocation(line: 153, column: 13, scope: !5493)
!5514 = !DILocation(line: 154, column: 14, scope: !5493)
!5515 = !DILocation(line: 154, column: 2, scope: !5493)
!5516 = !DILocation(line: 154, column: 7, scope: !5493)
!5517 = !DILocation(line: 154, column: 12, scope: !5493)
!5518 = !DILocation(line: 155, column: 14, scope: !5493)
!5519 = !DILocation(line: 155, column: 2, scope: !5493)
!5520 = !DILocation(line: 155, column: 7, scope: !5493)
!5521 = !DILocation(line: 155, column: 12, scope: !5493)
!5522 = !DILocation(line: 156, column: 2, scope: !5493)
!5523 = !DILocation(line: 156, column: 2, scope: !5524)
!5524 = distinct !DILexicalBlock(scope: !5493, file: !5040, line: 156, column: 2)
!5525 = !DILocation(line: 156, column: 2, scope: !5526)
!5526 = distinct !DILexicalBlock(scope: !5524, file: !5040, line: 156, column: 2)
!5527 = !DILocation(line: 156, column: 2, scope: !5528)
!5528 = distinct !DILexicalBlock(scope: !5524, file: !5040, line: 156, column: 2)
!5529 = !DILocation(line: 157, column: 1, scope: !5493)
!5530 = distinct !DISubprogram(name: "__list_add_valid", scope: !5040, file: !5040, line: 128, type: !5531, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5533)
!5531 = !DISubroutineType(types: !5532)
!5532 = !{!718, !242, !242, !242}
!5533 = !{!5534, !5535, !5536}
!5534 = !DILocalVariable(name: "new", arg: 1, scope: !5530, file: !5040, line: 128, type: !242)
!5535 = !DILocalVariable(name: "prev", arg: 2, scope: !5530, file: !5040, line: 129, type: !242)
!5536 = !DILocalVariable(name: "next", arg: 3, scope: !5530, file: !5040, line: 130, type: !242)
!5537 = !DILocation(line: 128, column: 55, scope: !5530)
!5538 = !DILocation(line: 129, column: 23, scope: !5530)
!5539 = !DILocation(line: 130, column: 23, scope: !5530)
!5540 = !DILocation(line: 132, column: 2, scope: !5530)
!5541 = distinct !DISubprogram(name: "kobject_name", scope: !283, file: !283, line: 87, type: !311, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5542)
!5542 = !{!5543}
!5543 = !DILocalVariable(name: "kobj", arg: 1, scope: !5541, file: !283, line: 87, type: !306)
!5544 = !DILocation(line: 87, column: 62, scope: !5541)
!5545 = !DILocation(line: 89, column: 9, scope: !5541)
!5546 = !DILocation(line: 89, column: 15, scope: !5541)
!5547 = !DILocation(line: 89, column: 2, scope: !5541)
!5548 = distinct !DISubprogram(name: "regmap_name_read_file", scope: !2, file: !2, line: 34, type: !1416, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5549)
!5549 = !{!5550, !5551, !5552, !5553, !5554, !5555, !5556, !5557}
!5550 = !DILocalVariable(name: "file", arg: 1, scope: !5548, file: !2, line: 34, type: !1413)
!5551 = !DILocalVariable(name: "user_buf", arg: 2, scope: !5548, file: !2, line: 35, type: !323)
!5552 = !DILocalVariable(name: "count", arg: 3, scope: !5548, file: !2, line: 35, type: !370)
!5553 = !DILocalVariable(name: "ppos", arg: 4, scope: !5548, file: !2, line: 36, type: !1091)
!5554 = !DILocalVariable(name: "map", scope: !5548, file: !2, line: 38, type: !177)
!5555 = !DILocalVariable(name: "name", scope: !5548, file: !2, line: 39, type: !174)
!5556 = !DILocalVariable(name: "ret", scope: !5548, file: !2, line: 40, type: !91)
!5557 = !DILocalVariable(name: "buf", scope: !5548, file: !2, line: 41, type: !323)
!5558 = !DILocation(line: 34, column: 51, scope: !5548)
!5559 = !DILocation(line: 35, column: 23, scope: !5548)
!5560 = !DILocation(line: 35, column: 40, scope: !5548)
!5561 = !DILocation(line: 36, column: 18, scope: !5548)
!5562 = !DILocation(line: 38, column: 2, scope: !5548)
!5563 = !DILocation(line: 38, column: 17, scope: !5548)
!5564 = !DILocation(line: 38, column: 23, scope: !5548)
!5565 = !DILocation(line: 38, column: 29, scope: !5548)
!5566 = !DILocation(line: 39, column: 2, scope: !5548)
!5567 = !DILocation(line: 39, column: 14, scope: !5548)
!5568 = !DILocation(line: 40, column: 2, scope: !5548)
!5569 = !DILocation(line: 40, column: 6, scope: !5548)
!5570 = !DILocation(line: 41, column: 2, scope: !5548)
!5571 = !DILocation(line: 41, column: 8, scope: !5548)
!5572 = !DILocation(line: 43, column: 8, scope: !5548)
!5573 = !DILocation(line: 43, column: 6, scope: !5548)
!5574 = !DILocation(line: 44, column: 7, scope: !5575)
!5575 = distinct !DILexicalBlock(scope: !5548, file: !2, line: 44, column: 6)
!5576 = !DILocation(line: 44, column: 6, scope: !5548)
!5577 = !DILocation(line: 45, column: 3, scope: !5575)
!5578 = !DILocation(line: 47, column: 6, scope: !5579)
!5579 = distinct !DILexicalBlock(scope: !5548, file: !2, line: 47, column: 6)
!5580 = !DILocation(line: 47, column: 11, scope: !5579)
!5581 = !DILocation(line: 47, column: 15, scope: !5579)
!5582 = !DILocation(line: 47, column: 18, scope: !5579)
!5583 = !DILocation(line: 47, column: 23, scope: !5579)
!5584 = !DILocation(line: 47, column: 28, scope: !5579)
!5585 = !DILocation(line: 47, column: 6, scope: !5548)
!5586 = !DILocation(line: 48, column: 10, scope: !5579)
!5587 = !DILocation(line: 48, column: 15, scope: !5579)
!5588 = !DILocation(line: 48, column: 20, scope: !5579)
!5589 = !DILocation(line: 48, column: 28, scope: !5579)
!5590 = !DILocation(line: 48, column: 8, scope: !5579)
!5591 = !DILocation(line: 48, column: 3, scope: !5579)
!5592 = !DILocation(line: 50, column: 17, scope: !5548)
!5593 = !DILocation(line: 50, column: 41, scope: !5548)
!5594 = !DILocation(line: 50, column: 8, scope: !5548)
!5595 = !DILocation(line: 50, column: 6, scope: !5548)
!5596 = !DILocation(line: 51, column: 6, scope: !5597)
!5597 = distinct !DILexicalBlock(scope: !5548, file: !2, line: 51, column: 6)
!5598 = !DILocation(line: 51, column: 10, scope: !5597)
!5599 = !DILocation(line: 51, column: 6, scope: !5548)
!5600 = !DILocation(line: 52, column: 9, scope: !5601)
!5601 = distinct !DILexicalBlock(scope: !5597, file: !2, line: 51, column: 24)
!5602 = !DILocation(line: 52, column: 3, scope: !5601)
!5603 = !DILocation(line: 53, column: 10, scope: !5601)
!5604 = !DILocation(line: 53, column: 3, scope: !5601)
!5605 = !DILocation(line: 56, column: 32, scope: !5548)
!5606 = !DILocation(line: 56, column: 42, scope: !5548)
!5607 = !DILocation(line: 56, column: 49, scope: !5548)
!5608 = !DILocation(line: 56, column: 55, scope: !5548)
!5609 = !DILocation(line: 56, column: 60, scope: !5548)
!5610 = !DILocation(line: 56, column: 8, scope: !5548)
!5611 = !DILocation(line: 56, column: 6, scope: !5548)
!5612 = !DILocation(line: 57, column: 8, scope: !5548)
!5613 = !DILocation(line: 57, column: 2, scope: !5548)
!5614 = !DILocation(line: 58, column: 9, scope: !5548)
!5615 = !DILocation(line: 58, column: 2, scope: !5548)
!5616 = !DILocation(line: 59, column: 1, scope: !5548)
!5617 = !DISubprogram(name: "snprintf", scope: !5098, file: !5098, line: 12, type: !5618, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5618 = !DISubroutineType(types: !5619)
!5619 = !{!91, !323, !370, !174, null}
!5620 = !DISubprogram(name: "simple_read_from_buffer", scope: !20, file: !20, line: 3187, type: !5621, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5621 = !DISubroutineType(types: !5622)
!5622 = !{!355, !159, !370, !1091, !1615, !370}
!5623 = distinct !DISubprogram(name: "regmap_reg_ranges_read_file", scope: !2, file: !2, line: 360, type: !1416, scopeLine: 363, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5624)
!5624 = !{!5625, !5626, !5627, !5628, !5629, !5630, !5631, !5632, !5633, !5634, !5635, !5636, !5637, !5640, !5643}
!5625 = !DILocalVariable(name: "file", arg: 1, scope: !5623, file: !2, line: 360, type: !1413)
!5626 = !DILocalVariable(name: "user_buf", arg: 2, scope: !5623, file: !2, line: 361, type: !323)
!5627 = !DILocalVariable(name: "count", arg: 3, scope: !5623, file: !2, line: 361, type: !370)
!5628 = !DILocalVariable(name: "ppos", arg: 4, scope: !5623, file: !2, line: 362, type: !1091)
!5629 = !DILocalVariable(name: "map", scope: !5623, file: !2, line: 364, type: !177)
!5630 = !DILocalVariable(name: "c", scope: !5623, file: !2, line: 365, type: !4666)
!5631 = !DILocalVariable(name: "p", scope: !5623, file: !2, line: 366, type: !563)
!5632 = !DILocalVariable(name: "buf_pos", scope: !5623, file: !2, line: 367, type: !370)
!5633 = !DILocalVariable(name: "buf", scope: !5623, file: !2, line: 368, type: !323)
!5634 = !DILocalVariable(name: "entry", scope: !5623, file: !2, line: 369, type: !323)
!5635 = !DILocalVariable(name: "ret", scope: !5623, file: !2, line: 370, type: !91)
!5636 = !DILocalVariable(name: "entry_len", scope: !5623, file: !2, line: 371, type: !13)
!5637 = !DILocalVariable(name: "__mptr", scope: !5638, file: !2, line: 401, type: !159)
!5638 = distinct !DILexicalBlock(scope: !5639, file: !2, line: 401, column: 2)
!5639 = distinct !DILexicalBlock(scope: !5623, file: !2, line: 401, column: 2)
!5640 = !DILocalVariable(name: "__mptr", scope: !5641, file: !2, line: 401, type: !159)
!5641 = distinct !DILexicalBlock(scope: !5642, file: !2, line: 401, column: 2)
!5642 = distinct !DILexicalBlock(scope: !5639, file: !2, line: 401, column: 2)
!5643 = !DILabel(scope: !5623, name: "out_buf", file: !2, line: 423)
!5644 = !DILocation(line: 360, column: 57, scope: !5623)
!5645 = !DILocation(line: 361, column: 22, scope: !5623)
!5646 = !DILocation(line: 361, column: 39, scope: !5623)
!5647 = !DILocation(line: 362, column: 17, scope: !5623)
!5648 = !DILocation(line: 364, column: 2, scope: !5623)
!5649 = !DILocation(line: 364, column: 17, scope: !5623)
!5650 = !DILocation(line: 364, column: 23, scope: !5623)
!5651 = !DILocation(line: 364, column: 29, scope: !5623)
!5652 = !DILocation(line: 365, column: 2, scope: !5623)
!5653 = !DILocation(line: 365, column: 35, scope: !5623)
!5654 = !DILocation(line: 366, column: 2, scope: !5623)
!5655 = !DILocation(line: 366, column: 9, scope: !5623)
!5656 = !DILocation(line: 367, column: 2, scope: !5623)
!5657 = !DILocation(line: 367, column: 9, scope: !5623)
!5658 = !DILocation(line: 368, column: 2, scope: !5623)
!5659 = !DILocation(line: 368, column: 8, scope: !5623)
!5660 = !DILocation(line: 369, column: 2, scope: !5623)
!5661 = !DILocation(line: 369, column: 8, scope: !5623)
!5662 = !DILocation(line: 370, column: 2, scope: !5623)
!5663 = !DILocation(line: 370, column: 6, scope: !5623)
!5664 = !DILocation(line: 371, column: 2, scope: !5623)
!5665 = !DILocation(line: 371, column: 15, scope: !5623)
!5666 = !DILocation(line: 373, column: 7, scope: !5667)
!5667 = distinct !DILexicalBlock(scope: !5623, file: !2, line: 373, column: 6)
!5668 = !DILocation(line: 373, column: 6, scope: !5667)
!5669 = !DILocation(line: 373, column: 12, scope: !5667)
!5670 = !DILocation(line: 373, column: 16, scope: !5667)
!5671 = !DILocation(line: 373, column: 20, scope: !5667)
!5672 = !DILocation(line: 373, column: 6, scope: !5623)
!5673 = !DILocation(line: 374, column: 3, scope: !5667)
!5674 = !DILocation(line: 376, column: 6, scope: !5675)
!5675 = distinct !DILexicalBlock(scope: !5623, file: !2, line: 376, column: 6)
!5676 = !DILocation(line: 376, column: 12, scope: !5675)
!5677 = !DILocation(line: 376, column: 6, scope: !5623)
!5678 = !DILocation(line: 377, column: 9, scope: !5675)
!5679 = !DILocation(line: 377, column: 3, scope: !5675)
!5680 = !DILocation(line: 379, column: 16, scope: !5623)
!5681 = !DILocation(line: 379, column: 8, scope: !5623)
!5682 = !DILocation(line: 379, column: 6, scope: !5623)
!5683 = !DILocation(line: 380, column: 7, scope: !5684)
!5684 = distinct !DILexicalBlock(scope: !5623, file: !2, line: 380, column: 6)
!5685 = !DILocation(line: 380, column: 6, scope: !5623)
!5686 = !DILocation(line: 381, column: 3, scope: !5684)
!5687 = !DILocation(line: 383, column: 10, scope: !5623)
!5688 = !DILocation(line: 383, column: 8, scope: !5623)
!5689 = !DILocation(line: 384, column: 7, scope: !5690)
!5690 = distinct !DILexicalBlock(scope: !5623, file: !2, line: 384, column: 6)
!5691 = !DILocation(line: 384, column: 6, scope: !5623)
!5692 = !DILocation(line: 385, column: 9, scope: !5693)
!5693 = distinct !DILexicalBlock(scope: !5690, file: !2, line: 384, column: 14)
!5694 = !DILocation(line: 385, column: 3, scope: !5693)
!5695 = !DILocation(line: 386, column: 3, scope: !5693)
!5696 = !DILocation(line: 394, column: 22, scope: !5623)
!5697 = !DILocation(line: 394, column: 27, scope: !5623)
!5698 = !DILocation(line: 394, column: 32, scope: !5623)
!5699 = !DILocation(line: 394, column: 2, scope: !5623)
!5700 = !DILocation(line: 395, column: 32, scope: !5623)
!5701 = !DILocation(line: 395, column: 41, scope: !5623)
!5702 = !DILocation(line: 395, column: 40, scope: !5623)
!5703 = !DILocation(line: 395, column: 2, scope: !5623)
!5704 = !DILocation(line: 399, column: 4, scope: !5623)
!5705 = !DILocation(line: 400, column: 14, scope: !5623)
!5706 = !DILocation(line: 400, column: 19, scope: !5623)
!5707 = !DILocation(line: 400, column: 2, scope: !5623)
!5708 = !DILocation(line: 401, column: 2, scope: !5638)
!5709 = !DILocation(line: 401, column: 2, scope: !5639)
!5710 = !DILocation(line: 401, column: 2, scope: !5642)
!5711 = !DILocation(line: 402, column: 24, scope: !5712)
!5712 = distinct !DILexicalBlock(scope: !5642, file: !2, line: 401, column: 56)
!5713 = !DILocation(line: 403, column: 10, scope: !5712)
!5714 = !DILocation(line: 403, column: 13, scope: !5712)
!5715 = !DILocation(line: 403, column: 23, scope: !5712)
!5716 = !DILocation(line: 403, column: 26, scope: !5712)
!5717 = !DILocation(line: 402, column: 15, scope: !5712)
!5718 = !DILocation(line: 402, column: 13, scope: !5712)
!5719 = !DILocation(line: 404, column: 7, scope: !5720)
!5720 = distinct !DILexicalBlock(scope: !5712, file: !2, line: 404, column: 7)
!5721 = !DILocation(line: 404, column: 13, scope: !5720)
!5722 = !DILocation(line: 404, column: 12, scope: !5720)
!5723 = !DILocation(line: 404, column: 9, scope: !5720)
!5724 = !DILocation(line: 404, column: 7, scope: !5712)
!5725 = !DILocation(line: 405, column: 8, scope: !5726)
!5726 = distinct !DILexicalBlock(scope: !5727, file: !2, line: 405, column: 8)
!5727 = distinct !DILexicalBlock(scope: !5720, file: !2, line: 404, column: 19)
!5728 = !DILocation(line: 405, column: 18, scope: !5726)
!5729 = !DILocation(line: 405, column: 16, scope: !5726)
!5730 = !DILocation(line: 405, column: 30, scope: !5726)
!5731 = !DILocation(line: 405, column: 28, scope: !5726)
!5732 = !DILocation(line: 405, column: 8, scope: !5727)
!5733 = !DILocation(line: 406, column: 5, scope: !5726)
!5734 = !DILocation(line: 407, column: 11, scope: !5727)
!5735 = !DILocation(line: 407, column: 17, scope: !5727)
!5736 = !DILocation(line: 407, column: 15, scope: !5727)
!5737 = !DILocation(line: 407, column: 26, scope: !5727)
!5738 = !DILocation(line: 407, column: 33, scope: !5727)
!5739 = !DILocation(line: 407, column: 4, scope: !5727)
!5740 = !DILocation(line: 408, column: 15, scope: !5727)
!5741 = !DILocation(line: 408, column: 12, scope: !5727)
!5742 = !DILocation(line: 409, column: 3, scope: !5727)
!5743 = !DILocation(line: 410, column: 8, scope: !5712)
!5744 = !DILocation(line: 410, column: 5, scope: !5712)
!5745 = !DILocation(line: 411, column: 2, scope: !5712)
!5746 = !DILocation(line: 401, column: 2, scope: !5641)
!5747 = distinct !{!5747, !5709, !5748, !5007, !5008}
!5748 = !DILocation(line: 411, column: 2, scope: !5639)
!5749 = !DILocation(line: 412, column: 16, scope: !5623)
!5750 = !DILocation(line: 412, column: 21, scope: !5623)
!5751 = !DILocation(line: 412, column: 2, scope: !5623)
!5752 = !DILocation(line: 414, column: 8, scope: !5623)
!5753 = !DILocation(line: 414, column: 2, scope: !5623)
!5754 = !DILocation(line: 415, column: 8, scope: !5623)
!5755 = !DILocation(line: 415, column: 6, scope: !5623)
!5756 = !DILocation(line: 417, column: 19, scope: !5757)
!5757 = distinct !DILexicalBlock(scope: !5623, file: !2, line: 417, column: 6)
!5758 = !DILocation(line: 417, column: 29, scope: !5757)
!5759 = !DILocation(line: 417, column: 34, scope: !5757)
!5760 = !DILocation(line: 417, column: 6, scope: !5757)
!5761 = !DILocation(line: 417, column: 6, scope: !5623)
!5762 = !DILocation(line: 418, column: 7, scope: !5763)
!5763 = distinct !DILexicalBlock(scope: !5757, file: !2, line: 417, column: 44)
!5764 = !DILocation(line: 419, column: 3, scope: !5763)
!5765 = !DILocation(line: 422, column: 11, scope: !5623)
!5766 = !DILocation(line: 422, column: 3, scope: !5623)
!5767 = !DILocation(line: 422, column: 8, scope: !5623)
!5768 = !DILocation(line: 422, column: 2, scope: !5623)
!5769 = !DILocation(line: 423, column: 1, scope: !5623)
!5770 = !DILocation(line: 424, column: 8, scope: !5623)
!5771 = !DILocation(line: 424, column: 2, scope: !5623)
!5772 = !DILocation(line: 425, column: 9, scope: !5623)
!5773 = !DILocation(line: 425, column: 2, scope: !5623)
!5774 = !DILocation(line: 426, column: 1, scope: !5623)
!5775 = distinct !DISubprogram(name: "regmap_calc_tot_len", scope: !2, file: !2, line: 181, type: !5776, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5778)
!5776 = !DISubroutineType(types: !5777)
!5777 = !{null, !177, !159, !370}
!5778 = !{!5779, !5780, !5781}
!5779 = !DILocalVariable(name: "map", arg: 1, scope: !5775, file: !2, line: 181, type: !177)
!5780 = !DILocalVariable(name: "buf", arg: 2, scope: !5775, file: !2, line: 182, type: !159)
!5781 = !DILocalVariable(name: "count", arg: 3, scope: !5775, file: !2, line: 182, type: !370)
!5782 = !DILocation(line: 181, column: 55, scope: !5775)
!5783 = !DILocation(line: 182, column: 18, scope: !5775)
!5784 = !DILocation(line: 182, column: 30, scope: !5775)
!5785 = !DILocation(line: 185, column: 7, scope: !5786)
!5786 = distinct !DILexicalBlock(scope: !5775, file: !2, line: 185, column: 6)
!5787 = !DILocation(line: 185, column: 12, scope: !5786)
!5788 = !DILocation(line: 185, column: 6, scope: !5775)
!5789 = !DILocation(line: 186, column: 46, scope: !5790)
!5790 = distinct !DILexicalBlock(scope: !5786, file: !2, line: 185, column: 29)
!5791 = !DILocation(line: 186, column: 51, scope: !5790)
!5792 = !DILocation(line: 186, column: 26, scope: !5790)
!5793 = !DILocation(line: 186, column: 3, scope: !5790)
!5794 = !DILocation(line: 186, column: 8, scope: !5790)
!5795 = !DILocation(line: 186, column: 24, scope: !5790)
!5796 = !DILocation(line: 187, column: 30, scope: !5790)
!5797 = !DILocation(line: 187, column: 35, scope: !5790)
!5798 = !DILocation(line: 187, column: 42, scope: !5790)
!5799 = !DILocation(line: 187, column: 28, scope: !5790)
!5800 = !DILocation(line: 187, column: 26, scope: !5790)
!5801 = !DILocation(line: 187, column: 3, scope: !5790)
!5802 = !DILocation(line: 187, column: 8, scope: !5790)
!5803 = !DILocation(line: 187, column: 24, scope: !5790)
!5804 = !DILocation(line: 188, column: 26, scope: !5790)
!5805 = !DILocation(line: 188, column: 31, scope: !5790)
!5806 = !DILocation(line: 189, column: 4, scope: !5790)
!5807 = !DILocation(line: 189, column: 9, scope: !5790)
!5808 = !DILocation(line: 188, column: 47, scope: !5790)
!5809 = !DILocation(line: 189, column: 25, scope: !5790)
!5810 = !DILocation(line: 188, column: 3, scope: !5790)
!5811 = !DILocation(line: 188, column: 8, scope: !5790)
!5812 = !DILocation(line: 188, column: 24, scope: !5790)
!5813 = !DILocation(line: 190, column: 2, scope: !5790)
!5814 = !DILocation(line: 191, column: 1, scope: !5775)
!5815 = distinct !DISubprogram(name: "regmap_debugfs_get_dump_start", scope: !2, file: !2, line: 95, type: !5816, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5818)
!5816 = !DISubroutineType(types: !5817)
!5817 = !{!13, !177, !13, !563, !1091}
!5818 = !{!5819, !5820, !5821, !5822, !5823, !5824, !5825, !5826, !5827, !5828, !5829, !5831, !5834, !5837}
!5819 = !DILocalVariable(name: "map", arg: 1, scope: !5815, file: !2, line: 95, type: !177)
!5820 = !DILocalVariable(name: "base", arg: 2, scope: !5815, file: !2, line: 96, type: !13)
!5821 = !DILocalVariable(name: "from", arg: 3, scope: !5815, file: !2, line: 97, type: !563)
!5822 = !DILocalVariable(name: "pos", arg: 4, scope: !5815, file: !2, line: 98, type: !1091)
!5823 = !DILocalVariable(name: "c", scope: !5815, file: !2, line: 100, type: !4666)
!5824 = !DILocalVariable(name: "p", scope: !5815, file: !2, line: 101, type: !563)
!5825 = !DILocalVariable(name: "i", scope: !5815, file: !2, line: 102, type: !13)
!5826 = !DILocalVariable(name: "ret", scope: !5815, file: !2, line: 102, type: !13)
!5827 = !DILocalVariable(name: "fpos_offset", scope: !5815, file: !2, line: 103, type: !13)
!5828 = !DILocalVariable(name: "reg_offset", scope: !5815, file: !2, line: 104, type: !13)
!5829 = !DILocalVariable(name: "__ret_warn_on", scope: !5830, file: !2, line: 160, type: !91)
!5830 = distinct !DILexicalBlock(scope: !5815, file: !2, line: 160, column: 2)
!5831 = !DILocalVariable(name: "__flags", scope: !5832, file: !2, line: 160, type: !91)
!5832 = distinct !DILexicalBlock(scope: !5833, file: !2, line: 160, column: 2)
!5833 = distinct !DILexicalBlock(scope: !5830, file: !2, line: 160, column: 2)
!5834 = !DILocalVariable(name: "__mptr", scope: !5835, file: !2, line: 164, type: !159)
!5835 = distinct !DILexicalBlock(scope: !5836, file: !2, line: 164, column: 2)
!5836 = distinct !DILexicalBlock(scope: !5815, file: !2, line: 164, column: 2)
!5837 = !DILocalVariable(name: "__mptr", scope: !5838, file: !2, line: 164, type: !159)
!5838 = distinct !DILexicalBlock(scope: !5839, file: !2, line: 164, column: 2)
!5839 = distinct !DILexicalBlock(scope: !5836, file: !2, line: 164, column: 2)
!5840 = !DILocation(line: 95, column: 66, scope: !5815)
!5841 = !DILocation(line: 96, column: 22, scope: !5815)
!5842 = !DILocation(line: 97, column: 16, scope: !5815)
!5843 = !DILocation(line: 98, column: 17, scope: !5815)
!5844 = !DILocation(line: 100, column: 2, scope: !5815)
!5845 = !DILocation(line: 100, column: 35, scope: !5815)
!5846 = !DILocation(line: 101, column: 2, scope: !5815)
!5847 = !DILocation(line: 101, column: 9, scope: !5815)
!5848 = !DILocation(line: 102, column: 2, scope: !5815)
!5849 = !DILocation(line: 102, column: 15, scope: !5815)
!5850 = !DILocation(line: 102, column: 18, scope: !5815)
!5851 = !DILocation(line: 103, column: 2, scope: !5815)
!5852 = !DILocation(line: 103, column: 15, scope: !5815)
!5853 = !DILocation(line: 104, column: 2, scope: !5815)
!5854 = !DILocation(line: 104, column: 15, scope: !5815)
!5855 = !DILocation(line: 107, column: 6, scope: !5856)
!5856 = distinct !DILexicalBlock(scope: !5815, file: !2, line: 107, column: 6)
!5857 = !DILocation(line: 107, column: 6, scope: !5815)
!5858 = !DILocation(line: 108, column: 10, scope: !5856)
!5859 = !DILocation(line: 108, column: 3, scope: !5856)
!5860 = !DILocation(line: 114, column: 14, scope: !5815)
!5861 = !DILocation(line: 114, column: 19, scope: !5815)
!5862 = !DILocation(line: 114, column: 2, scope: !5815)
!5863 = !DILocation(line: 115, column: 6, scope: !5815)
!5864 = !DILocation(line: 115, column: 4, scope: !5815)
!5865 = !DILocation(line: 116, column: 18, scope: !5866)
!5866 = distinct !DILexicalBlock(scope: !5815, file: !2, line: 116, column: 6)
!5867 = !DILocation(line: 116, column: 23, scope: !5866)
!5868 = !DILocation(line: 116, column: 6, scope: !5866)
!5869 = !DILocation(line: 116, column: 6, scope: !5815)
!5870 = !DILocation(line: 117, column: 3, scope: !5871)
!5871 = distinct !DILexicalBlock(scope: !5866, file: !2, line: 116, column: 43)
!5872 = !DILocation(line: 117, column: 10, scope: !5873)
!5873 = distinct !DILexicalBlock(scope: !5874, file: !2, line: 117, column: 3)
!5874 = distinct !DILexicalBlock(scope: !5871, file: !2, line: 117, column: 3)
!5875 = !DILocation(line: 117, column: 15, scope: !5873)
!5876 = !DILocation(line: 117, column: 20, scope: !5873)
!5877 = !DILocation(line: 117, column: 12, scope: !5873)
!5878 = !DILocation(line: 117, column: 3, scope: !5874)
!5879 = !DILocation(line: 119, column: 26, scope: !5880)
!5880 = distinct !DILexicalBlock(scope: !5881, file: !2, line: 119, column: 8)
!5881 = distinct !DILexicalBlock(scope: !5873, file: !2, line: 117, column: 56)
!5882 = !DILocation(line: 119, column: 31, scope: !5880)
!5883 = !DILocation(line: 119, column: 9, scope: !5880)
!5884 = !DILocation(line: 119, column: 8, scope: !5881)
!5885 = !DILocation(line: 120, column: 9, scope: !5886)
!5886 = distinct !DILexicalBlock(scope: !5887, file: !2, line: 120, column: 9)
!5887 = distinct !DILexicalBlock(scope: !5880, file: !2, line: 119, column: 35)
!5888 = !DILocation(line: 120, column: 9, scope: !5887)
!5889 = !DILocation(line: 121, column: 15, scope: !5890)
!5890 = distinct !DILexicalBlock(scope: !5886, file: !2, line: 120, column: 12)
!5891 = !DILocation(line: 121, column: 17, scope: !5890)
!5892 = !DILocation(line: 121, column: 6, scope: !5890)
!5893 = !DILocation(line: 121, column: 9, scope: !5890)
!5894 = !DILocation(line: 121, column: 13, scope: !5890)
!5895 = !DILocation(line: 122, column: 19, scope: !5890)
!5896 = !DILocation(line: 122, column: 23, scope: !5890)
!5897 = !DILocation(line: 122, column: 28, scope: !5890)
!5898 = !DILocation(line: 122, column: 21, scope: !5890)
!5899 = !DILocation(line: 122, column: 6, scope: !5890)
!5900 = !DILocation(line: 122, column: 9, scope: !5890)
!5901 = !DILocation(line: 122, column: 17, scope: !5890)
!5902 = !DILocation(line: 123, column: 21, scope: !5890)
!5903 = !DILocation(line: 123, column: 24, scope: !5890)
!5904 = !DILocation(line: 124, column: 14, scope: !5890)
!5905 = !DILocation(line: 124, column: 19, scope: !5890)
!5906 = !DILocation(line: 123, column: 6, scope: !5890)
!5907 = !DILocation(line: 125, column: 8, scope: !5890)
!5908 = !DILocation(line: 126, column: 5, scope: !5890)
!5909 = !DILocation(line: 128, column: 5, scope: !5887)
!5910 = !DILocation(line: 132, column: 9, scope: !5911)
!5911 = distinct !DILexicalBlock(scope: !5881, file: !2, line: 132, column: 8)
!5912 = !DILocation(line: 132, column: 8, scope: !5881)
!5913 = !DILocation(line: 133, column: 9, scope: !5914)
!5914 = distinct !DILexicalBlock(scope: !5911, file: !2, line: 132, column: 12)
!5915 = !DILocation(line: 133, column: 7, scope: !5914)
!5916 = !DILocation(line: 134, column: 10, scope: !5917)
!5917 = distinct !DILexicalBlock(scope: !5914, file: !2, line: 134, column: 9)
!5918 = !DILocation(line: 134, column: 9, scope: !5914)
!5919 = !DILocation(line: 135, column: 37, scope: !5920)
!5920 = distinct !DILexicalBlock(scope: !5917, file: !2, line: 134, column: 13)
!5921 = !DILocation(line: 135, column: 6, scope: !5920)
!5922 = !DILocation(line: 136, column: 20, scope: !5920)
!5923 = !DILocation(line: 136, column: 25, scope: !5920)
!5924 = !DILocation(line: 136, column: 6, scope: !5920)
!5925 = !DILocation(line: 137, column: 13, scope: !5920)
!5926 = !DILocation(line: 137, column: 6, scope: !5920)
!5927 = !DILocation(line: 139, column: 14, scope: !5914)
!5928 = !DILocation(line: 139, column: 5, scope: !5914)
!5929 = !DILocation(line: 139, column: 8, scope: !5914)
!5930 = !DILocation(line: 139, column: 12, scope: !5914)
!5931 = !DILocation(line: 140, column: 19, scope: !5914)
!5932 = !DILocation(line: 140, column: 5, scope: !5914)
!5933 = !DILocation(line: 140, column: 8, scope: !5914)
!5934 = !DILocation(line: 140, column: 17, scope: !5914)
!5935 = !DILocation(line: 141, column: 4, scope: !5914)
!5936 = !DILocation(line: 143, column: 9, scope: !5881)
!5937 = !DILocation(line: 143, column: 14, scope: !5881)
!5938 = !DILocation(line: 143, column: 6, scope: !5881)
!5939 = !DILocation(line: 144, column: 3, scope: !5881)
!5940 = !DILocation(line: 117, column: 39, scope: !5873)
!5941 = !DILocation(line: 117, column: 44, scope: !5873)
!5942 = !DILocation(line: 117, column: 36, scope: !5873)
!5943 = !DILocation(line: 117, column: 3, scope: !5873)
!5944 = distinct !{!5944, !5878, !5945, !5007, !5008}
!5945 = !DILocation(line: 144, column: 3, scope: !5874)
!5946 = !DILocation(line: 145, column: 2, scope: !5871)
!5947 = !DILocation(line: 148, column: 6, scope: !5948)
!5948 = distinct !DILexicalBlock(scope: !5815, file: !2, line: 148, column: 6)
!5949 = !DILocation(line: 148, column: 6, scope: !5815)
!5950 = !DILocation(line: 149, column: 12, scope: !5951)
!5951 = distinct !DILexicalBlock(scope: !5948, file: !2, line: 148, column: 9)
!5952 = !DILocation(line: 149, column: 14, scope: !5951)
!5953 = !DILocation(line: 149, column: 3, scope: !5951)
!5954 = !DILocation(line: 149, column: 6, scope: !5951)
!5955 = !DILocation(line: 149, column: 10, scope: !5951)
!5956 = !DILocation(line: 150, column: 16, scope: !5951)
!5957 = !DILocation(line: 150, column: 20, scope: !5951)
!5958 = !DILocation(line: 150, column: 25, scope: !5951)
!5959 = !DILocation(line: 150, column: 18, scope: !5951)
!5960 = !DILocation(line: 150, column: 3, scope: !5951)
!5961 = !DILocation(line: 150, column: 6, scope: !5951)
!5962 = !DILocation(line: 150, column: 14, scope: !5951)
!5963 = !DILocation(line: 151, column: 18, scope: !5951)
!5964 = !DILocation(line: 151, column: 21, scope: !5951)
!5965 = !DILocation(line: 152, column: 11, scope: !5951)
!5966 = !DILocation(line: 152, column: 16, scope: !5951)
!5967 = !DILocation(line: 151, column: 3, scope: !5951)
!5968 = !DILocation(line: 153, column: 2, scope: !5951)
!5969 = !DILocation(line: 160, column: 2, scope: !5830)
!5970 = !DILocation(line: 160, column: 2, scope: !5833)
!5971 = !DILocation(line: 160, column: 2, scope: !5832)
!5972 = !DILocation(line: 160, column: 2, scope: !5973)
!5973 = distinct !DILexicalBlock(scope: !5832, file: !2, line: 160, column: 2)
!5974 = !DILocation(line: 160, column: 2, scope: !5975)
!5975 = distinct !DILexicalBlock(scope: !5832, file: !2, line: 160, column: 2)
!5976 = !{i64 2154140522, i64 2154140551, i64 2154140597, i64 2154140655, i64 2154140709, i64 2154140763, i64 2154140818, i64 2154140849, i64 2154141157, i64 2154141163, i64 2154141210, i64 2154141233, i64 2154141259}
!5977 = !DILocation(line: 160, column: 2, scope: !5978)
!5978 = distinct !DILexicalBlock(scope: !5832, file: !2, line: 160, column: 2)
!5979 = !DILocation(line: 160, column: 2, scope: !5815)
!5980 = !DILocation(line: 161, column: 8, scope: !5815)
!5981 = !DILocation(line: 161, column: 6, scope: !5815)
!5982 = !DILocation(line: 164, column: 2, scope: !5835)
!5983 = !DILocation(line: 164, column: 2, scope: !5836)
!5984 = !DILocation(line: 164, column: 2, scope: !5839)
!5985 = !DILocation(line: 165, column: 7, scope: !5986)
!5986 = distinct !DILexicalBlock(scope: !5987, file: !2, line: 165, column: 7)
!5987 = distinct !DILexicalBlock(scope: !5839, file: !2, line: 164, column: 56)
!5988 = !DILocation(line: 165, column: 15, scope: !5986)
!5989 = !DILocation(line: 165, column: 18, scope: !5986)
!5990 = !DILocation(line: 165, column: 12, scope: !5986)
!5991 = !DILocation(line: 165, column: 22, scope: !5986)
!5992 = !DILocation(line: 165, column: 25, scope: !5986)
!5993 = !DILocation(line: 165, column: 33, scope: !5986)
!5994 = !DILocation(line: 165, column: 36, scope: !5986)
!5995 = !DILocation(line: 165, column: 30, scope: !5986)
!5996 = !DILocation(line: 165, column: 7, scope: !5987)
!5997 = !DILocation(line: 166, column: 18, scope: !5998)
!5998 = distinct !DILexicalBlock(scope: !5986, file: !2, line: 165, column: 41)
!5999 = !DILocation(line: 166, column: 25, scope: !5998)
!6000 = !DILocation(line: 166, column: 28, scope: !5998)
!6001 = !DILocation(line: 166, column: 23, scope: !5998)
!6002 = !DILocation(line: 166, column: 16, scope: !5998)
!6003 = !DILocation(line: 167, column: 17, scope: !5998)
!6004 = !DILocation(line: 167, column: 31, scope: !5998)
!6005 = !DILocation(line: 167, column: 36, scope: !5998)
!6006 = !DILocation(line: 167, column: 29, scope: !5998)
!6007 = !DILocation(line: 167, column: 15, scope: !5998)
!6008 = !DILocation(line: 168, column: 11, scope: !5998)
!6009 = !DILocation(line: 168, column: 14, scope: !5998)
!6010 = !DILocation(line: 168, column: 21, scope: !5998)
!6011 = !DILocation(line: 168, column: 34, scope: !5998)
!6012 = !DILocation(line: 168, column: 39, scope: !5998)
!6013 = !DILocation(line: 168, column: 32, scope: !5998)
!6014 = !DILocation(line: 168, column: 20, scope: !5998)
!6015 = !DILocation(line: 168, column: 18, scope: !5998)
!6016 = !DILocation(line: 168, column: 5, scope: !5998)
!6017 = !DILocation(line: 168, column: 9, scope: !5998)
!6018 = !DILocation(line: 169, column: 18, scope: !5998)
!6019 = !DILocation(line: 169, column: 23, scope: !5998)
!6020 = !DILocation(line: 169, column: 4, scope: !5998)
!6021 = !DILocation(line: 170, column: 11, scope: !5998)
!6022 = !DILocation(line: 170, column: 14, scope: !5998)
!6023 = !DILocation(line: 170, column: 26, scope: !5998)
!6024 = !DILocation(line: 170, column: 39, scope: !5998)
!6025 = !DILocation(line: 170, column: 44, scope: !5998)
!6026 = !DILocation(line: 170, column: 37, scope: !5998)
!6027 = !DILocation(line: 170, column: 23, scope: !5998)
!6028 = !DILocation(line: 170, column: 4, scope: !5998)
!6029 = !DILocation(line: 173, column: 10, scope: !5987)
!6030 = !DILocation(line: 173, column: 13, scope: !5987)
!6031 = !DILocation(line: 173, column: 4, scope: !5987)
!6032 = !DILocation(line: 173, column: 8, scope: !5987)
!6033 = !DILocation(line: 174, column: 9, scope: !5987)
!6034 = !DILocation(line: 174, column: 12, scope: !5987)
!6035 = !DILocation(line: 174, column: 7, scope: !5987)
!6036 = !DILocation(line: 175, column: 2, scope: !5987)
!6037 = !DILocation(line: 164, column: 2, scope: !5838)
!6038 = distinct !{!6038, !5983, !6039, !5007, !5008}
!6039 = !DILocation(line: 175, column: 2, scope: !5836)
!6040 = !DILocation(line: 176, column: 16, scope: !5815)
!6041 = !DILocation(line: 176, column: 21, scope: !5815)
!6042 = !DILocation(line: 176, column: 2, scope: !5815)
!6043 = !DILocation(line: 178, column: 9, scope: !5815)
!6044 = !DILocation(line: 178, column: 2, scope: !5815)
!6045 = !DILocation(line: 179, column: 1, scope: !5815)
!6046 = distinct !DISubprogram(name: "copy_to_user", scope: !6047, file: !6047, line: 188, type: !6048, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6050)
!6047 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c6a99e19cfced98603230c2c71e2e3e")
!6048 = !DISubroutineType(types: !6049)
!6049 = !{!169, !159, !1615, !169}
!6050 = !{!6051, !6052, !6053}
!6051 = !DILocalVariable(name: "to", arg: 1, scope: !6046, file: !6047, line: 188, type: !159)
!6052 = !DILocalVariable(name: "from", arg: 2, scope: !6046, file: !6047, line: 188, type: !1615)
!6053 = !DILocalVariable(name: "n", arg: 3, scope: !6046, file: !6047, line: 188, type: !169)
!6054 = !DILocation(line: 188, column: 27, scope: !6046)
!6055 = !DILocation(line: 188, column: 43, scope: !6046)
!6056 = !DILocation(line: 188, column: 63, scope: !6046)
!6057 = !DILocation(line: 190, column: 22, scope: !6058)
!6058 = distinct !DILexicalBlock(scope: !6046, file: !6047, line: 190, column: 6)
!6059 = !DILocation(line: 190, column: 28, scope: !6058)
!6060 = !DILocation(line: 190, column: 6, scope: !6058)
!6061 = !DILocation(line: 190, column: 6, scope: !6046)
!6062 = !DILocation(line: 191, column: 21, scope: !6058)
!6063 = !DILocation(line: 191, column: 25, scope: !6058)
!6064 = !DILocation(line: 191, column: 31, scope: !6058)
!6065 = !DILocation(line: 191, column: 7, scope: !6058)
!6066 = !DILocation(line: 191, column: 5, scope: !6058)
!6067 = !DILocation(line: 191, column: 3, scope: !6058)
!6068 = !DILocation(line: 192, column: 9, scope: !6046)
!6069 = !DILocation(line: 192, column: 2, scope: !6046)
!6070 = distinct !DISubprogram(name: "regmap_calc_reg_len", scope: !2, file: !2, line: 29, type: !6071, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6073)
!6071 = !DISubroutineType(types: !6072)
!6072 = !{!370, !91}
!6073 = !{!6074}
!6074 = !DILocalVariable(name: "max_val", arg: 1, scope: !6070, file: !2, line: 29, type: !91)
!6075 = !DILocation(line: 29, column: 39, scope: !6070)
!6076 = !DILocation(line: 31, column: 33, scope: !6070)
!6077 = !DILocation(line: 31, column: 9, scope: !6070)
!6078 = !DILocation(line: 31, column: 2, scope: !6070)
!6079 = distinct !DISubprogram(name: "list_empty", scope: !5040, file: !5040, line: 371, type: !6080, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6084)
!6080 = !DISubroutineType(types: !6081)
!6081 = !{!91, !6082}
!6082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6083, size: 64)
!6083 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !239)
!6084 = !{!6085}
!6085 = !DILocalVariable(name: "head", arg: 1, scope: !6079, file: !5040, line: 371, type: !6082)
!6086 = !DILocation(line: 371, column: 54, scope: !6079)
!6087 = !DILocation(line: 373, column: 9, scope: !6088)
!6088 = distinct !DILexicalBlock(scope: !6079, file: !5040, line: 373, column: 9)
!6089 = !DILocation(line: 373, column: 9, scope: !6090)
!6090 = distinct !DILexicalBlock(scope: !6088, file: !5040, line: 373, column: 9)
!6091 = !DILocation(line: 373, column: 34, scope: !6079)
!6092 = !DILocation(line: 373, column: 31, scope: !6079)
!6093 = !DILocation(line: 373, column: 2, scope: !6079)
!6094 = distinct !DISubprogram(name: "regmap_printable", scope: !2, file: !2, line: 80, type: !5116, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6095)
!6095 = !{!6096, !6097}
!6096 = !DILocalVariable(name: "map", arg: 1, scope: !6094, file: !2, line: 80, type: !177)
!6097 = !DILocalVariable(name: "reg", arg: 2, scope: !6094, file: !2, line: 80, type: !13)
!6098 = !DILocation(line: 80, column: 45, scope: !6094)
!6099 = !DILocation(line: 80, column: 63, scope: !6094)
!6100 = !DILocation(line: 82, column: 22, scope: !6101)
!6101 = distinct !DILexicalBlock(scope: !6094, file: !2, line: 82, column: 6)
!6102 = !DILocation(line: 82, column: 27, scope: !6101)
!6103 = !DILocation(line: 82, column: 6, scope: !6101)
!6104 = !DILocation(line: 82, column: 6, scope: !6094)
!6105 = !DILocation(line: 83, column: 3, scope: !6101)
!6106 = !DILocation(line: 85, column: 23, scope: !6107)
!6107 = distinct !DILexicalBlock(scope: !6094, file: !2, line: 85, column: 6)
!6108 = !DILocation(line: 85, column: 28, scope: !6107)
!6109 = !DILocation(line: 85, column: 7, scope: !6107)
!6110 = !DILocation(line: 85, column: 33, scope: !6107)
!6111 = !DILocation(line: 85, column: 51, scope: !6107)
!6112 = !DILocation(line: 85, column: 56, scope: !6107)
!6113 = !DILocation(line: 85, column: 37, scope: !6107)
!6114 = !DILocation(line: 85, column: 6, scope: !6094)
!6115 = !DILocation(line: 86, column: 3, scope: !6107)
!6116 = !DILocation(line: 88, column: 2, scope: !6094)
!6117 = !DILocation(line: 89, column: 1, scope: !6094)
!6118 = distinct !DISubprogram(name: "list_add_tail", scope: !5040, file: !5040, line: 181, type: !5041, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6119)
!6119 = !{!6120, !6121}
!6120 = !DILocalVariable(name: "new", arg: 1, scope: !6118, file: !5040, line: 181, type: !242)
!6121 = !DILocalVariable(name: "head", arg: 2, scope: !6118, file: !5040, line: 181, type: !242)
!6122 = !DILocation(line: 181, column: 52, scope: !6118)
!6123 = !DILocation(line: 181, column: 75, scope: !6118)
!6124 = !DILocation(line: 183, column: 13, scope: !6118)
!6125 = !DILocation(line: 183, column: 18, scope: !6118)
!6126 = !DILocation(line: 183, column: 24, scope: !6118)
!6127 = !DILocation(line: 183, column: 30, scope: !6118)
!6128 = !DILocation(line: 183, column: 2, scope: !6118)
!6129 = !DILocation(line: 184, column: 1, scope: !6118)
!6130 = !DISubprogram(name: "regmap_precious", scope: !162, file: !162, line: 201, type: !5116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6131 = !DISubprogram(name: "regmap_cached", scope: !162, file: !162, line: 197, type: !5116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6132 = distinct !DISubprogram(name: "check_copy_size", scope: !4768, file: !4768, line: 237, type: !6133, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6135)
!6133 = !DISubroutineType(types: !6134)
!6134 = !{!718, !1615, !370, !718}
!6135 = !{!6136, !6137, !6138, !6139, !6140, !6143}
!6136 = !DILocalVariable(name: "addr", arg: 1, scope: !6132, file: !4768, line: 237, type: !1615)
!6137 = !DILocalVariable(name: "bytes", arg: 2, scope: !6132, file: !4768, line: 237, type: !370)
!6138 = !DILocalVariable(name: "is_source", arg: 3, scope: !6132, file: !4768, line: 237, type: !718)
!6139 = !DILocalVariable(name: "sz", scope: !6132, file: !4768, line: 239, type: !91)
!6140 = !DILocalVariable(name: "__ret_warn_on", scope: !6141, file: !4768, line: 249, type: !91)
!6141 = distinct !DILexicalBlock(scope: !6142, file: !4768, line: 249, column: 6)
!6142 = distinct !DILexicalBlock(scope: !6132, file: !4768, line: 249, column: 6)
!6143 = !DILocalVariable(name: "__flags", scope: !6144, file: !4768, line: 249, type: !91)
!6144 = distinct !DILexicalBlock(scope: !6145, file: !4768, line: 249, column: 6)
!6145 = distinct !DILexicalBlock(scope: !6141, file: !4768, line: 249, column: 6)
!6146 = !DILocation(line: 237, column: 29, scope: !6132)
!6147 = !DILocation(line: 237, column: 42, scope: !6132)
!6148 = !DILocation(line: 237, column: 54, scope: !6132)
!6149 = !DILocation(line: 239, column: 2, scope: !6132)
!6150 = !DILocation(line: 239, column: 6, scope: !6132)
!6151 = !DILocation(line: 239, column: 33, scope: !6132)
!6152 = !DILocation(line: 239, column: 11, scope: !6132)
!6153 = !DILocation(line: 240, column: 6, scope: !6154)
!6154 = distinct !DILexicalBlock(scope: !6132, file: !4768, line: 240, column: 6)
!6155 = !DILocation(line: 0, scope: !6154)
!6156 = !DILocation(line: 240, column: 6, scope: !6132)
!6157 = !DILocation(line: 241, column: 29, scope: !6158)
!6158 = distinct !DILexicalBlock(scope: !6159, file: !4768, line: 241, column: 7)
!6159 = distinct !DILexicalBlock(scope: !6154, file: !4768, line: 240, column: 39)
!6160 = !DILocation(line: 241, column: 8, scope: !6158)
!6161 = !DILocation(line: 241, column: 7, scope: !6159)
!6162 = !DILocation(line: 242, column: 18, scope: !6158)
!6163 = !DILocation(line: 242, column: 22, scope: !6158)
!6164 = !DILocation(line: 242, column: 4, scope: !6158)
!6165 = !DILocation(line: 243, column: 12, scope: !6166)
!6166 = distinct !DILexicalBlock(scope: !6158, file: !4768, line: 243, column: 12)
!6167 = !DILocation(line: 243, column: 12, scope: !6158)
!6168 = !DILocation(line: 244, column: 4, scope: !6166)
!6169 = !{i32 920620}
!6170 = !DILocation(line: 246, column: 4, scope: !6166)
!6171 = !{i32 920649}
!6172 = !DILocation(line: 247, column: 3, scope: !6159)
!6173 = !DILocation(line: 249, column: 6, scope: !6141)
!6174 = !DILocation(line: 249, column: 6, scope: !6145)
!6175 = !DILocation(line: 249, column: 6, scope: !6144)
!6176 = !DILocation(line: 249, column: 6, scope: !6177)
!6177 = distinct !DILexicalBlock(scope: !6144, file: !4768, line: 249, column: 6)
!6178 = !DILocation(line: 249, column: 6, scope: !6179)
!6179 = distinct !DILexicalBlock(scope: !6144, file: !4768, line: 249, column: 6)
!6180 = !{i64 2149557650, i64 2149557679, i64 2149557725, i64 2149557783, i64 2149557837, i64 2149557891, i64 2149557946, i64 2149557977, i64 2149558285, i64 2149558291, i64 2149558338, i64 2149558361, i64 2149558387}
!6181 = !DILocation(line: 249, column: 6, scope: !6182)
!6182 = distinct !DILexicalBlock(scope: !6144, file: !4768, line: 249, column: 6)
!6183 = !DILocation(line: 249, column: 6, scope: !6142)
!6184 = !DILocation(line: 249, column: 6, scope: !6132)
!6185 = !DILocation(line: 250, column: 3, scope: !6142)
!6186 = !DILocation(line: 251, column: 20, scope: !6132)
!6187 = !DILocation(line: 251, column: 26, scope: !6132)
!6188 = !DILocation(line: 251, column: 33, scope: !6132)
!6189 = !DILocation(line: 251, column: 2, scope: !6132)
!6190 = !DILocation(line: 252, column: 2, scope: !6132)
!6191 = !DILocation(line: 253, column: 1, scope: !6132)
!6192 = !DISubprogram(name: "_copy_to_user", scope: !6047, file: !6047, line: 176, type: !6048, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6193 = distinct !DISubprogram(name: "copy_overflow", scope: !4768, file: !4768, line: 230, type: !6194, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6196)
!6194 = !DISubroutineType(types: !6195)
!6195 = !{null, !91, !169}
!6196 = !{!6197, !6198}
!6197 = !DILocalVariable(name: "size", arg: 1, scope: !6193, file: !4768, line: 230, type: !91)
!6198 = !DILocalVariable(name: "count", arg: 2, scope: !6193, file: !4768, line: 230, type: !169)
!6199 = !DILocation(line: 230, column: 38, scope: !6193)
!6200 = !DILocation(line: 230, column: 58, scope: !6193)
!6201 = !DILocation(line: 233, column: 19, scope: !6202)
!6202 = distinct !DILexicalBlock(scope: !6193, file: !4768, line: 232, column: 6)
!6203 = !DILocation(line: 233, column: 25, scope: !6202)
!6204 = !DILocation(line: 233, column: 3, scope: !6202)
!6205 = !DILocation(line: 234, column: 1, scope: !6193)
!6206 = !DISubprogram(name: "__bad_copy_from", scope: !4768, file: !4768, line: 224, type: !994, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6207 = !DISubprogram(name: "__bad_copy_to", scope: !4768, file: !4768, line: 226, type: !994, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6208 = distinct !DISubprogram(name: "check_object_size", scope: !4768, file: !4768, line: 218, type: !6209, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6211)
!6209 = !DISubroutineType(types: !6210)
!6210 = !{null, !1615, !169, !718}
!6211 = !{!6212, !6213, !6214}
!6212 = !DILocalVariable(name: "ptr", arg: 1, scope: !6208, file: !4768, line: 218, type: !1615)
!6213 = !DILocalVariable(name: "n", arg: 2, scope: !6208, file: !4768, line: 218, type: !169)
!6214 = !DILocalVariable(name: "to_user", arg: 3, scope: !6208, file: !4768, line: 219, type: !718)
!6215 = !DILocation(line: 218, column: 50, scope: !6208)
!6216 = !DILocation(line: 218, column: 69, scope: !6208)
!6217 = !DILocation(line: 219, column: 15, scope: !6208)
!6218 = !DILocation(line: 220, column: 3, scope: !6208)
!6219 = !DISubprogram(name: "__copy_overflow", scope: !4768, file: !4768, line: 228, type: !6194, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6220 = distinct !DISubprogram(name: "regmap_map_read_file", scope: !2, file: !2, line: 284, type: !1416, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6221)
!6221 = !{!6222, !6223, !6224, !6225, !6226}
!6222 = !DILocalVariable(name: "file", arg: 1, scope: !6220, file: !2, line: 284, type: !1413)
!6223 = !DILocalVariable(name: "user_buf", arg: 2, scope: !6220, file: !2, line: 284, type: !323)
!6224 = !DILocalVariable(name: "count", arg: 3, scope: !6220, file: !2, line: 285, type: !370)
!6225 = !DILocalVariable(name: "ppos", arg: 4, scope: !6220, file: !2, line: 285, type: !1091)
!6226 = !DILocalVariable(name: "map", scope: !6220, file: !2, line: 287, type: !177)
!6227 = !DILocation(line: 284, column: 50, scope: !6220)
!6228 = !DILocation(line: 284, column: 69, scope: !6220)
!6229 = !DILocation(line: 285, column: 16, scope: !6220)
!6230 = !DILocation(line: 285, column: 31, scope: !6220)
!6231 = !DILocation(line: 287, column: 2, scope: !6220)
!6232 = !DILocation(line: 287, column: 17, scope: !6220)
!6233 = !DILocation(line: 287, column: 23, scope: !6220)
!6234 = !DILocation(line: 287, column: 29, scope: !6220)
!6235 = !DILocation(line: 289, column: 29, scope: !6220)
!6236 = !DILocation(line: 289, column: 37, scope: !6220)
!6237 = !DILocation(line: 289, column: 42, scope: !6220)
!6238 = !DILocation(line: 289, column: 56, scope: !6220)
!6239 = !DILocation(line: 290, column: 8, scope: !6220)
!6240 = !DILocation(line: 290, column: 15, scope: !6220)
!6241 = !DILocation(line: 289, column: 9, scope: !6220)
!6242 = !DILocation(line: 291, column: 1, scope: !6220)
!6243 = !DILocation(line: 289, column: 2, scope: !6220)
!6244 = distinct !DISubprogram(name: "regmap_read_debugfs", scope: !2, file: !2, line: 215, type: !6245, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6247)
!6245 = !DISubroutineType(types: !6246)
!6246 = !{!355, !177, !13, !13, !323, !370, !1091}
!6247 = !{!6248, !6249, !6250, !6251, !6252, !6253, !6254, !6255, !6256, !6257, !6258, !6259, !6260, !6261}
!6248 = !DILocalVariable(name: "map", arg: 1, scope: !6244, file: !2, line: 215, type: !177)
!6249 = !DILocalVariable(name: "from", arg: 2, scope: !6244, file: !2, line: 215, type: !13)
!6250 = !DILocalVariable(name: "to", arg: 3, scope: !6244, file: !2, line: 216, type: !13)
!6251 = !DILocalVariable(name: "user_buf", arg: 4, scope: !6244, file: !2, line: 216, type: !323)
!6252 = !DILocalVariable(name: "count", arg: 5, scope: !6244, file: !2, line: 217, type: !370)
!6253 = !DILocalVariable(name: "ppos", arg: 6, scope: !6244, file: !2, line: 217, type: !1091)
!6254 = !DILocalVariable(name: "buf_pos", scope: !6244, file: !2, line: 219, type: !370)
!6255 = !DILocalVariable(name: "p", scope: !6244, file: !2, line: 220, type: !563)
!6256 = !DILocalVariable(name: "ret", scope: !6244, file: !2, line: 221, type: !355)
!6257 = !DILocalVariable(name: "i", scope: !6244, file: !2, line: 222, type: !91)
!6258 = !DILocalVariable(name: "buf", scope: !6244, file: !2, line: 223, type: !323)
!6259 = !DILocalVariable(name: "val", scope: !6244, file: !2, line: 224, type: !13)
!6260 = !DILocalVariable(name: "start_reg", scope: !6244, file: !2, line: 224, type: !13)
!6261 = !DILabel(scope: !6244, name: "out", file: !2, line: 279)
!6262 = !DILocation(line: 215, column: 51, scope: !6244)
!6263 = !DILocation(line: 215, column: 69, scope: !6244)
!6264 = !DILocation(line: 216, column: 21, scope: !6244)
!6265 = !DILocation(line: 216, column: 38, scope: !6244)
!6266 = !DILocation(line: 217, column: 15, scope: !6244)
!6267 = !DILocation(line: 217, column: 30, scope: !6244)
!6268 = !DILocation(line: 219, column: 2, scope: !6244)
!6269 = !DILocation(line: 219, column: 9, scope: !6244)
!6270 = !DILocation(line: 220, column: 2, scope: !6244)
!6271 = !DILocation(line: 220, column: 9, scope: !6244)
!6272 = !DILocation(line: 220, column: 14, scope: !6244)
!6273 = !DILocation(line: 220, column: 13, scope: !6244)
!6274 = !DILocation(line: 221, column: 2, scope: !6244)
!6275 = !DILocation(line: 221, column: 10, scope: !6244)
!6276 = !DILocation(line: 222, column: 2, scope: !6244)
!6277 = !DILocation(line: 222, column: 6, scope: !6244)
!6278 = !DILocation(line: 223, column: 2, scope: !6244)
!6279 = !DILocation(line: 223, column: 8, scope: !6244)
!6280 = !DILocation(line: 224, column: 2, scope: !6244)
!6281 = !DILocation(line: 224, column: 15, scope: !6244)
!6282 = !DILocation(line: 224, column: 20, scope: !6244)
!6283 = !DILocation(line: 226, column: 7, scope: !6284)
!6284 = distinct !DILexicalBlock(scope: !6244, file: !2, line: 226, column: 6)
!6285 = !DILocation(line: 226, column: 6, scope: !6284)
!6286 = !DILocation(line: 226, column: 12, scope: !6284)
!6287 = !DILocation(line: 226, column: 16, scope: !6284)
!6288 = !DILocation(line: 226, column: 20, scope: !6284)
!6289 = !DILocation(line: 226, column: 6, scope: !6244)
!6290 = !DILocation(line: 227, column: 3, scope: !6284)
!6291 = !DILocation(line: 229, column: 6, scope: !6292)
!6292 = distinct !DILexicalBlock(scope: !6244, file: !2, line: 229, column: 6)
!6293 = !DILocation(line: 229, column: 12, scope: !6292)
!6294 = !DILocation(line: 229, column: 6, scope: !6244)
!6295 = !DILocation(line: 230, column: 9, scope: !6292)
!6296 = !DILocation(line: 230, column: 3, scope: !6292)
!6297 = !DILocation(line: 232, column: 16, scope: !6244)
!6298 = !DILocation(line: 232, column: 8, scope: !6244)
!6299 = !DILocation(line: 232, column: 6, scope: !6244)
!6300 = !DILocation(line: 233, column: 7, scope: !6301)
!6301 = distinct !DILexicalBlock(scope: !6244, file: !2, line: 233, column: 6)
!6302 = !DILocation(line: 233, column: 6, scope: !6244)
!6303 = !DILocation(line: 234, column: 3, scope: !6301)
!6304 = !DILocation(line: 236, column: 22, scope: !6244)
!6305 = !DILocation(line: 236, column: 27, scope: !6244)
!6306 = !DILocation(line: 236, column: 32, scope: !6244)
!6307 = !DILocation(line: 236, column: 2, scope: !6244)
!6308 = !DILocation(line: 239, column: 44, scope: !6244)
!6309 = !DILocation(line: 239, column: 49, scope: !6244)
!6310 = !DILocation(line: 239, column: 56, scope: !6244)
!6311 = !DILocation(line: 239, column: 55, scope: !6244)
!6312 = !DILocation(line: 239, column: 14, scope: !6244)
!6313 = !DILocation(line: 239, column: 12, scope: !6244)
!6314 = !DILocation(line: 241, column: 11, scope: !6315)
!6315 = distinct !DILexicalBlock(scope: !6244, file: !2, line: 241, column: 2)
!6316 = !DILocation(line: 241, column: 9, scope: !6315)
!6317 = !DILocation(line: 241, column: 7, scope: !6315)
!6318 = !DILocation(line: 241, column: 22, scope: !6319)
!6319 = distinct !DILexicalBlock(scope: !6315, file: !2, line: 241, column: 2)
!6320 = !DILocation(line: 241, column: 24, scope: !6319)
!6321 = !DILocation(line: 241, column: 29, scope: !6319)
!6322 = !DILocation(line: 241, column: 32, scope: !6319)
!6323 = !DILocation(line: 241, column: 37, scope: !6319)
!6324 = !DILocation(line: 241, column: 34, scope: !6319)
!6325 = !DILocation(line: 0, scope: !6319)
!6326 = !DILocation(line: 241, column: 2, scope: !6315)
!6327 = !DILocation(line: 245, column: 7, scope: !6328)
!6328 = distinct !DILexicalBlock(scope: !6329, file: !2, line: 245, column: 7)
!6329 = distinct !DILexicalBlock(scope: !6319, file: !2, line: 242, column: 45)
!6330 = !DILocation(line: 245, column: 13, scope: !6328)
!6331 = !DILocation(line: 245, column: 12, scope: !6328)
!6332 = !DILocation(line: 245, column: 9, scope: !6328)
!6333 = !DILocation(line: 245, column: 7, scope: !6329)
!6334 = !DILocation(line: 247, column: 8, scope: !6335)
!6335 = distinct !DILexicalBlock(scope: !6336, file: !2, line: 247, column: 8)
!6336 = distinct !DILexicalBlock(scope: !6328, file: !2, line: 245, column: 19)
!6337 = !DILocation(line: 247, column: 18, scope: !6335)
!6338 = !DILocation(line: 247, column: 23, scope: !6335)
!6339 = !DILocation(line: 247, column: 16, scope: !6335)
!6340 = !DILocation(line: 247, column: 41, scope: !6335)
!6341 = !DILocation(line: 247, column: 39, scope: !6335)
!6342 = !DILocation(line: 247, column: 8, scope: !6336)
!6343 = !DILocation(line: 248, column: 5, scope: !6335)
!6344 = !DILocation(line: 251, column: 13, scope: !6336)
!6345 = !DILocation(line: 251, column: 19, scope: !6336)
!6346 = !DILocation(line: 251, column: 17, scope: !6336)
!6347 = !DILocation(line: 251, column: 28, scope: !6336)
!6348 = !DILocation(line: 251, column: 36, scope: !6336)
!6349 = !DILocation(line: 251, column: 34, scope: !6336)
!6350 = !DILocation(line: 252, column: 6, scope: !6336)
!6351 = !DILocation(line: 252, column: 11, scope: !6336)
!6352 = !DILocation(line: 252, column: 28, scope: !6336)
!6353 = !DILocation(line: 252, column: 32, scope: !6336)
!6354 = !DILocation(line: 252, column: 30, scope: !6336)
!6355 = !DILocation(line: 251, column: 4, scope: !6336)
!6356 = !DILocation(line: 253, column: 15, scope: !6336)
!6357 = !DILocation(line: 253, column: 20, scope: !6336)
!6358 = !DILocation(line: 253, column: 36, scope: !6336)
!6359 = !DILocation(line: 253, column: 12, scope: !6336)
!6360 = !DILocation(line: 256, column: 22, scope: !6336)
!6361 = !DILocation(line: 256, column: 27, scope: !6336)
!6362 = !DILocation(line: 256, column: 10, scope: !6336)
!6363 = !DILocation(line: 256, column: 8, scope: !6336)
!6364 = !DILocation(line: 257, column: 8, scope: !6365)
!6365 = distinct !DILexicalBlock(scope: !6336, file: !2, line: 257, column: 8)
!6366 = !DILocation(line: 257, column: 12, scope: !6365)
!6367 = !DILocation(line: 257, column: 8, scope: !6336)
!6368 = !DILocation(line: 258, column: 14, scope: !6365)
!6369 = !DILocation(line: 258, column: 20, scope: !6365)
!6370 = !DILocation(line: 258, column: 18, scope: !6365)
!6371 = !DILocation(line: 258, column: 29, scope: !6365)
!6372 = !DILocation(line: 258, column: 37, scope: !6365)
!6373 = !DILocation(line: 258, column: 35, scope: !6365)
!6374 = !DILocation(line: 259, column: 15, scope: !6365)
!6375 = !DILocation(line: 259, column: 20, scope: !6365)
!6376 = !DILocation(line: 259, column: 37, scope: !6365)
!6377 = !DILocation(line: 258, column: 5, scope: !6365)
!6378 = !DILocation(line: 261, column: 12, scope: !6365)
!6379 = !DILocation(line: 261, column: 18, scope: !6365)
!6380 = !DILocation(line: 261, column: 16, scope: !6365)
!6381 = !DILocation(line: 262, column: 12, scope: !6365)
!6382 = !DILocation(line: 262, column: 17, scope: !6365)
!6383 = !DILocation(line: 261, column: 5, scope: !6365)
!6384 = !DILocation(line: 263, column: 19, scope: !6336)
!6385 = !DILocation(line: 263, column: 24, scope: !6336)
!6386 = !DILocation(line: 263, column: 31, scope: !6336)
!6387 = !DILocation(line: 263, column: 17, scope: !6336)
!6388 = !DILocation(line: 263, column: 12, scope: !6336)
!6389 = !DILocation(line: 265, column: 4, scope: !6336)
!6390 = !DILocation(line: 265, column: 15, scope: !6336)
!6391 = !DILocation(line: 265, column: 19, scope: !6336)
!6392 = !DILocation(line: 266, column: 3, scope: !6336)
!6393 = !DILocation(line: 267, column: 8, scope: !6329)
!6394 = !DILocation(line: 267, column: 13, scope: !6329)
!6395 = !DILocation(line: 267, column: 5, scope: !6329)
!6396 = !DILocation(line: 268, column: 2, scope: !6329)
!6397 = !DILocation(line: 242, column: 36, scope: !6319)
!6398 = !DILocation(line: 242, column: 41, scope: !6319)
!6399 = !DILocation(line: 242, column: 11, scope: !6319)
!6400 = !DILocation(line: 242, column: 9, scope: !6319)
!6401 = !DILocation(line: 241, column: 2, scope: !6319)
!6402 = distinct !{!6402, !6326, !6403, !5007, !5008}
!6403 = !DILocation(line: 268, column: 2, scope: !6315)
!6404 = !DILocation(line: 270, column: 8, scope: !6244)
!6405 = !DILocation(line: 270, column: 6, scope: !6244)
!6406 = !DILocation(line: 272, column: 19, scope: !6407)
!6407 = distinct !DILexicalBlock(scope: !6244, file: !2, line: 272, column: 6)
!6408 = !DILocation(line: 272, column: 29, scope: !6407)
!6409 = !DILocation(line: 272, column: 34, scope: !6407)
!6410 = !DILocation(line: 272, column: 6, scope: !6407)
!6411 = !DILocation(line: 272, column: 6, scope: !6244)
!6412 = !DILocation(line: 273, column: 7, scope: !6413)
!6413 = distinct !DILexicalBlock(scope: !6407, file: !2, line: 272, column: 44)
!6414 = !DILocation(line: 274, column: 3, scope: !6413)
!6415 = !DILocation(line: 277, column: 11, scope: !6244)
!6416 = !DILocation(line: 277, column: 3, scope: !6244)
!6417 = !DILocation(line: 277, column: 8, scope: !6244)
!6418 = !DILocation(line: 277, column: 2, scope: !6244)
!6419 = !DILocation(line: 279, column: 1, scope: !6244)
!6420 = !DILocation(line: 280, column: 8, scope: !6244)
!6421 = !DILocation(line: 280, column: 2, scope: !6244)
!6422 = !DILocation(line: 281, column: 9, scope: !6244)
!6423 = !DILocation(line: 281, column: 2, scope: !6244)
!6424 = !DILocation(line: 282, column: 1, scope: !6244)
!6425 = !DISubprogram(name: "regmap_read", scope: !124, file: !124, line: 1227, type: !4607, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6426 = distinct !DISubprogram(name: "regmap_next_readable_reg", scope: !2, file: !2, line: 193, type: !6427, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6429)
!6427 = !DISubroutineType(types: !6428)
!6428 = !{!91, !177, !91}
!6429 = !{!6430, !6431, !6432, !6433, !6434, !6439}
!6430 = !DILocalVariable(name: "map", arg: 1, scope: !6426, file: !2, line: 193, type: !177)
!6431 = !DILocalVariable(name: "reg", arg: 2, scope: !6426, file: !2, line: 193, type: !91)
!6432 = !DILocalVariable(name: "c", scope: !6426, file: !2, line: 195, type: !4666)
!6433 = !DILocalVariable(name: "ret", scope: !6426, file: !2, line: 196, type: !91)
!6434 = !DILocalVariable(name: "__mptr", scope: !6435, file: !2, line: 202, type: !159)
!6435 = distinct !DILexicalBlock(scope: !6436, file: !2, line: 202, column: 3)
!6436 = distinct !DILexicalBlock(scope: !6437, file: !2, line: 202, column: 3)
!6437 = distinct !DILexicalBlock(scope: !6438, file: !2, line: 200, column: 9)
!6438 = distinct !DILexicalBlock(scope: !6426, file: !2, line: 198, column: 6)
!6439 = !DILocalVariable(name: "__mptr", scope: !6440, file: !2, line: 202, type: !159)
!6440 = distinct !DILexicalBlock(scope: !6441, file: !2, line: 202, column: 3)
!6441 = distinct !DILexicalBlock(scope: !6436, file: !2, line: 202, column: 3)
!6442 = !DILocation(line: 193, column: 52, scope: !6426)
!6443 = !DILocation(line: 193, column: 61, scope: !6426)
!6444 = !DILocation(line: 195, column: 2, scope: !6426)
!6445 = !DILocation(line: 195, column: 35, scope: !6426)
!6446 = !DILocation(line: 196, column: 2, scope: !6426)
!6447 = !DILocation(line: 196, column: 6, scope: !6426)
!6448 = !DILocation(line: 198, column: 23, scope: !6438)
!6449 = !DILocation(line: 198, column: 28, scope: !6438)
!6450 = !DILocation(line: 198, column: 34, scope: !6438)
!6451 = !DILocation(line: 198, column: 39, scope: !6438)
!6452 = !DILocation(line: 198, column: 32, scope: !6438)
!6453 = !DILocation(line: 198, column: 6, scope: !6438)
!6454 = !DILocation(line: 198, column: 6, scope: !6426)
!6455 = !DILocation(line: 199, column: 9, scope: !6456)
!6456 = distinct !DILexicalBlock(scope: !6438, file: !2, line: 198, column: 52)
!6457 = !DILocation(line: 199, column: 15, scope: !6456)
!6458 = !DILocation(line: 199, column: 20, scope: !6456)
!6459 = !DILocation(line: 199, column: 13, scope: !6456)
!6460 = !DILocation(line: 199, column: 7, scope: !6456)
!6461 = !DILocation(line: 200, column: 2, scope: !6456)
!6462 = !DILocation(line: 201, column: 15, scope: !6437)
!6463 = !DILocation(line: 201, column: 20, scope: !6437)
!6464 = !DILocation(line: 201, column: 3, scope: !6437)
!6465 = !DILocation(line: 202, column: 3, scope: !6435)
!6466 = !DILocation(line: 202, column: 3, scope: !6436)
!6467 = !DILocation(line: 202, column: 3, scope: !6441)
!6468 = !DILocation(line: 203, column: 8, scope: !6469)
!6469 = distinct !DILexicalBlock(scope: !6470, file: !2, line: 203, column: 8)
!6470 = distinct !DILexicalBlock(scope: !6441, file: !2, line: 202, column: 57)
!6471 = !DILocation(line: 203, column: 14, scope: !6469)
!6472 = !DILocation(line: 203, column: 17, scope: !6469)
!6473 = !DILocation(line: 203, column: 12, scope: !6469)
!6474 = !DILocation(line: 203, column: 8, scope: !6470)
!6475 = !DILocation(line: 204, column: 5, scope: !6469)
!6476 = !DILocation(line: 205, column: 8, scope: !6477)
!6477 = distinct !DILexicalBlock(scope: !6470, file: !2, line: 205, column: 8)
!6478 = !DILocation(line: 205, column: 14, scope: !6477)
!6479 = !DILocation(line: 205, column: 17, scope: !6477)
!6480 = !DILocation(line: 205, column: 12, scope: !6477)
!6481 = !DILocation(line: 205, column: 8, scope: !6470)
!6482 = !DILocation(line: 206, column: 11, scope: !6483)
!6483 = distinct !DILexicalBlock(scope: !6477, file: !2, line: 205, column: 27)
!6484 = !DILocation(line: 206, column: 14, scope: !6483)
!6485 = !DILocation(line: 206, column: 9, scope: !6483)
!6486 = !DILocation(line: 207, column: 5, scope: !6483)
!6487 = !DILocation(line: 209, column: 3, scope: !6470)
!6488 = !DILocation(line: 202, column: 3, scope: !6440)
!6489 = distinct !{!6489, !6466, !6490, !5007, !5008}
!6490 = !DILocation(line: 209, column: 3, scope: !6436)
!6491 = !DILocation(line: 210, column: 17, scope: !6437)
!6492 = !DILocation(line: 210, column: 22, scope: !6437)
!6493 = !DILocation(line: 210, column: 3, scope: !6437)
!6494 = !DILocation(line: 212, column: 9, scope: !6426)
!6495 = !DILocation(line: 213, column: 1, scope: !6426)
!6496 = !DILocation(line: 212, column: 2, scope: !6426)
!6497 = distinct !DISubprogram(name: "regmap_access_open", scope: !2, file: !2, line: 457, type: !1699, scopeLine: 457, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6498)
!6498 = !{!6499, !6500}
!6499 = !DILocalVariable(name: "inode", arg: 1, scope: !6497, file: !2, line: 457, type: !402)
!6500 = !DILocalVariable(name: "file", arg: 2, scope: !6497, file: !2, line: 457, type: !1413)
!6501 = !DILocation(line: 457, column: 1, scope: !6497)
!6502 = !DISubprogram(name: "single_open", scope: !1072, file: !1072, line: 166, type: !6503, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6503 = !DISubroutineType(types: !6504)
!6504 = !{!91, !1413, !1101, !159}
!6505 = distinct !DISubprogram(name: "regmap_access_show", scope: !2, file: !2, line: 434, type: !1102, scopeLine: 435, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6506)
!6506 = !{!6507, !6508, !6509, !6510, !6511}
!6507 = !DILocalVariable(name: "s", arg: 1, scope: !6505, file: !2, line: 434, type: !1070)
!6508 = !DILocalVariable(name: "ignored", arg: 2, scope: !6505, file: !2, line: 434, type: !159)
!6509 = !DILocalVariable(name: "map", scope: !6505, file: !2, line: 436, type: !177)
!6510 = !DILocalVariable(name: "i", scope: !6505, file: !2, line: 437, type: !91)
!6511 = !DILocalVariable(name: "reg_len", scope: !6505, file: !2, line: 437, type: !91)
!6512 = !DILocation(line: 434, column: 48, scope: !6505)
!6513 = !DILocation(line: 434, column: 57, scope: !6505)
!6514 = !DILocation(line: 436, column: 2, scope: !6505)
!6515 = !DILocation(line: 436, column: 17, scope: !6505)
!6516 = !DILocation(line: 436, column: 23, scope: !6505)
!6517 = !DILocation(line: 436, column: 26, scope: !6505)
!6518 = !DILocation(line: 437, column: 2, scope: !6505)
!6519 = !DILocation(line: 437, column: 6, scope: !6505)
!6520 = !DILocation(line: 437, column: 9, scope: !6505)
!6521 = !DILocation(line: 439, column: 32, scope: !6505)
!6522 = !DILocation(line: 439, column: 37, scope: !6505)
!6523 = !DILocation(line: 439, column: 12, scope: !6505)
!6524 = !DILocation(line: 439, column: 10, scope: !6505)
!6525 = !DILocation(line: 441, column: 9, scope: !6526)
!6526 = distinct !DILexicalBlock(scope: !6505, file: !2, line: 441, column: 2)
!6527 = !DILocation(line: 441, column: 7, scope: !6526)
!6528 = !DILocation(line: 441, column: 14, scope: !6529)
!6529 = distinct !DILexicalBlock(scope: !6526, file: !2, line: 441, column: 2)
!6530 = !DILocation(line: 441, column: 19, scope: !6529)
!6531 = !DILocation(line: 441, column: 24, scope: !6529)
!6532 = !DILocation(line: 441, column: 16, scope: !6529)
!6533 = !DILocation(line: 441, column: 2, scope: !6526)
!6534 = !DILocation(line: 443, column: 24, scope: !6535)
!6535 = distinct !DILexicalBlock(scope: !6536, file: !2, line: 443, column: 7)
!6536 = distinct !DILexicalBlock(scope: !6529, file: !2, line: 441, column: 60)
!6537 = !DILocation(line: 443, column: 29, scope: !6535)
!6538 = !DILocation(line: 443, column: 8, scope: !6535)
!6539 = !DILocation(line: 443, column: 32, scope: !6535)
!6540 = !DILocation(line: 443, column: 53, scope: !6535)
!6541 = !DILocation(line: 443, column: 58, scope: !6535)
!6542 = !DILocation(line: 443, column: 36, scope: !6535)
!6543 = !DILocation(line: 443, column: 7, scope: !6536)
!6544 = !DILocation(line: 444, column: 4, scope: !6535)
!6545 = !DILocation(line: 447, column: 14, scope: !6536)
!6546 = !DILocation(line: 447, column: 40, scope: !6536)
!6547 = !DILocation(line: 447, column: 49, scope: !6536)
!6548 = !DILocation(line: 448, column: 23, scope: !6536)
!6549 = !DILocation(line: 448, column: 28, scope: !6536)
!6550 = !DILocation(line: 448, column: 7, scope: !6536)
!6551 = !DILocation(line: 449, column: 24, scope: !6536)
!6552 = !DILocation(line: 449, column: 29, scope: !6536)
!6553 = !DILocation(line: 449, column: 7, scope: !6536)
!6554 = !DILocation(line: 450, column: 23, scope: !6536)
!6555 = !DILocation(line: 450, column: 28, scope: !6536)
!6556 = !DILocation(line: 450, column: 7, scope: !6536)
!6557 = !DILocation(line: 451, column: 23, scope: !6536)
!6558 = !DILocation(line: 451, column: 28, scope: !6536)
!6559 = !DILocation(line: 451, column: 7, scope: !6536)
!6560 = !DILocation(line: 447, column: 3, scope: !6536)
!6561 = !DILocation(line: 452, column: 2, scope: !6536)
!6562 = !DILocation(line: 441, column: 43, scope: !6529)
!6563 = !DILocation(line: 441, column: 48, scope: !6529)
!6564 = !DILocation(line: 441, column: 40, scope: !6529)
!6565 = !DILocation(line: 441, column: 2, scope: !6529)
!6566 = distinct !{!6566, !6533, !6567, !5007, !5008}
!6567 = !DILocation(line: 452, column: 2, scope: !6526)
!6568 = !DILocation(line: 455, column: 1, scope: !6505)
!6569 = !DILocation(line: 454, column: 2, scope: !6505)
!6570 = !DISubprogram(name: "regmap_writeable", scope: !162, file: !162, line: 198, type: !5116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6571 = !DISubprogram(name: "seq_printf", scope: !1072, file: !1072, line: 119, type: !6572, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6572 = !DISubroutineType(types: !6573)
!6573 = !{null, !1070, !174, null}
!6574 = !DISubprogram(name: "regmap_volatile", scope: !162, file: !162, line: 200, type: !5116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6575 = distinct !DISubprogram(name: "regmap_cache_only_write_file", scope: !2, file: !2, line: 459, type: !1420, scopeLine: 462, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6576)
!6576 = !{!6577, !6578, !6579, !6580, !6581, !6582, !6584, !6585, !6586}
!6577 = !DILocalVariable(name: "file", arg: 1, scope: !6575, file: !2, line: 459, type: !1413)
!6578 = !DILocalVariable(name: "user_buf", arg: 2, scope: !6575, file: !2, line: 460, type: !174)
!6579 = !DILocalVariable(name: "count", arg: 3, scope: !6575, file: !2, line: 461, type: !370)
!6580 = !DILocalVariable(name: "ppos", arg: 4, scope: !6575, file: !2, line: 461, type: !1091)
!6581 = !DILocalVariable(name: "map", scope: !6575, file: !2, line: 463, type: !177)
!6582 = !DILocalVariable(name: "__mptr", scope: !6583, file: !2, line: 463, type: !159)
!6583 = distinct !DILexicalBlock(scope: !6575, file: !2, line: 463, column: 23)
!6584 = !DILocalVariable(name: "new_val", scope: !6575, file: !2, line: 465, type: !718)
!6585 = !DILocalVariable(name: "require_sync", scope: !6575, file: !2, line: 465, type: !718)
!6586 = !DILocalVariable(name: "err", scope: !6575, file: !2, line: 466, type: !91)
!6587 = !DILocation(line: 459, column: 58, scope: !6575)
!6588 = !DILocation(line: 460, column: 29, scope: !6575)
!6589 = !DILocation(line: 461, column: 17, scope: !6575)
!6590 = !DILocation(line: 461, column: 32, scope: !6575)
!6591 = !DILocation(line: 463, column: 2, scope: !6575)
!6592 = !DILocation(line: 463, column: 17, scope: !6575)
!6593 = !DILocation(line: 463, column: 23, scope: !6583)
!6594 = !DILocation(line: 463, column: 23, scope: !6575)
!6595 = !DILocation(line: 465, column: 2, scope: !6575)
!6596 = !DILocation(line: 465, column: 7, scope: !6575)
!6597 = !DILocation(line: 465, column: 16, scope: !6575)
!6598 = !DILocation(line: 466, column: 2, scope: !6575)
!6599 = !DILocation(line: 466, column: 6, scope: !6575)
!6600 = !DILocation(line: 468, column: 29, scope: !6575)
!6601 = !DILocation(line: 468, column: 39, scope: !6575)
!6602 = !DILocation(line: 468, column: 8, scope: !6575)
!6603 = !DILocation(line: 468, column: 6, scope: !6575)
!6604 = !DILocation(line: 470, column: 6, scope: !6605)
!6605 = distinct !DILexicalBlock(scope: !6575, file: !2, line: 470, column: 6)
!6606 = !DILocation(line: 470, column: 6, scope: !6575)
!6607 = !DILocation(line: 471, column: 10, scope: !6605)
!6608 = !DILocation(line: 471, column: 3, scope: !6605)
!6609 = !DILocation(line: 473, column: 25, scope: !6575)
!6610 = !DILocation(line: 473, column: 31, scope: !6575)
!6611 = !DILocation(line: 473, column: 38, scope: !6575)
!6612 = !DILocation(line: 473, column: 8, scope: !6575)
!6613 = !DILocation(line: 473, column: 6, scope: !6575)
!6614 = !DILocation(line: 474, column: 6, scope: !6615)
!6615 = distinct !DILexicalBlock(scope: !6575, file: !2, line: 474, column: 6)
!6616 = !DILocation(line: 474, column: 6, scope: !6575)
!6617 = !DILocation(line: 475, column: 10, scope: !6615)
!6618 = !DILocation(line: 475, column: 3, scope: !6615)
!6619 = !DILocation(line: 477, column: 2, scope: !6575)
!6620 = !DILocation(line: 477, column: 7, scope: !6575)
!6621 = !DILocation(line: 477, column: 12, scope: !6575)
!6622 = !DILocation(line: 477, column: 17, scope: !6575)
!6623 = !DILocation(line: 479, column: 6, scope: !6624)
!6624 = distinct !DILexicalBlock(scope: !6575, file: !2, line: 479, column: 6)
!6625 = !DILocation(line: 479, column: 14, scope: !6624)
!6626 = !DILocation(line: 479, column: 18, scope: !6624)
!6627 = !DILocation(line: 479, column: 23, scope: !6624)
!6628 = !DILocation(line: 479, column: 6, scope: !6575)
!6629 = !DILocation(line: 480, column: 3, scope: !6630)
!6630 = distinct !DILexicalBlock(scope: !6631, file: !2, line: 480, column: 3)
!6631 = distinct !DILexicalBlock(scope: !6624, file: !2, line: 479, column: 35)
!6632 = !DILocation(line: 480, column: 3, scope: !6633)
!6633 = distinct !DILexicalBlock(scope: !6630, file: !2, line: 480, column: 3)
!6634 = !DILocation(line: 481, column: 3, scope: !6631)
!6635 = !DILocation(line: 482, column: 2, scope: !6631)
!6636 = !DILocation(line: 482, column: 14, scope: !6637)
!6637 = distinct !DILexicalBlock(scope: !6624, file: !2, line: 482, column: 13)
!6638 = !DILocation(line: 482, column: 22, scope: !6637)
!6639 = !DILocation(line: 482, column: 25, scope: !6637)
!6640 = !DILocation(line: 482, column: 30, scope: !6637)
!6641 = !DILocation(line: 482, column: 13, scope: !6624)
!6642 = !DILocation(line: 483, column: 3, scope: !6643)
!6643 = distinct !DILexicalBlock(scope: !6644, file: !2, line: 483, column: 3)
!6644 = distinct !DILexicalBlock(scope: !6637, file: !2, line: 482, column: 42)
!6645 = !DILocation(line: 483, column: 3, scope: !6646)
!6646 = distinct !DILexicalBlock(scope: !6643, file: !2, line: 483, column: 3)
!6647 = !DILocation(line: 484, column: 16, scope: !6644)
!6648 = !DILocation(line: 485, column: 2, scope: !6644)
!6649 = !DILocation(line: 486, column: 20, scope: !6575)
!6650 = !DILocation(line: 486, column: 2, scope: !6575)
!6651 = !DILocation(line: 486, column: 7, scope: !6575)
!6652 = !DILocation(line: 486, column: 18, scope: !6575)
!6653 = !DILocation(line: 488, column: 2, scope: !6575)
!6654 = !DILocation(line: 488, column: 7, scope: !6575)
!6655 = !DILocation(line: 488, column: 14, scope: !6575)
!6656 = !DILocation(line: 488, column: 19, scope: !6575)
!6657 = !DILocation(line: 489, column: 19, scope: !6575)
!6658 = !DILocation(line: 489, column: 25, scope: !6575)
!6659 = !DILocation(line: 489, column: 32, scope: !6575)
!6660 = !DILocation(line: 489, column: 2, scope: !6575)
!6661 = !DILocation(line: 491, column: 6, scope: !6662)
!6662 = distinct !DILexicalBlock(scope: !6575, file: !2, line: 491, column: 6)
!6663 = !DILocation(line: 491, column: 6, scope: !6575)
!6664 = !DILocation(line: 492, column: 23, scope: !6665)
!6665 = distinct !DILexicalBlock(scope: !6662, file: !2, line: 491, column: 20)
!6666 = !DILocation(line: 492, column: 9, scope: !6665)
!6667 = !DILocation(line: 492, column: 7, scope: !6665)
!6668 = !DILocation(line: 493, column: 7, scope: !6669)
!6669 = distinct !DILexicalBlock(scope: !6665, file: !2, line: 493, column: 7)
!6670 = !DILocation(line: 493, column: 7, scope: !6665)
!6671 = !DILocation(line: 494, column: 4, scope: !6672)
!6672 = distinct !DILexicalBlock(scope: !6669, file: !2, line: 494, column: 4)
!6673 = !DILocation(line: 494, column: 4, scope: !6674)
!6674 = distinct !DILexicalBlock(scope: !6672, file: !2, line: 494, column: 4)
!6675 = !DILocation(line: 494, column: 4, scope: !6669)
!6676 = !DILocation(line: 495, column: 2, scope: !6665)
!6677 = !DILocation(line: 497, column: 9, scope: !6575)
!6678 = !DILocation(line: 497, column: 2, scope: !6575)
!6679 = !DILocation(line: 498, column: 1, scope: !6575)
!6680 = !DISubprogram(name: "kstrtobool_from_user", scope: !6681, file: !6681, line: 110, type: !6682, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6681 = !DIFile(filename: "./include/linux/kstrtox.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b7da882f1f371706e764491098c6cb23")
!6682 = !DISubroutineType(types: !6683)
!6683 = !{!91, !174, !370, !3816}
!6684 = !DISubprogram(name: "debugfs_file_get", scope: !5109, file: !5109, line: 104, type: !528, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6685 = !DISubprogram(name: "_dev_warn", scope: !6686, file: !6686, line: 52, type: !6687, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6686 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!6687 = !DISubroutineType(types: !6688)
!6688 = !{null, !4008, !174, null}
!6689 = !DISubprogram(name: "add_taint", scope: !152, file: !152, line: 93, type: !6690, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6690 = !DISubroutineType(types: !6691)
!6691 = !{null, !13, !151}
!6692 = !DISubprogram(name: "debugfs_file_put", scope: !5109, file: !5109, line: 105, type: !532, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6693 = !DISubprogram(name: "regcache_sync", scope: !162, file: !162, line: 259, type: !4598, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6694 = !DISubprogram(name: "_dev_err", scope: !6686, file: !6686, line: 50, type: !6687, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6695 = distinct !DISubprogram(name: "regmap_cache_bypass_write_file", scope: !2, file: !2, line: 506, type: !1420, scopeLine: 509, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6696)
!6696 = !{!6697, !6698, !6699, !6700, !6701, !6702, !6704, !6705}
!6697 = !DILocalVariable(name: "file", arg: 1, scope: !6695, file: !2, line: 506, type: !1413)
!6698 = !DILocalVariable(name: "user_buf", arg: 2, scope: !6695, file: !2, line: 507, type: !174)
!6699 = !DILocalVariable(name: "count", arg: 3, scope: !6695, file: !2, line: 508, type: !370)
!6700 = !DILocalVariable(name: "ppos", arg: 4, scope: !6695, file: !2, line: 508, type: !1091)
!6701 = !DILocalVariable(name: "map", scope: !6695, file: !2, line: 510, type: !177)
!6702 = !DILocalVariable(name: "__mptr", scope: !6703, file: !2, line: 510, type: !159)
!6703 = distinct !DILexicalBlock(scope: !6695, file: !2, line: 510, column: 23)
!6704 = !DILocalVariable(name: "new_val", scope: !6695, file: !2, line: 512, type: !718)
!6705 = !DILocalVariable(name: "err", scope: !6695, file: !2, line: 513, type: !91)
!6706 = !DILocation(line: 506, column: 60, scope: !6695)
!6707 = !DILocation(line: 507, column: 31, scope: !6695)
!6708 = !DILocation(line: 508, column: 19, scope: !6695)
!6709 = !DILocation(line: 508, column: 34, scope: !6695)
!6710 = !DILocation(line: 510, column: 2, scope: !6695)
!6711 = !DILocation(line: 510, column: 17, scope: !6695)
!6712 = !DILocation(line: 510, column: 23, scope: !6703)
!6713 = !DILocation(line: 510, column: 23, scope: !6695)
!6714 = !DILocation(line: 512, column: 2, scope: !6695)
!6715 = !DILocation(line: 512, column: 7, scope: !6695)
!6716 = !DILocation(line: 513, column: 2, scope: !6695)
!6717 = !DILocation(line: 513, column: 6, scope: !6695)
!6718 = !DILocation(line: 515, column: 29, scope: !6695)
!6719 = !DILocation(line: 515, column: 39, scope: !6695)
!6720 = !DILocation(line: 515, column: 8, scope: !6695)
!6721 = !DILocation(line: 515, column: 6, scope: !6695)
!6722 = !DILocation(line: 517, column: 6, scope: !6723)
!6723 = distinct !DILexicalBlock(scope: !6695, file: !2, line: 517, column: 6)
!6724 = !DILocation(line: 517, column: 6, scope: !6695)
!6725 = !DILocation(line: 518, column: 10, scope: !6723)
!6726 = !DILocation(line: 518, column: 3, scope: !6723)
!6727 = !DILocation(line: 520, column: 25, scope: !6695)
!6728 = !DILocation(line: 520, column: 31, scope: !6695)
!6729 = !DILocation(line: 520, column: 38, scope: !6695)
!6730 = !DILocation(line: 520, column: 8, scope: !6695)
!6731 = !DILocation(line: 520, column: 6, scope: !6695)
!6732 = !DILocation(line: 521, column: 6, scope: !6733)
!6733 = distinct !DILexicalBlock(scope: !6695, file: !2, line: 521, column: 6)
!6734 = !DILocation(line: 521, column: 6, scope: !6695)
!6735 = !DILocation(line: 522, column: 10, scope: !6733)
!6736 = !DILocation(line: 522, column: 3, scope: !6733)
!6737 = !DILocation(line: 524, column: 2, scope: !6695)
!6738 = !DILocation(line: 524, column: 7, scope: !6695)
!6739 = !DILocation(line: 524, column: 12, scope: !6695)
!6740 = !DILocation(line: 524, column: 17, scope: !6695)
!6741 = !DILocation(line: 526, column: 6, scope: !6742)
!6742 = distinct !DILexicalBlock(scope: !6695, file: !2, line: 526, column: 6)
!6743 = !DILocation(line: 526, column: 14, scope: !6742)
!6744 = !DILocation(line: 526, column: 18, scope: !6742)
!6745 = !DILocation(line: 526, column: 23, scope: !6742)
!6746 = !DILocation(line: 526, column: 6, scope: !6695)
!6747 = !DILocation(line: 527, column: 3, scope: !6748)
!6748 = distinct !DILexicalBlock(scope: !6749, file: !2, line: 527, column: 3)
!6749 = distinct !DILexicalBlock(scope: !6742, file: !2, line: 526, column: 37)
!6750 = !DILocation(line: 527, column: 3, scope: !6751)
!6751 = distinct !DILexicalBlock(scope: !6748, file: !2, line: 527, column: 3)
!6752 = !DILocation(line: 528, column: 3, scope: !6749)
!6753 = !DILocation(line: 529, column: 2, scope: !6749)
!6754 = !DILocation(line: 529, column: 14, scope: !6755)
!6755 = distinct !DILexicalBlock(scope: !6742, file: !2, line: 529, column: 13)
!6756 = !DILocation(line: 529, column: 22, scope: !6755)
!6757 = !DILocation(line: 529, column: 25, scope: !6755)
!6758 = !DILocation(line: 529, column: 30, scope: !6755)
!6759 = !DILocation(line: 529, column: 13, scope: !6742)
!6760 = !DILocation(line: 530, column: 3, scope: !6761)
!6761 = distinct !DILexicalBlock(scope: !6762, file: !2, line: 530, column: 3)
!6762 = distinct !DILexicalBlock(scope: !6755, file: !2, line: 529, column: 44)
!6763 = !DILocation(line: 530, column: 3, scope: !6764)
!6764 = distinct !DILexicalBlock(scope: !6761, file: !2, line: 530, column: 3)
!6765 = !DILocation(line: 531, column: 2, scope: !6762)
!6766 = !DILocation(line: 532, column: 22, scope: !6695)
!6767 = !DILocation(line: 532, column: 2, scope: !6695)
!6768 = !DILocation(line: 532, column: 7, scope: !6695)
!6769 = !DILocation(line: 532, column: 20, scope: !6695)
!6770 = !DILocation(line: 534, column: 2, scope: !6695)
!6771 = !DILocation(line: 534, column: 7, scope: !6695)
!6772 = !DILocation(line: 534, column: 14, scope: !6695)
!6773 = !DILocation(line: 534, column: 19, scope: !6695)
!6774 = !DILocation(line: 535, column: 19, scope: !6695)
!6775 = !DILocation(line: 535, column: 25, scope: !6695)
!6776 = !DILocation(line: 535, column: 32, scope: !6695)
!6777 = !DILocation(line: 535, column: 2, scope: !6695)
!6778 = !DILocation(line: 537, column: 9, scope: !6695)
!6779 = !DILocation(line: 537, column: 2, scope: !6695)
!6780 = !DILocation(line: 538, column: 1, scope: !6695)
!6781 = distinct !DISubprogram(name: "regmap_range_read_file", scope: !2, file: !2, line: 344, type: !1416, scopeLine: 346, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6782)
!6782 = !{!6783, !6784, !6785, !6786, !6787, !6788}
!6783 = !DILocalVariable(name: "file", arg: 1, scope: !6781, file: !2, line: 344, type: !1413)
!6784 = !DILocalVariable(name: "user_buf", arg: 2, scope: !6781, file: !2, line: 344, type: !323)
!6785 = !DILocalVariable(name: "count", arg: 3, scope: !6781, file: !2, line: 345, type: !370)
!6786 = !DILocalVariable(name: "ppos", arg: 4, scope: !6781, file: !2, line: 345, type: !1091)
!6787 = !DILocalVariable(name: "range", scope: !6781, file: !2, line: 347, type: !160)
!6788 = !DILocalVariable(name: "map", scope: !6781, file: !2, line: 348, type: !177)
!6789 = !DILocation(line: 344, column: 52, scope: !6781)
!6790 = !DILocation(line: 344, column: 71, scope: !6781)
!6791 = !DILocation(line: 345, column: 18, scope: !6781)
!6792 = !DILocation(line: 345, column: 33, scope: !6781)
!6793 = !DILocation(line: 347, column: 2, scope: !6781)
!6794 = !DILocation(line: 347, column: 28, scope: !6781)
!6795 = !DILocation(line: 347, column: 36, scope: !6781)
!6796 = !DILocation(line: 347, column: 42, scope: !6781)
!6797 = !DILocation(line: 348, column: 2, scope: !6781)
!6798 = !DILocation(line: 348, column: 17, scope: !6781)
!6799 = !DILocation(line: 348, column: 23, scope: !6781)
!6800 = !DILocation(line: 348, column: 30, scope: !6781)
!6801 = !DILocation(line: 350, column: 29, scope: !6781)
!6802 = !DILocation(line: 350, column: 34, scope: !6781)
!6803 = !DILocation(line: 350, column: 41, scope: !6781)
!6804 = !DILocation(line: 350, column: 52, scope: !6781)
!6805 = !DILocation(line: 350, column: 59, scope: !6781)
!6806 = !DILocation(line: 351, column: 8, scope: !6781)
!6807 = !DILocation(line: 351, column: 18, scope: !6781)
!6808 = !DILocation(line: 351, column: 25, scope: !6781)
!6809 = !DILocation(line: 350, column: 9, scope: !6781)
!6810 = !DILocation(line: 352, column: 1, scope: !6781)
!6811 = !DILocation(line: 350, column: 2, scope: !6781)
!6812 = distinct !DISubprogram(name: "__list_del_entry", scope: !5040, file: !5040, line: 213, type: !5056, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6813)
!6813 = !{!6814}
!6814 = !DILocalVariable(name: "entry", arg: 1, scope: !6812, file: !5040, line: 213, type: !242)
!6815 = !DILocation(line: 213, column: 55, scope: !6812)
!6816 = !DILocation(line: 215, column: 30, scope: !6817)
!6817 = distinct !DILexicalBlock(scope: !6812, file: !5040, line: 215, column: 6)
!6818 = !DILocation(line: 215, column: 7, scope: !6817)
!6819 = !DILocation(line: 215, column: 6, scope: !6812)
!6820 = !DILocation(line: 216, column: 3, scope: !6817)
!6821 = !DILocation(line: 218, column: 13, scope: !6812)
!6822 = !DILocation(line: 218, column: 20, scope: !6812)
!6823 = !DILocation(line: 218, column: 26, scope: !6812)
!6824 = !DILocation(line: 218, column: 33, scope: !6812)
!6825 = !DILocation(line: 218, column: 2, scope: !6812)
!6826 = !DILocation(line: 219, column: 1, scope: !6812)
!6827 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !5040, file: !5040, line: 134, type: !6828, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6830)
!6828 = !DISubroutineType(types: !6829)
!6829 = !{!718, !242}
!6830 = !{!6831}
!6831 = !DILocalVariable(name: "entry", arg: 1, scope: !6827, file: !5040, line: 134, type: !242)
!6832 = !DILocation(line: 134, column: 61, scope: !6827)
!6833 = !DILocation(line: 136, column: 2, scope: !6827)
!6834 = distinct !DISubprogram(name: "__list_del", scope: !5040, file: !5040, line: 193, type: !5041, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6835)
!6835 = !{!6836, !6837}
!6836 = !DILocalVariable(name: "prev", arg: 1, scope: !6834, file: !5040, line: 193, type: !242)
!6837 = !DILocalVariable(name: "next", arg: 2, scope: !6834, file: !5040, line: 193, type: !242)
!6838 = !DILocation(line: 193, column: 50, scope: !6834)
!6839 = !DILocation(line: 193, column: 75, scope: !6834)
!6840 = !DILocation(line: 195, column: 15, scope: !6834)
!6841 = !DILocation(line: 195, column: 2, scope: !6834)
!6842 = !DILocation(line: 195, column: 8, scope: !6834)
!6843 = !DILocation(line: 195, column: 13, scope: !6834)
!6844 = !DILocation(line: 196, column: 2, scope: !6834)
!6845 = !DILocation(line: 196, column: 2, scope: !6846)
!6846 = distinct !DILexicalBlock(scope: !6834, file: !5040, line: 196, column: 2)
!6847 = !DILocation(line: 196, column: 2, scope: !6848)
!6848 = distinct !DILexicalBlock(scope: !6846, file: !5040, line: 196, column: 2)
!6849 = !DILocation(line: 196, column: 2, scope: !6850)
!6850 = distinct !DILexicalBlock(scope: !6846, file: !5040, line: 196, column: 2)
!6851 = !DILocation(line: 197, column: 1, scope: !6834)
